/*
 * serial_interface.c
 *
 *  Created on: 14. maj 2024
 *      Author: simone
 */
#include "FreeRTOS.h"
#include "queue.h"
#include "emp_type.h"
#include "uart.h"
#include "gpio.h"
#include "string.h"

extern xQueueHandle q_uart_tx;
extern xQueueHandle q_uart_rx;

void serial_interface_task (void *pvParameters){
    while(1){
        char * str = receive_string();
        if (strlen(str) != 0) {
            send_string(str);
            if(strcmp(str, "debug\n")==0){
                send_string("Entering debug mode");
            }

        }
    }
}




