/*****************************************************************************
* University of Southern Denmark
* Embedded C Programming (ECP)
*
* MODULENAME.: tmodel.h
*
* PROJECT....: ECP
*
* DESCRIPTION: Defines the elemtn of the task model..
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 101004  MoH   Module created.
*
*****************************************************************************/

#ifndef _TMODEL_H_
#define _TMODEL_H_

#include "rtcs.h"

// Tasks.
// ------
#define TASK_JOYSTICK           USER_TASK
#define TASK_SPI                USER_TASK+1
#define TASK_JOYSTICK_UART_ECHO USER_TASK+2

// Interrupt Service Routines.
// ---------------------------
#define ISR_TIMER 21

// Semaphores.
// -----------
#define SEM_JOYSTICK USER_SEM
#define SEM_SPI      USER_SEM+1 // Guards SPI variables for sending and receiving data from FPGA.


// Shared State Memory.
// --------------------
#define SSM_SPI_PAN_MOTOR    0
#define SSM_SPI_TILT_MOTOR   1
#define SSM_SPI_PAN_ENCODER  2
#define SSM_SPI_TILT_ENCODER 3


// QUEUEs.
// -------
#define Q_UART_TX   USER_QUEUE
#define Q_UART_RX   USER_QUEUE+1

#endif /* _TMODEL_H_ */
