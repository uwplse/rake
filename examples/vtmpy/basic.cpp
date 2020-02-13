/* 
 * Trivial vtmpy example
 */

#include "Halide.h"

class Gen_Vtmpy : public Halide::Generator<Gen_Vtmpy> {
public:
    Input<Buffer<uint8_t>> input{"input", 1};
    Output<Buffer<int16_t>> output{"output", 1};

    Var x;
    Func stage1("stage1"), stage2("stage2"), stage3("stage3"), stage4("stage4");

    void generate() {
        stage1(x) = cast(Int(16), input(x)) * 2 + cast(Int(16), input(x+1)) * 3 + cast(Int(16), input(x+2));
        output(x) = cast(Int(16), stage1(x)) * 4 + cast(Int(16), stage1(x+1)) * 5 + cast(Int(16), stage1(x+2));
    }

    void schedule() {
        // Hexagon schedule.
        const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;

        stage1
            .hexagon()
            .vectorize(x, vector_size);

        output
            .hexagon()
            .vectorize(x, vector_size);
    }
};

HALIDE_REGISTER_GENERATOR(Gen_Vtmpy, basic)

/*
(input(x) * c1 + input(x+1) * c2 + input(x+2)) * c3 + 
(input(x+1) * c1 + input(x+2) * c2 + input(x+3)) * c4 + 
(input(x+2) * c1 + input(x+3) * c2 + input(x+4))

(
    halide.hexagon.interleave.vh(
        halide.hexagon.vtmpy.vub.vub.b.b(
            input[ramp((((output.s0.x.x*128) + t51) + 2), 1, 128)], 
            input[ramp((((output.s0.x.x*128) + t51) + 4), 1, 128)], 
            (int8)3, 
            (int8)2
        )
    ) 
    +
    (
        (
            halide.hexagon.interleave.vh(
                halide.hexagon.vtmpy.vub.vub.b.b(
                    input[ramp(((output.s0.x.x*128) + t51), 1, 128)], 
                    input[ramp((((output.s0.x.x*128) + t51) + 2), 1, 128)], 
                    (int8)3, 
                    (int8)2
                )
            )
            *
            x128((int16)3)
        ) 
        + 
        (
            halide.hexagon.interleave.vh(
                halide.hexagon.vtmpy.vub.vub.b.b(
                    input[ramp((((output.s0.x.x*128) + t51) + 1), 1, 128)], 
                    input[ramp((((output.s0.x.x*128) + t51) + 3), 1, 128)], 
                    (int8)3, 
                    (int8)2
                )
            )
            *
            x128((int16)2)
        )
    )
)

input(x) * (c1 * c3) +
input(x+1) * ((c2 * c3) + (c1 * c4)) +
input(x+2) * (c3 + (c2 * c4) + c1) +
input(x+3) * (c4 + c2) +
input(x+4)

*/