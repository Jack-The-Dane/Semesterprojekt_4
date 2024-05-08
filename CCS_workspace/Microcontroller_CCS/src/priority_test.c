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
 const TickType_t xFrequency = 100;

     //Initialise the xLastWakeTime variable with the current time.
     xLastWakeTime = xTaskGetTickCount();


     // Wait for the next cycle.


     // Perform action here.
         while(1){
             vTaskDelayUntil( &xLastWakeTime, xFrequency );
             //GPIO_PORTF_DATA_R = 0b1100; //RED LED ON LAUNCH PAD
             setLEDColor(BLUE);
             //vTaskDelay(10);
         }

 }
void priority_test2( void * pvParameters )
 {
    TickType_t xLastWakeTime;
    const TickType_t xFrequency = 50;

         // Initialise the xLastWakeTime variable with the current time.
             xLastWakeTime = xTaskGetTickCount();
             vTaskDelayUntil( &xLastWakeTime, xFrequency );

     // Perform action here.
         while(1){
             vTaskDelayUntil( &xLastWakeTime, xFrequency );
             //GPIO_PORTF_DATA_R = 0b1010;//YELLOW LED ON LAUNCH PAD
             setLEDColor(RED);
             //vTaskDelay(2000);
         }



 }

void priority_test3( void * pvParameters )
 {
// TickType_t xLastWakeTime;
 //const TickType_t xFrequency = 50;

     // Initialise the xLastWakeTime variable with the current time.
         //xLastWakeTime = xTaskGetTickCount();

     // Wait for the next cycle.


         // Perform action here.
         while(1){
             //vTaskDelayUntil( &xLastWakeTime, xFrequency );
             //GPIO_PORTF_DATA_R = 0b0110; //GREEN
             setLEDColor(GREEN);
             vTaskDelay(60);


         }

 }




