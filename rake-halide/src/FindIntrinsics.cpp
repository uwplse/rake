#include "FindIntrinsics.h"
#include "CodeGen_Internal.h"
#include "ConciseCasts.h"
#include "IRMatch.h"
#include "IRMutator.h"
#include "Simplify.h"

namespace Halide {
namespace Internal {

using namespace Halide::ConciseCasts;

namespace {

bool find_intrinsics_for_type(const Type &t) {
    // Currently, we only try to find and replace intrinsics for vector types that aren't bools.
    return t.is_vector() && t.bits() >= 8;
}

Expr widen(Expr a) {
    Type result_type = a.type().widen();
    return Cast::make(result_type, std::move(a));
}

Expr narrow(Expr a) {
    Type result_type = a.type().narrow();
    return Cast::make(result_type, std::move(a));
}

Expr lossless_narrow(const Expr &x) {
    return lossless_cast(x.type().narrow(), x);
}

// Remove a widening cast even if it changes the sign of the result.
Expr strip_widening_cast(const Expr &x) {
    Expr narrow = lossless_narrow(x);
    if (narrow.defined()) {
        return narrow;
    }
    return lossless_cast(x.type().narrow().with_code(halide_type_uint), x);
}

Expr saturating_narrow(const Expr &a) {
    Type narrow = a.type().narrow();
    return saturating_cast(narrow, a);
}

// Returns true iff t is an integral type where overflow is undefined
bool no_overflow_int(Type t) {
    return t.is_int() && t.bits() >= 32;
}

// Returns true iff t does not have a well defined overflow behavior.
bool no_overflow(Type t) {
    return t.is_float() || no_overflow_int(t);
}

// If there's a widening add or subtract in the first e.type().bits() / 2 - 1
// levels down a tree of adds or subtracts, we know there's enough headroom for
// another add without overflow. For example, it is safe to add to
// (widening_add(x, y) - z) without overflow.
bool is_safe_for_add(const Expr &e, int max_depth) {
    if (max_depth-- <= 0) {
        return false;
    }
    if (const Add *add = e.as<Add>()) {
        return is_safe_for_add(add->a, max_depth) || is_safe_for_add(add->b, max_depth);
    } else if (const Sub *sub = e.as<Sub>()) {
        return is_safe_for_add(sub->a, max_depth) || is_safe_for_add(sub->b, max_depth);
    } else if (const Cast *cast = e.as<Cast>()) {
        if (cast->type.bits() > cast->value.type().bits()) {
            return true;
        } else if (cast->type.bits() == cast->value.type().bits()) {
            return is_safe_for_add(cast->value, max_depth);
        }
    } else if (Call::as_intrinsic(e, {Call::widening_add, Call::widening_sub})) {
        return true;
    }
    return false;
}

bool is_safe_for_add(const Expr &e) {
    return is_safe_for_add(e, e.type().bits() / 2 - 1);
}

// We want to find and remove an add of 'round' from e. This is not
// the same thing as just subtracting round, we specifically want
// to remove an addition of exactly round.
Expr find_and_subtract(const Expr &e, const Expr &round) {
    if (const Add *add = e.as<Add>()) {
        Expr a = find_and_subtract(add->a, round);
        if (a.defined()) {
            return Add::make(a, add->b);
        }
        Expr b = find_and_subtract(add->b, round);
        if (b.defined()) {
            return Add::make(add->a, b);
        }
    } else if (const Sub *sub = e.as<Sub>()) {
        Expr a = find_and_subtract(sub->a, round);
        if (a.defined()) {
            return Sub::make(a, sub->b);
        }
        // We can't recurse into the negatve part of a subtract.
    } else if (can_prove(e == round)) {
        return make_zero(e.type());
    }
    return Expr();
}

Expr to_rounding_shift(const Call *c) {
    if (c->is_intrinsic(Call::shift_left) || c->is_intrinsic(Call::shift_right)) {
        internal_assert(c->args.size() == 2);
        Expr a = c->args[0];
        Expr b = c->args[1];

        // Helper to make the appropriate shift.
        auto rounding_shift = [&](const Expr &a, const Expr &b) {
            if (c->is_intrinsic(Call::shift_right)) {
                return rounding_shift_right(a, b);
            } else {
                return rounding_shift_left(a, b);
            }
        };

        // The rounding offset for the shift we have.
        Type round_type = a.type().with_lanes(1);
        if (Call::as_intrinsic(a, {Call::widening_add})) {
            round_type = round_type.narrow();
        }
        Expr round;
        if (c->is_intrinsic(Call::shift_right)) {
            round = simplify((make_one(round_type) << max(cast(b.type().with_bits(round_type.bits()), b), 0)) / 2);
        } else {
            round = simplify((make_one(round_type) >> min(cast(b.type().with_bits(round_type.bits()), b), 0)) / 2);
        }

        // We can always handle widening adds.
        if (const Call *add = Call::as_intrinsic(a, {Call::widening_add})) {
            if (can_prove(lower_intrinsics(add->args[0]) == round)) {
                return rounding_shift(cast(add->type, add->args[1]), b);
            } else if (can_prove(lower_intrinsics(add->args[1]) == round)) {
                return rounding_shift(cast(add->type, add->args[0]), b);
            }
        }

        // If it wasn't a widening or saturating add, we might still
        // be able to safely accept the rounding.
        Expr a_less_round = find_and_subtract(a, round);
        if (a_less_round.defined()) {
            // We found and removed the rounding. However, we may have just changed
            // behavior due to overflow. This is still safe if the type is not
            // overflowing, or we can find a widening add or subtract in the tree
            // of adds/subtracts. This is a common pattern, e.g.
            // rounding_halving_add(a, b) = shift_round(widening_add(a, b) + 1, 1).
            // TODO: This could be done with bounds inference instead of this hack
            // if it supported intrinsics like widening_add and tracked bounds for
            // types other than int32.
            if (no_overflow(a.type()) || is_safe_for_add(a_less_round)) {
                return rounding_shift(simplify(a_less_round), b);
            }
        }
    }

    return Expr();
}

class FindIntrinsics : public IRMutator {
protected:
    using IRMutator::visit;

    IRMatcher::Wild<0> x;
    IRMatcher::Wild<1> y;
    IRMatcher::Wild<2> z;
    IRMatcher::WildConst<0> c0;

    Expr visit(const Add *op) override {
        if (!find_intrinsics_for_type(op->type)) {
            return IRMutator::visit(op);
        }

        Expr a = mutate(op->a);
        Expr b = mutate(op->b);

        // Try widening both from the same signedness as the result, and from uint.
        for (halide_type_code_t code : {op->type.code(), halide_type_uint}) {
            Type narrow = op->type.narrow().with_code(code);
            Expr narrow_a = lossless_cast(narrow, a);
            Expr narrow_b = lossless_cast(narrow, b);

            if (narrow_a.defined() && narrow_b.defined()) {
                Expr result = widening_add(narrow_a, narrow_b);
                if (result.type() != op->type) {
                    result = Cast::make(op->type, result);
                }
                return mutate(result);
            }
        }

        if (a.same_as(op->a) && b.same_as(op->b)) {
            return op;
        } else {
            return Add::make(a, b);
        }
    }

    Expr visit(const Sub *op) override {
        if (!find_intrinsics_for_type(op->type)) {
            return IRMutator::visit(op);
        }

        Expr a = mutate(op->a);
        Expr b = mutate(op->b);

        // Try widening both from the same type as the result, and from uint.
        for (halide_type_code_t code : {op->type.code(), halide_type_uint}) {
            Type narrow = op->type.narrow().with_code(code);
            Expr narrow_a = lossless_cast(narrow, a);
            Expr narrow_b = lossless_cast(narrow, b);

            if (narrow_a.defined() && narrow_b.defined()) {
                Expr negative_narrow_b = lossless_negate(narrow_b);
                Expr result;
                if (negative_narrow_b.defined()) {
                    result = widening_add(narrow_a, negative_narrow_b);
                } else {
                    result = widening_sub(narrow_a, narrow_b);
                }
                if (result.type() != op->type) {
                    result = Cast::make(op->type, result);
                }
                return mutate(result);
            }
        }

        Expr negative_b = lossless_negate(b);
        if (negative_b.defined()) {
            return Add::make(a, negative_b);
        }

        if (a.same_as(op->a) && b.same_as(op->b)) {
            return op;
        } else {
            return Sub::make(a, b);
        }
    }

