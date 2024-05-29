#ifndef _CONTROLER_H
#define _CONTROLER_H

#include "emp_type.h"
#include "spi.h"

SPI_TYPE encoders;
double y_temp[2][1];
double glob_temp;
// Function to calculate the angular velocity of pan and tilt
void vel_measurer(BOOLEAN tilt_dir, BOOLEAN pan_dir);

// Function to calculate the distance between two points. Returns the distance as a double.
double dist(double p1, double p2);

// Function to convert encoder ticks to radians. Returns the angle in radians as a double.
double tics_to_rad(INT16S ticks);

// Controller task that handles the control of the pan and tilt. The task is responsible for calculating the control signal and sending it to the motor controller over SPI.
void controller_task();

// Function to convert a joystick position to a velocity. Uses direction to determine the sign of the velocity. The velocity is stored in the pointer ref. 
void joystick_velocity(INT8U joystick_pan, INT8U joystick_tilt, double ref[2][1], BOOLEAN tilt_direction, BOOLEAN pan_direction);

// Function to convert a voltage to a PWM value and a direction. The PWM value is stored in the pointer pwm and the direction is stored in the pointer direction.
void voltage_to_pwm(double voltage, INT8U *pwm, BOOLEAN * direction);

// Controller function to calculate the control signal. The reference value is stored in ref, the output value is stored in y and the control signal is stored in u. The time step is used to calculate the integral and derivative part of the controller.
void step_controller(double ref[][1], double y[][1], void * u, double time_step);

void set_LED();

#endif
