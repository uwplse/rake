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
/*[     During the computation, 16bit accumulator is used.                 ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ REVISION DATE                                                          ]*/
/*[     AUG-01-2014                                                        ]*/
/*[                                                                        ]*/
/*[========================================================================]*/
#include "hexagon_types.h"
#include "hvx.cfg.h"

/* ======================================================================== */
/*  Intrinsic C version of conv3x3().                                       */
/* ======================================================================== */
void conv3x3Per2Row(
    unsigned char *restrict inp,
    int            stride,
    int            width,
    signed char   *restrict mask,
    int            shift,
    unsigned char *restrict outp
    )
{
    int i;
    HEXAGON_Vect32 __m2m1m0, __m5m4m3, __m8m7m6;
    HEXAGON_Vect32 *mask4 = (HEXAGON_Vect32 *)mask;

    HVX_Vector sline000,sline004,sline064;
    HVX_Vector sline100,sline104,sline164;
    HVX_Vector sline200,sline204,sline264;
    HVX_Vector sline300,sline304,sline364;
    HVX_Vector sSum20L, sSum31L, sSum20H, sSum31H;
    HVX_Vector sOut01, sOut01p, sOut11, sOut11p, sOut00, sOut10;

    HVX_VectorPair dline000,dline100, dline200,dline300;
    HVX_VectorPair dSum020, dSum031, dSum120, dSum131;

    __m2m1m0 = mask4[0];
    __m5m4m3 = mask4[1];
    __m8m7m6 = mask4[2];

    HVX_Vector *iptr0 = (HVX_Vector *)(inp  - 1*stride);
    HVX_Vector *iptr1 = (HVX_Vector *)(inp  + 0*stride);
    HVX_Vector *iptr2 = (HVX_Vector *)(inp  + 1*stride);
    HVX_Vector *iptr3 = (HVX_Vector *)(inp  + 2*stride);
    HVX_Vector *optr0 = (HVX_Vector *)(outp + 0*stride);
    HVX_Vector *optr1 = (HVX_Vector *)(outp + 1*stride);

    sline000 = *iptr0++;
    sline100 = *iptr1++;
    sline200 = *iptr2++;
    sline300 = *iptr3++;

    sOut01p = Q6_V_vzero();
    sOut11p = Q6_V_vzero();

    for ( i=width; i>0; i-=VLEN )
    {
        sline064 = *iptr0++;
        sline164 = *iptr1++;
        sline264 = *iptr2++;
        sline364 = *iptr3++;

        sline004 = Q6_V_valign_VVI(sline064,sline000,4);
        sline104 = Q6_V_valign_VVI(sline164,sline100,4);
        sline204 = Q6_V_valign_VVI(sline264,sline200,4);
        sline304 = Q6_V_valign_VVI(sline364,sline300,4);

        dline000 = Q6_W_vcombine_VV(sline004, sline000);
        dline100 = Q6_W_vcombine_VV(sline104, sline100);
        dline200 = Q6_W_vcombine_VV(sline204, sline200);
        dline300 = Q6_W_vcombine_VV(sline304, sline300);

        dSum020 = Q6_Ww_vrmpy_WubRbI(dline000,__m2m1m0, 0);
        dSum031 = Q6_Ww_vrmpy_WubRbI(dline000,__m2m1m0, 1);

        dSum020 = Q6_Ww_vrmpyacc_WwWubRbI(dSum020, dline100,__m5m4m3, 0);
        dSum031 = Q6_Ww_vrmpyacc_WwWubRbI(dSum031, dline100,__m5m4m3, 1);

        dSum020 = Q6_Ww_vrmpyacc_WwWubRbI(dSum020, dline200,__m8m7m6, 0);
        dSum031 = Q6_Ww_vrmpyacc_WwWubRbI(dSum031, dline200,__m8m7m6, 1);

        sSum31L = Q6_Vh_vasr_VwVwR_sat(Q6_V_hi_W(dSum031),Q6_V_lo_W(dSum031),shift);
        sSum20L = Q6_Vh_vasr_VwVwR_sat(Q6_V_hi_W(dSum020),Q6_V_lo_W(dSum020),shift);
        sOut01 = Q6_Vub_vsat_VhVh(sSum31L,sSum20L);
        sOut00 = Q6_V_vlalign_VVI(sOut01,sOut01p,1);
        *optr0++ = sOut00;

        dSum120 = Q6_Ww_vrmpy_WubRbI(dline100,__m2m1m0, 0);
        dSum131 = Q6_Ww_vrmpy_WubRbI(dline100,__m2m1m0, 1);

        dSum120 = Q6_Ww_vrmpyacc_WwWubRbI(dSum120, dline200,__m5m4m3, 0);
        dSum131 = Q6_Ww_vrmpyacc_WwWubRbI(dSum131, dline200,__m5m4m3, 1);

        dSum120 = Q6_Ww_vrmpyacc_WwWubRbI(dSum120, dline300,__m8m7m6, 0);
        dSum131 = Q6_Ww_vrmpyacc_WwWubRbI(dSum131, dline300,__m8m7m6, 1);

        sSum31H = Q6_Vh_vasr_VwVwR_sat(Q6_V_hi_W(dSum131),Q6_V_lo_W(dSum131),shift);
        sSum20H = Q6_Vh_vasr_VwVwR_sat(Q6_V_hi_W(dSum120),Q6_V_lo_W(dSum120),shift);
        sOut11 = Q6_Vub_vsat_VhVh(sSum31H,sSum20H);
        sOut10 = Q6_V_vlalign_VVI(sOut11,sOut11p,1);
        *optr1++ = sOut10;

        sline000 = sline064;
        sline100 = sline164;
        sline200 = sline264;
        sline300 = sline364;

        sOut01p = sOut01;
        sOut11p = sOut11;
    }
}


/* ======================================================================== */
void conv3x3(
    unsigned char *restrict inp,
    int            stride,
    int            width,
    int            height,
    signed char   *restrict mask,
    int            shift,
    unsigned char *restrict outp
    )
{
    int i;
    unsigned char *input  = inp  + 1*stride;
    unsigned char *output = outp + 1*stride;

    for (i = 1; i< (height-1); i+=2)
    {
       conv3x3Per2Row( input, stride, width, mask, shift, output );

       input += 2*stride;
       output+= 2*stride;
   }
}

