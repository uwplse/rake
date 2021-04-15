#include "Halide.h"

using namespace Halide;

class HalideBlur : public Halide::Generator<HalideBlur> {
public:
    GeneratorParam<int> tile_x{"tile_x", 32}; // X tile.
    GeneratorParam<int> tile_y{"tile_y", 8};  // Y tile.

    Input<Buffer<uint16_t>>  input{"input", 2};
    Output<Buffer<uint16_t>> blur_y{"blur_y", 2};

    void generate() {
        blur_x(x, y) = (input(x, y) + input(x+1, y) + input(x+2, y))/3;
        blur_y(x, y) = (blur_x(x, y) + blur_x(x, y+1) + blur_x(x, y+2))/3;
    }

    void schedule() {
        input.dim(0).set_min(0);
        input.dim(1).set_min(0);

        blur_y.dim(0).set_min(0);
        blur_y.dim(1).set_min(0);

        if (get_target().features_any_of({Target::HVX_128})) {
            const int vector_size = 128;

            blur_y.compute_root()
                .hexagon()
                .prefetch(input, y, 2)
                .split(y, y, yi, 128)
                .parallel(y)
                .vectorize(x, vector_size * 2);
            blur_x
                .store_at(blur_y, y)
                .compute_at(blur_y, yi)
                .vectorize(x, vector_size);

        }
    }

private:
    Func blur_x{"blur_x"};
    Var x{"x"}, y{"y"}, xi{"xi"}, yi{"yi"};
};

HALIDE_REGISTER_GENERATOR(HalideBlur, blur3x3)