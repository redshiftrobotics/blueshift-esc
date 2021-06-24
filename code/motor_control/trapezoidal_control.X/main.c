#include <xc.h>
#include <stdbool.h>

// https://www.microchip.com/forums/m783008.aspx
#define    FCY    16000000UL    // Instruction cycle frequency, Hz - required for __delayXXX() to work
#include <libpic30.h>        // __delayXXX() functions macros defined here

// Modified from Microchip Code Sample CE445
#include "i2c/i2c.h"
#include "adc/adc.h"

// DSPIC33FJ09GS302 Configuration Bit Settings
// 'C' source line config statements
// FICD
#pragma config ICS = PGD1               // ICD Communication Channel Select bits (Communicate on PGEC1 and PGED1)
#pragma config JTAGEN = OFF             // JTAG Enable bit (JTAG is disabled)

// FWDT
#pragma config WDTPOST = PS32768        // Watchdog Timer Postscaler bits (1:32,768)
#pragma config WDTPRE = PR128           // Watchdog Timer Prescaler bit (1:128)
#pragma config PLLKEN = ON              // PLL Lock Enable bit (Clock switch to PLL source will wait until the PLL lock signal is valid.)
#pragma config FWDTEN = OFF             // Watchdog Timer Enable bit (Watchdog timer enabled/disabled by user software)

// FOSC
#pragma config POSCMD = NONE            // Primary Oscillator Mode Select bits (Primary Oscillator disabled)
#pragma config OSCIOFNC = ON            // OSC2 Pin Function bit (OSC2 is general purpose digital I/O pin)
#pragma config IOL1WAY = OFF            // Peripheral pin select configuration (Allow multiple reconfigurations)
#pragma config FCKSM = CSECME           // Clock Switching Mode bits (Both Clock switching and Fail-safe Clock Monitor are enabled)

// FOSCSEL
#pragma config FNOSC = FRC              // Oscillator Source Selection (Internal Fast RC (FRC))
#pragma config IESO = ON                // Two-speed Oscillator Start-up Enable bit (Start up device with FRC, then switch to user-selected oscillator source)

// FGS
#pragma config GWRP = OFF               // General Segment Write-Protect bit (General Segment may be written)
#pragma config GCP = OFF                // General Segment Code-Protect bit (General Segment Code protect is Disabled)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.=

static int period = 23960;
static int speed = 23960;//18000;

int step = 0;
int step_dir = 1;


static int half_dc_voltage = 503;

int phase_a_current, phase_b_current, phase_c_current;
int phase_a_voltage, phase_b_voltage, phase_c_voltage;

void commutate(void) {
    step += step_dir;
    
    if (step > 5) {
        step = 0;
    }
    
    if (step < 0) {
        step = 5;
    }
    
    switch (step) {
        case 0:
            // A High; B Low; C Crossing
            PDC1 = speed;
            SDC1 = 0;
            PDC2 = 0;
            SDC2 = period;
            PDC4 = 0;
            SDC4 = 0;
            break;
        case 1:
            // A High; B Crossing; C Low
            PDC1 = speed;
            SDC1 = 0;
            PDC2 = 0;
            SDC2 = 0;
            PDC4 = 0;
            SDC4 = period;
            break;
        case 2:
            // A Crossing; B High; C Low
            PDC1 = 0;
            SDC1 = 0;
            PDC2 = speed;
            SDC2 = 0;
            PDC4 = 0;
            SDC4 = period;
            break;
        case 3:
            // A Low; B High; C Crossing
            PDC1 = 0;
            SDC1 = period;
            PDC2 = speed;
            SDC2 = 0;
            PDC4 = 0;
            SDC4 = 0;
            break;
        case 4:
            // A Low; B Crossing; C High
            PDC1 = 0;
            SDC1 = period;
            PDC2 = 0;
            SDC2 = 0;
            PDC4 = speed;
            SDC4 = 0;
            break;
        case 5:
            // A Crossing; B Low; C High
            PDC1 = 0;
            SDC1 = 0;
            PDC2 = 0;
            SDC2 = period;
            PDC4 = speed;
            SDC4 = 0;
            break;
    }
}

