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
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

void __interrupt(no_auto_psv) _ADCP0Interrupt(void) {
    int an0, an1;
    
    an0 = ADCBUF0;
    an1 = ADCBUF1;
    
    PDC1 = an0 * 4; // This is a really crude way of setting the pwm duty cycle based on the an0
    // The duty cycle ranges from 0-4785 (PHASE1)
    // The analog input (in integer mode) ranges from 0-1023, so by multiplying it by 4, we can roughly map the analog input to the pwm
    
    IFS6bits.ADCP0IF = 0; // Clear ADC Pair 0 interrupt flag
}

int main(void) {
    // IO Setup
    TRISA = 0x0000; // Set all of register A as outputs
    TRISAbits.TRISA0 = 1; // Set AN0 as an input for the ADC
    TRISAbits.TRISA1 = 1; // Set AN1 as an input for the ADC
    LATA = 0x0000; // Clear all of register A
    
    
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
    PTCON2bits.PCLKDIV = 0b001; // Set PWM clock prescaler to 2
    
    PWMCON1bits.MDCS = 0; // Set duty cycle based on the PDC1 and SDC1 register rather than the Master Duty Cycle
    
    PWMCON1bits.CAM = 1; // Enable Center Aligned Mode
    PWMCON1bits.ITB = 1; // Enable Independent Time Base (Necessary for Center Aligned Mode)
    
    PWMCON1bits.IUE = 1; // Update active duty cycle, phase offset, and independent time period registers immediately
    PTCONbits.EIPU = 1; // Update Active period register immediately
    
    PWMCON1bits.DTC = 0b00; // Enable positive dead time generation
    
    // Setup PWM IO
    IOCON1bits.PENH = 1; // Enable PWM1H
    IOCON1bits.PENL = 1; // Enable PWM1L
    IOCON1bits.POLH = 0; // PWM1H active high
    IOCON1bits.POLL = 0; // PWM1L active high
    IOCON1bits.PMOD = 3; // True Independent Output Mode
    
    PTCONbits.PTEN = 1; // Enable PWM now that setup is done
    
    // Set PWM period
    // ((ACLK * 8 * desired_pwm_period_탎) / PCLKDIV) - 8 = PHASE1 and SPHASE1
    // ((119.84 * 8 * desired_pwm_period_탎) / 2) - 8 = PHASE1 and SPHASE1
    // ((119.84 * 8 * 10 탎) / 2) - 8 = 4785.6
    PHASE1 = 4785; // Set PWM1H frequency to 100 kHz
    SPHASE1 = 4785; // SET PWM1L frequency to 100 kHz
    
    // Set PWM Duty Cycle
    // Set Duty Cycle to a specific time
    // * (ACLK * 8 * desired_duty_cycle_탎) / PCLKDIV = PDC1 and SDC1
    // * (119.84 * 8 * desired_duty_cycle_탎) / 2 = PDC1 and SDC1
    // * (119.84 * 8 * 5 탎) / 2 = 2396.8
    // To set a duty cycle as a percentage, the formula should just be pwm_frequecy * duty_cycle_percentage
    // * PHASE1 * 50% = PDC
    // * 4785 * 0.5 = 2392.5
    MDC = 0; // Zero out the Master Duty Cycle
    PDC1 = 2396; // Set PWM1H duty cycle to 5 탎
    SDC1 = 2396; // Set PWM1L duty cycle to 5 탎
    
    // Set PWM triggers for ADC
    TRIG1bits.TRGCMP = 8; // Set the point at which the ADC module is triggered by the primary PWM
    STRIG1bits.STRGCMP = 8; // Set the point at which the ADC module is triggered by the secondary PWM
    // This will definitely need to be adjusted later, we may even want to set it based on the duty cycle
    
    TRGCON1bits.TRGSTRT = 4; // Wait 4 PWM cycles before generating the first trigger event
    TRGCON1bits.TRGDIV = 0b0000; // Trigger output every trigger event
    TRGCON1bits.DTM = 0; // Disable dual trigger mode. I think this effectively disables trigger generation from the secondary pwm
   
    PWMCON1bits.TRGIEN = 1; // Trigger event generates interrupt request
    while (PWMCON1bits.TRGSTAT == 0);
    
    // Setup ADC
    ADCONbits.SLOWCLK = 1; // Set the ADC clock to the auxiliary PLL (ACLK) instead of the primary PLL (Fvco)
    // I'm haven't gone through the math of both clocks to figure out what the frequency difference is, TODO later
    
    ADCONbits.ADCS = 0b101; // Divide the ADC clock frequency by 6. I'm not actually sure what the clock does in the ADC, once we know we should update ADCS and SLOWCLK
    ADCONbits.FORM = 0; // Output in Integer Format (again this may need to be changed later depending on how the motor control math works)
    
    // Both of these need to be checked with someone who knows what they are talking about, I'm not sure what the most efficient setup is
    ADCONbits.ASYNCSAMP = 0; // Sample in synchronous mode
    ADCONbits.SEQSAMP = 0; // Sample with simultaneous sampling
    
    ADCONbits.ORDER = 0; // Convert the even numbered input in the pair before the odd one
    
    ADCONbits.EIE = 0; // Disable early interrupt
    // On a 2 SAR PIC, enabling this generates an interrupt after 7 Tad clock cycles, instead of waiting for the conversion to be done
    // On a 1 SAR PIC, enabling this generates an interrupt as soon as the first conversion is done without waiting for the second one
    // In either case, I don't know why you would want to do this
    
    ADPCFGbits.PCFG0 = 0; // Configure AN0 as an analog input
    ADPCFGbits.PCFG1 = 0; // Configure AN1 as an analog input
    
    IPC27bits.ADCP0IP = 5; // Set pair 0 interrupt priority. This needs to be updated once we figure out the sampling order
    IEC6bits.ADCP0IE = 1; // Enable ADC Pair 0 interrupt. I'm not sure if both this line and the previous one are necessary
    IFS6bits.ADCP0IF = 0; // Clear ADC Pair 0 interrupt flag
    
    ADSTATbits.P0RDY = 0; // Clear ADC Pair 0 data ready bit
    ADCPC0bits.IRQEN0 = 1; // Enable interrupt generation for ADC Pair 0
    ADCPC0bits.TRGSRC0 = 0b00100; // Use PWM Generator 1 primary to trigger conversion of ADC Pair 0
    
    ADCONbits.ADON = 1; // Enable ADC now that setup is done
    
    while(1) {
        /*
        for (int i = 0; i < 4785; i++) {
            PDC1 = i;
            //__delay_ms(100); // Enabling this causes the whole MCU to lag a BUNCH
            // * I think that its because the way it delays, is by stopping the MCU from doing anything using nops
            // * So, the MCU is too busy doing nothing to update the PWM duty cycle and everything is sad
            // * Right now the LED brightness to quickly to be visible by the human eye, but the changes in PWM duty cycle are visible on an oscilloscope
        }
        */
    }

    return 1;
}