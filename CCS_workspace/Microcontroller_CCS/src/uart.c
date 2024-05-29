#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "FreeRTOS.h"
#include "queue.h"
#include "gpio.h"
#include <string.h>

extern xQueueHandle q_uart_tx;
extern xQueueHandle q_uart_rx;

void send_char(INT8U chr) {
  while (UART0_FR_R & (1 << 5));
  UART0_DR_R = chr;
}

void send_string(char *str) {
  while (*str != '\n') {
    xQueueSendToBack(q_uart_tx, str, 15);
    str++;
  }
  INT8U n = '\n';
  xQueueSendToBack(q_uart_tx, &n, 15);
}

void send_string_len(char *str, INT16U str_length) {
  for(INT16U i = 0; i < str_length; i++) {
    xQueueSendToBack(q_uart_tx, str, 15);
    str++;
  }
  INT8U n = '\n';
  xQueueSendToBack(q_uart_tx, &n, 15);
}

char* receive_string(){
    char str[100] = "";
    char ch;

    if(!xQueueReceive(q_uart_rx, &ch, 0)) return "";
    if (ch == '\n') return "";

    //strncat(str, &ch, 1);
    str[0] = ch;
    INT8U i = 1;

    do {
        if (xQueueReceive(q_uart_rx, &ch, 0)) {
            //strncat(str, &ch, 1);
            str[i++] = ch;
        }
    } while(ch != '\n');

    return str;
}

void init_uart() {
  SYSCTL_RCGCGPIO_R |= SYSCTL_RCGCGPIO_R0;
  // Enable the UART0 clock
  SYSCTL_RCGCUART_R |= SYSCTL_RCGCUART_R0;
  // Set the alternate function for PA0 and PA1
  GPIO_PORTA_AFSEL_R |= 0b00000011;
  // Enable the alternate function for PA0 and PA1
  GPIO_PORTA_PCTL_R |= 0x00000011;
  // Enable the GPIO pins for digital function (PA0 and PA1)
  GPIO_PORTA_DEN_R |= 0b00000011;
  // Handle direction of the pins
  GPIO_PORTA_DIR_R |= 0b00000010;

  // Disable UART0
  UART0_CTL_R &= ~(UART_CTL_UARTEN);

  INT32U baud_rate = 115200;
  INT32U brd;

  // Set the baud rate
  // IBRD = int(16,000,000 / (16 * 9600)) = int(104.1667)
  // Set the fractional part of the baud rate
  // FBRD = 0.1667 * 64 + 0.5 = int(11,16688)
  brd = 64000000 / baud_rate; // X-sys*64/(16*baudrate) = 16M*4/baudrate
  UART0_IBRD_R = brd / 64;
  UART0_FBRD_R = brd & 0x0000003F;

  // Set the transmission parameters
  UART0_LCRH_R = 0b01100000;  // 8-bit word length
  UART0_LCRH_R |= 0b00000110; // even parity
  UART0_LCRH_R |= (1 << 4);   // Enable FIFO

  // Set the clock source
  UART0_CC_R = 0;
  // Enable the UART0
  UART0_CTL_R |=
      (UART_CTL_RXE | UART_CTL_TXE | UART_CTL_UARTEN); // Enable UART0
}

void uart_task(void *pvParameters) {
  // Task
  INT8U uart_data;
  while (1) {

    while (!(UART0_FR_R & (1 << 4))) {
      uart_data = UART0_DR_R;
      xQueueSendToBack(q_uart_rx, &uart_data, 0);
    }

    while (xQueueReceive(q_uart_tx, &uart_data, 0)) {
      send_char(uart_data);
    }

    vTaskDelay(1); // wait 50 ms.
  }
}
