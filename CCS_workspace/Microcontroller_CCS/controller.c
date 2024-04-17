#include "emp_type.h"
#include "joystick.h"
#include "spi.h"
#include "FreeRTOS.h"
#include "task.h"

typedef enum {
    INIT = 0,
    JOYSTICK_WAIT,
    SPI_WAIT,
    RUNNING,
} State;


// TODO: Use mutex to protect joystick
void controller_task(void * pvParameters) {
    extern Joystick joystick;
    while(1){
    SPI_MOTOR_TYPE motor1 = joystick.x >> 4;
    SPI_MOTOR_TYPE motor2 = joystick.y >> 4;

    INT16U motors = motor1 << 8 | motor2;
    INT16U encoders = 0;

    spi_tranceive(&motors, &encoders);
    vTaskDelay(600);

    }

}
