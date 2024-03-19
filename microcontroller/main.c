#include "emp_type.h"
#include "gpio.h"
#include "uart.h"
#include "adc.h"

#include "tm4c123gh6pm.h"
#include <stdint.h>

void setup() {
    setupPortF();
    setLEDColor(GREEN);
    uart_init();
    init_adc();
}

int main(void) {
    setup();
    uart_put_stringln("Starting...");
    setLEDColor(BLUE);

    while (69) {
        INT32U input = get_adc();

        INT16U adc0 = input >> 16;
        INT16U adc1 = input & 0x00FF;

        char adc0_high = adc0 >> 8;
        char adc1_high = adc1 >> 8;

        uart_putc(adc0_high << 4 | adc1_high);
    }

    return (0);
}
