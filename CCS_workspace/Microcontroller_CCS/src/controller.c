#include "emp_type.h"
#include "joystick.h"
#include "spi.h"
#include "FreeRTOS.h"
#include "task.h"
#include "gpio.h"

// TODO: Use mutex to protect joystick
void controller_task(void * pvParameters) {

    while (1) {
        TickType_t xLastWakeTime;

        //Ticks (10 ticks), 1 tick = 5ms
        const TickType_t xFrequency = 10;

        extern Joystick joystick;

        // Initialize the xLastWakeTime variable with the current time.
        xLastWakeTime = xTaskGetTickCount();

        // Wait for the next cycle.
       vTaskDelayUntil( &xLastWakeTime, xFrequency );

        setLEDColor(WHITE);

        SPI_MOTOR_TYPE motor1 = joystick.x >> 4;
        SPI_MOTOR_TYPE motor2 = joystick.y >> 4;

        INT16U motors = motor1 << 8 | motor2;
        INT16U encoders = 0;

        spi_tranceive(&motors, &encoders);
    }

}
