#include "spi.h"
#include "delay.h"
#include "glob_def.h"
#include "spi.h"
#include "tm4c123gh6pm.h"
#include <stdint.h>
#include "gpio.h"
#include "FreeRTOS.h"
#include "task.h"

void init_spi() {
  // Enable the GPIO port that is used for the on-board LEDs and switches.
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOE;

  // Set the direction as output
  GPIO_PORTE_DIR_R = (1 << SPI_MOSI_PIN) | (1 << SPI_CLK_PIN) | (1 << SPI_CS_PIN);

  // Enable the GPIO pins for digital function
  GPIO_PORTE_DEN_R = (1 << SPI_MOSI_PIN) | (1 << SPI_MISO_PIN) | (1 << SPI_CLK_PIN) | (1 << SPI_CS_PIN);

  // Enable internal pull-up
  GPIO_PORTE_PUR_R = 1 << SPI_MISO_PIN;

  // Set the initial values
  GPIO_PORTE_DATA_R = (0 << SPI_MOSI_PIN) | (0 << SPI_CLK_PIN) | (1 << SPI_CS_PIN);

  spi_pan_motor = 0b10101010;
  spi_tilt_motor = 0b10101010;
  spi_pan_encoder = 0;
  spi_tilt_encoder = 0;
}

// https://en.wikipedia.org/wiki/Serial_Peripheral_Interface#Bit-banging_the_protocol
void spi_tranceive(SPI_TYPE *data_send, SPI_TYPE *data_recieve) {
  //setLEDColor(RED);

  // Pull CS low to select the device. This is the start of the SPI frame.
  GPIO_PORTE_DATA_R &= ~(1 << SPI_CS_PIN);

  //setLEDColor(GREEN);

  for (uint8_t i = SPI_WORD_LENGTH; i > 0; i--) {

    // Set output bit
    if (*data_send & (1 << (i - 1))) {
      GPIO_PORTE_DATA_R |= 1 << SPI_MOSI_PIN; // Set 1
    } else {
      GPIO_PORTE_DATA_R &= ~(1 << SPI_MOSI_PIN); // Set 0
    }

    delay_us(1);

    // Pulse the clock
    GPIO_PORTE_DATA_R |= 1 << SPI_CLK_PIN;
    delay_us(1); // This should be as long as the FPGA needs to shift out a bit
    GPIO_PORTE_DATA_R &= ~(1 << SPI_CLK_PIN);

    // Read input bit
    if (GPIO_PORTE_DATA_R & (1 << SPI_MISO_PIN)) {
      *data_recieve |= 1 << (i - 1); // Set 1
    } else {
      *data_recieve &= ~(1 << (i - 1)); // Set 0
    }
  }

  // Set MOSI low
  GPIO_PORTE_DATA_R &= ~(1 << SPI_MOSI_PIN);

  // Set CS high to end the SPI frame.
  GPIO_PORTE_DATA_R |= (1 << SPI_CS_PIN);
}

void spi_task() {
    while(1){
  // Create a word where the left-most bits are the pan motor and the right-most bits are the tilt motor
  SPI_TYPE send_message = ((SPI_TYPE)spi_pan_motor) << (SPI_WORD_LENGTH / 2) | ((SPI_TYPE)spi_tilt_motor);

  // Create a blank word to store the received data
  SPI_TYPE recieve_message = 0;

  spi_tranceive(&send_message, &recieve_message);

  // Extract the pan and tilt encoder values from the received message
  spi_pan_encoder = (SPI_ENCODER_TYPE)(recieve_message >> (SPI_WORD_LENGTH / 2));
  spi_tilt_encoder = (SPI_ENCODER_TYPE)(recieve_message);
  vTaskDelay(300);
    }
}
