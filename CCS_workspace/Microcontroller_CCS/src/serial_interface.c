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
#include "task.h"

extern xQueueHandle q_uart_tx;
extern xQueueHandle q_uart_rx;
extern TaskHandle_t joystick_handle;

void serial_interface_task (void *pvParameters){
    BOOLEAN debug_mode = FALSE;
    while(1){
        char * str = receive_string();
        if (strlen(str) != 0) {
            send_string(str);
            if(strcmp(str, "debug\n")==0){

                if (!debug_mode) {
                    send_string("Entering debug mode");
                    vTaskSuspend(joystick_handle);
                    setLEDColor(GREEN);
                    debug_mode = TRUE;
                }
                else {
                    send_string("Exiting debug mode");
                    vTaskResume(joystick_handle);
                    setLEDColor(MAGENTA);
                    debug_mode = FALSE;
                }

            }

        }
    }
}




