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
    .file    "gaussian5x5.S"

#include "hvx.cfg.h"
    /*[*****************************************************************************]*/
    /*[  FUNCTION   : void Gaussian5x5u8PerRow()                                    ]*/
    /*[*****************************************************************************]*/
    /*[  DESCRIPTION: Performs 5x5 Gaussian blur on an image block                  ]*/
    /*[=============================================================================]*/
    /*[  INPUTS     : R0 : unsigned char *src  -- pointer to input image            ]*/
    /*[               R1 : int stride          -- stride of image input             ]*/
    /*[               R2 : int width           -- image width                       ]*/
    /*[               R3 : unsigned char *dst  -- pointer to output buffer          ]*/
    /*[=============================================================================]*/
    /*[  IMPLEMENTATION:                                                            ]*/
    /*[           - process two rows                                                ]*/
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
#define iptr2               R0
#define stride              R1
#define width               R2
#define optr                R3
#define iptr0               R4
#define iptr1               R5
#define iptr3               R6
#define iptr4               R7
#define const4              R8
#define const6              R9
/* ============================================================ */
#define sLine0              V0
#define sLine4              V1
#define sLine1              V2
#define sLine3              V3
#define dLine3Line1         V3:2
#define sLine2              V4
#define sOut                V5
#define sVsumv0E            V6
#define sVsumv0O            V7
#define dVsumv0             V7:6
#define sVsumv1E            V8
#define sVsumv1O            V9
#define dVsumv1             V9:8
#define sVsumv2E            V10
#define sVsumv2O            V11
#define dVsumv2             V11:10
#define sVsum0              V12
#define sVsum1              V13
#define sVsum4              V14
#define sVsum5              V15
#define sSumE               V16
#define sSumO               V17
#define sVsum2              sVsumv0E
#define sVsum3              sVsumv0O
#define sVsum1a3            sLine1
#define sVsum2a4            sLine4
/* ============================================================ */
    .text
    .p2align 2
    .p2align 4,,15
    .globl Gaussian5x5u8PerRow
    .type    Gaussian5x5u8PerRow, @function
