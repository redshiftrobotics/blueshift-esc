#include <iostream>
#include <math.h>
using namespace std;

struct PID{
    float kp;
    float ki;
    float kd;
};

float do_PID(struct PID PIDparameters){
    float setPoint = 17;
    float input;
    float time;

    float accumulatedError = 0;
    float lastError = 0;
    float derivative = 0;

    float error = setPoint - input; //p
    accumulatedError += (error * time); //i
    derivative += (error - lastError) / time; //d

    //use stuff above to do stuff
    cout << "\nPID" << (error * PIDparameters.kp) + (accumulatedError * PIDparameters.ki) + (derivative * PIDparameters.kd);
    lastError = error;

    if (accumulatedError > 30){
        accumulatedError = 0;
        cout << "\nAccumulated Error:" << accumulatedError;
    }
    
    return 0;
}

int main(){
int number;
//defines 3 req variables for three phase currents
    float Ia = 4;
    cout << "\nIa:" << Ia;
    float Ib = 2;
    cout << "\nIb:" << Ib;
    float Ic = 6;
    cout << "\nIc:" << Ic;
//variables for (inverse) park
    float theta = 5;

// //set variables for PID
//     float kp = 10;
//     float ki = 2;
//     float kd = 4.2;

//     float setPoint = 17;
       float input;
//     float time; //how do i define time?

//     float accumulatedError = 0;
//     float lastError = 0;
//     float derivative = 0;

    struct PID PID_d;
    PID_d.kp = 3;
    PID_d.ki = 5;
    PID_d.kd = 7;

    struct PID PID_q;
    PID_q.kp = 6;
    PID_q.ki = 5;
    PID_q.kd = 2;


float I_alpha;
float I_beta;
float Id;
float Iq;

// Forward Clarke
I_alpha = Ia;
I_beta = (I_alpha + (Ib*2))/sqrt(3);

cout << "\nAlpha: " << I_alpha;
cout << "\nBeta: " << I_beta;

// Park Transformation
Id = (I_alpha * cos(theta)) + (I_beta * sin(theta));
Iq = (I_beta * cos(theta)) - (I_alpha * sin(theta));

cout << "\nId: " << Id;
cout << "\nIq: " << Iq;

//inverse park
I_alpha = ((Id * cos(theta))) - (Iq * sin(theta));
I_beta = ((Iq * cos(theta)) + (Id * sin(theta)));

cout << "\nInverse Alpha: " << I_alpha;
cout << "\nInverse Beta: " << I_beta;


// Inverse Clarke
Ia = Ia;
Ib = (-Ia + (sqrt(3)*I_beta))/2;
Ic = -(-Ia - (sqrt(3)*I_beta))/2;

cout << "\nInverse A: " << Ia;
cout << "\nInverse B: " << Ib;
cout << "\nInverse C: " << Ic;



}


