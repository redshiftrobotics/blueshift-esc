#pragma once 
#ifndef ESC_registers
#define	ESC_registers
#define MAX_CONSECUTIVE_BITS 8

//words have to be consecutive :0
uint8_t PowerUp = 0x00;
uint8_t LastCommandSuccess = 0x01;
uint8_t BadCommand = 0x02;
uint8_t ResetPic = 0x03;
uint8_t MotorSpeed0 = 0x04;
uint8_t MotorSpeed1 = 0x05;
uint8_t CurrentLimit0 = 0x06;
uint8_t CurrentLimit1 = 0x07;

#endif

