/* 
 * Trivial vtmpy example
 */

#include "Halide.h"

class Gen_Vtmpy : public Halide::Generator<Gen_Vtmpy> {
public:
    Input<Buffer<uint8_t>> input{"input", 1};
    Output<Buffer<int16_t>> output1{"output1", 1};
    Output<Buffer<int16_t>> output2{"output2", 1};
    
    Var x;

    void generate() {
        Func input16("input16");
        input16(x) = cast(Int(16), input(x));
        
        // Gets mapped to vtmpy
        output1(x) = input16(x) * 2 + input16(x+1) * 3 + input16(x+2);

        // Does not get mapped to vtmpy, since Halide rewrites the
        // expression a*2 + b*2 to (a + b) * 2 -- which no longer matches pattern
        output2(x) = input16(x) * 2 + input16(x+1) * 2 + input16(x+2);
    }

    void schedule() {
        // Hexagon schedule.
        const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;
        output1
            .hexagon()
            .vectorize(x, vector_size);
        output2
            .hexagon()
            .vectorize(x, vector_size);
    }
};

HALIDE_REGISTER_GENERATOR(Gen_Vtmpy, basic1)

/*
// Output 1
(let t59 = ((output1.s0.x.x*128) + (output1.min.0 - input.min.0)) in 
    halide.hexagon.interleave.vh(
        halide.hexagon.vtmpy.vub.vub.b.b(
            input[ramp(t59, 1, 128)], 
            input[ramp((t59 + 2), 1, 128)], 
            (int8)2, 
            (int8)3
        )
    )
)

// Output 2
(let t60 = ((output2.s0.x.x*128) + (output2.min.0 - input.min.0)) in 
    halide.hexagon.interleave.vh(
    halide.hexagon.acc_add_2mpy.vh.vub.vub.b.b(
        halide.hexagon.deinterleave.vh(
            halide.hexagon.interleave.vh(
                halide.hexagon.zxt.vub(input[ramp((t60 + 2), 1, 128)])
            )
        ), 
        input[ramp(t60, 1, 128)], 
        input[ramp((t60 + 1), 1, 128)], 
        (int8)2, 
        (int8)2)
    )
)
*/