#include <Halide.h>

using Halide::Generator;
using Halide::RVar;
using Halide::ConciseCasts::u8;
using Halide::ConciseCasts::u8_sat;

class MatrixMultiply : public Generator<MatrixMultiply> {
public:
    // Two unsigned 8-bit input matrices, indexed by x, y.
    Input<Buffer<uint8_t>> mat_a{"mat_a", 2};
    Input<Buffer<uint8_t>> mat_b{"mat_b", 2};
    Output<Buffer<uint8_t>> output{"output", 2};

    const int matrix_size = 992, block_size = 32;

    void generate() {
        // Specification
        Var x("x"), y("y");

        RDom k(0, mat_a.width());

        Func matrix_mul("matrix_mul");
        matrix_mul(x, y) = 0;
        matrix_mul(x, y) += mat_a(k, y) * mat_b(x, k);

        output(x, y) = cast<uint8_t>(clamp(matrix_mul(x, y), 0, 255));
    }

    void schedule() {
        Var xi{"xi"}, yi{"yi"};

        mat_a.dim(0).set_min(0);
        mat_a.dim(1).set_min(0);
        mat_b.dim(0).set_min(0);
        mat_b.dim(1).set_min(0);

        if (get_target().features_any_of({Target::HVX_64, Target::HVX_128})) {
            const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;
            output
                .hexagon()
                .tile(x, y, xi, yi, vector_size, 4, TailStrategy::RoundUp)
                .vectorize(xi)
                .unroll(yi);
        }
    }

private:
    Var x{"x"}, y{"y"};
    Func matrix_mul{"matrix_mul"};
};

HALIDE_REGISTER_GENERATOR(MatrixMultiply, MatrixMultiply)