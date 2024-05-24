#ifndef _CONTROLER_H
#define _CONTROLER_H

#include "emp_type.h"
#include "spi.h"

SPI_TYPE encoders;

void vel_measurer(double u[2][1]);
void controller_task();

#endif
