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
#pragma config OSCIOFNC = OFF           // OSC2 Pin Function bit (OSC2 is clock output)
#pragma config IOL1WAY = ON             // Peripheral pin select configuration (Allow only one reconfiguration)
#pragma config FCKSM = CSDCMD           // Clock Switching Mode bits (Both Clock switching and Fail-safe Clock Monitor are disabled)

// FOSCSEL
#pragma config FNOSC = FRC              // Oscillator Source Selection (Internal Fast RC (FRC))
#pragma config IESO = ON                // Two-speed Oscillator Start-up Enable bit (Start up device with FRC, then switch to user-selected oscillator source)

// FGS
#pragma config GWRP = OFF               // General Segment Write-Protect bit (General Segment may be written)
#pragma config GCP = OFF                // General Segment Code-Protect bit (General Segment Code protect is Disabled)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

#define FP 3685000 // 7.37 MHz / 2
#define BAUDRATE 38400
#define BRGVAL ((FP/BAUDRATE)/4)-1
#define DELAY_105uS asm volatile ("REPEAT, #4201"); Nop(); // 105uS delay

static char * _float_to_char(float x, char *p, int char_size) {
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

int i = 0;
char str[10];

void __interrupt(no_auto_psv) _U1TXInterrupt(void)
{
    IFS0bits.U1TXIF = 0; // Clear TX Interrupt flag
    clean(str);
    send_str(_float_to_char(13.14, str, 9));
    send_str(" ");
    send_str(_float_to_char(3.14, str, 9));
    send_str("\r\n");
    i++;
}

int main(void) {
    RPOR2bits.RP4R = 0b00011; // Remap TX to RP4
    U1MODEbits.STSEL = 0; // 1-Stop bit
    U1MODEbits.PDSEL = 0; // No Parity, 8-Data bits
    U1MODEbits.ABAUD = 0; // Auto-Baud disabled
    U1MODEbits.BRGH = 1; // High-Speed mode
    U1BRG = BRGVAL; // Set the baud rate as calculated above
    
    // Interrupt after the transmit buffer is empty
    // This is not the most efficient, since we may wait longer than we need to before sending the next message
    // But it shouldn't be an issue at high baud rates and is probably more reliable
    U1STAbits.UTXISEL0 = 1;
    U1STAbits.UTXISEL1 = 0;
    
    IEC0bits.U1TXIE = 1; // Enable UART TX interrupt
    U1MODEbits.UARTEN = 1; // Enable UART
    U1STAbits.UTXEN = 1; // Enable UART TX
    
    /* Wait at least 105 microseconds (1/9600) before sending first char */
    DELAY_105uS
            
    U1TXREG = 'a'; // Transmit one character
    
    while(1)
    {           
    }

    return 1;
}
