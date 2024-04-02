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
#define TASK_JOYSTICK USER_TASK
#define TASK_GPIO     USER_TASK+1

// Interrupt Service Routines.
// ---------------------------
#define ISR_TIMER 21

// Semaphores.
// -----------
#define SEM_JOYSTICK USER_SEM


// Shared State Memory.
// --------------------
#define SSM_JOYSTICK 0

// QUEUEs.
// -------
#define Q_UART_TX   USER_QUEUE
#define Q_UART_RX   USER_QUEUE+1

#endif /* _TMODEL_H_ */
