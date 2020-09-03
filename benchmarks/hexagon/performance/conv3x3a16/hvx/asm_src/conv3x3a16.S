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
    .file	"conv3x3a16.S"

#include "hvx.cfg.h"
    /*[*****************************************************************************]*/
    /*[  FUNCTION   : void conv3x3Per2Row()                                         ]*/
    /*[*****************************************************************************]*/
    /*[  DESCRIPTION: apply 3x3 filter kernel to a image block                      ]*/
    /*[=============================================================================]*/
    /*[  INPUTS     : R0 : unsigned char *inp  -- pointer to input image            ]*/
    /*[               R1 : int stride_i        -- stride of image input             ]*/
    /*[               R2 : int width           -- width of image block              ]*/
    /*[               R3 : signed char   *mask -- pointer to 3x3 mask               ]*/
    /*[               R4 : int shift           -- shift amount                      ]*/
    /*[               R5 : unsigned char *outp -- pointer to output buffer          ]*/
    /*[         (R29+#0) : int stride_o        -- stride of image output            ]*/
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
#define m1m0                R6
#define m4m3                R7
#define m7m6                R8
#define m2m5                R9
#define m8m8                R10
#define outp0               R5
#define outp1               R15
/* ============================================================ */
#define sLine00             V0
#define sLine01             V1
#define sLine10             V2
#define sLine11             V3
#define sLine20             V4
#define sLine21             V5
#define sLine30             V6
#define sLine31             V7
#define sOut0               V8
#define sOut1               V9
#define sX00                V10
#define sX02                V11
#define dX02X00             V11:10
#define sX10                V12
#define sX12                V13
#define dX12X10             V13:12
#define sX20                V14
#define sX22                V15
#define dX22X20             V15:14
#define sX30                V16
#define sX32                V17
#define dX32X30             V17:16
#define sSum0_L             V18
#define sSum0_H             V19
#define dSum0               V19:18
#define sSum1_L             V20
#define sSum1_H             V21
#define dSum1               V21:20
#define sX12_t              sX00
#define sX22_t              sX10
#define dX02X12             dX02X00
#define dX12X22             dX12X10
/* ============================================================ */
    .text
    .p2align 2
    .p2align 4,,15
    .globl conv3x3Per2Row
    .type	conv3x3Per2Row, @function
