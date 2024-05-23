#include "./matrix.h"
#include "./model.h"

#include <stdlib.h>
#include <stdio.h>

void step_controller(double ref[2][1], double x[4][1], double y[2][1], double time_step) {
    static double control_integrator[2][1] = {0};
    static double observer_integrator[4][1] = {0};

    // Update control integrator
    double neg_ref[2][1];
    printf("hellO");
    matrix_scale(neg_ref, -1);
    matrix_add(control_integrator, neg_ref);
    matrix_add(control_integrator, y);

    // Calculate the new input
    double u[2][1];
    double res[2][1];
    matrix_multiply(FI, control_integrator, res);

}

int main(void)
{
    double x[4][1] = {0, 0, 0, 0};
    double ref[2][1] = {0, 0};
    double y[2][1] = {0, 0};
    double time_step = 0.01;
    step_controller(ref, x, y, time_step);

    matrix_print(B);

    return 0;

}
