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
/*[     Gaussian                                                           ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ DESCRIPTION                                                            ]*/
/*[     These functions perform Gaussian blur on an image with a 3x3/5x5/  ]*/
/*[ 7x7 kernel                                                             ]*/
/*[------------------------------------------------------------------------]*/
/*[ REVISION DATE                                                          ]*/
/*[     AUG-01-2014                                                        ]*/
/*[                                                                        ]*/
/*[========================================================================]*/

/* ======================================================================== */
/*  Reference C version of gaussian3x3u8()                                  */
/* ======================================================================== */
void Gaussian3x3u8(
    unsigned char   *src,
    int             stride,
    int             width,
    int             height,
    unsigned char   *dst
    )
{
    unsigned int col[3];

    int x, y, i;

    for( y=1; y<(height-1); ++y )
    {
        for (x=1; x<(width-1); ++x)
        {
            for (i=0; i<3; i++)
            {
                col[i] = (unsigned int)(1*src[(y-1)*stride+x-1+i] +
                                        2*src[(y+0)*stride+x-1+i] +
                                        1*src[(y+1)*stride+x-1+i]     );

            }

            dst[y*stride+x] = (unsigned char)((1*col[0]+2*col[1]+1*col[2]+(1<<3))>>4);
        }
    }
}

/* ======================================================================== */
/*  Reference C version of gaussian5x5u8()                                  */
/* ======================================================================== */
void Gaussian5x5u8(
    unsigned char   *src,
    int             stride,
    int             width,
    int             height,
    unsigned char   *dst
    )
{
    unsigned int col[5];

    int x, y, i;

    for( y=2; y<(height-2); ++y )
    {
        for (x=2; x<(width-2); ++x)
        {
            for (i=0; i<5; i++)
            {
                col[i] = (unsigned int)(1*src[(y-2)*stride+(x-2)+i] +
                                        4*src[(y-1)*stride+(x-2)+i] +
                                        6*src[(y+0)*stride+(x-2)+i] +
                                        4*src[(y+1)*stride+(x-2)+i] +
                                        1*src[(y+2)*stride+(x-2)+i]     );

            }

            dst[y*stride+x] = (unsigned char)((1*col[0]+4*col[1]+6*col[2]+4*col[3]+1*col[4])>>8);
        }
    }
}

/* ======================================================================== */
/*  Reference C version of gaussian7x7u8()                                  */
/* ======================================================================== */
const int GAUSS_7x7[7*7] = {
   1,   6,  15,  20,  15,   6,  1,
   6,  36,  90, 120,  90,  36,  6,
  15,  90, 225, 300, 225,  90, 15,
  20, 120, 300, 400, 300, 120, 20,
  15,  90, 225, 300, 225,  90, 15,
   6,  36,  90, 120,  90,  36,  6,
   1,   6,  15,  20,  15,   6,  1
};


void Gaussian7x7u8(
    unsigned char *src,
    int            stride,
    int            width,
    int            height,
    unsigned char *dst
    )
{

    int x, y, s, t;
    int sum, out;

    for (y = 3; y < height - 3; y++)
    {
        for (x = 3; x < width - 3; x++)
        {
            sum = 0;

            for (t = -3; t <= 3; t++)
            {
                for (s = -3; s <= 3; s++)
                {
                    sum += src[(y+t)*stride + x+s] * GAUSS_7x7[((t+3)*7)+(s+3)];
                }
            }

            out  = sum >> 12;
            out = out < 0 ? 0 : out > 255 ? 255 : out;

            dst[y*stride + x] = (unsigned char)out;
        }
    }
}