conv3x3Per2Row:
    { R28 = ADD(R2,#VLEN-1)                         //
      R1:0 = COMBINE(R0,R1)                         // set R1 = inp
      R15:14 = MEMD(R3+#0)                          // m7|m6|m5|m4|m3|m2|m1|m0
      R10    = MEMUB(R3+#8)                         // m8
    }
    { m8m8 = VSPLATB(R10)                           // set R10=m8|m8|m8|m8
      m1m0 = COMBINE(R14.L,R14.L)                   // set R6 =m1|m0|m1|m0
      m7m6 = COMBINE(R15.H,R15.H)                   // set R8 =m7|m6|m7|m6
      R15:14 = ASL(R15:14,#8)                       // m6|m5|m4|m3|m2|m1|m0|0
    }
    { m4m3 = COMBINE(R15.L,R15.L)                   // set R7= m4|m3|m4|m3
      R9 = EXTRACTU(R15,#8,#16)                     // m5
      R14= LSR(R14,#24)                             // m2
      R15 = MEMW(R29+#0)                            // get stride_o
    }
    { R0 = SUB(R1,R0)                               // set R0 = inp - stride
      R2 = ADD(R1,R0)                               // set R2 = inp + 1*stride
      R3 = ADDASL(R1,R0,#1)                         // set R3 = inp + 2*stride
      R28 = LSR(R28,#LOG2VLEN)                      // ceil(width/VLEN)
    }
    { sLine01 = VMEM(R0++#1)                        //
      R28 = ADD(R28,#-1)                            //
    }
    { sLine11 = VMEM(R1++#1)                        // load B[0--(VLEN-1)]
      R9 += ASL(R14,#8)                             // 0|0|m2|m5
      P3 = SP1LOOP0(.conv3x3_LOOP,R28)              // setup loop0
      P0 = CMP.GT(R28,#0)                           //
    }
    { sLine21 = VMEM(R2++#1)                        //
      m2m5 = COMBINE(R9.L,R9.L)                     // set R9= m2|m5|m2|m5
      outp1 = ADD(outp0,R15)                        // outp + stride_o
    }
    { IF !P0 JUMP .conv3x3_LOOPEND                  //
      sLine31 = VMEM(R3++#1)                        //
    }

    .falign
.conv3x3_LOOP:
    { sX00 = VLALIGN(sLine01,sLine00,#1)            //[1]
      sLine00 = sLine01                             //[1]
      dSum0.h += VMPA(dX02X12.ub,m2m5.b)            //[2]
    }
    { sLine01 = VMEM(R0++#1)                        //[1]
      dSum1.h += VMPA(dX12X22.ub,m2m5.b)            //[2]
      sX32 = VALIGN(sLine31,sLine30,#1)             //[2]
    }
    { sX10 = VLALIGN(sLine11,sLine10,#1)            //[1]
      sLine10 = sLine11                             //[1]
      dSum0.h += VDMPY(dX22X20.ub,m7m6.b)           //[2]
    }
    { sLine11 = VMEM(R1++#1)                        //[1]
      sX02 = VALIGN(sLine01,sLine00,#1)             //[1]
      dSum1.h += VDMPY(dX32X30.ub,m7m6.b)           //[2]
    }
    { sX20 = VLALIGN(sLine21,sLine20,#1)            //[1]
      sLine20 = sLine21                             //[1]
      dSum0.h += VMPY(sX22.ub,m8m8.b)               //[2]
    }
    { sLine21 = VMEM(R2++#1)                        //[1]
      sX12 = VALIGN(sLine11,sLine10,#1)             //[1]
      dSum1.h += VMPY(sX32.ub,m8m8.b)               //[2]
    }
    { sX30 = VLALIGN(sLine31,sLine30,#1)            //[1]
      dSum0.h = VDMPY(dX02X00.ub,m1m0.b)            //[1]
      sOut0.ub = VASR(sSum0_H.h,sSum0_L.h,R4):sat   //[2]
      IF P3 VMEM(outp0++#1) = sOut0.new             //[2]
    }
    { sX22 = VALIGN(sLine21,sLine20,#1)             //[1]
      dSum1.h = VDMPY(dX12X10.ub,m1m0.b)            //[1]
      sOut1.ub = VASR(sSum1_H.h,sSum1_L.h,R4):sat   //[2]
      IF P3 VMEM(outp1++#1) = sOut1.new             //[2]
    }
    { sLine30 = sLine31                             //[1]
      sX12_t = sX12                                 //[1]
      dSum0.h += VDMPY(dX12X10.ub,m4m3.b)           //[1]
    }
    { sLine31 = VMEM(R3++#1)                        //[1]
      sX22_t = sX22                                 //[1]
      dSum1.h += VDMPY(dX22X20.ub,m4m3.b)           //[1]
    }:endloop0

.conv3x3_LOOPEND:
    { sX00 = VLALIGN(sLine01,sLine00,#1)            //[1]
      sLine00 = sLine01                             //[1]
      dSum0.h += VMPA(dX02X12.ub,m2m5.b)            //[2]
    }
    { dSum1.h += VMPA(dX12X22.ub,m2m5.b)            //[2]
      sX32 = VALIGN(sLine31,sLine30,#1)             //[2]
    }
    { sX10 = VLALIGN(sLine11,sLine10,#1)            //[1]
      sLine10 = sLine11                             //[1]
      dSum0.h += VDMPY(dX22X20.ub,m7m6.b)           //[2]
    }
    { sX02 = VALIGN(sLine01,sLine00,#1)             //[1]
      dSum1.h += VDMPY(dX32X30.ub,m7m6.b)           //[2]
    }
    { sX20 = VLALIGN(sLine21,sLine20,#1)            //[1]
      sLine20 = sLine21                             //[1]
      dSum0.h += VMPY(sX22.ub,m8m8.b)               //[2]
    }
    { sX12 = VALIGN(sLine11,sLine10,#1)             //[1]
      dSum1.h += VMPY(sX32.ub,m8m8.b)               //[2]
    }
    { sX30 = VLALIGN(sLine31,sLine30,#1)            //[1]
      dSum0.h = VDMPY(dX02X00.ub,m1m0.b)            //[1]
      sOut0.ub = VASR(sSum0_H.h,sSum0_L.h,R4):sat   //[2]
      IF P3 VMEM(outp0++#1) = sOut0.new             //[2]
    }
    { sX22 = VALIGN(sLine21,sLine20,#1)             //[1]
      dSum1.h = VDMPY(dX12X10.ub,m1m0.b)            //[1]
      sOut1.ub = VASR(sSum1_H.h,sSum1_L.h,R4):sat   //[2]
      IF P3 VMEM(outp1++#1) = sOut1.new             //[2]
    }
    { sLine30 = sLine31                             //[1]
      sX12_t = sX12                                 //[1]
      dSum0.h += VDMPY(dX12X10.ub,m4m3.b)           //[1]
    }
    { sX22_t = sX22                                 //[1]
      dSum1.h += VDMPY(dX22X20.ub,m4m3.b)           //[1]
    }
    //====== epilogue ======
    { dSum0.h += VMPA(dX02X12.ub,m2m5.b)            //[2]
    }
    { dSum1.h += VMPA(dX12X22.ub,m2m5.b)            //[2]
      sX32 = VALIGN(sLine31,sLine30,#1)             //[2]
    }
    { dSum0.h += VDMPY(dX22X20.ub,m7m6.b)           //[2]
    }
    { dSum1.h += VDMPY(dX32X30.ub,m7m6.b)           //[2]
    }
    { dSum0.h += VMPY(sX22.ub,m8m8.b)               //[2]
    }
    { dSum1.h += VMPY(sX32.ub,m8m8.b)               //[2]
    }
    { sOut0.ub = VASR(sSum0_H.h,sSum0_L.h,R4):sat   //[2]
      VMEM(outp0+#0) = sOut0.new                    //[2]
    }
    { sOut1.ub = VASR(sSum1_H.h,sSum1_L.h,R4):sat   //[2]
      VMEM(outp1+#0) = sOut1.new                    //[2]
    }
    { JUMPR R31                                     // return
    }
    .size	conv3x3Per2Row, .-conv3x3Per2Row

