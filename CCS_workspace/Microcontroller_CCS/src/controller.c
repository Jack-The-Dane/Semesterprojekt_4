#include "emp_type.h"
#include "joystick.h"
#include "spi.h"
#include "FreeRTOS.h"
#include "task.h"
#include "gpio.h"
#include "semphr.h"

// TODO: Use mutex to protect joystick
void controller_task(void * pvParameters) {
    extern Joystick joystick;
    extern SemaphoreHandle_t joystick_mutex;
    TickType_t xLastWakeTime;
    // Initialize the xLastWakeTime variable with the current time.
    xLastWakeTime = xTaskGetTickCount();
    //Ticks (10 ticks), 1 tick = 5ms
    const TickType_t xFrequency = 10;

    
    while (1) {
        // Wait for the next cycle.
        vTaskDelayUntil( &xLastWakeTime, xFrequency );
        if(xSemaphoreTake(joystick_mutex, 0)){

            setLEDColor(WHITE);

            SPI_MOTOR_TYPE motor1 = joystick.x >> 4;
            SPI_MOTOR_TYPE motor2 = joystick.y >> 4;
            xSemaphoreGive(joystick_mutex);
            BOOLEAN direction1 = 0;
            BOOLEAN direction2 = 0;

            if(motor1 > 0x80){
                motor1 = (motor1 - 0x80) * 2 + 1;
                direction1 = 0;
            } else if (motor1 > 0){
                motor1 = (0x80 - motor1) * 2;
                direction1 = 1;
            } else {
                motor1 = 0xFF;
                direction1 = 1;
            }

            if(motor2 > 0x80){
                motor2 = (motor2 - 0x80) * 2 + 1;
                direction2 = 0;
            } else if (motor2 > 0){
                motor2 = (0x80 - motor2) * 2;
                direction2 = 1;
            } else {
                motor2 = 0xFF;
                direction2 = 1;
            }

            motor1 = 0x80;
            motor2 = 0x80;
            direction1 = 0;
            direction2 = 0;

            SPI_TYPE motors = 0;

            motors = direction1 << 17 | direction2 << 16 | motor1 << 8 | motor2;
            
            SPI_TYPE encoders = 0;

            spi_tranceive(&motors, &encoders);
            vTaskDelay(200);
        } else {
            xTaskDelayUntil(&xLastWakeTime, 1);
        }
    }

}
