#pragma once 
#ifndef ESC_registers
#define	ESC_registers

//words have to be consecutive :0
uint8_t PowerUp = 0x00;
uint8_t LastCommandSuccess = 0x01;
uint8_t BadCommand = 0x02;
uint8_t ResetPic = 0x03;
//Word
uint8_t MotorSpeed0 = 0x04;
uint8_t MotorSpeed1 = 0x05;
//Word2 electric boogaloo
uint8_t CurrentLimit0 = 0x06;
uint8_t CurrentLimit1 = 0x07;

#endif

