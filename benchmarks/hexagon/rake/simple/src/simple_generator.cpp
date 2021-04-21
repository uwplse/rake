#include "Halide.h"
#include "utils.h"

using namespace Halide;

class Simple : public Generator<Simple> {
public:
    Input<Buffer<int16_t>> input{"input", 2};
    Output<Buffer<int16_t>> output{"output", 2};

    GeneratorParam<bool> use_prefetch_sched{"use_prefetch_sched", true};

    void generate() {
        output(x,y) =  input(x-2, y) + 4*input(x-1, y) + 6*input(x, y) + 4*input(x+1, y) + input(x+2, y);
    }

    void schedule() {
        Var xi{"xi"}, yi{"yi"}, yo{"yo"};

        input.dim(0).set_min(0);
        input.dim(1).set_min(0);

        output.dim(0).set_min(0);
        output.dim(1).set_min(0);

        if (get_target().features_any_of({Target::HVX})) {
            const int vector_size = 64;
            Expr input_stride = input.dim(1).stride();
            input.dim(1).set_stride((input_stride/vector_size) * vector_size);

            Expr output_stride = output.dim(1).stride();
            output.dim(1).set_stride((output_stride/vector_size) * vector_size);

            Expr ht = output.dim(1).extent();

            output
                .hexagon()
                .tile(x, y, xi, yi, vector_size, 4, TailStrategy::RoundUp)
                .vectorize(xi);
                //.unroll(yi);

            output.prefetch(input, y, 1, PrefetchBoundStrategy::NonFaulting);
        } else {
            const int vector_size = natural_vector_size<uint8_t>();
            output
                .vectorize(x, vector_size)
                .parallel(y, 16);
        }
    }
private:
    Var x{"x"}, y{"y"};
};

HALIDE_REGISTER_GENERATOR(Simple, simple);