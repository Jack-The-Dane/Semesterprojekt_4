#ifndef UART0_H
#define UART0_H

void init_uart();
void uart_task(void *pvParameters);
void send_string(char *str);
char* receive_string();

#endif
