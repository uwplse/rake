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
/*  Functions defined in Assembly                                           */
/* ======================================================================== */
void dilate3x3Per2Row(
    unsigned char   *src,
    int              stride_i,
    int              width,
    unsigned char   *dst,
    int              stride_o
    );


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
    int y;

    unsigned char *inp  = src + stride_i;
    unsigned char *outp = dst + stride_o;

    for( y = 1; y < height - 1; y+=2 )
    {
        dilate3x3Per2Row( inp, stride_i, width, outp, stride_o );
        inp  += 2*stride_i;
        outp += 2*stride_o;
    }
}

