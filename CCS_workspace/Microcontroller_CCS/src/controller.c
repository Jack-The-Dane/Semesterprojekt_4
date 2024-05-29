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
#define TICKS_TO_RAD 0.02204626423          // 2 * PI / 285
#define TIME_STEP 0.025                     // Time step for the controller
#define INPUT_MAX 12.0                      // Maximum input voltage
#define INPUT_MIN -12.0                     // Minimum input voltage
#define CLOCKWISE FALSE                     
#define COUNTERCLOCKWISE TRUE
#define JOYSTICK_DEADZONE 15                // Deadzone for the joystick. To avoid small movements when joystick is zeroed
#define MAX_VELOCITY 1                      // Maximum velocity of the system




const TickType_t xFrequency = pdMS_TO_TICKS( (SCLK_HALF_PERIOD_US * (SPI_WORD_LENGTH * 2 + 2)) / 1000 ) + CONTROLLER_EXTRA_SLEEP_TICKS;
double v_tilt[VEL_SIZE];
double v_pan[VEL_SIZE];
INT32S v_tilt_ticks[VEL_SIZE];
INT32S v_pan_ticks[VEL_SIZE];

double u_glob[2][1] = {{0},{0}};        // Global input value
double y_glob[2][1] = {{0}, {0}};       // Global output value
double ref_glob[2][1] = {{0.5},{0.5}};  // Global reference value
double v_temp = 0;

extern BOOLEAN debug_mode;
extern xQueueHandle q_uart_tx;
extern TaskHandle_t serial_task_handle;


void voltage_to_pwm(double voltage, INT8U *pwm, BOOLEAN * direction){
    *direction = CLOCKWISE;

    if(voltage < 0){                            // If the voltage is negative, set the direction to counterclockwise and invert the voltage
        *direction = COUNTERCLOCKWISE;
        voltage = -voltage;
    }

    *pwm = (INT8U) (voltage * 255 / 12);        // Convert the voltage to a pwm value
}

double tics_to_rad(INT16S ticks){
    ticks = ticks % TICKS_PR_REV;
    return ((double) ticks) * TICKS_TO_RAD;
};

double dist(double p1, double p2){
    double d = p2 - p1;                 // Calculate the distance between two points
    if(d < 0) d += 2 * PI;              // If the distance is negative, add 2 * PI to get the correct distance. This is to avoid the system to go the long way around
    if(d > PI) d -= 2 * PI;             // If the distance is greater than PI, subtract 2 * PI to get the correct distance. This is to avoid the system to go the long way around
    return d;
}


