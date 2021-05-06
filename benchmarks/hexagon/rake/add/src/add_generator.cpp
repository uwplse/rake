#include "Halide.h"
#include "../../hannk/common_halide.h"
#include "../../hannk/interpreter/elementwise_program.h"

using namespace Halide;
using namespace Halide::ConciseCasts;

namespace hannk {

class Add : public Generator<Add> {
public:
    // Input buffers and quantization parameters.
    Input<Buffer<uint8_t>> input1_{ "input1", 2 };
    Input<uint8_t> input1_zero_{ "input1_zero" };
    Input<int32_t> input1_multiplier_{ "input1_multiplier" };
    Input<uint32_t> input1_shift_{ "input1_shift" };

    Input<Buffer<uint8_t>> input2_{ "input2", 2 };
    Input<uint8_t> input2_zero_{ "input2_zero" };
    Input<int32_t> input2_multiplier_{ "input2_multiplier" };
    Input<uint32_t> input2_shift_{ "input2_shift" };

    // Offset, quantization multiplier and shift for the output.
    Input<uint8_t> output_zero_{ "output_zero" };
    Input<int32_t> output_multiplier_{ "output_multiplier" };
    Input<uint32_t> output_shift_{ "output_shift" };
    Input<uint8_t> output_min_{ "output_min" };
    Input<uint8_t> output_max_{ "output_max" };

    Output<Buffer<uint8_t>> output_{ "output", 2 };

    void generate() {
        Var x("x"), y("y");

        Expr input1 = i32(i16(input1_(x, y)) - i16(input1_zero_)) << 20;
        Expr input2 = i32(i16(input2_(x, y)) - i16(input2_zero_)) << 20;

        input1 = rounding_shift_right(multiply_2x_high(input1, input1_multiplier_), input1_shift_);
        input2 = rounding_shift_right(multiply_2x_high(input2, input2_multiplier_), input2_shift_);

        Expr output = multiply_2x_high(input1 + input2, output_multiplier_);
        output = i16_sat(rounding_shift_right(output, output_shift_));
        output = u8_sat(saturating_add(output, output_zero_));
        output_(x, y) = clamp(output, output_min_, output_max_);

        // Schedule.
        const int vector_size = natural_vector_size<uint8_t>();

        output_.compute_root()
            .vectorize(x, vector_size, TailStrategy::Predicate);

        // Support broadcasting in the c dimension for input2.
        input2_.dim(0).set_stride(Expr());
        output_.specialize(input2_.dim(0).stride() == 1);
        output_.specialize(input2_.dim(0).stride() == 0);
        output_.specialize_fail("input2 dimension 0 must have a stride of 0 or 1.");
    }
};

}  // namespace hannk

HALIDE_REGISTER_GENERATOR(hannk::Add, add)