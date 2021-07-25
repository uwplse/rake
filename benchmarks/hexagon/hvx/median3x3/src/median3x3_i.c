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
#include "hexagon_types.h"
#include "hvx.cfg.h"

/* ======================================================================== */
/*  Intrinsic C version of median3x3()                                      */
/* ======================================================================== */
void median3x3PerRow(
    unsigned char   *restrict in,
    int             stride,
    int             width,
    unsigned char   *restrict out
    )
{
    int i;

    HVX_Vector sLine0, sLine1, sLine2, sMaxr01, sMinr01;
    HVX_Vector sRmaxv0, sRmaxv1, sRminv0, sRminv1, sRmidv0, sRmidv1;
    HVX_Vector sRmax0, sRmax1, sRmax2, sRmin0, sRmin1, sRmin2, sRmid0, sRmid1, sRmid2;
    HVX_Vector sMinRmax01, sMaxRmin01, sMaxRmid01, sMinRmid01;
    HVX_Vector sMinMax, sMaxMin, sMidMid, sMaxt, sMint, sMedian;

    HVX_Vector *iptr0 = (HVX_Vector *)(in  - 1*stride);
    HVX_Vector *iptr1 = (HVX_Vector *)(in  + 0*stride);
    HVX_Vector *iptr2 = (HVX_Vector *)(in  + 1*stride);
    HVX_Vector *optr  = (HVX_Vector *)(out           );


    sRmaxv0 = Q6_V_vzero();
    sRminv0 = Q6_V_vzero();
    sRmidv0 = Q6_V_vzero();

    sLine0 = *iptr0++;
    sLine1 = *iptr1++;
    sLine2 = *iptr2++;

    sMaxr01 = Q6_Vub_vmax_VubVub(sLine0,sLine1);
    sMinr01 = Q6_Vub_vmin_VubVub(sLine0,sLine1);
    sRmaxv1 = Q6_Vub_vmax_VubVub(sMaxr01,sLine2);
    sRminv1 = Q6_Vub_vmin_VubVub(sMinr01,sLine2);
    sRmidv1 = Q6_Vub_vmin_VubVub(sMaxr01,sLine2);
    sRmidv1 = Q6_Vub_vmax_VubVub(sMinr01,sRmidv1);

    for ( i=width; i>VLEN; i-=VLEN )
    {
        sRmax0 = Q6_V_vlalign_VVI(sRmaxv1,sRmaxv0,1);
        sRmin0 = Q6_V_vlalign_VVI(sRminv1,sRminv0,1);
        sRmid0 = Q6_V_vlalign_VVI(sRmidv1,sRmidv0,1);

        sRmaxv0 = sRmaxv1;
        sRminv0 = sRminv1;
        sRmidv0 = sRmidv1;

        sLine0 = *iptr0++;
        sLine1 = *iptr1++;
        sLine2 = *iptr2++;

        // Step 1. sort 3 columns
        sMaxr01 = Q6_Vub_vmax_VubVub(sLine0,sLine1);
        sMinr01 = Q6_Vub_vmin_VubVub(sLine0,sLine1);
        sRmaxv1 = Q6_Vub_vmax_VubVub(sMaxr01,sLine2);
        sRminv1 = Q6_Vub_vmin_VubVub(sMinr01,sLine2);
        sRmidv1 = Q6_Vub_vmin_VubVub(sMaxr01,sLine2);
        sRmidv1 = Q6_Vub_vmax_VubVub(sMinr01,sRmidv1);

        // Step 2.
        sRmax1 = sRmaxv0;
        sRmin1 = sRminv0;
        sRmid1 = sRmidv0;

        sRmax2 = Q6_V_valign_VVI(sRmaxv1,sRmaxv0,1);
        sRmin2 = Q6_V_valign_VVI(sRminv1,sRminv0,1);
        sRmid2 = Q6_V_valign_VVI(sRmidv1,sRmidv0,1);

        // Find minimum value of maximums
        sMinRmax01 = Q6_Vub_vmin_VubVub(sRmax0,sRmax1);
        sMinMax    = Q6_Vub_vmin_VubVub(sMinRmax01,sRmax2);
        // Find maximum value of minimums
        sMaxRmin01 = Q6_Vub_vmax_VubVub(sRmin0,sRmin1);
        sMaxMin    = Q6_Vub_vmax_VubVub(sMaxRmin01,sRmin2);
        // Find middle value of medians
        sMaxRmid01 = Q6_Vub_vmax_VubVub(sRmid0,sRmid1);
        sMinRmid01 = Q6_Vub_vmin_VubVub(sRmid0,sRmid1);
        sMidMid    = Q6_Vub_vmin_VubVub(sMaxRmid01,sRmid2);
        sMidMid    = Q6_Vub_vmax_VubVub(sMinRmid01,sMidMid);

        // Step 3. Find middle of minmax, maxmin, midmid
        sMaxt   = Q6_Vub_vmax_VubVub(sMinMax,sMaxMin);
        sMint   = Q6_Vub_vmin_VubVub(sMinMax,sMaxMin);
        sMedian = Q6_Vub_vmin_VubVub(sMaxt,sMidMid);
        sMedian = Q6_Vub_vmax_VubVub(sMint,sMedian);

        *optr++ = sMedian;
    }

    // Unroll once to avoid out-of-boundary load
    {
        sRmax0 = Q6_V_vlalign_VVI(sRmaxv1,sRmaxv0,1);
        sRmin0 = Q6_V_vlalign_VVI(sRminv1,sRminv0,1);
        sRmid0 = Q6_V_vlalign_VVI(sRmidv1,sRmidv0,1);

        sRmaxv0 = sRmaxv1;
        sRminv0 = sRminv1;
        sRmidv0 = sRmidv1;

//      sLine0 = *iptr0++;
//      sLine1 = *iptr1++;
//      sLine2 = *iptr2++;

        // Step 1. sort 3 columns
        sMaxr01 = Q6_Vub_vmax_VubVub(sLine0,sLine1);
        sMinr01 = Q6_Vub_vmin_VubVub(sLine0,sLine1);
        sRmaxv1 = Q6_Vub_vmax_VubVub(sMaxr01,sLine2);
        sRminv1 = Q6_Vub_vmin_VubVub(sMinr01,sLine2);
        sRmidv1 = Q6_Vub_vmin_VubVub(sMaxr01,sLine2);
        sRmidv1 = Q6_Vub_vmax_VubVub(sMinr01,sRmidv1);

        // Step 2.
        sRmax1 = sRmaxv0;
        sRmin1 = sRminv0;
        sRmid1 = sRmidv0;

        sRmax2 = Q6_V_valign_VVI(sRmaxv1,sRmaxv0,1);
        sRmin2 = Q6_V_valign_VVI(sRminv1,sRminv0,1);
        sRmid2 = Q6_V_valign_VVI(sRmidv1,sRmidv0,1);

        // Find minimum value of maximums
        sMinRmax01 = Q6_Vub_vmin_VubVub(sRmax0,sRmax1);
        sMinMax    = Q6_Vub_vmin_VubVub(sMinRmax01,sRmax2);
        // Find maximum value of minimums
        sMaxRmin01 = Q6_Vub_vmax_VubVub(sRmin0,sRmin1);
        sMaxMin    = Q6_Vub_vmax_VubVub(sMaxRmin01,sRmin2);
        // Find middle value of medians
        sMaxRmid01 = Q6_Vub_vmax_VubVub(sRmid0,sRmid1);
        sMinRmid01 = Q6_Vub_vmin_VubVub(sRmid0,sRmid1);
        sMidMid    = Q6_Vub_vmin_VubVub(sMaxRmid01,sRmid2);
        sMidMid    = Q6_Vub_vmax_VubVub(sMinRmid01,sMidMid);

        // Step 3. Find middle of minmax, maxmin, midmid
        sMaxt   = Q6_Vub_vmax_VubVub(sMinMax,sMaxMin);
        sMint   = Q6_Vub_vmin_VubVub(sMinMax,sMaxMin);
        sMedian = Q6_Vub_vmin_VubVub(sMaxt,sMidMid);
        sMedian = Q6_Vub_vmax_VubVub(sMint,sMedian);

        *optr++ = sMedian;
    }
}


/* ======================================================================== */
void median3x3(
    unsigned char   *restrict in,
    int             stride,
    int             width,
    int             height,
    unsigned char   *restrict out
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


