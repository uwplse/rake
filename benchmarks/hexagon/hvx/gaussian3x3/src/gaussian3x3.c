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
/*[     gaussian3x3u8                                                      ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ DESCRIPTION                                                            ]*/
/*[     This function performs Gaussian blur on an image with a kxk kernel ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ REVISION DATE                                                          ]*/
/*[     AUG-01-2014                                                        ]*/
/*[                                                                        ]*/
/*[========================================================================]*/
#include "hexagon_types.h"
#include "hvx.cfg.h"

/* ======================================================================== */
/*  Intrinsic C version of gaussian3x3u8()                                  */
/* ======================================================================== */
void Gaussian3x3u8PerRow(
    unsigned char   *restrict src,
    int             stride,
    int             width,
    unsigned char   *restrict dst
    )
{
    int i;
    HEXAGON_Vect32 const1, const2;

    HVX_Vector sLine0, sLine1, sLine2, sVsumv0O, sX_1, sX0, sX1, sX2;
    HVX_Vector sSumE, sSumO;

    HVX_VectorPair dVsumv1, dVsumv2;

    HVX_Vector *iptr0 = (HVX_Vector *)(src - 1*stride);
    HVX_Vector *iptr1 = (HVX_Vector *)(src + 0*stride);
    HVX_Vector *iptr2 = (HVX_Vector *)(src + 1*stride);
    HVX_Vector *optr  = (HVX_Vector *)(dst           );

    const1 = 0x01010101;
    const2 = 0x02020202;

    sLine0 = *iptr0++;
    sLine1 = *iptr1++;
    sLine2 = *iptr2++;

    dVsumv1 = Q6_W_vcombine_VV(Q6_V_vzero(),Q6_V_vzero());
    dVsumv2 = Q6_Wh_vmpy_VubRb(sLine1,const2);
    dVsumv2 = Q6_Wh_vmpaacc_WhWubRb(dVsumv2,Q6_W_vcombine_VV(sLine0,sLine2),const1);

    for ( i=width; i>VLEN; i-=VLEN)
    {
        sLine0 = *iptr0++;
        sLine1 = *iptr1++;
        sLine2 = *iptr2++;

        sVsumv0O= Q6_V_hi_W(dVsumv1);
        dVsumv1 = dVsumv2;
        dVsumv2 = Q6_Wh_vmpy_VubRb(sLine1,const2);
        dVsumv2 = Q6_Wh_vmpaacc_WhWubRb(dVsumv2,Q6_W_vcombine_VV(sLine0,sLine2),const1);

        sX_1= Q6_V_vlalign_VVI(Q6_V_hi_W(dVsumv1),sVsumv0O,2);
        sX0 = Q6_V_lo_W(dVsumv1);
        sX1 = Q6_V_hi_W(dVsumv1);
        sX2 = Q6_V_valign_VVI(Q6_V_lo_W(dVsumv2),Q6_V_lo_W(dVsumv1),2);

        sSumE = Q6_Vh_vadd_VhVh(Q6_Vh_vmpyiacc_VhVhRb(sX_1,sX0,const2),sX1);
        sSumO = Q6_Vh_vadd_VhVh(Q6_Vh_vmpyiacc_VhVhRb(sX0 ,sX1,const2),sX2);

        *optr++ = Q6_Vub_vasr_VhVhR_rnd_sat(sSumO,sSumE,4);
    }

    {
        sX_1= Q6_V_vlalign_VVI(Q6_V_hi_W(dVsumv2),Q6_V_hi_W(dVsumv1),2);
        sX0 = Q6_V_lo_W(dVsumv2);
        sX1 = Q6_V_hi_W(dVsumv2);
        sX2 = Q6_V_valign_VVI(Q6_V_lo_W(dVsumv2),Q6_V_lo_W(dVsumv2),2);

        sSumE = Q6_Vh_vadd_VhVh(Q6_Vh_vmpyiacc_VhVhRb(sX_1,sX0,const2),sX1);
        sSumO = Q6_Vh_vadd_VhVh(Q6_Vh_vmpyiacc_VhVhRb(sX0 ,sX1,const2),sX2);

        *optr = Q6_Vub_vasr_VhVhR_rnd_sat(sSumO,sSumE,4);
    }
}


/* ======================================================================== */
void Gaussian3x3u8(
    unsigned char   *restrict src,
    int             stride,
    int             width,
    int             height,
    unsigned char   *restrict dst
    )
{
    int y, yi;

    unsigned char *inp  = src + 1*stride;
    unsigned char *outp = dst + 1*stride;

    HEXAGON_Vect dims = 0x0000078007800003;

    for( y = 0; y < height; y+=1 )
    {
        Q6_l2fetch_AP(inp + (stride * 4), dims);

        Gaussian3x3u8PerRow( inp, stride, width, outp );

        inp  += stride;
        outp += stride;
    }
}