#ifndef HALIDE_RANDOM_H
#define HALIDE_RANDOM_H

/** \file
 *
 * Defines deterministic random functions, and methods to redirect
 * front-end calls to random_float and random_int to use them. */

#include <vector>

#include "Expr.h"
#include "Func.h"

namespace Halide {
namespace Internal {

/** Return a random floating-point number between zero and one that
 * varies deterministically based on the input expressions. */
Expr random_float(const std::vector<Expr> &);

/** Return a random unsigned integer between zero and 2^32-1 that
 * varies deterministically based on the input expressions (which must
 * be integers or unsigned integers). */
Expr random_int(const std::vector<Expr> &);

/** Convert calls to random() to IR generated by random_float and
 * random_int. Tags all calls with the variables in free_vars, and the
 * integer given as the last argument. */
Expr lower_random(const Expr &e, const std::vector<VarOrRVar> &free_vars, int tag);

}  // namespace Internal
}  // namespace Halide

#endif