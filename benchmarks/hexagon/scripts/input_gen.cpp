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
#include <malloc.h>
#include <cstring>

int main(int argc, char **argv) {
  int i;
  FILE *fp;
  
  int VLEN=128;

  /* -----------------------------------------------------*/
  /*  Get input parameters                                */
  /* -----------------------------------------------------*/
  if (argc != 6) {
    printf("usage: %s <width> <height> <factor> <input.bin> <output.bin>\n", argv[0]);
    return 1;
  }

  int width  = atoi(argv[1]);
  int height = atoi(argv[2]);
  int factor = atoi(argv[3]);
  int stride = (width + (VLEN) - 1)&(-(VLEN));

  /* -----------------------------------------------------*/
  /*  Allocate memory for input/output                    */
  /* -----------------------------------------------------*/

  unsigned char *input  = (unsigned char *)memalign(1 << LOG2VLEN, width*height*sizeof(unsigned char));
  unsigned char *output = (unsigned char *)memalign(1 << LOG2VLEN, width*factor*height*factor*sizeof(unsigned char));

  if ( input == NULL || output == NULL ) {
    printf("Error: Could not allocate Memory for image\n");
    return 1;
  }

  /* -----------------------------------------------------*/
  /*  Read image input from file                          */
  /* -----------------------------------------------------*/
  if((fp = fopen(argv[4], "rb")) == NULL) {
    printf("Error: Cannot open %s for input\n", argv[4]);
    return 1;
  }

  for(i = 0; i < height; i++) {
    if(fread(&input[i*width], sizeof(unsigned char), width, fp) != width) {
      printf("Error, Unable to read from %s\n", argv[4]);
      fclose(fp);
      return 1;
    }
  }
  fclose(fp);

  /* -----------------------------------------------------*/
  /*  Read image input from file                          */
  /* -----------------------------------------------------*/
  for(int fy=0; fy<factor; fy++) {
    for(int y=0; y<height; y++) {
      for(int fx=0; fx<factor; fx++) {
          std::memcpy(output+(fy*height*width*factor)+(y*width*factor)+(width*fx), input+(y*width), width*sizeof(unsigned char));
      }
    }
  }

  /* -----------------------------------------------------*/
  /*  Write output image to file                          */
  /* -----------------------------------------------------*/
  char *filename = (char *) malloc(100 * sizeof(char));
  strcpy(filename, argv[5]);
  FILE* outF;
  if((outF = fopen(filename, "wb")) == NULL)
    {
      printf("Error: Cannot open %s for output\n", filename);
      return 1;
    }
  if(fwrite(output, sizeof(char), width*factor*height*factor, outF) == 0) {
    printf("Error: Cannot write to file %s\n", filename);
  }

  fclose(outF);

  free(input);
  free(output);
  free(filename);

  printf("Success!\n");

  return 0;
}