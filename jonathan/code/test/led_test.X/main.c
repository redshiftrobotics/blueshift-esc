// Necessary to use __delay_ms() [https://www.microchip.com/forums/m1055443.aspx, https://electronics.stackexchange.com/a/275627]
#define FCY 7370000UL
#include <libpic30.h>

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

int main(void) {
    // IO Setup
    TRISA = 0x0000; // Set PWM pins as outputs
    LATA = 0x0000; // Clear those pins
    
    // FRC Oscillator Setup
    // FRC nominal frequency is 7.37MHz. TUN updates the frequency to be 7.37 + (TUN * 0.00375 * 7.37)
    OSCTUNbits.TUN = 4; // Update the frequency to 7.49
    // Setting the frequency to 7.49 allows for the maximum PWM resolution of 1.04 ns
   
    // Auxiliary Clock setup
    // Info on ACLKCON is in the Oscillator Datasheet, not oin the PWM one
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
    
    // Set PWM period
    // ((ACLK * 8 * desired_pwm_period_탎) / PCLKDIV) - 8 = PHASE1 and SPHASE1
    // ((119.84 * 8 * desired_pwm_period_탎) / 2) - 8 = PHASE1 and SPHASE1
    // ((119.84 * 8 * 10 탎) / 2) - 8 = 4785.6
    PHASE1 = 4785; // Set PWM1H frequency to 100 kHz
    SPHASE1 = 4785; // SET PWM1L frequency to 100 kHz
    
    // Set PWM Duty Cycle
    // (ACLK * 8 * desired_duty_cycle_탎) / PCLKDIV = PDC1 and SDC1
    // (119.84 * 8 * desired_duty_cycle_탎) / 2 = PDC1 and SDC1
    // (119.84 * 8 * 5 탎) / 2 = 2396.8
    MDC = 0; // Zero out the Master Duty Cycle
    PDC1 = 2396; // Set PWM1H duty cycle to 5 탎
    SDC1 = 2396; // Set PWM1L duty cycle to 5 탎
    
    // Setup PWM IO
    IOCON1bits.PENH = 1; // Enable PWM1H
    IOCON1bits.PENL = 1; // Enable PWM1L
    IOCON1bits.POLH = 0; // PWM1H active high
    IOCON1bits.POLL = 0; // PWM1L active high
    IOCON1bits.PMOD = 3; // True Independent Output Mode
    
    PTCONbits.PTEN = 1; // Enable PWM
    
    // This should theoretically start the LED at zero brightness, slowly goto full, turn off, and repeat
    // There seems to be some bug with the loop itself, PWM is working though
    while(1) {
        for (int i = 0; i < 4785; i++) {
            PDC1 = i;
            //__delay_ms(100); // Enabling this causes the whole MCU to lag a BUNCH
            // * I think that its because the way it delays, is by stopping the MCU from doing anything using nops
            // * So, the MCU is too busy doing nothing to update the PWM duty cycle and everything is sad
            // * Right now the LED brightness to quickly to be visible by the human eye, but the changes in PWM duty cycle are visible on an oscilloscope
        }
    }

    return 1;
}