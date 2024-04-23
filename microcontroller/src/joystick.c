#include "joystick.h"
#include "adc.h"
#include "emp_type.h"
#include "tm4c123gh6pm.h"
#include "gpio.h"
#include "uart.h"
#include "FreeRTOS.h"
#include "semphr.h"

extern joystick_mutex;
extern joystick_uart_mutex;

// Global joystick for now
Joystick joystick = {0};

void init_joystick() {
    init_adc();

    // Setup PB0 as input for the joystick button
    SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOB;            // Enable the GPIO port
    GPIO_PORTB_DIR_R &=  (1 << JOYSTICK_BUTTON_PIN); // Set the direction as output
    GPIO_PORTB_DEN_R |=  (1 << JOYSTICK_BUTTON_PIN); // Enable the GPIO pin
    GPIO_PORTB_PUR_R |=  (1 << JOYSTICK_BUTTON_PIN); // Enable internal pull-up

}

void joystick_task(void * pvParameters) {
    while (1) {
        xSemaphoreTake(joystick_mutex, portMAX_DELAY);
        joystick.x = get_adc0();
        joystick.y = get_adc1();
        joystick.button = !(GPIO_PORTB_DATA_R & (1 << JOYSTICK_BUTTON_PIN));
        xSemaphoreGive(joystick_mutex);
    }
}

void joystick_uart_echo_task(void * pvParameters) {
    while (1) {
        xSemaphoreTake(joystick_uart_mutex, portMAX_DELAY);
        xSemaphoreTake(joystick_mutex, portMAX_DELAY);
        setLEDColor(BLUE);
        uart_putc(joystick.x >> 4);
        uart_putc(joystick.y >> 4);
        uart_putc(joystick.button);
        xSemaphoreGive(joystick_mutex);
        xSemaphoreGive(joystick_uart_mutex);
    }
}
