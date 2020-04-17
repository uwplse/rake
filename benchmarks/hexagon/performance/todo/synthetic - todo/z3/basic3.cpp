#include "Halide.h"

using namespace Halide;

class Gen_Vtmpy : public Generator<Gen_Vtmpy> {
public:
    Input<Buffer<uint8_t>> input{"input", 2};
    Output<Buffer<uint16_t>> output{"output", 2};

    void generate() {
        Func input_16{"input_16"};
        input_16(x, y) = cast<uint16_t>(input(x, y));
        output(x, y) = input_16(x, y - 1) + 2 * input_16(x, y) + input_16(x, y + 1);
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
    Func input16{"input16"};
};

HALIDE_REGISTER_GENERATOR(Gen_Vtmpy, basic3)

/*
(let t41 = ((output.s0.x.x*128) + ((input.stride.1*output.s0.y) + output.min.0)) in 
    
    (
        halide.hexagon.interleave.vh(
            halide.hexagon.add_2mpy.vub.vub.b.b(
                input[ramp(t41, 1, 128)], 
                input[ramp((t41 - input.stride.1), 1, 128)], 
                (int8)2, 
                (int8)1
            )
        ) 
        + 
        halide.hexagon.interleave.vh(
            halide.hexagon.zxt.vub(
                input[ramp((input.stride.1 + t41), 1, 128)]
            )
        )
    )
)
*/