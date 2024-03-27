#include "emp_type.h"
#include "gpio.h"
#include "uart.h"
#include "joystick.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "tm4c123gh6pm.h"
#include <stdint.h>

void setup() {
    setupPortF();
    setLEDColor(RED);
    uart_init();
    init_joystick();
}

int main(void) {
    setup();
    uart_put_stringln("Starting...");
    setLEDColor(OFF);

    struct Joystick stick = {0};

    while (69) {

        update_joystick(&stick);
        
        float x_percent = (stick.x / 4096) * 100;
        float y_percent = (stick.y / 4096) * 100;
        char buf1[6];
        char buf2[6];
        sprintf(buf2,"%f",y_percent);
        uart_put_string(buf1);
        uart_put_stringln(buf2);
    }

    return (0);
}
