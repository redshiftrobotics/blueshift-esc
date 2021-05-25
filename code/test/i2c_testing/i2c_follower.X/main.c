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
#include <p33FJ09GS302.h>

// Array to store the motor speed
#define i2cArrayLen 2
uint8_t i2cArray[i2cArrayLen] = {0x00, 0x00};

uint8_t i2cArrayAdd = 0; // Index into motor speed array
uint8_t temp = 0; // Temp register used to clear
uint8_t regAdd = 0; // Register that the leader wants to read to / write from

void __interrupt(no_auto_psv) _SI2C1IInterrupt(void) {
    
    if (I2CSTATbits.R_W == 1) // Leader wants to read from this device
    {
        //I2C1TRN = i2cArray[i2cArrayAdd++]; // Load array value
        I2C1TRN = 0x05;
        //I2C1CONbits.SCLREL = 1; // Release the clock
    }
    if (I2CSTATbits.R_W == 0) // Leader wants to write to this device
    {
        if (I2CSTATbits.D_A == 0) // Last byte was an address
        {
            regAdd = 1; // Next byte will be register address
            temp = I2C1RCV; // Clear receive buffer
            //I2C1CONbits.SCLREL = 1; // Release the clock
        }
        if (I2CSTATbits.D_A == 1) // Last byte was data
        {
            if (regAdd == 1) // If last byte was the register address
            {
                i2cArrayAdd = I2C1RCV; // Load register address into index
                regAdd = 0; // Next byte will be true data
            } else {
                if (i2cArrayAdd < i2cArrayLen) // Within array boundaries?
                {
                    i2cArray[i2cArrayAdd++] = I2C1RCV; // Yes, load data from SSP1BUF
                } else {
                    temp = I2C1RCV; // No, array location invalid, discard data
                }
            }
            //I2C1CONbits.SCLREL = 1; // Release the clock
        }
    }
    
    // Clear I2C follower interrupt
    _SI2C1IF = 0;
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
    
    // I2C Setup
    I2C1CONbits.I2CEN = 0; // Disable I2C during setup
    I2C1CONbits.A10M = 0; // 7 bit follower address mode
    //I2C1CONbits.STREN = 1; // Enable clock stretching
    I2C1CONbits.SMEN = 1; // Set high/low thresholds to match the SMBus specification
    // I2C1CONbits.GCEN = 1; // Enables general call address (allows communication to all I2C devices on the bus at the same time)
    I2C1CONbits.DISSLW = 1; // Disable slew rate control (https://electronics.stackexchange.com/a/65535)
    
    IEC1bits.SI2C1IE = 1; // Enable follower I2C event interrupts
    IPC4bits.SI2C1IP = 0b111; // Set follower I2C interrupt priority
    
    I2C1MSK = 0; // Disable follower address masking (each bit in the address has to match exactly)
    
    I2C1ADD = 0x2A; // Set the follower address to 42 (in hex)
    
    I2C1CONbits.I2CEN = 1; // Enable I2C once setup is complete
    
    while (1);

    return 1;
}
