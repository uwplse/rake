/* 
 * Applies the sobel operator to the input image using the following
 * two 3x3 kernels:
 *
 * --------------    ----------------
 * | 1 | 0 | -1 |    |  1 |  2 |  1 |
 * --------------    ----------------
 * | 2 | 0 | -2 |    |  0 |  0 |  0 |
 * --------------    ----------------
 * | 1 | 0 | -1 |    | -1 | -2 | -1 |
 * --------------    ----------------
 */

#include "Halide.h"

class Gen_Sobel : public Halide::Generator<Gen_Sobel> {
public:
    Input<Buffer<uint8_t>> input{"input", 2};
    Output<Buffer<uint8_t>> output{"output", 2};

    Var x, y;

    Func gxx, gxy, gyx, gyy;

    void generate() {
        gxx(x, y) = input(x-1, y) - input(x+1, y);
        gxy(x, y) = gxx(x, y-1) + 2 * gxx(x, y) + gxx(x, y+1);

        gyx(x, y) = input(x-1, y) + 2 * input(x, y) + input(x+1, y);
        gyy(x, y) = gyx(x, y-1) - gxy(x, y+1);

        Expr temp = Halide::sqrt(gxy(x, y) * gxy(x, y) + gyy(x, y) * gyy(x, y));
        output(x, y) = cast<uint8_t>(Halide:: min(temp, 255.0f));
    }

    void schedule() {
        input.set_estimates({{0, 1024}, {0, 1024}});
        output.set_estimates({{0, 1024}, {0, 1024}});
    }
};

HALIDE_REGISTER_GENERATOR(Gen_Sobel, sobel)

/*
#include <stdio.h>

using namespace Halide;

int main(int argc, char **argv) {
    Halide::Buffer<uint8_t> input = Tools::load_image("images/rgb.png");

    Func output("output");
    Var x("x"), y("y"), c("c");

    output(x, y, c) = input(x-1, y, c) + 2 * input(x, y, c) + input(x+1, y, c);

    //Buffer<int> res = output.realize(8, 8);
    
    //Func gxx("gxx"), gxy("gxy");

    //gxx(x, y) = input(x-1, y) + input(x+1, y);
    //gxy(x, y) = gxx(x, y-1) + 2*input(x, y) + input(x, y+1);

    output.compile_to_lowered_stmt("sobel.ir", {});

    printf("Success!\n");
    return 0;
}
*/