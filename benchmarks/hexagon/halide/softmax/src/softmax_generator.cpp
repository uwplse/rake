#include "Halide.h"
#include "common_halide.h"

using namespace Halide;
using namespace Halide::ConciseCasts;

namespace hannk {

class Softmax : public Generator<Softmax> {
public:
    Input<uint32_t> left_shift_{"left_shift"};

    Input<Buffer<uint8_t>> input_{"input", 2};
    Input<int32_t> beta_multiplier_{"beta_multiplier"};
    Input<uint32_t> beta_shift_{"beta_shift"};

    Input<uint8_t> output_zero_{"output_zero"};
    Input<int32_t> output_multiplier_{"output_multiplier"};
    Input<uint32_t> output_shift_{"output_shift"};
    Output<Buffer<uint8_t>> output_{"output", 2};

    void generate() {
        // The algorithm.
        Var x("x"), y("y");

        // On x86, this fixed point approximation is actually much slower
        // than just using floats, but producing identical results on all
        // targets is nice, and this op doesn't appear to be a significant
        // factor in overall performance.

        // Compute 2^input_(x, y) / sum(2^input_(rx, y)) by rewriting it
        // to 2^(input_(x, y) - max_x(y)) / sum(2^(input_(rx, y) - max_x(y)).
        // This makes it easier to compute in fixed point, because we know
        // that 2^x is less than 1.
        Func max_x("max_x");
        RDom rx(input_.dim(0).min(), input_.dim(0).extent());
        max_x(y) = u8(0);
        max_x(y) = max(max_x(y), input_(rx, y));

        Expr diff = i32(i16(input_(x, y)) - i16(max_x(y))) << left_shift_;
        Expr diff_beta = multiply_2x_high(diff, beta_multiplier_);

        // Since we know that diff_beta is less than 0, we can use the full
        // range of an integer for the fractional part.
        // TODO: Is our approx_exp2 precise enough for this op?
        const int exp_precision = 16;
        Func exp2_diff("exp2_diff");
        exp2_diff(x, y) =
            u16_sat(approx_exp2(diff_beta, beta_shift_, exp_precision));

        // This could overflow if there are more than 2^16 values of x.
        Func sum_exp_row("sum_exp_row");
        sum_exp_row(y) += u32(exp2_diff(rx, y));

        // Below, we compute exp2_diff * inv_sum_exp_row / 31, so we need to
        // multiply by 2^(exp_precision + 31) to get a result of the correct
        // quantization. This doesn't overflow because we know the sum
        // is greater than or equal to 2^0*2^exp_precision, because we
        // subtracted the max from the input.
        // TODO: Maybe it's worth avoiding this (scalar) division on some
        // targets, maybe Newton's method?
        Func inv_sum_exp_row("inv_sum_exp_row");
        Expr numerator = cast<uint64_t>(1) << (exp_precision + 31);
        inv_sum_exp_row(y) =
            i32_sat((numerator + sum_exp_row(y) / 2) / sum_exp_row(y));

        Expr output = multiply_2x_high(i32(exp2_diff(x, y)), inv_sum_exp_row(y));
        output = multiply_quantized(output, output_multiplier_, output_shift_);
        output = saturating_add(i16_sat(output), output_zero_);
        output_(x, y) = u8_sat(output);

        // Schedule.
        // TODO: This schedule has very little ILP, but the extent of y
        // is often 1.
        const int vector_size = natural_vector_size<uint8_t>();

        output_.vectorize(x, vector_size, TailStrategy::GuardWithIf);

        max_x.compute_at(output_, y)
            .update()
            .atomic()
            .vectorize(rx, vector_size, TailStrategy::GuardWithIf);

        sum_exp_row.compute_at(output_, y)
            .update()
            .atomic()
            .vectorize(rx, vector_size, TailStrategy::GuardWithIf);

        inv_sum_exp_row.compute_at(output_, y);
    }
};

}  // namespace hannk

HALIDE_REGISTER_GENERATOR(hannk::Softmax, softmax)