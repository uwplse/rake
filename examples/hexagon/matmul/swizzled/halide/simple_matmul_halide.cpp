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
    Input<Buffer<uint8_t>> mat_a_{"mat_a", 2};
    Input<Buffer<uint8_t>> mat_b_{"mat_b", 2};
    Output<Buffer<uint8_t>> output_{"output", 2};

    void generate() {
        // We take two 8 bit matrices as input.
        Var x("x"), y("y");

        // Align the extent of the k dimension to the unroll factor used in the
        // reduction. Unrolling there is needed to use the vrmpy instruction on
        // Hexagon.
        constexpr int kDotProductUnrollFactor = 4;
        Expr k_extent = mat_a_.dim(0).extent();
        k_extent =
            (k_extent / (kDotProductUnrollFactor)) * (kDotProductUnrollFactor);
        mat_a_.dim(0).set_extent(k_extent);
        mat_b_.dim(1).set_extent(k_extent);

        // We split directly in the algorithm by a factor of 4
        // (== kDotProductUnrollFactor), so we can generate vrmpy instructions on
        // Hexagon.
        RDom rk(0, k_extent / kDotProductUnrollFactor, "k");

        // Define the reordering of mat_b_ as a separate stage so we can lift
        // the interleaving required by vrmpy out of the inner loop.
        Func mat_b_swizzled("mat_b_swizzled");
        Var k("k");
        mat_b_swizzled(x, y, k) = mat_b_(x, 4 * y + k);

        Func multiplied("multiplied");
        multiplied(x, y) = u32(0);
        multiplied(x, y) +=
            u32(u16(mat_a_(4 * rk + 0, y)) * u16(mat_b_swizzled(x, rk, 0))) +
            u32(u16(mat_a_(4 * rk + 1, y)) * u16(mat_b_swizzled(x, rk, 1))) +
            u32(u16(mat_a_(4 * rk + 2, y)) * u16(mat_b_swizzled(x, rk, 2))) +
            u32(u16(mat_a_(4 * rk + 3, y)) * u16(mat_b_swizzled(x, rk, 3)));

        output_(x, y) = u8_sat(multiplied(x, y));

        //***** Schedule *****//
        int vector_size_u8 = natural_vector_size<uint8_t>();
        int vector_size_u32 = natural_vector_size<uint32_t>();
        bool use_hexagon = false;
        if (get_target().has_feature(Halide::Target::HVX_64)) {
            vector_size_u8 = 64;
            vector_size_u32 = 16;
            use_hexagon = true;
        } else if (get_target().has_feature(Halide::Target::HVX_128)) {
            vector_size_u8 = 128;
            vector_size_u32 = 32;
            use_hexagon = true;
        }

        // Specifying .hexagon() on a Func will generate an RPC to run this stage
        // on Hexagon. If Hexagon is the host (that is, the architecture is
        // Hexagon), we have to omit the .hexagon() directive as we are already
        // running on Hexagon.
        if (use_hexagon && get_target().arch != Target::Hexagon) {
            output_.hexagon();
        }

        constexpr int kTileSizeHeight = 4;
        if (use_hexagon) {
            Var xo("xo"), yo("yo");

            // Split the output into tiles, traversed in columns of tiles
            // that we parallelize over.
            output_.compute_root()
                .tile(x, y, xo, yo, x, y, vector_size_u8, kTileSizeHeight,
                      TailStrategy::RoundUp)
                .reorder(yo, xo)
                .prefetch(mat_a_, yo)
                .vectorize(x)
                .unroll(y)
                .parallel(xo);

            // Compute the product at tiles of the output.
            multiplied.compute_at(output_, yo).vectorize(x).unroll(y);

            multiplied.update(0).reorder(x, y, rk).vectorize(x).unroll(y);

            // Lift the swizzling out of the inner loop.
            mat_b_swizzled.compute_at(output_, xo)
                .reorder_storage(k, x, y)
                .reorder(k, x, y)
                .vectorize(x)
                .unroll(k);

        }

        constexpr int kMatAHeightAlign = kTileSizeHeight;
        int vector_dim_align = vector_size_u8;

        mat_a_.dim(0)
            .set_bounds(0, mat_a_.dim(0).extent())
            .dim(1)
            .set_bounds(0, (mat_a_.dim(1).extent() / kMatAHeightAlign) * kMatAHeightAlign)
            .set_stride((mat_a_.dim(1).stride() / kMatAHeightAlign) *
                        kMatAHeightAlign);

        mat_b_.dim(0)
            .set_bounds(0, (mat_b_.dim(0).extent() / vector_dim_align) * vector_dim_align)
            .dim(1)
            .set_bounds(0, mat_b_.dim(1).extent())
            .set_stride(mat_b_.dim(1).stride());

        output_.dim(0)
            .set_bounds(0, (output_.dim(0).extent() / vector_dim_align) * vector_dim_align)
            .dim(1)
            .set_bounds(0, (output_.dim(1).extent() / kMatAHeightAlign) * kMatAHeightAlign)
            .set_stride((output_.dim(1).stride() / kMatAHeightAlign) * kMatAHeightAlign);
    }
};

HALIDE_REGISTER_GENERATOR(MatrixMultiply, MatrixMultiply)