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
/*[     During the computation, 32bit accumulator is used.                 ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ REVISION DATE                                                          ]*/
/*[     AUG-01-2014                                                        ]*/
/*[                                                                        ]*/
/*[========================================================================]*/

/* ======================================================================== */
/*  Functions defined in Assembly                                           */
/* ======================================================================== */
void conv3x3Per2Row(
    unsigned char *inp,
    int            stride,
    int            width,
    signed char   *mask,
    int            shift,
    unsigned char *outp
    );

/* ======================================================================== */
void conv3x3(
    unsigned char *inp,
    int            stride,
    int            width,
    int            height,
    signed char   *mask,
    int            shift,
    unsigned char *outp
    )
{
    int i;
    unsigned char *input  = inp  + 1*stride;
    unsigned char *output = outp + 1*stride;

    for (i = 1; i< (height-1); i+=2)
    {
       conv3x3Per2Row( input, stride, width, mask, shift, output );

       input += 2*stride;
       output+= 2*stride;
   }
}
