#include <xc.h>
#include "adc.h"

void ADC_Init(void){
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
    
    IPC27bits.ADCP0IP = 0x01; // Set pair 0 interrupt priority. This needs to be updated once we figure out the sampling order
    IEC6bits.ADCP0IE = 1; // Enable ADC Pair 0 interrupt. I'm not sure if both this line and the previous one are necessary
    IFS6bits.ADCP0IF = 0; // Clear ADC Pair 0 interrupt flag
    
    ADSTATbits.P0RDY = 0; // Clear ADC Pair 0 data ready bit
    ADCPC0bits.IRQEN0 = 1; // Enable interrupt generation for ADC Pair 0
    ADCPC0bits.TRGSRC0 = 0b00100; // Use PWM Generator 1 primary to trigger conversion of ADC Pair 0
    
    
    ADPCFGbits.PCFG2 = 0; // Configure AN2 as an analog input
    ADPCFGbits.PCFG3 = 0; // Configure AN3 as an analog input
    
    IPC27bits.ADCP1IP = 0x02; // Set pair 1 interrupt priority. This needs to be updated once we figure out the sampling order
    IEC6bits.ADCP1IE = 1; // Enable ADC Pair 1 interrupt. I'm not sure if both this line and the previous one are necessary
    IFS6bits.ADCP1IF = 0; // Clear ADC Pair 1 interrupt flag
    
    ADSTATbits.P1RDY = 0; // Clear ADC Pair 1 data ready bit
    ADCPC0bits.IRQEN1 = 1; // Enable interrupt generation for ADC Pair 1
    ADCPC0bits.TRGSRC1 = 0b00100; // Use PWM Generator 1 primary to trigger conversion of ADC Pair 1
    
    
    ADPCFGbits.PCFG6 = 0; // Configure AN6 as an analog input
    ADPCFGbits.PCFG7 = 0; // Configure AN7 as an analog input
    
    IPC28bits.ADCP3IP = 0x03; // Set pair 3 interrupt priority. This needs to be updated once we figure out the sampling order
    IEC7bits.ADCP3IE = 1; // Enable ADC Pair 3 interrupt. I'm not sure if both this line and the previous one are necessary
    IFS7bits.ADCP3IF = 0; // Clear ADC Pair 3 interrupt flag
    
    ADSTATbits.P3RDY = 0; // Clear ADC Pair 3 data ready bit
    ADCPC1bits.IRQEN3 = 1; // Enable interrupt generation for ADC Pair 3
    ADCPC1bits.TRGSRC3 = 0b00100; // Use PWM Generator 1 primary to trigger conversion of ADC Pair 3
    
    ADCONbits.ADON = 1; // Enable ADC now that setup is done
}

float convertToVoltage(int adcU){
    float oRange = 1024;
    float nRange = 3.3;
    float range = nRange / oRange;

    float volts = adcU * range;

    oRange = 3.243;
    nRange = 12;

   return volts * range;
}