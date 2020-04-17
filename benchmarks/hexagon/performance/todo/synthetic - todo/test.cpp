#include <cmath>
#include <cstdint>
#include <cstdio>
#include <stdlib.h>

#include "halide_benchmark.h"
#include "HalideBuffer.h"

using namespace Halide::Runtime;
using namespace Halide::Tools;

double t;

#include "basic1.h"
#include "basic2.h"
#include "basic3.h"
#include "basic4.h"
#include "basic5.h"
#include "basic6.h"
#include "basic7.h"

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

Buffer<int32_t> bench_basic2(Buffer<uint8_t> in) {
    Buffer<int32_t> out(in.width()-3);

    // Call it once to initialize the halide runtime stuff
    basic2(in, out);

    // Copy-out result if it's device buffer and dirty.
    out.copy_to_host();

    t = benchmark(10, 1, [&]() {
        basic2(in, out);

        // Sync device execution if any.
        out.device_sync();
    });

    out.copy_to_host();

    return out;
}

Buffer<int32_t> bench_basic3(Buffer<uint8_t> in) {
    Buffer<int32_t> out(in.width()-6);

    // Call it once to initialize the halide runtime stuff
    basic3(in, out);

    // Copy-out result if it's device buffer and dirty.
    out.copy_to_host();

    t = benchmark(10, 1, [&]() {
        basic3(in, out);

        // Sync device execution if any.
        out.device_sync();
    });

    out.copy_to_host();

    return out;
}

Buffer<int32_t> bench_basic4(Buffer<uint8_t> in) {
    Buffer<int32_t> out(in.width()-3);

    // Call it once to initialize the halide runtime stuff
    basic4(in, out);

    // Copy-out result if it's device buffer and dirty.
    out.copy_to_host();

    t = benchmark(10, 1, [&]() {
        basic4(in, out);

        // Sync device execution if any.
        out.device_sync();
    });

    out.copy_to_host();

    return out;
}

Buffer<int32_t> bench_basic5(Buffer<uint8_t> in) {
    Buffer<int32_t> out(in.width()-3);

    // Call it once to initialize the halide runtime stuff
    basic5(in, out);

    // Copy-out result if it's device buffer and dirty.
    out.copy_to_host();

    t = benchmark(10, 1, [&]() {
        basic5(in, out);

        // Sync device execution if any.
        out.device_sync();
    });

    out.copy_to_host();

    return out;
}

Buffer<int16_t> bench_basic6(Buffer<uint8_t> in) {
    Buffer<int16_t> out(in.width()-4);

    // Call it once to initialize the halide runtime stuff
    basic6(in, out);

    // Copy-out result if it's device buffer and dirty.
    out.copy_to_host();

    t = benchmark(10, 1, [&]() {
        basic6(in, out);

        // Sync device execution if any.
        out.device_sync();
    });

    out.copy_to_host();

    return out;
}

Buffer<int32_t> bench_basic7(Buffer<uint8_t> in) {
    Buffer<int32_t> out(in.width()-4);

    // Call it once to initialize the halide runtime stuff
    basic7(in, out);

    // Copy-out result if it's device buffer and dirty.
    out.copy_to_host();

    t = benchmark(10, 1, [&]() {
        basic7(in, out);

        // Sync device execution if any.
        out.device_sync();
    });

    out.copy_to_host();

    return out;
}

int main(int argc, char **argv) {
#ifndef HALIDE_RUNTIME_HEXAGON
    const int width = 7680;
    const int height = 4320;
#else
    // The Hexagon simulator can't allocate as much memory as the above wants.
    const int width = 648;
    const int height = 482;
#endif

    // Generate input data
    int size = width * height * 500;
    Buffer<uint8_t,1> input(size);

    for (int x = 0; x < input.width(); x++) {
        input(x) = rand() & 0xff;
    }

    if (argc == 1) {
        bench_basic1(input);
        double basic1_t = t;
        printf("Basic1 time: %f\n", basic1_t);

        bench_basic2(input);
        double basic2_t = t;
        printf("Basic2 time: %f\n", basic2_t);

        bench_basic3(input);
        double basic3_t = t;
        printf("Basic3 time: %f\n", basic3_t);

        bench_basic4(input);
        double basic4_t = t;
        printf("Basic4 time: %f\n", basic4_t);

        bench_basic5(input);
        double basic5_t = t;
        printf("Basic5 time: %f\n", basic5_t);

        bench_basic6(input);
        double basic6_t = t;
        printf("Basic6 time: %f\n", basic6_t);

        bench_basic7(input);
        double basic7_t = t;
        printf("Basic7 time: %f\n", basic7_t);
    }
    else if (atoi(argv[1]) == 1) {
        bench_basic1(input);
        double basic1_t = t;
        printf("Basic1 time: %f\n", basic1_t);
    }
    else if (atoi(argv[1]) == 2) {
        bench_basic2(input);
        double basic2_t = t;
        printf("Basic2 time: %f\n", basic2_t);
    }
    else if (atoi(argv[1]) == 3) {
        bench_basic3(input);
        double basic3_t = t;
        printf("Basic3 time: %f\n", basic3_t);
    }
    else if (atoi(argv[1]) == 4) {
        bench_basic4(input);
        double basic4_t = t;
        printf("Basic4 time: %f\n", basic4_t);
    }
    else if (atoi(argv[1]) == 5) {
        bench_basic5(input);
        double basic5_t = t;
        printf("Basic5 time: %f\n", basic5_t);
    }
    else if (atoi(argv[1]) == 6) {
        bench_basic6(input);
        double basic6_t = t;
        printf("Basic6 time: %f\n", basic6_t);
    }
    else if (atoi(argv[1]) == 7) {
        bench_basic7(input);
        double basic7_t = t;
        printf("Basic7 time: %f\n", basic7_t);
    }
    
    return 0;
}