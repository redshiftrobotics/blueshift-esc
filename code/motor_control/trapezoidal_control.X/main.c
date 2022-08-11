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

#include "globals.h"

#include <libpic30.h> // __delayXXX() functions macros defined here. Make sure that this is included AFTER FCY is defined
#include <xc.h>

// Modified from Microchip Code Sample CE445
#include "i2c/i2c.h"
#include "adc/adc.h"

#include "pwm/pwm.h"

#ifdef SERIAL
#include "serial/serial.h"
#endif

state STATE = {
    STOPPED,
    POSITIVE,
    0,
    4.0
};

uint8_t step = 0;

int phase_a_current, phase_b_current, phase_c_current;
float phase_a_voltage, phase_b_voltage, phase_c_voltage;
float neutral_point = 0;

int should_commutate_denoised = 0;

void commutate(void) {
    if (STATE.dir == POSITIVE) {
        step++;
    } else {
        step--;
    }
    
    if (step > 5) {
        step = 0;
    }
    
    if (step < 0) {
        step = 5;
    }
    
    switch (step) {
        case 0:
            // A High; B Low; C Crossing
            A_HIGH();
            B_LOW();
            C_OFF();
            break;
        case 1:
            // A High; B Crossing; C Low
            A_HIGH();
            B_OFF();
            C_LOW();
            break;
        case 2:
            // A Crossing; B High; C Low
            A_OFF();
            B_HIGH();
            C_LOW();
            break;
        case 3:
            // A Low; B High; C Crossing
            A_LOW();
            B_HIGH();
            C_OFF();
            break;
        case 4:
            // A Low; B Crossing; C High
            A_LOW();
            B_OFF();
            C_HIGH();
            break;
        case 5:
            // A Crossing; B Low; C High
            A_OFF();
            B_LOW();
            C_HIGH();
            break;
    }
}

void __interrupt(no_auto_psv) _T2Interrupt(void) {
    if (STATE.mode == OPEN_LOOP_CONTROL){
        if (PR2 > 80) {
                PR2 -= 40; // in gryffins
            } else {
                STATE.mode = TRANSITION_FROM_OPEN_TO_CLOSED_LOOP_CONTROL;
            }
           commutate();
    } else if (STATE.mode = TRANSITION_FROM_OPEN_TO_CLOSED_LOOP_CONTROL){
        commutate();
    } else if (STATE.mode == CLOSED_LOOP_CONTROL){
       
    } else if (STATE.mode == STOPPED){
        
    } else if (STATE.mode == MUSIC){
        if (step == 0) {
                step = 1;
                A_HIGH();
                B_LOW();
            } else {
                step = 0;
                A_OFF();
                B_OFF();
                C_OFF();
            }
    }
    
    
    
    _T2IF = 0; // Reset the Timer2 interrupt
}

void __interrupt(no_auto_psv) _ADCP0Interrupt(void) {
    if (STATE.mode == TRANSITION_FROM_OPEN_TO_CLOSED_LOOP_CONTROL || STATE.mode == CLOSED_LOOP_CONTROL) {
        // This math is all actually wrong, we need to convert it from ADC sampling range, to amplifier range, to raw current
        phase_a_current = ADCBUF0;
        phase_b_current = ADCBUF1;
        phase_c_current = -(phase_a_current-phase_b_current);   
    }
    _ADCP0IF = 0; // Clear ADC Pair 0 interrupt flag
}

void __interrupt(no_auto_psv) _ADCP1Interrupt(void) {
    if (STATE.mode == TRANSITION_FROM_OPEN_TO_CLOSED_LOOP_CONTROL || STATE.mode == CLOSED_LOOP_CONTROL) {
        phase_c_voltage = convertToVoltage(ADCBUF2);
        phase_b_voltage = convertToVoltage(ADCBUF3);
    }
    _ADCP1IF = 0; // Clear ADC Pair 1 interrupt flag
}

void __interrupt(no_auto_psv) _ADCP3Interrupt(void) {
    if (STATE.mode == TRANSITION_FROM_OPEN_TO_CLOSED_LOOP_CONTROL || STATE.mode == CLOSED_LOOP_CONTROL) {
        int temp = ADCBUF6;
        phase_a_voltage = convertToVoltage(ADCBUF7);
        neutral_point = (phase_a_voltage + phase_b_voltage + phase_c_voltage) / 3.0f;

        int should_commutate = 0;
        switch (step) {
            case 0:
                // C crossing high -> low
                if (phase_c_voltage < neutral_point) {

                    should_commutate = 1;
                }
                break;
            case 1:
                // B crossing low -> high
                if (phase_b_voltage > neutral_point) {
                    should_commutate = 1;
                }
                break;
            case 2:
                // A crossing high -> low
                if (phase_a_voltage < neutral_point) {
                    should_commutate = 1;
                }
                break;
            case 3:
                // C crossing low -> high
                if (phase_c_voltage > neutral_point) {
                    should_commutate = 1;
                }
                break;
            case 4:
                // B crossing high -> low
                if (phase_b_voltage < neutral_point) {
                    should_commutate = 1;
                }
                break;
            case 5:
                // A crossing low -> high
                if (phase_a_voltage > neutral_point) {
                    should_commutate = 1;
                }
                break;
        }

        if (should_commutate) {
            should_commutate_denoised++;
        } else {
            should_commutate_denoised--;
        }
        if (should_commutate_denoised > 10) {
            should_commutate_denoised = 0;
            STATE.mode = CLOSED_LOOP_CONTROL;
            commutate();            
        }
    }
    _ADCP3IF = 0; // Clear ADC Pair 3 interrupt flag
}

