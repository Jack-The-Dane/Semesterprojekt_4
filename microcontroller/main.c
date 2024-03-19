#include "emp_type.h"
#include "gpio.h"
#include "uart.h"
#include "joystick.h"

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

        char x_high = stick.x >> 8;
        char y_high = stick.y >> 8;

        uart_putc(x_high << 4 | y_high);
    }

    return (0);
}
