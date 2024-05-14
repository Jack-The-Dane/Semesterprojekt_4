#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "FreeRTOS.h"
#include "queue.h"
#include "gpio.h"
#include "uart0.h"

extern xQueueHandle q_uart_tx;
extern xQueueHandle q_uart_rx;

void send_string(char *str) {
    while (*str) {
        xQueueSendToBack(q_uart_tx, str, 0);
        str++;
    }
}

void init_uart() {
    uart0_init(9600, 8, 1, 'e');
}

void uart_task(void *pvParameters) {
  // Task
  INT8U uart_data;
  while (1) {

    while (xQueueReceive(q_uart_tx, &uart_data, 0)) {
      uart0_putc(uart_data);
      vTaskDelay(50 / portTICK_RATE_MS);
    }

    while (!(UART0_FR_R & (1 << 4))) {
      uart_data = uart0_getc();
      xQueueSendToBack(q_uart_rx, &uart_data, 15);
      vTaskDelay(50 / portTICK_RATE_MS);
    }

    vTaskDelay(50 / portTICK_RATE_MS); // wait 50 ms.
  }
}
