    /* ============================================================================ */
    /*  QUALCOMM TECHNOLOGIES, INC.                                                 */
    /*                                                                              */
    /*  HEXAGON HVX Image/Video Processing Library                                  */
    /*                                                                              */
    /* ---------------------------------------------------------------------------- */
    /*            Copyright (c) 2014 QUALCOMM TECHNOLOGIES Incorporated.            */
    /*                             All Rights Reserved.                             */
    /*                    QUALCOMM Confidential and Proprietary                     */
    /* ============================================================================ */
    .file	"median3x3.S"

#include "hvx.cfg.h"
    /*[*****************************************************************************]*/
    /*[  FUNCTION   : void median3x3PerRow()                                        ]*/
    /*[*****************************************************************************]*/
    /*[  DESCRIPTION: performas 3x3 median filter kernel to a image block           ]*/
    /*[=============================================================================]*/
    /*[  INPUTS     : R0 : unsigned char *inp  -- pointer to input image            ]*/
    /*[               R1 : int stride          -- stride of image input             ]*/
    /*[               R2 : int width           -- width of image block              ]*/
    /*[               R3 : unsigned char *outp -- pointer to output buffer          ]*/
    /*[=============================================================================]*/
    /*[  IMPLEMENTATION:                                                            ]*/
    /*[           -                                                                 ]*/
    /*[                                                                             ]*/
    /*[=============================================================================]*/
    /*[  ASSUMPTIONS:                                                               ]*/
    /*[           -                                                                 ]*/
    /*[                                                                             ]*/
    /*[=============================================================================]*/
    /*[  REVISION HISTORY                                                           ]*/
    /*[  ----------------                                                           ]*/
    /*[  Version        Date                    Comments                            ]*/
    /*[  -------------------------------------------------------------------------  ]*/
    /*[   6.0.0         08/01/2014              created for HVX evaluation          ]*/
    /*[  -------------------------------------------------------------------------  ]*/
    /*[                                                                             ]*/
    /*[*****************************************************************************]*/
#define iptr1               R0
#define stride              R1
#define width               R2
#define optr                R3
#define iptr0               R4
#define iptr2               R5
/* ============================================================ */
#define sLine0              V0
#define sLine1              V1
#define sLine2              V2
#define sMedian             V3
#define sRmaxv0             V4
#define sRmaxv1             V5
#define sRminv0             V6
#define sRminv1             V7
#define sRmidv0             V8
#define sRmidv1             V9
#define sRmax0              V10
#define sRmax2              V11
#define sRmin0              V12
#define sRmin2              V13
#define sRmid0              V14
#define sRmid2              V15
#define sMaxr01             sLine0
#define sMinr01             sLine1
#define sMinRmax01          sRmax0
#define sMaxRmin01          sRmin0
#define sMaxRmid01          sLine0
#define sMinRmid01          sLine1
#define sRmax1              sRmaxv0
#define sRmin1              sRminv0
#define sRmid1              sRmidv0
#define sMinMax             sRmax2
#define sMaxMin             sRmin2
#define sMidMid             sRmid2
#define sMaxt               sMinMax
#define sMint               sMaxMin
/* ============================================================ */
    .text
    .p2align 2
    .p2align 4,,15
    .globl median3x3PerRow
    .type	median3x3PerRow, @function
