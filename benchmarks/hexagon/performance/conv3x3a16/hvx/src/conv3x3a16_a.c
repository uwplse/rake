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
/*  Functions defined in Assembly                                           */
/* ======================================================================== */
void conv3x3Per2Row(
    unsigned char *inp,
    int            stride_i,
    int            width,
    signed char   *mask,
    int            shift,
    unsigned char *outp,
    int            stride_o
    );


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
    int i;
    unsigned char *input  = inp  + 1*stride_i;
    unsigned char *output = outp + 1*stride_o;

    for (i = 1; i< (height-1); i+=2)
    {
       conv3x3Per2Row( input, stride_i, width, mask, shift, output, stride_o );

       input += 2*stride_i;
       output+= 2*stride_o;
   }
}
