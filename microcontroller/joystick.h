#include "adc.h"
#include "emp_type.h"
#include "tm4c123gh6pm.h"

#ifndef JOYSTICK
#define JOYSTICK

#define JOYSTICK_BUTTON_PIN 0

struct Joystick {
    INT16U x, y;
    BOOLEAN button;
};

void init_joystick() {
    init_adc();

    // Setup PB0 as input for the joystick button
    SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOB;            // Enable the GPIO port
    GPIO_PORTB_DIR_R &= ~(1 << JOYSTICK_BUTTON_PIN); // Set the direction as output
    GPIO_PORTB_DEN_R |=  (1 << JOYSTICK_BUTTON_PIN); // Enable the GPIO pin
    GPIO_PORTB_PUR_R |=  (1 << JOYSTICK_BUTTON_PIN); // Enable internal pull-up

}

void update_joystick(struct Joystick * stick) {
    stick->x = get_adc0();
    stick->y = get_adc1();
    stick->button = !(GPIO_PORTB_DATA_R & (1 << JOYSTICK_BUTTON_PIN));
}

#endif
