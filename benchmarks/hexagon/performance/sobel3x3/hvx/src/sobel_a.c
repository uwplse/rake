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
/*[     sobel                                                              ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ DESCRIPTION                                                            ]*/
/*[     This function performs a soble operator on an image. The operator  ]*/
/*[     convolves the following two 3x3 kernels with the original image    ]*/
/*[     to calculate approximations of the derivatives for horizontal and  ]*/
/*[     vertical changes.                                                  ]*/
/*[         Horizontal:                                                    ]*/
/*[              1  2  1                                                   ]*/
/*[              0  0  0                                                   ]*/
/*[             -1 -2 -1                                                   ]*/
/*[                                                                        ]*/
/*[         Vertical:                                                      ]*/
/*[              1  0  -1                                                  ]*/
/*[              2  0  -2                                                  ]*/
/*[              1  0  -1                                                  ]*/
/*[                                                                        ]*/
/*[     At each point in the image, the resulting gradient is approximated ]*/
/*[     by combining horizontal and vertical gradient magnitudes.          ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ REVISION DATE                                                          ]*/
/*[     AUG-01-2014                                                        ]*/
/*[                                                                        ]*/
/*[========================================================================]*/

/* ======================================================================== */
/*  Functions defined in Assembly                                           */
/* ======================================================================== */
void sobelPer2Row(
    unsigned char *inp,
    int            stride,
    int            width,
    unsigned char *outp
    );

/* ======================================================================== */
void sobel(
    unsigned char   *in,
    int              stride,
    int              width,
    int              height,
    unsigned char   *out
    )
{
    int i;
    unsigned char *input  = in  + 1*stride;
    unsigned char *output = out + 1*stride;

    for (i = 1; i< (height-1); i+=2)
    {
       sobelPer2Row( input, stride, width, output );

       input += 2*stride;
       output+= 2*stride;
   }
}


