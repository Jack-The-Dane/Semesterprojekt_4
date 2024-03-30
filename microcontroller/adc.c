#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "emp_type.h"

INT16U get_adc0() {
    return ADC0_SSFIFO3_R;
}

INT16U get_adc1() {
    return ADC1_SSFIFO3_R;
}

void init_adc()
{

    SYSCTL_RCGC0_R |= SYSCTL_RCGC0_ADC0;
    SYSCTL_RCGC0_R |= SYSCTL_RCGC0_ADC1;

    SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOB;

    // Set ADC0 Sequencer priorities.
    // SS3(bit12-13): Priority = 0 ; Highest
    // SS2(bit8-9):   Priority = 1
    // SS1(bit4-5):   Priority = 2
    // SS0(bit0-1):   Priority = 3 ; Lowest
    ADC0_SSPRI_R = 0x00000123;
    ADC1_SSPRI_R = 0x00000123;

    //Disable all sequencers
    ADC0_ACTSS_R = 0;
    ADC1_ACTSS_R = 0;

    ADC0_EMUX_R = 0x0000F000; // Trigger for Sequencer 3 Always.
    ADC1_EMUX_R = 0x0000F000; // Trigger for Sequencer 2 Always.

    // sample multiplexer input, sequencer 3 select
    ADC0_SSMUX3_R = 10; // Use ACD input 10
    ADC1_SSMUX3_R = 11; // Use ACD input 11

    //ADC sample sequence control 3 = END0
    ADC0_SSCTL3_R =  0x00000002;
    ADC1_SSCTL3_R =  0x00000002;

    ADC0_ACTSS_R = 0x00000008; //enable sequencer 3 for ADC0
    ADC1_ACTSS_R = 0x00000008; //enable sequencer 2 for ADC1

    // Start conversion at sequencer 3
    ADC0_PSSI_R = 0x08;
    ADC1_PSSI_R = 0x08;
}
