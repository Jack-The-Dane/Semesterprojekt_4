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

        uint8_t x_low  = (uint8_t) (stick.x >> 8); // High x bits
        uint8_t x_high = (uint8_t) stick.x;        // Low x bits
        uint8_t y_low  = (uint8_t) (stick.y >> 8); // High y bits
        uint8_t y_high = (uint8_t) stick.y;        // Low y bits

        uart_putc(x_low);
        uart_putc(x_high);
        uart_putc(y_low);
        uart_putc(y_high);

    }

    return (0);
}
