#include "common.h"
#include <Halide.h>

using Halide::Generator;
using Halide::RVar;
using Halide::ConciseCasts::i32;
using Halide::ConciseCasts::u16;
using Halide::ConciseCasts::u32;
using Halide::ConciseCasts::u8_sat;

class MatrixMultiply : public Generator<MatrixMultiply> {
public:
    // Two unsigned 8-bit input matrices, indexed by x, y.
    Input<Buffer<uint8_t>> mat_a_{"mat_a", 2};
    Input<Buffer<uint8_t>> mat_b_{"mat_b", 2};

    // A 1D array of 32-bit biases indexed by output width.
    Input<Buffer<int32_t>> bias_{"bias", 1};

    // Offsets and multipliers for the input, filter, and output.
    Input<int16_t> mat_a_offset_{"mat_a_offset", 0, -255, 0};
    Input<int16_t> mat_b_offset_{"mat_b_offset", 0, -255, 0};
    Input<int> output_multiplier_{"output_multiplier"};
    Input<int> output_shift_{"output_shift"};
    Input<int> output_offset_{"output_offset", 0, 0, 255};
    Input<uint8_t> output_min_{"output_min"};
    Input<uint8_t> output_max_{"output_max"};

    Output<Buffer<uint8_t>> output_{"output", 2};

    void generate() {
        // We take two 8 bit matrices as input.
        Var x("x"), y("y");

        Func matrix_mul("matrix_mul");

        RDom k(0, matrix_size);
        RVar ki;

        matrix_mul(x, y) = 0.0f;
        matrix_mul(x, y) += A(k, y) * B(x, k);

        // Schedule
        Var xi("xi"), xo("xo"), yo("yo"), yi("yo"), yii("yii"), xii("xii");

        matrix_mul.vectorize(x, 8);

        matrix_mul.update(0)
            .split(x, x, xi, block_size).split(xi, xi, xii, 8)
            .split(y, y, yi, block_size).split(yi, yi, yii, 4)
            .split(k, k, ki, block_size)
            .reorder(xii, yii, xi, ki, yi, k, x, y)
            .parallel(y).vectorize(xii).unroll(xi).unroll(yii);

        matrix_mul
            .bound(x, 0, matrix_size)
            .bound(y, 0, matrix_size);
    }
};

HALIDE_REGISTER_GENERATOR(MatrixMultiply, MatrixMultiply)