#include "Halide.h"
#include <stdio.h>

using namespace Halide;

int main(int argc, char **argv) {
    Func f;
    Var x, y;

    ImageParam in(Float(32), 2);
    ImageParam x_coord(Int(32), 2);
    ImageParam y_coord(Int(32), 2);

    f(x, y) = in(x_coord(x, y), y_coord(x, y));

    f.compile_jit();

    printf("Success!\n");
    return 0;
}
