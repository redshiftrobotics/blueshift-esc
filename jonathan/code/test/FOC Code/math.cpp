#include <iostream>
#include <math.h>
using namespace std;

struct PID{
    float kp;
    float ki;
    float kd;
    float maxAccumError;
    float minAccumError;
    float accumError;
    float lastError;
};

float do_PID(struct PID PIDparameters, float SP, float PV, float DT){


    float derivative = 0;

    float error = SP - PV; //Define error (P)
    PIDparameters.accumError += (error * DT); //Define the error over time (I)
    derivative += (error - PIDparameters.lastError) / DT; //d

    //use stuff above to do stuff
    float output = (error * PIDparameters.kp) + (PIDparameters.accumError * PIDparameters.ki) + (derivative * PIDparameters.kd);

    if (PIDparameters.accumError > PIDparameters.maxAccumError){
        PIDparameters.accumError = PIDparameters.maxAccumError;
        cout << "\nAccumulated Error:" << PIDparameters.accumError;
    }
    if (PIDparameters.accumError < PIDparameters.minAccumError){
        PIDparameters.accumError = PIDparameters.minAccumError;
        cout << "\nAccumulated Error:" << PIDparameters.accumError;
    }
    
    return output;
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


    float input;

    float I_alpha;
    float I_beta;
    float Id;
    float Iq;

    struct PID PID_d;
        PID_d.kp = 9;
        PID_d.ki = 5;
        PID_d.kd = 7;
        PID_d.maxAccumError = 100;
        PID_d.minAccumError = -30;
        PID_d.accumError = 0;
        PID_d.lastError = 0;

    struct PID PID_q;
        PID_q.kp = 6;
        PID_q.ki = 5;
        PID_q.kd = 2;
        PID_q.maxAccumError = 42;
        PID_q.minAccumError = -16;
        PID_q.accumError = 0;
        PID_q.lastError = 0;

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

    float IdOutput = do_PID(PID_d, 4, Id, 1);
    cout << "\nId Output: " << IdOutput;

    float IqOutput = do_PID(PID_q, 2, Iq, 1);
    cout << "\nIq Output: " << IqOutput;

    // Inverse Park
    I_alpha = ((IdOutput * cos(theta))) - (IqOutput * sin(theta)); //Math with Id/Iq or IdOutput/IqOutput
    I_beta = ((IqOutput * cos(theta)) + (IdOutput * sin(theta)));

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


