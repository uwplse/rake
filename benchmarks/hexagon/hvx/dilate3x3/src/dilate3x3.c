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
/*[     dilate3x3                                                          ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ DESCRIPTION                                                            ]*/
/*[     This function performs morphological dilation of an image using    ]*/
/*[     3x3 mask                                                           ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ REVISION DATE                                                          ]*/
/*[     AUG-01-2014                                                        ]*/
/*[                                                                        ]*/
/*[========================================================================]*/

/* ======================================================================== */
/*  Reference C version of dilate3x3()                                      */
/* ======================================================================== */
void dilate3x3(
    unsigned char   *src,
    int              stride_i,
    int              width,
    int              height,
    unsigned char   *dst,
    int              stride_o
    )
{
   int x, y, k, l;

   for( y = 1; y < height - 1; ++y )
   {
        for( x = 1; x < width - 1; ++x )
        {
            unsigned char maxval = 0x0;

            for( k = -1; k <=1; ++k )
            {
                for( l = -1; l <=1; ++l )
                {
                    if( maxval < src[(y+k) * stride_i + x + l])
                    {
                        maxval = src[(y+k) * stride_i + x + l];
                    }
                }
            }

            dst[y*stride_o + x] = maxval;
        }
    }
}

