/*
 * serial_interface.h
 *
 *  Created on: 14. maj 2024
 *      Author: simone
 */

#ifndef SRC_INC_SERIAL_INTERFACE_H_
#define SRC_INC_SERIAL_INTERFACE_H_

// Task to suspend joystick task and send joystick values over UART, and receive reference values over UART
void serial_interface_task(void *pvParameters);


#endif /* SRC_INC_SERIAL_INTERFACE_H_ */
