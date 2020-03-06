/* 
 * Trivial vtmpy example
 */

#include "Halide.h"

class Gen_Basic1 : public Halide::Generator<Gen_Basic1> {
public:
    Input<Buffer<uint8_t>> input{"input", 1};
    Output<Buffer<int16_t>> output{"output", 1};
    Var x;

    void generate() {
        // Will not use vrmpy since output vec is not 32-bit
        Func input16("input16");
        input16(x) = cast(Int(16), input(x));
        output(x) = input16(x) * 2 + input16(x+1) * 3 + input16(x+2) * 4 + input16(x+3) * 5;
    }

    void schedule() {
        // Hexagon schedule.
        if (get_target().features_any_of({Target::HVX_64, Target::HVX_128})) {
            const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;
            output
                .hexagon()
                .vectorize(x, vector_size);
        }

        // Results:
        // Scalar:          1406000 cycles
        // Halide:            33000 cycles
        // Halide + Rake:   
    }
};
HALIDE_REGISTER_GENERATOR(Gen_Basic1, basic1)

class Gen_Basic2 : public Halide::Generator<Gen_Basic2> {
public:
    Input<Buffer<uint8_t>> input{"input", 1};
    Output<Buffer<int32_t>> output{"output", 1};
    
    Var x;

    void generate() {
        // Will use vrmpy since output vec is 32-bit
        Func input32("input32");
        input32(x) = cast(Int(32), input(x));
        output(x) = input32(x) * 2 + input32(x+1) * 3 + input32(x+2) * 4 + input32(x+3) * 5;
    }

    void schedule() {
        // Hexagon schedule.
        const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;
        output
            .hexagon()
            .vectorize(x, vector_size);
    }
};
HALIDE_REGISTER_GENERATOR(Gen_Basic2, basic2)

class Gen_Basic3 : public Halide::Generator<Gen_Basic3> {
public:
    Input<Buffer<uint8_t>> input{"input", 1};
    Output<Buffer<int32_t>> output{"output", 1};
    
    Var x;

    void generate() {
        // Will not use vrmpy since we skip one index
        Func input32("input32");
        input32(x) = cast(Int(32), input(x));
        output(x) = input32(x) * 2 + input32(x+1) * 3 + input32(x+3) * 5;
    }

    void schedule() {
        // Hexagon schedule.
        const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;
        output
            .hexagon()
            .vectorize(x, vector_size);
    }
};
HALIDE_REGISTER_GENERATOR(Gen_Basic3, basic3)

class Gen_Basic4 : public Halide::Generator<Gen_Basic4> {
public:
    Input<Buffer<uint8_t>> input{"input", 1};
    Output<Buffer<int32_t>> output{"output", 1};
    
    Var x;

    void generate() {
        // Interleaves 4 vectors instead of just generating a vector with stride 2
        Func input32("input32");
        input32(x) = cast(Int(32), input(x));
        output(x) = input32(x) * 2 + input32(x+2) * 4 + input32(x+4) * 3 + input32(x+6) * 5;
    }

    void schedule() {
        // Hexagon schedule.
        const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;
        output
            .hexagon()
            .vectorize(x, vector_size);
    }
};
HALIDE_REGISTER_GENERATOR(Gen_Basic4, basic4)

class Gen_Basic5 : public Halide::Generator<Gen_Basic5> {
public:
    Input<Buffer<uint8_t>> input{"input", 1};
    Output<Buffer<int32_t>> output{"output", 1};
    
    Var x;

    void generate() {
        // Will use vrmpy
        Func input32("input32");
        input32(x) = cast(Int(32), input(x));
        output(x) = input32(x) * 2 + input32(x+1) * 2 - input32(x+2) * 3 - input32(x+3) * 3;
    }

    void schedule() {
        // Hexagon schedule.
        const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;
        output
            .hexagon()
            .vectorize(x, vector_size);
    }
};
HALIDE_REGISTER_GENERATOR(Gen_Basic5, basic5)

class Gen_Basic6 : public Halide::Generator<Gen_Basic6> {
public:
    Input<Buffer<uint8_t>> input{"input", 1};
    Output<Buffer<int32_t>> output{"output", 1};
    
    Var x;

    void generate() {
        // Will not use vrmpy (pattern doesn't match)
        Func input32("input32");
        input32(x) = cast(Int(32), input(x));
        output(x) = (input32(x) + input32(x+1)) * 2 - (input32(x+2) + input32(x+3)) * 3;
    }

    void schedule() {
        // Hexagon schedule.
        const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;
        output
            .hexagon()
            .vectorize(x, vector_size);
    }
};
HALIDE_REGISTER_GENERATOR(Gen_Basic6, basic6)

class Gen_Basic7 : public Halide::Generator<Gen_Basic7> {
public:
    Input<Buffer<uint8_t>> input{"input", 1};
    Output<Buffer<int16_t>> output{"output", 1};
    Var x;

    void generate() {
        Func stage1("stage1");
        Func input32("input32");
        input32(x) = cast(Int(32), input(x));
        Func input16("input16");
        input16(x) = cast(Int(16), input(x));
        
        /* Case 1: Output type is int16 */

        // 40000 cycles (Halide default)
        // OR 782000 cycles with 20x larger input
        //stage1(x) = input16(x) * 2 + input16(x+1) * 3 + input16(x+2);
        //output(x) = stage1(x) * 4 + stage1(x+1) * 5 + stage1(x+2);

        // 39000 cycles (Synthesizer infers simplified expression)
        // OR 757000 cycles with 20x larger input
        output(x) = input16(x) * 8 + input16(x+1) * 22 + input16(x+2) * 21 + input16(x+3) * 8 + input16(x+4);
    }

    void schedule() {
        // Hexagon schedule.
        const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;

        output
            .hexagon()
            .vectorize(x, vector_size);
    }
};
HALIDE_REGISTER_GENERATOR(Gen_Basic7, basic7)

class Gen_Basic8 : public Halide::Generator<Gen_Basic8> {
public:
    Input<Buffer<uint8_t>> input{"input", 1};
    Output<Buffer<int32_t>> output{"output", 1};
    
    Var x;
    Func stage1{"stage1"};
    Func input16{"input16"};
    Func input32{"input32"};

    void generate() {
        input32(x) = cast(Int(32), input(x));
        input16(x) = cast(Int(16), input(x));
        
        /* Case 2: Output type is int32 */

        // 91000 cycles (Halide default)
        // OR 1807000 cycles with 20x larger input
        //stage1(x) = input32(x) * 2 + input32(x+1) * 3 + input32(x+2);
        //output(x) = stage1(x) * 4 + stage1(x+1) * 5 + stage1(x+2);

        // 64000 cycles (Synthesizer infers that computation can be done in smaller type)
        //stage1(x) = input16(x) * 2 + input16(x+1) * 3 + input16(x+2);
        //output(x) = cast(Int(32), stage1(x) * 4 + stage1(x+1) * 5 + stage1(x+2));

        // 72000 cycles (Synthesizer infers simplified expression)
        //output(x) = input32(x) * 8 + input32(x+1) * 22 + input32(x+2) * 21 + input32(x+3) * 8 + input32(x+4);

        // 50000 cycles (final optimized rewrite)
        // OR 977000 cycles with 20x larger input
        output(x) = cast(Int(32), input16(x) * 8 + input16(x+1) * 22 + input16(x+2) * 21 + input16(x+3) * 8 + input16(x+4));
    }

    void schedule() {
        // Hexagon schedule.
        const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;

        output
            .hexagon()
            .vectorize(x, vector_size);
    }
};

HALIDE_REGISTER_GENERATOR(Gen_Basic8, basic8)