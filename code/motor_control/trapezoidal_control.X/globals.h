#pragma once
#ifndef _GLOBALS_H_
#define _GLOBALS_H_

// These are set in the oscillator setup section of main
#define FOSC 7490000 // Instruction cycle frequency, Hz - required for __delayXXX() to work (https://www.microchip.com/forums/m783008.aspx)
#define FP FOSC/2 // FP and FCY are the same value
#define FCY FOSC/2

enum mode{STOPPED, CLOSED_LOOP_CONTROL, TRANSITION_FROM_OPEN_TO_CLOSED_LOOP_CONTROL, OPEN_LOOP_CONTROL, MUSIC};
enum direction{POSITIVE, NEGATIVE};

typedef struct {
    enum mode mode;
    enum direction dir;
    float velocity;
    float current_limit;
} state;

extern state STATE;
#endif