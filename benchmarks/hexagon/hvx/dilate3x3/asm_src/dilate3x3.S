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
    .file    "dilate3x3.S"

#include "hvx.cfg.h"
    /*[*****************************************************************************]*/
    /*[  FUNCTION   : void dilate3x3Per2Row()                                       ]*/
    /*[*****************************************************************************]*/
    /*[  DESCRIPTION: Performs 3x3 dilation of an image block                       ]*/
    /*[=============================================================================]*/
    /*[  INPUTS     : R0 : unsigned char *src  -- pointer to input image            ]*/
    /*[               R1 : int stride_i        -- stride of image input             ]*/
    /*[               R2 : int width           -- image width                       ]*/
    /*[               R3 : unsigned char *dst  -- pointer to output buffer          ]*/
    /*[               R4 : int stride_o        -- stride of image output            ]*/
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
#define outp0               R4
#define outp1               R5
/* ============================================================ */
#define sLine0              V0
#define sLine1              V1
#define sLine2              V2
#define sLine3              V3
#define sVmax0v0            V4
#define sVmax0v1            V5
#define sVmax1v0            V6
#define sVmax1v1            V7
#define sOut0               V8
#define sOut1               V9
#define sVmax00             V10
#define sVmax10             V11
#define sVmax02             V12
#define sVmax12             V13
#define sMaxl1l2            V14
#define sVmax01             sVmax0v0
#define sVmax11             sVmax1v0
/* ============================================================ */
    .text
    .p2align 2
    .p2align 4,,15
    .globl dilate3x3Per2Row
    .type    dilate3x3Per2Row, @function
