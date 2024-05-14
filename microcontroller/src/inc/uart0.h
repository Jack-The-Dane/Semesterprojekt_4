#ifndef UART0_H
#define UART0_H
void vSetupUart0();
void vUart0_task(void *pvParameters);
void send_string(char *str);

#endif
