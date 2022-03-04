#include <set>
#include <iomanip>
#include <sstream>

#include "CSE.h"
#include "CodeGen_Internal.h"
#include "CodeGen_Posix.h"
#include "ConciseCasts.h"
#include "Debug.h"
#include "FindIntrinsics.h"
#include "IREquality.h"
#include "IRMatch.h"
#include "IROperator.h"
#include "IRPrinter.h"
#include "LLVM_Headers.h"
#include "Rosette.h"
#include "Simplify.h"
#include "Substitute.h"
#include "Type.h"
#include "Util.h"

namespace Halide {
namespace Internal {

using std::ostringstream;
using std::pair;
using std::string;
using std::vector;

using namespace Halide::ConciseCasts;
using namespace llvm;

#ifndef WITH_ARM
// VSCode is being very annoying about syntax highlighting
#define WITH_ARM
#endif

#if defined(WITH_ARM) || defined(WITH_AARCH64)

namespace {

/** A code generator that emits ARM code from a given Halide stmt. */
class CodeGen_ARM : public CodeGen_Posix {
public:
    /** Create an ARM code generator for the given arm target. */
    CodeGen_ARM(const Target &);

protected:
    void compile_func(const LoweredFunc &f,
                      const std::string &simple_name, const std::string &extern_name) override;

    using CodeGen_Posix::visit;

    /** Assuming 'inner' is a function that takes two vector arguments, define a wrapper that
     * takes one vector argument and splits it into two to call inner. */
    llvm::Function *define_concat_args_wrapper(llvm::Function *inner, const string &name);
    void init_module() override;

    /** Nodes for which we want to emit specific neon intrinsics */
    // @{
    void visit(const Cast *) override;
    void visit(const Sub *) override;
    void visit(const Min *) override;
    void visit(const Max *) override;
    void visit(const Store *) override;
    void visit(const Load *) override;
    void visit(const Call *) override;
    void visit(const LT *) override;
    void visit(const LE *) override;
    void codegen_vector_reduce(const VectorReduce *, const Expr &) override;
    // @}
    Type upgrade_type_for_arithmetic(const Type &t) const override;
    Type upgrade_type_for_argument_passing(const Type &t) const override;
    Type upgrade_type_for_storage(const Type &t) const override;

    /** Various patterns to peephole match against */
    struct Pattern {
        string intrin;  ///< Name of the intrinsic
        Expr pattern;   ///< The pattern to match against
        Pattern() = default;
        Pattern(const string &intrin, Expr p)
            : intrin(intrin), pattern(std::move(p)) {
        }
    };
    vector<Pattern> casts, calls, averagings, negations;

    string mcpu() const override;
    string mattrs() const override;
    bool use_soft_float_abi() const override;
    int native_vector_bits() const override;

    // NEON can be disabled for older processors.
    bool neon_intrinsics_disabled() {
        return target.has_feature(Target::NoNEON);
    }

