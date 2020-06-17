/* ======================================================================== */
/*  QUALCOMM TECHNOLOGIES, INC.                                             */
/*                                                                          */
/*  Halide for HVX Image Processing Example                                 */
/*                                                                          */
/* ------------------------------------------------------------------------ */
/*          Copyright (c) 2016 QUALCOMM TECHNOLOGIES Incorporated.          */
/*                           All Rights Reserved.                           */
/*                  QUALCOMM Confidential and Proprietary                   */
/* ======================================================================== */
#include <hexagon_standalone.h>
#include "io.h"
#include "simulator_benchmark.h"
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include "hvx.cfg.h"
#if RUN_BASELINE == 0
  #include "HalideBuffer.h"
  #include "gaussian3x3_hvx128.h"
  #include "gaussian3x3_hvx64.h"
#else
  extern "C" {
    #include "gaussian3x3.h"
  }
#endif

int main(int argc, char **argv) {
  // Create the Input.

  int x, y;
  int i, j;
  FH fp;
  constexpr int dims = 2;

  /* -----------------------------------------------------*/
  /*  Get input parameters                                */
  /* -----------------------------------------------------*/
  if (argc != 5) {
    printf("usage: %s <width> <height> <input.bin> <output.bin>\n", argv[0]);
    return 1;
  }

  int width  = atoi(argv[1]);
  int height = atoi(argv[2]);
  int stride = (width + (VLEN) - 1)&(-(VLEN));

  /* -----------------------------------------------------*/
  /*  Allocate memory for input/output                    */
  /* -----------------------------------------------------*/

  unsigned char *input  = (unsigned char *)memalign(1 << LOG2VLEN, width*height*sizeof(unsigned char));
  unsigned char *output = (unsigned char *)memalign(1 << LOG2VLEN, width*height*sizeof(unsigned char));

  if ( input == NULL || output == NULL ) {
    printf("Error: Could not allocate Memory for image\n");
    return 1;
  }

  /* -----------------------------------------------------*/
  /*  Read image input from file                          */
  /* -----------------------------------------------------*/
  if((fp = open(argv[3], O_RDONLY)) < 0 ) {
    printf("Error: Cannot open %s for input\n", argv[3]);
    return 1;
  }

  for(i = 0; i < height; i++) {
    if(read(fp, &input[i*width],  sizeof(unsigned char)*width)!=width) {
      printf("Error, Unable to read from %s\n", argv[3]);
      close(fp);
      return 1;
    }
  }
  close(fp);


  char *filename = (char *) malloc(100 * sizeof(char));

  #if RUN_BASELINE == 0

    long long cycles_hvx64, cycles_hvx128;
    FH fp_hvx64, fp_hvx128;

    halide_dimension_t x_dim{0, width, 1};
    halide_dimension_t y_dim{0, height, width};
    halide_dimension_t shape[2] = {x_dim, y_dim};

    halide_dimension_t xo_dim{2, width-4, 1};
    halide_dimension_t yo_dim{2, height-4, width-4};
    halide_dimension_t shapeo[2] = {xo_dim, yo_dim};

    Halide::Runtime::Buffer<uint8_t> input1_buf(input, dims, shape);
    Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);

    SIM_ACQUIRE_HVX;
    cycles_hvx64 = benchmark([&]() {
        int error = gaussian3x3_hvx64(input1_buf, output_buf);
        if (error != 0) {
          printf("gaussian5x5_hvx64 pipeline failed: %d\n", error);
        }
      });
    SIM_RELEASE_HVX;

    printf("AppReported (HVX64B-mode): Image %dx%d - gaussian3x3(64B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx64, (float)cycles_hvx64/width/height);
    /* -----------------------------------------------------*/
    /*  Write image output to file                          */
    /* -----------------------------------------------------*/
    strcpy(filename, "out/gaussian3x3_hvx64_");
    strcat(filename, argv[4]);
    if((fp_hvx64 = open(filename, O_CREAT_WRONLY_TRUNC, 0777)) < 0)
      {
        printf("Error: Cannot open %s for output\n", filename);
        return 1;
      }

    if(write_file(fp_hvx64, output, height, width, 2) != 0) {
      printf("Error: Cannot write to file %s\n", filename);
    }

    memset(output, 0, width*height);

    // Run in 128 byte mode
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles_hvx128 = benchmark([&]() {
        int error = gaussian3x3_hvx128(input1_buf, output_buf);
        if (error != 0) {
          printf("gaussian5x5_hvx128 pipeline failed: %d\n", error);
        }
      });
    SIM_RELEASE_HVX;

    printf("AppReported (HVX128B-mode): Image %dx%d - gaussian3x3(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
    strcpy(filename, "out/gaussian3x3_hvx128_");
    strcat(filename, argv[4]);
    if((fp_hvx128 = open(filename, O_CREAT_WRONLY_TRUNC, 0777)) < 0)
      {
        printf("Error: Cannot open %s for output\n", filename);
        return 1;
      }
    if(write_file(fp_hvx128, output, height, width, 2) != 0) {
      printf("Error: Cannot write to file %s\n", filename);
    }

    close(fp_hvx64);
    close(fp_hvx128);

  #else

    long long cycles_basline_hvx64, cycles_basline_hvx128;
    FH fp_baseline_hvx64, fp_baseline_hvx128;

    // Run basline version
    memset(output, 0, width*height);
    SIM_ACQUIRE_HVX;
    cycles_basline_hvx64 = benchmark([&]() {
        int error = gaussian5x5u8_hvx64_i( input, stride, width, height, output);
        if (error != 0) {
          printf("gaussian5x5_baseline_hvx64 pipeline failed: %d\n", error);
        }
      });

    SIM_RELEASE_HVX;
    printf("AppReported (HVX64B-mode): Image %dx%d - gaussian5x5_basline(64B): %0.4f cycles/pixel\n", (int)width, (int)height, (float)cycles_basline_hvx64/width/height);

    /* -----------------------------------------------------*/
    /*  Write image output to file                          */
    /* -----------------------------------------------------*/
    strcpy(filename, "gaussian5x5_baseline_hvx64_");
    strcat(filename, argv[4]);
    if((fp_baseline_hvx64 = open(filename, O_CREAT_WRONLY_TRUNC, 0777)) < 0)
      {
        printf("Error: Cannot open %s for output\n", filename);
        return 1;
      }

    if(write_file(fp_baseline_hvx64, output, height, width, 2) != 0) {
      printf("Error: Cannot write to file %s\n", filename);
    }

    // Run basline version
    memset(output, 0, width*height);
    SIM_ACQUIRE_HVX;
    SIM_SET_HVX_DOUBLE_MODE;
    cycles_basline_hvx128 = benchmark([&]() {
        int error = gaussian5x5u8_hvx128_i( input, stride, width, height, output);
        if (error != 0) {
          printf("gaussian5x5_baseline_hvx128 pipeline failed: %d\n", error);
        }
      });

    SIM_RELEASE_HVX;
    printf("AppReported (HVX128B-mode): Image %dx%d - gaussian5x5_basline(128B): %0.4f cycles/pixel\n", (int)width, (int)height, (float)cycles_basline_hvx128/width/height);

    /* -----------------------------------------------------*/
    /*  Write image output to file                          */
    /* -----------------------------------------------------*/
    strcpy(filename, "gaussian5x5_baseline_hvx128_");
    strcat(filename, argv[4]);
    if((fp_baseline_hvx128 = open(filename, O_CREAT_WRONLY_TRUNC, 0777)) < 0)
      {
        printf("Error: Cannot open %s for output\n", filename);
        return 1;
      }

    if(write_file(fp_baseline_hvx128, output, height, width, 2) != 0) {
      printf("Error: Cannot write to file %s\n", filename);
    }

    close(fp_baseline_hvx64);
    close(fp_baseline_hvx128);
  #endif

  free(input);
  free(output);
  free(filename);

  printf("Success!\n");
  return 0;
}