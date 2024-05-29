#include "joystick.h"
#include "adc.h"
#include "emp_type.h"
#include "tm4c123gh6pm.h"
#include "gpio.h"
#include "uart.h"
#include "FreeRTOS.h"
#include "semphr.h"

extern xQueueHandle q_uart_tx;
extern xQueueHandle q_uart_rx;

extern SemaphoreHandle_t joystick_mutex;
extern SemaphoreHandle_t joystick_uart_mutex;

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
    while (69) {
        if(xSemaphoreTake(joystick_mutex, 1)){
            joystick.x = get_adc0();                                                    // Get the x value from the joystick
            joystick.y = get_adc1();                                                    // Get the y value from the joystick
            joystick.button = !(GPIO_PORTB_DATA_R & (1 << JOYSTICK_BUTTON_PIN));        // Get the button value from the joystick
            xSemaphoreGive(joystick_mutex);
        }
        vTaskDelay(20);

    }
}

void joystick_uart_echo_task(void * pvParameters) {
    while (69) {

        if(xSemaphoreTake(joystick_uart_mutex, 1)){
            if(xSemaphoreTake(joystick_mutex, 1)){
                send_char(joystick.x >> 4);
                send_char(joystick.y >> 4);
                send_char(joystick.button);
                xSemaphoreGive(joystick_mutex);
                xSemaphoreGive(joystick_uart_mutex);
                vTaskDelay(2);
            } else {
                xSemaphoreGive(joystick_uart_mutex);
            }
        }
    }
}
