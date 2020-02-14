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

using namespace Halide;

class Sobel : public Generator<Sobel> {
public:
    Input<Buffer<uint8_t>> input{"input", 2};
    Output<Buffer<uint8_t>> output{"output", 2};

    void generate() {
        Func input_16{"input_16"};
        input_16(x, y) = cast<uint16_t>(input(x, y));

        // Only compute the y-gradient (which is the interesting bit)
        sobel_y_avg(x, y) = input_16(x, y - 1) + 2 * input_16(x, y) + input_16(x, y + 1);
        sobel_y(x, y) = absd(sobel_y_avg(x - 1, y), sobel_y_avg(x + 1, y));

        output(x, y) = cast<uint8_t>(sobel_y(x, y));
    }

    void schedule() {
        Var xi{"xi"}, yi{"yi"};

        input.dim(0).set_min(0);
        input.dim(1).set_min(0);

        if (get_target().features_any_of({Target::HVX_64, Target::HVX_128})) {
            const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;
            output
                .hexagon()
                .vectorize(x, vector_size);
        }
    }

private:
    Var x{"x"}, y{"y"};
    Func sobel_y_avg{"sobel_y_avg"};
    Func sobel_y{"sobel_y"};
};

HALIDE_REGISTER_GENERATOR(Sobel, sobel_simple)