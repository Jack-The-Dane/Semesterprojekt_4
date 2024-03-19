#include "emp_type.h"
#include "gpio.h"
#include "uart.h"

#include "tm4c123gh6pm.h"
#include "systick.h"
#include <stdint.h>

#define TIMEOUT 1000

volatile INT16U ticks;

void SysTick_Handler() {
    if (ticks) ticks--;
}

#define INPUT_BIT 0b00000001

void setup() {
    setupPortF();
    setLEDColor(GREEN);
    init_systick();
    uart_init();

    // 1.
    ADC0_SPC_R = 0x00;
    ADC1_SPC_R = 0x00;

    // 2. Enable and provide clock for ADC0
    SYSCTL_RCGCADC_R = 0x0001;

    // 3. Set PIN 7 (AIN1/PE2) as peripheral input
    GPIO_PORTE_AFSEL_R |= INPUT_BIT;

    // 4. Configure PE2 to be an ANALOG input
    GPIO_PORTE_DEN_R &= ~(INPUT_BIT);

    // 5. Disable analog isolation for input bit
    GPIO_PORTE_AMSEL_R |= INPUT_BIT;

}

int main(void) {
    setup();

    while(1) {
        uart_put_stringln("Turning ON!");
        setLEDColor(BLUE);
        ticks = TIMEOUT;
        while (ticks);
        uart_put_stringln("Turning OFF...");
        setLEDColor(OFF);
        ticks = TIMEOUT;
        while (ticks);
    }

    return (0);
}
