#include "Halide.h"
#include "utils.h"

using namespace Halide;

using Halide::ConciseCasts::u8_sat;

class Gaussian7x7 : public Generator<Gaussian7x7> {
public:
    Input<Buffer<uint8_t>> input{"input", 2};
    Output<Buffer<uint8_t>> output{"output", 2};

    GeneratorParam<bool> use_parallel_sched{"use_parallel_sched", true};
    GeneratorParam<bool> use_prefetch_sched{"use_prefetch_sched", true};

    void generate() {
        input_16(x, y) = cast<int16_t>(input(x, y));

        rows(x, y) = input_16(x, y-3) + input_16(x, y-2) * 6 + input_16(x, y-1) * 15 + input_16(x, y) * 20 +
            input_16(x, y+1) * 15 + input_16(x, y+2) * 6 + input_16(x, y+3);

        rows_32(x, y) = cast<int32_t>(rows(x, y));
        
        cols(x,y) = rows_32(x-3, y) + rows_32(x-2, y) * 6 + rows_32(x-1, y) * 15 + rows_32(x, y) * 20 + rows_32(x+1, y) * 15 +
            rows_32(x+2, y) * 6 + rows_32(x+3, y);

        output(x, y)  = u8_sat(cols(x, y) >> 12);
    }

    void schedule() {
        Var xi{"xi"}, yi{"yi"}, yo{"yo"};

        input.dim(0).set_min(0);
        input.dim(1).set_min(0);

        output.dim(0).set_min(0);
        output.dim(1).set_min(0);

        if (get_target().has_feature(Target::HVX)) {
            const int vector_size = 128;
            Expr input_stride = input.dim(1).stride();
            input.dim(1).set_stride((input_stride/vector_size) * vector_size);

            Expr output_stride = output.dim(1).stride();
            output.dim(1).set_stride((output_stride/vector_size) * vector_size);

            output
                .hexagon()
                .prefetch(input, y, 2, PrefetchBoundStrategy::NonFaulting)
                .tile(x, y, xi, yi, vector_size, 4, TailStrategy::RoundUp)
                .vectorize(xi);
            rows.compute_at(Func(output), yi)
                .store_at(Func(output), y)
                .vectorize(x, 128)
                .align_storage(x, 128);
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
    Func input_16{ "input_16" }, rows_32{"rows_32"}, bounded_input{"bounded_input"};
};

HALIDE_REGISTER_GENERATOR(Gaussian7x7, gaussian7x7_sdk);