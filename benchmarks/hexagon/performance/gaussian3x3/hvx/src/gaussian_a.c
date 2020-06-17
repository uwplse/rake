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
/*[     gaussian5x5u8                                                      ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ DESCRIPTION                                                            ]*/
/*[     This function performs Gaussian blur on an image with a 5x5 kernel ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ REVISION DATE                                                          ]*/
/*[     AUG-01-2014                                                        ]*/
/*[                                                                        ]*/
/*[========================================================================]*/

/* ======================================================================== */
/*  Functions defined in Assembly                                           */
/* ======================================================================== */

void Gaussian5x5u8PerRow(
    unsigned char   *src,
    int             stride,
    int             width,
    unsigned char   *dst
    );

void Gaussian5x5u8(
    unsigned char   *src,
    int             stride,
    int             width,
    int             height,
    unsigned char   *dst
    )
{
    int y;

    unsigned char *inp  = src + 2*stride;
    unsigned char *outp = dst + 2*stride;

    for( y = 2; y < height - 2; y++ )
    {
        Gaussian5x5u8PerRow( inp, stride, width, outp );

        inp  += stride;
        outp += stride;
    }
}