    Expr visit(const Mul *op) override {
        if (!find_intrinsics_for_type(op->type)) {
            return IRMutator::visit(op);
        }

        if (as_const_int(op->b) || as_const_uint(op->b)) {
            // Distribute constants through add/sub. Do this before we muck everything up with widening
            // intrinsics.
            // TODO: Only do this for widening?
            // TODO: Try to do this with IRMatcher::rewriter. The challenge is managing the narrowing/widening casts,
            // and doing constant folding without the simplifier undoing the work.
            if (const Add *add_a = op->a.as<Add>()) {
                return mutate(Add::make(simplify(Mul::make(add_a->a, op->b)), simplify(Mul::make(add_a->b, op->b))));
            } else if (const Sub *sub_a = op->a.as<Sub>()) {
                return mutate(Sub::make(simplify(Mul::make(sub_a->a, op->b)), simplify(Mul::make(sub_a->b, op->b))));
            }
        }

        Expr a = mutate(op->a);
        Expr b = mutate(op->b);

        // Rewrite multiplies to shifts if possible.
        if (op->type.is_int() || op->type.is_uint()) {
            int pow2 = 0;
            if (is_const_power_of_two_integer(a, &pow2)) {
                return mutate(b << cast(UInt(b.type().bits()), pow2));
            } else if (is_const_power_of_two_integer(b, &pow2)) {
                return mutate(a << cast(UInt(a.type().bits()), pow2));
            }
        }

        // We're applying this to float, which seems OK? float16 * float16 -> float32 is a widening multiply?
        // This uses strip_widening_cast to ignore the signedness of the narrow value.
        Expr narrow_a = strip_widening_cast(a);
        Expr narrow_b = strip_widening_cast(b);
        if (narrow_a.defined() && narrow_b.defined() &&
            (narrow_a.type().is_int_or_uint() == narrow_b.type().is_int_or_uint() ||
             narrow_a.type().is_float() == narrow_b.type().is_float())) {
            Expr result = widening_mul(narrow_a, narrow_b);
            if (result.type() != op->type) {
                result = Cast::make(op->type, result);
            }
            return mutate(result);
        }

        if (a.same_as(op->a) && b.same_as(op->b)) {
            return op;
        } else {
            return Mul::make(a, b);
        }
    }

    Expr visit(const Div *op) override {
        if (!find_intrinsics_for_type(op->type)) {
            return IRMutator::visit(op);
        }

        Expr a = mutate(op->a);
        Expr b = mutate(op->b);

        int shift_amount;
        if (is_const_power_of_two_integer(b, &shift_amount) && op->type.is_int_or_uint()) {
            return mutate(a >> make_const(UInt(a.type().bits()), shift_amount));
        }

        if (a.same_as(op->a) && b.same_as(op->b)) {
            return op;
        } else {
            return Div::make(a, b);
        }
    }

    // We don't handle Mod because we don't have any patterns that look for bitwise and vs.
    // mod.

    template<class MinOrMax>
    Expr visit_min_or_max(const MinOrMax *op) {
        if (!find_intrinsics_for_type(op->type)) {
            return IRMutator::visit(op);
        }

        Expr a = mutate(op->a);
        Expr b = mutate(op->b);

        if (const Cast *cast_a = a.as<Cast>()) {
            Expr cast_b = lossless_cast(cast_a->value.type(), b);
            if (cast_a->type.can_represent(cast_a->value.type()) && cast_b.defined()) {
                // This is a widening cast that can be moved outside the min.
                return mutate(Cast::make(cast_a->type, MinOrMax::make(cast_a->value, cast_b)));
            }
        }
        if (a.same_as(op->a) && b.same_as(op->b)) {
            return op;
        } else {
            return MinOrMax::make(a, b);
        }
    }

    Expr visit(const Min *op) override {
        return visit_min_or_max(op);
    }

    Expr visit(const Max *op) override {
        return visit_min_or_max(op);
    }

