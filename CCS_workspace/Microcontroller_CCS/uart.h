#ifndef UART
#define UART

void init_uart();
void uart_putc(char ch);
char uart_getc();
void uart_put_string(char* str);
void uart_put_stringln(char* str);

#endif
