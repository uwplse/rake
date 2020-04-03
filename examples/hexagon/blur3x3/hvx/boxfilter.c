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
/*[     boxfilter11x11                                                     ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ DESCRIPTION                                                            ]*/
/*[     This function performs 11x11 box filter on a image.                ]*/
/*[                                                                        ]*/
/*[------------------------------------------------------------------------]*/
/*[ REVISION DATE                                                          ]*/
/*[     AUG-25-2016                                                        ]*/
/*[                                                                        ]*/
/*[========================================================================]*/
#include <stdlib.h>
#include <stdio.h>
#include "hexagon_types.h"
#include "hvx.cfg.h"

/* ======================================================================== */
/*  Intrinsic C version of boxfilter11x11()                                 */
/* ======================================================================== */

#define max_t   Q6_R_max_RR
#define min_t   Q6_R_min_RR
/* ======================================================================== */
/*  Constants                                                               */
/* ======================================================================== */
const unsigned char splatBidx0control[128] __attribute__((aligned(128))) = {
   0x00,0x01,0x02,0x02,0x04,0x04,0x04,0x04,
   0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,
   0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,
   0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,
   0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,
   0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,
   0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,
   0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,
   0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,
   0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,
   0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,
   0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,
   0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,
   0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,
   0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,
   0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40
};

/* ======================================================================== */
void Box11perRow(
    unsigned char   *restrict inp0,
    unsigned char   *restrict inp1,
    int             width,
    unsigned short  *restrict sump,
    unsigned char   *restrict outp
    )
{
    int i;

    HVX_Vector sS2v0, sS2v1, sS2d4, sS4v0, sS4v1, sS4d, sSume, sSumo;
    HVX_Vector sIn0, sIn1, sXn5, sX6, sS10, sOute, sOuto;
    HVX_Vector sSplatbCtrl, sIn0_0, sIn1_0, sIn0_last, sIn1_last;

    HVX_VectorPair dDif0, dDif1;

    HVX_Vector *iptr0 = (HVX_Vector *)inp0;
    HVX_Vector *iptr1 = (HVX_Vector *)inp1;
    HVX_Vector *iptrS = (HVX_Vector *)sump;
    HVX_Vector *optrS = (HVX_Vector *)sump;
    HVX_Vector *optr  = (HVX_Vector *)outp;

    HVX_VectorPred Q = Q6_Q_vsetq_R(width-1);

    sSplatbCtrl = *(HVX_Vector *)splatBidx0control;

    sIn0 = *iptr0++;
    sIn1 = *iptr1++;

    sIn0_0 = Q6_V_vrdelta_VV(sIn0,sSplatbCtrl);
    sIn1_0 = Q6_V_vrdelta_VV(sIn1,sSplatbCtrl);

    if (width <= VLEN)
    {
        sIn0_last = Q6_V_vrdelta_VV(Q6_V_vror_VR(sIn0,width-1),sSplatbCtrl);
        sIn1_last = Q6_V_vrdelta_VV(Q6_V_vror_VR(sIn1,width-1),sSplatbCtrl);

        sIn0 = Q6_V_vmux_QVV(Q,sIn0,sIn0_last);
        sIn1 = Q6_V_vmux_QVV(Q,sIn1,sIn1_last);
    }

    dDif0 = Q6_Wh_vsub_VubVub(sIn1_0,sIn0_0);
    dDif1 = Q6_Wh_vsub_VubVub(sIn1,  sIn0);

    sS2v0 = Q6_Vh_vadd_VhVh(Q6_V_lo_W(dDif0),Q6_V_hi_W(dDif0));
    sS2v1 = Q6_Vh_vadd_VhVh(Q6_V_lo_W(dDif1),Q6_V_hi_W(dDif1));

    sS4v1 = Q6_Vh_vadd_VhVh(sS2v1, Q6_V_vlalign_VVI(sS2v1,sS2v0,4));

    for ( i=width; i>2*VLEN; i-=VLEN )
    {
        sXn5 = Q6_V_vlalign_VVI(Q6_V_hi_W(dDif1),Q6_V_hi_W(dDif0),6);

        sIn0 = *iptr0++;
        sIn1 = *iptr1++;

        dDif0 = dDif1;
        dDif1 = Q6_Wh_vsub_VubVub(sIn1,sIn0);

        sS2v0 = sS2v1;
        sS2v1 = Q6_Vh_vadd_VhVh(Q6_V_lo_W(dDif1),Q6_V_hi_W(dDif1));

        sS4v0 = sS4v1;
        sS4v1 = Q6_Vh_vadd_VhVh(sS2v1, Q6_V_vlalign_VVI(sS2v1,sS2v0,4));

        sS2d4 = Q6_V_valign_VVI(sS2v1,sS2v0,4);
        sS4d  = Q6_V_valign_VVI(sS4v1,sS4v0,2);

        sS10 = Q6_Vh_vadd_VhVh(sS4d,Q6_Vh_vadd_VhVh(sS4v0,sS2d4));

        sX6 = Q6_V_valign_VVI(Q6_V_lo_W(dDif1),Q6_V_lo_W(dDif0),6);

        sSume = *iptrS++;
        sSumo = *iptrS++;

        sSume = Q6_Vh_vadd_VhVh(sSume,sXn5);
        sSumo = Q6_Vh_vadd_VhVh(sSumo,sX6);

        // sum += 
        sSume = Q6_Vh_vadd_VhVh(sSume,sS10);
        sSumo = Q6_Vh_vadd_VhVh(sSumo,sS10);
        *optrS++ = sSume;
        *optrS++ = sSumo;

        // sum = (sum *271 + (1<<14)) >> 15;
        sOute = Q6_Vh_vmpy_VhRh_s1_rnd_sat(sSume,0x010F010F);
        sOuto = Q6_Vh_vmpy_VhRh_s1_rnd_sat(sSumo,0x010F010F);
        *optr++ = Q6_Vub_vsat_VhVh(sOuto,sOute);
    }

    if (width > VLEN)
    {
        sIn0 = *iptr0;
        sIn1 = *iptr1;

        sIn0_last = Q6_V_vrdelta_VV(Q6_V_vror_VR(sIn0,width-1),sSplatbCtrl);
        sIn1_last = Q6_V_vrdelta_VV(Q6_V_vror_VR(sIn1,width-1),sSplatbCtrl);

        sIn0 = Q6_V_vmux_QVV(Q,sIn0,sIn0_last);
        sIn1 = Q6_V_vmux_QVV(Q,sIn1,sIn1_last);
    }
    else
    {
        sIn0 = sIn0_last;
        sIn1 = sIn1_last;
    }

    for ( ; i>0; i-=VLEN )
    {
        sXn5 = Q6_V_vlalign_VVI(Q6_V_hi_W(dDif1),Q6_V_hi_W(dDif0),6);

        dDif0 = dDif1;
        dDif1 = Q6_Wh_vsub_VubVub(sIn1,sIn0);

        sS2v0 = sS2v1;
        sS2v1 = Q6_Vh_vadd_VhVh(Q6_V_lo_W(dDif1),Q6_V_hi_W(dDif1));

        sS4v0 = sS4v1;
        sS4v1 = Q6_Vh_vadd_VhVh(sS2v1, Q6_V_vlalign_VVI(sS2v1,sS2v0,4));

        sS2d4 = Q6_V_valign_VVI(sS2v1,sS2v0,4);
        sS4d  = Q6_V_valign_VVI(sS4v1,sS4v0,2);

        sS10 = Q6_Vh_vadd_VhVh(sS4d,Q6_Vh_vadd_VhVh(sS4v0,sS2d4));

        sX6 = Q6_V_valign_VVI(Q6_V_lo_W(dDif1),Q6_V_lo_W(dDif0),6);

        sSume = *iptrS++;
        sSumo = *iptrS++;

        sSume = Q6_Vh_vadd_VhVh(sSume,sXn5);
        sSumo = Q6_Vh_vadd_VhVh(sSumo,sX6);

        sSume = Q6_Vh_vadd_VhVh(sSume,sS10);
        sSumo = Q6_Vh_vadd_VhVh(sSumo,sS10);
        *optrS++ = sSume;
        *optrS++ = sSumo;

        sOute = Q6_Vh_vmpy_VhRh_s1_rnd_sat(sSume,0x010F010F);
        sOuto = Q6_Vh_vmpy_VhRh_s1_rnd_sat(sSumo,0x010F010F);
        *optr++ = Q6_Vub_vsat_VhVh(sOuto,sOute);

        sIn0 = sIn0_last;
        sIn1 = sIn1_last;
    }
}

