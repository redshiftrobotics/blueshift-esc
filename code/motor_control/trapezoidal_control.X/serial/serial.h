#pragma once
#ifndef _SERIAL_H_
#define _SERIAL_H_

char * _float_to_char(float x, char *p, int char_size);

void clean(char *var);

void send_str(char* str);

void UART1_Init(int baudrate);
#endif