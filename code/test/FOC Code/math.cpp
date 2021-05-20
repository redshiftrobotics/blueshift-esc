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

    // while (true){
//forward clarke
    // float I_alpha = ((2.0 / 3.0) * Ia) - ((1.0 / 3.0) * (Ib - Ic));
    float I_alpha = Ia;
    cout << "\ni alpha: " << I_alpha;

    float I_beta = ((Ib - Ic) / (sqrt(3.0)));
    cout << "\ni beta: " << I_beta;

//forward park
    float Id = (((cos(theta)) * I_alpha) + ((sin(theta) * I_beta)));
    cout << "\nid: " << Id;

    float Iq = (((-sin(theta)) * I_alpha) + ((cos(theta)) * I_beta));
    cout << "\niq: " << Iq;

    // cin >> input;

    // do_PID ( PID_d );
    // do_PID ( PID_q );


//inverse park
    I_alpha = (Id * cos(theta)) - (Iq * sin(theta));
    cout << "\ninverse i alpha: " << I_alpha;

    I_beta = (Id * sin(theta) + (Iq * cos(theta)));
    cout << "\ninverse i beta: " << I_beta;

//inverse clarke - this is the original that we manipulated
 //   Ia = I_alpha;
 //   cout << "\ninverse ia: " << Ia;

 //   Ib = (-I_alpha * (sqrt(3)) * I_beta);
 //   cout << "\ninverse ib: " << Ib;

 //   Ic = (-I_alpha - ((sqrt(3)) * I_beta));
 //   cout << "\ninverse ic: " << Ic;
//}

Ia = I_alpha;
Ib = (-I_beta/2 + sqrt(3)/2 * I_alpha);
Ic = (-I_beta/2 - sqrt(3)/2 * I_alpha);
cout << "\n inverse ia " << Ia << "\n inverse ib " << Ib << "\n inverse ic " << Ic;

}


