#include "Halide.h"
#include "utils.h"

using namespace Halide;

class Conv3x3 : public Generator<Conv3x3> {
public:
    // Takes an 8 bit image; one channel.
    Input<Buffer<uint8_t>> input{"input", 2};
    Input<Buffer<int8_t>> mask{"mask", 2};
    // Outputs an 8 bit image; one channel.
    Output<Buffer<uint8_t>> output{"output", 2};

    void generate() {
        Expr sum = cast(Int(32), 0);
        for (int j = -1; j <= 1; j++) {
            for (int i = -1; i <= 1; i++) {
                sum += cast<int16_t>(input(x+i, y+j)) * cast<int16_t>(mask(i+1, j+1));
            }
        }
        output(x, y) = cast<uint8_t>(clamp(sum >> 4, 0, 255));
    }

    void schedule() {
        Var xi{"xi"}, yi{"yi"};

        input.dim(0).set_min(0);
        input.dim(1).set_min(0);

        output.dim(0).set_min(0);
        output.dim(1).set_min(0);

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
    Var x{"x"}, y{"y"};
    Var yo{"yo"};
};

HALIDE_REGISTER_GENERATOR(Conv3x3, conv3x3a32)