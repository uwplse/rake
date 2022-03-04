#include "Halide.h"

int main(int argc, char *argv[]) {
    Halide::Internal::generate_arm_interpreter();
    return 0;
}