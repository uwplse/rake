#include "Halide.h"
#include "utils.h"

using namespace Halide;

using Halide::ConciseCasts::u8_sat;

class Gaussian7x7 : public Generator<Gaussian7x7> {
public:
    Input<Buffer<uint8_t>> input{"input", 2};
    Output<Buffer<uint8_t>> output{"output", 2};

    GeneratorParam<bool> use_prefetch_sched{"use_prefetch_sched", true};

    void generate() {
        input_32(x, y) = cast<int32_t>(input(x, y));

        rows(x, y) = input_32(x, y-3) + input_32(x, y-2) * 6 + input_32(x, y-1) * 15 + input_32(x, y) * 20 + 
                        input_32(x, y+1) * 15 + input_32(x, y+2) * 6 + input_32(x, y+3);
        
        cols(x,y) =  rows(x-3, y) + rows(x-2, y) * 6 + rows(x-1, y) * 15 + rows(x, y) * 20 + rows(x+1, y) * 15 + 
                        rows(x+2, y) * 6 + rows(x+3, y);

        output(x, y)  = u8_sat(cols(x, y) >> 12);

        /*cols(x, y) = input_32(x-3, y) + input_32(x-2, y) * 6 + input_32(x-1, y) * 15 + input_32(x, y) * 20 + 
                        input_32(x+1, y) * 15 + input_32(x+2, y) * 6 + input_32(x+3, y);
        
        rows(x,y) =  cols(x, y-3) + cols(x, y-2) * 6 + cols(x, y-1) * 15 + cols(x, y) * 20 + cols(x, y+1) * 15 + 
                        cols(x, y+2) * 6 + cols(x, y+3);

        output(x, y)  = u8_sat(rows(x, y) >> 12);*/
    }

    void schedule() {
        Var xi{"xi"}, yi{"yi"}, yo{"yo"};

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

            // HALIDE: 0.7818 cycles/pixel
            // SDK :   0.2593 cyckes/pixel
            output
                .hexagon()
                .tile(x, y, xi, yi, vector_size, 4, TailStrategy::RoundUp)
                .vectorize(xi)
                .unroll(yi);
            rows.compute_at(Func(output), y)
                .tile(x, y, x, y, xi, yi, vector_size, 4, TailStrategy::RoundUp)
                .vectorize(xi)
                .unroll(yi);
            
            output.prefetch(input, y, 2, PrefetchBoundStrategy::NonFaulting);
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
    Func input_32{"input_32"}, bounded_input{"bounded_input"};
};

HALIDE_REGISTER_GENERATOR(Gaussian7x7, gaussian7x7);