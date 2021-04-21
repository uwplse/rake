// A collection of utility functions shared by the halide generators.

#ifndef HANNK_COMMON_HALIDE_H
#define HANNK_COMMON_HALIDE_H

#include "Halide.h"

using namespace Halide;
using namespace Halide::ConciseCasts;

namespace hannk {

    using Halide::Internal::rounding_shift_right;
    using Halide::Internal::saturating_add;
    using Halide::Internal::saturating_sub;
    using Halide::Internal::widening_add;
    using Halide::Internal::widening_mul;
    using Halide::Internal::widening_sub;

    // Get the number of vector registers available on the target.
    int get_register_count(const Halide::Target& target) {
        switch (target.arch) {
        case Target::X86:
            return target.has_feature(Target::AVX512_Skylake) ? 32 : 16;
        case Target::ARM:
            return target.bits == 64 ? 32 : 16;
        case Target::Hexagon:
            return 32;
        default:
            return 16;
        }
    }

    // A tensor has the same requirements as a buffer in Halide by default, except
    // the min of the innermost dimension must also be 0.
    void interpret_as_tensor(Halide::OutputImageParam p) {
        p.dim(0).set_stride(1).set_min(0);
    }

    // Require dimension dim have the same min and extent.
    void require_same_min_extent(int dim, Halide::OutputImageParam first, Halide::OutputImageParam second) {
        second.dim(dim).set_min(first.dim(dim).min());
        second.dim(dim).set_extent(first.dim(dim).extent());
    }

    Halide::Expr is_interleaved(Halide::OutputImageParam p, int channels) {
        return p.dim(0).min() == 0 &&
            p.dim(0).extent() == channels &&
            p.dim(1).stride() == channels;
    }

    // Round x down or up to the nearest multiple of n.
    Halide::Expr align_down(const Halide::Expr& x, const Halide::Expr& n) {
        return (x / n) * n;
    }

    Halide::Expr align_up(const Halide::Expr& x, const Halide::Expr& n) {
        return ((x + n - 1) / n) * n;
    }

    Halide::Expr align(const Halide::Expr& x, const Halide::Expr& n) {
        return align_down(x, n);
    }


    // This function implements the same computation as the ARMv7 NEON VQRDMULH
    // instruction.
    Halide::Expr multiply_2x_high(const Halide::Expr& a, const Halide::Expr& b) {
        Type t = a.type().bits() > b.type().bits() ? a.type() : b.type();
        Expr ab_wide = widening_mul(a, b);
        // In Halide, integer division rounds to negative infinity, so division by a
        // power of two is the same as a shift (unlike C).
        // TODO: Using rounding_shift_right here doesn't generate qrdmulh :(
        int nudge = 1 << (t.bits() - 2);
        Expr result = (ab_wide + nudge) >> (t.bits() - 1);
        return saturating_cast(t, result);
    }

    // Performs right shift and multiply by a multiplier. Aims to be very close to
    // tflite's reference implementation. However, tflite is standardizing on left
    // (exponent-like) shifts.
    Halide::Expr multiply_quantized(
        const Halide::Expr& x, const Halide::Expr& quantized_multiplier, const Halide::Expr& shift) {
        return rounding_shift_right(multiply_2x_high(x, quantized_multiplier), shift);
    }

    // Approximately compute log2(x)*2^log2_precision.
    Halide::Expr approx_log2(const Halide::Expr& x, int log2_precision) {
        int precision = 1 << log2_precision;

        //   floor(log2(x)) = B - clz(x) => log2(x) ~ B - clz(x)
        //   B = sizeof(x)*8 - 1
        //   clz(x) = count_leading_zeros(x)
        int log2_max_x = x.type().bits() - 1;
        Expr floor_log2 = log2_max_x - i16(count_leading_zeros(x));

        // Use the bits after the leading bit to linearly interpolate to the next
        // power of 2. In other words, we want the slope of the line between
        // floor(log2(x)) and floor(log2(x)) + 1.
        Expr frac = cast<int>((x >> (floor_log2 - log2_precision)) % precision);

        // For x <= 0, return any negative value. If count_leading_zeros returns
        // x.type().bits(), which appears to be the case on every platform we
        // target, both sides of this select are the same (if log2_precision = 0).
        return select(x > 0, precision * cast<int>(floor_log2) + frac, cast<int>(-1));
    }

    // Approximately compute (2^(x>>log2_precision_x))<<log2_precision_result.
    // This approximation is a piecewise linear curve passing through each exact
    // power of 2.
    Halide::Expr approx_exp2(const Halide::Expr& x, const Halide::Expr& log2_precision_x, int log2_precision_result) {
        Expr precision_x = 1 << log2_precision_x;

        // Compute floor(x / precision_x) and frac(x / precision_x)
        Expr floor_x = clamp(x >> log2_precision_x, -31, 31);
        Expr frac_x = x - (floor_x << log2_precision_x);

        // Compute 2^floor(x / precision_x)*precision_result
        Expr exp_floor_x = (1 << log2_precision_result) << floor_x;

        // Linearly interpolate to the next power of 2 using frac_x.
        return exp_floor_x + multiply_2x_high(exp_floor_x, frac_x << (31 - log2_precision_x));
    }

}  // namespace hannk

#endif  // HANNK_COMMON_HALIDE_H