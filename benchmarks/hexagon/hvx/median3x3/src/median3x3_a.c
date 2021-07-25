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
/*[     median3x3                                                          ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ DESCRIPTION                                                            ]*/
/*[     This function performs 3x3 median filter operation on a image.     ]*/
/*[     The filter runs through the image pixel by pixel, replacing each   ]*/
/*[     pixel with the median of 9 pixels including and surronding it.     ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ REVISION DATE                                                          ]*/
/*[     AUG-01-2014                                                        ]*/
/*[                                                                        ]*/
/*[========================================================================]*/

/* ======================================================================== */
/*  Functions defined in Assembly                                           */
/* ======================================================================== */
void median3x3PerRow(
    unsigned char   *in,
    int             stride,
    int             width,
    unsigned char   *out
    );


/* ======================================================================== */
void median3x3(
    unsigned char   *in,
    int             stride,
    int             width,
    int             height,
    unsigned char   *out
    )
{
    int i;
    unsigned char *input  = in  + 1*stride;
    unsigned char *output = out + 1*stride;

    for (i = 1; i< (height-1); i++)
    {
       median3x3PerRow( input, stride, width, output );

       input += stride;
       output+= stride;
   }
}

