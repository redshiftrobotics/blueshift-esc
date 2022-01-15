#include <xc.h>
#include <stdint.h>
#include "i2c.h"

uint8_t ramBuffer[256]; // I2C "RAM" (the registers that data is stored in)
uint8_t *ramPtr;        // Pointer to RAM memory locations
struct FlagType flag;

void I2C1_Init(void)
{   
    // I2C Setup
    I2C1CONbits.I2CEN = 0; // Disable I2C during setup
    I2C1CONbits.A10M = 0; // 7 bit follower address mode
    // I2C1CONbits.STREN = 1; // Enable clock stretching
    I2C1CONbits.SMEN = 1; // Set high/low thresholds to match the SMBus specification
    // I2C1CONbits.GCEN = 1; // Enables general call address (allows communication to all I2C devices on the bus at the same time)
    // I2C1CONbits.DISSLW = 1; // Disable slew rate control (https://electronics.stackexchange.com/a/65535)
    I2C1CONbits.I2CEN = 1; // Enable I2C once setup is complete
    
    I2C1ADD = 0x2A; // Set the follower address to 42 (in hex)
    I2C1MSK = 0; // Disable follower address masking (each bit in the address has to match exactly)
    
    IEC1bits.SI2C1IE = 1; // Enable follower I2C event interrupts
    IPC4bits.SI2C1IP = 0b111; // Set follower I2C interrupt priority
    
    ramPtr = &ramBuffer[0]; // Set the RAM pointer and points to beginning of ramBuffer
    flag.AddrFlag = 0;
    flag.DataFlag = 0;
}

void __interrupt(no_auto_psv) _SI2C1Interrupt(void)
{
    unsigned char temp;   // Used to clear receive buffers
    if( (I2C1STATbits.R_W == 0) && (I2C1STATbits.D_A == 0) )    // Check if addresses match
    {
        temp = I2C1RCV;     // Clear Receive Buffer
        flag.AddrFlag = 1;  // Next byte will be an address
    }
    else if( (I2C1STATbits.R_W == 0) && (I2C1STATbits.D_A == 1) ) // Check for data
    {
        if( flag.AddrFlag )
        {
            flag.AddrFlag = 0;
            flag.DataFlag = 1; // Next byte will be data
            ramPtr = ramPtr + I2C1RCV;

            #if defined( USE_I2C_Clock_Stretch )
            I2C1CONbits.SCLREL = 1;                 //Release SCL1 line
            #endif
        }
        else if( flag.DataFlag )
        {
            *ramPtr = ( unsigned char ) I2C1RCV; // Store data into RAM
            flag.AddrFlag = 0; // End of transmit
            flag.DataFlag = 0;
            ramPtr = &ramBuffer[0]; // Reset the RAM pointer
            #if defined( USE_I2C_Clock_Stretch )
            I2C1CONbits.SCLREL = 1; //Release SCL1 line
            #endif
        }
    }
    else if( (I2C1STATbits.R_W == 1) && (I2C1STATbits.D_A == 0) )
    {
        temp = I2C1RCV;
        I2C1TRN = *ramPtr; // Read data from RAM & send data to follower device
        #if defined( USE_I2C_Clock_Stretch )
            I2C1CONbits.SCLREL = 1; //Release SCL1 line
        #endif
        while( I2C1STATbits.TBF );

        //Wait till all
        ramPtr = &ramBuffer[0]; // Reset the RAM pointer
    }

    _SI2C1IF = 0; // Clear I2C1 follower interrupt flag
}