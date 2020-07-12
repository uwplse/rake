/***************************************************************************
* Copyright (c) Date: Mon Nov 24 16:26:02 CST 2008 QUALCOMM INCORPORATED
* All Rights Reserved
* Modified by QUALCOMM INCORPORATED on Mon Nov 24 16:26:03 CST 2008
****************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#if defined(__hexagon__)
#include "hexagon_standalone.h"
#include "subsys.h"
#endif
#include "io.h"
#include "hvx.cfg.h"
#include "../include/gaussian.h"



int main(int argc, char* argv[])
{
    int i;
    int width, height, stride;
    FH fp;

    long long start_time, total_cycles;

    /* -----------------------------------------------------*/
    /*  Get input parameters                                */
    /* -----------------------------------------------------*/
    if (argc != 5){
        printf("usage: %s <width> <height> <input.bin> <output.bin>\n", argv[0]);
        return 1;
    }

    width  = atoi(argv[1]);
    height = atoi(argv[2]);
    stride = (width + VLEN-1)&(-VLEN);  // make stride a multiple of HVX vector size

    /* -----------------------------------------------------*/
    /*  Allocate memory for input/output                    */
    /* -----------------------------------------------------*/
    unsigned char *input  = memalign(VLEN, stride*height*sizeof(unsigned char));
    unsigned char *output = memalign(VLEN, stride*height*sizeof(unsigned char));

    if ( input == NULL || output == NULL ){
        printf("Error: Could not allocate Memory for image\n");
        return 1;
    }

    /* -----------------------------------------------------*/
    /*  Read image input from file                          */
    /* -----------------------------------------------------*/
    if((fp = open(argv[3], O_RDONLY)) < 0 )
    {
        printf("Error: Cannot open %s for input\n", argv[3]);
        return 1;
    }

    for(i = 0; i < height; i++)
    {
        if(read(fp, &input[i*stride],  sizeof(unsigned char)*width)!=width)
        {
            printf("Error, Unable to read from %s\n", argv[3]);
            close(fp);
            return 1;
        }
    }
    close(fp);

#if defined(__hexagon__)
    subsys_enable();
    SIM_ACQUIRE_HVX;
#if LOG2VLEN == 7
    SIM_SET_HVX_DOUBLE_MODE;
#endif
#endif
    /* -----------------------------------------------------*/
    /*  Call fuction                                        */
    /* -----------------------------------------------------
    RESET_PMU();
    start_time = READ_PCYCLES();

    Gaussian3x3u8( input, stride, width, height, output );

    total_cycles = READ_PCYCLES() - start_time;
    DUMP_PMU();

#if defined(__hexagon__)
    printf("AppReported (HVX%db-mode): Image %dx%d - Gaussian3x3u8: %0.4f cycles/pixel\n", VLEN, (int)width, (int)height, (float)total_cycles/width/height);
#endif*/

    /* -----------------------------------------------------*/
    /*  Write image output to file                          */
    /* -----------------------------------------------------
    if((fp = open(argv[4], O_CREAT_WRONLY_TRUNC, 0777)) < 0)
    {
        printf("Error: Cannot open %s for output\n", argv[4]);
        return 1;
    }


    for(i = 1; i < height-1; i++)
    {
        if(write(fp, &output[i*stride+1], sizeof(unsigned char)*(width-2))!=(width-2)) // exclude the boundary pixels
        {
            printf("Error:  Writing file: %s\n", argv[4]);
            return 1;
        }
    }*/

    /* -----------------------------------------------------*/
    /*  Call fuction                                        */
    /* -----------------------------------------------------*/
    RESET_PMU();
    start_time = READ_PCYCLES();

    Gaussian5x5u8( input, stride, width, height, output );

    total_cycles = READ_PCYCLES() - start_time;
    DUMP_PMU();

#if defined(__hexagon__)
    printf("AppReported (HVX%dB-mode): Image %dx%d - gaussian5x5: %lld cycles (%0.4f cycles/pixel)\n", VLEN, (int)width, (int)height, total_cycles, (float)total_cycles/width/height);
#endif


    /* -----------------------------------------------------*/
    /*  Write image output to file                          */
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

    /* -----------------------------------------------------*/
    /*  Call fuction                                        */
    /* -----------------------------------------------------
    RESET_PMU();
    start_time = READ_PCYCLES();

    Gaussian7x7u8( input, stride, width, height, output );

    total_cycles = READ_PCYCLES() - start_time;
    DUMP_PMU();

#if defined(__hexagon__)
    printf("AppReported (HVX%db-mode): Image %dx%d - Gaussian7x7u8: %0.4f cycles/pixel\n", VLEN, (int)width, (int)height, (float)total_cycles/width/height);
#endif*/


    /* -----------------------------------------------------*/
    /*  Write image output to file                          */
    /* -----------------------------------------------------
    for(i = 3; i < height-3; i++)
    {
        if(write(fp, &output[i*stride+3], sizeof(unsigned char)*(width-6))!=(width-6)) // exclude the boundary pixels
        {
            printf("Error:  Writing file: %s\n", argv[4]);
            return 1;
        }
    }
    close(fp);*/

    free(input);
    free(output);

    return 0;
}