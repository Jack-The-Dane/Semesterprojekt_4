#ifndef MATRIX_H
#define MATRIX_H

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#define matrix_get_dimensions(M, COLS, ROWS)       \
    int COLS = sizeof(M[0]) / sizeof(M[0][0]);     \
    int ROWS = sizeof(M) / sizeof(M[0][0]) / COLS; \


#define matrix_multiply(A, B, C) {                 \
    matrix_get_dimensions(A, A_cols, A_rows);      \
    matrix_get_dimensions(B, B_cols, B_rows);      \
    matrix_get_dimensions(C, C_cols, C_rows);      \
    assert(A_cols == B_rows && "Collums in first input not equal rows in second input");      \
    assert(C_rows == A_rows && "Rows in output matrix not equal rows in first input");        \
    assert(C_cols == B_cols && "Collums in output matrix not equal collums in second input"); \
                                                   \
    int i, j, k;                                   \
    for (i = 0; i < A_rows; i++)                   \
    {                                              \
        for (j = 0; j < B_cols; j++)               \
        {                                          \
            C[i][j] = 0;                           \
            for (k = 0; k < A_cols; k++)           \
            {                                      \
                C[i][j] += A[i][k] * B[k][j];      \
            }                                      \
        }                                          \
    }                                              \
}

#define matrix_scale(A, c) {                       \
    int i, j;                                      \
    matrix_get_dimensions(A, A_cols, A_rows);      \
    for (i = 0; i < A_rows; i++)                   \
    {                                              \
        for (j = 0; j < A_cols; j++)               \
        {                                          \
            A[i][j] *= c;                          \
        }                                          \
    }                                              \
}

#define matrix_add(A, B) {                         \
    int i, j;                                      \
    matrix_get_dimensions(A, A_cols, A_rows);      \
    matrix_get_dimensions(A, B_cols, B_rows);      \
    assert(A_cols == B_cols && "Collums in first input not equal collums in second input"); \
    assert(A_rows == B_rows && "Rows in first input not equal rows in second input");       \
    for (i = 0; i < A_rows; i++)                   \
    {                                              \
        for (j = 0; j < A_cols; j++)               \
        {                                          \
            A[i][j] += B[i][j];                    \
        }                                          \
    }                                              \
}

#define matrix_subtract(A, B) {                    \
    int i, j;                                      \
    matrix_get_dimensions(A, A_cols, A_rows);      \
    matrix_get_dimensions(A, B_cols, B_rows);      \
    assert(A_cols == B_cols && "Collums in first input not equal collums in second input"); \
    assert(A_rows == B_rows && "Rows in first input not equal rows in second input");       \
    for (i = 0; i < A_rows; i++)                   \
    {                                              \
        for (j = 0; j < A_cols; j++)               \
        {                                          \
            A[i][j] -= B[i][j];                    \
        }                                          \
    }                                              \
}


#define matrix_print(M) {                          \
    int i, j;                                      \
    matrix_get_dimensions(M, cols, rows);          \
    printf("Matrix %dx%d:\n", rows, cols);         \
    for (i = 0; i < rows; i++)                     \
    {                                              \
        for (j = 0; j < cols; j++)                 \
        {                                          \
            printf("%f ", M[i][j]);              \
        }                                          \
        printf("\n");                              \
    }                                              \
}

#endif // MATRIX_H