median3x3PerRow:
    { R28 = ADD(R2,#VLEN-1-VLEN)                    //
      iptr0 = SUB(iptr1,stride)                     //
      iptr2 = ADD(iptr1,stride)                     //
      sLine1 = VMEM(iptr1++#1)                      //
    }
    { R28 = LSR(R28,#LOG2VLEN)                      // ceil(width/VLEN)-1
      sLine0 = VMEM(iptr0++#1)                      //
    }
    { P3 = SP1LOOP0(.median3x3PerRow_LOOP,R28)      // setup loop0
      sLine2 = VMEM(iptr2++#1)                      //
      sMaxr01.ub = VMAX(sLine0.ub,sLine1.ub)        //
      sMinr01.ub = VMIN(sLine0.ub,sLine1.ub)        //
    }
    { sRmaxv1.ub = VMAX(sMaxr01.ub,sLine2.ub)       //
      sRmidv1.ub = VMIN(sMaxr01.ub,sLine2.ub)       //
      P0 = CMP.GT(R28,#0)                           // P0 = ceil(width/VLEN)-1 > 0?
    }
    { sRminv1.ub = VMIN(sMinr01.ub,sLine2.ub)       //
      sRmidv1.ub = VMAX(sRmidv1.ub,sMinr01.ub)      //
      IF !P0 JUMP .median3x3PerRowLPEND             // if !P0 then skip loop
    }

    .falign
.median3x3PerRow_LOOP:
    { sRmax0 = VLALIGN(sRmaxv1,sRmaxv0,#1)          //[1]
      sRmaxv0 = sRmaxv1                             //[1]
      sLine0 = VMEM(iptr0++#1)                      //[1]
      sMidMid.ub = VMIN(sMaxRmid01.ub,sRmid2.ub)    //[2]
    }
    { sRmin0 = VLALIGN(sRminv1,sRminv0,#1)          //[1]
      sRminv0 = sRminv1                             //[1]
      sLine1 = VMEM(iptr1++#1)                      //[1]
      sMidMid.ub = VMAX(sMinRmid01.ub,sMidMid.ub)   //[2]
    }
    { sRmid0 = VLALIGN(sRmidv1,sRmidv0,#1)          //[1]
      sLine2 = VMEM(iptr2++#1)                      //[1]
      sMaxr01.ub = VMAX(sLine0.ub,sLine1.ub)        //[1]
      sMinr01.ub = VMIN(sLine0.ub,sLine1.ub)        //[1]
    }
    { sRmidv0 = sRmidv1                             //[1]
      sRmaxv1.ub = VMAX(sMaxr01.ub,sLine2.ub)       //[1]
      sRmidv1.ub = VMIN(sMaxr01.ub,sLine2.ub)       //[1]
    }
    { sRminv1.ub = VMIN(sMinr01.ub,sLine2.ub)       //[1]
      sRmidv1.ub = VMAX(sRmidv1.ub,sMinr01.ub)      //[1]
      sMaxt.ub   = VMAX(sMinMax.ub,sMaxMin.ub)      //[2]
      sMint.ub   = VMIN(sMinMax.ub,sMaxMin.ub)      //[2]
    }
    { sRmax2 = VALIGN(sRmaxv1,sRmaxv0,#1)           //[1]
      sMinRmax01.ub = VMIN(sRmax0.ub,sRmax1.ub)     //[1]
      sMaxRmin01.ub = VMAX(sRmin0.ub,sRmin1.ub)     //[1]
      sMedian.ub    = VMIN(sMaxt.ub,sMidMid.ub)     //[2]
    }
    { sRmin2 = VALIGN(sRminv1,sRminv0,#1)           //[1]
      sMinMax.ub    = VMIN(sMinRmax01.ub,sRmax2.ub) //[1]
      sMaxRmid01.ub = VMAX(sRmid0.ub,sRmid1.ub)     //[1]
      sMedian.ub    = VMAX(sMint.ub,sMedian.ub)     //[2]
    }
    { sRmid2 = VALIGN(sRmidv1,sRmidv0,#1)           //[1]
      sMaxMin.ub    = VMAX(sMaxRmin01.ub,sRmin2.ub) //[1]
      sMinRmid01.ub = VMIN(sRmid0.ub,sRmid1.ub)     //[1]
      IF P3 VMEM(optr++#1) = sMedian                //[2]
    }:endloop0

.median3x3PerRowLPEND:
    /*-----------------------------------------------*/
    /* Unroll once to avoid out-of-boundary load     */
    /*-----------------------------------------------*/
    { sRmax0 = VLALIGN(sRmaxv1,sRmaxv0,#1)          //[1]
      sRmaxv0 = sRmaxv1                             //[1]
    //sLine0 = VMEM(iptr0++#1)                      //[1]
      sMidMid.ub = VMIN(sMaxRmid01.ub,sRmid2.ub)    //[2]
    }
    { sRmin0 = VLALIGN(sRminv1,sRminv0,#1)          //[1]
      sRminv0 = sRminv1                             //[1]
    //sLine1 = VMEM(iptr1++#1)                      //[1]
      sMidMid.ub = VMAX(sMinRmid01.ub,sMidMid.ub)   //[2]
    }
    { sRmid0 = VLALIGN(sRmidv1,sRmidv0,#1)          //[1]
    //sLine2 = VMEM(iptr2++#1)                      //[1]
      sMaxr01.ub = VMAX(sLine0.ub,sLine1.ub)        //[1]
      sMinr01.ub = VMIN(sLine0.ub,sLine1.ub)        //[1]
    }
    { sRmidv0 = sRmidv1                             //[1]
      sRmaxv1.ub = VMAX(sMaxr01.ub,sLine2.ub)       //[1]
      sRmidv1.ub = VMIN(sMaxr01.ub,sLine2.ub)       //[1]
    }
    { sRminv1.ub = VMIN(sMinr01.ub,sLine2.ub)       //[1]
      sRmidv1.ub = VMAX(sRmidv1.ub,sMinr01.ub)      //[1]
      sMaxt.ub   = VMAX(sMinMax.ub,sMaxMin.ub)      //[2]
      sMint.ub   = VMIN(sMinMax.ub,sMaxMin.ub)      //[2]
    }
    { sRmax2 = VALIGN(sRmaxv1,sRmaxv0,#1)           //[1]
      sMinRmax01.ub = VMIN(sRmax0.ub,sRmax1.ub)     //[1]
      sMaxRmin01.ub = VMAX(sRmin0.ub,sRmin1.ub)     //[1]
      sMedian.ub    = VMIN(sMaxt.ub,sMidMid.ub)     //[2]
    }
    { sRmin2 = VALIGN(sRminv1,sRminv0,#1)           //[1]
      sMinMax.ub    = VMIN(sMinRmax01.ub,sRmax2.ub) //[1]
      sMaxRmid01.ub = VMAX(sRmid0.ub,sRmid1.ub)     //[1]
      sMedian.ub    = VMAX(sMint.ub,sMedian.ub)     //[2]
    }
    { sRmid2 = VALIGN(sRmidv1,sRmidv0,#1)           //[1]
      sMaxMin.ub    = VMAX(sMaxRmin01.ub,sRmin2.ub) //[1]
      sMinRmid01.ub = VMIN(sRmid0.ub,sRmid1.ub)     //[1]
      IF P3 VMEM(optr++#1) = sMedian                //[2]
    }
    //====== epilogue ======
    { sMidMid.ub = VMIN(sMaxRmid01.ub,sRmid2.ub)    //[2]
    }
    { sMidMid.ub = VMAX(sMinRmid01.ub,sMidMid.ub)   //[2]
      sMaxt.ub   = VMAX(sMinMax.ub,sMaxMin.ub)      //[2]
      sMint.ub   = VMIN(sMinMax.ub,sMaxMin.ub)      //[2]
    }
    { sMedian.ub    = VMIN(sMaxt.ub,sMidMid.ub)     //[2]
    }
    { sMedian.ub    = VMAX(sMint.ub,sMedian.ub)     //[2]
      VMEM(optr+#0) = sMedian.new                   //[2]
    }
    { JUMPR R31                                     // return
    }
    .size	median3x3PerRow, .-median3x3PerRow

