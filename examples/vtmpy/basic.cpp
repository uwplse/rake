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
        output(x) = cast(Int(16), input(x)) * 3 + cast(Int(16), input(x+1)) * 2 + cast(Int(16), input(x+2));
    }

    void schedule() {
        // Hexagon schedule.
        const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;

        output
            .hexagon()
            .vectorize(x, vector_size);
    }
};

HALIDE_REGISTER_GENERATOR(Gen_Vtmpy, basic)