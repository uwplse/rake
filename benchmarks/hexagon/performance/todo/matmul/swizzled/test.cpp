#include <cmath>
#include <cstdint>
#include <cstdio>
#include <stdlib.h>

#include "halide_benchmark.h"
#include "HalideBuffer.h"

using namespace Halide::Runtime;
using namespace Halide::Tools;

double t;

#include "MatrixMultiply.h"

int main(int argc, char **argv) {
/*#ifndef HALIDE_RUNTIME_HEXAGON
    const int width = 7680;
    const int height = 4320;
#else
    // The Hexagon simulator can't allocate as much memory as the above wants.
    const int width = 648;
    const int height = 482;
#endif*/

    const int width = 1024;
    const int height = 1024;

    // Generate input data
    Buffer<uint8_t,2> mat_a(width, height);
    Buffer<uint8_t,2> mat_b(width, height);
    Buffer<uint8_t, 2> out(width, height);
    Buffer<int32_t,1> bias(width);

    // Offsets and multipliers for the input, filter, and output.
    int16_t mat_a_offset_ = 0;
    int16_t mat_b_offset_ = 0;
    int output_multiplier_ = 1;
    int output_shift_ = 0;
    int output_offset_ = 0;
    uint8_t output_min_ = 0;
    uint8_t output_max_ = 200;

    for (int x = 0; x < width; x++) {
        for (int y = 0; y < height; y++) {
            mat_a(x, y) = rand() & 0xff;
            mat_b(x, y) = rand() & 0xff;
        }
        bias(x) = 1;
    }



    // Call it once to initialize the halide runtime stuff
    //MatrixMultiply(mat_a, mat_b, bias, mat_a_offset_, mat_b_offset_, output_multiplier_, output_shift_, output_offset_, output_max_, output_min_, out);
    MatrixMultiply(mat_a, mat_b, out);

    // Copy-out result if it's device buffer and dirty.
    out.copy_to_host();

    t = benchmark(10, 1, [&]() {
        //MatrixMultiply(mat_a, mat_b, bias, mat_a_offset_, mat_b_offset_, output_multiplier_, output_shift_, output_offset_, output_max_, output_min_, out);
        MatrixMultiply(mat_a, mat_b, out);

        // Sync device execution if any.
        out.device_sync();
    });

    out.copy_to_host();

    printf("matmul time: %f\n", t);
    
    return 0;
}