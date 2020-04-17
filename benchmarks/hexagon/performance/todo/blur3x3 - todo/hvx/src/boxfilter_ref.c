/* ======================================================================== */
/*  QUALCOMM TECHNOLOGIES, INC.                                             */
/*                                                                          */
/*  HEXAGON HVX Image/Video Processing Library                              */
/*                                                                          */
/* ------------------------------------------------------------------------ */
/*          Copyright (c) 2014 QUALCOMM TECHNOLOGIES Incorporated.          */
/*                           All Rights Reserved.                           */
/*                  QUALCOMM Confidential and Proprietary                   */
/* ======================================================================== */

/*[========================================================================]*/
/*[ FUNCTION                                                               ]*/
/*[     boxfilter11x11                                                     ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ DESCRIPTION                                                            ]*/
/*[     This function performs 11x11 box filter on a image.                ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ REVISION DATE                                                          ]*/
/*[     AUG-24-2016                                                        ]*/
/*[                                                                        ]*/
/*[========================================================================]*/

/* ======================================================================== */
/*  Reference C version of boxfilter11x11().                                */
/* ======================================================================== */
void boxfilter11x11(
    unsigned char *inp,
    int            stride,
    int            width,
    int            height,
    unsigned char *outp
    )
{
     int pixel, sum;

     int i, j, k, n, ix, iy;

     for (i = 0; i< height; i++)
     {
        for (j = 0; j < width; j++)
        {
            sum = 0;

            for (k = -5; k <= 5; k++)
            {
                iy = i + k;

                iy = iy >= height ? (height-1) : iy < 0 ? 0 : iy;

                for (n = -5; n <= 5; n++)
                {

                    ix = j + n;

                    ix = ix >= width ? (width-1) : ix < 0 ? 0 : ix;

                    pixel = inp[iy * stride + ix];

                    sum += pixel;
                }
            }

            sum = (sum *271 + (1<<14)) >> 15;    // sum /= 121;

            if ( sum <  0  ) sum = 0;
            if ( sum > 255 ) sum = 255;

            outp[i*stride + j] = sum;
        }
    }
}
