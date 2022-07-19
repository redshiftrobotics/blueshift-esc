#pragma once
#ifndef _I2C_H_
#define _I2C_H_

void I2C1_Init(void);
void __interrupt(no_auto_psv) _SI2C1Interrupt(void);

extern uint8_t ramBuffer[256]; // I2C "RAM" (the registers that data is stored in)
struct FlagType
{
    uint8_t AddrFlag: 1;
    uint8_t DataFlag: 1;
};
extern struct FlagType flag;
#endif