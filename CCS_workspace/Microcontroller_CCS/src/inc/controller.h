#ifndef _CONTROLER_H
#define _CONTROLER_H

#include "emp_type.h"
#include "spi.h"

SPI_TYPE encoders;
double u_temp[2][1];

void vel_measurer();
void controller_task();

#endif
