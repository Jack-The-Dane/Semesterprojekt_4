#ifndef _CONTROLER_H
#define _CONTROLER_H

#include "emp_type.h"
#include "spi.h"

SPI_TYPE encoders;
double u_temp[2][1];
double glob_temp;
// Function to calculate the angular velocity of pan and tilt
void vel_measurer();

// Function to calculate the distance between two points. Returns the distance as a double.
double dist(double p1, double p2);

// Function to convert encoder ticks to radians. Returns the angle in radians as a double.
double tics_to_rad(INT16S ticks);

void controller_task();

#endif
