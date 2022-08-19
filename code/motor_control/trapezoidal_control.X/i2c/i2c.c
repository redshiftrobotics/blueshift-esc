#include "globals.h"

#include <libpic30.h> // __delayXXX() functions macros defined here. Make sure that this is included AFTER FCY is defined
#include <xc.h>
#include "i2c.h"
#include "ESC_registers.h"


uint8_t addr;
uint8_t addrCounter=0;

uint8_t writeBits[MAX_CONSECUTIVE_BITS];
uint8_t writeBitsCounter=0;

uint8_t i2cMode = 0;

uint8_t wordLowTemp = 0;
int wordLowAddr = -1;

<<<<<<< Updated upstream
=======
uint8_t motorLow = 0x01;
uint8_t motorHigh = 0x00;

>>>>>>> Stashed changes
struct FlagType flag;


//TODO: imagine a world, where we set invalid command and command success after we read them
uint8_t lastCommandInvalid = 0;
uint8_t lastCommandSuccess = 1;

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
    
    
    flag.AddrFlag = 0;
    flag.DataFlag = 0;
}

void __interrupt(no_auto_psv) _SI2C1Interrupt(void)
{
    unsigned char temp;   // Used to clear receive buffers
    
    if(I2C1STATbits.S == 1){
        
        writeBitsCounter=0;
        int writeBits[MAX_CONSECUTIVE_BITS]={0};
        i2cMode=0;
        addrCounter=0;
        flag.AddrFlag=0;
        flag.DataFlag=0;
        LATBbits.LATB4 = 1;
    }
    
    if (I2CSTATbits.P==1){
        if (i2cMode==0){
            for (int i=0;i<=writeBitsCounter;i++){
                writeRegister(addr+i,writeBits[i]);
            }
        }
        LATBbits.LATB4 = 0;
    }
  
    //For when we are writing (R_W==0) and were receiving our own address
    if( (I2C1STATbits.R_W == 0) && (I2C1STATbits.D_A == 0) )    // Check if addresses match
    {
        temp = I2C1RCV;     // Clear Receive Buffer
        flag.AddrFlag = 1;  // Next byte will be an address
    }
    else if (I2C1STATbits.R_W == 0 && I2CSTATbits.D_A == 1){
        if( flag.AddrFlag )
        {
            flag.AddrFlag = 0;
            flag.DataFlag = 1; // Next byte will be data
            addr = I2C1RCV;

            #if defined( USE_I2C_Clock_Stretch )
            I2C1CONbits.SCLREL = 1;                 //Release SCL1 line
            #endif
        }
        else if (flag.DataFlag == 1){
            writeBits[writeBitsCounter] = I2C1RCV;
            writeBitsCounter+=1;
            //I2C1CONbits.SCLREL = 1;  
        }
    }
    else if (I2C1STATbits.R_W == 1 && I2CSTATbits.D_A == 0){
        
        i2cMode=1;
        if (I2C1STATbits.ACKSTAT == 0){
            temp = I2C1RCV;
            I2C1TRN = readRegister(addr+addrCounter);
            addrCounter+=1;
        }
        
  
        I2C1CONbits.SCLREL = 1; //Release SCL1 line
        while( I2C1STATbits.TBF );
        
    }
    
    
//    else if( (I2C1STATbits.R_W == 0) && (I2C1STATbits.D_A == 1) ) // Check for data
//    {
//        //Gets called when the controller is telling us with address to interact with 
//        if( flag.AddrFlag )
//        {
//            flag.AddrFlag = 0;
//            flag.DataFlag = 1; // Next byte will be data
//            addr = I2C1RCV;
//
//            #if defined( USE_I2C_Clock_Stretch )
//            I2C1CONbits.SCLREL = 1;                 //Release SCL1 line
//            #endif
//        }
//        
//        //Gets called when writing data
//        else if( flag.DataFlag )
//        {
//            writeRegister(addr,I2C1RCV); // Store data into RAM
//            flag.AddrFlag = 0; // End of transmit
//            flag.DataFlag = 0;
//            #if defined( USE_I2C_Clock_Stretch )
//            I2C1CONbits.SCLREL = 1; //Release SCL1 line
//            #endif
//        }
//    }
//    
//    //Gets Called when Reading Data
//    else if( (I2C1STATbits.R_W == 1) && (I2C1STATbits.D_A == 0) )
//    {
//        temp = I2C1RCV;
//        I2C1TRN = readRegister(addr); // Read data from RAM & send data to follower device
//        I2C1CONbits.SCLREL = 1; //Release SCL1 line
//        while( I2C1STATbits.TBF );
//
//    }
    
    
    _SI2C1IF = 0; // Clear I2C1 follower interrupt flag
}

uint8_t readRegister(uint8_t addr){
    uint8_t thisCommandSuccess = 1;
    uint8_t thisCommandInvalid = 0;
    uint8_t tempReturn = 0;
    if(addr == PowerUp){
        //DO something
    }
    //For the next two if statments/registers Don't reset lastCommandSuccess or lastCOmmandInvalid when you read from them.
    else if(addr == LastCommandSuccess){
        tempReturn = lastCommandSuccess;
    }
    else if(addr == BadCommand){
        tempReturn = lastCommandInvalid;
    }
    
    else if(addr == MotorSpeed0){
        //Do something
    }
    else if(addr == MotorSpeed1){
        //Do something
    }
    else if(addr == CurrentLimit0){
        //Do something
    }
    else if(addr == CurrentLimit1){
        //Do something
    }
    else if(addr == 0x08){
        tempReturn = LATBbits.LATB4;
    }
    else{
        thisCommandInvalid = 1;
        thisCommandSuccess = 0;
    }
    
    if (addr != BadCommand && addr != LastCommandSuccess){
        lastCommandSuccess = thisCommandSuccess;
        lastCommandInvalid = thisCommandInvalid;
    }

    return tempReturn;
}

void writeRegister(uint8_t addr, uint8_t data){
    lastCommandSuccess = 1;
    lastCommandInvalid = 0;
//    if (wordLowAddr != -1 && wordLowAddr + 1 != addr){
//        lastCommandInvalid = 1;
//        lastCommandSuccess = 0;
//        wordLowAddr = -1; 
//        wordLowTemp = 0;
//        return;
//    }
    if (addr == ResetPic){
        Reset();
    }
    else if(addr == MotorSpeed0){
//        wordLowAddr = addr;
//        wordLowTemp = data;
        motorLow=data;
    }
    else if(addr == MotorSpeed1){
<<<<<<< Updated upstream
        //Do Stuff
        wordLowAddr = -1; 
        wordLowTemp = 0;
=======
        // TODO: this is a temp fix when kavi is done with set speed function this needs to change
//        motorLow=wordLowTemp;
        motorHigh=data;
//        wordLowAddr = -1; 
//        wordLowTemp = 0;
>>>>>>> Stashed changes
    }
    else if(addr == CurrentLimit0){
        //Do something
    }
    else if(addr == CurrentLimit1){
        //Do something
    }
    else if(addr == 0x08){
        LATBbits.LATB4 = data;
    }
    else{
        lastCommandInvalid = 1;
        lastCommandSuccess = 0;
    }
}