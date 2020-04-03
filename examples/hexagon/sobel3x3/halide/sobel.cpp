/* 
 * Applies the sobel operator to the input image using the following
 * two 3x3 kernels:
 *
 * --------------    ----------------
 * | 1 | 0 | -1 |    |  1 |  2 |  1 |
 * --------------    ----------------
 * | 2 | 0 | -2 |    |  0 |  0 |  0 |
 * --------------    ----------------
 * | 1 | 0 | -1 |    | -1 | -2 | -1 |
 * --------------    ----------------
 */

// arm v84 (mm, dp, sve https://community.arm.com/developer/tools-software/hpc/b/hpc-blog/posts/technology-update-the-scalable-vector-extension-sve-for-the-armv8-a-architecture)

#include "Halide.h"

using namespace Halide;

class Sobel : public Generator<Sobel> {
public:
    Input<Buffer<uint8_t>> input{"input", 2};
    Output<Buffer<uint8_t>> output{"output", 2};

    GeneratorParam<bool> use_parallel_sched{"use_parallel_sched", true};
    GeneratorParam<bool> use_prefetch_sched{"use_prefetch_sched", true};

    void generate() {
        bounded_input(x, y) = BoundaryConditions::repeat_edge(input)(x, y);

        Func input_16{"input_16"};
        input_16(x, y) = cast<uint16_t>(bounded_input(x, y));

        sobel_x_avg(x, y) = input_16(x - 1, y) + 2 * input_16(x, y) + input_16(x + 1, y);
        sobel_x(x, y) = absd(sobel_x_avg(x, y - 1), sobel_x_avg(x, y + 1));

        sobel_y_avg(x, y) = input_16(x, y - 1) + 2 * input_16(x, y) + input_16(x, y + 1);
        sobel_y(x, y) = absd(sobel_y_avg(x - 1, y), sobel_y_avg(x + 1, y));

        // This sobel implementation is non-standard in that it doesn't take the square root
        // of the gradient.
        output(x, y) = cast<uint8_t>(clamp(sobel_x(x, y) + sobel_y(x, y), 0, 255));
    }

    void schedule() {
        Var xi{"xi"}, yi{"yi"};

        input.dim(0).set_min(0);
        input.dim(1).set_min(0);

        if (get_target().features_any_of({Target::HVX_64, Target::HVX_128})) {
            const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;
            Expr input_stride = input.dim(1).stride();
            input.dim(1).set_stride((input_stride / vector_size) * vector_size);

            Expr output_stride = output.dim(1).stride();
            output.dim(1).set_stride((output_stride / vector_size) * vector_size);
            bounded_input
                .compute_at(Func(output), y)
                .align_storage(x, 128)
                .vectorize(x, vector_size, TailStrategy::RoundUp);
            output
                .hexagon()
                .tile(x, y, xi, yi, vector_size, 4, TailStrategy::RoundUp)
                .vectorize(xi)
                .unroll(yi);
            if (use_prefetch_sched) {
                output.prefetch(input, y, 2);
            }
            if (use_parallel_sched) {
                Var yo;
                output.split(y, yo, y, 128).parallel(yo);
            }
        } else {
            const int vector_size = natural_vector_size<uint8_t>();
            output
                .vectorize(x, vector_size)
                .parallel(y, 16);
        }
    }

private:
    Var x{"x"}, y{"y"};
    Func sobel_x_avg{"sobel_x_avg"}, sobel_y_avg{"sobel_y_avg"};
    Func sobel_x{"sobel_x"}, sobel_y{"sobel_y"};
    Func bounded_input{"bounded_input"};
};

HALIDE_REGISTER_GENERATOR(Sobel, sobel)


/* Halide generates the following HVX algorithm (cleaned up for readability)

// cast<uint8_t> implemented using trunc
halide.hexagon.trunc.vh(
    // implementing the clamp / saturation
    vector_min(
        x128((uint16)255),
        // Compute sobel_x
        absd(
            // Sub-tree computes `input_16(x-1, y-1) + 2 * input_16(x, y-1) + 
            // input_16(x+1, y-1)`. Could be done in a single instruction using
            // vtmpy or vdmpy (with accumulation).
            (
                // instr add_2mpy: a[i] * c1 + b[i] * c2
                halide.hexagon.add_2mpy.vub.vub.b.b(
                    slice_vectors(
                        // This is slightly weird codegen. Instead of simply reading
                        // a vector from mem location `&bounded_input(x, y)+1`, it concats
                        // two vecs and slices them. The input vectors are used at other
                        // locations, so this may be to improve cache perf?
                        concat_vectors(
                            read_vec_128(&bounded_input(x, y)),
                            read_vec_128(&bounded_input(x, y) + 128)
                        ), 
                        1,  // start index
                        1,  // stride
                        128 // size
                    ),
                    read_vec_128(&bounded_input(x, y)),
                    (int8)2, 
                    (int8)1
                ) 
                + 
                // zero extension
                halide.hexagon.zxt.vub(
                    slice_vectors(concat_vectors(t417, t418.s), 2, 1, 128)
                )
            ),
            // Same as prev
            (
                halide.hexagon.add_2mpy.vub.vub.b.b(
                    slice_vectors(concat_vectors(t421, t422.s), 1, 1, 128), 
                    t421, 
                    (int8)2, 
                    (int8)1
                ) 
                + 
                halide.hexagon.zxt.vub(
                    slice_vectors(t424.s, 2, 1, 128)
                )
            )
        ) 
        + 
        // Compute sobel_y
        absd(
            // Can not use vtmpy without swizzling since vectors are from different rows 
            // (vtmpy does within vector reduction)
            (
                halide.hexagon.add_2mpy.vub.vub.b.b(
                    t425, 
                    t417, 
                    (int8)2, 
                    (int8)1
                ) + 
                halide.hexagon.zxt.vub(t421)
            ), 
            (
                halide.hexagon.add_2mpy.vub.vub.b.b(
                    slice_vectors(concat_vectors(t425, c4[ramp(128, 1, 128)]), 2, 1, 128), 
                    slice_vectors(t420.s, 2, 1, 128), 
                    (int8)2, 
                    (int8)1
                ) 
                + 
                halide.hexagon.zxt.vub(
                    slice_vectors(t424.s, 2, 1, 128)
                )
            )
        )
    )
)*/