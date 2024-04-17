#define F_CPU 16000000UL

#include <stdint.h>

#ifndef DELAY_H
#define DELAY_H

// The is not accurate at all
void delay_us(uint16_t us) {
    uint16_t i;
    uint16_t j;
    for (i = 0; i < us; i++) {
        for (j = 0; j < 16; j++) {
            i++;
        }
    }
}

void delay_ms(uint16_t ms) {
    uint16_t i;
    for (i = 0; i < ms; i++) {
        delay_us(1000);
    }
}

#endif
