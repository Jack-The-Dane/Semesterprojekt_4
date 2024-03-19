#include "adc.h"
#include "emp_type.h"

#ifndef JOYSTICK
#define JOYSTICK

struct Joystick {
    INT16U x, y;
    BOOLEAN button;
};

void init_joystick() {
    init_adc();
}

void update_joystick(struct Joystick * stick) {
    stick->x = get_adc0();
    stick->y = get_adc1();
    stick->button = 0;
}

#endif
