#include "lib.h"

int func_C(void);


int main(void) {
    int a;
    a=func_C();
    exit_proc();
    return 0;
}

int func_C(void)
{
    int sum = 0;
    int i;
    for (i = 0; i < 20000; i++) {
        if (i>100) {
            sum += 1; 
        } else {
            sum += 2;
        }

        if (i < 10000) {
            sum += 2;
        } else {
            sum -= 1;
        }
    }

    return sum;
}