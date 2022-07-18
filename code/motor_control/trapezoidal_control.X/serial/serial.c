#include <xc.h>
#include "serial.h"

#include "../globals.h"

char * _float_to_char(float x, char *p, int char_size) {
    char *s = p + char_size; // go to end of buffer
    uint16_t decimals;  // variable to store the decimals
    int units;  // variable to store the units (part to left of decimal place)
    if (x < 0) { // take care of negative numbers
        decimals = (int)(x * -100) % 100; // make 1000 for 3 decimals etc.
        units = (int)(-1 * x);
    } else { // positive numbers
        decimals = (int)(x * 100) % 100;
        units = (int)x;
    }

    *--s = (decimals % 10) + '0';
    decimals /= 10; // repeat for as many decimal places as you need
    *--s = (decimals % 10) + '0';
    *--s = '.';

    while (units > 0) {
        *--s = (units % 10) + '0';
        units /= 10;
    }
    if (x < 0) *--s = '-'; // unary minus sign for negative numbers
    return s;
}

void clean(char *var) {
    int i = 0;
    while(var[i] != '\0') {
        var[i] = '\0';
        i++;
    }
}

void send_str(char* str) {
    int i = 0;
    for (i = 0; str[i] != 0; i++) {
        while (U1STAbits.UTXBF) {
            continue;
        }
        U1TXREG = str[i];
    }
}

void UART1_Init(int baudrate) {
    RPOR2bits.RP4R = 0b00011; // Remap TX to RP4
    U1MODEbits.STSEL = 0; // 1-Stop bit
    U1MODEbits.PDSEL = 0; // No Parity, 8-Data bits
    U1MODEbits.ABAUD = 0; // Auto-Baud disabled
    U1MODEbits.BRGH = 1; // High-Speed mode
    
    // Page 12 of https://ww1.microchip.com/downloads/en/DeviceDoc/70000582e.pdf
    U1BRG = ( (FP/baudrate) / 4) - 1; // Set the baud rate as calculated above

    // Interrupt after the transmit buffer is empty
    // This is not the most efficient, since we may wait longer than we need to before sending the next message
    // But it shouldn't be an issue at high baud rates and is probably more reliable
    U1STAbits.UTXISEL0 = 1;
    U1STAbits.UTXISEL1 = 0;

    IEC0bits.U1TXIE = 1; // Enable UART TX interrupt
    U1MODEbits.UARTEN = 1; // Enable UART
    U1STAbits.UTXEN = 1; // Enable UART TX
}