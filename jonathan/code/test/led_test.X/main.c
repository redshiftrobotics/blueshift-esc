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

// Interrupt function
// no_auto_psv explanation: https://electronics.stackexchange.com/a/190325
void __interrupt(no_auto_psv) _T1Interrupt(void){
    LATAbits.LATA1 ^= 1; // Toggle RA1. ^ is an excluse or operation, so it reads from whatever was last set to the pin, and assigns the opposite of that
    
    _T1IF = 0; // Reset the Timer1 interrupt
}

int main(void) {
    ADPCFG = 0xFFFF; // Set all ADC pins in digital mode
    TRISA = 0x0000; // Set all pins on the A register as output
    
    // I think its good practice to turn of the timer before changing the parameters so it doesn't generate unintended interrups
    T1CONbits.TON = 0; // Turn off Timer 1
    T1CONbits.TCKPS = 0b10; // Set the pre-scaler to 1:8
    INTCON1bits.NSTDIS = 1; // Disable interrupt nesting
    IPC0bits.T1IP = 0b001; // Set priority to 1
    IFS0bits.T1IF = 0;// clear interrupt
    IEC0bits.T1IE = 1; // enable interrupt source
    T1CONbits.TON = 1; // Turn on Timer 1
    while (1);

    return 1;
}