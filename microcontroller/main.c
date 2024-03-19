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
        INT16U input = get_adc();
        char high_byte = input >> 8;
        char low_byte = input & 0x00FF;
        uart_putc(high_byte);
        //uart_putc(low_byte);
    }

    return (0);
}