#ifdef SERIAL
char str[10];

void __interrupt(no_auto_psv) _U1TXInterrupt(void)
{
    IFS0bits.U1TXIF = 0; // Clear TX Interrupt flag
    clean(str);
    send_str(_float_to_char(phase_a_voltage , str, 9));
    send_str(" ");
    clean(str);
    send_str(_float_to_char(phase_b_voltage, str, 9));
    send_str(" ");
    clean(str);
    send_str(_float_to_char(phase_c_voltage - neutral_point, str, 9));
    send_str("\r\n");
}
#endif

int calc_note_period(float hz) {
    return (( FCY / 2 ) / 8) / hz;
}

int main(void) {
    // IO Setup
    TRISA = 0x0000; // Set all of register A as outputs
    TRISAbits.TRISA0 = 1; // Set AN0 as an input for the ADC
    TRISAbits.TRISA1 = 1; // Set AN1 as an input for the ADC
    TRISAbits.TRISA2 = 1; // Set AN2 as an input for the ADC
    LATA = 0x0000; // Clear all of register A
    
    TRISB = 0x0000; // Set all of register B as outputs
    TRISBbits.TRISB0 = 1; // Set AN3 as an input for the ADC
    TRISBbits.TRISB2 = 1; // Set AN7 as an input for the ADC
    LATB = 0x0000; // Clear all of register B
    
    // FRC Oscillator Setup
    // FRC nominal frequency is 7.37MHz. TUN updates the frequency to be 7.37 + (TUN * 0.00375 * 7.37)
    OSCTUNbits.TUN = 4; // Update the frequency to 7.49
    /* NOTES:
     * Setting the frequency to 7.49 allows for the maximum PWM resolution of 1.04 ns
     * Actually I don't know if this does anything, because the resolution is 8.32 ns in Center Aligned Mode
     * IF THIS IS CHANGED, UPDATE FOSC IN "globals.h" TO MATCH
     */
    
    // Auxiliary Clock setup (Used by the PWM generator)
    // Info on ACLKCON is in the Oscillator Datasheet, not in the PWM one
    // ACLK: (FRC * 16) / APSTSCLR = (7.49 * 16) / 1 = 119.84 MHz
    ACLKCONbits.FRCSEL = 1; // FRC is input to Auxiliary PLL
    ACLKCONbits.SELACLK = 1; // Auxiliary Oscillator provides the clock source
    ACLKCONbits.APSTSCLR = 0b111; // Divide Auxiliary clock by 1
    ACLKCONbits.ENAPLL = 1; // Enable Auxiliary PLL
    while(ACLKCONbits.APLLCK != 1); // Wait for Auxiliary PLL to Lock
    
#ifdef SERIAL
    UART1_Init(38400);
    
    // Wait the length of time it would take to send one bit
    __delay_us(1000000 / BAUDRATE);
    U1TXREG = 'a'; // Transmit one character
#endif
    
    PWM_Init();
    set_duty_cycle(5000);
    
    ADC_Init();
    
    T2CONbits.TON = 0; // Turn off Timer 2
    T2CONbits.TCKPS = 0b10; // Set the pre-scaler to 1:64
    IPC1bits.T2IP = 0b001; // Set priority to 1
    IFS0bits.T2IF = 0;// clear interrupt
    IEC0bits.T2IE = 1; // enable interrupt source
    T2CONbits.TON = 1; // Turn on Timer 2
//     Math comes from pages 5 and 11 of https://ww1.microchip.com/downloads/en/DeviceDoc/70205D.pdf
//     TIMER_FREQUENCY = ( FCY / TCKPS ) / PRx
//     (( 7490000 / 2 ) / 8) / 1000 = 468.125 Hz
    PR2 = 10000; // Load the period value. 
    
    
    
    I2C1_Init();
       
        
 
    while (1) {
       set_duty_cycle(5000);
       PR2 = 400;
       STATE.mode = OPEN_LOOP_CONTROL;
       __delay_ms(5000);


     
    }
    
  
   return 1;
}
