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
    .file	"conv3x3a32.S"

#include "hvx.cfg.h"
    /*[*****************************************************************************]*/
    /*[  FUNCTION   : void conv3x3Per2Row()                                         ]*/
    /*[*****************************************************************************]*/
    /*[  DESCRIPTION: apply 3x3 filter kernel to a image block                      ]*/
    /*[=============================================================================]*/
    /*[  INPUTS     : R0 : unsigned char *inp  -- pointer to input image            ]*/
    /*[               R1 : int stride          -- stride of image input             ]*/
    /*[               R2 : int width           -- width of image block              ]*/
    /*[               R3 : signed char   *mask -- pointer to 3x3 mask               ]*/
    /*[               R4 : int shift           -- shift amount                      ]*/
    /*[               R5 : unsigned char *outp -- pointer to output buffer          ]*/
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
#define mask                R3
#define shift               R4
#define optr0               R5
#define optr1               R6
#define iptr0               R7
#define iptr2               R8
#define iptr3               R9
#define __m2m1m0            R10
#define __m5m4m3            R11
#define __m8m7m6            R12
/* ============================================================ */
#define dSum020             v1:0
#define sSum00              v0
#define sSum02              v1
#define dSum031             v3:2
#define sSum01              v2
#define sSum03              v3
#define dSum120             v5:4
#define sSum10              v4
#define sSum12              v5
#define dSum131             v7:6
#define sSum11              v6
#define sSum13              v7
#define sline000            V8
#define sline004            V9
#define dline000            V9:8
#define sline100            v10
#define sline104            v11
#define dline100            v11:10
#define sline200            v12
#define sline204            v13
#define dline200            v13:12
#define sline300            v14
#define sline304            v15
#define dline300            v15:14
#define sline064            v16
#define sline164            v17
#define sline264            v18
#define sline364            v19
#define sSum20L             v20
#define sSum20H             v21
#define sSum31L             v22
#define sSum31H             v23
#define sOut01prv           V24
#define sOut11prv           V25
#define sOut01              V26
#define sOut11              V27
#define sOut00              V24
#define sOut10              V25
/* ============================================================ */
    .text
    .p2align 2
    .p2align 4,,15
    .globl conv3x3Per2Row
    .type	conv3x3Per2Row, @function