    Expr visit(const Cast *op) override {
        if (!find_intrinsics_for_type(op->type)) {
            return IRMutator::visit(op);
        }

        Expr value = mutate(op->value);

        // This mutator can generate redundant casts. We can't use the simplifier because it
        // undoes some of the intrinsic lowering here, and it causes some problems due to
        // factoring (instead of distributing) constants.
        if (const Cast *cast = value.as<Cast>()) {
            if (cast->type.can_represent(cast->value.type()) || cast->type.can_represent(op->type)) {
                // The intermediate cast is redundant.
                value = cast->value;
            }
        }

        if (op->type.is_int() || op->type.is_uint()) {
            Expr lower = cast(value.type(), op->type.min());
            Expr upper = cast(value.type(), op->type.max());

            auto rewrite = IRMatcher::rewriter(value, op->type);

            Type op_type_wide = op->type.widen();
            Type signed_type_wide = op_type_wide.with_code(halide_type_int);
            Type unsigned_type = op->type.with_code(halide_type_uint);

            int bits = op->type.bits();
            auto is_x_same_int = op->type.is_int() && is_int(x, bits);
            auto is_x_same_uint = op->type.is_uint() && is_uint(x, bits);
            auto is_x_same_int_or_uint = is_x_same_int || is_x_same_uint;
            // clang-format off
            if (rewrite(max(min(widening_add(x, y), upper), lower), saturating_add(x, y), is_x_same_int_or_uint) ||
                rewrite(max(min(widening_sub(x, y), upper), lower), saturating_sub(x, y), is_x_same_int_or_uint) ||
                rewrite(min(cast(signed_type_wide, widening_add(x, y)), upper), saturating_add(x, y), is_x_same_uint) ||
                rewrite(min(widening_add(x, y), upper), saturating_add(x, y), op->type.is_uint() && is_x_same_uint) ||
                rewrite(max(widening_sub(x, y), lower), saturating_sub(x, y), op->type.is_uint() && is_x_same_uint) ||

                rewrite(shift_right(widening_add(x, y), 1), halving_add(x, y), is_x_same_int_or_uint) ||
                rewrite(shift_right(widening_sub(x, y), 1), halving_sub(x, y), is_x_same_int_or_uint) ||

                rewrite(halving_add(widening_add(x, y), 1), rounding_halving_add(x, y), is_x_same_int_or_uint) ||
                rewrite(halving_add(widening_add(x, 1), y), rounding_halving_add(x, y), is_x_same_int_or_uint) ||
                rewrite(halving_add(widening_sub(x, y), 1), rounding_halving_sub(x, y), is_x_same_int_or_uint) ||
                rewrite(rounding_shift_right(widening_add(x, y), 1), rounding_halving_add(x, y), is_x_same_int_or_uint) ||
                rewrite(rounding_shift_right(widening_sub(x, y), 1), rounding_halving_sub(x, y), is_x_same_int_or_uint) ||

                rewrite(max(min(shift_right(widening_mul(x, y), z), upper), lower), mul_shift_right(x, y, cast(unsigned_type, z)), is_x_same_int_or_uint && is_uint(z)) ||
                rewrite(max(min(rounding_shift_right(widening_mul(x, y), z), upper), lower), rounding_mul_shift_right(x, y, cast(unsigned_type, z)), is_x_same_int_or_uint && is_uint(z)) ||
                rewrite(min(shift_right(widening_mul(x, y), z), upper), mul_shift_right(x, y, cast(unsigned_type, z)), is_x_same_uint && is_uint(z)) ||
                rewrite(min(rounding_shift_right(widening_mul(x, y), z), upper), rounding_mul_shift_right(x, y, cast(unsigned_type, z)), is_x_same_uint && is_uint(z)) ||
                // We don't need saturation for the full upper half of a multiply.
                // For signed integers, this is almost true, except for when x and y
                // are both the most negative value. For these, we only need saturation
                // at the upper bound.
                rewrite(min(shift_right(widening_mul(x, y), c0), upper), mul_shift_right(x, y, cast(unsigned_type, c0)), is_x_same_int && c0 >= bits - 1) ||
                rewrite(min(rounding_shift_right(widening_mul(x, y), c0), upper), rounding_mul_shift_right(x, y, cast(unsigned_type, c0)), is_x_same_int && c0 >= bits - 1) ||
                rewrite(shift_right(widening_mul(x, y), c0), mul_shift_right(x, y, cast(unsigned_type, c0)), is_x_same_int_or_uint && c0 >= bits) ||
                rewrite(rounding_shift_right(widening_mul(x, y), c0), rounding_mul_shift_right(x, y, cast(unsigned_type, c0)), is_x_same_int_or_uint && c0 >= bits) ||

                // We can ignore the sign of the widening subtract for halving subtracts.
                rewrite(shift_right(cast(op_type_wide, widening_sub(x, y)), 1), halving_sub(x, y), is_x_same_int_or_uint) ||
                rewrite(rounding_shift_right(cast(op_type_wide, widening_sub(x, y)), 1), rounding_halving_sub(x, y), is_x_same_int_or_uint) ||

                false) {
                return mutate(rewrite.result);
            }
            // clang-format on

            // When the argument is a widened rounding shift, we might not need the widening.
            // When there is saturation, we can only avoid the widening if we know the shift is
            // a right shift. Without saturation, we can ignore the widening.
            auto is_x_wide_int = op->type.is_int() && is_int(x, bits * 2);
            auto is_x_wide_uint = op->type.is_uint() && is_uint(x, bits * 2);
            auto is_x_wide_int_or_uint = is_x_wide_int || is_x_wide_uint;
            // We can't do everything we want here with rewrite rules alone. So, we rewrite them
            // to rounding_shifts with the widening still in place, and narrow it after the rewrite
            // scuceeds.
            // clang-format off
            if (rewrite(max(min(rounding_shift_right(x, y), upper), lower), rounding_shift_right(x, y), is_x_wide_int_or_uint) ||
                rewrite(rounding_shift_right(x, y), rounding_shift_right(x, y), is_x_wide_int_or_uint) ||
                rewrite(rounding_shift_left(x, y), rounding_shift_left(x, y), is_x_wide_int_or_uint) ||
                false) {
                const Call *shift = Call::as_intrinsic(rewrite.result, {Call::rounding_shift_right, Call::rounding_shift_left});
                internal_assert(shift);
                bool is_saturated = op->value.as<Max>() || op->value.as<Min>();
                Expr a = lossless_cast(op->type, shift->args[0]);
                Expr b = lossless_cast(op->type.with_code(shift->args[1].type().code()), shift->args[1]);
                if (a.defined() && b.defined()) {
                    if (!is_saturated ||
                        (shift->is_intrinsic(Call::rounding_shift_right) && can_prove(b >= 0)) ||
                        (shift->is_intrinsic(Call::rounding_shift_left) && can_prove(b <= 0))) {
                        return mutate(Call::make(op->type, shift->name, {a, b}, Call::PureIntrinsic));
                    }
                }
            }
            // clang-format on
        }

        if (value.same_as(op->value)) {
            return op;
        } else if (op->type != value.type()) {
            return Cast::make(op->type, value);
        } else {
            return value;
        }
    }

