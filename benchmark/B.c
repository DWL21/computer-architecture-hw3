#include "lib.h"
int func_B(int n);

int main() {

    func_B(17);
    exit_proc();
    return 0;
}

int func_B(int n) {
    if (n == 0) return 1;

    int result = 1;
    for (int i = 0; i < n; ++i) {
        int temp = 0;
        for (int j = 0; j < result; ++j) {
            temp = temp + 1;
        }
        result = result + temp;
    }
    return result;
}