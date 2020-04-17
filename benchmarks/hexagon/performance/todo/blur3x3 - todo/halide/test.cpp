#include <cmath>
#include <cstdint>
#include <cstdio>
#include <stdlib.h>
#include <iostream>
#include <fstream>

#include "halide_benchmark.h"
#include "HalideBuffer.h"

using namespace Halide::Runtime;
using namespace Halide::Tools;

#include "halide_blur.h"

int main(int argc, char **argv) {
#ifndef HALIDE_RUNTIME_HEXAGON
    const int width = 3840;
    const int height = 2160;
#else
    // The Hexagon simulator can't allocate as much memory as the above wants.
    const int width = 1920;
    const int height = 1080;
#endif

    // Generate input data
    Buffer<uint16_t,2> input(width, height);

    for (int y = 0; y < input.height(); y++) {
        for (int x = 0; x < input.width(); x++) {
            input(x, y) = rand() & 0xffff;
        }
    }

    Buffer<uint16_t,2> output(input.width()-2, input.height()-2);

    // Call it once to initialize the halide runtime stuff
    halide_blur(input, output);

    // Copy-out result if it's device buffer and dirty.
    output.copy_to_host();

    double t = benchmark(10, 1, [&]() {
        halide_blur(input, output);

        // Sync device execution if any.
        output.device_sync();
    });

    output.copy_to_host();

    printf("Runtime: %f\n", t);
    
    return 0;
}