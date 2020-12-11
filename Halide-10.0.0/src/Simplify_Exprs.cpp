#include "Simplify_Internal.h"

namespace Halide {
namespace Internal {

// Miscellaneous expression visitors that are too small to bother putting in their own files

Expr Simplify::visit(const IntImm *op, ExprInfo *bounds) {
    if (bounds && no_overflow_int(op->type)) {
        bounds->min_defined = bounds->max_defined = true;
        bounds->min = bounds->max = op->value;
        bounds->alignment.remainder = op->value;
        bounds->alignment.modulus = 0;
    }
    return op;
}

Expr Simplify::visit(const UIntImm *op, ExprInfo *bounds) {
    if (bounds && Int(64).can_represent(op->value)) {
        bounds->min_defined = bounds->max_defined = true;
        bounds->min = bounds->max = (int64_t)(op->value);
        bounds->alignment.remainder = op->value;
        bounds->alignment.modulus = 0;
    }
    return op;
}

Expr Simplify::visit(const FloatImm *op, ExprInfo *bounds) {
    return op;
}

Expr Simplify::visit(const StringImm *op, ExprInfo *bounds) {
    return op;
}

Expr Simplify::visit(const Broadcast *op, ExprInfo *bounds) {
    Expr value = mutate(op->value, bounds);
    if (value.same_as(op->value)) {
        return op;
    } else {
        return Broadcast::make(value, op->type.lanes());
    }
}

Expr Simplify::visit(const VectorReduce *op, ExprInfo *bounds) {
    Expr value = mutate(op->value, bounds);
    if (bounds && op->type.is_int()) {
        int factor = op->value.type().lanes() / op->type.lanes();
        switch (op->op) {
        case VectorReduce::Add:
            // Alignment of result is the alignment of the arg. Bounds
            // of the result can grow according to the reduction
            // factor.
            if (bounds->min_defined) {
                bounds->min *= factor;
            }
            if (bounds->max_defined) {
                bounds->max *= factor;
            }
            break;
        case VectorReduce::Mul:
            // Don't try to infer anything about bounds. Leave the
            // alignment unchanged even though we could theoretically
            // upgrade it.
            bounds->min_defined = bounds->max_defined = false;
            break;
        case VectorReduce::Min:
        case VectorReduce::Max:
            // Bounds and alignment of the result are just the bounds and alignment of the arg.
            break;
        case VectorReduce::And:
        case VectorReduce::Or:
            // For integer types this is a bitwise operator. Don't try
            // to infer anything for now.
            bounds->min_defined = bounds->max_defined = false;
            bounds->alignment = ModulusRemainder{};
            break;
        }
    };

    // We can pull multiplications by a broadcast out of horizontal
    // additions and do the horizontal addition earlier. This means we
    // do the multiplication on a vector with fewer lanes. This
    // approach applies whenever we have a distributive law. We'll
    // exploit the following distributive laws here:
    // - Multiplication distributes over addition
    // - min/max distributes over min/max
    // - and/or distributes over and/or

    // Further, we can collapse min/max/and/or of a broadcast down to
    // a narrower broadcast.

    // TODO: There are other rules we could apply here if they ever
    // come up in practice:
    // - a horizontal min/max/add of a ramp is a different ramp
    // - horizontal add of a broadcast is a broadcast + multiply
    // - horizontal reduce of an shuffle_vectors may be simplifiable to the
    //   underlying op on different shuffle_vectors calls

    const int lanes = op->type.lanes();
    const int arg_lanes = op->value.type().lanes();
    switch (op->op) {
    case VectorReduce::Add: {
        auto rewrite = IRMatcher::rewriter(IRMatcher::h_add(value, lanes), op->type);
        if (rewrite(h_add(x * broadcast(y)), h_add(x, lanes) * broadcast(y, lanes)) ||
            rewrite(h_add(broadcast(x) * y), h_add(y, lanes) * broadcast(x, lanes))) {
            return mutate(rewrite.result, bounds);
        }
        break;
    }
    case VectorReduce::Min: {
        auto rewrite = IRMatcher::rewriter(IRMatcher::h_min(value, lanes), op->type);
        if (rewrite(h_min(min(x, broadcast(y))), min(h_min(x, lanes), broadcast(y, lanes))) ||
            rewrite(h_min(min(broadcast(x), y)), min(h_min(y, lanes), broadcast(x, lanes))) ||
            rewrite(h_min(max(x, broadcast(y))), max(h_min(x, lanes), broadcast(y, lanes))) ||
            rewrite(h_min(max(broadcast(x), y)), max(h_min(y, lanes), broadcast(x, lanes))) ||
            rewrite(h_min(broadcast(x)), broadcast(x, lanes)) ||
            rewrite(h_min(ramp(x, y)), x + min(y * (arg_lanes - 1), 0)) ||
            false) {
            return mutate(rewrite.result, bounds);
        }
        break;
    }
    case VectorReduce::Max: {
        auto rewrite = IRMatcher::rewriter(IRMatcher::h_max(value, lanes), op->type);
        if (rewrite(h_max(min(x, broadcast(y))), min(h_max(x, lanes), broadcast(y, lanes))) ||
            rewrite(h_max(min(broadcast(x), y)), min(h_max(y, lanes), broadcast(x, lanes))) ||
            rewrite(h_max(max(x, broadcast(y))), max(h_max(x, lanes), broadcast(y, lanes))) ||
            rewrite(h_max(max(broadcast(x), y)), max(h_max(y, lanes), broadcast(x, lanes))) ||
            rewrite(h_max(broadcast(x)), broadcast(x, lanes)) ||
            rewrite(h_max(ramp(x, y)), x + max(y * (arg_lanes - 1), 0)) ||
            false) {
            return mutate(rewrite.result, bounds);
        }
        break;
    }
    case VectorReduce::And: {
        auto rewrite = IRMatcher::rewriter(IRMatcher::h_and(value, lanes), op->type);
        if (rewrite(h_and(x || broadcast(y)), h_and(x, lanes) || broadcast(y, lanes)) ||
            rewrite(h_and(broadcast(x) || y), h_and(y, lanes) || broadcast(x, lanes)) ||
            rewrite(h_and(x && broadcast(y)), h_and(x, lanes) && broadcast(y, lanes)) ||
            rewrite(h_and(broadcast(x) && y), h_and(y, lanes) && broadcast(x, lanes)) ||
            rewrite(h_and(broadcast(x)), broadcast(x, lanes)) ||
            rewrite(h_and(ramp(x, y) < broadcast(z)), x + max(y * (arg_lanes - 1), 0) < z) ||
            rewrite(h_and(ramp(x, y) <= broadcast(z)), x + max(y * (arg_lanes - 1), 0) <= z) ||
            rewrite(h_and(broadcast(x) < ramp(y, z)), x < y + min(z * (arg_lanes - 1), 0)) ||
            rewrite(h_and(broadcast(x) < ramp(y, z)), x <= y + min(z * (arg_lanes - 1), 0)) ||
            false) {
            return mutate(rewrite.result, bounds);
        }
        break;
    }
    case VectorReduce::Or: {
        auto rewrite = IRMatcher::rewriter(IRMatcher::h_or(value, lanes), op->type);
        if (rewrite(h_or(x || broadcast(y)), h_or(x, lanes) || broadcast(y, lanes)) ||
            rewrite(h_or(broadcast(x) || y), h_or(y, lanes) || broadcast(x, lanes)) ||
            rewrite(h_or(x && broadcast(y)), h_or(x, lanes) && broadcast(y, lanes)) ||
            rewrite(h_or(broadcast(x) && y), h_or(y, lanes) && broadcast(x, lanes)) ||
            rewrite(h_or(broadcast(x)), broadcast(x, lanes)) ||
            rewrite(h_or(ramp(x, y) < broadcast(z)), x + min(y * (arg_lanes - 1), 0) < z) ||
            rewrite(h_or(ramp(x, y) <= broadcast(z)), x + min(y * (arg_lanes - 1), 0) <= z) ||
            rewrite(h_or(broadcast(x) < ramp(y, z)), x < y + max(z * (arg_lanes - 1), 0)) ||
            rewrite(h_or(broadcast(x) < ramp(y, z)), x <= y + max(z * (arg_lanes - 1), 0)) ||
            false) {
            return mutate(rewrite.result, bounds);
        }
        break;
    }
    default:
        break;
    }

    if (value.same_as(op->value)) {
        return op;
    } else {
        return VectorReduce::make(op->op, value, op->type.lanes());
    }
}

Expr Simplify::visit(const Variable *op, ExprInfo *bounds) {
    if (bounds_and_alignment_info.contains(op->name)) {
        const ExprInfo &b = bounds_and_alignment_info.get(op->name);
        if (bounds) {
            *bounds = b;
        }
        if (b.min_defined && b.max_defined && b.min == b.max) {
            return make_const(op->type, b.min);
        }
    }

    if (var_info.contains(op->name)) {
        auto &info = var_info.ref(op->name);

        // if replacement is defined, we should substitute it in (unless
        // it's a var that has been hidden by a nested scope).
        if (info.replacement.defined()) {
            internal_assert(info.replacement.type() == op->type)
                << "Cannot replace variable " << op->name
                << " of type " << op->type
                << " with expression of type " << info.replacement.type() << "\n";
            info.new_uses++;
            // We want to remutate the replacement, because we may be
            // injecting it into a context where it is known to be a
            // constant (e.g. due to an if).
            return mutate(info.replacement, bounds);
        } else {
            // This expression was not something deemed
            // substitutable - no replacement is defined.
            info.old_uses++;
            return op;
        }
    } else {
        // We never encountered a let that defines this var. Must
        // be a uniform. Don't touch it.
        return op;
    }
}

Expr Simplify::visit(const Ramp *op, ExprInfo *bounds) {
    ExprInfo base_bounds, stride_bounds;
    Expr base = mutate(op->base, &base_bounds);
    Expr stride = mutate(op->stride, &stride_bounds);
    const int lanes = op->type.lanes();

    if (bounds && no_overflow_int(op->type)) {
        bounds->min_defined = base_bounds.min_defined && stride_bounds.min_defined;
        bounds->max_defined = base_bounds.max_defined && stride_bounds.max_defined;
        bounds->min = std::min(base_bounds.min, base_bounds.min + (lanes - 1) * stride_bounds.min);
        bounds->max = std::max(base_bounds.max, base_bounds.max + (lanes - 1) * stride_bounds.max);
        // A ramp lane is b + l * s. Expanding b into mb * x + rb and s into ms * y + rs, we get:
        //   mb * x + rb + l * (ms * y + rs)
        // = mb * x + ms * l * y + rs * l + rb
        // = gcd(rs, ms, mb) * z + rb
        int64_t m = stride_bounds.alignment.modulus;
        m = gcd(m, stride_bounds.alignment.remainder);
        m = gcd(m, base_bounds.alignment.modulus);
        int64_t r = base_bounds.alignment.remainder;
        if (m != 0) {
            r = mod_imp(base_bounds.alignment.remainder, m);
        }
        bounds->alignment = {m, r};
    }

    // A somewhat torturous way to check if the stride is zero,
    // but it helps to have as many rules as possible written as
    // formal rewrites, so that they can be formally verified,
    // etc.
    auto rewrite = IRMatcher::rewriter(IRMatcher::ramp(base, stride, lanes), op->type);
    if (rewrite(ramp(x, 0), broadcast(x, lanes))) {
        return rewrite.result;
    }

    if (base.same_as(op->base) &&
        stride.same_as(op->stride)) {
        return op;
    } else {
        return Ramp::make(base, stride, op->lanes);
    }
}

Expr Simplify::visit(const Load *op, ExprInfo *bounds) {
    found_buffer_reference(op->name);

    Expr predicate = mutate(op->predicate, nullptr);

    ExprInfo index_info;
    Expr index = mutate(op->index, &index_info);

    ExprInfo base_info;
    if (const Ramp *r = index.as<Ramp>()) {
        mutate(r->base, &base_info);
    }

    base_info.alignment = ModulusRemainder::intersect(base_info.alignment, index_info.alignment);

    ModulusRemainder align = ModulusRemainder::intersect(op->alignment, base_info.alignment);

    const Broadcast *b_index = index.as<Broadcast>();
    const Broadcast *b_pred = predicate.as<Broadcast>();
    if (is_zero(predicate)) {
        // Predicate is always false
        return undef(op->type);
    } else if (b_index && b_pred) {
        // Load of a broadcast should be broadcast of the load
        Expr load = Load::make(op->type.element_of(), op->name, b_index->value, op->image, op->param, b_pred->value, align);
        return Broadcast::make(load, b_index->lanes);
    } else if (predicate.same_as(op->predicate) && index.same_as(op->index) && align == op->alignment) {
        return op;
    } else {
        return Load::make(op->type, op->name, index, op->image, op->param, predicate, align);
    }
}

}  // namespace Internal
}  // namespace Halide