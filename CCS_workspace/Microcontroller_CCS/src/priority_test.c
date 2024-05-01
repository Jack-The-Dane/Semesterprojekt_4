/*
 * Priority_test.c
 *
 *  Created on: 1. maj 2024
 *      Author: Rikke
 */

//Includes
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "gpio.h"
#include "FreeRTOS.h"
#include "task.h"


// Perform an action every 10 ticks.
void priority_test1( void * pvParameters )
 {
 TickType_t xLastWakeTime;
 const TickType_t xFrequency = 400;

     // Initialise the xLastWakeTime variable with the current time.
     xLastWakeTime = xTaskGetTickCount();

     for(int i = 0; i < 10; i++ )
     {
         // Wait for the next cycle.
         vTaskDelayUntil( &xLastWakeTime, xFrequency );

         // Perform action here.
         while(1){
             setLEDColor(RED);
                 vTaskDelay(200);
         }
     }
 }
void priority_test2( void * pvParameters )
{
TickType_t xLastWakeTime;
const TickType_t xFrequency = 400;
BaseType_t xWasDelayed;

    // Initialise the xLastWakeTime variable with the current time.
    xLastWakeTime = xTaskGetTickCount ();
    for( int i = 0; i<10; i++)
    {
        // Wait for the next cycle.
        xWasDelayed = xTaskDelayUntil( &xLastWakeTime, xFrequency );

        // Perform action here. xWasDelayed value can be used to determine
        while(1){
                     setLEDColor(YELLOW);
                     vTaskDelay(200);
                 }
        // whether a deadline was missed if the code here took too long.
    }
}