    Expr visit(const Call *op) override {
        if (!find_intrinsics_for_type(op->type)) {
            return IRMutator::visit(op);
        }

        Expr mutated = IRMutator::visit(op);
        op = mutated.as<Call>();
        if (!op) {
            return mutated;
        }

        auto rewrite = IRMatcher::rewriter(op, op->type);
        if (rewrite(intrin(Call::abs, widening_sub(x, y)), cast(op->type, intrin(Call::absd, x, y))) ||
            false) {
            return rewrite.result;
        }

        if (no_overflow(op->type)) {
            // clang-format off
            if (rewrite(halving_add(x + y, 1), rounding_halving_add(x, y)) ||
                rewrite(halving_add(x, y + 1), rounding_halving_add(x, y)) ||
                rewrite(halving_add(x + 1, y), rounding_halving_add(x, y)) ||
                rewrite(halving_add(x - y, 1), rounding_halving_sub(x, y)) ||
                rewrite(halving_sub(x + 1, y), rounding_halving_sub(x, y)) ||
                rewrite(halving_add(x, 1), rounding_shift_right(x, 1)) ||
                rewrite(shift_right(x + y, 1), halving_add(x, y)) ||
                rewrite(shift_right(x - y, 1), halving_sub(x, y)) ||
                rewrite(rounding_shift_right(x + y, 1), rounding_halving_add(x, y)) ||
                rewrite(rounding_shift_right(x - y, 1), rounding_halving_sub(x, y)) ||
                false) {
                return mutate(rewrite.result);
            }
            // clang-format on
        }

        // Move widening casts inside widening arithmetic outside the arithmetic,
        // e.g. widening_mul(widen(u8), widen(i8)) -> widen(widening_mul(u8, i8)).
        if (op->is_intrinsic(Call::widening_mul)) {
            internal_assert(op->args.size() == 2);
            Expr narrow_a = strip_widening_cast(op->args[0]);
            Expr narrow_b = strip_widening_cast(op->args[1]);
            if (narrow_a.defined() && narrow_b.defined()) {
                return mutate(Cast::make(op->type, widening_mul(narrow_a, narrow_b)));
            }
        } else if (op->is_intrinsic(Call::widening_add)) {
            internal_assert(op->args.size() == 2);
            for (halide_type_code_t t : {op->type.code(), halide_type_uint}) {
                Type narrow_t = op->type.narrow().narrow().with_code(t);
                Expr narrow_a = lossless_cast(narrow_t, op->args[0]);
                Expr narrow_b = lossless_cast(narrow_t, op->args[1]);
                if (narrow_a.defined() && narrow_b.defined()) {
                    return mutate(Cast::make(op->type, widening_add(narrow_a, narrow_b)));
                }
            }
        } else if (op->is_intrinsic(Call::widening_sub)) {
            internal_assert(op->args.size() == 2);
            for (halide_type_code_t t : {op->type.code(), halide_type_uint}) {
                Type narrow_t = op->type.narrow().narrow().with_code(t);
                Expr narrow_a = lossless_cast(narrow_t, op->args[0]);
                Expr narrow_b = lossless_cast(narrow_t, op->args[1]);
                if (narrow_a.defined() && narrow_b.defined()) {
                    return mutate(Cast::make(op->type, widening_sub(narrow_a, narrow_b)));
                }
            }
        }

        if (op->is_intrinsic(Call::shift_right) || op->is_intrinsic(Call::shift_left)) {
            // Try to turn this into a widening shift.
            internal_assert(op->args.size() == 2);
            Expr a_narrow = lossless_narrow(op->args[0]);
            Expr b_narrow = lossless_narrow(op->args[1]);
            if (a_narrow.defined() && b_narrow.defined()) {
                Expr result = op->is_intrinsic(Call::shift_left) ? widening_shift_left(a_narrow, b_narrow) : widening_shift_right(a_narrow, b_narrow);
                if (result.type() != op->type) {
                    result = Cast::make(op->type, result);
                }
                return mutate(result);
            }

            // Try to turn this into a rounding shift.
            Expr rounding_shift = to_rounding_shift(op);
            if (rounding_shift.defined()) {
                return mutate(rounding_shift);
            }
        }

        if (op->is_intrinsic(Call::rounding_shift_left) || op->is_intrinsic(Call::rounding_shift_right)) {
            // Try to turn this into a widening shift.
            internal_assert(op->args.size() == 2);
            Expr a_narrow = lossless_narrow(op->args[0]);
            Expr b_narrow = lossless_narrow(op->args[1]);
            if (a_narrow.defined() && b_narrow.defined()) {
                Expr result;
                if (op->is_intrinsic(Call::rounding_shift_right) && can_prove(b_narrow > 0)) {
                    result = rounding_shift_right(a_narrow, b_narrow);
                } else if (op->is_intrinsic(Call::rounding_shift_left) && can_prove(b_narrow < 0)) {
                    result = rounding_shift_left(a_narrow, b_narrow);
                } else {
                    return op;
                }
                if (result.type() != op->type) {
                    result = Cast::make(op->type, result);
                }
                return mutate(result);
            }
        }
        return op;
    }
};

}  // namespace

Stmt find_intrinsics(const Stmt &s) {
    return FindIntrinsics().mutate(s);
}

Expr find_intrinsics(const Expr &e) {
    return FindIntrinsics().mutate(e);
}

Expr lower_widening_add(const Expr &a, const Expr &b) {
    return widen(a) + widen(b);
}

Expr lower_widening_mul(const Expr &a, const Expr &b) {
    return widen(a) * widen(b);
}

Expr lower_widening_sub(const Expr &a, const Expr &b) {
    Type wide = a.type().widen();
    if (wide.is_uint()) {
        wide = wide.with_code(halide_type_int);
    }
    return Cast::make(wide, a) - Cast::make(wide, b);
}

Expr lower_widening_shift_left(const Expr &a, const Expr &b) {
    return widen(a) << b;
}

Expr lower_widening_shift_right(const Expr &a, const Expr &b) {
    return widen(a) >> b;
}

Expr lower_rounding_shift_left(const Expr &a, const Expr &b) {
    // Shift left, then add one to the result if bits were dropped
    // (because b < 0) and the most significant dropped bit was a one.
    Expr b_negative = select(b < 0, make_one(a.type()), make_zero(a.type()));
    return simplify((a << b) + (b_negative & (a << (b + 1))));
}

Expr lower_rounding_shift_right(const Expr &a, const Expr &b) {
    // Shift right, then add one to the result if bits were dropped
    // (because b > 0) and the most significant dropped bit was a one.
    Expr b_positive = select(b > 0, make_one(a.type()), make_zero(a.type()));
    return simplify((a >> b) + (b_positive & (a >> (b - 1))));
}

Expr lower_saturating_add(const Expr &a, const Expr &b) {
    internal_assert(a.type() == b.type());
    // Lower saturating add without using widening arithmetic, which may require
    // types that aren't supported.
    return simplify(clamp(a, a.type().min() - min(b, 0), a.type().max() - max(b, 0))) + b;
}

Expr lower_saturating_sub(const Expr &a, const Expr &b) {
    internal_assert(a.type() == b.type());
    // Lower saturating add without using widening arithmetic, which may require
    // types that aren't supported.
    return simplify(clamp(a, a.type().min() + max(b, 0), a.type().max() + min(b, 0))) - b;
}

Expr lower_halving_add(const Expr &a, const Expr &b) {
    internal_assert(a.type() == b.type());
    // Borrowed from http://aggregate.org/MAGIC/#Average%20of%20Integers
    return (a & b) + ((a ^ b) >> 1);
}

Expr lower_halving_sub(const Expr &a, const Expr &b) {
    internal_assert(a.type() == b.type());
    return (a >> 1) - (b >> 1) - (((b & 1) - (a & 1) + 1) >> 1);
}

// TODO: These should using rounding_shift_right, but lowering that
// results in double widening and the simplifier doesn't fix it.
Expr lower_rounding_halving_add(const Expr &a, const Expr &b) {
    internal_assert(a.type() == b.type());
    return (a >> 1) + (b >> 1) + (((a & 1) + (b & 1) + 1) >> 1);
}

Expr lower_rounding_halving_sub(const Expr &a, const Expr &b) {
    internal_assert(a.type() == b.type());
    return (a >> 1) - (b >> 1) + (((a & 1) - (b & 1) + 1) >> 1);
}

Expr lower_sorted_avg(const Expr &a, const Expr &b) {
    // b > a, so the following works without widening.
    return a + ((b - a) >> 1);
}

Expr lower_mul_shift_right(const Expr &a, const Expr &b, const Expr &q) {
    internal_assert(a.type() == b.type());
    int full_q = a.type().bits();
    if (a.type().is_int()) {
        full_q -= 1;
    }
    if (can_prove(q < full_q)) {
        // Try to rewrite this to a "full precision" multiply by multiplying
        // one of the operands and the denominator by a constant. We only do this
        // if it isn't already full precision. This avoids infinite loops despite
        // "lowering" this to another mul_shift_right operation.
        Expr missing_q = full_q - q;
        internal_assert(missing_q.type().bits() == b.type().bits());
        Expr new_b = simplify(b << missing_q);
        if (is_const(new_b) && can_prove(new_b >> missing_q == b)) {
            return mul_shift_right(a, new_b, full_q);
        }
        Expr new_a = simplify(a << missing_q);
        if (is_const(new_a) && can_prove(new_a >> missing_q == a)) {
            return mul_shift_right(new_a, b, full_q);
        }
    }

    if (can_prove(q > a.type().bits())) {
        // If q is bigger than the narrow type, write it as an exact upper
        // half multiply, followed by an extra shift.
        Expr result = mul_shift_right(a, b, a.type().bits());
        result = result >> simplify(q - a.type().bits());
        return result;
    }

    // If all else fails, just widen, shift, and narrow.
    Expr result = widening_mul(a, b) >> q;
    if (!can_prove(q >= a.type().bits())) {
        result = saturating_narrow(result);
    } else {
        result = narrow(result);
    }
    return result;
}

Expr lower_rounding_mul_shift_right(const Expr &a, const Expr &b, const Expr &q) {
    internal_assert(a.type() == b.type());
    int full_q = a.type().bits();
    if (a.type().is_int()) {
        full_q -= 1;
    }
    // Try to rewrite this to a "full precision" multiply by multiplying
    // one of the operands and the denominator by a constant. We only do this
    // if it isn't already full precision. This avoids infinite loops despite
    // "lowering" this to another mul_shift_right operation.
    if (can_prove(q < full_q)) {
        Expr missing_q = full_q - q;
        internal_assert(missing_q.type().bits() == b.type().bits());
        Expr new_b = simplify(b << missing_q);
        if (is_const(new_b) && can_prove(new_b >> missing_q == b)) {
            return rounding_mul_shift_right(a, new_b, full_q);
        }
        Expr new_a = simplify(a << missing_q);
        if (is_const(new_a) && can_prove(new_a >> missing_q == a)) {
            return rounding_mul_shift_right(new_a, b, full_q);
        }
    }

    // If all else fails, just widen, shift, and narrow.
    Expr result = rounding_shift_right(widening_mul(a, b), q);
    if (!can_prove(q >= a.type().bits())) {
        result = saturating_narrow(result);
    } else {
        result = narrow(result);
    }
    return result;
}

Expr lower_intrinsic(const Call *op) {
    if (op->is_intrinsic(Call::widening_add)) {
        internal_assert(op->args.size() == 2);
        return lower_widening_add(op->args[0], op->args[1]);
    } else if (op->is_intrinsic(Call::widening_mul)) {
        internal_assert(op->args.size() == 2);
        return lower_widening_mul(op->args[0], op->args[1]);
    } else if (op->is_intrinsic(Call::widening_sub)) {
        internal_assert(op->args.size() == 2);
        return lower_widening_sub(op->args[0], op->args[1]);
    } else if (op->is_intrinsic(Call::saturating_add)) {
        internal_assert(op->args.size() == 2);
        return lower_saturating_add(op->args[0], op->args[1]);
    } else if (op->is_intrinsic(Call::saturating_sub)) {
        internal_assert(op->args.size() == 2);
        return lower_saturating_sub(op->args[0], op->args[1]);
    } else if (op->is_intrinsic(Call::widening_shift_left)) {
        internal_assert(op->args.size() == 2);
        return lower_widening_shift_left(op->args[0], op->args[1]);
    } else if (op->is_intrinsic(Call::widening_shift_right)) {
        internal_assert(op->args.size() == 2);
        return lower_widening_shift_right(op->args[0], op->args[1]);
    } else if (op->is_intrinsic(Call::rounding_shift_right)) {
        internal_assert(op->args.size() == 2);
        return lower_rounding_shift_right(op->args[0], op->args[1]);
    } else if (op->is_intrinsic(Call::rounding_shift_left)) {
        internal_assert(op->args.size() == 2);
        return lower_rounding_shift_left(op->args[0], op->args[1]);
    } else if (op->is_intrinsic(Call::halving_add)) {
        internal_assert(op->args.size() == 2);
        return lower_halving_add(op->args[0], op->args[1]);
    } else if (op->is_intrinsic(Call::halving_sub)) {
        internal_assert(op->args.size() == 2);
        return lower_halving_sub(op->args[0], op->args[1]);
    } else if (op->is_intrinsic(Call::rounding_halving_add)) {
        internal_assert(op->args.size() == 2);
        return lower_rounding_halving_add(op->args[0], op->args[1]);
    } else if (op->is_intrinsic(Call::rounding_halving_sub)) {
        internal_assert(op->args.size() == 2);
        return lower_rounding_halving_sub(op->args[0], op->args[1]);
    } else if (op->is_intrinsic(Call::rounding_mul_shift_right)) {
        internal_assert(op->args.size() == 3);
        return lower_rounding_mul_shift_right(op->args[0], op->args[1], op->args[2]);
    } else if (op->is_intrinsic(Call::mul_shift_right)) {
        internal_assert(op->args.size() == 3);
        return lower_mul_shift_right(op->args[0], op->args[1], op->args[2]);
    } else if (op->is_intrinsic(Call::sorted_avg)) {
        internal_assert(op->args.size() == 2);
        return lower_sorted_avg(op->args[0], op->args[1]);
    } else {
        return Expr();
    }
}

Expr lower_qdmulh(const Expr &a, const Expr &b) {
    const int bits = a.type().bits() - 1;
    return mul_shift_right(a, b, bits);
}

Expr lower_qrdmulh(const Expr &a, const Expr &b) {
    const int bits = a.type().bits() - 1;
    return rounding_mul_shift_right(a, b, bits);
}

Expr lower_pairwise_add(const Expr &a, const Expr &b) {
    internal_assert(a.type().lanes() == b.type().lanes()) << "pairwise_add of different vector lengths: " << a << " " << b << "\n";
    const int lanes = a.type().lanes() / 2;
    Expr reduced_a = VectorReduce::make(VectorReduce::Add, a, lanes);
    Expr reduced_b = VectorReduce::make(VectorReduce::Add, b, lanes);
    return Shuffle::make_concat({std::move(reduced_a), std::move(reduced_b)});
}

Expr lower_pairwise_widening_add(const Expr &a) {
    const int lanes = a.type().lanes() / 2;
    Type wide = a.type().widen();
    Expr casted = Cast::make(wide, a);
    return VectorReduce::make(VectorReduce::Add, std::move(casted), lanes);
}

Expr lower_pairwise_widening_add_accumulate(const Expr &a, const Expr &b) {
    const int b_lanes = b.type().lanes() / 2;
    internal_assert(b_lanes == a.type().lanes()) << "expected matching lanes " << a << " should be twice the width of " << b << "\n";
    const int b_bits = b.type().bits() * 2;
    internal_assert(b_bits == a.type().bits()) << "expected matching bits " << a << " should be twice the bitwidth of " << b << "\n";
    Type upcast = a.type().with_lanes(b.type().lanes());
    Expr casted = Cast::make(upcast, b);
    Expr reduced = VectorReduce::make(VectorReduce::Add, std::move(casted), b_lanes);
    if (reduced.type().is_int()) {
        return a + Cast::make(a.type(), abs(reduced));
    } else {
        internal_assert(reduced.type().is_uint()) << "Can't handle float type " << a << " += " << b << "\n";
        // Abs is a no-op for unsigned integers.
        return a + reduced;
    }
}

Expr lower_pairwise_max(const Expr &a, const Expr &b) {
    internal_assert(a.type().lanes() == b.type().lanes()) << "pairwise_max of different vector lengths: " << a << " " << b << "\n";
    const int lanes = a.type().lanes() / 2;
    Expr reduced_a = VectorReduce::make(VectorReduce::Max, a, lanes);
    Expr reduced_b = VectorReduce::make(VectorReduce::Max, b, lanes);
    return Shuffle::make_concat({std::move(reduced_a), std::move(reduced_b)});
}

Expr lower_pairwise_min(const Expr &a, const Expr &b) {
    internal_assert(a.type().lanes() == b.type().lanes()) << "pairwise_min of different vector lengths: " << a << " " << b << "\n";
    const int lanes = a.type().lanes() / 2;
    Expr reduced_a = VectorReduce::make(VectorReduce::Min, a, lanes);
    Expr reduced_b = VectorReduce::make(VectorReduce::Min, b, lanes);
    return Shuffle::make_concat({std::move(reduced_a), std::move(reduced_b)});
}

Expr lower_widening_absd(Type ret_type, const Expr &a, const Expr &b) {
    internal_assert(b.type().bits() == a.type().bits()) << "expected matching bits " << a << " and " << b << "\n";
    // TODO: my intuition was that this op is `absd(upcast(a), upcast(b))`, but it looks like it's pattern matched in CodeGen_ARM as upcast(absd(a, b))
    Expr absd_ = absd(a, b);
    if (absd_.type() != ret_type) {
        return Cast::make(ret_type, absd_);
    } else {
        return absd_;
    }
}

Expr lower_vector_dot_product(const Expr &accum, const Expr &b, const Expr &c) {
    Expr mul = lower_widening_mul(b, c);
    if (accum.type().is_int()) {
        mul = i32(mul);
    } else {
        mul = u32(mul);
    }
    const int factor = 4; // All dot products have a reeduction factor of 4, for arm.
    const int lanes = b.type().lanes() / factor;
    Expr sum = VectorReduce::make(VectorReduce::Add, std::move(mul), lanes);
    internal_assert(sum.type() == accum.type());
    return accum + sum;
}

Expr lower_scalar_dot_product(const Expr &accum, const Expr &b, const Expr &c) {
    internal_assert(c.type().lanes() == 4);
    const int lane_multiple = b.type().lanes() / c.type().lanes();
    internal_assert(lane_multiple * c.type().lanes() == b.type().lanes());
    std::vector<Expr> repeats(lane_multiple, c);
    Expr concat = Shuffle::make_concat(repeats);
    return lower_vector_dot_product(accum, b, concat);
}

Expr lower_rounding_add_narrow(const Expr &a, const Expr &b) {
    const int bits = a.type().bits() / 2;
    Expr rounded = lower_rounding_shift_right(a + b, bits);
    Type type = a.type().narrow();
    return Cast::make(type, rounded);
}

Expr lower_rounding_sub_narrow(const Expr &a, const Expr &b) {
    const int bits = a.type().bits() / 2;
    Expr rounded = lower_rounding_shift_right(a - b, bits);
    Type type = a.type().narrow();
    return Cast::make(type, rounded);
}

Expr lower_rounding_shift_right_narrow(const Expr &a, const Expr &b) {
    Expr rounded = lower_rounding_shift_right(a, b);
    Type type = a.type().narrow();
    return Cast::make(type, rounded);
}

Expr lower_saturating_narrow(const Expr &a) {
    Type t = a.type().narrow();
    return saturating_cast(t, a);
}

Expr lower_saturating_negate(const Expr &a) {
    internal_assert(a.type().is_int());
    Expr min_val = a.type().min();
    return -max(a, min_val);
}

Expr lower_saturating_rounding_shift_right_narrow(Type ret_type, const Expr &a, const Expr &b) {
    Expr lowered_shift = lower_rounding_shift_right(a, b);
    return saturating_cast(ret_type, lowered_shift);
}

Expr lower_saturating_shift_left(Type ret_type, const Expr &a, const Expr &b) {
    if (a.type().bits() > 32) {
        Expr max_val = ret_type.max();
        // TODO: should the cast be before or after the shift?
        Expr guarded = select(a > (max_val >> b), max_val, Cast::make(ret_type, a) << b);
        return guarded;
    }
    Expr lowered_shift = lower_widening_shift_left(a, b);
    return saturating_cast(ret_type, lowered_shift);
}

Expr lower_saturating_rounding_shift_left(const Expr &a, const Expr &b) {
    Expr left = lower_saturating_shift_left(a.type(), a, b);
    Expr right = lower_rounding_shift_right(a, -b);
    Expr solution = select(b > 0, left, right);
    return simplify(solution);
}


Expr lower_saturating_shift_right_narrow(Type ret_type, const Expr &a, const Expr &b) {
    // TODO: is this the right semantics?
    Expr shift = (a >> b);
    return saturating_cast(ret_type, shift);
}

Expr lower_add_vector(const Expr &a, const Expr &b) {
    return a + b;
}

Expr lower_add_across_vector(const Expr &a) {
    return VectorReduce::make(VectorReduce::Add, a, 1);
}

Expr lower_signed_add_long_across_vector(const Expr &a) {
    internal_assert(a.type().is_int());
    Expr wide = widen(a);
    return VectorReduce::make(VectorReduce::Add, wide, 1);
}

Expr lower_shift_left_long(const Expr &a) {
    internal_assert(a.type().is_int());
    const int bits = a.type().bits();
    Type widened = a.type().widen();
    Expr wide = Cast::make(widened, a);
    return wide << bits;
}

Expr lower_shift_right_narrow(const Expr &a, const Expr &b) {
    internal_assert(b.type().is_scalar());
    Type narrowed = a.type().narrow();
    return Cast::make(narrowed, a >> b);
}

Expr lower_signed_maximum_across_vector(const Expr &a) {
    internal_assert(a.type().is_int());
    return VectorReduce::make(VectorReduce::Max, a, 1);
}

Expr lower_signed_minimum_across_vector(const Expr &a) {
    internal_assert(a.type().is_int());
    return VectorReduce::make(VectorReduce::Min, a, 1);
}

Expr lower_signed_saturating_abs(const Expr &a) {
    Type t = a.type();
    Expr maximum = t.max();
    Expr min_pos = -maximum;
    return select(a < min_pos, maximum, cast(t, abs(a)));
}

Expr lower_signed_saturating_doubling_mul_long(const Expr &a, const Expr &b) {
    Type type = a.type();
    Type wide = type.widen();
    Expr value = lower_widening_mul(a, b);
    Expr max_val = wide.element_of().max();
    Expr min_val = wide.element_of().min();
    Expr two = make_const(wide, 2);
    // Saturate the upper
    value = select(value > (max_val / 2), max_val, value * 2);
    // Saturate the lower
    value = select(value < (min_val / 2), min_val, value * 2);
    return simplify(value);
}

Expr lower_signed_shift_left_long(const Expr &a, const Expr &b) {
    Type wide = a.type().widen();
    return cast(wide, a) << b;
}

Expr lower_sub_vector(const Expr &a, const Expr &b) {
    return a - b;
}

// TODO: is there a better way to do this?
Expr lower_sub_high_narrow(const Expr &a, const Expr &b) {
    Expr sub = lower_widening_sub(a, b);
    const int bits = a.type().bits();
    Type unsigned_type = a.type().widen().with_code(Type::UInt);
    sub = reinterpret(unsigned_type, sub);
    sub = (sub >> bits);
    sub = reinterpret(a.type().widen(), sub);
    sub = cast(a.type(), sub);
    return sub;
}

Expr lower_signed_saturating_acc_unsigned(const Expr &a, const Expr &b) {
    Type stype = a.type();
    Type upcast = stype.widen();
    Expr max_val = stype.max();
    Expr wide_max = widen(stype.max());
    Expr min_val = stype.min();
    Expr wide_min = widen(min_val);
    Expr sum = cast(upcast, a) + cast(upcast, b);
    Expr casted_sum = cast(stype, sum);
    sum = select(sum > wide_max, max_val, casted_sum);
    sum = select(sum < min_val, min_val, casted_sum);
    return simplify(sum);
}

Expr lower_unsigned_add_long_across_vector(const Expr &a) {
    internal_assert(a.type().is_uint());
    Expr wide = widen(a);
    return VectorReduce::make(VectorReduce::Add, wide, 1);
}

Expr lower_unsigned_maximum_across_vector(const Expr &a) {
    internal_assert(a.type().is_uint());
    return VectorReduce::make(VectorReduce::Max, a, 1);
}

Expr lower_unsigned_minimum_across_vector(const Expr &a) {
    internal_assert(a.type().is_uint());
    return VectorReduce::make(VectorReduce::Min, a, 1);
}

Expr lower_unsigned_shift_left_long(const Expr &a, const Expr &b) {
    Type wide = a.type().widen();
    // TODO: is it upcast then shift?
    // So far it seems like it is shift then cast, but that feels wrong.
    return cast(wide, a << b);
}

Expr lower_unsigned_saturating_acc_signed(const Expr &a, const Expr &b) {
    Type stype = b.type();
    Type utype = a.type();
    Type signed_upcast = stype.widen();
    Expr max_val = utype.max();
    Expr wide_max = cast(signed_upcast, max_val);
    Expr min_val = utype.min(); // this should just be 0.
    Expr wide_min = cast(signed_upcast, min_val);
    Expr sum = cast(signed_upcast, a) + cast(signed_upcast, b);
    Expr casted_sum = cast(utype, sum);
    sum = select(sum > wide_max, max_val, casted_sum);
    sum = select(sum < min_val, min_val, casted_sum);
    return simplify(sum);
}

// TODO: figure out the 64-bit method.
Expr lower_add_high_narrow(const Expr &a, const Expr &b) {
    Expr add = lower_widening_add(a, b);
    const int bits = a.type().bits();
    Type unsigned_type = a.type().widen().with_code(Type::UInt);
    add = reinterpret(unsigned_type, add);
    add = (add >> bits);
    add = reinterpret(a.type().widen(), add);
    add = cast(a.type(), add);
    return add;
}

Expr lower_multiply_add_acc(const Expr &a, const Expr &b, const Expr &c) {
    return a + (b * c);
}

Expr lower_multiply_sub_acc(const Expr &a, const Expr &b, const Expr &c) {
    return a - (b * c);
}

Expr lower_multiply_vector(const Expr &a, const Expr &b) {
    return a * b;
}

Expr lower_negate_vector(const Expr &a) {
    return -a;
}

Expr lower_signed_absd_acc(const Expr &a, const Expr &b, const Expr &c) {
    Expr d = absd(b, c);
    return a + d;
}

Expr lower_signed_absd_acc_long(const Expr &a, const Expr &b, const Expr &c) {
    Expr d = lower_widening_absd(a.type(), b, c);
    return a + d;
}

Expr lower_add_acc_long_pairwise(const Expr &a, const Expr &b) {
    const int lanes = a.type().lanes();
    internal_assert(lanes == b.type().lanes() / 2);
    Expr upcast = widen(b);
    Expr pairwise = VectorReduce::make(VectorReduce::Add, upcast, lanes);
    internal_assert(pairwise.type() == a.type()) << pairwise.type() << " != " << a.type() << "\n";
    return a + pairwise;
}

Expr lower_add_long(const Expr &a, const Expr &b) {
    return lower_widening_add(a, b);
}

Expr lower_multiply_add_long(const Expr &a, const Expr &b, const Expr &c) {
    return a + lower_widening_mul(b, c);
}

Expr lower_add_wide(const Expr &a, const Expr &b) {
    return a + widen(b);
}

Expr lower_multiply_sub_long(const Expr &a, const Expr &b, const Expr &c) {
    return a - lower_widening_mul(b, c);
}

Expr lower_sub_long(const Expr &a, const Expr &b) {
    return lower_widening_sub(a, b);
}

Expr lower_sub_wide(const Expr &a, const Expr &b) {
    return a - widen(b);
}

Expr lower_extend_long(Type type, const Expr &a) {
    Type wide = a.type().widen();
    internal_assert(wide == type);
    return cast(wide, a);
}

Expr lower_extract_narrow(Type type, const Expr &a) {
    Type narrow = a.type().narrow();
    internal_assert(narrow == type);
    return cast(narrow, a);
}

Expr lower_zip_vectors(Type type, const Expr &a, const Expr &b) {
    Expr expr = Shuffle::make_interleave({a, b});
    internal_assert(expr.type() == type);
    return expr;
}

Expr lower_unzip_even_vectors(Type type, const Expr &a, const Expr &b) {
    Expr a_evens = Shuffle::make_slice(a, 0, 2, type.lanes() / 2);
    Expr b_evens = Shuffle::make_slice(b, 0, 2, type.lanes() / 2);
    Expr expr = Shuffle::make_concat({a_evens, b_evens});
    internal_assert(expr.type() == type);
    return expr;
}

Expr lower_unzip_odd_vectors(Type type, const Expr &a, const Expr &b) {
    Expr a_odds = Shuffle::make_slice(a, 1, 2, type.lanes() / 2);
    Expr b_odds = Shuffle::make_slice(b, 1, 2, type.lanes() / 2);
    Expr expr = Shuffle::make_concat({a_odds, b_odds});
    internal_assert(expr.type() == type);
    return expr;
}

Expr lower_to_broadcast(Type type, const Expr &a) {
    internal_assert(a.type().is_scalar());
    return Broadcast::make(a, type.lanes());
}

Expr lower_transpose_vectors(Type type, const Expr &a, const Expr &b, const int start) {
    internal_assert(start == 0 || start == 1);
    internal_assert(a.type() == b.type());
    internal_assert(a.type() == type);
    internal_assert(a.type().lanes() % 2 == 0);
    Expr odds_a = Shuffle::make_slice(a, start, 2, a.type().lanes() / 2);
    Expr odds_b = Shuffle::make_slice(b, start, 2, b.type().lanes() / 2);
    Expr interleaved = Shuffle::make_interleave({odds_b, odds_a});
    internal_assert(interleaved.type() == type);
    return interleaved;
}

Expr lower_extract_vectors(Type type, const Expr &a, const Expr &b, const int index) {
    const int size = type.lanes() - index;
    Expr start = Shuffle::make_slice(a, index, 1, size);
    Expr end = Shuffle::make_slice(b, 0, 1, index);
    Expr combined = Shuffle::make_concat({start, end});
    internal_assert(combined.type() == type);
    return combined;
}

Expr lower_arm_intrinsic(const Call *op) {
    Expr expr = lower_intrinsic(op);
    if (expr.defined()) {
        return expr;
    } else {
        if (op->name == "qdmulh") {
            internal_assert(op->args.size() == 2);
            return lower_qdmulh(op->args[0], op->args[1]);
        } else if (op->name == "qrdmulh") {
            internal_assert(op->args.size() == 2);
            return lower_qrdmulh(op->args[0], op->args[1]);
        } else if (op->name == "pairwise_add") {
            internal_assert(op->args.size() == 2);
            return lower_pairwise_add(op->args[0], op->args[1]);
        } else if (op->name == "pairwise_widening_add") {
            internal_assert(op->args.size() == 1);
            return lower_pairwise_widening_add(op->args[0]);
        } else if (op->name == "pairwise_widening_add_accumulate") {
            internal_assert(op->args.size() == 2);
            return lower_pairwise_widening_add_accumulate(op->args[0], op->args[1]);
        } else if (op->name == "pairwise_max") {
            internal_assert(op->args.size() == 2);
            return lower_pairwise_max(op->args[0], op->args[1]);
        } else if (op->name == "pairwise_min") {
            internal_assert(op->args.size() == 2);
            return lower_pairwise_min(op->args[0], op->args[1]);
        } else if (op->name == "dot_product") {
            internal_assert(op->args.size() == 3);
            return lower_vector_dot_product(op->args[0], op->args[1], op->args[2]);
         } else if (op->name == "sca_dot_product") {
            internal_assert(op->args.size() == 3);
            return lower_scalar_dot_product(op->args[0], op->args[1], op->args[2]);
        } else if (op->name == "widening_absd") {
            internal_assert(op->args.size() == 2);
            return lower_widening_absd(op->type, op->args[0], op->args[1]);
        } else if (op->name == "rounding_add_narrow") {
            internal_assert(op->args.size() == 2);
            return lower_rounding_add_narrow(op->args[0], op->args[1]);
        } else if (op->name == "rounding_sub_narrow") {
            internal_assert(op->args.size() == 2);
            return lower_rounding_sub_narrow(op->args[0], op->args[1]);
        } else if (op->name == "rounding_shift_right_narrow") {
            internal_assert(op->args.size() == 2);
            return lower_rounding_shift_right_narrow(op->args[0], op->args[1]);
        } else if (op->name == "saturating_narrow") {
            internal_assert(op->args.size() == 1);
            return lower_saturating_narrow(op->args[0]);
        } else if (op->name == "saturating_negate") {
            internal_assert(op->args.size() == 1);
            return lower_saturating_negate(op->args[0]);
        } else if (op->name == "saturating_rounding_shift_left") {
            internal_assert(op->args.size() == 2);
            return lower_saturating_rounding_shift_left(op->args[0], op->args[1]);
        } else if (op->name == "saturating_rounding_shift_right_narrow") {
            internal_assert(op->args.size() == 2);
            return lower_saturating_rounding_shift_right_narrow(op->type, op->args[0], op->args[1]);
        } else if (op->name == "saturating_shift_left") {
            internal_assert(op->args.size() == 2);
            return lower_saturating_shift_left(op->type, op->args[0], op->args[1]);
        } else if (op->name == "saturating_shift_right_narrow") {
            internal_assert(op->args.size() == 2);
            return lower_saturating_shift_right_narrow(op->type, op->args[0], op->args[1]);
        } else if (op->name == "add_vector") {
            internal_assert(op->args.size() == 2);
            return lower_add_vector(op->args[0], op->args[1]);
        } else if (op->name == "add_across_vector") {
            internal_assert(op->args.size() == 1);
            return lower_add_across_vector(op->args[0]);
        } else if (op->name == "signed_add_long_across_vector") {
            internal_assert(op->args.size() == 1);
            return lower_signed_add_long_across_vector(op->args[0]);
        } else if (op->name == "shift_left_long") {
            internal_assert(op->args.size() == 1);
            return lower_shift_left_long(op->args[0]);
        } else if (op->name == "shift_right_narrow") {
            internal_assert(op->args.size() == 2);
            return lower_shift_right_narrow(op->args[0], op->args[1]);
        } else if (op->name == "signed_maximum_across_vector") {
            internal_assert(op->args.size() == 1);
            return lower_signed_maximum_across_vector(op->args[0]);
        } else if (op->name == "signed_minimum_across_vector") {
            internal_assert(op->args.size() == 1);
            return lower_signed_minimum_across_vector(op->args[0]);
        } else if (op->name == "signed_saturating_abs") {
            internal_assert(op->args.size() == 1);
            return lower_signed_saturating_abs(op->args[0]);
        } else if (op->name == "signed_saturating_doubling_mul_long_scalar" || op->name == "signed_saturating_doubling_mul_long_vector") {
            internal_assert(op->args.size() == 2);
            return lower_signed_saturating_doubling_mul_long(op->args[0], op->args[1]);
        } else if (op->name == "signed_shift_left_long") {
            internal_assert(op->args.size() == 2);
            return lower_signed_shift_left_long(op->args[0], op->args[1]);
        } else if (op->name == "sub_vector") {
            internal_assert(op->args.size() == 2);
            return lower_sub_vector(op->args[0], op->args[1]);
        } else if (op->name == "sub_high_narrow") {
            internal_assert(op->args.size() == 2);
            return lower_sub_high_narrow(op->args[0], op->args[1]);
        } else if (op->name == "signed_saturating_acc_unsigned") {
            internal_assert(op->args.size() == 2);
            return lower_signed_saturating_acc_unsigned(op->args[0], op->args[1]);
        } else if (op->name == "unsigned_add_long_across_vector") {
            internal_assert(op->args.size() == 1);
            return lower_unsigned_add_long_across_vector(op->args[0]);
        } else if (op->name == "unsigned_maximum_across_vector") {
            internal_assert(op->args.size() == 1);
            return lower_unsigned_maximum_across_vector(op->args[0]);
        } else if (op->name == "unsigned_minimum_across_vector") {
            internal_assert(op->args.size() == 1);
            return lower_unsigned_minimum_across_vector(op->args[0]);
        // } else if (op->name == "unsigned_reciprocal_sqrt_estimate") {
        //     internal_assert(op->args.size() == 1);
        //     return lower_unsigned_reciprocal_sqrt_estimate(op->args[0]);
        } else if (op->name == "unsigned_shift_left_long") {
            internal_assert(op->args.size() == 2);
            return lower_unsigned_shift_left_long(op->args[0], op->args[1]);
        } else if (op->name == "unsigned_saturating_acc_signed") {
            internal_assert(op->args.size() == 2);
            return lower_unsigned_saturating_acc_signed(op->args[0], op->args[1]);
        } else if (op->name == "add_high_narrow") {
            internal_assert(op->args.size() == 2);
            return lower_add_high_narrow(op->args[0], op->args[1]);
        } else if (op->name == "multiply_add_acc_scalar" || op->name == "multiply_add_acc_vector") {
            internal_assert(op->args.size() == 3);
            return lower_multiply_add_acc(op->args[0], op->args[1], op->args[2]);
        } else if (op->name == "multiply_sub_acc_scalar" || op->name == "multiply_sub_acc_vector") {
            internal_assert(op->args.size() == 3);
            return lower_multiply_sub_acc(op->args[0], op->args[1], op->args[2]);
        } else if (op->name == "multiply_vector_scalar" || op->name == "multiply_vector_vector") {
            internal_assert(op->args.size() == 2);
            return lower_multiply_vector(op->args[0], op->args[1]);
        } else if (op->name == "negate_vector") {
            internal_assert(op->args.size() == 1);
            return lower_negate_vector(op->args[0]);
        } else if (op->name == "signed_absd_acc") {
            internal_assert(op->args.size() == 3);
            return lower_signed_absd_acc(op->args[0], op->args[1], op->args[2]);
        } else if (op->name == "signed_absd_acc_long") {
            internal_assert(op->args.size() == 3);
            return lower_signed_absd_acc_long(op->args[0], op->args[1], op->args[2]);
        } else if (op->name == "signed_add_acc_long_pairwise" || op->name == "unsigned_add_acc_long_pairwise") {
            internal_assert(op->args.size() == 2);
            return lower_add_acc_long_pairwise(op->args[0], op->args[1]);
        } else if (op->name == "signed_add_long" || op->name == "unsigned_add_long") {
            internal_assert(op->args.size() == 2);
            return lower_add_long(op->args[0], op->args[1]);
        } else if (op->name == "signed_multiply_add_long_scalar" || op->name == "signed_multiply_add_long_vector" || op->name == "unsigned_multiply_add_long_scalar" || op->name == "unsigned_multiply_add_long_vector") {
            internal_assert(op->args.size() == 3);
            return lower_multiply_add_long(op->args[0], op->args[1], op->args[2]);
        } else if (op->name == "signed_add_wide" || op->name == "unsigned_add_wide") {
            internal_assert(op->args.size() == 2);
            return lower_add_wide(op->args[0], op->args[1]);
        } else if (op->name == "signed_multiply_sub_long_scalar" || op->name == "signed_multiply_sub_long_vector" || op->name == "unsigned_multiply_sub_long_scalar" || op->name == "unsigned_multiply_sub_long_vector") {
            internal_assert(op->args.size() == 3);
            return lower_multiply_sub_long(op->args[0], op->args[1], op->args[2]);
        } else if (op->name == "signed_sub_long" || op->name == "unsigned_sub_long") {
            internal_assert(op->args.size() == 2);
            return lower_sub_long(op->args[0], op->args[1]);
        } else if (op->name == "signed_sub_wide" || op->name == "unsigned_sub_wide") {
            internal_assert(op->args.size() == 2);
            return lower_sub_wide(op->args[0], op->args[1]);
        } else if (op->name == "signed_extend_long" || op->name == "unsigned_extend_long") {
            internal_assert(op->args.size() == 1);
            return lower_extend_long(op->type, op->args[0]);
        } else if (op->name == "extract_narrow") {
            internal_assert(op->args.size() == 1);
            return lower_extract_narrow(op->type, op->args[0]);
        } else if (op->name == "zip_vectors") {
            internal_assert(op->args.size() == 2);
            return lower_zip_vectors(op->type, op->args[0], op->args[1]);
        } else if (op->name == "unzip_even_vectors") {
            internal_assert(op->args.size() == 2);
            return lower_unzip_even_vectors(op->type, op->args[0], op->args[1]);
        } else if (op->name == "unzip_odd_vectors") {
            internal_assert(op->args.size() == 2);
            return lower_unzip_odd_vectors(op->type, op->args[0], op->args[1]);
        } else if (op->name == "duplicate_value" || op->name == "duplicate_value_wide" || op->name == "duplicate_value_narrow") {
            internal_assert(op->args.size() == 1);
            return lower_to_broadcast(op->type, op->args[0]);
        } else if (op->name == "transpose_vectors_odd") {
            internal_assert(op->args.size() == 2);
            return lower_transpose_vectors(op->type, op->args[0], op->args[1], 0);
        } else if (op->name == "transpose_vectors_even") {
            internal_assert(op->args.size() == 2);
            return lower_transpose_vectors(op->type, op->args[0], op->args[1], 1);
        } else if (op->name.find("extract_vectors_") == 0) {
            internal_assert(op->args.size() == 2);
            // This is really gross....
            const auto i = op->name.rfind('i');
            internal_assert(i != std::string::npos);
            const std::string sindex = op->name.substr(i + 1);
            const int index = std::stoi(sindex);
            return lower_extract_vectors(op->type, op->args[0], op->args[1], index);
        }
    }
    return Expr();
}

namespace {

class LowerIntrinsics : public IRMutator {
    using IRMutator::visit;

    Expr visit(const Call *op) override {
        Expr lowered = lower_intrinsic(op);
        if (lowered.defined()) {
            return mutate(lowered);
        }
        return IRMutator::visit(op);
    }
};

class LowerArmIntrinsics : public IRMutator {
    using IRMutator::visit;

    Expr visit(const Call *op) override {
        Expr lowered = lower_arm_intrinsic(op);
        if (lowered.defined()) {
            return mutate(lowered);
        }
        return IRMutator::visit(op);
    }
};

}  // namespace

Expr lower_intrinsics(const Expr &e) {
    return LowerIntrinsics().mutate(e);
}

Stmt lower_intrinsics(const Stmt &s) {
    return LowerIntrinsics().mutate(s);
}

Expr lower_arm_intrinsics(const Expr &expr) {
    return LowerArmIntrinsics().mutate(expr);
}

}  // namespace Internal
}  // namespace Halide
