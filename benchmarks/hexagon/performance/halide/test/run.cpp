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
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <hexagon_standalone.h>

#include "io.h"
#include "hvx.cfg.h"
#include "HalideBuffer.h"
#include "simulator_benchmark.h"

#if gaussian3x3
  #include "gaussian3x3_hvx128.h"
#elif gaussian5x5
  #include "gaussian5x5_hvx128.h"
#elif gaussian7x7
  #include "gaussian7x7_hvx128.h"
#elif conv3x3a16
  #include "conv3x3a16_hvx128.h"
#elif conv3x3a32
  #include "conv3x3a32_hvx128.h"
#elif sobel3x3
  #include "sobel3x3_hvx128.h"
#elif blur3x3
  #include "blur3x3_hvx128.h"
#elif dilate3x3
  #include "dilate3x3_hvx128.h"
#elif median3x3
  #include "median3x3_hvx128.h"
#endif

signed char mask[9] =
{
    1, -4, 7,
    2, -5, 8,
    3, -6, 9
};

int main(int argc, char **argv) {
  int i;
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

  /* -----------------------------------------------------*/
  /*  Run benchmark on the Simulator                      */
  /* -----------------------------------------------------*/
  long long cycles_hvx128;
  FH fp_hvx128;

  halide_dimension_t x_dim{0, width, 1};
  halide_dimension_t y_dim{0, height, width};
  halide_dimension_t shape[2] = {x_dim, y_dim};

  halide_dimension_t mask_shape[2];
  mask_shape[0].min = 0; mask_shape[0].extent = 3; mask_shape[0].stride = 1;
  mask_shape[1].min = 0; mask_shape[1].extent = 3; mask_shape[1].stride = 3;

  Halide::Runtime::Buffer<uint8_t> input1_buf(input, dims, shape);
  Halide::Runtime::Buffer<int8_t> mask_buf(mask, dims, mask_shape);
  Halide::Runtime::Buffer<uint8_t> output_buf(output, dims, shape);

#if gaussian3x3
  // Run in 128 byte mode
  SIM_ACQUIRE_HVX;
  SIM_SET_HVX_DOUBLE_MODE;
  cycles_hvx128 = benchmark([&]() {
      int error = gaussian3x3_hvx128(input1_buf, output_buf);
      if (error != 0) {
        printf("gaussian3x3_hvx128 pipeline failed: %d\n", error);
      }
    });
  SIM_RELEASE_HVX;

  printf("AppReported (HVX128B-mode): Image %dx%d - gaussian3x3(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
#endif

#if gaussian5x5
  // Run in 128 byte mode
  SIM_ACQUIRE_HVX;
  SIM_SET_HVX_DOUBLE_MODE;
  cycles_hvx128 = benchmark([&]() {
      int error = gaussian5x5_hvx128(input1_buf, output_buf);
      if (error != 0) {
        printf("gaussian5x5_hvx128 pipeline failed: %d\n", error);
      }
    });
  SIM_RELEASE_HVX;

  printf("AppReported (HVX128B-mode): Image %dx%d - gaussian5x5(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
#endif

#if gaussian7x7
  // Run in 128 byte mode
  SIM_ACQUIRE_HVX;
  SIM_SET_HVX_DOUBLE_MODE;
  cycles_hvx128 = benchmark([&]() {
      int error = gaussian7x7_hvx128(input1_buf, output_buf);
      if (error != 0) {
        printf("gaussian7x7_hvx128 pipeline failed: %d\n", error);
      }
    });
  SIM_RELEASE_HVX;

  printf("AppReported (HVX128B-mode): Image %dx%d - gaussian7x7(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
#endif

#if conv3x3a16
  // Run in 128 byte mode
  SIM_ACQUIRE_HVX;
  SIM_SET_HVX_DOUBLE_MODE;
  cycles_hvx128 = benchmark([&]() {
      int error = conv3x3a16_hvx128(input1_buf, mask_buf, output_buf);
      if (error != 0) {
        printf("conv3x3a16_hvx128 pipeline failed: %d\n", error);
      }
    });
  SIM_RELEASE_HVX;

  printf("AppReported (HVX128B-mode): Image %dx%d - conv3x3a16(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
#endif

#if conv3x3a32
  // Run in 128 byte mode
  SIM_ACQUIRE_HVX;
  SIM_SET_HVX_DOUBLE_MODE;
  cycles_hvx128 = benchmark([&]() {
      int error = conv3x3a32_hvx128(input1_buf, mask_buf, output_buf);
      if (error != 0) {
        printf("conv3x3a32_hvx128 pipeline failed: %d\n", error);
      }
    });
  SIM_RELEASE_HVX;

  printf("AppReported (HVX128B-mode): Image %dx%d - conv3x3a32(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
#endif

#if sobel3x3
  // Run in 128 byte mode
  SIM_ACQUIRE_HVX;
  SIM_SET_HVX_DOUBLE_MODE;
  cycles_hvx128 = benchmark([&]() {
      int error = sobel3x3_hvx128(input1_buf, output_buf);
      if (error != 0) {
        printf("sobel3x3_hvx128 pipeline failed: %d\n", error);
      }
    });
  SIM_RELEASE_HVX;

  printf("AppReported (HVX128B-mode): Image %dx%d - sobel3x3(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
#endif

#if blur3x3
  // Run in 128 byte mode
  SIM_ACQUIRE_HVX;
  SIM_SET_HVX_DOUBLE_MODE;
  cycles_hvx128 = benchmark([&]() {
      int error = blur3x3_hvx128(input1_buf, output_buf);
      if (error != 0) {
        printf("blur3x3_hvx128 pipeline failed: %d\n", error);
      }
    });
  SIM_RELEASE_HVX;

  printf("AppReported (HVX128B-mode): Image %dx%d - blur3x3(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
#endif

#if dilate3x3
  // Run in 128 byte mode
  SIM_ACQUIRE_HVX;
  SIM_SET_HVX_DOUBLE_MODE;
  cycles_hvx128 = benchmark([&]() {
      int error = dilate3x3_hvx128(input1_buf, output_buf);
      if (error != 0) {
        printf("dilate3x3_hvx128 pipeline failed: %d\n", error);
      }
    });
  SIM_RELEASE_HVX;

  printf("AppReported (HVX128B-mode): Image %dx%d - dilate3x3(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
#endif

#if median3x3
  // Run in 128 byte mode
  SIM_ACQUIRE_HVX;
  SIM_SET_HVX_DOUBLE_MODE;
  cycles_hvx128 = benchmark([&]() {
      int error = median3x3_hvx128(input1_buf, output_buf);
      if (error != 0) {
        printf("median3x3_hvx128 pipeline failed: %d\n", error);
      }
    });
  SIM_RELEASE_HVX;

  printf("AppReported (HVX128B-mode): Image %dx%d - median3x3(128B): %lld cycles (%0.4f cycles/pixel)\n", (int)width, (int)height, cycles_hvx128, (float)cycles_hvx128/width/height);
#endif
  
  /* -----------------------------------------------------*/
  /*  Write output image to file                          */
  /* -----------------------------------------------------*/
  strcpy(filename, argv[4]);
  if((fp_hvx128 = open(filename, O_CREAT_WRONLY_TRUNC, 0777)) < 0)
    {
      printf("Error: Cannot open %s for output\n", filename);
      return 1;
    }
  if(write_file(fp_hvx128, output, height, width, 2) != 0) {
    printf("Error: Cannot write to file %s\n", filename);
  }

  close(fp_hvx128);

  free(input);
  free(output);
  free(filename);

  printf("Success!\n");

  return 0;
}