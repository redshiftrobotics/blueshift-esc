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

static int speed = 1000;

int step = 0;

void __interrupt(no_auto_psv) _T1Interrupt(void) {
    LATAbits.LATA0 ^= 1;
    
    step++;
    
    if (step > 5) {
        step = 0;
    }
    
    switch (step) {
        case 0:
            // A High; B Low; C Crossing
            PDC1 = speed;
            SDC1 = 0;
            PDC2 = 0;
            SDC2 = speed;
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
            SDC4 = speed;
            break;
        case 2:
            // A Crossing; B High; C Low
            PDC1 = 0;
            SDC1 = 0;
            PDC2 = speed;
            SDC2 = 0;
            PDC4 = 0;
            SDC4 = speed;
            break;
        case 3:
            // A Low; B High; C Crossing
            PDC1 = 0;
            SDC1 = speed;
            PDC2 = speed;
            SDC2 = 0;
            PDC4 = 0;
            SDC4 = 0;
            break;
        case 4:
            // A Low; B Crossing; C High
            PDC1 = 0;
            SDC1 = speed;
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
            SDC2 = speed;
            PDC4 = speed;
            SDC4 = 0;
            break;
    }
    
    IFS0bits.T1IF = 0; // Reset the Timer1 interrupt
}

int main(void) {
    // IO Setup
    TRISA = 0x0000; // Set all of register A as outputs
    LATA = 0x0000; // Clear all of register A
    
    TRISB = 0x0000; // Set all of register B as outputs
    LATB = 0x0000; // Clear all of register B
    
    
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
    PTCON2bits.PCLKDIV = 0b001; // Set PWM clock prescaler to 2
    
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
    
    // Set PWM period
    // ((ACLK * 8 * desired_pwm_period_μs) / PCLKDIV) - 8 = PHASE1 and SPHASE1
    // ((119.84 * 8 * desired_pwm_period_μs) / 2) - 8 = PHASE1 and SPHASE1
    // ((119.84 * 8 * 10 μs) / 2) - 8 = 4785.6
    PHASE1 = 4785; // Set PWM1H frequency to 100 kHz
    SPHASE1 = 4785; // SET PWM1L frequency to 100 kHz
    PHASE2 = 4785; // Set PWM2H frequency to 100 kHz
    SPHASE2 = 4785; // SET PWM2L frequency to 100 kHz
    PHASE4 = 4785; // Set PWM4H frequency to 100 kHz
    SPHASE4 = 4785; // SET PWM4L frequency to 100 kHz
    
    // Set PWM Duty Cycle
    // Set Duty Cycle to a specific time
    // * (ACLK * 8 * desired_duty_cycle_μs) / PCLKDIV = PDC1 and SDC1
    // * (119.84 * 8 * desired_duty_cycle_μs) / 2 = PDC1 and SDC1
    // * (119.84 * 8 * 5 μs) / 2 = 2396.8
    // To set a duty cycle as a percentage, the formula should just be pwm_frequecy * duty_cycle_percentage
    // * PHASE1 * 50% = PDC
    // * 4785 * 0.5 = 2392.5
    MDC = 0; // Zero out the Master Duty Cycle
    PDC1 = 0; // Set PWM1H duty cycle to 0 μs
    SDC1 = 0; // Set PWM1L duty cycle to 0 μs
    PDC2 = 0; // Set PWM2H duty cycle to 0 μs
    SDC2 = 0; // Set PWM2L duty cycle to 0 μs
    PDC4 = 0; // Set PWM4H duty cycle to 0 μs
    SDC4 = 0; // Set PWM4L duty cycle to 0 μs
    
    
    T1CONbits.TON = 0; // Turn off Timer 1
    T1CONbits.TCKPS = 0b01; // Set the pre-scaler to 1:1
    INTCON1bits.NSTDIS = 1; // Disable interrupt nesting
    IPC0bits.T1IP = 0b001; // Set priority to 1
    IFS0bits.T1IF = 0;// clear interrupt
    IEC0bits.T1IE = 1; // enable interrupt source
    T1CONbits.TON = 1; // Turn on Timer 1
    
    while (1);

    return 1;
}
