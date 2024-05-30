#include "./matrix.h"
#include "./model.h"

#include <stdlib.h>
#include <string.h>


#if 1
    #include <stdio.h>

    int log_field_count = 0;

    #define log_str(S)                         \
        if (log_field_count > 0) printf("\t"); \
        printf(S);                             \
        log_field_count++;

    #define log_double(D)                      \
        if (log_field_count > 0) printf("\t"); \
        printf("%f", D);                       \
        log_field_count++;

    #define log_int(I)                         \
        if (log_field_count > 0) printf("\t"); \
        printf("%d", I);                       \
        log_field_count++;

    #define log_newline() \
        printf("\n");     \
        log_field_count = 0;

#else
    #define log_str(_)
    #define log_int(_)
    #define log_double(_)
    #define log_newline(_)
#endif

void clamp(double * d, double min, double max) {
    *d = *d < min ? min : *d;
    *d = *d > max ? max : *d;
}

void step_system(void * u, void * y, double time_step) {

    // System states, also the integrator value
    static double x[4][1] = {0};

    double x_dot[4][1];
    double x_dot_in1[4][1];
    double x_dot_in2[4][1];
    matrix_multiply(A, x, x_dot_in1);

    double u_temp[2][1];
    memcpy(u_temp, u, sizeof(double)*2);

    matrix_multiply(B, u_temp, x_dot_in2);
    matrix_add(x_dot, x_dot_in1);
    matrix_add(x_dot, x_dot_in2);


    double int_in[4][1] = {0};
    matrix_add(int_in, x_dot);
    matrix_scale(int_in, time_step);

    matrix_add(x, int_in);

    log_double(x_dot[0][0]); // I_dot_pan
    log_double(x_dot[2][0]); // I_dot_tilt
    log_double(x[0][0]); // I_pan
    log_double(x[1][0]); // theta_dot_pan
    log_double(x[2][0]); // I_tilt
    log_double(x[3][0]); // theta_dot_tilt


    double y_temp[2][1];
    matrix_multiply(C, x, y_temp);

    memcpy(y, y_temp, sizeof(double)*2);
}

void step_controller(double ref[][1], double y[][1], void * u, double time_step) {

    // Observer state
    static double x_hat[4][1]     = {0};

    // Integrators
    static double control_integrator[2][1]  = {0};
    static double observer_integrator[4][1] = {0};

    // Update control integrator
    double int_in[2][1];
    memcpy(int_in, y, sizeof(double)*2);
    matrix_subtract(int_in, ref);
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
    double time_step = 0.0009;

    log_str("Time");
    log_str("Vs_pan");
    log_str("Vs_tilt");
    log_str("I_dot_pan");
    log_str("I_dot_tilt");
    log_str("I_pan");
    log_str("theta_dot_pan");
    log_str("I_tilt");
    log_str("theta_dot_tilt");
    log_newline();

    for (int i = 0; i <= 1e+6; i++) {
        log_double(i * time_step);
        log_double(u[0][0]);
        log_double(u[1][0]);

        step_system(u, &y, time_step);

        step_controller(ref, y, &u, time_step);

        /* clamp(&u[0][0], -12, 12); */
        /* clamp(&u[1][0], -12, 12); */

        log_newline();
    }

    return 0;
}
