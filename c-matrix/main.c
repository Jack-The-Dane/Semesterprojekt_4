#include "./matrix.h"
#include "./model.h"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void step_controller(double ref[][1], double y[][1], void * u, double time_step) {

    // Observer states
    static double x_hat[4][1]     = {0};
    static double x_hat_dot[4][1] = {0};

    // Integrators
    static double control_integrator[2][1]  = {0};
    static double observer_integrator[4][1] = {0};

    // Update control integrator
    double int_in[2][1] = {0};
    matrix_subtract(int_in, ref);
    matrix_add(int_in, y);
    matrix_scale(int_in, time_step);
    matrix_add(control_integrator, int_in);

    // Calculate the new input
    double u_temp[2][1] = {0};
    double u_in1[2][1];
    double u_in2[2][1];
    matrix_multiply(FI, control_integrator, u_in1);
    matrix_multiply(F, x_hat, u_in2);
    matrix_add(u_temp, u_in1);
    matrix_add(u_temp, u_in2);

    // Calculate observer output
    double y_hat[2][1];
    matrix_multiply(C, x_hat, y_hat);

    // Update observer integrator
    {
        double obs_in1[4][1];
        double obs_in2[4][1];
        double obs_in3[4][1];
        matrix_multiply(A, x_hat, obs_in1);
        matrix_multiply(B, u_temp, obs_in2);

        // Calculate observer output error
        double L_in[2][1] = {0};
        matrix_add(L_in, y_hat);
        matrix_subtract(L_in, y);
        matrix_multiply(L, L_in, obs_in3);

        matrix_add(observer_integrator, obs_in1);
        matrix_add(observer_integrator, obs_in2);
        matrix_add(observer_integrator, obs_in3);
    }

    // Copy the new input value to outside the function
    memcpy(u, u_temp, sizeof(double)*2);
}

int main(void)
{
    double ref[2][1] = {{1}, {1}};
    double y[2][1]   = {{0}, {0}};
    double u[2][1]   = {{0}, {0}};
    double time_step = 0.5;

    for (int i = 0; i < 10; i++) {
        step_controller(ref, y, &u, time_step);
        matrix_print(u);
        /* step_system(u, &y, time_step); */
    }

    return 0;

}