    bool is_float16_and_has_feature(const Type &t) const {
        // NOTE : t.is_float() returns true even in case of BFloat16. We don't include it for now.
        return t.code() == Type::Float && t.bits() == 16 && target.has_feature(Target::ARMFp16);
    }
    bool supports_call_as_float16(const Call *op) const override;
};

CodeGen_ARM::CodeGen_ARM(const Target &target)
    : CodeGen_Posix(target) {

    // RADDHN - Add and narrow with rounding
    // These must come before other narrowing rounding shift patterns
    casts.emplace_back("rounding_add_narrow", i8(rounding_shift_right(wild_i16x_ + wild_i16x_, 8)));
    casts.emplace_back("rounding_add_narrow", u8(rounding_shift_right(wild_u16x_ + wild_u16x_, 8)));
    casts.emplace_back("rounding_add_narrow", i16(rounding_shift_right(wild_i32x_ + wild_i32x_, 16)));
    casts.emplace_back("rounding_add_narrow", u16(rounding_shift_right(wild_u32x_ + wild_u32x_, 16)));
    casts.emplace_back("rounding_add_narrow", i32(rounding_shift_right(wild_i64x_ + wild_i64x_, 32)));
    casts.emplace_back("rounding_add_narrow", u32(rounding_shift_right(wild_u64x_ + wild_u64x_, 32)));

    // RSUBHN - Add and narrow with rounding
    // These must come before other narrowing rounding shift patterns
    casts.emplace_back("rounding_sub_narrow", i8(rounding_shift_right(wild_i16x_ - wild_i16x_, 8)));
    casts.emplace_back("rounding_sub_narrow", u8(rounding_shift_right(wild_u16x_ - wild_u16x_, 8)));
    casts.emplace_back("rounding_sub_narrow", i16(rounding_shift_right(wild_i32x_ - wild_i32x_, 16)));
    casts.emplace_back("rounding_sub_narrow", u16(rounding_shift_right(wild_u32x_ - wild_u32x_, 16)));
    casts.emplace_back("rounding_sub_narrow", i32(rounding_shift_right(wild_i64x_ - wild_i64x_, 32)));
    casts.emplace_back("rounding_sub_narrow", u32(rounding_shift_right(wild_u64x_ - wild_u64x_, 32)));

    // QDMULH - Saturating doubling multiply keep high half
    calls.emplace_back("qdmulh", mul_shift_right(wild_i16x_, wild_i16x_, 15));
    calls.emplace_back("qdmulh", mul_shift_right(wild_i32x_, wild_i32x_, 31));

    // QRDMULH - Saturating doubling multiply keep high half with rounding
    calls.emplace_back("qrdmulh", rounding_mul_shift_right(wild_i16x_, wild_i16x_, 15));
    calls.emplace_back("qrdmulh", rounding_mul_shift_right(wild_i32x_, wild_i32x_, 31));

    // RSHRN - Rounding shift right narrow (by immediate in [1, output bits])
    casts.emplace_back("rounding_shift_right_narrow", i8(rounding_shift_right(wild_i16x_, wild_u16_)));
    casts.emplace_back("rounding_shift_right_narrow", u8(rounding_shift_right(wild_u16x_, wild_u16_)));
    casts.emplace_back("rounding_shift_right_narrow", u8(rounding_shift_right(wild_i16x_, wild_u16_)));
    casts.emplace_back("rounding_shift_right_narrow", i16(rounding_shift_right(wild_i32x_, wild_u32_)));
    casts.emplace_back("rounding_shift_right_narrow", u16(rounding_shift_right(wild_u32x_, wild_u32_)));
    casts.emplace_back("rounding_shift_right_narrow", u16(rounding_shift_right(wild_i32x_, wild_u32_)));
    casts.emplace_back("rounding_shift_right_narrow", i32(rounding_shift_right(wild_i64x_, wild_u64_)));
    casts.emplace_back("rounding_shift_right_narrow", u32(rounding_shift_right(wild_u64x_, wild_u64_)));
    casts.emplace_back("rounding_shift_right_narrow", u32(rounding_shift_right(wild_i64x_, wild_u64_)));

    // SHRN - Shift right narrow (by immediate in [1, output bits])
    casts.emplace_back("shift_right_narrow", i8(wild_i16x_ >> wild_u16_));
    casts.emplace_back("shift_right_narrow", u8(wild_u16x_ >> wild_u16_));
    casts.emplace_back("shift_right_narrow", i16(wild_i32x_ >> wild_u32_));
    casts.emplace_back("shift_right_narrow", u16(wild_u32x_ >> wild_u32_));
    casts.emplace_back("shift_right_narrow", i32(wild_i64x_ >> wild_u64_));
    casts.emplace_back("shift_right_narrow", u32(wild_u64x_ >> wild_u64_));

    // SQRSHL, UQRSHL - Saturating rounding shift left (by signed vector)
    // TODO: We need to match rounding shift right, and negate the RHS.

    // SQRSHRN, SQRSHRUN, UQRSHRN - Saturating rounding narrowing shift right narrow (by immediate in [1, output bits])
    casts.emplace_back("saturating_rounding_shift_right_narrow", i8_sat(rounding_shift_right(wild_i16x_, wild_u16_)));
    casts.emplace_back("saturating_rounding_shift_right_narrow", u8_sat(rounding_shift_right(wild_u16x_, wild_u16_)));
    casts.emplace_back("saturating_rounding_shift_right_narrow", u8_sat(rounding_shift_right(wild_i16x_, wild_u16_)));
    casts.emplace_back("saturating_rounding_shift_right_narrow", i16_sat(rounding_shift_right(wild_i32x_, wild_u32_)));
    casts.emplace_back("saturating_rounding_shift_right_narrow", u16_sat(rounding_shift_right(wild_u32x_, wild_u32_)));
    casts.emplace_back("saturating_rounding_shift_right_narrow", u16_sat(rounding_shift_right(wild_i32x_, wild_u32_)));
    casts.emplace_back("saturating_rounding_shift_right_narrow", i32_sat(rounding_shift_right(wild_i64x_, wild_u64_)));
    casts.emplace_back("saturating_rounding_shift_right_narrow", u32_sat(rounding_shift_right(wild_u64x_, wild_u64_)));
    casts.emplace_back("saturating_rounding_shift_right_narrow", u32_sat(rounding_shift_right(wild_i64x_, wild_u64_)));

    // SQSHL, UQSHL, SQSHLU - Saturating shift left by signed register.
    for (const Expr &rhs : {wild_i8x_, wild_u8x_}) {
        casts.emplace_back("saturating_shift_left", i8_sat(widening_shift_left(wild_i8x_, rhs)));
        casts.emplace_back("saturating_shift_left", u8_sat(widening_shift_left(wild_u8x_, rhs)));
        casts.emplace_back("saturating_shift_left", u8_sat(widening_shift_left(wild_i8x_, rhs)));
    }
    for (const Expr &rhs : {wild_i16x_, wild_u16x_}) {
        casts.emplace_back("saturating_shift_left", i16_sat(widening_shift_left(wild_i16x_, rhs)));
        casts.emplace_back("saturating_shift_left", u16_sat(widening_shift_left(wild_u16x_, rhs)));
        casts.emplace_back("saturating_shift_left", u16_sat(widening_shift_left(wild_i16x_, rhs)));
    }
    for (const Expr &rhs : {wild_i32x_, wild_u32x_}) {
        casts.emplace_back("saturating_shift_left", i32_sat(widening_shift_left(wild_i32x_, rhs)));
        casts.emplace_back("saturating_shift_left", u32_sat(widening_shift_left(wild_u32x_, rhs)));
        casts.emplace_back("saturating_shift_left", u32_sat(widening_shift_left(wild_i32x_, rhs)));
    }

    // SQSHRN, UQSHRN, SQRSHRUN Saturating narrowing shift right by an (by immediate in [1, output bits])
    casts.emplace_back("saturating_shift_right_narrow", i8_sat(wild_i16x_ >> wild_u16_));
    casts.emplace_back("saturating_shift_right_narrow", u8_sat(wild_u16x_ >> wild_u16_));
    casts.emplace_back("saturating_shift_right_narrow", u8_sat(wild_i16x_ >> wild_u16_));
    casts.emplace_back("saturating_shift_right_narrow", i16_sat(wild_i32x_ >> wild_u32_));
    casts.emplace_back("saturating_shift_right_narrow", u16_sat(wild_u32x_ >> wild_u32_));
    casts.emplace_back("saturating_shift_right_narrow", u16_sat(wild_i32x_ >> wild_u32_));
    casts.emplace_back("saturating_shift_right_narrow", i32_sat(wild_i64x_ >> wild_u64_));
    casts.emplace_back("saturating_shift_right_narrow", u32_sat(wild_u64x_ >> wild_u64_));
    casts.emplace_back("saturating_shift_right_narrow", u32_sat(wild_i64x_ >> wild_u64_));

    // SRSHL, URSHL - Rounding shift left (by signed vector)
    // These are already written as rounding_shift_left

    // SRSHR, URSHR - Rounding shift right (by immediate in [1, output bits])
    // These patterns are almost identity, we just need to strip off the broadcast.

    // SSHLL, USHLL - Shift left long (by immediate in [0, output bits - 1])
    // These patterns are almost identity, we just need to strip off the broadcast.

    // SQXTN, UQXTN, SQXTUN - Saturating narrow.
    casts.emplace_back("saturating_narrow", i8_sat(wild_i16x_));
    casts.emplace_back("saturating_narrow", u8_sat(wild_u16x_));
    casts.emplace_back("saturating_narrow", u8_sat(wild_i16x_));
    casts.emplace_back("saturating_narrow", i16_sat(wild_i32x_));
    casts.emplace_back("saturating_narrow", u16_sat(wild_u32x_));
    casts.emplace_back("saturating_narrow", u16_sat(wild_i32x_));
    casts.emplace_back("saturating_narrow", i32_sat(wild_i64x_));
    casts.emplace_back("saturating_narrow", u32_sat(wild_u64x_));
    casts.emplace_back("saturating_narrow", u32_sat(wild_i64x_));

    // SQNEG - Saturating negate
    negations.emplace_back("saturating_negate", -max(wild_i8x_, -127));
    negations.emplace_back("saturating_negate", -max(wild_i16x_, -32767));
    negations.emplace_back("saturating_negate", -max(wild_i32x_, -(0x7fffffff)));
    // clang-format on
}

constexpr int max_intrinsic_args = 4;

struct ArmIntrinsic {
    const char *arm32;
    const char *arm64;
    halide_type_t ret_type;
    const char *name;
    halide_type_t arg_types[max_intrinsic_args];
    int flags;
    enum {
        AllowUnsignedOp1 = 1 << 0,   // Generate a second version of the instruction with the second operand unsigned.
        HalfWidth = 1 << 1,          // This is a half-width instruction that should have a full width version generated as well.
        NoMangle = 1 << 2,           // Don't mangle this intrinsic name.
        MangleArgs = 1 << 3,         // Most intrinsics only mangle the return type. Some mangle the arguments instead.
        MangleRetArgs = 1 << 4,      // Most intrinsics only mangle the return type. Some mangle the return type and arguments instead.
        ScalarsAreVectors = 1 << 5,  // Some intrinsics have scalar arguments that are vector parameters :(
        SplitArg0 = 1 << 6,          // This intrinsic requires splitting the argument into the low and high halves.
        NoPrefix = 1 << 7,           // Don't prefix the intrinsic with llvm.*
        RequireFp16 = 1 << 8,        // Available only if Target has ARMFp16 feature
    };
};

// clang-format off
const ArmIntrinsic intrinsic_defs[] = {
    {"vabs", "abs", UInt(8, 8), "abs", {Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vabs", "abs", UInt(16, 4), "abs", {Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vabs", "abs", UInt(32, 2), "abs", {Int(32, 2)}, ArmIntrinsic::HalfWidth},
    {"llvm.fabs", "llvm.fabs", Float(32, 2), "abs", {Float(32, 2)}, ArmIntrinsic::HalfWidth},
    {"llvm.fabs", "llvm.fabs", Float(16, 4), "abs", {Float(16, 4)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::RequireFp16},

    {"llvm.sqrt", "llvm.sqrt", Float(32, 2), "sqrt_f32", {Float(32, 2)}, ArmIntrinsic::HalfWidth},
    {"llvm.sqrt", "llvm.sqrt", Float(64, 2), "sqrt_f64", {Float(64, 2)}},

    // SABD, UABD - Absolute difference
    {"vabdu", "uabd", UInt(8, 8), "absd", {UInt(8, 8), UInt(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vabdu", "uabd", UInt(16, 4), "absd", {UInt(16, 4), UInt(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vabdu", "uabd", UInt(32, 2), "absd", {UInt(32, 2), UInt(32, 2)}, ArmIntrinsic::HalfWidth},

    {"vabds", "sabd", UInt(8, 8), "absd", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vabds", "sabd", UInt(16, 4), "absd", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vabds", "sabd", UInt(32, 2), "absd", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},


    // SMULL, UMULL - Widening multiply
    {"vmullu", "umull-vv", UInt(16, 8), "widening_mul", {UInt(8, 8), UInt(8, 8)}},
    {"vmullu", "umull-vv", UInt(32, 4), "widening_mul", {UInt(16, 4), UInt(16, 4)}},
    {"vmullu", "umull-vv", UInt(64, 2), "widening_mul", {UInt(32, 2), UInt(32, 2)}},

    {"vmulls", "smull-vv", Int(16, 8), "widening_mul", {Int(8, 8), Int(8, 8)}},
    {"vmulls", "smull-vv", Int(32, 4), "widening_mul", {Int(16, 4), Int(16, 4)}},
    {"vmulls", "smull-vv", Int(64, 2), "widening_mul", {Int(32, 2), Int(32, 2)}},

    // SMULL, UMUll - Widening multiply (vector-scalar)
    // Only the 16 bit -> 32 bit and 32 bit -> 64 bit versions of these exist.
    // The 8 bit -> 16 bit version must be compiled into the version above with
    // the second argument broadcasted
    {nullptr, "umull-vs", UInt(16, 8), "widening_mul", {UInt(8, 8), UInt(8)}},
    {nullptr, "umull-vs", UInt(32, 4), "widening_mul", {UInt(16, 4), UInt(16)}},
    {nullptr, "umull-vs", UInt(64, 2), "widening_mul", {UInt(32, 2), UInt(32)}},

    {nullptr, "smull-vs", Int(16, 8), "widening_mul", {Int(8, 8), Int(8)}},
    {nullptr, "smull-vs", Int(32, 4), "widening_mul", {Int(16, 4), Int(16)}},
    {nullptr, "smull-vs", Int(64, 2), "widening_mul", {Int(32, 2), Int(32)}},

    // SQADD, UQADD - Saturating add
    // On arm32, the ARM version of this seems to be missing on some configurations.
    // Rather than debug this, just use LLVM's saturating add intrinsic.
    {"llvm.uadd.sat", "uqadd", UInt(8, 8), "saturating_add", {UInt(8, 8), UInt(8, 8)}, ArmIntrinsic::HalfWidth},
    {"llvm.uadd.sat", "uqadd", UInt(16, 4), "saturating_add", {UInt(16, 4), UInt(16, 4)}, ArmIntrinsic::HalfWidth},
    {"llvm.uadd.sat", "uqadd", UInt(32, 2), "saturating_add", {UInt(32, 2), UInt(32, 2)}, ArmIntrinsic::HalfWidth},

    {"llvm.sadd.sat", "sqadd", Int(8, 8), "saturating_add", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"llvm.sadd.sat", "sqadd", Int(16, 4), "saturating_add", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"llvm.sadd.sat", "sqadd", Int(32, 2), "saturating_add", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},

    // SQSUB, UQSUB - Saturating subtract
    {"llvm.usub.sat", "uqsub", UInt(8, 8), "saturating_sub", {UInt(8, 8), UInt(8, 8)}, ArmIntrinsic::HalfWidth},
    {"llvm.usub.sat", "uqsub", UInt(16, 4), "saturating_sub", {UInt(16, 4), UInt(16, 4)}, ArmIntrinsic::HalfWidth},
    {"llvm.usub.sat", "uqsub", UInt(32, 2), "saturating_sub", {UInt(32, 2), UInt(32, 2)}, ArmIntrinsic::HalfWidth},

    {"llvm.ssub.sat", "sqsub", Int(8, 8), "saturating_sub", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"llvm.ssub.sat", "sqsub", Int(16, 4), "saturating_sub", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"llvm.ssub.sat", "sqsub", Int(32, 2), "saturating_sub", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},

    // SHADD, UHADD - Halving add
    {"vhaddu", "uhadd", UInt(8, 8), "halving_add", {UInt(8, 8), UInt(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vhaddu", "uhadd", UInt(16, 4), "halving_add", {UInt(16, 4), UInt(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vhaddu", "uhadd", UInt(32, 2), "halving_add", {UInt(32, 2), UInt(32, 2)}, ArmIntrinsic::HalfWidth},

    {"vhadds", "shadd", Int(8, 8), "halving_add", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vhadds", "shadd", Int(16, 4), "halving_add", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vhadds", "shadd", Int(32, 2), "halving_add", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},

    // SHSUB, UHSUB - Halving subtract
    {"vhsubu", "uhsub", UInt(8, 8), "halving_sub", {UInt(8, 8), UInt(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vhsubu", "uhsub", UInt(16, 4), "halving_sub", {UInt(16, 4), UInt(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vhsubu", "uhsub", UInt(32, 2), "halving_sub", {UInt(32, 2), UInt(32, 2)}, ArmIntrinsic::HalfWidth},

    {"vhsubs", "shsub", Int(8, 8), "halving_sub", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vhsubs", "shsub", Int(16, 4), "halving_sub", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vhsubs", "shsub", Int(32, 2), "halving_sub", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},

    // SRHADD, URHADD - Halving add with rounding
    {"vrhaddu", "urhadd", UInt(8, 8), "rounding_halving_add", {UInt(8, 8), UInt(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vrhaddu", "urhadd", UInt(16, 4), "rounding_halving_add", {UInt(16, 4), UInt(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vrhaddu", "urhadd", UInt(32, 2), "rounding_halving_add", {UInt(32, 2), UInt(32, 2)}, ArmIntrinsic::HalfWidth},

    {"vrhadds", "srhadd", Int(8, 8), "rounding_halving_add", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vrhadds", "srhadd", Int(16, 4), "rounding_halving_add", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vrhadds", "srhadd", Int(32, 2), "rounding_halving_add", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},

    // SRHSUB, URHSUB - Halving sub with rounding
    {"vrhsubu", "urhsub", UInt(8, 8), "rounding_halving_sub", {UInt(8, 8), UInt(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vrhsubu", "urhsub", UInt(16, 4), "rounding_halving_sub", {UInt(16, 4), UInt(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vrhsubu", "urhsub", UInt(32, 2), "rounding_halving_sub", {UInt(32, 2), UInt(32, 2)}, ArmIntrinsic::HalfWidth},
// 52
    {"vrhsubs", "srhsub", Int(8, 8), "rounding_halving_sub", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vrhsubs", "srhsub", Int(16, 4), "rounding_halving_sub", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vrhsubs", "srhsub", Int(32, 2), "rounding_halving_sub", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},

    // SMIN, UMIN, FMIN - Min
    {"vminu", "umin", UInt(8, 8), "min", {UInt(8, 8), UInt(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vminu", "umin", UInt(16, 4), "min", {UInt(16, 4), UInt(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vminu", "umin", UInt(32, 2), "min", {UInt(32, 2), UInt(32, 2)}, ArmIntrinsic::HalfWidth},

    {"vmins", "smin", Int(8, 8), "min", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vmins", "smin", Int(16, 4), "min", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vmins", "smin", Int(32, 2), "min", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},

    {"vmins", "fmin", Float(32, 2), "min", {Float(32, 2), Float(32, 2)}, ArmIntrinsic::HalfWidth},
    {"vmins", "fmin", Float(16, 4), "min", {Float(16, 4), Float(16, 4)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::RequireFp16},

    // FCVTZS, FCVTZU
    {nullptr, "fcvtzs", Int(16, 4), "fp_to_int", {Float(16, 4)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleRetArgs | ArmIntrinsic::RequireFp16},
    {nullptr, "fcvtzu", UInt(16, 4), "fp_to_int", {Float(16, 4)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleRetArgs | ArmIntrinsic::RequireFp16},

    // SMAX, UMAX, FMAX - Max
    {"vmaxu", "umax", UInt(8, 8), "max", {UInt(8, 8), UInt(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vmaxu", "umax", UInt(16, 4), "max", {UInt(16, 4), UInt(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vmaxu", "umax", UInt(32, 2), "max", {UInt(32, 2), UInt(32, 2)}, ArmIntrinsic::HalfWidth},

    {"vmaxs", "smax", Int(8, 8), "max", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vmaxs", "smax", Int(16, 4), "max", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vmaxs", "smax", Int(32, 2), "max", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},

    {"vmaxs", "fmax", Float(32, 2), "max", {Float(32, 2), Float(32, 2)}, ArmIntrinsic::HalfWidth},
    {"vmaxs", "fmax", Float(16, 4), "max", {Float(16, 4), Float(16, 4)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::RequireFp16},

    // SQNEG, UQNEG - Saturating negation
    {"vqneg", "sqneg", Int(8, 8), "saturating_negate", {Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vqneg", "sqneg", Int(16, 4), "saturating_negate", {Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vqneg", "sqneg", Int(32, 2), "saturating_negate", {Int(32, 2)}, ArmIntrinsic::HalfWidth},
    {"vqneg", "sqneg", Int(64, 2), "saturating_negate", {Int(64, 2)}},

    // SQXTN, UQXTN, SQXTUN - Saturating narrowing
    {"vqmovnu", "uqxtn", UInt(8, 8), "saturating_narrow", {UInt(16, 8)}},
    {"vqmovnu", "uqxtn", UInt(16, 4), "saturating_narrow", {UInt(32, 4)}},
    {"vqmovnu", "uqxtn", UInt(32, 2), "saturating_narrow", {UInt(64, 2)}},

    {"vqmovns", "sqxtn", Int(8, 8), "saturating_narrow", {Int(16, 8)}},
    {"vqmovns", "sqxtn", Int(16, 4), "saturating_narrow", {Int(32, 4)}},
    {"vqmovns", "sqxtn", Int(32, 2), "saturating_narrow", {Int(64, 2)}},

    {"vqmovnsu", "sqxtun", UInt(8, 8), "saturating_narrow", {Int(16, 8)}},
    {"vqmovnsu", "sqxtun", UInt(16, 4), "saturating_narrow", {Int(32, 4)}},
    {"vqmovnsu", "sqxtun", UInt(32, 2), "saturating_narrow", {Int(64, 2)}},

    // RSHRN - Rounding shift right narrow (by immediate in [1, output bits])
    // arm32 expects a vector RHS of the same type as the LHS except signed.
    {"vrshiftn", nullptr, Int(8, 8), "rounding_shift_right_narrow", {Int(16, 8), Int(16, 8)}},
    {"vrshiftn", nullptr, UInt(8, 8), "rounding_shift_right_narrow", {UInt(16, 8), Int(16, 8)}},
    {"vrshiftn", nullptr, Int(16, 4), "rounding_shift_right_narrow", {Int(32, 4), Int(32, 4)}},
    {"vrshiftn", nullptr, UInt(16, 4), "rounding_shift_right_narrow", {UInt(32, 4), Int(32, 4)}},
    {"vrshiftn", nullptr, Int(32, 2), "rounding_shift_right_narrow", {Int(64, 2), Int(64, 2)}},
    {"vrshiftn", nullptr, UInt(32, 2), "rounding_shift_right_narrow", {UInt(64, 2), Int(64, 2)}},

    // arm64 expects a 32-bit constant.
    {nullptr, "rshrn", Int(8, 8), "rounding_shift_right_narrow", {Int(16, 8), UInt(32)}},
    {nullptr, "rshrn", UInt(8, 8), "rounding_shift_right_narrow", {UInt(16, 8), UInt(32)}},
    {nullptr, "rshrn", Int(16, 4), "rounding_shift_right_narrow", {Int(32, 4), UInt(32)}},
    {nullptr, "rshrn", UInt(16, 4), "rounding_shift_right_narrow", {UInt(32, 4), UInt(32)}},
    {nullptr, "rshrn", Int(32, 2), "rounding_shift_right_narrow", {Int(64, 2), UInt(32)}},
    {nullptr, "rshrn", UInt(32, 2), "rounding_shift_right_narrow", {UInt(64, 2), UInt(32)}},

    // SHRN - Shift right narrow (by immediate in [1, output bits])
    // LLVM pattern matches these.

    // SQRSHL, UQRSHL - Saturating rounding shift left (by signed vector)
    {"vqrshiftu", "uqrshl", UInt(8, 8), "saturating_rounding_shift_left", {UInt(8, 8), Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vqrshiftu", "uqrshl", UInt(16, 4), "saturating_rounding_shift_left", {UInt(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vqrshiftu", "uqrshl", UInt(32, 2), "saturating_rounding_shift_left", {UInt(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},
    {"vqrshiftu", "uqrshl", UInt(64, 2), "saturating_rounding_shift_left", {UInt(64, 2), Int(64, 2)}},

    {"vqrshifts", "sqrshl", Int(8, 8), "saturating_rounding_shift_left", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vqrshifts", "sqrshl", Int(16, 4), "saturating_rounding_shift_left", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vqrshifts", "sqrshl", Int(32, 2), "saturating_rounding_shift_left", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},
    {"vqrshifts", "sqrshl", Int(64, 2), "saturating_rounding_shift_left", {Int(64, 2), Int(64, 2)}},

    // SQRSHRN, UQRSHRN, SQRSHRUN - Saturating rounding narrowing shift right (by immediate in [1, output bits])
    // arm32 expects a vector RHS of the same type as the LHS except signed.
    {"vqrshiftns", nullptr, Int(8, 8), "saturating_rounding_shift_right_narrow", {Int(16, 8), Int(16, 8)}},
    {"vqrshiftnu", nullptr, UInt(8, 8), "saturating_rounding_shift_right_narrow", {UInt(16, 8), Int(16, 8)}},
    {"vqrshiftnsu", nullptr, UInt(8, 8), "saturating_rounding_shift_right_narrow", {Int(16, 8), Int(16, 8)}},
    {"vqrshiftns", nullptr, Int(16, 4), "saturating_rounding_shift_right_narrow", {Int(32, 4), Int(32, 4)}},
    {"vqrshiftnu", nullptr, UInt(16, 4), "saturating_rounding_shift_right_narrow", {UInt(32, 4), Int(32, 4)}},
    {"vqrshiftnsu", nullptr, UInt(16, 4), "saturating_rounding_shift_right_narrow", {Int(32, 4), Int(32, 4)}},
    {"vqrshiftns", nullptr, Int(32, 2), "saturating_rounding_shift_right_narrow", {Int(64, 2), Int(64, 2)}},
    {"vqrshiftnu", nullptr, UInt(32, 2), "saturating_rounding_shift_right_narrow", {UInt(64, 2), Int(64, 2)}},
    {"vqrshiftnsu", nullptr, UInt(32, 2), "saturating_rounding_shift_right_narrow", {Int(64, 2), Int(64, 2)}},

    // arm64 expects a 32-bit constant.
    {nullptr, "uqrshrn", UInt(8, 8), "saturating_rounding_shift_right_narrow", {UInt(16, 8), UInt(32)}},
    {nullptr, "uqrshrn", UInt(16, 4), "saturating_rounding_shift_right_narrow", {UInt(32, 4), UInt(32)}},
    {nullptr, "uqrshrn", UInt(32, 2), "saturating_rounding_shift_right_narrow", {UInt(64, 2), UInt(32)}},

    {nullptr, "sqrshrn", Int(8, 8), "saturating_rounding_shift_right_narrow", {Int(16, 8), UInt(32)}},
    {nullptr, "sqrshrn", Int(16, 4), "saturating_rounding_shift_right_narrow", {Int(32, 4), UInt(32)}},
    {nullptr, "sqrshrn", Int(32, 2), "saturating_rounding_shift_right_narrow", {Int(64, 2), UInt(32)}},

    {nullptr, "sqrshrun", UInt(8, 8), "saturating_rounding_shift_right_narrow", {Int(16, 8), UInt(32)}},
    {nullptr, "sqrshrun", UInt(16, 4), "saturating_rounding_shift_right_narrow", {Int(32, 4), UInt(32)}},
    {nullptr, "sqrshrun", UInt(32, 2), "saturating_rounding_shift_right_narrow", {Int(64, 2), UInt(32)}},

    // SQSHL, UQSHL, SQSHLU - Saturating shift left by signed register.
    // There is also an immediate version of this - hopefully LLVM does this matching when appropriate.
    {"vqshiftu", "uqshl", UInt(8, 8), "saturating_shift_left", {UInt(8, 8), Int(8, 8)}, ArmIntrinsic::AllowUnsignedOp1 | ArmIntrinsic::HalfWidth},
    {"vqshiftu", "uqshl", UInt(16, 4), "saturating_shift_left", {UInt(16, 4), Int(16, 4)}, ArmIntrinsic::AllowUnsignedOp1 | ArmIntrinsic::HalfWidth},
    {"vqshiftu", "uqshl", UInt(32, 2), "saturating_shift_left", {UInt(32, 2), Int(32, 2)}, ArmIntrinsic::AllowUnsignedOp1 | ArmIntrinsic::HalfWidth},
    {"vqshiftu", "uqshl", UInt(64, 2), "saturating_shift_left", {UInt(64, 2), Int(64, 2)}, ArmIntrinsic::AllowUnsignedOp1},

    {"vqshiftsu", "sqshlu", UInt(8, 8), "saturating_shift_left", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::AllowUnsignedOp1 | ArmIntrinsic::HalfWidth},
    {"vqshiftsu", "sqshlu", UInt(16, 4), "saturating_shift_left", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::AllowUnsignedOp1 | ArmIntrinsic::HalfWidth},
    {"vqshiftsu", "sqshlu", UInt(32, 2), "saturating_shift_left", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::AllowUnsignedOp1 | ArmIntrinsic::HalfWidth},
    {"vqshiftsu", "sqshlu", UInt(64, 2), "saturating_shift_left", {Int(64, 2), Int(64, 2)}, ArmIntrinsic::AllowUnsignedOp1},

    {"vqshifts", "sqshl", Int(8, 8), "saturating_shift_left", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::AllowUnsignedOp1 | ArmIntrinsic::HalfWidth},
    {"vqshifts", "sqshl", Int(16, 4), "saturating_shift_left", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::AllowUnsignedOp1 | ArmIntrinsic::HalfWidth},
    {"vqshifts", "sqshl", Int(32, 2), "saturating_shift_left", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::AllowUnsignedOp1 | ArmIntrinsic::HalfWidth},
    {"vqshifts", "sqshl", Int(64, 2), "saturating_shift_left", {Int(64, 2), Int(64, 2)}, ArmIntrinsic::AllowUnsignedOp1},

    // SQSHRN, UQSHRN, SQRSHRUN Saturating narrowing shift right by an (by immediate in [1, output bits])
    // arm32 expects a vector RHS of the same type as the LHS.
    {"vqshiftns", nullptr, Int(8, 8), "saturating_shift_right_narrow", {Int(16, 8), Int(16, 8)}},
    {"vqshiftnu", nullptr, UInt(8, 8), "saturating_shift_right_narrow", {UInt(16, 8), Int(16, 8)}},
    {"vqshiftns", nullptr, Int(16, 4), "saturating_shift_right_narrow", {Int(32, 4), Int(32, 4)}},
    {"vqshiftnu", nullptr, UInt(16, 4), "saturating_shift_right_narrow", {UInt(32, 4), Int(32, 4)}},
    {"vqshiftns", nullptr, Int(32, 2), "saturating_shift_right_narrow", {Int(64, 2), Int(64, 2)}},
    {"vqshiftnu", nullptr, UInt(32, 2), "saturating_shift_right_narrow", {UInt(64, 2), Int(64, 2)}},
    {"vqshiftnsu", nullptr, UInt(8, 8), "saturating_shift_right_narrow", {Int(16, 8), Int(16, 8)}},
    {"vqshiftnsu", nullptr, UInt(16, 4), "saturating_shift_right_narrow", {Int(32, 4), Int(32, 4)}},
    {"vqshiftnsu", nullptr, UInt(32, 2), "saturating_shift_right_narrow", {Int(64, 2), Int(64, 2)}},

    // arm64 expects a 32-bit constant.
    {nullptr, "uqshrn", UInt(8, 8), "saturating_shift_right_narrow", {UInt(16, 8), UInt(32)}},
    {nullptr, "uqshrn", UInt(16, 4), "saturating_shift_right_narrow", {UInt(32, 4), UInt(32)}},
    {nullptr, "uqshrn", UInt(32, 2), "saturating_shift_right_narrow", {UInt(64, 2), UInt(32)}},

    {nullptr, "sqshrn", Int(8, 8), "saturating_shift_right_narrow", {Int(16, 8), UInt(32)}},
    {nullptr, "sqshrn", Int(16, 4), "saturating_shift_right_narrow", {Int(32, 4), UInt(32)}},
    {nullptr, "sqshrn", Int(32, 2), "saturating_shift_right_narrow", {Int(64, 2), UInt(32)}},

    {nullptr, "sqshrun", UInt(8, 8), "saturating_shift_right_narrow", {Int(16, 8), UInt(32)}},
    {nullptr, "sqshrun", UInt(16, 4), "saturating_shift_right_narrow", {Int(32, 4), UInt(32)}},
    {nullptr, "sqshrun", UInt(32, 2), "saturating_shift_right_narrow", {Int(64, 2), UInt(32)}},

    // SRSHL, URSHL - Rounding shift left (by signed vector)
    {"vrshiftu", "urshl", UInt(8, 8), "rounding_shift_left", {UInt(8, 8), Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vrshiftu", "urshl", UInt(16, 4), "rounding_shift_left", {UInt(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vrshiftu", "urshl", UInt(32, 2), "rounding_shift_left", {UInt(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},
    {"vrshiftu", "urshl", UInt(64, 2), "rounding_shift_left", {UInt(64, 2), Int(64, 2)}},

    {"vrshifts", "srshl", Int(8, 8), "rounding_shift_left", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vrshifts", "srshl", Int(16, 4), "rounding_shift_left", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vrshifts", "srshl", Int(32, 2), "rounding_shift_left", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},
    {"vrshifts", "srshl", Int(64, 2), "rounding_shift_left", {Int(64, 2), Int(64, 2)}},

    // SSHL, USHL - Shift left (by signed vector)
    {"vshiftu", "ushl", UInt(8, 8), "shift_left", {UInt(8, 8), Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vshiftu", "ushl", UInt(16, 4), "shift_left", {UInt(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vshiftu", "ushl", UInt(32, 2), "shift_left", {UInt(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},
    {"vshiftu", "ushl", UInt(64, 2), "shift_left", {UInt(64, 2), Int(64, 2)}},

    {"vshifts", "sshl", Int(8, 8), "shift_left", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::HalfWidth},
    {"vshifts", "sshl", Int(16, 4), "shift_left", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vshifts", "sshl", Int(32, 2), "shift_left", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},
    {"vshifts", "sshl", Int(64, 2), "shift_left", {Int(64, 2), Int(64, 2)}},

    // SRSHR, URSHR - Rounding shift right (by immediate in [1, output bits])
    // LLVM wants these expressed as SRSHL by negative amounts.

    // SSHLL, USHLL - Shift left long (by immediate in [0, output bits - 1])
    // LLVM pattern matches these for us.

    // RADDHN - Add and narrow with rounding.
    {"vraddhn", "raddhn", Int(8, 8), "rounding_add_narrow", {Int(16, 8), Int(16, 8)}},
    {"vraddhn", "raddhn", UInt(8, 8), "rounding_add_narrow", {UInt(16, 8), UInt(16, 8)}},
    {"vraddhn", "raddhn", Int(16, 4), "rounding_add_narrow", {Int(32, 4), Int(32, 4)}},
    {"vraddhn", "raddhn", UInt(16, 4), "rounding_add_narrow", {UInt(32, 4), UInt(32, 4)}},
    {"vraddhn", "raddhn", Int(32, 2), "rounding_add_narrow", {Int(64, 2), Int(64, 2)}},
    {"vraddhn", "raddhn", UInt(32, 2), "rounding_add_narrow", {UInt(64, 2), UInt(64, 2)}},

    // RSUBHN - Sub and narrow with rounding.
    {"vrsubhn", "rsubhn", Int(8, 8), "rounding_sub_narrow", {Int(16, 8), Int(16, 8)}},
    {"vrsubhn", "rsubhn", UInt(8, 8), "rounding_sub_narrow", {UInt(16, 8), UInt(16, 8)}},
    {"vrsubhn", "rsubhn", Int(16, 4), "rounding_sub_narrow", {Int(32, 4), Int(32, 4)}},
    {"vrsubhn", "rsubhn", UInt(16, 4), "rounding_sub_narrow", {UInt(32, 4), UInt(32, 4)}},
    {"vrsubhn", "rsubhn", Int(32, 2), "rounding_sub_narrow", {Int(64, 2), Int(64, 2)}},
    {"vrsubhn", "rsubhn", UInt(32, 2), "rounding_sub_narrow", {UInt(64, 2), UInt(64, 2)}},

    // SQDMULH - Saturating doubling multiply keep high half.
    {"vqdmulh", "sqdmulh", Int(16, 4), "qdmulh", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vqdmulh", "sqdmulh", Int(32, 2), "qdmulh", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},

    // SQRDMULH - Saturating doubling multiply keep high half with rounding.
    {"vqrdmulh", "sqrdmulh", Int(16, 4), "qrdmulh", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::HalfWidth},
    {"vqrdmulh", "sqrdmulh", Int(32, 2), "qrdmulh", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::HalfWidth},

    // PADD - Pairwise add.
    // 32-bit only has half-width versions.
    {"vpadd", nullptr, Int(8, 8), "pairwise_add", {Int(8, 16)}, ArmIntrinsic::SplitArg0},
    {"vpadd", nullptr, UInt(8, 8), "pairwise_add", {UInt(8, 16)}, ArmIntrinsic::SplitArg0},
    {"vpadd", nullptr, Int(16, 4), "pairwise_add", {Int(16, 8)}, ArmIntrinsic::SplitArg0},
    {"vpadd", nullptr, UInt(16, 4), "pairwise_add", {UInt(16, 8)}, ArmIntrinsic::SplitArg0},
    {"vpadd", nullptr, Int(32, 2), "pairwise_add", {Int(32, 4)}, ArmIntrinsic::SplitArg0},
    {"vpadd", nullptr, UInt(32, 2), "pairwise_add", {UInt(32, 4)}, ArmIntrinsic::SplitArg0},
    {"vpadd", nullptr, Float(32, 2), "pairwise_add", {Float(32, 4)}, ArmIntrinsic::SplitArg0},
    {"vpadd", nullptr, Float(16, 4), "pairwise_add", {Float(16, 8)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::RequireFp16},

    {nullptr, "addp", Int(8, 8), "pairwise_add", {Int(8, 16)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "addp", UInt(8, 8), "pairwise_add", {UInt(8, 16)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "addp", Int(16, 4), "pairwise_add", {Int(16, 8)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "addp", UInt(16, 4), "pairwise_add", {UInt(16, 8)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "addp", Int(32, 2), "pairwise_add", {Int(32, 4)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "addp", UInt(32, 2), "pairwise_add", {UInt(32, 4)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "faddp", Float(32, 2), "pairwise_add", {Float(32, 4)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "faddp", Float(64, 2), "pairwise_add", {Float(64, 4)}, ArmIntrinsic::SplitArg0},
    {nullptr, "faddp", Float(16, 4), "pairwise_add", {Float(16, 8)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth | ArmIntrinsic::RequireFp16},

    // SADDLP, UADDLP - Pairwise add long.
    {"vpaddlu", "uaddlp", UInt(16, 4), "pairwise_widening_add", {UInt(8, 8)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleRetArgs},
    {"vpaddlu", "uaddlp", Int(16, 4), "pairwise_widening_add", {UInt(8, 8)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleRetArgs},
    {"vpaddlu", "uaddlp", UInt(32, 2), "pairwise_widening_add", {UInt(16, 4)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleRetArgs},
    {"vpaddlu", "uaddlp", Int(32, 2), "pairwise_widening_add", {UInt(16, 4)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleRetArgs},
    {"vpaddlu", "uaddlp", UInt(64, 1), "pairwise_widening_add", {UInt(32, 2)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleRetArgs | ArmIntrinsic::ScalarsAreVectors},
    {"vpaddlu", "uaddlp", Int(64, 1), "pairwise_widening_add", {UInt(32, 2)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleRetArgs | ArmIntrinsic::ScalarsAreVectors},

    {"vpaddls", "saddlp", Int(16, 4), "pairwise_widening_add", {Int(8, 8)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleRetArgs},
    {"vpaddls", "saddlp", Int(32, 2), "pairwise_widening_add", {Int(16, 4)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleRetArgs},
    {"vpaddls", "saddlp", Int(64, 1), "pairwise_widening_add", {Int(32, 2)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleRetArgs | ArmIntrinsic::ScalarsAreVectors},

    // SPADAL, UPADAL - Pairwise add and accumulate long.
    {"vpadals", nullptr, Int(16, 4), "pairwise_widening_add_accumulate", {Int(16, 4), Int(8, 8)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleArgs},
    {"vpadalu", nullptr, UInt(16, 4), "pairwise_widening_add_accumulate", {UInt(16, 4), UInt(8, 8)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleArgs},
    {"vpadalu", nullptr, Int(16, 4), "pairwise_widening_add_accumulate", {Int(16, 4), UInt(8, 8)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleArgs},
    {"vpadals", nullptr, Int(32, 2), "pairwise_widening_add_accumulate", {Int(32, 2), Int(16, 4)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleArgs},
    {"vpadalu", nullptr, UInt(32, 2), "pairwise_widening_add_accumulate", {UInt(32, 2), UInt(16, 4)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleArgs},
    {"vpadalu", nullptr, Int(32, 2), "pairwise_widening_add_accumulate", {Int(32, 2), UInt(16, 4)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleArgs},
    {"vpadals", nullptr, Int(64, 1), "pairwise_widening_add_accumulate", {Int(64, 1), Int(32, 2)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleArgs | ArmIntrinsic::ScalarsAreVectors},
    {"vpadalu", nullptr, UInt(64, 1), "pairwise_widening_add_accumulate", {UInt(64, 1), UInt(32, 2)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleArgs | ArmIntrinsic::ScalarsAreVectors},
    {"vpadalu", nullptr, Int(64, 1), "pairwise_widening_add_accumulate", {Int(64, 1), UInt(32, 2)}, ArmIntrinsic::HalfWidth | ArmIntrinsic::MangleArgs | ArmIntrinsic::ScalarsAreVectors},

    // SMAXP, UMAXP, FMAXP - Pairwise max.
    {nullptr, "umaxp", UInt(8, 8), "pairwise_max", {UInt(8, 16)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "umaxp", UInt(16, 4), "pairwise_max", {UInt(16, 8)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "umaxp", UInt(32, 2), "pairwise_max", {UInt(32, 4)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},

    {nullptr, "smaxp", Int(8, 8), "pairwise_max", {Int(8, 16)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "smaxp", Int(16, 4), "pairwise_max", {Int(16, 8)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "smaxp", Int(32, 2), "pairwise_max", {Int(32, 4)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},

    {nullptr, "fmaxp", Float(32, 2), "pairwise_max", {Float(32, 4)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "fmaxp", Float(16, 4), "pairwise_max", {Float(16, 8)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth | ArmIntrinsic::RequireFp16},

    // On arm32, we only have half-width versions of these.
    {"vpmaxs", nullptr, Int(8, 8), "pairwise_max", {Int(8, 16)}, ArmIntrinsic::SplitArg0},
    {"vpmaxu", nullptr, UInt(8, 8), "pairwise_max", {UInt(8, 16)}, ArmIntrinsic::SplitArg0},
    {"vpmaxs", nullptr, Int(16, 4), "pairwise_max", {Int(16, 8)}, ArmIntrinsic::SplitArg0},
    {"vpmaxu", nullptr, UInt(16, 4), "pairwise_max", {UInt(16, 8)}, ArmIntrinsic::SplitArg0},
    {"vpmaxs", nullptr, Int(32, 2), "pairwise_max", {Int(32, 4)}, ArmIntrinsic::SplitArg0},
    {"vpmaxu", nullptr, UInt(32, 2), "pairwise_max", {UInt(32, 4)}, ArmIntrinsic::SplitArg0},
    {"vpmaxs", nullptr, Float(32, 2), "pairwise_max", {Float(32, 4)}, ArmIntrinsic::SplitArg0},
    {"vpmaxs", nullptr, Float(16, 4), "pairwise_max", {Float(16, 8)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::RequireFp16},

    // SMINP, UMINP, FMINP - Pairwise min.
    {nullptr, "uminp", UInt(8, 8), "pairwise_min", {UInt(8, 16)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "uminp", UInt(16, 4), "pairwise_min", {UInt(16, 8)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "uminp", UInt(32, 2), "pairwise_min", {UInt(32, 4)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},

    {nullptr, "sminp", Int(8, 8), "pairwise_min", {Int(8, 16)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "sminp", Int(16, 4), "pairwise_min", {Int(16, 8)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "sminp", Int(32, 2), "pairwise_min", {Int(32, 4)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},

    {nullptr, "fminp", Float(32, 2), "pairwise_min", {Float(32, 4)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth},
    {nullptr, "fminp", Float(16, 4), "pairwise_min", {Float(16, 8)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::HalfWidth | ArmIntrinsic::RequireFp16},

    // On arm32, we only have half-width versions of these.
    {"vpmins", nullptr, Int(8, 8), "pairwise_min", {Int(8, 16)}, ArmIntrinsic::SplitArg0},
    {"vpminu", nullptr, UInt(8, 8), "pairwise_min", {UInt(8, 16)}, ArmIntrinsic::SplitArg0},
    {"vpmins", nullptr, Int(16, 4), "pairwise_min", {Int(16, 8)}, ArmIntrinsic::SplitArg0},
    {"vpminu", nullptr, UInt(16, 4), "pairwise_min", {UInt(16, 8)}, ArmIntrinsic::SplitArg0},
    {"vpmins", nullptr, Int(32, 2), "pairwise_min", {Int(32, 4)}, ArmIntrinsic::SplitArg0},
    {"vpminu", nullptr, UInt(32, 2), "pairwise_min", {UInt(32, 4)}, ArmIntrinsic::SplitArg0},
    {"vpmins", nullptr, Float(32, 2), "pairwise_min", {Float(32, 4)}, ArmIntrinsic::SplitArg0},
    {"vpmins", nullptr, Float(16, 4), "pairwise_min", {Float(16, 8)}, ArmIntrinsic::SplitArg0 | ArmIntrinsic::RequireFp16},

    // SDOT, UDOT - Dot products.
    // Mangle this one manually, there aren't that many and it is a special case.
    {nullptr, "sdot.v2i32.v8i8", Int(32, 2), "dot_product", {Int(32, 2), Int(8, 8), Int(8, 8)}, ArmIntrinsic::NoMangle},
    {nullptr, "udot.v2i32.v8i8", Int(32, 2), "dot_product", {Int(32, 2), UInt(8, 8), UInt(8, 8)}, ArmIntrinsic::NoMangle},
    {nullptr, "udot.v2i32.v8i8", UInt(32, 2), "dot_product", {UInt(32, 2), UInt(8, 8), UInt(8, 8)}, ArmIntrinsic::NoMangle},
    {nullptr, "sdot.v4i32.v16i8", Int(32, 4), "dot_product", {Int(32, 4), Int(8, 16), Int(8, 16)}, ArmIntrinsic::NoMangle},
    {nullptr, "udot.v4i32.v16i8", Int(32, 4), "dot_product", {Int(32, 4), UInt(8, 16), UInt(8, 16)}, ArmIntrinsic::NoMangle},
    {nullptr, "udot.v4i32.v16i8", UInt(32, 4), "dot_product", {UInt(32, 4), UInt(8, 16), UInt(8, 16)}, ArmIntrinsic::NoMangle},

    {nullptr, "sdot.v2i32.v8i4", Int(32, 2), "sca_dot_product", {Int(32, 2), Int(8, 8), Int(8, 4)}, ArmIntrinsic::NoMangle},
    {nullptr, "udot.v2i32.v8i4", Int(32, 2), "sca_dot_product", {Int(32, 2), UInt(8, 8), UInt(8, 4)}, ArmIntrinsic::NoMangle},
    {nullptr, "udot.v2i32.v8i4", UInt(32, 2), "sca_dot_product", {UInt(32, 2), UInt(8, 8), UInt(8, 4)}, ArmIntrinsic::NoMangle},
    {nullptr, "sdot.v4i32.v16i4", Int(32, 4), "sca_dot_product", {Int(32, 4), Int(8, 16), Int(8, 4)}, ArmIntrinsic::NoMangle},
    {nullptr, "udot.v4i32.v16i4", Int(32, 4), "sca_dot_product", {Int(32, 4), UInt(8, 16), UInt(8, 4)}, ArmIntrinsic::NoMangle},
    {nullptr, "udot.v4i32.v16i4", UInt(32, 4), "sca_dot_product", {UInt(32, 4), UInt(8, 16), UInt(8, 4)}, ArmIntrinsic::NoMangle},

    // ABDL - Widening absolute difference
    // Need to be able to handle both signed and unsigned outputs for signed inputs.
    {"vabdl_i8x8", "vabdl_i8x8", Int(16, 8), "widening_absd", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::NoMangle | ArmIntrinsic::NoPrefix},
    {"vabdl_i8x8", "vabdl_i8x8", UInt(16, 8), "widening_absd", {Int(8, 8), Int(8, 8)}, ArmIntrinsic::NoMangle | ArmIntrinsic::NoPrefix},
    {"vabdl_u8x8", "vabdl_u8x8", UInt(16, 8), "widening_absd", {UInt(8, 8), UInt(8, 8)}, ArmIntrinsic::NoMangle | ArmIntrinsic::NoPrefix},
    {"vabdl_i16x4", "vabdl_i16x4", Int(32, 4), "widening_absd", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::NoMangle | ArmIntrinsic::NoPrefix},
    {"vabdl_i16x4", "vabdl_i16x4", UInt(32, 4), "widening_absd", {Int(16, 4), Int(16, 4)}, ArmIntrinsic::NoMangle | ArmIntrinsic::NoPrefix},
    {"vabdl_u16x4", "vabdl_u16x4", UInt(32, 4), "widening_absd", {UInt(16, 4), UInt(16, 4)}, ArmIntrinsic::NoMangle | ArmIntrinsic::NoPrefix},
    {"vabdl_i32x2", "vabdl_i32x2", Int(64, 2), "widening_absd", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::NoMangle | ArmIntrinsic::NoPrefix},
    {"vabdl_i32x2", "vabdl_i32x2", UInt(64, 2), "widening_absd", {Int(32, 2), Int(32, 2)}, ArmIntrinsic::NoMangle | ArmIntrinsic::NoPrefix},
    {"vabdl_u32x2", "vabdl_u32x2", UInt(64, 2), "widening_absd", {UInt(32, 2), UInt(32, 2)}, ArmIntrinsic::NoMangle | ArmIntrinsic::NoPrefix},


    // ADD (vector)
    {nullptr, "add", UInt(8, 8), "add_vector", {UInt(8, 8), UInt(8, 8)}},
    {nullptr, "add", UInt(16, 4), "add_vector", {UInt(16, 4), UInt(16, 4)}},
    {nullptr, "add", UInt(32, 2), "add_vector", {UInt(32, 2), UInt(32, 2)}},
    {nullptr, "add", UInt(8, 16), "add_vector", {UInt(8, 16), UInt(8, 16)}},
    {nullptr, "add", UInt(16, 8), "add_vector", {UInt(16, 8), UInt(16, 8)}},
    {nullptr, "add", UInt(32, 2), "add_vector", {UInt(32, 2), UInt(32, 2)}},
    {nullptr, "add", UInt(32, 4), "add_vector", {UInt(32, 4), UInt(32, 4)}},
    {nullptr, "add", UInt(64, 2), "add_vector", {UInt(64, 2), UInt(64, 2)}},

    {nullptr, "add", Int(8, 8), "add_vector", {Int(8, 8), Int(8, 8)}},
    {nullptr, "add", Int(16, 4), "add_vector", {Int(16, 4), Int(16, 4)}},
    {nullptr, "add", Int(32, 2), "add_vector", {Int(32, 2), Int(32, 2)}},
    {nullptr, "add", Int(8, 16), "add_vector", {Int(8, 16), Int(8, 16)}},
    {nullptr, "add", Int(16, 8), "add_vector", {Int(16, 8), Int(16, 8)}},
    {nullptr, "add", Int(32, 2), "add_vector", {Int(32, 2), Int(32, 2)}},
    {nullptr, "add", Int(32, 4), "add_vector", {Int(32, 4), Int(32, 4)}},
    {nullptr, "add", Int(64, 2), "add_vector", {Int(64, 2), Int(64, 2)}},

    // ADDHN, ADDHN2 - Add returning High Narrow
    {nullptr, "addhn", Int(16, 8), "add_high_narrow", {Int(16, 8), Int(16, 8)} },
    {nullptr, "addhn", Int(32, 4), "add_high_narrow", {Int(32, 4), Int(32, 4)} },
    // TODO: figure out how to implement ADDHN with 64 bits.
    // {nullptr, "addhn", Int(64, 2), "add_high_narrow", {Int(64, 2), Int(64, 2)} },

    // ADDV - Add accross vector
    {nullptr, "addv", UInt(8), "add_across_vector", {UInt(8, 8)}},
    {nullptr, "addv", UInt(16), "add_across_vector", {UInt(16, 4)}},
    {nullptr, "addv", UInt(8), "add_across_vector", {UInt(8, 16)}},
    {nullptr, "addv", UInt(16), "add_across_vector", {UInt(16, 8)}},
    {nullptr, "addv", UInt(32), "add_across_vector", {UInt(32, 2)}},

    {nullptr, "addv", Int(8), "add_across_vector", {Int(8, 8)}},
    {nullptr, "addv", Int(16), "add_across_vector", {Int(16, 4)}},
    {nullptr, "addv", Int(8), "add_across_vector", {Int(8, 16)}},
    {nullptr, "addv", Int(16), "add_across_vector", {Int(16, 8)}},
    {nullptr, "addv", Int(32), "add_across_vector", {Int(32, 2)}},

    // MLA - Multiply-Add to accumulator (vector, by element)
    {nullptr, "mla-vs", UInt(8, 8), "multiply_add_acc_scalar", {UInt(8, 8), UInt(8, 8), UInt(8)}},
    {nullptr, "mla-vs", UInt(8, 16), "multiply_add_acc_scalar", {UInt(8, 16), UInt(8, 16), UInt(8)}},
    {nullptr, "mla-vs", UInt(16, 4), "multiply_add_acc_scalar", {UInt(16, 4), UInt(16, 4), UInt(16)}},
    {nullptr, "mla-vs", UInt(16, 8), "multiply_add_acc_scalar", {UInt(16, 8), UInt(16, 8), UInt(16)}},
    {nullptr, "mla-vs", UInt(32, 2), "multiply_add_acc_scalar", {UInt(32, 2), UInt(32, 2), UInt(32)}},
    {nullptr, "mla-vs", UInt(32, 4), "multiply_add_acc_scalar", {UInt(32, 4), UInt(32, 4), UInt(32)}},

    // MLA - Multiply-Add to accumulator (vector)
    // First argument is the accumulator
    // TODO: the doc suggests this only works for unsigned ints. confirm that is true?
    {nullptr, "mla-vv", UInt(8, 8), "multiply_add_acc_vector", {UInt(8, 8), UInt(8, 8), UInt(8, 8)}},
    {nullptr, "mla-vv", UInt(8, 16), "multiply_add_acc_vector", {UInt(8, 16), UInt(8, 16), UInt(8, 16)}},
    {nullptr, "mla-vv", UInt(16, 4), "multiply_add_acc_vector", {UInt(16, 4), UInt(16, 4), UInt(16, 4)}},
    {nullptr, "mla-vv", UInt(16, 8), "multiply_add_acc_vector", {UInt(16, 8), UInt(16, 8), UInt(16, 8)}},
    {nullptr, "mla-vv", UInt(32, 2), "multiply_add_acc_vector", {UInt(32, 2), UInt(32, 2), UInt(32, 2)}},
    {nullptr, "mla-vv", UInt(32, 4), "multiply_add_acc_vector", {UInt(32, 4), UInt(32, 4), UInt(32, 4)}},

    // MLS - Multiply-Subtract from accumulator (vector, by element)
    {nullptr, "mls-vs", UInt(8, 8), "multiply_sub_acc_scalar", {UInt(8, 8), UInt(8, 8), UInt(8)}},
    {nullptr, "mls-vs", UInt(8, 16), "multiply_sub_acc_scalar", {UInt(8, 16), UInt(8, 16), UInt(8)}},
    {nullptr, "mls-vs", UInt(16, 4), "multiply_sub_acc_scalar", {UInt(16, 4), UInt(16, 4), UInt(16)}},
    {nullptr, "mls-vs", UInt(16, 8), "multiply_sub_acc_scalar", {UInt(16, 8), UInt(16, 8), UInt(16)}},
    {nullptr, "mls-vs", UInt(32, 2), "multiply_sub_acc_scalar", {UInt(32, 2), UInt(32, 2), UInt(32)}},
    {nullptr, "mls-vs", UInt(32, 4), "multiply_sub_acc_scalar", {UInt(32, 4), UInt(32, 4), UInt(32)}},

    // MLS - Multiply-Subtract from accumulator (vector)
    {nullptr, "mls-vv", UInt(8, 8), "multiply_sub_acc_vector", {UInt(8, 8), UInt(8, 8), UInt(8, 8)}},
    {nullptr, "mls-vv", UInt(8, 16), "multiply_sub_acc_vector", {UInt(8, 16), UInt(8, 16), UInt(8, 16)}},
    {nullptr, "mls-vv", UInt(16, 4), "multiply_sub_acc_vector", {UInt(16, 4), UInt(16, 4), UInt(16, 4)}},
    {nullptr, "mls-vv", UInt(16, 8), "multiply_sub_acc_vector", {UInt(16, 8), UInt(16, 8), UInt(16, 8)}},
    {nullptr, "mls-vv", UInt(32, 2), "multiply_sub_acc_vector", {UInt(32, 2), UInt(32, 2), UInt(32, 2)}},
    {nullptr, "mls-vv", UInt(32, 4), "multiply_sub_acc_vector", {UInt(32, 4), UInt(32, 4), UInt(32, 4)}},

    // MUL - Multiply (vector, by element)
    {nullptr, "mul-vs", UInt(8, 8), "multiply_vector_scalar", {UInt(8, 8), UInt(8)}},
    {nullptr, "mul-vs", UInt(8, 16), "multiply_vector_scalar", {UInt(8, 16), UInt(8)}},
    {nullptr, "mul-vs", UInt(16, 4), "multiply_vector_scalar", {UInt(16, 4), UInt(16)}},
    {nullptr, "mul-vs", UInt(16, 8), "multiply_vector_scalar", {UInt(16, 8), UInt(16)}},
    {nullptr, "mul-vs", UInt(32, 2), "multiply_vector_scalar", {UInt(32, 2), UInt(32)}},
    {nullptr, "mul-vs", UInt(32, 4), "multiply_vector_scalar", {UInt(32, 4), UInt(32)}},

    {nullptr, "mul-vs", Int(8, 8), "multiply_vector_scalar", {Int(8, 8), Int(8)}},
    {nullptr, "mul-vs", Int(8, 16), "multiply_vector_scalar", {Int(8, 16), Int(8)}},
    {nullptr, "mul-vs", Int(16, 4), "multiply_vector_scalar", {Int(16, 4), Int(16)}},
    {nullptr, "mul-vs", Int(16, 8), "multiply_vector_scalar", {Int(16, 8), Int(16)}},
    {nullptr, "mul-vs", Int(32, 2), "multiply_vector_scalar", {Int(32, 2), Int(32)}},
    {nullptr, "mul-vs", Int(32, 4), "multiply_vector_scalar", {Int(32, 4), Int(32)}},

    // MUL - Multiply (vector)
    {nullptr, "mul-vv", UInt(8, 8), "multiply_vector_vector", {UInt(8, 8), UInt(8, 8)}},
    {nullptr, "mul-vv", UInt(8, 16), "multiply_vector_vector", {UInt(8, 16), UInt(8, 16)}},
    {nullptr, "mul-vv", UInt(16, 4), "multiply_vector_vector", {UInt(16, 4), UInt(16, 4)}},
    {nullptr, "mul-vv", UInt(16, 8), "multiply_vector_vector", {UInt(16, 8), UInt(16, 8)}},
    {nullptr, "mul-vv", UInt(32, 2), "multiply_vector_vector", {UInt(32, 2), UInt(32, 2)}},
    {nullptr, "mul-vv", UInt(32, 4), "multiply_vector_vector", {UInt(32, 4), UInt(32, 4)}},

    {nullptr, "mul-vv", Int(8, 8), "multiply_vector_vector", {Int(8, 8), Int(8, 8)}},
    {nullptr, "mul-vv", Int(8, 16), "multiply_vector_vector", {Int(8, 16), Int(8, 16)}},
    {nullptr, "mul-vv", Int(16, 4), "multiply_vector_vector", {Int(16, 4), Int(16, 4)}},
    {nullptr, "mul-vv", Int(16, 8), "multiply_vector_vector", {Int(16, 8), Int(16, 8)}},
    {nullptr, "mul-vv", Int(32, 2), "multiply_vector_vector", {Int(32, 2), Int(32, 2)}},
    {nullptr, "mul-vv", Int(32, 4), "multiply_vector_vector", {Int(32, 4), Int(32, 4)}},

    // NEG - Negate (vector)
    {nullptr, "neg", Int(8, 8), "negate_vector", {Int(8, 8)}},
    {nullptr, "neg", Int(8, 16), "negate_vector", {Int(8, 16)}},
    {nullptr, "neg", Int(16, 4), "negate_vector", {Int(16, 4)}},
    {nullptr, "neg", Int(16, 8), "negate_vector", {Int(16, 8)}},
    {nullptr, "neg", Int(32, 2), "negate_vector", {Int(32, 2)}},
    {nullptr, "neg", Int(32, 4), "negate_vector", {Int(32, 4)}},
    {nullptr, "neg", Int(64, 2), "negate_vector", {Int(64, 2)}},

    // SABA - Signed Absolute difference and Accumulate
    // TODO: are the return values unsigned or signed...?
    {nullptr, "saba", Int(8, 8), "signed_absd_acc", {Int(8, 8), Int(8, 8), Int(8, 8)}},
    {nullptr, "saba", Int(8, 16), "signed_absd_acc", {Int(8, 16), Int(8, 16), Int(8, 16)}},
    {nullptr, "saba", Int(16, 4), "signed_absd_acc", {Int(16, 4), Int(16, 4), Int(16, 4)}},
    {nullptr, "saba", Int(16, 8), "signed_absd_acc", {Int(16, 8), Int(16, 8), Int(16, 8)}},
    {nullptr, "saba", Int(32, 2), "signed_absd_acc", {Int(32, 2), Int(32, 2), Int(32, 2)}},
    {nullptr, "saba", Int(32, 4), "signed_absd_acc", {Int(32, 4), Int(32, 4), Int(32, 4)}},

    // SABAL, SABAL2 - Signed Absolute difference and Accumulate Long
    // TODO: are the return values unsigned or signed...?
    {nullptr, "sabal", Int(16, 8), "signed_absd_acc_long", {Int(16, 8), Int(8, 8), Int(8, 8)}},
    {nullptr, "sabal", Int(16, 16), "signed_absd_acc_long", {Int(16, 16), Int(8, 16), Int(8, 16)}},
    {nullptr, "sabal", Int(32, 4), "signed_absd_acc_long", {Int(32, 4), Int(16, 4), Int(16, 4)}},
    {nullptr, "sabal", Int(32, 8), "signed_absd_acc_long", {Int(32, 8), Int(16, 8), Int(16, 8)}},
    {nullptr, "sabal", Int(64, 2), "signed_absd_acc_long", {Int(64, 2), Int(32, 2), Int(32, 2)}},
    {nullptr, "sabal", Int(64, 4), "signed_absd_acc_long", {Int(64, 4), Int(32, 4), Int(32, 4)}},

    // SABDL, SABDL2 - Signed Absolute Difference Long
    // Covered by ABDL above.

    // SADALP - Signed Add and Accumulate Long Pairwise
    {nullptr, "sadalp", Int(16, 4), "signed_add_acc_long_pairwise", {Int(16, 4), Int(8, 8)}},
    {nullptr, "sadalp", Int(16, 8), "signed_add_acc_long_pairwise", {Int(16, 8), Int(8, 16)}},
    {nullptr, "sadalp", Int(32, 2), "signed_add_acc_long_pairwise", {Int(32, 2), Int(16, 4)}},
    {nullptr, "sadalp", Int(32, 4), "signed_add_acc_long_pairwise", {Int(32, 4), Int(16, 8)}},
    {nullptr, "sadalp", Int(64, 1), "signed_add_acc_long_pairwise", {Int(64, 1), Int(32, 2)}},
    {nullptr, "sadalp", Int(64, 2), "signed_add_acc_long_pairwise", {Int(64, 2), Int(32, 4)}},

    // SADDL , SADDL2 - Signed Add Long (vector)
    {nullptr, "saddl", Int(16, 8), "signed_add_long", {Int(8, 8), Int(8, 8)}},
    {nullptr, "saddl", Int(16, 16), "signed_add_long", {Int(8, 16), Int(8, 16)}},
    {nullptr, "saddl", Int(32, 4), "signed_add_long", {Int(16, 4), Int(16, 4)}},
    {nullptr, "saddl", Int(32, 8), "signed_add_long", {Int(16, 8), Int(16, 8)}},
    {nullptr, "saddl", Int(64, 2), "signed_add_long", {Int(32, 2), Int(32, 2)}},
    {nullptr, "saddl", Int(64, 4), "signed_add_long", {Int(32, 4), Int(32, 4)}},

    // SADDLV - Signed Add Long across Vector
    // TODO: can the inputs be unsigned? doc suggests yes, webpage suggests no.
    {nullptr, "saddlv", Int(16), "signed_add_long_across_vector", {Int(8, 8)}},
    {nullptr, "saddlv", Int(16), "signed_add_long_across_vector", {Int(8, 16)}},
    {nullptr, "saddlv", Int(32), "signed_add_long_across_vector", {Int(16, 4)}},
    {nullptr, "saddlv", Int(32), "signed_add_long_across_vector", {Int(16, 8)}},
    {nullptr, "saddlv", Int(64), "signed_add_long_across_vector", {Int(32, 4)}},

    // SADDW, SADDW2 - Signed Add Wide
    {nullptr, "saddw", Int(16, 8), "signed_add_wide", {Int(16, 8), Int(8, 8)}},
    {nullptr, "saddw", Int(16, 16), "signed_add_wide", {Int(16, 16), Int(8, 16)}},

    // SDOT - Dot Product signed arithmetic (vector, by element)

    // SHL - Shift Left (immediate)
    {nullptr, "shl", Int(8, 8), "shift_left", {Int(8, 8)}},
    {nullptr, "shl", Int(8, 16), "shift_left", {Int(8, 16)}},
    {nullptr, "shl", Int(16, 4), "shift_left", {Int(16, 4)}},
    {nullptr, "shl", Int(16, 8), "shift_left", {Int(16, 8)}},
    {nullptr, "shl", Int(32, 2), "shift_left", {Int(32, 2)}},
    {nullptr, "shl", Int(32, 4), "shift_left", {Int(32, 4)}},
    {nullptr, "shl", Int(64, 2), "shift_left", {Int(64, 2)}},
    {nullptr, "shl", UInt(8, 8), "shift_left", {UInt(8, 8)}},
    {nullptr, "shl", UInt(8, 16), "shift_left", {UInt(8, 16)}},
    {nullptr, "shl", UInt(16, 4), "shift_left", {UInt(16, 4)}},
    {nullptr, "shl", UInt(16, 8), "shift_left", {UInt(16, 8)}},
    {nullptr, "shl", UInt(32, 2), "shift_left", {UInt(32, 2)}},
    {nullptr, "shl", UInt(32, 4), "shift_left", {UInt(32, 4)}},
    {nullptr, "shl", UInt(64, 2), "shift_left", {UInt(64, 2)}},

    // SHLL, SHLL2 - Shift Left Long (by element size)
    {nullptr, "shll", Int(16, 8), "shift_left_long", {Int(8, 8)}},
    {nullptr, "shll", Int(16, 16), "shift_left_long", {Int(8, 16)}},
    {nullptr, "shll", Int(32, 4), "shift_left_long", {Int(16, 4)}},
    {nullptr, "shll", Int(32, 8), "shift_left_long", {Int(16, 8)}},
    {nullptr, "shll", Int(64, 2), "shift_left_long", {Int(32, 2)}},
    {nullptr, "shll", Int(64, 4), "shift_left_long", {Int(32, 4)}},

    // SHRN, SHRN2 - Shift Right Narrow (immediate)
    // SHRN - Shift right narrow (by immediate in [1, output bits])
    {nullptr, "shrn", Int(8, 8), "shift_right_narrow", {Int(16, 8), UInt(16)}},
    {nullptr, "shrn", UInt(8, 8), "shift_right_narrow", {UInt(16, 8), UInt(16)}},
    {nullptr, "shrn", Int(16, 4), "shift_right_narrow", {Int(32, 4), UInt(32)}},
    {nullptr, "shrn", UInt(16, 4), "shift_right_narrow", {UInt(32, 4), UInt(32)}},
    {nullptr, "shrn", UInt(32, 2), "shift_right_narrow", {UInt(64, 2), UInt(64)}},
    {nullptr, "shrn", Int(32, 2), "shift_right_narrow", {Int(64, 2), UInt(64)}},

    // SLI - Shift Left and Insert (immediate)

    // SMAXV - Signed Maximum across Vector
    {nullptr, "smaxv", Int(8), "signed_maximum_across_vector", {Int(8, 8)}},
    {nullptr, "smaxv", Int(8), "signed_maximum_across_vector", {Int(8, 16)}},
    {nullptr, "smaxv", Int(16), "signed_maximum_across_vector", {Int(16, 4)}},
    {nullptr, "smaxv", Int(16), "signed_maximum_across_vector", {Int(16, 8)}},
    {nullptr, "smaxv", Int(32), "signed_maximum_across_vector", {Int(32, 4)}},

    // SMINV - Signed Minimum across Vector
    {nullptr, "sminv", Int(8), "signed_minimum_across_vector", {Int(8, 8)}},
    {nullptr, "sminv", Int(8), "signed_minimum_across_vector", {Int(8, 16)}},
    {nullptr, "sminv", Int(16), "signed_minimum_across_vector", {Int(16, 4)}},
    {nullptr, "sminv", Int(16), "signed_minimum_across_vector", {Int(16, 8)}},
    {nullptr, "sminv", Int(32), "signed_minimum_across_vector", {Int(32, 4)}},

    // SMLAL, SMLAL2 - Signed Multiply-Add Long (vector, by element)
    {nullptr, "smlal-vs", Int(32, 4), "signed_multiply_add_long_scalar", {Int(32, 4), Int(16, 4), Int(16)}},
    {nullptr, "smlal-vs", Int(32, 8), "signed_multiply_add_long_scalar", {Int(32, 8), Int(16, 8), Int(16)}},
    {nullptr, "smlal-vs", Int(64, 2), "signed_multiply_add_long_scalar", {Int(64, 2), Int(32, 2), Int(32)}},
    {nullptr, "smlal-vs", Int(64, 4), "signed_multiply_add_long_scalar", {Int(64, 4), Int(32, 4), Int(32)}},

    // SMLAL, SMLAL2 - Signed Multiply-Add Long (vector)
    {nullptr, "smlal-vv", Int(16, 8), "signed_multiply_add_long_vector", {Int(16, 8), Int(8, 8), Int(8, 8)}},
    {nullptr, "smlal-vv", Int(16, 16), "signed_multiply_add_long_vector", {Int(16, 16), Int(8, 16), Int(8, 16)}},
    {nullptr, "smlal-vv", Int(32, 4), "signed_multiply_add_long_vector", {Int(32, 4), Int(16, 4), Int(16, 4)}},
    {nullptr, "smlal-vv", Int(32, 8), "signed_multiply_add_long_vector", {Int(32, 8), Int(16, 8), Int(16, 8)}},
    {nullptr, "smlal-vv", Int(64, 2), "signed_multiply_add_long_vector", {Int(64, 2), Int(32, 2), Int(32, 2)}},
    {nullptr, "smlal-vv", Int(64, 4), "signed_multiply_add_long_vector", {Int(64, 4), Int(32, 4), Int(32, 4)}},

    // SMLSL, SMLSL2 - Signed Multiply-Subtract Long (vector, by element)
    {nullptr, "smlsl-vs", Int(32, 4), "signed_multiply_sub_long_scalar", {Int(32, 4), Int(16, 4), Int(16)}},
    {nullptr, "smlsl-vs", Int(32, 8), "signed_multiply_sub_long_scalar", {Int(32, 8), Int(16, 8), Int(16)}},
    {nullptr, "smlsl-vs", Int(64, 2), "signed_multiply_sub_long_scalar", {Int(64, 2), Int(32, 2), Int(32)}},
    {nullptr, "smlsl-vs", Int(64, 4), "signed_multiply_sub_long_scalar", {Int(64, 4), Int(32, 4), Int(32)}},

    // SMLSL, SMLSL2 - Signed Multiply-Subtract Long (vector)
    {nullptr, "smlsl-vv", Int(16, 8), "signed_multiply_sub_long_vector", {Int(16, 8), Int(8, 8), Int(8, 8)}},
    {nullptr, "smlsl-vv", Int(16, 16), "signed_multiply_sub_long_vector", {Int(16, 16), Int(8, 16), Int(8, 16)}},
    {nullptr, "smlsl-vv", Int(32, 4), "signed_multiply_sub_long_vector", {Int(32, 4), Int(16, 4), Int(16, 4)}},
    {nullptr, "smlsl-vv", Int(32, 8), "signed_multiply_sub_long_vector", {Int(32, 8), Int(16, 8), Int(16, 8)}},
    {nullptr, "smlsl-vv", Int(64, 2), "signed_multiply_sub_long_vector", {Int(64, 2), Int(32, 2), Int(32, 2)}},
    {nullptr, "smlsl-vv", Int(64, 4), "signed_multiply_sub_long_vector", {Int(64, 4), Int(32, 4), Int(32, 4)}},

    // SMULL, SMULL2 - Signed Multiply Long (vector, by element)

    // SQABS - Signed saturating Absolute value
    // TODO: is the return type unsigned?
    {nullptr, "sqabs", Int(8, 8), "signed_saturating_abs", {Int(8, 8)}},
    {nullptr, "sqabs", Int(8, 16), "signed_saturating_abs", {Int(8, 16)}},
    {nullptr, "sqabs", Int(16, 4), "signed_saturating_abs", {Int(16, 4)}},
    {nullptr, "sqabs", Int(16, 8), "signed_saturating_abs", {Int(16, 8)}},
    {nullptr, "sqabs", Int(32, 2), "signed_saturating_abs", {Int(32, 2)}},
    {nullptr, "sqabs", Int(32, 4), "signed_saturating_abs", {Int(32, 4)}},
    {nullptr, "sqabs", Int(64, 2), "signed_saturating_abs", {Int(64, 2)}},

    // SQDMLAL, SQDMLAL2 - Signed saturating Doubling Multiply-Add Long (by element)
    // SQDMLAL, SQDMLAL2 - Signed saturating Doubling Multiply-Add Long
    // SQDMLSL, SQDMLSL2 - Signed saturating Doubling Multiply-Subtract Long (by element)
    // SQDMLSL, SQDMLSL2 - Signed saturating Doubling Multiply-Subtract Long
    // SQDMULH - Signed saturating Doubling Multiply returning High half (by element)

    // SQDMULL, SQDMULL2 - Signed saturating Doubling Multiply Long (by element)
    // TODO: the second arg is actually a vector with an index, how should we do this?
    {nullptr, "sqdmull-vs", Int(32, 4), "signed_saturating_doubling_mul_long_scalar", {Int(16, 4), Int(16)}, },
    {nullptr, "sqdmull-vs", Int(32, 8), "signed_saturating_doubling_mul_long_scalar", {Int(16, 8), Int(16)}, },
    {nullptr, "sqdmull-vs", Int(64, 2), "signed_saturating_doubling_mul_long_scalar", {Int(32, 2), Int(32)}, },
    {nullptr, "sqdmull-vs", Int(64, 4), "signed_saturating_doubling_mul_long_scalar", {Int(32, 4), Int(32)}, },

    // SQDMULL, SQDMULL2 - Signed saturating Doubling Multiply Long
    {nullptr, "sqdmull-vv", Int(32, 4), "signed_saturating_doubling_mul_long_vector", {Int(16, 4), Int(16, 4)}, },
    {nullptr, "sqdmull-vv", Int(32, 8), "signed_saturating_doubling_mul_long_vector", {Int(16, 8), Int(16, 8)}, },
    {nullptr, "sqdmull-vv", Int(64, 2), "signed_saturating_doubling_mul_long_vector", {Int(32, 2), Int(32, 2)}, },
    {nullptr, "sqdmull-vv", Int(64, 4), "signed_saturating_doubling_mul_long_vector", {Int(32, 4), Int(32, 4)}, },

    // SQRDMLAH - Signed Saturating Rounding Doubling Multiply Accumulate returning High Half (by element)
    // SQRDMLAH - Signed Saturating Rounding Doubling Multiply Accumulate returning High Half (vector)
    // SQRDMLSH - Signed Saturating Rounding Doubling Multiply Subtract returning High Half (by element)
    // SQRDMLSH - Signed Saturating Rounding Doubling Multiply Subtract returning High Half (vector)
    // SQRDMULH - Signed saturating Rounding Doubling Multiply returning High half (by element)

    // TODO SQSHL - Signed saturating Shift Left (immediate)

    // SRI - Shift Right and Insert (immediate)

    // SRSHR - Signed Rounding Shift Right (immediate)
    // SRSRA - Signed Rounding Shift Right and Accumulate (immediate)

    // SSHLL, SSHLL2 - Signed Shift Left Long (immediate)
    {nullptr, "sshll", Int(16, 8), "signed_shift_left_long", {Int(8, 8), UInt(8)} },
    {nullptr, "sshll", Int(16, 16), "signed_shift_left_long", {Int(8, 16), UInt(8)} },
    {nullptr, "sshll", Int(32, 4), "signed_shift_left_long", {Int(16, 4), UInt(16)} },
    {nullptr, "sshll", Int(32, 8), "signed_shift_left_long", {Int(16, 8), UInt(16)} },
    {nullptr, "sshll", Int(64, 2), "signed_shift_left_long", {Int(32, 2), UInt(32)} },
    {nullptr, "sshll", Int(64, 4), "signed_shift_left_long", {Int(32, 4), UInt(32)} },

    // SSHR - Signed Shift Right (immediate)
    // SSRA - Signed Shift Right and Accumulate (immediate)
    // SSUBL, SSUBL2 - Signed Subtract Long
    {nullptr, "ssubl", Int(16, 8), "signed_sub_long", {Int(8, 8), Int(8, 8)}},
    {nullptr, "ssubl", Int(16, 16), "signed_sub_long", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ssubl", Int(32, 4), "signed_sub_long", {Int(16, 4), Int(16, 4)}},
    {nullptr, "ssubl", Int(32, 8), "signed_sub_long", {Int(16, 8), Int(16, 8)}},
    {nullptr, "ssubl", Int(64, 2), "signed_sub_long", {Int(32, 2), Int(32, 2)}},
    {nullptr, "ssubl", Int(64, 4), "signed_sub_long", {Int(32, 4), Int(32, 4)}},

    // SSUBW, SSUBW2 - Signed Subtract Wide
    {nullptr, "ssubw", Int(16, 8), "signed_sub_wide", {Int(16, 8), Int(8, 8)}},
    {nullptr, "ssubw", Int(16, 16), "signed_sub_wide", {Int(16, 16),Int(8, 16)}},

    // SUB - Subtract (vector)
    {nullptr, "sub", UInt(8, 8), "sub_vector", {UInt(8, 8), UInt(8, 8)}},
    {nullptr, "sub", UInt(16, 4), "sub_vector", {UInt(16, 4), UInt(16, 4)}},
    {nullptr, "sub", UInt(32, 2), "sub_vector", {UInt(32, 2), UInt(32, 2)}},
    {nullptr, "sub", UInt(8, 16), "sub_vector", {UInt(8, 16), UInt(8, 16)}},
    {nullptr, "sub", UInt(16, 8), "sub_vector", {UInt(16, 8), UInt(16, 8)}},
    {nullptr, "sub", UInt(32, 2), "sub_vector", {UInt(32, 2), UInt(32, 2)}},
    {nullptr, "sub", UInt(32, 4), "sub_vector", {UInt(32, 4), UInt(32, 4)}},
    {nullptr, "sub", UInt(64, 2), "sub_vector", {UInt(64, 2), UInt(64, 2)}},

    {nullptr, "sub", Int(8, 8), "sub_vector", {Int(8, 8), Int(8, 8)}},
    {nullptr, "sub", Int(16, 4), "sub_vector", {Int(16, 4), Int(16, 4)}},
    {nullptr, "sub", Int(32, 2), "sub_vector", {Int(32, 2), Int(32, 2)}},
    {nullptr, "sub", Int(8, 16), "sub_vector", {Int(8, 16), Int(8, 16)}},
    {nullptr, "sub", Int(16, 8), "sub_vector", {Int(16, 8), Int(16, 8)}},
    {nullptr, "sub", Int(32, 2), "sub_vector", {Int(32, 2), Int(32, 2)}},
    {nullptr, "sub", Int(32, 4), "sub_vector", {Int(32, 4), Int(32, 4)}},
    {nullptr, "sub", Int(64, 2), "sub_vector", {Int(64, 2), Int(64, 2)}},

    // SUBHN, SUBHN2 - Subtract returning High Narrow
    // TODO: figure out what this instruction actually does.
    {nullptr, "subhn", Int(16, 4), "sub_high_narrow", {Int(16, 4), Int(16, 4)} },
    {nullptr, "subhn", Int(32, 4), "sub_high_narrow", {Int(32, 4), Int(32, 4)} },
    // TODO: figure out how to implement SUBHN with 64 bits.
    // {nullptr, "subhn", Int(64, 2), "sub_high_narrow", {Int(64, 2), Int(64, 2)} },

    // SUQADD - Signed saturating Accumulate of Unsigned value
    // First arg is the accumulator vector.
    {nullptr, "suqadd", Int(8, 8), "signed_saturating_acc_unsigned", {Int(8, 8), UInt(8, 8)} },
    {nullptr, "suqadd", Int(8, 16), "signed_saturating_acc_unsigned", {Int(8, 16), UInt(8, 16)} },
    {nullptr, "suqadd", Int(16, 4), "signed_saturating_acc_unsigned", {Int(16, 4), UInt(16, 4)} },
    {nullptr, "suqadd", Int(16, 8), "signed_saturating_acc_unsigned", {Int(16, 8), UInt(16, 8)} },
    {nullptr, "suqadd", Int(32, 2), "signed_saturating_acc_unsigned", {Int(32, 2), UInt(32, 2)} },
    {nullptr, "suqadd", Int(32, 4), "signed_saturating_acc_unsigned", {Int(32, 4), UInt(32, 4)} },
    // TODO: figure out how to implement SUQADD with 64 bits.
    // {nullptr, "suqadd", Int(64, 2), "signed_saturating_acc_unsigned", {Int(64, 2), UInt(64, 2)} },

    // SXTL, SXTL2 - Signed extend Long
    {nullptr, "sxtl", Int(16, 8), "signed_extend_long", {Int(8, 8)}},
    {nullptr, "sxtl", Int(16, 16), "signed_extend_long", {Int(8, 16)}},
    {nullptr, "sxtl", Int(32, 4), "signed_extend_long", {Int(16, 4)}},
    {nullptr, "sxtl", Int(32, 8), "signed_extend_long", {Int(16, 8)}},
    {nullptr, "sxtl", Int(64, 2), "signed_extend_long", {Int(32, 2)}},
    {nullptr, "sxtl", Int(64, 4), "signed_extend_long", {Int(32, 4)}},

    // UABA - Unsigned Absolute difference and Accumulate
    // UABAL, UABAL2 - Unsigned Absolute difference and Accumulate Long

    // UADALP - Unsigned Add and Accumulate Long Pairwise
    {nullptr, "uadalp", Int(16, 4), "unsigned_add_acc_long_pairwise", {UInt(16, 4), UInt(8, 8)}},
    {nullptr, "uadalp", Int(16, 8), "unsigned_add_acc_long_pairwise", {UInt(16, 8), UInt(8, 16)}},
    {nullptr, "uadalp", Int(32, 2), "unsigned_add_acc_long_pairwise", {UInt(32, 2), UInt(16, 4)}},
    {nullptr, "uadalp", Int(32, 4), "unsigned_add_acc_long_pairwise", {UInt(32, 4), UInt(16, 8)}},
    {nullptr, "uadalp", Int(64, 1), "unsigned_add_acc_long_pairwise", {UInt(64, 1), UInt(32, 2)}},
    {nullptr, "uadalp", Int(64, 2), "unsigned_add_acc_long_pairwise", {UInt(64, 2), UInt(32, 4)}},

    // UADDL, UADDL2 - Unsigned Add Long (vector)
    {nullptr, "uaddl", UInt(16, 8), "unsigned_add_long", {UInt(8, 8), UInt(8, 8)}},
    {nullptr, "uaddl", UInt(16, 16), "unsigned_add_long", {UInt(8, 16), UInt(8, 16)}},
    {nullptr, "uaddl", UInt(32, 4), "unsigned_add_long", {UInt(16, 4), UInt(16, 4)}},
    {nullptr, "uaddl", UInt(32, 8), "unsigned_add_long", {UInt(16, 8), UInt(16, 8)}},
    {nullptr, "uaddl", UInt(64, 2), "unsigned_add_long", {UInt(32, 2), UInt(32, 2)}},
    {nullptr, "uaddl", UInt(64, 4), "unsigned_add_long", {UInt(32, 4), UInt(32, 4)}},

    // UADDLV - Unsigned sum Long across Vector
    {nullptr, "uaddlv", UInt(16), "unsigned_add_long_across_vector", {UInt(8, 8)}},
    {nullptr, "uaddlv", UInt(16), "unsigned_add_long_across_vector", {UInt(8, 16)}},
    {nullptr, "uaddlv", UInt(32), "unsigned_add_long_across_vector", {UInt(16, 4)}},
    {nullptr, "uaddlv", UInt(32), "unsigned_add_long_across_vector", {UInt(16, 8)}},
    {nullptr, "uaddlv", UInt(64), "unsigned_add_long_across_vector", {UInt(32, 4)}},

    // UADDW, UADDW2 - Unsigned Add Wide
    {nullptr, "uaddw", UInt(16, 8), "unsigned_add_wide", {UInt(16, 8), UInt(8, 8)}},
    {nullptr, "uaddw", UInt(16, 16), "unsigned_add_wide", {UInt(16, 16), UInt(8, 16)}},

    // UDOT - Dot Product unsigned arithmetic (vector, by element)

    // UMAXV - Unsigned Maximum across Vector
    {nullptr, "umaxv", UInt(8), "unsigned_maximum_across_vector", {UInt(8, 8)}},
    {nullptr, "umaxv", UInt(8), "unsigned_maximum_across_vector", {UInt(8, 16)}},
    {nullptr, "umaxv", UInt(16), "unsigned_maximum_across_vector", {UInt(16, 4)}},
    {nullptr, "umaxv", UInt(16), "unsigned_maximum_across_vector", {UInt(16, 8)}},
    {nullptr, "umaxv", UInt(32), "unsigned_maximum_across_vector", {UInt(32, 4)}},

    // UMINV - Unsigned Minimum across Vector
    {nullptr, "uminv", UInt(8), "unsigned_minimum_across_vector", {UInt(8, 8)}},
    {nullptr, "uminv", UInt(8), "unsigned_minimum_across_vector", {UInt(8, 16)}},
    {nullptr, "uminv", UInt(16), "unsigned_minimum_across_vector", {UInt(16, 4)}},
    {nullptr, "uminv", UInt(16), "unsigned_minimum_across_vector", {UInt(16, 8)}},
    {nullptr, "uminv", UInt(32), "unsigned_minimum_across_vector", {UInt(32, 4)}},

    // UMLAL, UMLAL2 - Unsigned Multiply-Add Long (vector, by element)
    {nullptr, "umlal-vs", UInt(16, 8), "unsigned_multiply_add_long_scalar", {UInt(16, 8), UInt(8, 8), UInt(8)}},
    {nullptr, "umlal-vs", UInt(16, 16), "unsigned_multiply_add_long_scalar", {UInt(16, 16), UInt(8, 16), UInt(8)}},
    {nullptr, "umlal-vs", UInt(32, 4), "unsigned_multiply_add_long_scalar", {UInt(32, 4), UInt(16, 4), UInt(16)}},
    {nullptr, "umlal-vs", UInt(32, 8), "unsigned_multiply_add_long_scalar", {UInt(32, 8), UInt(16, 8), UInt(16)}},
    {nullptr, "umlal-vs", UInt(64, 2), "unsigned_multiply_add_long_scalar", {UInt(64, 2), UInt(32, 2), UInt(32)}},
    {nullptr, "umlal-vs", UInt(64, 4), "unsigned_multiply_add_long_scalar", {UInt(64, 4), UInt(32, 4), UInt(32)}},

    // UMLAL, UMLAL2 - Unsigned Multiply-Add Long (vector)
    {nullptr, "umlal-vv", UInt(16, 8), "unsigned_multiply_add_long_vector", {UInt(16, 8), UInt(8, 8), UInt(8, 8)}},
    {nullptr, "umlal-vv", UInt(16, 16), "unsigned_multiply_add_long_vector", {UInt(16, 16), UInt(8, 16), UInt(8, 16)}},
    {nullptr, "umlal-vv", UInt(32, 4), "unsigned_multiply_add_long_vector", {UInt(32, 4), UInt(16, 4), UInt(16, 4)}},
    {nullptr, "umlal-vv", UInt(32, 8), "unsigned_multiply_add_long_vector", {UInt(32, 8), UInt(16, 8), UInt(16, 8)}},
    {nullptr, "umlal-vv", UInt(64, 2), "unsigned_multiply_add_long_vector", {UInt(64, 2), UInt(32, 2), UInt(32, 2)}},
    {nullptr, "umlal-vv", UInt(64, 4), "unsigned_multiply_add_long_vector", {UInt(64, 4), UInt(32, 4), UInt(32, 4)}},

    // UMLSL, UMLSL2 - Unsigned Multiply-Subtract Long (vector, by element)
    {nullptr, "umlsl-vs", UInt(32, 4), "unsigned_multiply_sub_long_scalar", {UInt(32, 4), UInt(16, 4), UInt(16)}},
    {nullptr, "umlsl-vs", UInt(32, 8), "unsigned_multiply_sub_long_scalar", {UInt(32, 8), UInt(16, 8), UInt(16)}},
    {nullptr, "umlsl-vs", UInt(64, 2), "unsigned_multiply_sub_long_scalar", {UInt(64, 2), UInt(32, 2), UInt(32)}},
    {nullptr, "umlsl-vs", UInt(64, 4), "unsigned_multiply_sub_long_scalar", {UInt(64, 4), UInt(32, 4), UInt(32)}},

    // UMLSL, UMLSL2 - Unsigned Multiply-Subtract Long (vector)
    {nullptr, "umlsl-vv", UInt(16, 8), "unsigned_multiply_sub_long_scalar", {UInt(16, 8), UInt(8, 8), UInt(8, 8)}},
    {nullptr, "umlsl-vv", UInt(16, 16), "unsigned_multiply_sub_long_scalar", {UInt(16, 16), UInt(8, 16), UInt(8, 16)}},
    {nullptr, "umlsl-vv", UInt(32, 4), "unsigned_multiply_sub_long_scalar", {UInt(32, 4), UInt(16, 4), UInt(16, 4)}},
    {nullptr, "umlsl-vv", UInt(32, 8), "unsigned_multiply_sub_long_scalar", {UInt(32, 8), UInt(16, 8), UInt(16, 8)}},
    {nullptr, "umlsl-vv", UInt(64, 2), "unsigned_multiply_sub_long_scalar", {UInt(64, 2), UInt(32, 2), UInt(32, 2)}},
    {nullptr, "umlsl-vv", UInt(64, 4), "unsigned_multiply_sub_long_scalar", {UInt(64, 4), UInt(32, 4), UInt(32, 4)}},

    // UMOV - Unsigned Move vector element to general-purpose register
    // TODO UMULL, UMULL2 - Unsigned Multiply Long (vector, by element)

    // UQSHL - Unsigned saturating Shift Left (immediate)
    // URECPE - Unsigned Reciprocal Estimate

    // URSHR - Unsigned Rounding Shift Right (immediate)
    // URSQRTE - Unsigned Reciprocal Square Root Estimate
    // {nullptr, "ursqte", UInt(32, 2), "unsigned_reciprocal_sqrt_estimate", {UInt(32, 2)}},
    // {nullptr, "ursqte", UInt(32, 4), "unsigned_reciprocal_sqrt_estimate", {UInt(32, 4)}},

    // URSRA - Unsigned Rounding Shift Right and Accumulate (immediate)

    // USHLL, USHLL2 - Unsigned Shift Left Long (immediate)
    {nullptr, "ushll", UInt(16, 8), "unsigned_shift_left_long", {UInt(8, 8), UInt(8)}},
    {nullptr, "ushll", UInt(16, 16), "unsigned_shift_left_long", {UInt(8, 16), UInt(8)} },
    {nullptr, "ushll", UInt(32, 4), "unsigned_shift_left_long", {UInt(16, 4), UInt(16)} },
    {nullptr, "ushll", UInt(32, 8), "unsigned_shift_left_long", {UInt(16, 8), UInt(16)} },
    {nullptr, "ushll", UInt(64, 2), "unsigned_shift_left_long", {UInt(32, 2), UInt(32)} },
    {nullptr, "ushll", UInt(64, 4), "unsigned_shift_left_long", {UInt(32, 4), UInt(32)} },

    // USHR - Unsigned Shift Right (immediate)

    // USQADD - Unsigned saturating Accumulate of Signed value
    // First arg is the accumulator vector.
    {nullptr, "usqadd", UInt(8, 8), "unsigned_saturating_acc_signed", {UInt(8, 8), Int(8, 8)} },
    {nullptr, "usqadd", UInt(8, 16), "unsigned_saturating_acc_signed", {UInt(8, 16), Int(8, 16)} },
    {nullptr, "usqadd", UInt(16, 4), "unsigned_saturating_acc_signed", {UInt(16, 4), Int(16, 4)} },
    {nullptr, "usqadd", UInt(16, 8), "unsigned_saturating_acc_signed", {UInt(16, 8), Int(16, 8)} },
    {nullptr, "usqadd", UInt(32, 2), "unsigned_saturating_acc_signed", {UInt(32, 2), Int(32, 2)} },
    {nullptr, "usqadd", UInt(32, 4), "unsigned_saturating_acc_signed", {UInt(32, 4), Int(32, 4)} },
    // TODO: figure out how to implement USQADD with 64 bits.
    // {nullptr, "usqadd", UInt(64, 2), "unsigned_saturating_acc_signed", {UInt(64, 2), Int(64, 2)} },

    // USRA - Unsigned Shift Right and Accumulate (immediate)
    // USUBL, USUBL2 - Unsigned Subtract Long
    {nullptr, "usubl", UInt(16, 8), "unsigned_sub_long", {UInt(8, 8), UInt(8, 8)}},
    {nullptr, "usubl", UInt(16, 16), "unsigned_sub_long", {UInt(8, 16), UInt(8, 16)}},
    {nullptr, "usubl", UInt(32, 4), "unsigned_sub_long", {UInt(16, 4), UInt(16, 4)}},
    {nullptr, "usubl", UInt(32, 8), "unsigned_sub_long", {UInt(16, 8), UInt(16, 8)}},
    {nullptr, "usubl", UInt(64, 2), "unsigned_sub_long", {UInt(32, 2), UInt(32, 2)}},
    {nullptr, "usubl", UInt(64, 4), "unsigned_sub_long", {UInt(32, 4), UInt(32, 4)}},

    // USUBW, USUBW2 - Unsigned Subtract Wide
    {nullptr, "usubw", UInt(16, 8), "unsigned_sub_wide", {UInt(16, 8), UInt(8, 8)}},
    {nullptr, "usubw", UInt(16, 16), "unsigned_sub_wide", {UInt(16, 16), UInt(8, 16)}},

    // UXTL, UXTL2 - Unsigned extend Long
    {nullptr, "uxtl", UInt(16, 8), "unsigned_extend_long", {UInt(8, 8)}},
    {nullptr, "uxtl", UInt(16, 16), "unsigned_extend_long", {UInt(8, 16)}},
    {nullptr, "uxtl", UInt(32, 4), "unsigned_extend_long", {UInt(16, 4)}},
    {nullptr, "uxtl", UInt(32, 8), "unsigned_extend_long", {UInt(16, 8)}},
    {nullptr, "uxtl", UInt(64, 2), "unsigned_extend_long", {UInt(32, 2)}},
    {nullptr, "uxtl", UInt(64, 4), "unsigned_extend_long", {UInt(32, 4)}},

    // XTN, XTN2 - Extract Narrow
    {nullptr, "xtn", UInt(8, 8), "extract_narrow", {UInt(16, 8)}},
    {nullptr, "xtn", UInt(16, 4), "extract_narrow", {UInt(32, 4)}},
    {nullptr, "xtn", UInt(32, 2), "extract_narrow", {UInt(64, 2)}},

    {nullptr, "xtn", Int(8, 8), "extract_narrow", {Int(16, 8)}},
    {nullptr, "xtn", Int(16, 4), "extract_narrow", {Int(32, 4)}},
    {nullptr, "xtn", Int(32, 2), "extract_narrow", {Int(64, 2)}},


    // Vector movement / shuffling.
    // ZIP1 / ZIP2 - Zip Vectors
    {nullptr, "zip", Int(8, 16), "zip_vectors", {Int(8, 8), Int(8, 8)}},
    {nullptr, "zip", Int(8, 32), "zip_vectors", {Int(8, 16), Int(8, 16)}},
    {nullptr, "zip", Int(16, 8), "zip_vectors", {Int(16, 4), Int(16, 4)}},
    {nullptr, "zip", Int(16, 16), "zip_vectors", {Int(16, 8), Int(16, 8)}},
    {nullptr, "zip", Int(32, 4), "zip_vectors", {Int(32, 2), Int(32, 2)}},
    {nullptr, "zip", Int(32, 8), "zip_vectors", {Int(32, 4), Int(32, 4)}},
    {nullptr, "zip", Int(64, 4), "zip_vectors", {Int(64, 2), Int(64, 2)}},

    {nullptr, "zip", UInt(8, 16), "zip_vectors", {UInt(8, 8), UInt(8, 8)}},
    {nullptr, "zip", UInt(8, 32), "zip_vectors", {UInt(8, 16), UInt(8, 16)}},
    {nullptr, "zip", UInt(16, 8), "zip_vectors", {UInt(16, 4), UInt(16, 4)}},
    {nullptr, "zip", UInt(16, 16), "zip_vectors", {UInt(16, 8), UInt(16, 8)}},
    {nullptr, "zip", UInt(32, 4), "zip_vectors", {UInt(32, 2), UInt(32, 2)}},
    {nullptr, "zip", UInt(32, 8), "zip_vectors", {UInt(32, 4), UInt(32, 4)}},
    {nullptr, "zip", UInt(64, 4), "zip_vectors", {UInt(64, 2), UInt(64, 2)}},

    // UZP1 - Unzip vectors (even)
    {nullptr, "uzip1", Int(8, 8), "unzip_even_vectors", {Int(8, 8), Int(8, 8)}},
    {nullptr, "uzip1", Int(8, 16), "unzip_even_vectors", {Int(8, 16), Int(8, 16)}},
    {nullptr, "uzip1", Int(16, 4), "unzip_even_vectors", {Int(16, 4), Int(16, 4)}},
    {nullptr, "uzip1", Int(16, 8), "unzip_even_vectors", {Int(16, 8), Int(16, 8)}},
    {nullptr, "uzip1", Int(32, 2), "unzip_even_vectors", {Int(32, 2), Int(32, 2)}},
    {nullptr, "uzip1", Int(32, 4), "unzip_even_vectors", {Int(32, 4), Int(32, 4)}},
    {nullptr, "uzip1", Int(64, 2), "unzip_even_vectors", {Int(64, 2), Int(64, 2)}},

    {nullptr, "uzip1", UInt(8, 8), "unzip_even_vectors", {UInt(8, 8), UInt(8, 8)}},
    {nullptr, "uzip1", UInt(8, 16), "unzip_even_vectors", {UInt(8, 16), UInt(8, 16)}},
    {nullptr, "uzip1", UInt(16, 4), "unzip_even_vectors", {UInt(16, 4), UInt(16, 4)}},
    {nullptr, "uzip1", UInt(16, 8), "unzip_even_vectors", {UInt(16, 8), UInt(16, 8)}},
    {nullptr, "uzip1", UInt(32, 2), "unzip_even_vectors", {UInt(32, 2), UInt(32, 2)}},
    {nullptr, "uzip1", UInt(32, 4), "unzip_even_vectors", {UInt(32, 4), UInt(32, 4)}},
    {nullptr, "uzip1", UInt(64, 2), "unzip_even_vectors", {UInt(64, 2), UInt(64, 2)}},

    // UZP2 - Unzip vectors (odd)
    {nullptr, "uzip2", Int(8, 8), "unzip_odd_vectors", {Int(8, 8), Int(8, 8)}},
    {nullptr, "uzip2", Int(8, 16), "unzip_odd_vectors", {Int(8, 16), Int(8, 16)}},
    {nullptr, "uzip2", Int(16, 4), "unzip_odd_vectors", {Int(16, 4), Int(16, 4)}},
    {nullptr, "uzip2", Int(16, 8), "unzip_odd_vectors", {Int(16, 8), Int(16, 8)}},
    {nullptr, "uzip2", Int(32, 2), "unzip_odd_vectors", {Int(32, 2), Int(32, 2)}},
    {nullptr, "uzip2", Int(32, 4), "unzip_odd_vectors", {Int(32, 4), Int(32, 4)}},
    {nullptr, "uzip2", Int(64, 2), "unzip_odd_vectors", {Int(64, 2), Int(64, 2)}},

    {nullptr, "uzip2", UInt(8, 8), "unzip_odd_vectors", {UInt(8, 8), UInt(8, 8)}},
    {nullptr, "uzip2", UInt(8, 16), "unzip_odd_vectors", {UInt(8, 16), UInt(8, 16)}},
    {nullptr, "uzip2", UInt(16, 4), "unzip_odd_vectors", {UInt(16, 4), UInt(16, 4)}},
    {nullptr, "uzip2", UInt(16, 8), "unzip_odd_vectors", {UInt(16, 8), UInt(16, 8)}},
    {nullptr, "uzip2", UInt(32, 2), "unzip_odd_vectors", {UInt(32, 2), UInt(32, 2)}},
    {nullptr, "uzip2", UInt(32, 4), "unzip_odd_vectors", {UInt(32, 4), UInt(32, 4)}},
    {nullptr, "uzip2", UInt(64, 2), "unzip_odd_vectors", {UInt(64, 2), UInt(64, 2)}},

    // MOVI - Move immediate (vector). (broadcast)
    // {nullptr, "movi", Int(8, 8), "move_immediate_vector", {Int(8)}},
    // {nullptr, "movi", Int(16, 4), "move_immediate_vector", {Int(16)}},
    // {nullptr, "movi", Int(32, 2), "move_immediate_vector", {Int(32)}},
    // {nullptr, "movi", Int(64, 2), "move_immediate_vector", {Int(64)}},

    // {nullptr, "movi", UInt(8, 8), "move_immediate_vector", {UInt(8)}},
    // {nullptr, "movi", UInt(16, 4), "move_immediate_vector", {UInt(16)}},
    // {nullptr, "movi", UInt(32, 2), "move_immediate_vector", {UInt(32)}},
    // {nullptr, "movi", UInt(64, 2), "move_immediate_vector", {UInt(64)}},

    // // Had to split this into two for interpreter reasons
    // {nullptr, "moviw", Int(8, 16), "move_immediate_vector_wide", {Int(8)}},
    // {nullptr, "moviw", Int(16, 8), "move_immediate_vector_wide", {Int(16)}},
    // {nullptr, "moviw", Int(32, 4), "move_immediate_vector_wide", {Int(32)}},

    // {nullptr, "moviw", UInt(8, 16), "move_immediate_vector_wide", {UInt(8)}},
    // {nullptr, "moviw", UInt(16, 8), "move_immediate_vector_wide", {UInt(16)}},
    // {nullptr, "moviw", UInt(32, 4), "move_immediate_vector_wide", {UInt(32)}},

    // DUP - Duplicate value (broadcast of non-immediate)
    {nullptr, "dup", Int(8, 8), "duplicate_value", {Int(8)}},
    {nullptr, "dup", Int(16, 4), "duplicate_value", {Int(16)}},
    {nullptr, "dup", Int(32, 2), "duplicate_value", {Int(32)}},
    {nullptr, "dup", Int(64, 2), "duplicate_value", {Int(64)}},

    {nullptr, "dup", UInt(8, 8), "duplicate_value", {UInt(8)}},
    {nullptr, "dup", UInt(16, 4), "duplicate_value", {UInt(16)}},
    {nullptr, "dup", UInt(32, 2), "duplicate_value", {UInt(32)}},
    {nullptr, "dup", UInt(64, 2), "duplicate_value", {UInt(64)}},

    // Had to split this into two for interpreter reasons
    {nullptr, "dupw", Int(8, 16), "duplicate_value_wide", {Int(8)}},
    {nullptr, "dupw", Int(16, 8), "duplicate_value_wide", {Int(16)}},
    {nullptr, "dupw", Int(32, 4), "duplicate_value_wide", {Int(32)}},

    {nullptr, "dupw", UInt(8, 16), "duplicate_value_wide", {UInt(8)}},
    {nullptr, "dupw", UInt(16, 8), "duplicate_value_wide", {UInt(16)}},
    {nullptr, "dupw", UInt(32, 4), "duplicate_value_wide", {UInt(32)}},

    // Needed for scalar dot product
    {nullptr, "dupn", Int(8, 4), "duplicate_value_narrow", {Int(8)}},
    {nullptr, "dupn", UInt(8, 4), "duplicate_value_narrow", {UInt(8)}},

    // TRN1 - Transpose vectors (primary). Evens
    {nullptr, "trn1", Int(8, 8), "transpose_vectors_even", {Int(8, 8), Int(8, 8)}},
    {nullptr, "trn1", Int(8, 16), "transpose_vectors_even", {Int(8, 16), Int(8, 16)}},
    {nullptr, "trn1", Int(16, 4), "transpose_vectors_even", {Int(16, 4), Int(16, 4)}},
    {nullptr, "trn1", Int(16, 8), "transpose_vectors_even", {Int(16, 8), Int(16, 8)}},
    {nullptr, "trn1", Int(32, 2), "transpose_vectors_even", {Int(32, 2), Int(32, 2)}},
    {nullptr, "trn1", Int(32, 4), "transpose_vectors_even", {Int(32, 4), Int(32, 4)}},
    {nullptr, "trn1", Int(64, 2), "transpose_vectors_even", {Int(64, 2), Int(64, 2)}},

    {nullptr, "trn1", UInt(8, 8), "transpose_vectors_even", {UInt(8, 8), UInt(8, 8)}},
    {nullptr, "trn1", UInt(8, 16), "transpose_vectors_even", {UInt(8, 16), UInt(8, 16)}},
    {nullptr, "trn1", UInt(16, 4), "transpose_vectors_even", {UInt(16, 4), UInt(16, 4)}},
    {nullptr, "trn1", UInt(16, 8), "transpose_vectors_even", {UInt(16, 8), UInt(16, 8)}},
    {nullptr, "trn1", UInt(32, 2), "transpose_vectors_even", {UInt(32, 2), UInt(32, 2)}},
    {nullptr, "trn1", UInt(32, 4), "transpose_vectors_even", {UInt(32, 4), UInt(32, 4)}},
    {nullptr, "trn1", UInt(64, 2), "transpose_vectors_even", {UInt(64, 2), UInt(64, 2)}},

    // TRN2 - Transpose vectors (secondary). Odds
    {nullptr, "trn2", Int(8, 8), "transpose_vectors_odd", {Int(8, 8), Int(8, 8)}},
    {nullptr, "trn2", Int(8, 16), "transpose_vectors_odd", {Int(8, 16), Int(8, 16)}},
    {nullptr, "trn2", Int(16, 4), "transpose_vectors_odd", {Int(16, 4), Int(16, 4)}},
    {nullptr, "trn2", Int(16, 8), "transpose_vectors_odd", {Int(16, 8), Int(16, 8)}},
    {nullptr, "trn2", Int(32, 2), "transpose_vectors_odd", {Int(32, 2), Int(32, 2)}},
    {nullptr, "trn2", Int(32, 4), "transpose_vectors_odd", {Int(32, 4), Int(32, 4)}},
    {nullptr, "trn2", Int(64, 2), "transpose_vectors_odd", {Int(64, 2), Int(64, 2)}},

    {nullptr, "trn2", UInt(8, 8), "transpose_vectors_odd", {UInt(8, 8), UInt(8, 8)}},
    {nullptr, "trn2", UInt(8, 16), "transpose_vectors_odd", {UInt(8, 16), UInt(8, 16)}},
    {nullptr, "trn2", UInt(16, 4), "transpose_vectors_odd", {UInt(16, 4), UInt(16, 4)}},
    {nullptr, "trn2", UInt(16, 8), "transpose_vectors_odd", {UInt(16, 8), UInt(16, 8)}},
    {nullptr, "trn2", UInt(32, 2), "transpose_vectors_odd", {UInt(32, 2), UInt(32, 2)}},
    {nullptr, "trn2", UInt(32, 4), "transpose_vectors_odd", {UInt(32, 4), UInt(32, 4)}},
    {nullptr, "trn2", UInt(64, 2), "transpose_vectors_odd", {UInt(64, 2), UInt(64, 2)}},

    // EXT - Extract vectors
    {nullptr, "ext8i1", Int(8, 8), "extract_vectors_8i1", {Int(8, 8), Int(8, 8)}},
    {nullptr, "ext8i1", UInt(8, 8), "extract_vectors_8i1", {UInt(8, 8), UInt(8, 8)}},

    {nullptr, "ext8i2", Int(8, 8), "extract_vectors_8i2", {Int(8, 8), Int(8, 8)}},
    {nullptr, "ext8i2", UInt(8, 8), "extract_vectors_8i2", {UInt(8, 8), UInt(8, 8)}},

    {nullptr, "ext8i3", Int(8, 8), "extract_vectors_8i3", {Int(8, 8), Int(8, 8)}},
    {nullptr, "ext8i3", UInt(8, 8), "extract_vectors_8i3", {UInt(8, 8), UInt(8, 8)}},

    {nullptr, "ext8i4", Int(8, 8), "extract_vectors_8i4", {Int(8, 8), Int(8, 8)}},
    {nullptr, "ext8i4", UInt(8, 8), "extract_vectors_8i4", {UInt(8, 8), UInt(8, 8)}},

    {nullptr, "ext8i5", Int(8, 8), "extract_vectors_8i5", {Int(8, 8), Int(8, 8)}},
    {nullptr, "ext8i5", UInt(8, 8), "extract_vectors_8i5", {UInt(8, 8), UInt(8, 8)}},

    {nullptr, "ext8i6", Int(8, 8), "extract_vectors_8i6", {Int(8, 8), Int(8, 8)}},
    {nullptr, "ext8i6", UInt(8, 8), "extract_vectors_8i6", {UInt(8, 8), UInt(8, 8)}},

    {nullptr, "ext8i7", Int(8, 8), "extract_vectors_8i7", {Int(8, 8), Int(8, 8)}},
    {nullptr, "ext8i7", UInt(8, 8), "extract_vectors_8i7", {UInt(8, 8), UInt(8, 8)}},

    {nullptr, "ext16i1", Int(8, 16), "extract_vectors_16i1", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ext16i1", UInt(8, 16), "extract_vectors_16i1", {UInt(8, 16), UInt(8, 16)}},

    {nullptr, "ext16i2", Int(8, 16), "extract_vectors_16i2", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ext16i2", UInt(8, 16), "extract_vectors_16i2", {UInt(8, 16), UInt(8, 16)}},

    {nullptr, "ext16i3", Int(8, 16), "extract_vectors_16i3", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ext16i3", UInt(8, 16), "extract_vectors_16i3", {UInt(8, 16), UInt(8, 16)}},

    {nullptr, "ext16i4", Int(8, 16), "extract_vectors_16i4", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ext16i4", UInt(8, 16), "extract_vectors_16i4", {UInt(8, 16), UInt(8, 16)}},

    {nullptr, "ext16i5", Int(8, 16), "extract_vectors_16i5", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ext16i5", UInt(8, 16), "extract_vectors_16i5", {UInt(8, 16), UInt(8, 16)}},

    {nullptr, "ext16i6", Int(8, 16), "extract_vectors_16i6", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ext16i6", UInt(8, 16), "extract_vectors_16i6", {UInt(8, 16), UInt(8, 16)}},

    {nullptr, "ext16i7", Int(8, 16), "extract_vectors_16i7", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ext16i7", UInt(8, 16), "extract_vectors_16i7", {UInt(8, 16), UInt(8, 16)}},

    {nullptr, "ext16i8", Int(8, 16), "extract_vectors_16i8", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ext16i8", UInt(8, 16), "extract_vectors_16i8", {UInt(8, 16), UInt(8, 16)}},

    {nullptr, "ext16i9", Int(8, 16), "extract_vectors_16i9", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ext16i9", UInt(8, 16), "extract_vectors_16i9", {UInt(8, 16), UInt(8, 16)}},

    {nullptr, "ext16i10", Int(8, 16), "extract_vectors_16i10", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ext16i10", UInt(8, 16), "extract_vectors_16i10", {UInt(8, 16), UInt(8, 16)}},

    {nullptr, "ext16i11", Int(8, 16), "extract_vectors_16i11", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ext16i11", UInt(8, 16), "extract_vectors_16i11", {UInt(8, 16), UInt(8, 16)}},

    {nullptr, "ext16i12", Int(8, 16), "extract_vectors_16i12", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ext16i12", UInt(8, 16), "extract_vectors_16i12", {UInt(8, 16), UInt(8, 16)}},

    {nullptr, "ext16i13", Int(8, 16), "extract_vectors_16i13", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ext16i13", UInt(8, 16), "extract_vectors_16i13", {UInt(8, 16), UInt(8, 16)}},

    {nullptr, "ext16i14", Int(8, 16), "extract_vectors_16i14", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ext16i14", UInt(8, 16), "extract_vectors_16i14", {UInt(8, 16), UInt(8, 16)}},

    {nullptr, "ext16i15", Int(8, 16), "extract_vectors_16i15", {Int(8, 16), Int(8, 16)}},
    {nullptr, "ext16i15", UInt(8, 16), "extract_vectors_16i15", {UInt(8, 16), UInt(8, 16)}},
};

// List of fp16 math functions which we can avoid "emulated" equivalent code generation.
// Only possible if the target has ARMFp16 feature.

// These can be vectorized as fp16 SIMD instruction
const std::set<string> float16_native_funcs = {
    "ceil_f16",
    "floor_f16",
    "is_finite_f16",
    "is_inf_f16",
    "is_nan_f16",
    "round_f16",
    "sqrt_f16",
    "trunc_f16",
};

// These end up with fp32 math function call.
// However, data type conversion of fp16 <-> fp32 is performed natively rather than emulation.
// SIMD instruction is not available, so scalar based instruction is generated.
const std::map<string, string> float16_transcendental_remapping = {
    {"acos_f16", "acos_f32"},
    {"acosh_f16", "acosh_f32"},
    {"asin_f16", "asin_f32"},
    {"asinh_f16", "asinh_f32"},
    {"atan_f16", "atan_f32"},
    {"atan2_f16", "atan2_f32"},
    {"atanh_f16", "atanh_f32"},
    {"cos_f16", "cos_f32"},
    {"cosh_f16", "cosh_f32"},
    {"exp_f16", "exp_f32"},
    {"log_f16", "log_f32"},
    {"pow_f16", "pow_f32"},
    {"sin_f16", "sin_f32"},
    {"sinh_f16", "sinh_f32"},
    {"tan_f16", "tan_f32"},
    {"tanh_f16", "tanh_f32"},
};
// clang-format on

llvm::Function *CodeGen_ARM::define_concat_args_wrapper(llvm::Function *inner, const string &name) {
    llvm::FunctionType *inner_ty = inner->getFunctionType();

    internal_assert(inner_ty->getNumParams() == 2);
    llvm::Type *inner_arg0_ty = inner_ty->getParamType(0);
    llvm::Type *inner_arg1_ty = inner_ty->getParamType(1);
    int inner_arg0_lanes = get_vector_num_elements(inner_arg0_ty);
    int inner_arg1_lanes = get_vector_num_elements(inner_arg1_ty);

    llvm::Type *concat_arg_ty =
        get_vector_type(inner_arg0_ty->getScalarType(), inner_arg0_lanes + inner_arg1_lanes);

    // Make a wrapper.
    llvm::FunctionType *wrapper_ty =
        llvm::FunctionType::get(inner_ty->getReturnType(), {concat_arg_ty}, false);
    llvm::Function *wrapper =
        llvm::Function::Create(wrapper_ty, llvm::GlobalValue::InternalLinkage, name, module.get());
    llvm::BasicBlock *block =
        llvm::BasicBlock::Create(module->getContext(), "entry", wrapper);
    IRBuilderBase::InsertPoint here = builder->saveIP();
    builder->SetInsertPoint(block);

    // Call the real intrinsic.
    Value *low = slice_vector(wrapper->getArg(0), 0, inner_arg0_lanes);
    Value *high = slice_vector(wrapper->getArg(0), inner_arg0_lanes, inner_arg1_lanes);
    Value *ret = builder->CreateCall(inner, {low, high});
    builder->CreateRet(ret);

    // Always inline these wrappers.
    wrapper->addFnAttr(llvm::Attribute::AlwaysInline);

    builder->restoreIP(here);

    llvm::verifyFunction(*wrapper);
    return wrapper;
}

void CodeGen_ARM::init_module() {
    CodeGen_Posix::init_module();

    if (neon_intrinsics_disabled()) {
        return;
    }

    string prefix = target.bits == 32 ? "llvm.arm.neon." : "llvm.aarch64.neon.";
    for (const ArmIntrinsic &intrin : intrinsic_defs) {
        if (intrin.flags & ArmIntrinsic::RequireFp16 && !target.has_feature(Target::ARMFp16)) {
            continue;
        }
        // Get the name of the intrinsic with the appropriate prefix.
        const char *intrin_name = nullptr;
        if (target.bits == 32) {
            intrin_name = intrin.arm32;
        } else {
            intrin_name = intrin.arm64;
        }
        if (!intrin_name) {
            continue;
        }
        string full_name = intrin_name;
        if (!starts_with(full_name, "llvm.") && (intrin.flags & ArmIntrinsic::NoPrefix) == 0) {
            full_name = prefix + full_name;
        }

        // We might have to generate versions of this intrinsic with multiple widths.
        vector<int> width_factors = {1};
        if (intrin.flags & ArmIntrinsic::HalfWidth) {
            width_factors.push_back(2);
        }

        for (int width_factor : width_factors) {
            Type ret_type = intrin.ret_type;
            ret_type = ret_type.with_lanes(ret_type.lanes() * width_factor);
            internal_assert(ret_type.bits() * ret_type.lanes() <= 256) << full_name << "\n";
            vector<Type> arg_types;
            arg_types.reserve(4);
            for (halide_type_t i : intrin.arg_types) {
                if (i.bits == 0) {
                    break;
                }
                Type arg_type = i;
                if (arg_type.is_vector()) {
                    arg_type = arg_type.with_lanes(arg_type.lanes() * width_factor);
                }
                arg_types.emplace_back(arg_type);
            }

            // Generate the LLVM mangled name.
            std::stringstream mangled_name_builder;
            mangled_name_builder << full_name;
            if (starts_with(full_name, "llvm.") && (intrin.flags & ArmIntrinsic::NoMangle) == 0) {
                // Append LLVM name mangling for either the return type or the arguments, or both.
                vector<Type> types;
                if (intrin.flags & ArmIntrinsic::MangleArgs) {
                    types = arg_types;
                } else if (intrin.flags & ArmIntrinsic::MangleRetArgs) {
                    types = {ret_type};
                    types.insert(types.end(), arg_types.begin(), arg_types.end());
                } else {
                    types = {ret_type};
                }
                for (const Type &t : types) {
                    mangled_name_builder << ".v" << t.lanes();
                    if (t.is_int() || t.is_uint()) {
                        mangled_name_builder << "i";
                    } else if (t.is_float()) {
                        mangled_name_builder << "f";
                    }
                    mangled_name_builder << t.bits();
                }
            }
            string mangled_name = mangled_name_builder.str();

            llvm::Function *intrin_impl = nullptr;
            if (intrin.flags & ArmIntrinsic::SplitArg0) {
                // This intrinsic needs a wrapper to split the argument.
                string wrapper_name = intrin.name + unique_name("_wrapper");
                Type split_arg_type = arg_types[0].with_lanes(arg_types[0].lanes() / 2);
                llvm::Function *to_wrap = get_llvm_intrin(ret_type, mangled_name, {split_arg_type, split_arg_type});
                intrin_impl = define_concat_args_wrapper(to_wrap, wrapper_name);
            } else {
                bool scalars_are_vectors = intrin.flags & ArmIntrinsic::ScalarsAreVectors;
                intrin_impl = get_llvm_intrin(ret_type, mangled_name, arg_types, scalars_are_vectors);
            }

            intrin_impl->addFnAttr(llvm::Attribute::ReadNone);
            intrin_impl->addFnAttr(llvm::Attribute::NoUnwind);
            declare_intrin_overload(intrin.name, ret_type, intrin_impl, arg_types);
            if (intrin.flags & ArmIntrinsic::AllowUnsignedOp1) {
                // Also generate a version of this intrinsic where the second operand is unsigned.
                arg_types[1] = arg_types[1].with_code(halide_type_uint);
                declare_intrin_overload(intrin.name, ret_type, intrin_impl, arg_types);
            }
        }
    }
}

void CodeGen_ARM::visit(const Cast *op) {
    if (!neon_intrinsics_disabled() && op->type.is_vector()) {
        vector<Expr> matches;
        for (const Pattern &pattern : casts) {
            if (expr_match(pattern.pattern, op, matches)) {
                if (pattern.intrin.find("shift_right_narrow") != string::npos) {
                    // The shift_right_narrow patterns need the shift to be constant in [1, output_bits].
                    const uint64_t *const_b = as_const_uint(matches[1]);
                    if (!const_b || *const_b == 0 || (int)*const_b > op->type.bits()) {
                        continue;
                    }
                }
                if (target.bits == 32 && pattern.intrin.find("shift_right") != string::npos) {
                    // The 32-bit ARM backend wants right shifts as negative values.
                    matches[1] = simplify(-cast(matches[1].type().with_code(halide_type_int), matches[1]));
                }
                value = call_overloaded_intrin(op->type, pattern.intrin, matches);
                if (value) {
                    return;
                }
            }
        }

        // Catch signed widening of absolute difference.
        // Catch widening of absolute difference
        Type t = op->type;
        if ((t.is_int() || t.is_uint()) &&
            (op->value.type().is_int() || op->value.type().is_uint()) &&
            t.bits() == op->value.type().bits() * 2) {
            if (const Call *absd = Call::as_intrinsic(op->value, {Call::absd})) {
                value = call_overloaded_intrin(t, "widening_absd", absd->args);
                return;
            }
        }

        // If we didn't find a pattern, try rewriting the cast.
        static const vector<pair<Expr, Expr>> cast_rewrites = {
            // Double or triple narrowing saturating casts are better expressed as
            // regular narrowing casts.
            {u8_sat(wild_u32x_), u8_sat(u16_sat(wild_u32x_))},
            {u8_sat(wild_i32x_), u8_sat(i16_sat(wild_i32x_))},
            {i8_sat(wild_u32x_), i8_sat(u16_sat(wild_u32x_))},
            {i8_sat(wild_i32x_), i8_sat(i16_sat(wild_i32x_))},
            {u16_sat(wild_u64x_), u16_sat(u32_sat(wild_u64x_))},
            {u16_sat(wild_i64x_), u16_sat(i32_sat(wild_i64x_))},
            {i16_sat(wild_u64x_), i16_sat(u32_sat(wild_u64x_))},
            {i16_sat(wild_i64x_), i16_sat(i32_sat(wild_i64x_))},
            {u8_sat(wild_u64x_), u8_sat(u16_sat(u32_sat(wild_u64x_)))},
            {u8_sat(wild_i64x_), u8_sat(i16_sat(i32_sat(wild_i64x_)))},
            {i8_sat(wild_u64x_), i8_sat(u16_sat(u32_sat(wild_u64x_)))},
            {i8_sat(wild_i64x_), i8_sat(i16_sat(i32_sat(wild_i64x_)))},
        };
        for (const auto &i : cast_rewrites) {
            if (expr_match(i.first, op, matches)) {
                Expr replacement = substitute("*", matches[0], with_lanes(i.second, op->type.lanes()));
                debug(3) << "rewriting cast to: " << replacement << " from " << Expr(op) << "\n";
                value = codegen(replacement);
                return;
            }
        }
    }

    // LLVM fptoui generates fcvtzs if src is fp16 scalar else fcvtzu.
    // To avoid that, we use neon intrinsic explicitly.
    if (is_float16_and_has_feature(op->value.type())) {
        if (op->type.is_int_or_uint() && op->type.bits() == 16) {
            value = call_overloaded_intrin(op->type, "fp_to_int", {op->value});
            if (value) {
                return;
            }
        }
    }

    CodeGen_Posix::visit(op);
}

void CodeGen_ARM::visit(const Sub *op) {
    if (neon_intrinsics_disabled()) {
        CodeGen_Posix::visit(op);
        return;
    }

    if (op->type.is_vector()) {
        vector<Expr> matches;
        for (const auto &i : negations) {
            if (expr_match(i.pattern, op, matches)) {
                value = call_overloaded_intrin(op->type, i.intrin, matches);
                return;
            }
        }
    }

    // llvm will generate floating point negate instructions if we ask for (-0.0f)-x
    if (op->type.is_float() &&
        (op->type.bits() >= 32 || is_float16_and_has_feature(op->type)) &&
        is_const_zero(op->a)) {
        Constant *a;
        if (op->type.bits() == 16) {
            a = ConstantFP::getNegativeZero(f16_t);
        } else if (op->type.bits() == 32) {
            a = ConstantFP::getNegativeZero(f32_t);
        } else if (op->type.bits() == 64) {
            a = ConstantFP::getNegativeZero(f64_t);
        } else {
            a = nullptr;
            internal_error << "Unknown bit width for floating point type: " << op->type << "\n";
        }

        Value *b = codegen(op->b);

        if (op->type.lanes() > 1) {
            a = ConstantVector::getSplat(element_count(op->type.lanes()), a);
        }
        value = builder->CreateFSub(a, b);
        return;
    }

    CodeGen_Posix::visit(op);
}

void CodeGen_ARM::visit(const Min *op) {
    // Use a 2-wide vector for scalar floats.
    if (!neon_intrinsics_disabled() && (op->type == Float(32) || op->type.is_vector())) {
        value = call_overloaded_intrin(op->type, "min", {op->a, op->b});
        if (value) {
            return;
        }
    }

    CodeGen_Posix::visit(op);
}

void CodeGen_ARM::visit(const Max *op) {
    // Use a 2-wide vector for scalar floats.
    if (!neon_intrinsics_disabled() && (op->type == Float(32) || op->type.is_vector())) {
        value = call_overloaded_intrin(op->type, "max", {op->a, op->b});
        if (value) {
            return;
        }
    }

    CodeGen_Posix::visit(op);
}

void CodeGen_ARM::visit(const Store *op) {
    // Predicated store
    if (!is_const_one(op->predicate)) {
        CodeGen_Posix::visit(op);
        return;
    }

    if (neon_intrinsics_disabled()) {
        CodeGen_Posix::visit(op);
        return;
    }

    // A dense store of an interleaving can be done using a vst2 intrinsic
    const Ramp *ramp = op->index.as<Ramp>();

    // We only deal with ramps here
    if (!ramp) {
        CodeGen_Posix::visit(op);
        return;
    }

    // First dig through let expressions
    Expr rhs = op->value;
    vector<pair<string, Expr>> lets;
    while (const Let *let = rhs.as<Let>()) {
        rhs = let->body;
        lets.emplace_back(let->name, let->value);
    }
    const Shuffle *shuffle = rhs.as<Shuffle>();

    // Interleaving store instructions only exist for certain types.
    bool type_ok_for_vst = false;
    Type intrin_type = Handle();
    if (shuffle) {
        Type t = shuffle->vectors[0].type();
        intrin_type = t;
        Type elt = t.element_of();
        int vec_bits = t.bits() * t.lanes();
        if (elt == Float(32) ||
            is_float16_and_has_feature(elt) ||
            elt == Int(8) || elt == Int(16) || elt == Int(32) ||
            elt == UInt(8) || elt == UInt(16) || elt == UInt(32)) {
            if (vec_bits % 128 == 0) {
                type_ok_for_vst = true;
                intrin_type = intrin_type.with_lanes(128 / t.bits());
            } else if (vec_bits % 64 == 0) {
                type_ok_for_vst = true;
                intrin_type = intrin_type.with_lanes(64 / t.bits());
            }
        }
    }

    if (is_const_one(ramp->stride) &&
        shuffle && shuffle->is_interleave() &&
        type_ok_for_vst &&
        2 <= shuffle->vectors.size() && shuffle->vectors.size() <= 4) {

        const int num_vecs = shuffle->vectors.size();
        vector<Value *> args(num_vecs);

        Type t = shuffle->vectors[0].type();

        // Assume element-aligned.
        int alignment = t.bytes();

        // Codegen the lets
        for (size_t i = 0; i < lets.size(); i++) {
            sym_push(lets[i].first, codegen(lets[i].second));
        }

        // Codegen all the vector args.
        for (int i = 0; i < num_vecs; ++i) {
            args[i] = codegen(shuffle->vectors[i]);
        }

        // Declare the function
        std::ostringstream instr;
        vector<llvm::Type *> arg_types;
        if (target.bits == 32) {
            instr << "llvm.arm.neon.vst"
                  << num_vecs
                  << ".p0i8"
                  << ".v"
                  << intrin_type.lanes()
                  << (t.is_float() ? 'f' : 'i')
                  << t.bits();
            arg_types = vector<llvm::Type *>(num_vecs + 2, llvm_type_of(intrin_type));
            arg_types.front() = i8_t->getPointerTo();
            arg_types.back() = i32_t;
        } else {
            instr << "llvm.aarch64.neon.st"
                  << num_vecs
                  << ".v"
                  << intrin_type.lanes()
                  << (t.is_float() ? 'f' : 'i')
                  << t.bits()
                  << ".p0"
                  << (t.is_float() ? 'f' : 'i')
                  << t.bits();
            arg_types = vector<llvm::Type *>(num_vecs + 1, llvm_type_of(intrin_type));
            arg_types.back() = llvm_type_of(intrin_type.element_of())->getPointerTo();
        }
        llvm::FunctionType *fn_type = FunctionType::get(llvm::Type::getVoidTy(*context), arg_types, false);
        llvm::FunctionCallee fn = module->getOrInsertFunction(instr.str(), fn_type);
        internal_assert(fn);

        // How many vst instructions do we need to generate?
        int slices = t.lanes() / intrin_type.lanes();

        internal_assert(slices >= 1);
        for (int i = 0; i < t.lanes(); i += intrin_type.lanes()) {
            Expr slice_base = simplify(ramp->base + i * num_vecs);
            Expr slice_ramp = Ramp::make(slice_base, ramp->stride, intrin_type.lanes() * num_vecs);
            Value *ptr = codegen_buffer_pointer(op->name, shuffle->vectors[0].type().element_of(), slice_base);

            vector<Value *> slice_args = args;
            // Take a slice of each arg
            for (int j = 0; j < num_vecs; j++) {
                slice_args[j] = slice_vector(slice_args[j], i, intrin_type.lanes());
            }

            if (target.bits == 32) {
                // The arm32 versions take an i8*, regardless of the type stored.
                ptr = builder->CreatePointerCast(ptr, i8_t->getPointerTo());
                // Set the pointer argument
                slice_args.insert(slice_args.begin(), ptr);
                // Set the alignment argument
                slice_args.push_back(ConstantInt::get(i32_t, alignment));
            } else {
                // Set the pointer argument
                slice_args.push_back(ptr);
            }

            CallInst *store = builder->CreateCall(fn, slice_args);
            add_tbaa_metadata(store, op->name, slice_ramp);
        }

        // pop the lets from the symbol table
        for (size_t i = 0; i < lets.size(); i++) {
            sym_pop(lets[i].first);
        }

        return;
    }

    // If the stride is one or minus one, we can deal with that using vanilla codegen
    const IntImm *stride = ramp->stride.as<IntImm>();
    if (stride && (stride->value == 1 || stride->value == -1)) {
        CodeGen_Posix::visit(op);
        return;
    }

    // We have builtins for strided stores with fixed but unknown stride, but they use inline assembly
    if (target.bits != 64 /* Not yet implemented for aarch64 */) {
        ostringstream builtin;
        builtin << "strided_store_"
                << (op->value.type().is_float() ? "f" : "i")
                << op->value.type().bits()
                << "x" << op->value.type().lanes();

        llvm::Function *fn = module->getFunction(builtin.str());
        if (fn) {
            Value *base = codegen_buffer_pointer(op->name, op->value.type().element_of(), ramp->base);
            Value *stride = codegen(ramp->stride * op->value.type().bytes());
            Value *val = codegen(op->value);
            debug(4) << "Creating call to " << builtin.str() << "\n";
            Value *store_args[] = {base, stride, val};
            Instruction *store = builder->CreateCall(fn, store_args);
            (void)store;
            add_tbaa_metadata(store, op->name, op->index);
            return;
        }
    }

    CodeGen_Posix::visit(op);
}

void CodeGen_ARM::visit(const Load *op) {
    // Predicated load
    if (!is_const_one(op->predicate)) {
        CodeGen_Posix::visit(op);
        return;
    }

    if (neon_intrinsics_disabled()) {
        CodeGen_Posix::visit(op);
        return;
    }

    const Ramp *ramp = op->index.as<Ramp>();

    // We only deal with ramps here
    if (!ramp) {
        CodeGen_Posix::visit(op);
        return;
    }

    // If the stride is in [-1, 4], we can deal with that using vanilla codegen
    const IntImm *stride = ramp ? ramp->stride.as<IntImm>() : nullptr;
    if (stride && (-1 <= stride->value && stride->value <= 4)) {
        CodeGen_Posix::visit(op);
        return;
    }

    // We have builtins for strided loads with fixed but unknown stride, but they use inline assembly.
    if (target.bits != 64 /* Not yet implemented for aarch64 */) {
        ostringstream builtin;
        builtin << "strided_load_"
                << (op->type.is_float() ? "f" : "i")
                << op->type.bits()
                << "x" << op->type.lanes();

        llvm::Function *fn = module->getFunction(builtin.str());
        if (fn) {
            Value *base = codegen_buffer_pointer(op->name, op->type.element_of(), ramp->base);
            Value *stride = codegen(ramp->stride * op->type.bytes());
            debug(4) << "Creating call to " << builtin.str() << "\n";
            Value *args[] = {base, stride};
            Instruction *load = builder->CreateCall(fn, args, builtin.str());
            add_tbaa_metadata(load, op->name, op->index);
            value = load;
            return;
        }
    }

    CodeGen_Posix::visit(op);
}

void CodeGen_ARM::visit(const Call *op) {
    if (op->is_intrinsic(Call::sorted_avg)) {
        value = codegen(halving_add(op->args[0], op->args[1]));
        return;
    }

    if (op->is_intrinsic(Call::rounding_shift_right)) {
        // LLVM wants these as rounding_shift_left with a negative b instead.
        Expr b = op->args[1];
        if (!b.type().is_int()) {
            b = Cast::make(b.type().with_code(halide_type_int), b);
        }
        value = codegen(rounding_shift_left(op->args[0], simplify(-b)));
        return;
    } else if (op->is_intrinsic(Call::widening_shift_right) && op->args[1].type().is_int()) {
        // We want these as left shifts with a negative b instead.
        value = codegen(widening_shift_left(op->args[0], simplify(-op->args[1])));
        return;
    } else if (op->is_intrinsic(Call::shift_right) && op->args[1].type().is_int()) {
        // We want these as left shifts with a negative b instead.
        value = codegen(op->args[0] << simplify(-op->args[1]));
        return;
    }

    if (op->type.is_vector()) {
        vector<Expr> matches;
        for (const Pattern &pattern : calls) {
            if (expr_match(pattern.pattern, op, matches)) {
                value = call_overloaded_intrin(op->type, pattern.intrin, matches);
                if (value) {
                    return;
                }
            }
        }
    }

    if (target.has_feature(Target::ARMFp16)) {
        auto it = float16_transcendental_remapping.find(op->name);
        if (it != float16_transcendental_remapping.end()) {
            // This op doesn't have float16 native function.
            // So we call float32 equivalent func with native type conversion between fp16 and fp32
            // instead of emulated equivalent code as in EmulatedFloat16Math.cpp
            std::vector<Expr> new_args(op->args.size());
            for (size_t i = 0; i < op->args.size(); i++) {
                new_args[i] = cast(Float(32, op->args[i].type().lanes()), op->args[i]);
            }
            const auto &fp32_func_name = it->second;
            Expr e = Call::make(Float(32, op->type.lanes()), fp32_func_name, new_args, op->call_type,
                                op->func, op->value_index, op->image, op->param);
            value = codegen(cast(Float(16, e.type().lanes()), e));
            return;
        }
    }

    CodeGen_Posix::visit(op);
}

void CodeGen_ARM::visit(const LT *op) {
    if (op->a.type().is_float() && op->type.is_vector()) {
        // Fast-math flags confuse LLVM's aarch64 backend, so
        // temporarily clear them for this instruction.
        // See https://bugs.llvm.org/show_bug.cgi?id=45036
        llvm::IRBuilderBase::FastMathFlagGuard guard(*builder);
        builder->clearFastMathFlags();
        CodeGen_Posix::visit(op);
        return;
    }

    CodeGen_Posix::visit(op);
}

void CodeGen_ARM::visit(const LE *op) {
    if (op->a.type().is_float() && op->type.is_vector()) {
        // Fast-math flags confuse LLVM's aarch64 backend, so
        // temporarily clear them for this instruction.
        // See https://bugs.llvm.org/show_bug.cgi?id=45036
        llvm::IRBuilderBase::FastMathFlagGuard guard(*builder);
        builder->clearFastMathFlags();
        CodeGen_Posix::visit(op);
        return;
    }

    CodeGen_Posix::visit(op);
}

void CodeGen_ARM::codegen_vector_reduce(const VectorReduce *op, const Expr &init) {
    if (neon_intrinsics_disabled() ||
        op->op == VectorReduce::Or ||
        op->op == VectorReduce::And ||
        op->op == VectorReduce::Mul) {
        CodeGen_Posix::codegen_vector_reduce(op, init);
        return;
    }

    struct Pattern {
        VectorReduce::Operator reduce_op;
        int factor;
        Expr pattern;
        const char *intrin;
        Target::Feature required_feature;
        std::vector<int> extra_operands;
    };
    // clang-format off
    static const Pattern patterns[] = {
        {VectorReduce::Add, 4, i32(widening_mul(wild_i8x_, wild_i8x_)), "dot_product", Target::ARMDotProd},
        {VectorReduce::Add, 4, i32(widening_mul(wild_u8x_, wild_u8x_)), "dot_product", Target::ARMDotProd},
        {VectorReduce::Add, 4, u32(widening_mul(wild_u8x_, wild_u8x_)), "dot_product", Target::ARMDotProd},
        // A sum is the same as a dot product with a vector of ones, and this appears to
        // be a bit faster.
        {VectorReduce::Add, 4, i32(wild_i8x_), "dot_product", Target::ARMDotProd, {1}},
        {VectorReduce::Add, 4, i32(wild_u8x_), "dot_product", Target::ARMDotProd, {1}},
        {VectorReduce::Add, 4, u32(wild_u8x_), "dot_product", Target::ARMDotProd, {1}},
    };
    // clang-format on

    int factor = op->value.type().lanes() / op->type.lanes();
    vector<Expr> matches;
    for (const Pattern &p : patterns) {
        if (op->op != p.reduce_op || factor % p.factor != 0) {
            continue;
        }
        if (!target.has_feature(p.required_feature)) {
            continue;
        }
        if (expr_match(p.pattern, op->value, matches)) {
            if (factor != p.factor) {
                Expr equiv = VectorReduce::make(op->op, op->value, op->value.type().lanes() / p.factor);
                equiv = VectorReduce::make(op->op, equiv, op->type.lanes());
                codegen_vector_reduce(equiv.as<VectorReduce>(), init);
                return;
            }

            for (int i : p.extra_operands) {
                matches.push_back(make_const(matches[0].type(), i));
            }

            Expr i = init;
            if (!i.defined()) {
                i = make_zero(op->type);
            }
            if (const Shuffle *s = matches[0].as<Shuffle>()) {
                if (s->is_broadcast()) {
                    // LLVM wants the broadcast as the second operand for the broadcasting
                    // variant of udot/sdot.
                    std::swap(matches[0], matches[1]);
                }
            }
            value = call_overloaded_intrin(op->type, p.intrin, {i, matches[0], matches[1]});
            if (value) {
                return;
            }
        }
    }

    // TODO: Move this to be patterns? The patterns are pretty trivial, but some
    // of the other logic is tricky.
    const char *intrin = nullptr;
    vector<Expr> intrin_args;
    Expr accumulator = init;
    if (op->op == VectorReduce::Add && factor == 2) {
        Type narrow_type = op->type.narrow().with_lanes(op->value.type().lanes());
        Expr narrow = lossless_cast(narrow_type, op->value);
        if (!narrow.defined() && op->type.is_int()) {
            // We can also safely accumulate from a uint into a
            // wider int, because the addition uses at most one
            // extra bit.
            narrow = lossless_cast(narrow_type.with_code(Type::UInt), op->value);
        }
        if (narrow.defined()) {
            if (init.defined() && target.bits == 32) {
                // On 32-bit, we have an intrinsic for widening add-accumulate.
                intrin = "pairwise_widening_add_accumulate";
                intrin_args = {accumulator, narrow};
                accumulator = Expr();
            } else {
                // On 64-bit, LLVM pattern matches widening add-accumulate if
                // we give it the widening add.
                intrin = "pairwise_widening_add";
                intrin_args = {narrow};
            }
        } else {
            intrin = "pairwise_add";
            intrin_args = {op->value};
        }
    } else if (op->op == VectorReduce::Min && factor == 2) {
        intrin = "pairwise_min";
        intrin_args = {op->value};
    } else if (op->op == VectorReduce::Max && factor == 2) {
        intrin = "pairwise_max";
        intrin_args = {op->value};
    }

    if (intrin) {
        value = call_overloaded_intrin(op->type, intrin, intrin_args);
        if (value) {
            if (accumulator.defined()) {
                // We still have an initial value to take care of
                string n = unique_name('t');
                sym_push(n, value);
                Expr v = Variable::make(accumulator.type(), n);
                switch (op->op) {
                case VectorReduce::Add:
                    accumulator += v;
                    break;
                case VectorReduce::Min:
                    accumulator = min(accumulator, v);
                    break;
                case VectorReduce::Max:
                    accumulator = max(accumulator, v);
                    break;
                default:
                    internal_error << "unreachable";
                }
                codegen(accumulator);
                sym_pop(n);
            }
            return;
        }
    }

    CodeGen_Posix::codegen_vector_reduce(op, init);
}

Type CodeGen_ARM::upgrade_type_for_arithmetic(const Type &t) const {
    if (is_float16_and_has_feature(t)) {
        return t;
    }
    return CodeGen_Posix::upgrade_type_for_arithmetic(t);
}

Type CodeGen_ARM::upgrade_type_for_argument_passing(const Type &t) const {
    if (is_float16_and_has_feature(t)) {
        return t;
    }
    return CodeGen_Posix::upgrade_type_for_argument_passing(t);
}

Type CodeGen_ARM::upgrade_type_for_storage(const Type &t) const {
    if (is_float16_and_has_feature(t)) {
        return t;
    }
    return CodeGen_Posix::upgrade_type_for_storage(t);
}

string CodeGen_ARM::mcpu() const {
    if (target.bits == 32) {
        if (target.has_feature(Target::ARMv7s)) {
            return "swift";
        } else {
            return "cortex-a9";
        }
    } else {
        if (target.os == Target::IOS) {
            return "cyclone";
        } else if (target.os == Target::OSX) {
            return "apple-a12";
        } else {
            return "generic";
        }
    }
}

string CodeGen_ARM::mattrs() const {
    if (target.bits == 32) {
        if (target.has_feature(Target::ARMv7s)) {
            return "+neon";
        }
        if (!target.has_feature(Target::NoNEON)) {
            return "+neon";
        } else {
            return "-neon";
        }
    } else {
        // TODO: Should Halide's SVE flags be 64-bit only?
        string arch_flags;
        string separator;
        if (target.has_feature(Target::SVE2)) {
            arch_flags = "+sve2";
            separator = ",";
        } else if (target.has_feature(Target::SVE)) {
            arch_flags = "+sve";
            separator = ",";
        }

        if (target.has_feature(Target::ARMv81a)) {
            arch_flags += separator + "+v8.1a";
            separator = ",";
        }

        if (target.has_feature(Target::ARMDotProd)) {
            arch_flags += separator + "+dotprod";
            separator = ",";
        }

        if (target.has_feature(Target::ARMFp16)) {
            arch_flags += separator + "+fullfp16";
            separator = ",";
        }

        if (target.os == Target::IOS || target.os == Target::OSX) {
            return arch_flags + separator + "+reserve-x18";
        } else {
            return arch_flags;
        }
    }
}

bool CodeGen_ARM::use_soft_float_abi() const {
    // One expects the flag is irrelevant on 64-bit, but we'll make the logic
    // exhaustive anyway. It is not clear the armv7s case is necessary either.
    return target.has_feature(Target::SoftFloatABI) ||
           (target.bits == 32 &&
            ((target.os == Target::Android) ||
             (target.os == Target::IOS && !target.has_feature(Target::ARMv7s))));
}

int CodeGen_ARM::native_vector_bits() const {
    return 128;
}

bool CodeGen_ARM::supports_call_as_float16(const Call *op) const {
    bool is_fp16_native = float16_native_funcs.find(op->name) != float16_native_funcs.end();
    bool is_fp16_transcendental = float16_transcendental_remapping.find(op->name) != float16_transcendental_remapping.end();
    return target.has_feature(Target::ARMFp16) && (is_fp16_native || is_fp16_transcendental);
}

std::string get_arm_scalar_type(const Type &type) {
    internal_assert(type.is_int_or_uint()) << "Rake has no non-integer types\n" << type << "\n";
    std::ostringstream oss;
    if (type.is_uint()) {
        oss << "u";
    }
    oss << "int" << type.bits();
    return oss.str();
}

std::string get_arm_arg_type(const Type &type, const bool use_t_type, const std::string prefix = "arm:") {
    if (type.lanes() == 1) {
        if (use_t_type) {
            return type_to_c_type(type, false);
        } else {
            return get_arm_scalar_type(type);
        }
    } else {
        std::string name = prefix;
        if (type.is_int()) {
            name += "i";
        } else if (type.is_uint()) {
            name += "u";
        } else {
            internal_assert(type.is_float()) << "don't recognize type: " << type << "\n";
            name += "f";
        }
        name += (std::to_string(type.bits()) + "x" + std::to_string(type.lanes()));
        return name;
    }
}

uint8_t get_n_args(const ArmIntrinsic &intrin) {
    uint8_t argc = 0;
    for (halide_type_t i : intrin.arg_types) {
        if (i.bits == 0) {
            break;
        }
        argc++;
    }
    if (intrin.flags & ArmIntrinsic::SplitArg0) {
        internal_assert(argc == 1) << "SplitArg0 with argc != 1: argc = " << argc << "\n";
        argc *= 2;
    }
    return argc;
}

std::string get_args_string(uint8_t argc) {
    if (argc == 1) {
        return "Vn";
    } else if (argc == 2) {
        return "Vn Vm";
    } else if (argc == 3) {
        // TODO: what comes after Vm?
        return "Vd Vn Vm";
    } else {
        internal_error << "Saw too many args for arm intrinsic: " << argc << "\n";
        return "";
    }
}

std::string get_args_destruct_string(uint8_t argc) {
    if (argc == 1) {
        return "destruct* ((interpret Vn))";
    } else if (argc == 2) {
        return "destruct* ((interpret Vn) (interpret Vm))";
    } else if (argc == 3) {
        // TODO: what comes after Vm?
        return "destruct* ((interpret Vd) (interpret Vn) (interpret Vm))";
    } else {
        internal_error << "Saw too many args for arm intrinsic: " << argc << "\n";
        return "";
    }
}

std::string make_default_match_str(uint8_t argc) {
    internal_assert(argc != 0);
    std::ostringstream os;
    os << "(";
    for (uint8_t i = 0; i < argc - 1; i++) {
        os << "_ ";
    }
    os << "_)";
    return os.str();
}

std::string get_type_casework(const ArmIntrinsic &intrin, uint8_t argc, const bool arg2_unsigned = false) {
    const bool halve_vec_args = (intrin.flags & ArmIntrinsic::SplitArg0);
    const bool double_vec_args = (intrin.flags & ArmIntrinsic::HalfWidth);
    std::string types_string = "(";
    if (halve_vec_args) {
        internal_assert(argc == 2);
        const int lanes = double_vec_args ? intrin.arg_types[0].lanes * 2 : intrin.arg_types[0].lanes;
        Type type = intrin.arg_types[0].with_lanes(lanes / 2);
        types_string += ("(" + get_arm_arg_type(type, true) + " v0) ");
        types_string += ("(" + get_arm_arg_type(type, true) + " v1)");
        internal_assert(!arg2_unsigned) << "HalfWidth and AllowUnsignedOp1 are not currently supported\n";
    } else {
        for (uint8_t i = 0; i < argc; i++) {
            const int lanes = (double_vec_args ? intrin.arg_types[i].lanes * 2 : intrin.arg_types[i].lanes);
            Type type = intrin.arg_types[i].with_lanes(lanes);
            if (arg2_unsigned && i == 1) {
                type = type.with_code(Type::UInt);
            }
            types_string += ("(" + get_arm_arg_type(type, true) + " v" + std::to_string(i) + ")");

            if (i != argc - 1) {
                types_string += " ";
            }
        }
    }
    types_string += ")";
    return types_string;
}

std::string get_type_casework(const ArmIntrinsic &intrin) {
    return get_type_casework(intrin, get_n_args(intrin));
}

std::string get_type_signature(const ArmIntrinsic &intrin, uint8_t argc, const bool arg2_unsigned = false) {
    const bool halve_vec_args = (intrin.flags & ArmIntrinsic::SplitArg0);
    const bool double_vec_args = (intrin.flags & ArmIntrinsic::HalfWidth);
    std::string types_string = "(instr-sig \'";
    types_string += get_arm_arg_type(intrin.ret_type, false, "");
    types_string += " (list ";
    if (halve_vec_args) {
        internal_assert(argc == 2);
        const int lanes = double_vec_args ? intrin.arg_types[0].lanes * 2 : intrin.arg_types[0].lanes;
        Type type = intrin.arg_types[0].with_lanes(lanes / 2);
        types_string += ("\'" + get_arm_arg_type(type, false, ""));
        types_string += (" \'" + get_arm_arg_type(type, false, ""));
        internal_assert(!arg2_unsigned) << "HalfWidth and AllowUnsignedOp1 are not currently supported\n";
    } else {
        for (uint8_t i = 0; i < argc; i++) {
            const int lanes = (double_vec_args ? intrin.arg_types[i].lanes * 2 : intrin.arg_types[i].lanes);
            Type type = intrin.arg_types[i].with_lanes(lanes);
            if (arg2_unsigned && i == 1) {
                type = type.with_code(Type::UInt);
            }
            types_string += ("\'" + get_arm_arg_type(type, false, ""));

            if (i != argc - 1) {
                types_string += " ";
            }
        }
    }
    types_string += "))";
    return types_string;
}

std::string get_type_signature(const ArmIntrinsic &intrin) {
    return get_type_signature(intrin, get_n_args(intrin));
}

std::string make_transform_string(const std::string &name, const uint8_t argc) {
    std::string arg_string;
    if (argc == 1) {
        arg_string = "(visit Vn transform)";
    } else if (argc == 2) {
        arg_string = "(visit Vn transform) (visit Vm transform)";
    } else if (argc == 3) {
        // TODO: what comes after Vm?
        arg_string = "(visit Vd transform) (visit Vn transform) (visit Vm transform)";
    } else {
        internal_error << "Saw too many args for arm intrinsic: " << argc << "\n";
    }
    return "(transform (arm:" + name + " " + arg_string + "))";
}

std::string make_max_unique_string(const std::string &name, const uint8_t argc) {
    std::string arg_string;
    if (argc == 1) {
        arg_string = "(max-unique-inputs Vn)";
    } else if (argc == 2) {
        arg_string = "(+ (max-unique-inputs Vn) (max-unique-inputs Vm))";
    } else if (argc == 3) {
        // TODO: what comes after Vm?
        arg_string = "(+ (max-unique-inputs Vd) (max-unique-inputs Vn) (max-unique-inputs Vm))";
    } else {
        internal_error << "Saw too many args for arm intrinsic: " << argc << "\n";
    }
    return arg_string;
}

Expr get_lowered_variable(const Type &t, uint8_t &argc) {
    const std::string name = "v" + std::to_string(argc++);
    Expr ret = Variable::make(t, name);
    if (t.is_scalar()) {
        // Annotate the scalar value with the type.
        ret = Call::make(t, get_arm_arg_type(t, true), std::vector<Expr>{ret}, Call::PureIntrinsic);
    } 
    return ret;
}

Expr lower_arm_intrinsic(const ArmIntrinsic &intrin, const bool arg2_unsigned = false) {
    bool double_vec_len = (intrin.flags & ArmIntrinsic::HalfWidth);

    std::vector<Expr> args;
    uint8_t argc = 0;
    for (halide_type_t i : intrin.arg_types) {
        if (i.bits == 0) {
            break;
        }
        if (intrin.flags & ArmIntrinsic::SplitArg0) {
            Type half_type = i.with_lanes((double_vec_len ? i.lanes * 2 : i.lanes) / 2);
            args.emplace_back(get_lowered_variable(half_type, argc));
            args.emplace_back(get_lowered_variable(half_type, argc));
            internal_assert(!arg2_unsigned) << "HalfWidth and AllowUnsignedOp1 are not currently supported\n";
        } else {
            Type type = i.with_lanes(double_vec_len ? i.lanes * 2 : i.lanes);
            if (arg2_unsigned && argc == 1) {
                type = type.with_code(Type::UInt);
            }
            args.emplace_back(get_lowered_variable(type, argc));
        }
    }
    std::string intrin_name = intrin.name;
    int output_lanes = (double_vec_len ? intrin.ret_type.lanes * 2 : intrin.ret_type.lanes);
    Type ret_type = intrin.ret_type.with_lanes(output_lanes);
    Expr call = Call::make(ret_type, intrin_name, args, Call::PureIntrinsic);
    Expr lowered_intrin = lower_arm_intrinsics(call);

    // Interpret the lowered intrinsic
    Expr out_vec = Call::make(ret_type, "halide:interpret", std::vector<Expr>{lowered_intrin}, Call::PureIntrinsic);

    // Annotate the computed vector with ARM A64 vector types
    Expr typed_vec = Call::make(ret_type, get_arm_arg_type(ret_type, true), std::vector<Expr>{out_vec}, Call::PureIntrinsic);

    return typed_vec;
}

bool is_fp_intrin(const ArmIntrinsic &intrin) {
    if (Type(intrin.ret_type).is_float()) {
        return true;
    }
    for (halide_type_t i : intrin.arg_types) {
        if (i.bits == 0) {
            break;
        }
        Type t = i;
        if (t.is_float()) {
            return true;
        }
    }
    return false;
}

}  // namespace

void generate_arm_interpreter() {
    /* Auto-generating the type declerations (file rake/arm/ast/types.rkt) */

    // Step 0: Define vector types in Rake (rake/arm/ast/types).
    // Since theres a small number of possible vector combinations we can just
    // hardcode this.
    // Using: https://developer.arm.com/documentation/dui0472/k/Using-NEON-Support/Vector-data-types
    // TODO: What are the polyXxX_t types?
    // Also, are these all? the link seems to suggest this is only for NEON?
    /*
        int8x8_t	int8x16_t
        int16x4_t	int16x8_t
        int32x2_t	int32x4_t
        int64x1_t	int64x2_t
        uint8x8_t	uint8x16_t
        uint16x4_t	uint16x8_t
        uint32x2_t	uint32x4_t
        uint64x1_t	uint64x2_t
        float16x4_t	float16x8_t
        float32x2_t	float32x4_t
        poly8x8_t	poly8x16_t
        poly16x4_t	poly16x8_t
    */
    debug(0) << ";; ARM A64 vector types\n";
    const std::string type_names[] = {"i", "u"};
    const std::string a32_vector_widths[] = {"8x8", "16x4", "32x2", "64x1"};
    const std::string a64_vector_widths[] = {"8x16", "16x8","32x4", "64x2"};
    const std::string logical_vector_widths[] = {"8x32", "16x16", "32x8", "64x4", "8x4"};

    for (const std::string &type_name : type_names) {
        for (const std::string &vector_width : a32_vector_widths) {
            debug(0) << "(struct " << type_name << vector_width << " (Vn) #:transparent)\n";
        }
        for (const std::string &vector_width : a64_vector_widths) {
            debug(0) << "(struct " << type_name << vector_width << " (Vn) #:transparent)\n";
        }
        for (const std::string &vector_width : logical_vector_widths) {
            debug(0) << "(struct " << type_name << vector_width << " (Vn) #:transparent)\n";
        }
    }

    debug(0) << "\n";

    // Step 1: Define instruction types. For each instruction, spit out a struct
    // of the same name that takes the same number of arguments (plus any metainfo)
    // that you think would be useful/needed.
    // For arg names, you could use any naming convention but I find it helpful to
    // follow the same naming convention as used in the ISA documentation (for arm
    // i think thats Vn, Vm,...).
    debug(0) << ";; ARM A64 vector intrinsics\n";
    std::set<std::string> printed_intrinsics;
    for (const ArmIntrinsic &intrin : intrinsic_defs) {
        // debug(0) << "(struct name (args) #:transparent)" << "\n";
        const char *intrin_name = intrin.arm64; // Use A64 names
        if (intrin_name == nullptr) {
            continue;   // Ignore A32 only intrinsics
        } else if (is_fp_intrin(intrin)) {
            continue;   // Ignore floating point intrinsics
        } else if (printed_intrinsics.count(intrin_name) > 0) {
            continue;   // Ignore previously printed intrinsics
        } else {
            printed_intrinsics.insert(intrin_name);
        }
        const uint8_t argc = get_n_args(intrin);
        
        std::stringstream intrin_decl, intrin_desc;
        intrin_decl << "(struct " << intrin_name << " "
                    << "(" << get_args_string(argc) << ") #:transparent)";
        intrin_desc << ";; " << intrin.name << "\n";
        
        debug(0) << std::setw(60) << std::left << intrin_decl.str()
                 << intrin_desc.str();
    }

    debug(0) << "\n";

    /* Auto-generating the interpreter skeleton (file rake/arm/interpreter.rkt) */

    // The interpreter function is just a giant destruct operation (the Rosette
    // equivalent of Racket's "match"). You can look at the hvx interpreter as a
    // reference. We need to generate all the match cases, ideally we auto-generate
    // something that ensures arguments are of the correct type -- for HVX this was done
    // by having a match case for each instruction type and then a nested matcher for each
    // signature.

    std::map<std::string, std::pair<int, int>> intrinsic_ranges;
    int current_index = 0;
    for (const ArmIntrinsic &intrin : intrinsic_defs) {
        // this assumes that a name is only safely repeated in a single range.
        const char *intrin_name = intrin.arm64;  // Use A64 names
        if (intrin_name == nullptr || is_fp_intrin(intrin)) {
            current_index++;
            continue;
        }
        const std::string name = intrin_name;
        auto iter = intrinsic_ranges.find(name);
        if (iter != intrinsic_ranges.end()) {
            iter->second.second++;
            internal_assert(iter->second.second == current_index) << "Arm intrinsic not contained in single range: " << name << "\n";
        } else {
            intrinsic_ranges[name] = {current_index, current_index};
        }
        current_index++;
    }

    std::ostringstream interp;

    interp << ";; ARM A64 interpreter\n"
           << "(define (interpret p)\n"
           << "  (destruct p\n\n"
           << "    ;;;;;;;;;;;;;;;;;;;; Scalar Halide Expressions ;;;;;;;;;;;;;;;;;;;;;\n\n"
           << "    [(var-lookup var val) (interpret val)]\n\n"
           << "    [(sca-cast sca type) (cpp:cast (interpret sca) type)]\n\n"
           << "    [(sca-add v1 v2) (halide:do-add (interpret v1) (interpret v2))]\n"
           << "    [(sca-sub v1 v2) (halide:do-sub (interpret v1) (interpret v2))]\n"
           << "    [(sca-mul v1 v2) (halide:do-mul (interpret v1) (interpret v2))]\n"
           << "    [(sca-div v1 v2) (halide:do-div (interpret v1) (interpret v2))]\n"
           << "    [(sca-mod v1 v2) (halide:do-mod (interpret v1) (interpret v2))]\n"
           << "    [(sca-min v1 v2) (halide:do-min (interpret v1) (interpret v2))]\n"
           << "    [(sca-max v1 v2) (halide:do-max (interpret v1) (interpret v2))]\n\n"
           << "    [(sca-if v1 v2 v3) (halide:do-if (interpret v1) (interpret v2) (interpret v3))]\n"
           << "    [(sca-eq v1 v2) (halide:do-eq (interpret v1) (interpret v2))]\n"
           << "    [(sca-lt v1 v2) (halide:do-lt (interpret v1) (interpret v2))]\n"
           << "    [(sca-le v1 v2) (halide:do-le (interpret v1) (interpret v2))]\n\n"
           << "    [(sca-abs v1) (halide:do-abs (interpret v1))]\n"
           << "    [(sca-absd v1 v2) (halide:do-absd (interpret v1) (interpret v2))]\n"
           << "    [(sca-shl v1 v2) (halide:do-shl (interpret v1) (interpret v2))]\n"
           << "    [(sca-shr v1 v2) (halide:do-shr (interpret v1) (interpret v2))]\n"
           << "    [(sca-clz v1) (halide:do-clz (interpret v1))]\n\n"
           << "    [(sca-bwand v1 v2) (halide:do-bwand (interpret v1) (interpret v2))]\n\n"
           << "    [(load-sca buf idx) (halide:buffer-ref (interpret buf) (interpret idx))]\n\n"
           << "    ;;;;;;;;;;;;;;\n\n";

    const std::string prefix = "arm:";

    std::ostringstream type_signatures;
    type_signatures << "(define (instr-forms instr)\n  (cond\n";
    const std::string type_tabs = "                         ";
    std::ostringstream visitor_method;
    visitor_method << "(define (visit expr transform [arg-pos -1])\n  (match expr";
    std::ostringstream max_unique_inputs;
    max_unique_inputs << "(define (max-unique-inputs expr)\n  (destruct expr\n\n    [(arm:??load _ _ _ _ _) 1]\n    [(arm:??shuffle _ _ _) 1]\n    [(arm:??swizzle _ _ _ _) 1]\n    [(arm:reinterpret Vn) (max-unique-inputs Vn)]\n\n";


    for (const auto &intrinsic_range : intrinsic_ranges) {
        // debug(0) << "[(name arg0 arg1 ...) (void)] ;; body not yet generated" << "\n";
        const std::string &name = intrinsic_range.first;
        const ArmIntrinsic &first_intrin = intrinsic_defs[intrinsic_range.second.first]; // For arg purposes.
        const uint8_t argc = get_n_args(first_intrin);
        // assumes all intrinsics with the same name have the same number of arguments.

        internal_assert(name == first_intrin.arm64);
        interp << "\n    [(" << prefix + name << " " << get_args_string(argc) << ")\n";
        const std::string destruct_code = get_args_destruct_string(argc);
        interp << "      (" << destruct_code;

        type_signatures << "    [(eq? " << name << " instr) (list\n";

        visitor_method << "\n    [(arm:" << name << " " << get_args_string(argc) << ") " << make_transform_string(name, argc) << "]\n";

        max_unique_inputs << "    [(arm:" << name << " " << get_args_string(argc) << ") " << make_max_unique_string(name, argc) << "]\n";

        for (int i = intrinsic_range.second.first; i <= intrinsic_range.second.second; i++) {
            const ArmIntrinsic &intrin = intrinsic_defs[i];
            internal_assert(intrin.arm64 != nullptr) << "Let's try arm32: " << intrin.arm32 << "\n";
            if (is_fp_intrin(intrin)) {
                continue; // this could produce an empty destruct body, right?
            }

            const uint8_t intrin_argc = get_n_args(intrin);
            internal_assert(intrin_argc == argc) << "intrinsic inconsistent with arg count: " << name << "\n" << (int)intrin_argc << " vs. " << (int)argc << "\n";
            const std::string type_matching = get_type_casework(intrin, argc);
            const Expr lowered_expr = lower_arm_intrinsic(intrin);
            const std::string lowered_str = expr_to_racket(lowered_expr, 10);

            type_signatures << type_tabs << get_type_signature(intrin, argc) << "\n";

            interp << "\n        [" << type_matching << "\n" << lowered_str << "]";

            if (intrin.flags & ArmIntrinsic::AllowUnsignedOp1) {
                // Lower the second version with an unsigned second argument.
                const std::string type_matching = get_type_casework(intrin, argc, true);
                const Expr lowered_expr = lower_arm_intrinsic(intrin, true);
                const std::string lowered_str = expr_to_racket(lowered_expr, 10);

                interp << "\n        [" << type_matching << "\n" << lowered_str << "]";

                type_signatures << type_tabs << get_type_signature(intrin, argc, true) << "\n";
            }
        }

        interp << "\n        [" << make_default_match_str(argc) << " (assert #f \"infeasible\")])]\n";

        type_signatures << type_tabs << ")]\n\n";
        // debug(0) << "\n      )]\n";
    }

    // Add the abstract load/shuffle code to the interpreter.
    interp << "    [(arm:??shuffle id loads output-type)\n"
           << "      (let ([vecType (arm:get-type-struct output-type)]\n"
           << "            [interpreted-loads (map interpret loads)])\n"
           << "        (define (shuffle-body i)\n"
           << "          (apply choose* (filter (lambda (r) (not (void? r)) (map (curryr arm:get-element i) interpreted-loads)))))\n"
           << "        (vecType shuffle-body))]\n\n";

    interp << "    [(arm:??load id live-data buffer idx-tbl output-type)\n"
           << "      (let ([data (buffer-data buffer)]\n"
           << "            [vecType (arm:get-type-struct output-type)])\n"
           << "        ; TODO: understand what the heck this is doing...\n"
           << "        (define (is-of-buffer? read)\n"
           << "          (rs-match (cpp:eval read)\n"
           << "            [(expression (== @app) xs ...) (equal? (list-ref xs 0) data)]\n"
           << "            [_ #f]))\n\n"
           << "        (define (filter-reads reads)\n"
           << "          (filter is-of-buffer? reads))\n\n"
           << "        (define filtered-reads (map filter-reads live-data))\n\n"
           << "        (define read-history (make-hash))\n\n"
           << "        (define (load-body i)\n"
           << "          (let ([data (list-ref filtered-reads curr-cn)])\n"
           << "            (if (empty? data)\n"
           << "              (void)\n"
           << "              (hash-ref! read-history i (apply choose* data)))))\n\n"
           << "      (vecType load-body))]\n\n";

    interp << "    [(arm:reinterpret Vn)\n"
           << "      (destruct (interpret Vn)\n"
           << "        [(arm:i8x8 v0) (arm:u8x8 (lambda (i) (uint8_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:i16x4 v0) (arm:u16x4 (lambda (i) (uint16_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:i32x2 v0) (arm:u32x2 (lambda (i) (uint32_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:i64x1 v0) (arm:u64x1 (lambda (i) (uint64_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:i8x16 v0) (arm:u8x16 (lambda (i) (uint8_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:i16x8 v0) (arm:u16x8 (lambda (i) (uint16_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:i32x4 v0) (arm:u32x4 (lambda (i) (uint32_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:i64x2 v0) (arm:u64x2 (lambda (i) (uint64_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:i8x32 v0) (arm:u8x32 (lambda (i) (uint8_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:i16x16 v0) (arm:u16x16 (lambda (i) (uint16_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:i32x8 v0) (arm:u32x8 (lambda (i) (uint32_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:i64x4 v0) (arm:u64x4 (lambda (i) (uint64_t (cpp:eval (v0 i)))))]\n\n"
           << "        [(arm:u8x8 v0) (arm:i8x8 (lambda (i) (int8_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:u16x4 v0) (arm:i16x4 (lambda (i) (int16_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:u32x2 v0) (arm:i32x2 (lambda (i) (int32_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:u64x1 v0) (arm:i64x1 (lambda (i) (int64_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:u8x16 v0) (arm:i8x16 (lambda (i) (int8_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:u16x8 v0) (arm:i16x8 (lambda (i) (int16_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:u32x4 v0) (arm:i32x4 (lambda (i) (int32_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:u64x2 v0) (arm:i64x2 (lambda (i) (int64_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:u8x32 v0) (arm:i8x32 (lambda (i) (int8_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:u16x16 v0) (arm:i16x16 (lambda (i) (int16_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:u32x8 v0) (arm:i32x8 (lambda (i) (int32_t (cpp:eval (v0 i)))))]\n"
           << "        [(arm:u64x4 v0) (arm:i64x4 (lambda (i) (int64_t (cpp:eval (v0 i)))))])]\n\n";

    interp << "\n    [_ p]))\n\n";

    type_signatures << "    [(eq? reinterpret instr) (list\n";
    type_signatures << "                         (instr-sig 'i8x8 (list 'u8x8))\n";
    type_signatures << "                         (instr-sig 'i16x4 (list 'u16x4))\n";
    type_signatures << "                         (instr-sig 'i32x2 (list 'u32x2))\n";
    type_signatures << "                         (instr-sig 'i64x1 (list 'u64x1))\n";
    type_signatures << "                         (instr-sig 'i8x16 (list 'u8x16))\n";
    type_signatures << "                         (instr-sig 'i16x8 (list 'u16x8))\n";
    type_signatures << "                         (instr-sig 'i32x4 (list 'u32x4))\n";
    type_signatures << "                         (instr-sig 'i64x2 (list 'u64x2))\n";
    type_signatures << "                         (instr-sig 'i8x32 (list 'u8x32))\n";
    type_signatures << "                         (instr-sig 'i16x16 (list 'u16x16))\n";
    type_signatures << "                         (instr-sig 'i32x8 (list 'u32x8))\n";
    type_signatures << "                         (instr-sig 'i64x4 (list 'u64x4))\n";
    type_signatures << "                         (instr-sig 'u8x8 (list 'i8x8))\n";
    type_signatures << "                         (instr-sig 'u16x4 (list 'i16x4))\n";
    type_signatures << "                         (instr-sig 'u32x2 (list 'i32x2))\n";
    type_signatures << "                         (instr-sig 'u64x1 (list 'i64x1))\n";
    type_signatures << "                         (instr-sig 'u8x16 (list 'i8x16))\n";
    type_signatures << "                         (instr-sig 'u16x8 (list 'i16x8))\n";
    type_signatures << "                         (instr-sig 'u32x4 (list 'i32x4))\n";
    type_signatures << "                         (instr-sig 'u64x2 (list 'i64x2))\n";
    type_signatures << "                         (instr-sig 'u8x32 (list 'i8x32))\n";
    type_signatures << "                         (instr-sig 'u16x16 (list 'i16x16))\n";
    type_signatures << "                         (instr-sig 'u32x8 (list 'i32x8))\n";
    type_signatures << "                         (instr-sig 'u64x4 (list 'i64x4))\n";
    type_signatures << "                         )]\n";

    type_signatures << "\n    [else (error \"Unknown instruction:\" instr)]))\n\n";

    debug(0) << "\n\n" << type_signatures.str();

    debug(0) << "\n\n" << interp.str();

    visitor_method << "\n    [(arm:??load id live-data buffer idx-tbl output-type) (transform (arm:??load id live-data (visit buffer transform) idx-tbl output-type) arg-pos)]\n    [(arm:??shuffle id lds output-type) (transform (arm:??shuffle id (for/list ([ld lds]) (visit ld transform)) output-type))]\n    [(arm:??swizzle id live-data exprs idx-tbl) (transform (arm:??swizzle id live-data (for/list ([expr exprs]) (visit expr transform)) idx-tbl))]\n    [(arm:reinterpret Vn) (transform (arm:reinterpret (visit Vn transform)))]\n\n    [_ (transform expr)]))";

    debug(0) << "\n\n" << visitor_method.str();

    max_unique_inputs << "\n\n    [_ (cond\n        ;; TODO: What if the scalar was the result of a reduction?\n        [(eq? 'uint8 expr) 0]\n        [(eq? 'int8 expr) 0]\n        [(eq? 'uint16 expr) 0]\n        [(eq? 'int16 expr) 0]\n        [(eq? 'uint32 expr) 0]\n        [(eq? 'int32 expr) 0]\n        [(eq? 'uint64 expr) 0]\n        [(eq? 'int64 expr) 0]\n        [else (error (format \"max-unique-inputs failed to recognize ~a\" expr))])]))\n";

    debug(0) << "\n\n" << max_unique_inputs.str();

    // Then, we can start generating the bodies of each match case. First we need to somehow
    // generate placeholder variables of the input types. We can then use the variables to
    // construct the call to the corresponding Halide intrinsic (ex: vpaddls --> pairwise_widening_add).
    // We can lower this using FindIntrinsics in Halide and once we have the lowered expression, 
    // we can use the Racket::ExprPrinter found in HexagonOptimize to get the racket code string.
    
    // TODO: Code reorganization. Now that we have multiple targets, maybe move the 
    // re-used code outside hexagonoptimize file. Even this function could be moved outside of
    // CodeGen_ARM and into the Rosette.h/cpp files I created.

    // TODO: The way FindIntrinsics lowers each op may not be ideal for formal reasoning. There
    // may be cases where we can change those functions to lower into simpler code since performance
    // is no longer a concern. But these changes must be tested/confirmed correct.
}

void CodeGen_ARM::compile_func(const LoweredFunc &f, const std::string &simple_name,
                                const std::string &extern_name) {
    // Generate the function declaration and argument unpacking code.
    begin_func(f.linkage, simple_name, extern_name, f.args);

    // If building with MSAN, ensure that calls to halide_msan_annotate_buffer_is_initialized()
    // happen for every output buffer if the function succeeds.
    if (f.linkage != LinkageType::Internal &&
        target.has_feature(Target::MSAN)) {
        llvm::Function *annotate_buffer_fn =
            module->getFunction("halide_msan_annotate_buffer_is_initialized_as_destructor");
        internal_assert(annotate_buffer_fn)
            << "Could not find halide_msan_annotate_buffer_is_initialized_as_destructor in module\n";
        annotate_buffer_fn->addParamAttr(0, Attribute::NoAlias);
        for (const auto &arg : f.args) {
            if (arg.kind == Argument::OutputBuffer) {
                register_destructor(annotate_buffer_fn, sym_get(arg.name + ".buffer"), OnSuccess);
            }
        }
    }

    // Generate the function body.
    debug(1) << "Generating llvm bitcode for function " << f.name << "...\n";
    
    Stmt body = f.body;
    body = optimize_arm_instructions_synthesis(body, target, this->func_value_bounds);
    body.accept(this);

    // Clean up and return.
    end_func(f.args);
}

std::unique_ptr<CodeGen_Posix> new_CodeGen_ARM(const Target &target) {
    return std::make_unique<CodeGen_ARM>(target);
}

#else  // WITH_ARM || WITH_AARCH64

std::unique_ptr<CodeGen_Posix> new_CodeGen_ARM(const Target &target) {
    user_error << "ARM not enabled for this build of Halide.\n";
    return nullptr;
}

#endif  // WITH_ARM || WITH_AARCH64

}  // namespace Internal
}  // namespace Halide
