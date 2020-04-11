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
/*[     gaussian5x5u8                                                      ]*/
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
    int y;

    unsigned char *inp  = src + 1*stride;
    unsigned char *outp = dst + 1*stride;

    for( y = 1; y < height - 1; y++ )
    {
        Gaussian3x3u8PerRow( inp, stride, width, outp );

        inp  += stride;
        outp += stride;
    }
}


/* ======================================================================== */
/*  Intrinsic C version of gaussian5x5u8()                                  */
/* ======================================================================== */
void Gaussian5x5u8PerRow(
    unsigned char   *restrict src,
    int             stride,
    int             width,
    unsigned char   *restrict dst
    )
{
    int i;
    HEXAGON_Vect32 const4, const6;

    HVX_Vector sLine0, sLine1, sLine2, sLine3, sLine4;
    HVX_Vector sVsum0, sVsum1, sVsum2, sVsum3, sVsum4, sVsum5;
    HVX_Vector sVsum1a3, sVsum2a4, sSumE, sSumO;

    HVX_VectorPair dVsumv0, dVsumv1, dVsumv2;

    HVX_Vector *iptr0 = (HVX_Vector *)(src - 2*stride);
    HVX_Vector *iptr1 = (HVX_Vector *)(src - 1*stride);
    HVX_Vector *iptr2 = (HVX_Vector *)(src + 0*stride);
    HVX_Vector *iptr3 = (HVX_Vector *)(src + 1*stride);
    HVX_Vector *iptr4 = (HVX_Vector *)(src + 2*stride);
    HVX_Vector *optr  = (HVX_Vector *)(dst           );

    const4 = 0x04040404;
    const6 = 0x06060606;

    dVsumv0 = Q6_W_vcombine_VV(Q6_V_vzero(),Q6_V_vzero());
    dVsumv1 = dVsumv0;

    sLine0 = *iptr0++;
    sLine1 = *iptr1++;
    sLine2 = *iptr2++;
    sLine3 = *iptr3++;
    sLine4 = *iptr4++;

    dVsumv2 = Q6_Wh_vadd_VubVub(sLine0,sLine4);
    dVsumv2 = Q6_Wh_vmpyacc_WhVubRb(dVsumv2,sLine2,const6);
    dVsumv2 = Q6_Wh_vmpaacc_WhWubRb(dVsumv2,Q6_W_vcombine_VV(sLine3,sLine1),const4);

    for ( i=width; i>VLEN; i-=VLEN)
    {
        sLine0 = *iptr0++;
        sLine1 = *iptr1++;
        sLine2 = *iptr2++;
        sLine3 = *iptr3++;
        sLine4 = *iptr4++;

        dVsumv0 = dVsumv1;
        dVsumv1 = dVsumv2;
        dVsumv2 = Q6_Wh_vadd_VubVub(sLine0,sLine4);
        dVsumv2 = Q6_Wh_vmpyacc_WhVubRb(dVsumv2,sLine2,const6);
        dVsumv2 = Q6_Wh_vmpaacc_WhWubRb(dVsumv2,Q6_W_vcombine_VV(sLine3,sLine1),const4);

        sVsum0 = Q6_V_vlalign_VVI(Q6_V_lo_W(dVsumv1),Q6_V_lo_W(dVsumv0),2);
        sVsum1 = Q6_V_vlalign_VVI(Q6_V_hi_W(dVsumv1),Q6_V_hi_W(dVsumv0),2);
        sVsum2 = Q6_V_lo_W(dVsumv1);
        sVsum3 = Q6_V_hi_W(dVsumv1);
        sVsum4 = Q6_V_valign_VVI( Q6_V_lo_W(dVsumv2),Q6_V_lo_W(dVsumv1),2);
        sVsum5 = Q6_V_valign_VVI( Q6_V_hi_W(dVsumv2),Q6_V_hi_W(dVsumv1),2);

        sVsum1a3 = Q6_Vh_vadd_VhVh(sVsum1,sVsum3);
        sVsum2a4 = Q6_Vh_vadd_VhVh(sVsum2,sVsum4);

        sSumE = Q6_Vh_vadd_VhVh(sVsum0,sVsum4);
        sSumE = Q6_Vw_vmpyiacc_VwVwRb(sSumE,sVsum2,const6);
        sSumE = Q6_Vw_vmpyiacc_VwVwRb(sSumE,sVsum1a3,const4);
        sSumO = Q6_Vh_vadd_VhVh(sVsum1,sVsum5);
        sSumO = Q6_Vw_vmpyiacc_VwVwRb(sSumO,sVsum3,const6);
        sSumO = Q6_Vw_vmpyiacc_VwVwRb(sSumO,sVsum2a4,const4);

        *optr++ = Q6_Vb_vshuffo_VbVb(sSumO,sSumE);
    }

    {
//      sLine0 = *iptr0++;
//      sLine1 = *iptr1++;
//      sLine2 = *iptr2++;
//      sLine3 = *iptr3++;
//      sLine4 = *iptr4++;

        dVsumv0 = dVsumv1;
        dVsumv1 = dVsumv2;
//      dVsumv2 = Q6_Wh_vadd_VubVub(sLine0,sLine4);
//      dVsumv2 = Q6_Wh_vmpyacc_WhVubRb(dVsumv2,sLine2,const6);
//      dVsumv2 = Q6_Wh_vmpaacc_WhWubRb(dVsumv2,Q6_W_vcombine_VV(sLine3,sLine1),const4);

        sVsum0 = Q6_V_vlalign_VVI(Q6_V_lo_W(dVsumv1),Q6_V_lo_W(dVsumv0),2);
        sVsum1 = Q6_V_vlalign_VVI(Q6_V_hi_W(dVsumv1),Q6_V_hi_W(dVsumv0),2);
        sVsum2 = Q6_V_lo_W(dVsumv1);
        sVsum3 = Q6_V_hi_W(dVsumv1);
        sVsum4 = Q6_V_valign_VVI( Q6_V_lo_W(dVsumv2),Q6_V_lo_W(dVsumv1),2);
        sVsum5 = Q6_V_valign_VVI( Q6_V_hi_W(dVsumv2),Q6_V_hi_W(dVsumv1),2);

        sVsum1a3 = Q6_Vh_vadd_VhVh(sVsum1,sVsum3);
        sVsum2a4 = Q6_Vh_vadd_VhVh(sVsum2,sVsum4);

        sSumE = Q6_Vh_vadd_VhVh(sVsum0,sVsum4);
        sSumE = Q6_Vw_vmpyiacc_VwVwRb(sSumE,sVsum2,const6);
        sSumE = Q6_Vw_vmpyiacc_VwVwRb(sSumE,sVsum1a3,const4);
        sSumO = Q6_Vh_vadd_VhVh(sVsum1,sVsum5);
        sSumO = Q6_Vw_vmpyiacc_VwVwRb(sSumO,sVsum3,const6);
        sSumO = Q6_Vw_vmpyiacc_VwVwRb(sSumO,sVsum2a4,const4);

        *optr++ = Q6_Vb_vshuffo_VbVb(sSumO,sSumE);
    }
}


