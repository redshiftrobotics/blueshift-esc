#include <stdio.h>

struct pid_info
{
    float kP;
    float kI;
    float kD;

    float last_error, last_time;
};


float pid(struct pid_info *pid_i, float goal, float input, float time)
{
    printf("time %f %f \n", (*pid_i).last_time , time);

    float p;
    float d;
    float error = goal - input;

    p = (*pid_i).kP * error;
    d = (*pid_i).kD * ((*pid_i).last_error) - error / (time - (*pid_i).last_time);
    // set input
    float output = input + p + d;
    (*pid_i).last_error = error;

    (*pid_i).last_time = time;
    return output;
}

int main()
{
    struct pid_info fancy_number = {
        1.5, // kP
        0, // kI
        .69, // kD
        0, // last_error
        0  // last_time
    };
    float input = 0;

    input = pid(&fancy_number, 0, input, 1);
    printf("0 , %9.3f \n", input);

    for (int i = 2; i < 30; i++)
    {
        input = pid(&fancy_number, 1, input, i);
        printf("1 , %9.3f \n", input);
    }
}