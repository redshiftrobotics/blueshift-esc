#pragma once
#ifndef _GLOBALS_H_
#define _GLOBALS_H_

// These are set in the oscillator setup section of main
#define FOSC 7490000 // Instruction cycle frequency, Hz - required for __delayXXX() to work (https://www.microchip.com/forums/m783008.aspx)
#define FP FOSC/2 // FP and FCY are the same value
#define FCY FOSC/2
#endif