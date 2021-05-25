#include <iostream>
#include <math.h>
#include <stdlib.h>
#include <time.h> 
using namespace std;

int main(){
    srand (time(NULL));

    int i;
    float lastEstPos; //last estimated position
    float lastEstVol; //last estimated velocity 
    float dt = 0.5;
    //NOTE: This will be used for both alpha and beta
    while(i < 100){


        float estPos; //current estimated position
        float estVol; //current estimated velocity //change vol to vel
        float posError; //error for position
        float Alpha = 0.85; //Alpha variable for oberserver
        float Beta = 0.005; //variables for both alpha and beta to be changed for tuning purposes, etc.
        //float r; //I actually forget what r does - I believe that it is "residual," but that doesn't help < i think its the same as error

        float calcPos = rand() % 100; //calculated position

        estPos = lastEstPos + (dt * lastEstVol); //get new estimated position
        estVol = lastEstVol; //assuming velocity is constant
        posError = calcPos - estPos; //calculate position error
        estPos += (Alpha * posError); //update estimated position
        estVol += (Beta * posError) / dt; //update estimated velocity


        cout << calcPos << "," << estPos << " \n";

        estVol = lastEstVol; //set last estimates
        estPos = lastEstPos;

        i++;

    } 

}