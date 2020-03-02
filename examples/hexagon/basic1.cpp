/* 
 * Trivial vtmpy example
 */

#include "Halide.h"

class Gen_Vtmpy : public Halide::Generator<Gen_Vtmpy> {
public:
    Input<Buffer<uint8_t>> input{"input", 1};
    Output<Buffer<int16_t>> output1{"output1", 1};
    Output<Buffer<int32_t>> output2{"output2", 1};
    Output<Buffer<int32_t>> output3{"output3", 1};
    Output<Buffer<int32_t>> output4{"output4", 1};
    Output<Buffer<int32_t>> output5{"output5", 1};
    Output<Buffer<int32_t>> output6{"output6", 1};
    
    Var x;

    void generate() {
        Func input16("input16"), input32("input32");
        input16(x) = cast(Int(16), input(x));
        input32(x) = cast(Int(32), input(x));
        
        // Will not use vrmpy since output vec is not 32-bit
        output1(x) = input16(x) * 2 + input16(x+1) * 3 + input16(x+2) * 4 + input16(x+3) * 5;

        // Will use vrmpy since output vec is 32-bit
        output2(x) = input32(x) * 2 + input32(x+1) * 3 + input32(x+2) * 4 + input32(x+3) * 5;

        // Will not use vrmpy since we skip one index
        output3(x) = input32(x) * 2 + input32(x+1) * 3 + input32(x+3) * 5;

        // Interleaves 4 vectors instead of just generating a vector with stride 2
        output4(x) = input32(x) * 2 + input32(x+2) * 4 + input32(x+4) * 3 + input32(x+6) * 5;

        // Will use vrmpy
        output5(x) = input32(x) * 2 + input32(x+1) * 2 - input32(x+2) * 3 - input32(x+3) * 3;

        // Will not use vrmpy (pattern doesn't match)
        output6(x) = (input32(x) + input32(x+1)) * 2 - (input32(x+2) + input32(x+3)) * 3;
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
        output3
            .hexagon()
            .vectorize(x, vector_size);
        output4
            .hexagon()
            .vectorize(x, vector_size);
        output5
            .hexagon()
            .vectorize(x, vector_size);
        output6
            .hexagon()
            .vectorize(x, vector_size);
    }
};

HALIDE_REGISTER_GENERATOR(Gen_Vtmpy, basic1)