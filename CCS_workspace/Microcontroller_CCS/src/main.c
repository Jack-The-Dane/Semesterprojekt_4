#include "emp_type.h"
#include "tm4c123gh6pm.h"
#include "gpio.h"
#include "spi.h"
#include "uart.h"
#include "systick_frt.h"
#include "joystick.h"
#include "controller.h"
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "queue.h"
#include "serial_interface.h"

#define USERTASK_STACK_SIZE configMINIMAL_STACK_SIZE
#define IDLE_PRIO 0
#define LOW_PRIO  1
#define MED_PRIO  2
#define HIGH_PRIO 3

volatile SemaphoreHandle_t joystick_mutex;
volatile SemaphoreHandle_t joystick_uart_mutex;

volatile xQueueHandle q_uart_tx;
volatile xQueueHandle q_uart_rx;

TaskHandle_t joystick_handle;

void error() {
    setLEDColor(RED);
    while(1);
}

void setup() {
    init_systick();
    init_spi();
    init_uart();
    init_joystick();
    init_gpio();
}

int main(void) {
    setup();

    joystick_mutex = xSemaphoreCreateMutex();
    joystick_uart_mutex = xSemaphoreCreateMutex();

    if (!joystick_mutex) error();
    if (!joystick_uart_mutex) error();

    q_uart_tx = xQueueCreate(150, sizeof(INT8U));
    q_uart_rx = xQueueCreate(150, sizeof(INT8U));

    xTaskCreate(alive_blink,             "Alive blinker",           USERTASK_STACK_SIZE, NULL, LOW_PRIO,  NULL );
    xTaskCreate(joystick_task,           "joystick_task",           USERTASK_STACK_SIZE, NULL, LOW_PRIO,  &joystick_handle );
    xTaskCreate(joystick_uart_echo_task, "joystick_uart_echo_task", USERTASK_STACK_SIZE, NULL, LOW_PRIO,  NULL );
    xTaskCreate(spi_task,                "spi_task",                USERTASK_STACK_SIZE, NULL, LOW_PRIO,  NULL );
    xTaskCreate(controller_task,         "controller_task",         USERTASK_STACK_SIZE, NULL, HIGH_PRIO,  NULL );
    xTaskCreate(uart_task,               "uart_task",               USERTASK_STACK_SIZE, NULL, LOW_PRIO,  NULL );
    xTaskCreate(serial_interface_task,   "serial_task",             USERTASK_STACK_SIZE, NULL, LOW_PRIO,  NULL );

    vTaskStartScheduler();

    return (0);
}
