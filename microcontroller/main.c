#include "emp_type.h"
#include "tm4c123gh6pm.h"
#include "gpio.h"
#include "spi.h"
#include "uart.h"
#include "joystick.h"
#include "systick.h"
#include "controller.h"
#include "FreeRTOS.h"

#define USERTASK_STACK_SIZE configMINIMAL_STACK_SIZE
#define IDLE_PRIO 0
#define LOW_PRIO  1
#define MED_PRIO  2
#define HIGH_PRIO 3

void setup() {
    init_systick();
    init_spi();
    init_uart();
    init_joystick();
    init_gpio();
}

int main(void) {
    setup();

    xTaskCreate(joystick_task,           "joystick_task",           USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL );
    xTaskCreate(joystick_uart_echo_task, "joystick_uart_echo_task", USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL );
    xTaskCreate(spi_task,                "spi_task",                USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL );
    xTaskCreate(controller_task,         "controller_task",         USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL );

    vTaskStartScheduler();

    return (0);
}
