#include "Halide.h"

namespace {

class HalideBlur : public Halide::Generator<HalideBlur> {
public:
    Input<Buffer<uint16_t>>  input{"input", 2};
    Output<Buffer<uint16_t>> blur_y{"blur_y", 2};

    void generate() {
        Func blur_x("blur_x");
        Var x("x"), y("y"), xi("xi"), yi("yi");

        // The algorithm
        blur_x(x, y) = (input(x, y) + input(x+1, y) + input(x+2, y))/3;
        blur_y(x, y) = (blur_x(x, y) + blur_x(x, y+1) + blur_x(x, y+2))/3;

        // How to schedule it
        if (get_target().features_any_of({Target::HVX_64, Target::HVX_128})) {
            // Hexagon schedule.
            const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;

            // For some reason prefetching causes the program to not terminate 
            // when run on the device (fine on simulator)
            blur_y.compute_root()
                .hexagon()
                //.prefetch(input, y, 2)
                .split(y, y, yi, 128).parallel(y)
                .vectorize(x, vector_size * 2);

            blur_x
                .store_at(blur_y, y)
                .compute_at(blur_y, yi)
                .vectorize(x, vector_size);

        } else {
            // CPU schedule.
            blur_y.split(y, y, yi, 8).parallel(y).vectorize(x, 8);
            blur_x.store_at(blur_y, y).compute_at(blur_y, yi).vectorize(x, 8);
        }
    }
};

}  // namespace

HALIDE_REGISTER_GENERATOR(HalideBlur, halide_blur)