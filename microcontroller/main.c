#include "emp_type.h"
#include "gpio.h"
#include "spi.h"
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
        /* update_joystick(&stick); */

    }

    return (0);
}
