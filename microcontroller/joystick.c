#include "joystick.h"
#include "adc.h"
#include "emp_type.h"
#include "rtcs.h"
#include "tmodel.h"
#include "tm4c123gh6pm.h"

// Global joystick for now
Joystick joystick = {0};

void init_joystick() {
    init_adc();

    // Setup PB0 as input for the joystick button
    SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOB;            // Enable the GPIO port
    GPIO_PORTB_DIR_R &= ~(1 << JOYSTICK_BUTTON_PIN); // Set the direction as output
    GPIO_PORTB_DEN_R |=  (1 << JOYSTICK_BUTTON_PIN); // Enable the GPIO pin
    GPIO_PORTB_PUR_R |=  (1 << JOYSTICK_BUTTON_PIN); // Enable internal pull-up

}

void joystick_task(INT8U my_id, INT8U my_state, INT8U event, INT8U data) {
    if(!wait_sem(SEM_JOYSTICK, WAIT_FOREVER)) return;
    joystick.x = get_adc0();
    joystick.y = get_adc1();
    joystick.button = !(GPIO_PORTB_DATA_R & (1 << JOYSTICK_BUTTON_PIN));
    signal_sem(SEM_JOYSTICK);
}
