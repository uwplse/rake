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
/*  Reference C version of median3x3()                                      */
/* ======================================================================== */
void median3x3(
    unsigned char   *in,
    int             stride,
    int             width,
    int             height,
    unsigned char   *out
    )
{
    unsigned char p[3][3], tmp, pmax_l, pmid_m, pmin_h, rmax, rmin;
    int i, j, m, n, idx;

    for (i=1; i < height-1; i++)
    {
        for (j=1; j< width-1; j++)
        {
            idx = i*stride + j;

            /* ------------------------------------------------------------ */
            /* load neighbour 3x3 pixels                                    */
            /* ------------------------------------------------------------ */
            for (m=0; m <3; m++)
                for (n=0; n<3; n++)
                    p[m][n] = in[idx + (m-1)*stride + (n-1)];

            /* ------------------------------------------------------------ */
            /* Find the median value of p[3][3].                            */
            /* Step 1.                                                      */
            /* Sort 3 columns of p[3][3]                                    */
            /* ------------------------------------------------------------ */
            for ( n=0; n<3; n++) {
                if (p[1][n] > p[0][n] ) {
                   tmp = p[0][n]; p[0][n] = p[1][n]; p[1][n] = tmp;
                }
                if (p[2][n] > p[0][n] ) {
                   tmp = p[0][n]; p[0][n] = p[2][n]; p[2][n] = tmp;
                }
                if (p[2][n] > p[1][n] ) {
                   tmp = p[1][n]; p[1][n] = p[2][n]; p[2][n] = tmp;
                }
            }

            /* ------------------------------------------------------------ */
            /* Step 2                                                       */
            /* Find minimum value of maximums, i.e., p[0][k]                */
            /* ------------------------------------------------------------ */
            pmax_l = p[0][0];
            if (p[0][1] < pmax_l) pmax_l = p[0][1];
            if (p[0][2] < pmax_l) pmax_l = p[0][2];

            /* ------------------------------------------------------------ */
            /* Find middle value of medians, i.e., p[1][k]                  */
            /* ------------------------------------------------------------ */
            pmid_m = p[1][0];
            rmax = (p[1][1] > p[1][2]) ? p[1][1] : p[1][2];
            rmin = (p[1][1] > p[1][2]) ? p[1][2] : p[1][1];

            if ( rmin > pmid_m ) pmid_m = rmin;
            if ( pmid_m > rmax ) pmid_m = rmax;

            /* ------------------------------------------------------------ */
            /* Find maximum value of minimus, i.e., p[2][k]                 */
            /* ------------------------------------------------------------ */
            pmin_h = p[2][0];
            if (p[2][1] > pmin_h) pmin_h = p[2][1];
            if (p[2][2] > pmin_h) pmin_h = p[2][2];

            /* ------------------------------------------------------------ */
            /* Step 3                                                       */
            /* Find middle of pmax_l, pmid_m, pmin_h;                       */
            /* ------------------------------------------------------------ */
            if ( pmin_h > pmax_l ) {
               tmp = pmax_l; pmax_l = pmin_h; pmin_h = tmp;
            }
            if ( pmin_h > pmid_m )
               pmid_m = pmin_h;
            if ( pmid_m > pmax_l )
               pmid_m = pmax_l;

            out[i*stride+j] = pmid_m;
        }
    }
}