void __interrupt(no_auto_psv) _T2Interrupt(void) {
    commutate();
    
    _T2IF = 0; // Reset the Timer2 interrupt
}

void __interrupt(no_auto_psv) _ADCP0Interrupt(void) {
    // This math is all actually wrong, we need to convert it from ADC sampling range, to amplifier range, to raw current
    phase_a_current = ADCBUF0;
    phase_b_current = ADCBUF1;
    phase_c_current = -(phase_a_current-phase_c_current);

    _ADCP0IF = 0; // Clear ADC Pair 0 interrupt flag
}

void __interrupt(no_auto_psv) _ADCP1Interrupt(void) {
    phase_c_voltage = ADCBUF2;
    phase_b_voltage = ADCBUF3;
    _ADCP1IF = 0; // Clear ADC Pair 1 interrupt flag
}

void __interrupt(no_auto_psv) _ADCP3Interrupt(void) {
    int temp = ADCBUF6;
    phase_a_voltage = ADCBUF7;
    _ADCP3IF = 0; // Clear ADC Pair 3 interrupt flag
}

int main(void) {
    // IO Setup
    TRISA = 0x0000; // Set all of register A as outputs
    TRISAbits.TRISA0 = 1; // Set AN0 as an input for the ADC
    TRISAbits.TRISA1 = 1; // Set AN1 as an input for the ADC
    TRISAbits.TRISA2 = 1; // Set AN2 as an input for the ADC
    LATA = 0x0000; // Clear all of register A
    
    TRISB = 0x0000; // Set all of register A as outputs
    TRISBbits.TRISB0 = 1; // Set AN3 as an input for the ADC
    TRISBbits.TRISB2 = 1; // Set AN7 as an input for the ADC
    LATB = 0x0000; // Clear all of register A
    
    // FRC Oscillator Setup
    // FRC nominal frequency is 7.37MHz. TUN updates the frequency to be 7.37 + (TUN * 0.00375 * 7.37)
    OSCTUNbits.TUN = 4; // Update the frequency to 7.49
    // Setting the frequency to 7.49 allows for the maximum PWM resolution of 1.04 ns
    // Actually I don't know if this does anything, because the resolution is 8.32 ns in Center Aligned Mode
   
    // Auxiliary Clock setup (Used by the PWM generator)
    // Info on ACLKCON is in the Oscillator Datasheet, not in the PWM one
    ACLKCONbits.FRCSEL = 1; // FRC is input to Auxiliary PLL
    ACLKCONbits.SELACLK = 1; // Auxiliary Oscillator provides the clock source
    ACLKCONbits.APSTSCLR = 0b111; // Divide Auxiliary clock by 1
    ACLKCONbits.ENAPLL = 1; // Enable Auxiliary PLL
    while(ACLKCONbits.APLLCK != 1); // Wait for Auxiliary PLL to Lock
    // ACLK: (FRC * 16) / APSTSCLR = (7.49 * 16) / 1 = 119.84 MHz
    
    
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
    IOCON2bits.PENH = 1; // Enable PWM1H
    IOCON2bits.PENL = 1; // Enable PWM1L
    IOCON2bits.POLH = 0; // PWM1H active high
    IOCON2bits.POLL = 0; // PWM1L active high
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
    IOCON4bits.PENH = 1; // Enable PWM1H
    IOCON4bits.PENL = 1; // Enable PWM1L
    IOCON4bits.POLH = 0; // PWM1H active high
    IOCON4bits.POLL = 0; // PWM1L active high
    IOCON4bits.PMOD = 3; // True Independent Output Mode
    
    PTCONbits.PTEN = 1; // Enable PWM now that setup is done
    
    // Something is wrong in this math, its 10kHz, not 20
    // There is probably a divider somewhere that is twice what it should be
    
    // Set PWM period
    // ((ACLK * 8 * desired_pwm_period_μs) / PCLKDIV) - 8 = PHASE1 and SPHASE1
    // ((119.84 * 8 * desired_pwm_period_μs) / 2) - 8 = PHASE1 and SPHASE1
    // ((119.84 * 8 * 50 μs) / 2) - 8 = 23960
    PHASE1 = period; // Set PWM1H frequency to 20 kHz
    SPHASE1 = period; // SET PWM1L frequency to 20 kHz
    PHASE2 = period; // Set PWM2H frequency to 20 kHz
    SPHASE2 = period; // SET PWM2L frequency to 20 kHz
    PHASE4 = period; // Set PWM4H frequency to 20 kHz
    SPHASE4 = period; // SET PWM4L frequency to 20 kHz
    
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
    TRIG1 = speed;//8; // Set the point at which the ADC module is triggered by the primary PWM
    // This will definitely need to be adjusted later, we may even want to set it based on the duty cycle
    
    TRGCON1bits.TRGSTRT = 0; // Wait 0 PWM cycles before generating the first trigger event
    TRGCON1bits.TRGDIV = 0; // Trigger output every trigger event
    TRGCON1bits.DTM = 0; // Disable dual trigger mode. I think this effectively disables trigger generation from the secondary pwm
   
    PWMCON1bits.TRGIEN = 1; // Trigger event generates interrupt request
    while (PWMCON1bits.TRGSTAT == 0);

    ADC_Init();
    
    T2CONbits.TON = 0; // Turn off Timer 2
    T2CONbits.TCKPS = 0b01; // Set the pre-scaler to 1:1
    INTCON2bits.ALTIVT = 1; // Disable interrupt nesting
    IPC1bits.T2IP = 0b001; // Set priority to 1
    IFS0bits.T2IF = 0;// clear interrupt
    IEC0bits.T2IE = 1; // enable interrupt source
    T2CONbits.TON = 1; // Turn on Timer 2
    //PR2 = 8000; // Load the period value. 
    PR2 = 10000;
    // this seems to change the timer frequency? 
    // What are the units? I think they are how many ticks it takes per timer cycle?

    
    //I2C1_Init();
    while (1) {
        
        /*
        PR1 = (ramBuffer[0] << 8) | ramBuffer[1];
        
        if (ramBuffer[2] == 1) {
            step_dir = -1;
        } else {
            step_dir = 1;
        }
        */
        
        /*
        int should_commutate = 0;
        switch (step) {
            case 0:
                // C crossing high -> low
                if (phase_c_voltage < half_dc_voltage) {
                    //commutate();
                    should_commutate = 1;
                }
                break;
            case 1:
                // B crossing low -> high
                if (phase_b_voltage > half_dc_voltage) {
                    //commutate();
                    should_commutate = 1;
                }
                break;
            case 2:
                // A crossing high -> low
                if (phase_a_voltage < half_dc_voltage) {
                    //commutate();
                    should_commutate = 1;
                }
                break;
            case 3:
                // C crossing low -> high
                if (phase_c_voltage > half_dc_voltage) {
                    //commutate();
                    should_commutate = 1;
                }
                break;
            case 4:
                // B crossing high -> low
                if (phase_b_voltage < half_dc_voltage) {
                    //commutate();
                    should_commutate = 1;
                }
                break;
            case 5:
                // A crossing low -> high
                if (phase_a_voltage > half_dc_voltage) {
                    //commutate();
                    should_commutate = 1;
                }
                break;
        }
        
        if (should_commutate) {
            LATBbits.LATB4 = should_commutate;
            __delay_ms(1);
        }
        
        LATBbits.LATB4 = should_commutate;
        */
        LATBbits.LATB4 = 1;
        __delay_us(phase_b_voltage/5.84493043);
        LATBbits.LATB4 = 0;
        __delay_us(10/5.84493043);

    }
    
    return 1;
}