dilate3x3Per2Row:
    { R28 = ADD(R2,#(VLEN-1-2*VLEN))                //
      R1:0 = COMBINE(R0,R1)                         // R1 = src
      outp0 = R3                                    // R4 = dst
      outp1 = ADD(R3,R4)                            // R5 = dst + stride
    }
    { R0 = SUB(R1,R0)                               // R0 = src - stride
      R2 = ADD(R1,R0)                               // R2 = src + 1*stride
      R3 = ADDASL(R1,R0,#1)                         // R3 = src + 2*stride
      sLine1 = VMEM(R1++#1)                         //
    }
    { R28 = ASR(R28,#LOG2VLEN)                      // ceil(width/VLEN)
      sLine2 = VMEM(R2++#1)                         //
    }
    { sLine0 = VMEM(R0++#1)                         //
      sMaxl1l2.ub = VMAX(sLine1.ub,sLine2.ub)       //
      P3 = !CMP.EQ(R28,#-1)                         //
    }
    { sLine3 = VMEM(R3++#1)                         //
      sVmax0v1.ub = VMAX(sLine0.ub,sMaxl1l2.ub)     //
      IF !P3 JUMP .dilate3x3Per2RowLPEND            //
    }
    { LOOP0(.dilate3x3Per2RowLOOP,R28)              // setup loop0 
      sLine1 = VMEM(R1++#1)                         //[p]
      sVmax1v1.ub = VMAX(sMaxl1l2.ub,sLine3.ub)     //[p]
    }
    { sLine2 = VMEM(R2++#1)                         //[p]
      sVmax00 = VLALIGN(sVmax0v1,sVmax0v0,#1)       //[p]
      sVmax0v0 = sVmax0v1                           //[p]
    }
    { sLine0 = VMEM(R0++#1)                         //[p]
      sMaxl1l2.ub = VMAX(sLine1.ub,sLine2.ub)       //[p]
    }
    { sLine3 = VMEM(R3++#1)                         //[p]
      sVmax0v1.ub = VMAX(sLine0.ub,sMaxl1l2.ub)     //[p]
      P0 = CMP.GT(R28,#0)                           //
    }
    { sOut0.ub = VMAX(sVmax00.ub,sVmax01.ub)        //[p]
      sVmax10 = VLALIGN(sVmax1v1,sVmax1v0,#1)       //[p]
      IF !P0 JUMP .dilate3x3Per2RowLPEND            //
    }

    .falign
.dilate3x3Per2RowLOOP:
    { sLine1 = VMEM(R1++#1)                         //[1]
      sVmax1v0 = sVmax1v1                           //[2]
      sVmax1v1.ub = VMAX(sMaxl1l2.ub,sLine3.ub)     //[2]
      sVmax02 = VALIGN(sVmax0v1,sVmax0v0,#1)        //[2]
    }
    { sLine2 = VMEM(R2++#1)                         //[1]
      sVmax00 = VLALIGN(sVmax0v1,sVmax0v0,#1)       //[1]
      sVmax0v0 = sVmax0v1                           //[1]
      sOut1.ub = VMAX(sVmax10.ub,sVmax11.ub)        //[2]
    }
    { sLine0 = VMEM(R0++#1)                         //[1]
      sMaxl1l2.ub = VMAX(sLine1.ub,sLine2.ub)       //[1]
      sVmax12 = VALIGN(sVmax1v1,sVmax1v0,#1)        //[2]
    }
    { sLine3 = VMEM(R3++#1)                         //[1]
      sVmax0v1.ub = VMAX(sLine0.ub,sMaxl1l2.ub)     //[1]
      sOut0.ub = VMAX(sOut0.ub,sVmax02.ub)          //[2]
      VMEM(R4++#1) = sOut0.new                      //[2]
    }
    { sOut0.ub = VMAX(sVmax00.ub,sVmax01.ub)        //[1]
      sVmax10 = VLALIGN(sVmax1v1,sVmax1v0,#1)       //[1]
      sOut1.ub = VMAX(sOut1.ub,sVmax12.ub)          //[2]
      VMEM(R5++#1) = sOut1.new                      //[2]
    }:endloop0

    .falign
.dilate3x3Per2RowLPEND:
    { sVmax1v0 = sVmax1v1                           //[2]
      sVmax1v1.ub = VMAX(sMaxl1l2.ub,sLine3.ub)     //[2]
      sVmax02 = VALIGN(sVmax0v1,sVmax0v0,#1)        //[2]
    }
    { sVmax00 = VLALIGN(sVmax0v1,sVmax0v0,#1)       //[1]
      sVmax0v0 = sVmax0v1                           //[1]
      sOut1.ub = VMAX(sVmax10.ub,sVmax11.ub)        //[2]
    }
    { sMaxl1l2.ub = VMAX(sLine1.ub,sLine2.ub)       //[1]
      sVmax12 = VALIGN(sVmax1v1,sVmax1v0,#1)        //[2]
    }
    { sVmax0v1.ub = VMAX(sLine0.ub,sMaxl1l2.ub)     //[1]
      sOut0.ub = VMAX(sOut0.ub,sVmax02.ub)          //[2]
      IF P3 VMEM(R4++#1) = sOut0.new                //[2]
    }
    { sOut0.ub = VMAX(sVmax00.ub,sVmax01.ub)        //[1]
      sVmax10 = VLALIGN(sVmax1v1,sVmax1v0,#1)       //[1]
      sOut1.ub = VMAX(sOut1.ub,sVmax12.ub)          //[2]
      IF P3 VMEM(R5++#1) = sOut1.new                //[2]
    }
    //====== epilogue ======
    { sVmax1v0 = sVmax1v1                           //[e]
      sVmax1v1.ub = VMAX(sMaxl1l2.ub,sLine3.ub)     //[e]
      sVmax02 = VALIGN(sVmax0v1,sVmax0v0,#1)        //[e]
    }
    { sOut1.ub = VMAX(sVmax10.ub,sVmax11.ub)        //[e]
    }
    { sVmax12 = VALIGN(sVmax1v1,sVmax1v0,#1)        //[e]
      sOut0.ub = VMAX(sOut0.ub,sVmax02.ub)          //[e]
      VMEM(R4+#0) = sOut0.new                       //[e]
    }
    { sOut1.ub = VMAX(sOut1.ub,sVmax12.ub)          //[e]
      VMEM(R5+#0) = sOut1.new                       //[e]
    }
    { JUMPR R31                                     // return
    }
    .size    dilate3x3Per2Row, .-dilate3x3Per2Row





