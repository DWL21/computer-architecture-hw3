#include "lib.h"
#define SIZE 35

void func_A(int a[][SIZE], int b[][SIZE], int c[][SIZE]);

int main(void)
{
    int a[SIZE][SIZE];
    int b[SIZE][SIZE];
    int c[SIZE][SIZE];
    int i, j, k;

    for (i = 0; i < SIZE; i++)
    {
        for(j = 0; j < SIZE; j++)
        {
            a[i][j] = i;
            b[i][j] = j;
            c[i][j] = 0;
        }
    }
    func_A(a, b, c);
    exit_proc();
}

void func_A(int a[][SIZE], int b[][SIZE], int c[][SIZE])
{
    int i, j, k;
    for (i = 0; i < SIZE; i++)
    {
        for (j = 0; j < SIZE; j++)
        {
            for (k = 0; k < SIZE; k++)
            {
                c[i][j] += a[i][k] * b[k][j];
            }
        }
    }
}