#define F_CPU 16000000UL

#include <stdint.h>

#ifndef DELAY_H
#define DELAY_H

// The is not accurate at all
void delay_us(uint32_t us) {
    for (uint32_t i = 0; i < us; i++) {
        for (uint32_t j = 0; j < 16; j++) {
            j+1;
        }
    }
}

void delay_ms(uint16_t ms) {
    for (uint16_t i = 0; i < ms; i++) {
        delay_us(1000);
    }
}

#endif