conv3x3Per2Row:
    { R28 = ADD(width,#VLEN-1)                      //
      iptr0 = SUB(iptr1,stride)                     //
      iptr2 = ADD(iptr1,stride)                     //
      sline100 = vmem(iptr1++#1)                    //
    }
    { R28 = LSR(R28,#LOG2VLEN)                      // ceil(width/VLEN)
      iptr3 = ADD(iptr2,stride)                     //
      __m2m1m0 = memw(mask+#0<<2)                   //
      sline000 = VMEM(iptr0++#1)                    //
    }
    { sline264 = vmem(iptr2++#1)                    //
      __m5m4m3 = MEMW(mask+#1<<2)                   //
      optr1 = ADD(optr0, stride)                    //
    }
    { sline364 = vmem(iptr3++#1)                    //
      __m8m7m6 = MEMW(mask+#2<<2)                   //
      P3 = SP1LOOP0(.conv3x3Per2RowLoop,R28)        //
    }

    .falign
.conv3x3Per2RowLoop:
    { sline064 = vmem(iptr0++#1)                    //[1]
      sline304 = valign(sline364,sline300,#4)       //[2]
      dSum020.w += vrmpy(dline200.ub,__m8m7m6.b,#0) //[2]
    }
    { sline164 = vmem(iptr1++#1)                    //[1]
      sline200 = sline264                           //[1]
      dSum031.w += vrmpy(dline200.ub,__m8m7m6.b,#1) //[2]
    }
    { sline004 = valign(sline064,sline000,#4)       //[1]
      dSum120.w += vrmpy(dline300.ub,__m8m7m6.b,#0) //[2]
      sSum20L.h = vasr(sSum02.w,sSum00.w,shift)     //[2]
    }
    { sline300 = sline364                           //[1]
      dSum131.w += vrmpy(dline300.ub,__m8m7m6.b,#1) //[2]
      sSum31L.h = vasr(sSum03.w,sSum01.w,shift)     //[2]
    }
    { sline104 = valign(sline164,sline100,#4)       //[1]
      dSum020.w = vrmpy(dline000.ub,__m2m1m0.b,#0)  //[1]
      sSum20H.h = vasr(sSum12.w,sSum10.w,shift)     //[2]
    }
    { dSum031.w = vrmpy(dline000.ub,__m2m1m0.b, #1) //[1]
      sSum31H.h = vasr(sSum13.w,sSum11.w,shift)     //[2]
    }
    { sline264 = vmem(iptr2++#1)                    //[1]
      dSum020.w += vrmpy(dline100.ub,__m5m4m3.b,#0) //[1]
      sOut01.ub = vsat(sSum31L.h,sSum20L.h)         //[2]
    }
    { sline364 = vmem(iptr3++#1)                    //[1]
      dSum131.w = vrmpy(dline100.ub,__m2m1m0.b,#1)  //[1]
      sOut11.ub = vsat(sSum31H.h,sSum20H.h)         //[2]
    }
    { sline204 = valign(sline264,sline200,#4)       //[1]
      dSum120.w = vrmpy(dline100.ub,__m2m1m0.b, #0) //[1]
      sline000 = sline064                           //[1]
    }
    { dSum031.w += vrmpy(dline100.ub,__m5m4m3.b,#1) //[1]
      sline100 = sline164                           //[1]
      sOut00 = vlalign(sOut01,sOut01prv,#1)         //[2]
      IF P3 vmem(optr0++#1) = sOut00.new            //[2]
    }
    { dSum120.w += vrmpy(dline200.ub,__m5m4m3.b,#0) //[1]
      sOut10 = vlalign(sOut11,sOut11prv,#1)         //[2]
      IF P3 vmem(optr1++#1) = sOut10.new            //[2]
    }
    { dSum131.w += vrmpy(dline200.ub,__m5m4m3.b,#1) //[1]
      sOut01prv = sOut01                            //[2]
      sOut11prv = sOut11                            //[2]
    }:endloop0

    //====== epilogue ======
    { sline304 = valign(sline364,sline300,#4)       //[2]
      dSum020.w += vrmpy(dline200.ub,__m8m7m6.b,#0) //[2]
    }
    { dSum031.w += vrmpy(dline200.ub,__m8m7m6.b,#1) //[2]
    }
    { dSum120.w += vrmpy(dline300.ub,__m8m7m6.b,#0) //[2]
      sSum20L.h = vasr(sSum02.w,sSum00.w,shift)     //[2]
    }
    { dSum131.w += vrmpy(dline300.ub,__m8m7m6.b,#1) //[2]
      sSum31L.h = vasr(sSum03.w,sSum01.w,shift)     //[2]
    }
    { sSum20H.h = vasr(sSum12.w,sSum10.w,shift)     //[2]
    }
    { sSum31H.h = vasr(sSum13.w,sSum11.w,shift)     //[2]
    }
    { sOut01.ub = vsat(sSum31L.h,sSum20L.h)         //[2]
    }
    { sOut11.ub = vsat(sSum31H.h,sSum20H.h)         //[2]
    }
    { sOut00 = vlalign(sOut01,sOut01prv,#1)         //[2]
      vmem(optr0+#0) = sOut00.new                   //[2]
    }
    { sOut10 = vlalign(sOut11,sOut11prv,#1)         //[2]
      vmem(optr1+#0) = sOut10.new                   //[2]
    }
    { JUMPR R31                                     // return
    }
    .size	conv3x3Per2Row, .-conv3x3Per2Row