/* ======================================================================== */
void Vmemset(
    void            *src,
    unsigned char   value,
    unsigned int    size
    )
{
    int i;

    HVX_Vector sValue = Q6_V_vsplat_R(Q6_R_vsplatb_R(value));

    HVX_Vector *optr = (HVX_Vector *)src;

    for (i = 0; i < (size>>LOG2VLEN); i++)
    {
        *optr++ = sValue;
    }
}

/* ======================================================================== */
void boxfilter11x11(
    unsigned char *restrict inp,
    int            stride,
    int            width,
    int            height,
    unsigned char *restrict outp
    )
{
    int i, k;

    int width_t = (width + VLEN-1)&(-VLEN);

    unsigned short *sums = (unsigned short *)memalign(VLEN, width_t*sizeof(sums[0]));
    unsigned char  *zero = (unsigned char  *)memalign(VLEN, width_t*sizeof(zero[0]));

    unsigned char *src0, *src1;
    unsigned char *output = outp;

    Vmemset( sums, 0, width_t*sizeof(sums[0]) );
    Vmemset( zero, 0, width_t*sizeof(zero[0]) );

    for (k = -5; k <= 5; k++)
    {
        src1 = inp + min_t(max_t(k, 0), height-1)*stride;

        Box11perRow( zero, src1, width, sums, output );
    }

    for (i = 1; i< height; i++)
    {
        src0 = inp + max_t(i-6, 0       )*stride;
        src1 = inp + min_t(i+5, height-1)*stride;
        output+= stride;

        Box11perRow( src0, src1, width, sums, output );
   }

   free(sums);
   free(zero);
}