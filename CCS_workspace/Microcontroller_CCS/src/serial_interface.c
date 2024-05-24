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
#include "controller.h"
#include "spi.h"

extern xQueueHandle q_uart_tx;
extern xQueueHandle q_uart_rx;
extern TaskHandle_t joystick_handle;

BOOLEAN debug_mode = FALSE;

INT8U string_length(char *str){
    INT8U i = 0;
    while(*str != '\n'){
        i++;
        //xQueueSendToBack(q_uart_tx, str, 0);
        str++;
    }
    return i;
}


void serial_interface_task (void *pvParameters){
    extern Joystick joystick;
    while(1){
    if(uxQueueMessagesWaiting(q_uart_rx)){
        char * str = receive_string();
         
        if (strlen(str) != 0) {
            //send_string(str);
            if(strcmp(str, "debug\n")==0){

                if (!debug_mode) {
                    send_string("Entering debug mode \n");
                    //INT8U array[] = {0x00, 0x08, 0x00, 0x08, 0x00, 0x0a};
                    //send_string(array);
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
                INT16U x = ((str[0] & 0x1F) << 7) | (str[1] & 0x7F); 
                INT16U y = ((str[2] & 0x1F) << 7) | (str[3] & 0x7F);
                joystick.x = x;
                joystick.y = y;
                joystick.button = (str[4] & 0x7F);
                INT8U data[6] = {x >> 8, x & 0x00FF, y >> 8, y & 0x00FF, joystick.button, 0x0A}; 
                send_string(data);
                INT8U enc_data[5] = {((encoders >> 19) & 0x01), ((encoders >> 11) & 0xff), ((encoders >> 10) & 0x01), (encoders >> 2) & 0xff, 0x0a};
                send_string(enc_data);
            }

        }
    }
    }
}