Gaussian5x5u8PerRow:
    { R28 = ADD(width,#(VLEN-1))                    //
      iptr1 = SUB(iptr2,stride)                     //
      iptr3 = ADD(iptr2,stride)                     //
      const4.L = #0x0404                            //
    }
    { R28 = LSR(R28,#LOG2VLEN)                      // ceil(width/VLEN)
      iptr0 = SUB(iptr1,stride)                     //
      iptr4 = ADD(iptr3,stride)                     //
      const4.H = #0x0404                            //
    }
    { P3 = SP3LOOP0(.Gaussian5x5u8PerRowLOOP,R28)   // setup loop0
      const6 = ##0x06060606                         //
    }

    .falign
.Gaussian5x5u8PerRowLOOP:
    { sLine0 = VMEM(iptr0++#1)                      //[1]
      sVsum0 = VLALIGN(sVsumv1E,sVsumv0E,#2)        //[2]
      sVsum2a4.h = VADD(sVsum2.h,sVsum4.h)          //[3]
      sSumE.w += VMPYI(sVsum2.w,const6.b)           //[3]
    }
    { sLine1 = VMEM(iptr1++#1)                      //[1]
      sVsum1 = VLALIGN(sVsumv1O,sVsumv0O,#2)        //[2]
      sSumO.w += VMPYI(sVsum3.w,const6.b)           //[3]
      sSumE.w += VMPYI(sVsum1a3.w,const4.b)         //[3]
    }
    { sLine4 = VMEM(iptr4++#1)                      //[1]
      sVsumv0E = sVsumv1E                           //[1]
      sVsum4 = VALIGN( sVsumv2E,sVsumv1E,#2)        //[2]
      sSumO.w += VMPYI(sVsum2a4.w,const4.b)         //[3]
    }
    { sLine2 = VMEM(iptr2++#1)                      //[1]
      sVsumv0O = sVsumv1O                           //[1]
      sVsumv1E= sVsumv2E                            //[1]
      sVsum5 = VALIGN( sVsumv2O,sVsumv1O,#2)        //[2]
    }
    { sLine3 = VMEM(iptr3++#1)                      //[1]
      sVsumv1O= sVsumv2O                            //[1]
      dVsumv2.h  = VADD(sLine0.ub,sLine4.ub)        //[1]
    }
    { dVsumv2.h += VMPY(sLine2.ub,const6.b)         //[1]
      sSumE.h = VADD(sVsum0.h,sVsum4.h)             //[2]
      sOut.b = VSHUFFO(sSumO.b,sSumE.b)             //[3]
      IF P3 VMEM(optr++#1) = sOut.new               //[3]
    }
    { dVsumv2.h += VMPA(dLine3Line1.ub,const4.b)    //[1]
      sSumO.h = VADD(sVsum1.h,sVsum5.h)             //[2]
      sVsum1a3.h = VADD(sVsum1.h,sVsum3.h)          //[2]
    }:endloop0

    //======
    { sVsum0 = VLALIGN(sVsumv1E,sVsumv0E,#2)        //[2]
      sVsum2a4.h = VADD(sVsum2.h,sVsum4.h)          //[3]
      sSumE.w += VMPYI(sVsum2.w,const6.b)           //[3]
    }
    { sVsum1 = VLALIGN(sVsumv1O,sVsumv0O,#2)        //[2]
      sSumO.w += VMPYI(sVsum3.w,const6.b)           //[3]
      sSumE.w += VMPYI(sVsum1a3.w,const4.b)         //[3]
    }
    { sVsumv0E = sVsumv1E                           //[1]
      sVsum4 = VALIGN( sVsumv2E,sVsumv1E,#2)        //[2]
      sSumO.w += VMPYI(sVsum2a4.w,const4.b)         //[3]
    }
    { sVsumv0O = sVsumv1O                           //[1]
      dVsumv1  = dVsumv2                            //[1]
      sVsum5 = VALIGN( sVsumv2O,sVsumv1O,#2)        //[2]
    }
    { sSumE.h = VADD(sVsum0.h,sVsum4.h)             //[2]
      sVsum1a3.h = VADD(sVsum1.h,sVsum3.h)          //[2]
      sOut.b = VSHUFFO(sSumO.b,sSumE.b)             //[3]
      IF P3 VMEM(optr++#1) = sOut.new               //[3]
    }
    { sSumO.h = VADD(sVsum1.h,sVsum5.h)             //[2]
    //====== epilogue ======
      sVsum0 = VLALIGN(sVsumv1E,sVsumv0E,#2)        //[2]
      sVsum2a4.h = VADD(sVsum2.h,sVsum4.h)          //[3]
      sSumE.w += VMPYI(sVsum2.w,const6.b)           //[3]
    }
    { sVsum1 = VLALIGN(sVsumv1O,sVsumv0O,#2)        //[2]
      sSumO.w += VMPYI(sVsum3.w,const6.b)           //[3]
      sSumE.w += VMPYI(sVsum1a3.w,const4.b)         //[3]
    }
    { sVsum4 = VALIGN( sVsumv2E,sVsumv1E,#2)        //[2]
      sVsum2 = sVsumv1E                             //[2]
      sSumO.w += VMPYI(sVsum2a4.w,const4.b)         //[3]
      P3 = CMP.GT(R28,#1)                           //
    }
    { sVsum5 = VALIGN( sVsumv2O,sVsumv1O,#2)        //[2]
      sVsum3 = sVsumv1O                             //[2]
      sOut.b = VSHUFFO(sSumO.b,sSumE.b)             //[3]
      IF P3 VMEM(optr++#1) = sOut.new               //[3]
    }
    { sSumE.h = VADD(sVsum0.h,sVsum4.h)             //[2]
      sSumO.h = VADD(sVsum1.h,sVsum5.h)             //[2]
      sVsum1a3.h = VADD(sVsum1.h,sVsum3.h)          //[2]
    }
    { sVsum2a4.h = VADD(sVsum2.h,sVsum4.h)          //[3]
      sSumE.w += VMPYI(sVsum2.w,const6.b)           //[3]
      sSumO.w += VMPYI(sVsum3.w,const6.b)           //[3]
    }
    { sSumE.w += VMPYI(sVsum1a3.w,const4.b)         //[3]
      sSumO.w += VMPYI(sVsum2a4.w,const4.b)         //[3]
    }
    { sOut.b = VSHUFFO(sSumO.b,sSumE.b)             //[3]
      VMEM(optr+#0) = sOut.new                      //[3]
    }
    { JUMPR R31                                     // return
    }
    .size    Gaussian5x5u8PerRow, .-Gaussian5x5u8PerRow


