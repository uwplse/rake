/* 
 * Trivial vtmpy example
 */

#include "Halide.h"

class Gen_Vtmpy : public Halide::Generator<Gen_Vtmpy> {
public:
    Input<Buffer<uint8_t>> input{"input", 1};
    Output<Buffer<int16_t>> output{"output", 1};
    Var x;

    void generate() {
        Func stage1("stage1");

        stage1(x) = cast(Int(16), input(x)) * 2 + cast(Int(16), input(x+1)) * 3 + cast(Int(16), input(x+2));
        output(x) = cast(Int(16), stage1(x)) * 4 + cast(Int(16), stage1(x+1)) * 5 + cast(Int(16), stage1(x+2));
    }

    void schedule() {
        // Hexagon schedule.
        const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;

        output
            .hexagon()
            .vectorize(x, vector_size);
    }
};

HALIDE_REGISTER_GENERATOR(Gen_Vtmpy, basic2)

/*

======================================================

// Original expression
(input(x) * 2 + input(x+1) * 3 + input(x+2)) * 4 + 
(input(x+1) * 2 + input(x+2) * 3 + input(x+3)) * 5 + 
(input(x+2) * 2 + input(x+3) * 3 + input(x+4))

// Found by rule-based system
input(x) * 8 +
input(x+1) * 10 + 
input(x+1) * 12 +
input(x+2) * 4 +
input(x+2) * 2 +
input(x+2) * 15
input(x+3) * 3 +
input(x+3) * 5 +
input(x+4) * 5

// Found by synthesizer
input(x) * 8 +
input(x+1) * 22 +
input(x+2) * 21 +
input(x+3) * 8 +
input(x+4)

======================================================
// With default flags

halide.hexagon.interleave.vh(
    halide.hexagon.acc_add_2mpy.vh.vub.vub.b.b(
        halide.hexagon.deinterleave.vh(
            (
                halide.hexagon.interleave.vh(
                    halide.hexagon.acc_add_2mpy.vh.vub.vub.b.b(
                        halide.hexagon.deinterleave.vh(
                            halide.hexagon.interleave.vh(
                                halide.hexagon.acc_add_2mpy.vh.vub.vub.b.b(
                                    halide.hexagon.deinterleave.vh(
                                        halide.hexagon.interleave.vh(
                                            halide.hexagon.add_2mpy.vub.vub.b.b(
                                                input[ramp((t66 + 2), 1, 128)], 
                                                input[ramp((t66 + 1), 1, 128)], 
                                                (int8)4, 
                                                (int8)10
                                            )
                                        )
                                    ), 
                                    input[ramp(t66, 1, 128)], 
                                    input[ramp((t66 + 1), 1, 128)], 
                                    (int8)8, 
                                    (int8)12
                                )
                            )
                        ), 
                        input[ramp((t66 + 3), 1, 128)], 
                        input[ramp((t66 + 2), 1, 128)], 
                        (int8)3, 
                        (int8)2
                    )
                ) 
                + 
                halide.hexagon.interleave.vh(
                    halide.hexagon.zxt.vub(
                        input[ramp((t66 + 4), 1, 128)]
                    )
                )
            )
        ), 
        input[ramp((t66 + 2), 1, 128)], 
        input[ramp((t66 + 3), 1, 128)], 
        (int8)15, 
        (int8)5
    )
)


5 interleave
4 deinterleave
3 acc_add_2mpy (add_mpy with accumulate)
1 add_2mpy (a[i] * b + b[i] * c)
1 zxt (zero extension. convert byte -> halfword and halfword -> word) (how is this different from casting?)
1 addition

======================================================
// With vtmpy on

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

======================================================
Rewrite-rule:-

(input(x) * c1 + input(x+1) * c2 + input(x+2)) * c3 + 
(input(x+1) * c1 + input(x+2) * c2 + input(x+3)) * c4 + 
(input(x+2) * c1 + input(x+3) * c2 + input(x+4))

==>

input(x) * (c1 * c3) +
input(x+1) * ((c2 * c3) + (c1 * c4)) +
input(x+2) * (c3 + (c2 * c4) + c1) +
input(x+3) * (c4 + c2) +
input(x+4)
*/