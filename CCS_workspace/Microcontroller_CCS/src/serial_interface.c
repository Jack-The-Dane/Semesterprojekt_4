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
#include "semphr.h"

extern xQueueHandle q_uart_tx;
extern xQueueHandle q_uart_rx;
extern SemaphoreHandle_t encoder_mutex;
extern SemaphoreHandle_t joystick_mutex;
extern TaskHandle_t joystick_handle;

BOOLEAN debug_mode = FALSE;

void serial_interface_task (void *pvParameters){
    extern Joystick joystick;
    INT16U x;
    INT16U y;
    INT8U button;

    while(1){
    if(uxQueueMessagesWaiting(q_uart_rx)){
        char * str = receive_string();

        if (strlen(str) != 0) {
            //send_string(str);
            if(strcmp(str, "debug\n")==0){

                if (!debug_mode) {
                    send_string("Entering debug mode \n");
                    vTaskSuspend(joystick_handle);
                    // setLEDColor(GREEN);
                    debug_mode = TRUE;
                }
                else {
                    send_string("Exiting debug mode \n");
                    vTaskResume(joystick_handle);
                    // setLEDColor(MAGENTA);
                    debug_mode = FALSE;
                }

            } else if( debug_mode && strlen(str) == 6){
                x = ((str[0] & 0x1F) << 7) | (str[1] & 0x7F);
                y = ((str[2] & 0x1F) << 7) | (str[3] & 0x7F);
                button = ((str[4] & 0x7F));
                if(xSemaphoreTake(joystick_mutex, 5))
                {
                    joystick.x = x;
                    joystick.y = y;
                    joystick.button = (button);
                    xSemaphoreGive(joystick_mutex);
                }
                INT8U data[5] = {x >> 8, x & 0x00FF, y >> 8, y & 0x00FF, button}; 
                send_string_len(data, 5);
                if(xSemaphoreTake(encoder_mutex,5)){
                    INT8U enc_data[4] = {((encoders >> 19) & 0x01), ((encoders >> 11) & 0xff), ((encoders >> 10) & 0x01), (encoders >> 2) & 0xff};
                    xSemaphoreGive(encoder_mutex);
                    send_string_len(enc_data, 4);
                }
                //INT16U vel = (uint8_t) (u_temp[1][0]*100);
                //INT32S vel_ticks = glob_temp;
                //INT8U vel_data[6] = {(vel_ticks >> 24) & 0xFF, (vel_ticks >> 16) & 0xFF, (vel_ticks >> 8) & 0xFF, vel_ticks & 0xFF};
                INT8U vel = (INT8U)(glob_temp*100);
                INT8U vel_data[1] = {vel};
                send_string_len(vel_data, 1);
                vTaskSuspend(NULL);
            }
        }
    } else {
            vTaskDelay(5);
        }
    }
}




