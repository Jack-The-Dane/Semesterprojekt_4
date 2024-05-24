#include "controller.h"
#include "emp_type.h"
#include "joystick.h"
#include "spi.h"
#include "FreeRTOS.h"
#include "task.h"
#include "gpio.h"
#include "semphr.h"
#include "uart.h"
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>



// How much time is allocated for the other tasks running on the microcontroller (5 ms / tick)
#define CONTROLLER_EXTRA_SLEEP_TICKS 5
#define vel_size 4      // Size of the velocity buffer

INT8U i = 0;
INT16U theta_last_tilt = 0;
INT16U theta_last_pan = 0;
INT16U theta_current_tilt = 0;
INT16U theta_current_pan = 0;


double v_tilt[vel_size];
double v_pan[vel_size];
double u_temp[2][1];

extern BOOLEAN debug_mode;
extern xQueueHandle q_uart_tx;

void send_debug_value(SPI_TYPE encoders){
    INT8U byte1 = encoders;
    INT8U byte2 = encoders >> 8;
    INT8U byte3 = encoders >> 16;
    INT8U byte4 = '\n';
    xQueueSendToBack(q_uart_tx, &byte1, 0);
    xQueueSendToBack(q_uart_tx, &byte2, 0);
    xQueueSendToBack(q_uart_tx, &byte3, 0);
    xQueueSendToBack(q_uart_tx, &byte4, 0);
}
const TickType_t xFrequency = pdMS_TO_TICKS( (SCLK_HALF_PERIOD_US * (SPI_WORD_LENGTH * 2 + 2)) / 1000 ) + CONTROLLER_EXTRA_SLEEP_TICKS;


// Velocity measurer
void vel_measurer(void * u){
    if(i % vel_size == 0){i = 0;}
    theta_current_pan = (encoders >> 2) & 0x1FF;
    theta_current_tilt = (encoders >> 11) & 0x1FF;

    // Calulate pan velocity and place in array
    v_pan[i] = (theta_current_pan - theta_last_pan ) / (xFrequency * portTICK_PERIOD_MS);
    v_tilt[i] = (theta_current_tilt - theta_last_tilt ) / (xFrequency * portTICK_PERIOD_MS);

    // Sum of velocities
    double vel_sum_pan = 0;
    double vel_sum_tilt = 0;
    for(INT8U j = 0; j < vel_size; j++){
        vel_sum_pan += v_pan[j];
        vel_sum_tilt += v_pan[j];
    }

    u_temp[1][1] = vel_sum_pan / vel_size;      // Get average of pan velocities
    u_temp[2][1] = vel_sum_tilt / vel_size;     // Get average of tilt velocities

    // Iterate and set used positions as old
    i++;
    theta_last_pan = theta_current_pan;
    theta_last_tilt = theta_current_tilt;

    memcpy(u, u_temp, sizeof(double)*2);        // Overwrite u with velocities
}


void controller_task(void * pvParameters) {
    extern Joystick joystick;
    extern SemaphoreHandle_t joystick_mutex;
    TickType_t xLastWakeTime;
    // Initialize the xLastWakeTime variable with the current time.
    xLastWakeTime = xTaskGetTickCount();
    //Ticks (10 ticks), 1 tick = 5ms
    encoders = 0;
    SPI_MOTOR_TYPE pan_pwm = 0;
    SPI_MOTOR_TYPE tilt_pwm = 0;

    BOOLEAN pan_direction = 0;
    BOOLEAN tilt_direction = 0;
    while (1) {
        // Wait for the next cycle.
        vTaskDelayUntil( &xLastWakeTime, xFrequency );

        if(xSemaphoreTake(joystick_mutex, 0)){

            setLEDColor(RED);


            pan_pwm = joystick.x >> 4;
            tilt_pwm = joystick.y >> 4;
            xSemaphoreGive(joystick_mutex);

            if(pan_pwm > 0x80){
                pan_pwm = (pan_pwm - 0x80) * 2 + 1;
                pan_direction = 0;
            } else if (pan_pwm > 0){
                pan_pwm = (0x80 - pan_pwm) * 2;
                pan_direction = 1;
            } else {
                pan_pwm = 0xFF;
                pan_direction = 1;
            }

            if(tilt_pwm > 0x80){
                tilt_pwm = (tilt_pwm - 0x80) * 2 + 1;
                tilt_direction = 0;
            } else if (tilt_pwm > 0){
                tilt_pwm = (0x80 - tilt_pwm) * 2;
                tilt_direction = 1;
            } else {
                tilt_pwm = 0xFF;
                tilt_direction = 1;
            }

            // pan_pwm = 0x25;
            // tilt_pwm = 0x00;
            // pan_direction = 1;
            // tilt_direction = 1;

            SPI_TYPE motors = 0;

            motors = pan_direction << 17 | tilt_direction << 16 | pan_pwm << 8 | tilt_pwm;
            
            
            
            spi_tranceive(&motors, &encoders);

            //uart_putc('a');
            //uart_putc((encoders >> 14) & 0xFF);
            //uart_putc(((encoders & 0xFF00)>>8));

            if (69) {
                //send_debug_value(encoders);
            }


        } else {
           // vTaskDelay(1);
        }

    }

}