/* ======================================================================== */
void Gaussian5x5u8(
    unsigned char   *restrict src,
    int             stride,
    int             width,
    int             height,
    unsigned char   *restrict dst
    )
{
    int y;

    unsigned char *inp  = src + 2*stride;
    unsigned char *outp = dst + 2*stride;

    for( y = 2; y < height - 2; y++ )
    {
        Gaussian5x5u8PerRow( inp, stride, width, outp );

        inp  += stride;
        outp += stride;
    }
}


/* ======================================================================== */
/*  Intrinsic C version of gaussian7x7u8()                                  */
/* ======================================================================== */
void Gaussian7x7u8PerRow(
    unsigned char   *restrict src,
    int             stride,
    int             width,
    unsigned char   *restrict dst
    )
{

    int i;

    HVX_Vector sLine0, sLine1, sLine2, sLine3, sLine4, sLine5, sLine6;
    HVX_Vector sX_1, sX_2, sX_3, sX0, sX1, sX2, sX3, sX4, sOut02, sOut13;
    HVX_VectorPair dVsum, dXV0, dXV1, dSum02, dSum13;

    HVX_Vector *iptr0 = (HVX_Vector *)(src - 3*stride);
    HVX_Vector *iptr1 = (HVX_Vector *)(src - 2*stride);
    HVX_Vector *iptr2 = (HVX_Vector *)(src - 1*stride);
    HVX_Vector *iptr3 = (HVX_Vector *)(src + 0*stride);
    HVX_Vector *iptr4 = (HVX_Vector *)(src + 1*stride);
    HVX_Vector *iptr5 = (HVX_Vector *)(src + 2*stride);
    HVX_Vector *iptr6 = (HVX_Vector *)(src + 3*stride);
    HVX_Vector *optr  = (HVX_Vector *)(dst           );

    sLine0 = *iptr0++;
    sLine1 = *iptr1++;
    sLine2 = *iptr2++;
    sLine3 = *iptr3++;
    sLine4 = *iptr4++;
    sLine5 = *iptr5++;
    sLine6 = *iptr6++;

    dXV0 = Q6_W_vcombine_VV(Q6_V_vzero(),Q6_V_vzero());
    dXV1 = Q6_Wh_vadd_VubVub(sLine6,sLine0);
    dXV1 = Q6_Wh_vmpaacc_WhWubRb(dXV1,Q6_W_vcombine_VV(sLine5,sLine1),0x06060606);
    dXV1 = Q6_Wh_vmpaacc_WhWubRb(dXV1,Q6_W_vcombine_VV(sLine4,sLine2),0x0F0F0F0F);
    dXV1 = Q6_Wh_vmpyacc_WhVubRb(dXV1,sLine3,0x14141414);

    for ( i=width; i>VLEN; i-=VLEN)
    {
        sLine0 = *iptr0++;
        sLine1 = *iptr1++;
        sLine2 = *iptr2++;
        sLine3 = *iptr3++;
        sLine4 = *iptr4++;
        sLine5 = *iptr5++;
        sLine6 = *iptr6++;

        sX_1 = Q6_V_vlalign_VVI(Q6_V_hi_W(dXV1),Q6_V_hi_W(dXV0),2);
        sX_2 = Q6_V_vlalign_VVI(Q6_V_lo_W(dXV1),Q6_V_lo_W(dXV0),2);
        sX_3 = Q6_V_vlalign_VVI(Q6_V_hi_W(dXV1),Q6_V_hi_W(dXV0),4);

        dVsum = Q6_Wh_vadd_VubVub(sLine6,sLine0);
        dVsum = Q6_Wh_vmpaacc_WhWubRb(dVsum,Q6_W_vcombine_VV(sLine5,sLine1),0x06060606);
        dVsum = Q6_Wh_vmpaacc_WhWubRb(dVsum,Q6_W_vcombine_VV(sLine4,sLine2),0x0F0F0F0F);
        dVsum = Q6_Wh_vmpyacc_WhVubRb(dVsum,sLine3,0x14141414);

        dXV0 = dXV1;
        dXV1 = dVsum;

        sX0 = Q6_V_lo_W(dXV0);
        sX1 = Q6_V_hi_W(dXV0);
        sX2 = Q6_V_valign_VVI(Q6_V_lo_W(dXV1),Q6_V_lo_W(dXV0),2);
        sX3 = Q6_V_valign_VVI(Q6_V_hi_W(dXV1),Q6_V_hi_W(dXV0),2);
        sX4 = Q6_V_valign_VVI(Q6_V_lo_W(dXV1),Q6_V_lo_W(dXV0),4);

        dSum02 = Q6_Ww_vmpa_WhRb(Q6_W_vcombine_VV(Q6_Vh_vadd_VhVh(sX1,sX_1), sX0),0x0F140F14);
        dSum13 = Q6_Ww_vmpa_WhRb(Q6_W_vcombine_VV(Q6_Vh_vadd_VhVh(sX2,sX0 ), sX1),0x0F140F14);
        dSum02 = Q6_Ww_vmpaacc_WwWhRb(dSum02,Q6_W_vcombine_VV(Q6_Vh_vadd_VhVh(sX3,sX_3),Q6_Vh_vadd_VhVh(sX2,sX_2)),0x01060106);
        dSum13 = Q6_Ww_vmpaacc_WwWhRb(dSum13,Q6_W_vcombine_VV(Q6_Vh_vadd_VhVh(sX4,sX_2),Q6_Vh_vadd_VhVh(sX3,sX_1)),0x01060106);

        sOut02 = Q6_Vh_vasr_VwVwR(Q6_V_hi_W(dSum02),Q6_V_lo_W(dSum02),12);
        sOut13 = Q6_Vh_vasr_VwVwR(Q6_V_hi_W(dSum13),Q6_V_lo_W(dSum13),12);
       
        *optr++ = Q6_Vb_vshuffe_VbVb(sOut13,sOut02);
    }

    {
        sX_1 = Q6_V_vlalign_VVI(Q6_V_hi_W(dXV1),Q6_V_hi_W(dXV0),2);
        sX_2 = Q6_V_vlalign_VVI(Q6_V_lo_W(dXV1),Q6_V_lo_W(dXV0),2);
        sX_3 = Q6_V_vlalign_VVI(Q6_V_hi_W(dXV1),Q6_V_hi_W(dXV0),4);

        dXV0 = dXV1;
        dXV1 = Q6_W_vcombine_VV(Q6_V_vzero(),Q6_V_vzero());

        sX0 = Q6_V_lo_W(dXV0);
        sX1 = Q6_V_hi_W(dXV0);
        sX2 = Q6_V_valign_VVI(Q6_V_lo_W(dXV1),Q6_V_lo_W(dXV0),2);
        sX3 = Q6_V_valign_VVI(Q6_V_hi_W(dXV1),Q6_V_hi_W(dXV0),2);
        sX4 = Q6_V_valign_VVI(Q6_V_lo_W(dXV1),Q6_V_lo_W(dXV0),4);

        dSum02 = Q6_Ww_vmpa_WhRb(Q6_W_vcombine_VV(Q6_Vh_vadd_VhVh(sX1,sX_1), sX0),0x0F140F14);
        dSum13 = Q6_Ww_vmpa_WhRb(Q6_W_vcombine_VV(Q6_Vh_vadd_VhVh(sX2,sX0 ), sX1),0x0F140F14);
        dSum02 = Q6_Ww_vmpaacc_WwWhRb(dSum02,Q6_W_vcombine_VV(Q6_Vh_vadd_VhVh(sX3,sX_3),Q6_Vh_vadd_VhVh(sX2,sX_2)),0x01060106);
        dSum13 = Q6_Ww_vmpaacc_WwWhRb(dSum13,Q6_W_vcombine_VV(Q6_Vh_vadd_VhVh(sX4,sX_2),Q6_Vh_vadd_VhVh(sX3,sX_1)),0x01060106);

        sOut02 = Q6_Vh_vasr_VwVwR(Q6_V_hi_W(dSum02),Q6_V_lo_W(dSum02),12);
        sOut13 = Q6_Vh_vasr_VwVwR(Q6_V_hi_W(dSum13),Q6_V_lo_W(dSum13),12);
       
        *optr++ = Q6_Vb_vshuffe_VbVb(sOut13,sOut02);
    }
}


/* ======================================================================== */
void Gaussian7x7u8(
    unsigned char   *restrict src,
    int             stride,
    int             width,
    int             height,
    unsigned char   *restrict dst
    )
{
    int y;

    unsigned char *inp  = src + 3*stride;
    unsigned char *outp = dst + 3*stride;

    for( y = 3; y < height - 3; y++ )
    {
        Gaussian7x7u8PerRow( inp, stride, width, outp );

        inp  += stride;
        outp += stride;
    }
}
