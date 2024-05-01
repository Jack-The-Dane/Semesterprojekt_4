#include "emp_type.h"

#ifndef SPI_H
#define SPI_H

// The type of data sent and received over SPI
#define SPI_TYPE INT32U
#define SPI_WORD_LENGTH 20

// SPI frequency
#define SCLK_FREQ 5UL
#define SCLK_HALF_PERIOD_US (1000000UL / (SCLK_FREQ * 2))

// `SPI_MOTOR_TYPE` and `SPI_ENCODER_TYPE` should be half the size of `SPI_TYPE`
#define SPI_MOTOR_TYPE INT8U
#define SPI_ENCODER_TYPE INT16U

// Pins within PORTE
#define SPI_CS_PIN 3   // Chip select (Active low)
#define SPI_CLK_PIN 2  // Clock
#define SPI_MISO_PIN 1 // Main in, sub out
#define SPI_MOSI_PIN 0 // Main out, sub in

// Global variables for now guarded by the `SEM_SPI` semaphore
SPI_MOTOR_TYPE spi_pan_motor;
SPI_MOTOR_TYPE spi_tilt_motor;
SPI_MOTOR_TYPE spi_pan_encoder;
SPI_MOTOR_TYPE spi_tilt_encoder;

// Setup in pins on PORTE for SPI
void init_spi();

// Sends and receives data over SPI
void spi_tranceive(SPI_TYPE * data_send, SPI_TYPE * data_recieve);

// Task that continuously sends and receives data over SPI.
// To send data, set the `spi_pan_motor` and `spi_tilt_motor` variables.
// The get the current encoder values read the `spi_pan_encoder` and `spi_tilt_encoder` variables.
// WARNING: MAKE SURE TO GUARD THE VARIABLES WITH THE `SEM_SPI` SEMAPHORE BEFORE READING OR WRITING TO THEM.
void spi_task();

#endif
