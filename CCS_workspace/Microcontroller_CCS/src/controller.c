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
#define VEL_SIZE 10      // Size of the velocity buffer
#define PI 3.14159265358979323846
#define TICKS_PR_REV 285
#define TICKS_TO_RAD = 0.02204626423




double v_tilt[VEL_SIZE];
double v_pan[VEL_SIZE];

double u[2][1];
double v_temp = 0;

extern BOOLEAN debug_mode;
extern xQueueHandle q_uart_tx;
extern TaskHandle_t serial_task_handle;

double tics_to_rad(INT16S ticks){
    ticks = ticks % TICKS_PR_REV;
    return ((double) ticks) * 0.02204626423;
};

double dist(double p1, double p2){
    double d = p2 - p1;
    if(d < 0) d += 2 * PI;
    if(d > PI) d -= 2 * PI;
    return d;
}

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
void vel_measurer(){
    static INT8U i = 0;
    static double theta_last_tilt = 0;
    static double theta_last_pan = 0;
    static double theta_current_tilt = 0;
    static double theta_current_pan = 0;

    if(i % VEL_SIZE == 0){i = 0;}
    theta_current_pan = tics_to_rad((encoders >> 2) & 0x1FF);
    theta_current_tilt = tics_to_rad((encoders >> 11) & 0x1FF);


    // Calulate pan velocity and place in array
    v_pan[i] = ((dist(theta_last_pan, theta_current_pan)) * 1000) / (xFrequency * portTICK_PERIOD_MS);
    v_tilt[i] = ((dist(theta_last_tilt, theta_current_tilt)) * 1000) / (xFrequency * portTICK_PERIOD_MS);
    //send_char((char) (v_tilt[i] * 100));

    // Sum of velocities
    double vel_sum_pan = 0;
    double vel_sum_tilt = 0;
    for(INT8U j = 0; j < VEL_SIZE; j++){
        vel_sum_pan += v_pan[j];
        vel_sum_tilt += v_tilt[j];
    }

    u_temp[0][0] = vel_sum_pan / VEL_SIZE;
    u_temp[1][0] = vel_sum_tilt / VEL_SIZE;     // Get average of tilt velocities

    //send_char((char) (u_temp[1][0] * 100));

    // Iterate and set used positions as old
    i++;
    theta_last_pan = theta_current_pan;
    theta_last_tilt = theta_current_tilt;

    // memcpy(u, u_temp, sizeof(double)*2);        // Overwrite u with velocities
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

            setLEDColor(BLUE);
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

            SPI_TYPE motors = 0;

            motors = pan_direction << 17 | tilt_direction << 16 | pan_pwm << 8 | tilt_pwm;
            
            spi_tranceive(&motors, &encoders);
            vel_measurer();
            vTaskResume(serial_task_handle);

            if (69) {
                //send_debug_value(encoders);
            }


        }
    }
}
