#include <xc.h>
#include "pwm.h"

#include "../globals.h"

int duty_cycle = 0;

void PWM_Init() {
    // PWM Setup
    PTCONbits.PTEN = 0; // Disable PWM before changing any settings
    PTCONbits.EIPU = 1; // Update Active period register immediately
    PTCON2bits.PCLKDIV = 0b000; // Set PWM clock prescaler to 2
    
    // PWM 1 Setup
    PWMCON1bits.MDCS = 0; // Set duty cycle based on the PDC1 and SDC1 register rather than the Master Duty Cycle
    
    PWMCON1bits.CAM = 1; // Enable Center Aligned Mode
    PWMCON1bits.ITB = 1; // Enable Independent Time Base (Necessary for Center Aligned Mode)
    
    PWMCON1bits.IUE = 1; // Update active duty cycle, phase offset, and independent time period registers immediately
    
    PWMCON1bits.DTC = 0b00; // Enable positive dead time generation
    
    // Setup PWM 1 IO
    IOCON1bits.PENH = 1; // Enable PWM1H
    IOCON1bits.PENL = 1; // Enable PWM1L
    IOCON1bits.POLH = 0; // PWM1H active high
    IOCON1bits.POLL = 0; // PWM1L active high
    IOCON1bits.PMOD = 3; // True Independent Output Mode
    
    // PWM 2 Setup
    PWMCON2bits.MDCS = 0; // Set duty cycle based on the PDC1 and SDC1 register rather than the Master Duty Cycle
    
    PWMCON2bits.CAM = 1; // Enable Center Aligned Mode
    PWMCON2bits.ITB = 1; // Enable Independent Time Base (Necessary for Center Aligned Mode)
    
    PWMCON2bits.IUE = 1; // Update active duty cycle, phase offset, and independent time period registers immediately
    
    PWMCON2bits.DTC = 0b00; // Enable positive dead time generation
    
    // Setup PWM 2 IO
    IOCON2bits.PENH = 1; // Enable PWM2H
    IOCON2bits.PENL = 1; // Enable PWM2L
    IOCON2bits.POLH = 0; // PWM2H active high
    IOCON2bits.POLL = 0; // PWM2L active high
    IOCON2bits.PMOD = 3; // True Independent Output Mode
    
    
    // Setup PWM 4 IO with PPS
    RPOR5bits.RP11R = 0b101100; // Assign RP11 to PWM4H
    RPOR6bits.RP12R = 0b101101; // Assign RP12 to PWM4L
    
    // PWM 4 Setup
    PWMCON4bits.MDCS = 0; // Set duty cycle based on the PDC1 and SDC1 register rather than the Master Duty Cycle
    
    PWMCON4bits.CAM = 1; // Enable Center Aligned Mode
    PWMCON4bits.ITB = 1; // Enable Independent Time Base (Necessary for Center Aligned Mode)
    
    PWMCON4bits.IUE = 1; // Update active duty cycle, phase offset, and independent time period registers immediately
    
    PWMCON4bits.DTC = 0b00; // Enable positive dead time generation
    
    // Setup PWM 4 IO
    IOCON4bits.PENH = 1; // Enable PWM4H
    IOCON4bits.PENL = 1; // Enable PWM4L
    IOCON4bits.POLH = 0; // PWM4H active high
    IOCON4bits.POLL = 0; // PWM4L active high
    IOCON4bits.PMOD = 3; // True Independent Output Mode
    
    PTCONbits.PTEN = 1; // Enable PWM now that setup is done
    
    // Something is wrong in this math, its 10kHz, not 20
    // There is probably a divider somewhere that is twice what it should be
    
    // Set PWM period
    // ((ACLK * 8 * desired_pwm_period_μs) / PCLKDIV) - 8 = PHASE1 and SPHASE1
    // ((119.84 * 8 * desired_pwm_period_μs) / 2) - 8 = PHASE1 and SPHASE1
    // ((119.84 * 8 * 50 μs) / 2) - 8 = 23960
    PHASE1 = PERIOD; // Set PWM1H frequency to 20 kHz
    SPHASE1 = PERIOD; // Set PWM1L frequency to 20 kHz
    PHASE2 = PERIOD; // Set PWM2H frequency to 20 kHz
    SPHASE2 = PERIOD; // Set PWM2L frequency to 20 kHz
    PHASE4 = PERIOD; // Set PWM4H frequency to 20 kHz
    SPHASE4 = PERIOD; // Set PWM4L frequency to 20 kHz
        
    // Set PWM Duty Cycle
    // Set Duty Cycle to a specific time
    // * (ACLK * 8 * desired_duty_cycle_μs) / PCLKDIV = PDC1 and SDC1
    // * (119.84 * 8 * desired_duty_cycle_μs) / 2 = PDC1 and SDC1
    // * (119.84 * 8 * 5 μs) / 2 = 2396.8
    // To set a duty cycle as a percentage, the formula should just be pwm_frequecy * duty_cycle_percentage
    // * PHASEx * 50% = PDC
    // * 23960 * 0.5 = 11980
    MDC = 0; // Zero out the Master Duty Cycle
    PDC1 = 0; // Set PWM1H duty cycle to 0 μs
    SDC1 = 0; // Set PWM1L duty cycle to 0 μs
    PDC2 = 0; // Set PWM2H duty cycle to 0 μs
    SDC2 = 0; // Set PWM2L duty cycle to 0 μs
    PDC4 = 0; // Set PWM4H duty cycle to 0 μs
    SDC4 = 0; // Set PWM4L duty cycle to 0 μs
    
        // Set PWM triggers for ADC
    TRIG1 = 9504; // Set the point at which the ADC module is triggered by the primary PWM
    
    TRGCON1bits.TRGSTRT = 0; // Wait 0 PWM cycles before generating the first trigger event
    TRGCON1bits.TRGDIV = 0b0011; // Trigger output every trigger event
    TRGCON1bits.DTM = 0; // Disable dual trigger mode. I think this effectively disables trigger generation from the secondary pwm
   
    PWMCON1bits.TRGIEN = 1; // Trigger event generates interrupt request
    while (PWMCON1bits.TRGSTAT == 0);
}

void A_LOW() {
    PDC1 = 0;
    SDC1 = PERIOD;
}
void A_HIGH() {
    PDC1 = duty_cycle;
    SDC1 = 0;
}
void A_OFF() {
    PDC1 = 0;
    SDC1 = 0;
}

void B_LOW() {
    PDC1 = 0;
    SDC1 = PERIOD;
}
void B_HIGH() {
    PDC1 = duty_cycle;
    SDC1 = 0;
}
void B_OFF() {
    PDC1 = 0;
    SDC1 = 0;
}

void C_LOW() {
    PDC1 = 0;
    SDC1 = PERIOD;
}
void C_HIGH() {
    PDC1 = duty_cycle;
    SDC1 = 0;
}
void C_OFF() {
    PDC1 = 0;
    SDC1 = 0;
}
