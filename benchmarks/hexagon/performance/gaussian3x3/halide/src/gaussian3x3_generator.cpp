#include "Halide.h"
#include "utils.h"

using namespace Halide;

class Gaussian3x3 : public Generator<Gaussian3x3> {
public:
    Input<Buffer<uint8_t>> input{"input", 2};
    Output<Buffer<uint8_t>> output{"output", 2};

    GeneratorParam<bool> use_prefetch_sched{"use_prefetch_sched", true};

    void generate() {
        input_16(x, y) = cast<int16_t>(input(x, y));

        rows(x, y) = input_16(x, y-1) + 2 * input_16(x, y) + input_16(x, y+1);
        cols(x,y) =  rows(x-1, y) + 2 * rows(x, y) + rows(x+1, y);

        output(x, y)  = cast<uint8_t> ((cols(x, y) + 8) >> 4);
    }

    void schedule() {
        Var xi{"xi"}, yi{"yi"};

        input.dim(0).set_min(0);
        input.dim(1).set_min(0);

        output.dim(0).set_min(0);
        output.dim(1).set_min(0);

        if (get_target().features_any_of({Target::HVX_64, Target::HVX_128})) {
            const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;
            Expr input_stride = input.dim(1).stride();
            input.dim(1).set_stride((input_stride/vector_size) * vector_size);

            Expr output_stride = output.dim(1).stride();
            output.dim(1).set_stride((output_stride/vector_size) * vector_size);

            Expr ht = output.dim(1).extent();

            // HALIDE: 0.3233 cycles/pixel
            // SDK :   0.14 cyckes/pixel
            output
                .hexagon()
                .split(y, y, yi, 4, TailStrategy::RoundUp)
                .vectorize(x, vector_size, TailStrategy::RoundUp);

            rows
                .compute_at(Func(output), yi)
                .align_storage(x, vector_size)
                .vectorize(x, vector_size, TailStrategy::RoundUp);

            if (use_prefetch_sched) {
                output.prefetch(input, y, 2, PrefetchBoundStrategy::NonFaulting);
            }
        } else {
            const int vector_size = natural_vector_size<uint8_t>();
            output
                .vectorize(x, vector_size)
                .parallel(y, 16);
        }
    }
private:
    Var x{"x"}, y{"y"};
    Func rows{"rows"}, cols{"cols"};
    Func input_16{"input_16"}, bounded_input{"bounded_input"};
};

HALIDE_REGISTER_GENERATOR(Gaussian3x3, gaussian3x3);