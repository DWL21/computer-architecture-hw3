#include "lib.h"

int func_D(int n);

int main(void) {
    func_D(7000);
    exit_proc();
    return 0;
}

int func_D(int n) {
    volatile int sum = 0;
    int k[4] = {0, 0, 0, 0};

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < 4; j++) {
            if (k[j]) sum++;
            k[j] = !k[j];
        }
    }
    return sum;
}
