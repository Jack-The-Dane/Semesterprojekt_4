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
#include "joystick.h"

extern xQueueHandle q_uart_tx;
extern xQueueHandle q_uart_rx;
extern TaskHandle_t joystick_handle;

BOOLEAN debug_mode = FALSE;

void serial_interface_task (void *pvParameters){
    extern Joystick joystick;
    while(1){
        char * str = receive_string();
        if (strlen(str) != 0) {
            send_string(str);
            if(strcmp(str, "debug\n")==0){

                if (!debug_mode) {
                    send_string("Entering debug mode \n");
                    vTaskSuspend(joystick_handle);
                    setLEDColor(GREEN);
                    debug_mode = TRUE;
                }
                else {
                    send_string("Exiting debug mode \n");
                    vTaskResume(joystick_handle);
                    setLEDColor(MAGENTA);
                    debug_mode = FALSE;
                }

            } else if( debug_mode && strlen(str) == 6){
                INT16U x = ((str[0] & 0x0F) << 8) | str[1];
                INT16U y = ((str[2] & 0x0F) << 8) | str[3];
                joystick.x = x;
                joystick.y = y;
                joystick.button = str[4];
                send_string("Values received \n");
            }

        }
    }
}




