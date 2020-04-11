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
/*[     conv3x3                                                            ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ DESCRIPTION                                                            ]*/
/*[     This function applies a 3x3 kernel to filter a image.              ]*/
/*[     During the computation, 16bit accumulator is assumed, therefore    ]*/
/*[     The absolute value of the summation of all coefficients must be    ]*/
/*[     no more than 128.                                                  ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ REVISION DATE                                                          ]*/
/*[     AUG-01-2014                                                        ]*/
/*[                                                                        ]*/
/*[========================================================================]*/

/* ======================================================================== */
/*  Reference C version of conv3x3().                                       */
/* ======================================================================== */
void conv3x3(
    unsigned char *inp,
    int            stride_i,
    int            width,
    int            height,
    signed char   *mask,
    int            shift,
    unsigned char *outp,
    int            stride_o
    )
{
     short pixel, maskv;
     short sum;

     int i, j, k, n;

     for (i = 1; i< (height-1); i++)
     {
        for (j = 1; j < (width-1); j++)
        {
            sum = 0;

            for (k = 0; k < 3; k++)
            {
                for (n = 0; n < 3; n++)
                {
                    pixel = inp[(i-1+k)*stride_i + (j-1+n)];
                    maskv = mask[k*3+n];
                    sum += pixel * maskv;
                }
            }

            sum = (sum >> shift);

            if ( sum <  0  ) sum = 0;
            if ( sum > 255 ) sum = 255;

            outp[i*stride_o + j] = sum;
        }
    }
}
