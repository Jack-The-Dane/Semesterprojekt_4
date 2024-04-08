#include "emp_type.h"
#include "rtcs.h"
#include "tmodel.h"
#include "joystick.h"
#include "spi.h"

typedef enum {
    INIT = 0,
    JOYSTICK_WAIT,
    SPI_WAIT,
    RUNNING,
} State;

void controller_task(INT8U my_id, INT8U my_state, INT8U event, INT8U data) {
    switch (my_state) {
        case INIT:
            set_state(RUNNING);
            break;
        case JOYSTICK_WAIT:
            signal_sem(SEM_JOYSTICK);
            break;
        case SPI_WAIT:
            signal_sem(SEM_SPI);
            break;
        case RUNNING:
            if (!wait_sem(SEM_JOYSTICK, WAIT_FOREVER)) {
                set_state(JOYSTICK_WAIT);
                return;
            }
            if (!wait_sem(SEM_SPI, WAIT_FOREVER)) {
                set_state(SPI_WAIT);
                return;
            }

            SPI_MOTOR_TYPE motor1 = joystick.x >> 4;
            SPI_MOTOR_TYPE motor2 = joystick.y >> 4;

            INT16U motors = motor1 << 8 | motor2;
            INT16U encoders = 0;

            spi_tranceive(&motors, &encoders);

            signal_sem(SEM_JOYSTICK);
            signal_sem(SEM_SPI);
            break;
    }
}
