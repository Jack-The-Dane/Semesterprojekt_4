#ifndef UART0_H
#define UART0_H

void init_uart();
void uart_task(void *pvParameters);
void send_string(char *str);
void send_string_len(char *str, INT16U str_length);
char* receive_string();
void send_char(INT8U chr);

#endif
