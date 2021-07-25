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
#include "hexagon_types.h"
#include "hvx.cfg.h"
/* ======================================================================== */
/*  Intrinsic C version of dilate3x3()                                      */
/* ======================================================================== */
void dilate3x3Per2Row(
    unsigned char   *restrict src,
    int              stride_i,
    int              width,
    unsigned char   *restrict dst,
    int              stride_o
    )
{
    int i;

    HVX_Vector sLine0, sLine1, sLine2, sLine3;
    HVX_Vector sVmax0v0, sVmax0v1, sVmax1v0, sVmax1v1;
    HVX_Vector sVmax00, sVmax10, sVmax01, sVmax11, sVmax02, sVmax12;
    HVX_Vector sMaxl1l2, sOut0, sOut1;

    HVX_Vector *inp0  = (HVX_Vector *)(src - 1*stride_i);
    HVX_Vector *inp1  = (HVX_Vector *)(src + 0*stride_i);
    HVX_Vector *inp2  = (HVX_Vector *)(src + 1*stride_i);
    HVX_Vector *inp3  = (HVX_Vector *)(src + 2*stride_i);
    HVX_Vector *outp0 = (HVX_Vector *)(dst + 0*stride_o);
    HVX_Vector *outp1 = (HVX_Vector *)(dst + 1*stride_o);

    sLine0 = *inp0++;
    sLine1 = *inp1++;
    sLine2 = *inp2++;
    sLine3 = *inp3++;
    sMaxl1l2 = Q6_Vub_vmax_VubVub(sLine1,sLine2);

    sVmax0v0 = Q6_V_vzero();
    sVmax0v1 = Q6_Vub_vmax_VubVub(sLine0,sMaxl1l2);
    sVmax1v0 = Q6_V_vzero();
    sVmax1v1 = Q6_Vub_vmax_VubVub(sMaxl1l2,sLine3);

    for ( i=width; i>VLEN; i-=VLEN )
    {
        sLine0 = *inp0++;
        sLine1 = *inp1++;
        sLine2 = *inp2++;
        sLine3 = *inp3++;
        sMaxl1l2 = Q6_Vub_vmax_VubVub(sLine1,sLine2);

        sVmax00 = Q6_V_vlalign_VVI(sVmax0v1,sVmax0v0,1);
        sVmax0v0 = sVmax0v1;
        sVmax0v1 = Q6_Vub_vmax_VubVub(sLine0,sMaxl1l2);
        sVmax01 = sVmax0v0;
        sOut0 = Q6_Vub_vmax_VubVub(sVmax00,sVmax01);
        sVmax02 = Q6_V_valign_VVI( sVmax0v1,sVmax0v0,1);
        *outp0++ = Q6_Vub_vmax_VubVub(sOut0,sVmax02);

        sVmax10 = Q6_V_vlalign_VVI(sVmax1v1,sVmax1v0,1);
        sVmax1v0 = sVmax1v1;
        sVmax1v1 = Q6_Vub_vmax_VubVub(sMaxl1l2,sLine3);
        sVmax11 = sVmax1v0;
        sOut1 = Q6_Vub_vmax_VubVub(sVmax10,sVmax11);
        sVmax12 = Q6_V_valign_VVI(sVmax1v1,sVmax1v0,1);
        *outp1++ = Q6_Vub_vmax_VubVub(sOut1,sVmax12);
    }

    {
//      sLine0 = *inp0++;
//      sLine1 = *inp1++;
//      sLine2 = *inp2++;
//      sLine3 = *inp3++;
        sMaxl1l2 = Q6_Vub_vmax_VubVub(sLine1,sLine2);

        sVmax00 = Q6_V_vlalign_VVI(sVmax0v1,sVmax0v0,1);
        sVmax0v0 = sVmax0v1;
        sVmax0v1 = Q6_Vub_vmax_VubVub(sLine0,sMaxl1l2);
        sVmax01 = sVmax0v0;
        sOut0 = Q6_Vub_vmax_VubVub(sVmax00,sVmax01);
        sVmax02 = Q6_V_valign_VVI( sVmax0v1,sVmax0v0,1);
        *outp0++ = Q6_Vub_vmax_VubVub(sOut0,sVmax02);

        sVmax10 = Q6_V_vlalign_VVI(sVmax1v1,sVmax1v0,1);
        sVmax1v0 = sVmax1v1;
        sVmax1v1 = Q6_Vub_vmax_VubVub(sMaxl1l2,sLine3);
        sVmax11 = sVmax1v0;
        sOut1 = Q6_Vub_vmax_VubVub(sVmax10,sVmax11);
        sVmax12 = Q6_V_valign_VVI(sVmax1v1,sVmax1v0,1);
        *outp1++ = Q6_Vub_vmax_VubVub(sOut1,sVmax12);
    }
}



void dilate3x3(
    unsigned char   *restrict src,
    int              stride_i,
    int              width,
    int              height,
    unsigned char   *restrict dst,
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










