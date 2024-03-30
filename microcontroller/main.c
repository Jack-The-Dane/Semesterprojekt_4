#include "gpio.h"
#include "spi.h"
#include "uart.h"
#include "joystick.h"

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>

#include "emp_type.h"
#include "tm4c123gh6pm.h"

void setup() {
    setupPortF();
    setLEDColor(RED);
    setup_spi();
    uart_init();
    init_joystick();
}

int main(void) {
    setup();

    SPI_TYPE send = 0b1100110010101010;
    SPI_TYPE recieve = 0;

    spi_tranceive(&send, &recieve);

    struct Joystick stick = {0};

    while (69) {
        update_joystick(&stick);

        uint8_t x_low = stick.x;
        uint8_t x_high = stick.x >> 8;
        uint8_t y_low = stick.y;
        uint8_t y_high = stick.y >> 8;

        uart_putc(x_high);
        uart_putc(x_low);
        uart_putc(y_high);
        uart_putc(y_low);

        while (stick.button) {
            update_joystick(&stick);
        }

    }

    return (0);
}
