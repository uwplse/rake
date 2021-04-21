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
#include <string.h>
#if defined(__hexagon__)
#include "hexagon_standalone.h"
#include "subsys.h"
#endif

#include "io.h"
#include "hvx.cfg.h"

#if gaussian3x3
  #include "gaussian3x3.h"
#elif gaussian5x5
  #include "gaussian5x5.h"
#elif gaussian7x7
  #include "gaussian7x7.h"
#elif conv3x3a16
  #include "conv3x3a16.h"
#elif conv3x3a32
  #include "conv3x3a32.h"
#elif sobel3x3
  #include "sobel3x3.h"
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

  /* -----------------------------------------------------*/
  /*  Get input parameters                                */
  /* -----------------------------------------------------*/
  if (argc != 5) {
    printf("usage: %s <width> <height> <input.bin> <output.bin>\n", argv[0]);
    return 1;
  }

  int width  = atoi(argv[1]);
  int height = atoi(argv[2]);
  int stride = (width + VLEN-1)&(-VLEN);  // make stride a multiple of HVX vector size

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
    if(read(fp, &input[i*width],  sizeof(unsigned char)*width)!= (unsigned int)width) {
      printf("Error, Unable to read from %s\n", argv[3]);
      close(fp);
      return 1;
    }
  }
  close(fp);

  char *filename = (char *) malloc(100 * sizeof(char));

  /* -----------------------------------------------------*/
  /*  Run benchmark                                       */
  /* -----------------------------------------------------*/
  long long cycles_hvx128;
  long long start_time, total_cycles;

  subsys_enable();
  SIM_SET_HVX_DOUBLE_MODE;

#if gaussian3x3
  RESET_PMU();
  start_time = READ_PCYCLES();

  Gaussian3x3u8(input, stride, width, height, output);

  total_cycles = READ_PCYCLES() - start_time;
  DUMP_PMU();

  printf("AppReported (HVX%dB-mode): Image %dx%d - gaussian3x3: %lld cycles (%0.4f cycles/pixel)\n", VLEN, (int)width, (int)height, total_cycles, (float)total_cycles/width/height);
#endif

#if gaussian5x5
  RESET_PMU();
  start_time = READ_PCYCLES();

  Gaussian5x5u8(input, stride, width, height, output);

  total_cycles = READ_PCYCLES() - start_time;
  DUMP_PMU();

  printf("AppReported (HVX%dB-mode): Image %dx%d - gaussian5x5: %lld cycles (%0.4f cycles/pixel)\n", VLEN, (int)width, (int)height, total_cycles, (float)total_cycles/width/height);
#endif

#if gaussian7x7
  RESET_PMU();
  start_time = READ_PCYCLES();

  Gaussian7x7u8(input, stride, width, height, output);

  total_cycles = READ_PCYCLES() - start_time;
  DUMP_PMU();

  printf("AppReported (HVX%dB-mode): Image %dx%d - gaussian7x7: %lld cycles (%0.4f cycles/pixel)\n", VLEN, (int)width, (int)height, total_cycles, (float)total_cycles/width/height);
#endif

#if conv3x3a16
  RESET_PMU();
  start_time = READ_PCYCLES();

  conv3x3(input, stride, width, height, mask, 3, output, stride);

  total_cycles = READ_PCYCLES() - start_time;
  DUMP_PMU();

  printf("AppReported (HVX%dB-mode): Image %dx%d - conv3x3a16: %lld cycles (%0.4f cycles/pixel)\n", VLEN, (int)width, (int)height, total_cycles, (float)total_cycles/width/height);
#endif

#if conv3x3a32
  RESET_PMU();
  start_time = READ_PCYCLES();

  conv3x3(input, stride, width, height, mask, 3, output);

  total_cycles = READ_PCYCLES() - start_time;
  DUMP_PMU();

  printf("AppReported (HVX%dB-mode): Image %dx%d - conv3x3a32: %lld cycles (%0.4f cycles/pixel)\n", VLEN, (int)width, (int)height, total_cycles, (float)total_cycles/width/height);
#endif

#if sobel3x3
  RESET_PMU();
  start_time = READ_PCYCLES();

  sobel(input, stride, width, height, output);

  total_cycles = READ_PCYCLES() - start_time;
  DUMP_PMU();

  printf("AppReported (HVX%dB-mode): Image %dx%d - sobel3x3: %lld cycles (%0.4f cycles/pixel)\n", VLEN, (int)width, (int)height, total_cycles, (float)total_cycles/width/height);
#endif

  SIM_RELEASE_HVX;

  /* -----------------------------------------------------*/
  /*  Write output image to file                          */
  /* -----------------------------------------------------*/
  if((fp = open(argv[4], O_CREAT_WRONLY_TRUNC, 0777)) < 0)
  {
      printf("Error: Cannot open %s for output\n", argv[4]);
      return 1;
  }
  
  for(i = 2; i < height-2; i++)
  {
      if(write(fp, &output[i*stride+2], sizeof(unsigned char)*(width-4))!=(width-4)) // exclude the boundary pixels
      {
          printf("Error:  Writing file: %s\n", argv[4]);
          return 1;
      }
  }

  close(fp);

  free(input);
  free(output);
  free(filename);

  printf("Success!\n");

  return 0;
}