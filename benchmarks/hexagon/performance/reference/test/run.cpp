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

#include "io.h"

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

  const int VLEN = 128;

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
  
#if gaussian3x3
  Gaussian3x3u8(input, stride, width, height, output);
#endif

#if gaussian5x5
  Gaussian5x5u8(input, stride, width, height, output);
#endif

#if gaussian7x7
  Gaussian7x7u8(input, stride, width, height, output);
#endif

#if conv3x3a16
  conv3x3(input, stride, width, height, mask, 3, output, stride);
#endif

#if conv3x3a32
  conv3x3(input, stride, width, height, mask, 3, output);
#endif

#if sobel3x3
  sobel(input, stride, width, height, output);
#endif
  
  /* -----------------------------------------------------*/
  /*  Write output image to file                          */
  /* -----------------------------------------------------*/
  strcpy(filename, argv[4]);
  FILE* outF;
  if((outF = fopen(filename, "wb")) == NULL)
    {
      printf("Error: Cannot open %s for output\n", filename);
      return 1;
    }
  if(fwrite(output, sizeof(char), width*height, outF) == 0) {
    printf("Error: Cannot write to file %s\n", filename);
  }

  fclose(outF);

  free(input);
  free(output);
  free(filename);

  printf("Success!\n");

  return 0;
}