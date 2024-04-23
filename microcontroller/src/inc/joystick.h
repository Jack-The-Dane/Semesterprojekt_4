#include "emp_type.h"

#ifndef JOYSTICK
#define JOYSTICK

#define JOYSTICK_BUTTON_PIN 0

typedef struct {
    INT16U x, y;
    BOOLEAN button;
} Joystick ;

Joystick joystick;

void init_joystick();
void joystick_task(void * pvParameters);
void joystick_uart_echo_task(void * pvParameters);

#endif
