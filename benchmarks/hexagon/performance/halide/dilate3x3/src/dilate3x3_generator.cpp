#include "Halide.h"

using namespace Halide;

class Dilate3x3 : public Generator<Dilate3x3> {
public:
    // Takes an 8 bit image; one channel.
    Input<Buffer<uint8_t>> input{"input", 2};
    // Outputs an 8 bit image; one channel.
    Output<Buffer<uint8_t>> output{"output", 2};

    GeneratorParam<bool> use_parallel_sched{"use_parallel_sched", true};
    GeneratorParam<bool> use_prefetch_sched{"use_prefetch_sched", true};

    void generate() {
        Expr width = input.width();
        Expr height = input.height();
        bounded_input(x, y) = BoundaryConditions::repeat_edge(input, {{0, width}, {Expr(), Expr()}})(x, y);
        max_y(x, y) = max(bounded_input(x, clamp(y-1, 0, height-1)),
                          bounded_input(x, clamp(y, 0, height-1)), bounded_input(x, clamp(y+1, 0, height-1)));

        output(x, y) = max(max_y(x-1, y), max_y(x, y), max_y(x+1, y));
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
            output
                .hexagon()
                .split(y, yo, y, ht/2)
                .tile(x, y, xi, yi, vector_size, 4, TailStrategy::RoundUp)
                .vectorize(xi)
                .unroll(yi);
            bounded_input
                .compute_at(Func(output), y)
                .align_storage(x, 128)
                .vectorize(x, vector_size, TailStrategy::RoundUp);
            if (use_prefetch_sched) {
                output.prefetch(input, y, 2);
            }
            if (use_parallel_sched) {
                //output.split(y, yo, y, 128).parallel(yo);
                output.parallel(yo);
            }
            input.set_host_alignment(128);
            output.set_host_alignment(128);
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
    Func max_y{"max_y"};
    Func bounded_input{"bounded_input"};
};

HALIDE_REGISTER_GENERATOR(Dilate3x3, dilate3x3)
