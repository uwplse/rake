#include <cmath>
#include <cstdint>
#include <cstdio>
#include <stdlib.h>

#include "halide_benchmark.h"
#include "HalideBuffer.h"

using namespace Halide::Runtime;
using namespace Halide::Tools;

#include "sobel.h"

int main(int argc, char **argv) {
#ifndef HALIDE_RUNTIME_HEXAGON
    const int width = 3840;
    const int height = 2160;
#else
    // The Hexagon simulator can't allocate as much memory as the above wants.
    const int width = 3840;
    const int height = 2160;
#endif

    /*int width, height, stride;

    /* -----------------------------------------------------*/
    /*  Get input parameters                                */
    /* -----------------------------------------------------*/
    /*if (argc != 4){
        printf("usage: %s <width> <height> <input.bin>\n", argv[0]);
        return 1;
    }

    int VLEN = 128;

    width  = atoi(argv[1]);
    height = atoi(argv[2]);
    stride = (width + VLEN-1)&(-VLEN);  // make stride a multiple of HVX vector size

    /* -----------------------------------------------------*/
    /*  Allocate memory for input/output                    */
    /* -----------------------------------------------------*/
    /*unsigned char *input_data  = (unsigned char*) aligned_alloc(VLEN, stride*height*sizeof(unsigned char));

    if ( input_data == NULL ){
        printf("Error: Could not allocate Memory for image\n");
        return 1;
    }

    /* -----------------------------------------------------*/
    /*  Read image input from file                          */
    /* -----------------------------------------------------*/
    /*std::ifstream file (argv[3], std::ios::in|std::ios::binary);

    if(!file.is_open())
    {
        printf("Error: Cannot open %s for input\n", argv[3]);
        return 1;
    }

    file.read (input, size);
    file.close();*/

    // Generate input data
    Buffer<uint8_t,2> input(width, height);

    for (int y = 0; y < input.height(); y++) {
        for (int x = 0; x < input.width(); x++) {
            input(x, y) = rand() & 0xff;
        }
    }

    Buffer<uint8_t,2> output(input.width(), input.height());

    // Call it once to initialize the halide runtime stuff
    sobel(input, output);

    // Copy-out result if it's device buffer and dirty.
    output.copy_to_host();

    double t = benchmark(10, 1, [&]() {
        sobel(input, output);

        // Sync device execution if any.
        output.device_sync();
    });

    output.copy_to_host();

    printf("Runtime: %f\n", t);
    
    return 0;
}