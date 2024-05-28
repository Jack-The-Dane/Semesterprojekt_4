#include "controller.h"
#include "emp_type.h"
#include "joystick.h"
#include "spi.h"
#include "FreeRTOS.h"
#include "task.h"
#include "gpio.h"
#include "semphr.h"
#include "uart.h"
#include "matrix.h"
#include "model.h"
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>



// How much time is allocated for the other tasks running on the microcontroller (5 ms / tick)
#define CONTROLLER_EXTRA_SLEEP_TICKS 5      
#define VEL_SIZE 10                         // Size of the velocity buffer
#define PI 3.14159265358979323846           // PI aka 3
#define TICKS_PR_REV 285                    // Number of ticks per revolution
#define TICKS_TO_RAD 0.02204626423        // 2 * PI / 285
#define TIME_STEP 0.0025
#define INPUT_MAX 12.0
#define INPUT_MIN -12.0
#define CLOCKWISE FALSE
#define COUNTERCLOCKWISE TRUE




const TickType_t xFrequency = pdMS_TO_TICKS( (SCLK_HALF_PERIOD_US * (SPI_WORD_LENGTH * 2 + 2)) / 1000 ) + CONTROLLER_EXTRA_SLEEP_TICKS;
double v_tilt[VEL_SIZE];
double v_pan[VEL_SIZE];

double u[2][1];
double y[2][1];
double v_temp = 0;

extern BOOLEAN debug_mode;
extern xQueueHandle q_uart_tx;
extern TaskHandle_t serial_task_handle;

void voltage_to_pwm(double voltage, INT8U *pwm, BOOLEAN * direction){
    *direction = CLOCKWISE;

    if(voltage < 0){
        *direction = COUNTERCLOCKWISE;
        voltage = -voltage;
    }

    *pwm = (INT8U) (voltage * 256 / 12);
}

double tics_to_rad(INT16S ticks){
    ticks = ticks % TICKS_PR_REV;
    return ((double) ticks) * TICKS_TO_RAD;
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

void vel_measurer(){
    static INT8U i = 0;
    static double theta_last_tilt = 0;      // Tilt position from last iteration
    static double theta_last_pan = 0;       // Pan position from last iteration
    static double theta_current_tilt = 0;   // Tilt position from current iteration
    static double theta_current_pan = 0;    // Pan position from current iteration

    if(i % VEL_SIZE == 0){i = 0;}
    theta_current_pan = tics_to_rad((encoders >> 2) & 0x1FF);       // Get pan position
    theta_current_tilt = tics_to_rad((encoders >> 11) & 0x1FF);     // Get tilt position


    // Calulate pan velocity and place in array
    v_pan[i] = ((dist(theta_last_pan, theta_current_pan)) * 1000) / (xFrequency * portTICK_PERIOD_MS);
    v_tilt[i] = ((dist(theta_last_tilt, theta_current_tilt)) * 1000) / (xFrequency * portTICK_PERIOD_MS);

    // Sum of velocities
    double vel_sum_pan = 0;
    double vel_sum_tilt = 0;
    for(INT8U j = 0; j < VEL_SIZE; j++){
        vel_sum_pan += v_pan[j];
        vel_sum_tilt += v_tilt[j];
    }

    y_temp[0][0] = vel_sum_pan / VEL_SIZE;
    y_temp[1][0] = vel_sum_tilt / VEL_SIZE;     // Get average of tilt velocities

    send_char((char) (y_temp[1][0] * 100));     // Send tilt velocity over uart

    // Iterate and set used positions as old
    i++;
    theta_last_pan = theta_current_pan;
    theta_last_tilt = theta_current_tilt;

    memcpy(u, y_temp, sizeof(double)*2);        // Overwrite u with velocities
}

void clamp(double * d, double min, double max) {
    *d = *d < min ? min : *d;
    *d = *d > max ? max : *d;
}

void step_system(void * u, void * y, double time_step) {

    // System states, also the integrator value
    static double x[4][1] = {0};

    double x_dot[4][1];
    double x_dot_in1[4][1];
    double x_dot_in2[4][1];
    matrix_multiply(A, x, x_dot_in1);

    double u_temp[2][1];
    memcpy(u_temp, u, sizeof(double)*2);

    matrix_multiply(B, u_temp, x_dot_in2);
    matrix_add(x_dot, x_dot_in1);
    matrix_add(x_dot, x_dot_in2);


    double int_in[4][1] = {0};
    matrix_add(int_in, x_dot);
    matrix_scale(int_in, time_step);

    matrix_add(x, int_in);

    log_double(x_dot[0][0]); // I_dot_pan
    log_double(x_dot[2][0]); // I_dot_tilt
    log_double(x[0][0]); // I_pan
    log_double(x[1][0]); // theta_dot_pan
    log_double(x[2][0]); // I_tilt
    log_double(x[3][0]); // theta_dot_tilt


    double y_temp[2][1];
    matrix_multiply(C, x, y_temp);

    memcpy(y, y_temp, sizeof(double)*2);
}

void joystick_velocity(INT8U joystick_pan, INT8U joystick_tilt, INT8U *ref[2][1], BOOLEAN tilt_direction, BOOLEAN pan_direction){
    
}

void step_controller(double ref[][1], double y[][1], void * u, double time_step) {

    // Observer state
    static double x_hat[4][1]     = {0};

    // Integrators
    static double control_integrator[2][1]  = {0};
    static double observer_integrator[4][1] = {0};

    // Update control integrator
    double int_in[2][1];
    memcpy(int_in, y, sizeof(double)*2);
    matrix_subtract(int_in, ref);
    matrix_scale(int_in, time_step);
    matrix_add(control_integrator, int_in);

    // Calculate the new input
    double u_temp[2][1] = {0};
    double u_in1[2][1];
    double u_in2[2][1];
    matrix_multiply(FI, control_integrator, u_in1);
    matrix_multiply(F, x_hat, u_in2);
    matrix_add(u_temp, u_in1);
    matrix_add(u_temp, u_in2);

    clamp(&u_temp[0][0], INPUT_MIN, INPUT_MAX);
    clamp(&u_temp[1][0], INPUT_MIN, INPUT_MAX);

    // Calculate observer output
    double y_hat[2][1];
    matrix_multiply(C, x_hat, y_hat);

    // Update observer integrator
    {
        double obs_in1[4][1];
        double obs_in2[4][1];
        double obs_in3[4][1];
        matrix_multiply(A, x_hat, obs_in1);
        matrix_multiply(B, u_temp, obs_in2);

        // Calculate observer output error
        double L_in[2][1] = {0};
        matrix_add(L_in, y_hat);
        matrix_subtract(L_in, y);
        matrix_multiply(L, L_in, obs_in3);

        matrix_add(observer_integrator, obs_in1);
        matrix_add(observer_integrator, obs_in2);
        matrix_add(observer_integrator, obs_in3);
    }

    // Copy the new input value to outside the function
    memcpy(u, u_temp, sizeof(double)*2);
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
    while (69) {
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


            double ref[2][1] = {{pan_pwm},{tilt_pwm}};

            SPI_TYPE motors = 0;

            motors = pan_direction << 17 | tilt_direction << 16 | pan_pwm << 8 | tilt_pwm;
            
            spi_tranceive(&motors, &encoders);
            vel_measurer();
            step_controller(ref, y , &u, TIME_STEP);
            voltage_to_pwm(u[0][0],pan_direction, &u[0][0]);
            voltage_to_pwm(u[1][0], tilt_direction, &u[1][0]);
            vTaskResume(serial_task_handle);

            if (69) {
                //send_debug_value(encoders);
            }
        }
    }
}
