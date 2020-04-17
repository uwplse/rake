#include "Halide.h"
#include "utils.h"
using namespace Halide;

class Sobel : public Generator<Sobel> {
public:
    Input<Buffer<uint8_t>> input{"input", 2};
    Output<Buffer<uint8_t>> output{"output", 2};

    void generate() {
        input_16(x, y) = cast<uint16_t>(input(x, y));

        sobel_x_avg(x,y) = input_16(x-1, y) + 2*input_16(x, y) + input_16(x+1, y);
        sobel_x(x, y) = absd(sobel_x_avg(x, y-1), sobel_x_avg(x, y+1));

        sobel_y_avg(x,y) = input_16(x, y-1) + 2*input_16(x, y) + input_16(x, y+1);
        sobel_y(x, y) = absd(sobel_y_avg(x-1, y),  sobel_y_avg(x+1, y));

        // This sobel implementation is non-standard in that it doesn't take the square root
        // of the gradient.
        output(x, y) = cast<uint8_t>(clamp(sobel_x(x, y) + sobel_y(x, y), 0, 255));
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
        } else {
            const int vector_size = natural_vector_size<uint8_t>();
            output
                .vectorize(x, vector_size)
                .parallel(y, 16);
        }
    }
private:
    Var x{"x"}, y{"y"}, yo{"yo"};
    Func input_16{"input_16"};
    Func sobel_x_avg{"sobel_x_avg"}, sobel_y_avg{"sobel_y_avg"};
    Func sobel_x{"sobel_x"}, sobel_y{"sobel_y"};
};

HALIDE_REGISTER_GENERATOR(Sobel, sobel)