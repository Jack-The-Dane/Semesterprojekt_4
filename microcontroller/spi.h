#include <stdint.h>

#ifndef SPI_H
#define SPI_H

#define SPI_TYPE uint16_t
#define SPI_WORD_LENGTH 16

// Pins within PORTE
#define SPI_CS_PIN 3   // Chip select (Active low)
#define SPI_CLK_PIN 2  // Clock
#define SPI_MISO_PIN 1 // Master in, slave out
#define SPI_MOSI_PIN 0 // Master out, slave in

// Setup in pins on PORTE for SPI
void init_spi();

// Sends and receives data over SPI
void spi_tranceive(SPI_TYPE * data_send, SPI_TYPE * data_recieve);

#endif
