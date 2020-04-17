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
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/* ======================================================================== */
/*  Reference C version of sobel()                                          */
/* ======================================================================== */
void sobel(
    unsigned char   *in,
    int              stride,
    int              width,
    int              height,
    unsigned char   *out
    )
{
    unsigned char p00, p01, p02,p10,p11,p12,p20,p21,p22;
    int H, V, sum;
    int i, j, idx;

    for (i = 1; i < height-1 ; i++)
    {
        for (j = 1; j < width-1; j++)
        {
           idx = i*stride + j;
           /* ------------------------------------------------------------- */
           /*  load 3x3 neighbour pixels from the input.                    */
           /* ------------------------------------------------------------- */
           p00 = in[idx - stride -1];
           p01 = in[idx - stride   ];
           p02 = in[idx - stride +1];

           p10 = in[idx         -1];
           p11 = in[idx           ];
           p12 = in[idx         +1];

           p20 = in[idx + stride -1];
           p21 = in[idx + stride   ];
           p22 = in[idx + stride +1];
           /* ------------------------------------------------------------- */
           /*  Apply horizontal and vertical filter masks.                  */
           /* ------------------------------------------------------------- */
           H =   p00 + 2*p01 + p02
               - p20 - 2*p21 - p22;

           V =    p00 -   p02 +
                2*p10 - 2*p12 +
                  p20 -   p22 ;

           sum = abs(H) + abs(V);

           /* ------------------------------------------------------------- */
           /*  Saturate output.                                             */
           /* ------------------------------------------------------------- */
           out[i*stride+j] = (sum > 255) ? 255 : sum;

        }
    }
}


