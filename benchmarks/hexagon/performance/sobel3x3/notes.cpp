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