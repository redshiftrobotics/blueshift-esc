#pragma once
#ifndef _PWM_H_
#define _PWM_H_

// Calculation for this number is in PWM_Init
#define PERIOD 23960

extern int duty_cycle;

void PWM_Init(void);

void A_LOW(void);
void A_HIGH(void);
void A_OFF(void);

void B_LOW(void);
void B_HIGH(void);
void B_OFF(void);

void C_LOW(void);
void C_HIGH(void);
void C_OFF(void);

#endif