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

extern xQueueHandle q_uart_tx;
extern xQueueHandle q_uart_rx;

void serial_interface_task (void *pvParameters){
    INT8U ch;
    while(1){
        if(xQueueReceive(q_uart_rx, &ch, 0)){
            xQueueSendToBack(q_uart_tx, &ch, 1);
        }
    }
}



