#include "emp_type.h"

#ifndef JOYSTICK
#define JOYSTICK

#define JOYSTICK_BUTTON_PIN 0

typedef struct {
    INT16U x, y;
    BOOLEAN button;
} Joystick ;

void init_joystick();
void joystick_task(INT8U my_id, INT8U my_state, INT8U event, INT8U data);
void joystick_uart_echo_task(INT8U my_id, INT8U my_state, INT8U event, INT8U data);

#endif
