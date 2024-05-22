#include "emp_type.h"

#ifndef JOYSTICK
#define JOYSTICK
// Use ACD input 10 (PB4) - PAN input
// Use ACD input 11 (PB5) - TILT input

#define JOYSTICK_BUTTON_PIN 0

typedef struct {
    INT16U x, y;
    BOOLEAN button;
} Joystick ;


void init_joystick();
void joystick_task(void * pvParameters);
void joystick_uart_echo_task(void * pvParameters);

#endif
