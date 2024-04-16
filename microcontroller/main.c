#include "emp_type.h"
#include "tm4c123gh6pm.h"
#include "rtcs.h"
#include "gpio.h"
#include "spi.h"
#include "uart.h"
#include "joystick.h"
#include "tmodel.h"
#include "systick.h"
#include "controller.h"
#include "FreeRTOS.h"

void setup() {
    init_systick();
    init_spi();
    init_uart();
    init_joystick();
    init_gpio();
}

int main(void) {
    setup();

    init_rtcs();

    signal_sem(SEM_JOYSTICK);
    signal_sem(SEM_SPI);

    start_task(TASK_JOYSTICK, joystick_task);
    start_task(TASK_JOYSTICK_UART_ECHO, joystick_uart_echo_task);
    // start_task(TASK_SPI, spi_task);
    start_task(TASK_CONTROLLER, controller_task);

    schedule();

    return (0);
}
