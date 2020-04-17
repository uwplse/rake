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
/*[     During the computation, 16bit accumulator is assumed, therefore    ]*/
/*[     The absolute value of the summation of all coefficients must be    ]*/
/*[     no more than 128.                                                  ]*/
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
    int            stride_i,
    int            width,
    signed char   *restrict mask,
    int            shift,
    unsigned char *restrict outp,
    int            stride_o
    )
{
    int i;
    HEXAGON_Vect32 m1m0, m4m3, m7m6, m2m5, m8m8;

    HVX_Vector sLine00, sLine01, sLine10, sLine11, sLine20, sLine21, sLine30, sLine31;
    HVX_Vector sX00, sX02, sX10, sX12, sX20, sX22, sX30, sX32;
    HVX_VectorPair dX02X00, dX12X10, dX22X20, dX32X30, dX02X12, dX12X22;
    HVX_VectorPair dSum0, dSum1;

    HVX_Vector *pin0 = (HVX_Vector *)(inp  - 1*stride_i);
    HVX_Vector *pin1 = (HVX_Vector *)(inp  + 0*stride_i);
    HVX_Vector *pin2 = (HVX_Vector *)(inp  + 1*stride_i);
    HVX_Vector *pin3 = (HVX_Vector *)(inp  + 2*stride_i);
    HVX_Vector *pout0= (HVX_Vector *)(outp + 0*stride_o);
    HVX_Vector *pout1= (HVX_Vector *)(outp + 1*stride_o);

    sLine00 = Q6_V_vzero();
    sLine10 = Q6_V_vzero();
    sLine20 = Q6_V_vzero();
    sLine30 = Q6_V_vzero();

    sLine01 = *pin0++;
    sLine11 = *pin1++;
    sLine21 = *pin2++;
    sLine31 = *pin3++;

    m1m0 = HEXAGON_V32_CREATE_B(mask[1],mask[0],mask[1],mask[0]);
    m4m3 = HEXAGON_V32_CREATE_B(mask[4],mask[3],mask[4],mask[3]);
    m7m6 = HEXAGON_V32_CREATE_B(mask[7],mask[6],mask[7],mask[6]);
    m2m5 = HEXAGON_V32_CREATE_B(mask[2],mask[5],mask[2],mask[5]);
    m8m8 = HEXAGON_V32_CREATE_B(mask[8],mask[8],mask[8],mask[8]);

    for ( i=width; i>VLEN; i-=VLEN )
    {
        sX00 = Q6_V_vlalign_VVI(sLine01,sLine00,1);
        sX10 = Q6_V_vlalign_VVI(sLine11,sLine10,1);
        sX20 = Q6_V_vlalign_VVI(sLine21,sLine20,1);
        sX30 = Q6_V_vlalign_VVI(sLine31,sLine30,1);

        sLine00 = sLine01;
        sLine10 = sLine11;
        sLine20 = sLine21;
        sLine30 = sLine31;

        sLine01 = *pin0++;
        sLine11 = *pin1++;
        sLine21 = *pin2++;
        sLine31 = *pin3++;

        sX02 = Q6_V_valign_VVI(sLine01,sLine00,1);
        sX12 = Q6_V_valign_VVI(sLine11,sLine10,1);
        sX22 = Q6_V_valign_VVI(sLine21,sLine20,1);
        sX32 = Q6_V_valign_VVI(sLine31,sLine30,1);

        dX02X00 = Q6_W_vcombine_VV(sX02,sX00);
        dX12X10 = Q6_W_vcombine_VV(sX12,sX10);
        dSum0 = Q6_Wh_vdmpy_WubRb(dX02X00,m1m0);
        dSum1 = Q6_Wh_vdmpy_WubRb(dX12X10,m1m0);

        dX22X20 = Q6_W_vcombine_VV(sX22,sX20);
        dSum0 = Q6_Wh_vdmpyacc_WhWubRb(dSum0,dX12X10,m4m3);
        dSum1 = Q6_Wh_vdmpyacc_WhWubRb(dSum1,dX22X20,m4m3);

        dX02X12 = Q6_W_vcombine_VV(sX02,sX12);
        dX12X22 = Q6_W_vcombine_VV(sX12,sX22);
        dSum0 = Q6_Wh_vmpaacc_WhWubRb(dSum0,dX02X12,m2m5);
        dSum1 = Q6_Wh_vmpaacc_WhWubRb(dSum1,dX12X22,m2m5);

        dX32X30 = Q6_W_vcombine_VV(sX32,sX30);
        dSum0 = Q6_Wh_vdmpyacc_WhWubRb(dSum0,dX22X20,m7m6);
        dSum1 = Q6_Wh_vdmpyacc_WhWubRb(dSum1,dX32X30,m7m6);

        dSum0 = Q6_Wh_vmpyacc_WhVubRb(dSum0,sX22,m8m8);
        dSum1 = Q6_Wh_vmpyacc_WhVubRb(dSum1,sX32,m8m8);

        *pout0++ = Q6_Vub_vasr_VhVhR_sat(Q6_V_hi_W(dSum0),Q6_V_lo_W(dSum0),shift);
        *pout1++ = Q6_Vub_vasr_VhVhR_sat(Q6_V_hi_W(dSum1),Q6_V_lo_W(dSum1),shift);
    }

    {
        sX00 = Q6_V_vlalign_VVI(sLine01,sLine00,1);
        sX10 = Q6_V_vlalign_VVI(sLine11,sLine10,1);
        sX20 = Q6_V_vlalign_VVI(sLine21,sLine20,1);
        sX30 = Q6_V_vlalign_VVI(sLine31,sLine30,1);

        sLine00 = sLine01;
        sLine10 = sLine11;
        sLine20 = sLine21;
        sLine30 = sLine31;

//      sLine01 = *pin0++;
//      sLine11 = *pin1++;
//      sLine21 = *pin2++;
//      sLine31 = *pin3++;

        sX02 = Q6_V_valign_VVI(sLine01,sLine00,1);
        sX12 = Q6_V_valign_VVI(sLine11,sLine10,1);
        sX22 = Q6_V_valign_VVI(sLine21,sLine20,1);
        sX32 = Q6_V_valign_VVI(sLine31,sLine30,1);

        dX02X00 = Q6_W_vcombine_VV(sX02,sX00);
        dX12X10 = Q6_W_vcombine_VV(sX12,sX10);
        dSum0 = Q6_Wh_vdmpy_WubRb(dX02X00,m1m0);
        dSum1 = Q6_Wh_vdmpy_WubRb(dX12X10,m1m0);

        dX22X20 = Q6_W_vcombine_VV(sX22,sX20);
        dSum0 = Q6_Wh_vdmpyacc_WhWubRb(dSum0,dX12X10,m4m3);
        dSum1 = Q6_Wh_vdmpyacc_WhWubRb(dSum1,dX22X20,m4m3);

        dX02X12 = Q6_W_vcombine_VV(sX02,sX12);
        dX12X22 = Q6_W_vcombine_VV(sX12,sX22);
        dSum0 = Q6_Wh_vmpaacc_WhWubRb(dSum0,dX02X12,m2m5);
        dSum1 = Q6_Wh_vmpaacc_WhWubRb(dSum1,dX12X22,m2m5);

        dX32X30 = Q6_W_vcombine_VV(sX32,sX30);
        dSum0 = Q6_Wh_vdmpyacc_WhWubRb(dSum0,dX22X20,m7m6);
        dSum1 = Q6_Wh_vdmpyacc_WhWubRb(dSum1,dX32X30,m7m6);

        dSum0 = Q6_Wh_vmpyacc_WhVubRb(dSum0,sX22,m8m8);
        dSum1 = Q6_Wh_vmpyacc_WhVubRb(dSum1,sX32,m8m8);

        *pout0++ = Q6_Vub_vasr_VhVhR_sat(Q6_V_hi_W(dSum0),Q6_V_lo_W(dSum0),shift);
        *pout1++ = Q6_Vub_vasr_VhVhR_sat(Q6_V_hi_W(dSum1),Q6_V_lo_W(dSum1),shift);
    }
}


/* ======================================================================== */
void conv3x3(
    unsigned char *restrict inp,
    int            stride_i,
    int            width,
    int            height,
    signed char   *restrict mask,
    int            shift,
    unsigned char *restrict outp,
    int            stride_o
    )
{
    int i;
    unsigned char *input  = inp  + 1*stride_i;
    unsigned char *output = outp + 1*stride_o;

    for (i = 1; i< (height-1); i+=2)
    {
       conv3x3Per2Row( input, stride_i, width, mask, shift, output, stride_o );

       input += 2*stride_i;
       output+= 2*stride_o;
   }
}
