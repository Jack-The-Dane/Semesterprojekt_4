/*****************************************************************************
* University of Southern Denmark
* Embedded C Programming (ECP)
*
* MODULENAME.: gpio.h
*
* PROJECT....: ECP
*
* DESCRIPTION: Test.
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 090215  MoH   Module created.
*
*****************************************************************************/

#ifndef GPIO_H_
#define GPIO_H_

/***************************** Include files *******************************/

/*****************************    Defines    *******************************/
enum LEDColor {
  OFF = 0b000,
  GREEN = 0b100,
  BLUE = 0b010,
  CYAN = 0b110,
  RED = 0b001,
  YELLOW = 0b101,
  MAGENTA = 0b011,
  WHITE = 0b111
};

/*****************************   Constants   *******************************/

/*****************************   Functions   *******************************/

void init_gpio(void);

void setLEDColor(enum LEDColor color);

void alive_blink();

/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Test function
******************************************************************************/


/****************************** End Of Module *******************************/
#endif /*GPIO_H_*/
