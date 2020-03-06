#include <cmath>
#include <cstdint>
#include <cstdio>

#include "halide_benchmark.h"
#include "HalideBuffer.h"

using namespace Halide::Runtime;
using namespace Halide::Tools;

double t;

#include "basic1.h"

Buffer<int16_t> bench_basic1(Buffer<uint8_t> in) {
    Buffer<int16_t> out(in.width()-3);

    // Call it once to initialize the halide runtime stuff
    basic1(in, out);

    // Copy-out result if it's device buffer and dirty.
    out.copy_to_host();

    t = benchmark(10, 1, [&]() {
        basic1(in, out);

        // Sync device execution if any.
        out.device_sync();
    });

    out.copy_to_host();

    return out;
}
//#include "basic2.h"
//#include "basic3.h"
//#include "basic4.h"
//#include "basic5.h"
//#include "basic6.h"

void basic (int width, int height) {
    // Generate input data
    int size = width * height;
    Buffer<uint8_t,1> input(size);

    for (int x = 0; x < input.width(); x++) {
        input(x) = rand() & 0xff;
    }

    bench_basic1(input);
    double basic1_t = t;
    printf("Basic1 time: %f\n", basic1_t);

    //bench_basic2(input);
    //bench_basic3(input);
    //bench_basic4(input);
    //bench_basic5(input);
    //bench_basic6(input);
}

int main(int argc, char **argv) {
#ifndef HALIDE_RUNTIME_HEXAGON
    const int width = 6408;
    const int height = 4802;
#else
    // The Hexagon simulator can't allocate as much memory as the above wants.
    const int width = 648;
    const int height = 482;
#endif

    basic(width, height);

    return 0;
}