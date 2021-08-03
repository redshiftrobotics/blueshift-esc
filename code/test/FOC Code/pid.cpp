#include <iostream>
#include <math.h>
using namespace std;

int main(){

//set variables
float kp = 10;
float ki = 2;
float kd = 4.2;

float setPoint = 17;
float input;
float time; //how do i define time?

float accumulatedError = 0;
float lastError = 0;
float derivative = 0;

while (true){
cin >> input;

//get p, i, and d
float error = setPoint - input; //p
accumulatedError += (error * time); //i
derivative += (error - lastError) / time; //d

//use stuff above to do stuff
cout << (error * kp) + (accumulatedError * ki) + (derivative * kd);
lastError = error;

if (accumulatedError > 30){
    accumulatedError = 0;
}

}

//define kp, ki, and kd
//define set point

//input
//set point - input = error
//accumulated error = error * time
//derivative =(currenterror - lasterror) / time 
//output = (error * kp) + (acumulated error * ki) + (derivative * kd)
//response output

}