#define ALPHA 1e-3                          // Threshold for the joystick to be considered moved
// Function to set the color of the LED when the joystick is moved
void set_LED(double vel_pan, double vel_tilt) {
    if( abs(vel_pan) > ALPHA || abs(vel_tilt) > ALPHA) {        // If the joystick is moved, set the LED to green. Uses absolute value to avoid negative values
        setLEDColor(GREEN);
    }
    else{
        setLEDColor(RED);
    }

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

void vel_measurer(BOOLEAN tilt_dir, BOOLEAN pan_dir){
    static INT8U i = 0;
    i = (i + 1) % VEL_SIZE;                 // Increment the index of the velocity buffer or set index to zero if it is at the end of the array

    static double theta_last_tilt = 0;      // Tilt position from last iteration
    static double theta_last_pan = 0;       // Pan position from last iteration
    static double theta_current_tilt = 0;   // Tilt position from current iteration
    static double theta_current_pan = 0;    // Pan position from current iteration
    

    theta_current_pan = tics_to_rad((encoders >> 2) & 0x1FF);       // Get pan position
    theta_current_tilt = tics_to_rad((encoders >> 11) & 0x1FF);     // Get tilt position


    // Calulate pan velocity and place in array
    v_pan[i] = ((dist(theta_last_pan, theta_current_pan)) * 1000) / (xFrequency * portTICK_PERIOD_MS);
    v_tilt[i] = ((dist(theta_last_tilt, theta_current_tilt)) * 1000) / (xFrequency * portTICK_PERIOD_MS);

    // Sum of velocities in the arrays
    double vel_sum_pan = 0;
    double vel_sum_tilt = 0;
    for(INT8U j = 0; j < VEL_SIZE; j++){
        vel_sum_pan += v_pan[j];
        vel_sum_tilt += v_tilt[j];
    }

    y_temp[0][0] = vel_sum_pan / VEL_SIZE;      // Get average of pan velocities
    y_temp[1][0] = vel_sum_tilt / VEL_SIZE;     // Get average of tilt velocities
    glob_temp = y_temp[1][0];   // Send tilt velocity over uart

    // Iterate and set used positions as old
    theta_last_pan = theta_current_pan;
    theta_last_tilt = theta_current_tilt;

    memcpy(y_glob, y_temp, sizeof(double)*2);        // Overwrite u with velocities
}

void clamp(double * d, double min, double max) {
    *d = *d < min ? min : *d;
    *d = *d > max ? max : *d;
}

void joystick_velocity(INT8U joystick_pan, INT8U joystick_tilt, double ref[2][1], BOOLEAN tilt_direction, BOOLEAN pan_direction){
    double v_tilt = ((double)joystick_tilt);        // Convert tilt value to double
    double v_pan = ((double)joystick_pan);          // Convert pan value to double

    if(v_tilt < JOYSTICK_DEADZONE) v_tilt = 0;      // Set tilt to zero if it is within the deadzone
    if(v_pan < JOYSTICK_DEADZONE) v_pan = 0;        // Set pan to zero if it is within the deadzone

    if (tilt_direction) v_tilt = -v_tilt;           // Invert tilt if direction is set
    if (pan_direction) v_pan = -v_pan;              // Invert pan if direction is set

    ref[0][0] = v_pan * 0.021816616;                // Multiply with the conversion factor to go from rpm to rad/s for both tilt and pan
    ref[1][0] = v_tilt * 0.021816616;               

    return;
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
    matrix_scale(int_in, 1/time_step);
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
    extern Joystick joystick;                   // Joystick struct
    extern SemaphoreHandle_t joystick_mutex;
    TickType_t xLastWakeTime;

    // Initialize the xLastWakeTime variable with the current time.
    xLastWakeTime = xTaskGetTickCount();
    encoders = 0;
    SPI_MOTOR_TYPE pan_pwm = 0;
    SPI_MOTOR_TYPE tilt_pwm = 0;

    BOOLEAN pan_direction = 0;
    BOOLEAN tilt_direction = 0;
    while (69) {
        // Wait for the next cycle.
        vTaskDelayUntil( &xLastWakeTime, xFrequency );

        if(xSemaphoreTake(joystick_mutex, 0)){

            // setLEDColor(BLUE);
            pan_pwm = joystick.x >> 4;      // Get pan value from joystick
            tilt_pwm = joystick.y >> 4;     // Get tilt value from joystick
            xSemaphoreGive(joystick_mutex);

            if(pan_pwm > 0x80){                     // Set the middle of the joystick as zero. To ensure that the joystick is zeroed
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


            joystick_velocity(pan_pwm, tilt_pwm, ref_glob, tilt_direction, pan_direction);
            
            vel_measurer(tilt_direction, pan_direction);
            set_LED(y_glob[0][0], y_glob[1][0]);     // Set LED color if joystick is moved

            step_controller(ref_glob, y_glob , &u_glob, TIME_STEP);

            voltage_to_pwm(u_glob[0][0], &pan_pwm, &pan_direction);
            voltage_to_pwm(u_glob[1][0], &tilt_pwm, &tilt_direction);

            SPI_TYPE motors = 0;

            motors = pan_direction << 17 | tilt_direction << 16 | pan_pwm << 8 | tilt_pwm;      // Send the pwm values from the controller to the motors
            spi_tranceive(&motors, &encoders);

            vTaskResume(serial_task_handle);

            if (69) {
                //send_debug_value(encoders);
            }
        }
    }
}
