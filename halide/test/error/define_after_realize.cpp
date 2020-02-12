#include "Halide.h"
#include <stdio.h>

using namespace Halide;

int main(int argc, char **argv) {
    Func f, g;
    Var x;

    f(x) = x;

    Buffer<int> im = f.realize(10);

    // Now try to add an update definition to f
    f(x) += 1;

    printf("There should have been an error\n");
    return 0;
}
