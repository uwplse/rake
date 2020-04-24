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
    .file	"sobel.S"

#include "hvx.cfg.h"
    /*[*****************************************************************************]*/
    /*[  FUNCTION   : void sobelPer2Row()                                           ]*/
    /*[*****************************************************************************]*/
    /*[  DESCRIPTION: performs 3x3 soble filter on an image block                   ]*/
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
#define optr0               R3
#define optr1               R4
#define iptr0               R5
#define iptr2               R6
#define iptr3               R7
#define c121                R8
#define cn11                R9
#define cn22                R10
#define vsize               R11
/* ============================================================ */
#define sLine0v0            v0
#define sLine0v1            v1
#define sLine1v0            v2
#define sLine1v1            v3
#define sLine2v0            v4
#define sLine2v1            v5
#define sLine3v0            v6
#define sLine3v1            v7
#define sX00                V8
#define sX02                V9
#define dX02X00             V9:8
#define sX10                V10
#define sX12                V11
#define dX12X10             V11:10
#define sX20                V12
#define sX22                V13
#define dX22X20             V13:12
#define sX30                V14
#define sX32                V15
#define dX32X30             V15:14
#define sHsum00L            V16
#define sHsum00H            V17
#define dHsum00             V17:16
#define sHsum10L            V18
#define sHsum10H            V19
#define dHsum10             V19:18
#define sHsum02L            V20
#define sHsum02H            V21
#define dHsum02             V21:20
#define sHsum12L            V22
#define sHsum12H            V23
#define dHsum12             V23:22
#define sVsum0L             V24
#define sVsum0H             V25
#define dVsum0              V25:24
#define sVsum1L             V26
#define sVsum1H             V27
#define dVsum1              V27:26
#define sEdgeH0L            sHsum02L
#define sEdgeH0H            sHsum02H
#define dEdgeH0             dHsum02
#define sEdgeH1L            sHsum12L
#define sEdgeH1H            sHsum12H
#define dEdgeH1             dHsum12
#define sEdgeV0L            sVsum0L
#define sEdgeV0H            sVsum0H
#define dEdgeV0             dVsum0
#define sEdgeV1L            sVsum1L
#define sEdgeV1H            sVsum1H
#define dEdgeV1             dVsum1
#define sEdge0L             sEdgeH0L
#define sEdge0H             sEdgeH0H
#define dEdge0              dEdgeH0
#define sEdge1L             sEdgeH1L
#define sEdge1H             sEdgeH1H
#define dEdge1              dEdgeH1
#define sOut0               sHsum02L
#define sOut1               sHsum12L
/* ============================================================ */
    .text
    .p2align 2
    .p2align 4,,15
    .globl sobelPer2Row
    .type	sobelPer2Row, @function
sobelPer2Row:
    { R28 = ADD(width,#VLEN-1)                      //
      iptr0 = SUB(iptr1,stride)                     //
      iptr2 = ADD(iptr1,stride)                     //
      optr1 = ADD(optr0, stride)                    //
    }
    { R28 = LSR(R28,#LOG2VLEN)                      // ceil(width/VLEN)
      iptr3 = ADD(iptr2,stride)                     //
      R8 = ##0xFF010201                             //
    }
    { P3 = SP1LOOP0(.sobelPer2RowLoop,R28)          //
      P0 = CMP.GT(R28,#1)                           //
      vsize = #VLEN                                 //
      sLine0v1 = VMEM(iptr0+#0)                     //
    }
    { R9:8 = PACKHL(R8,R8)                          // R8 = c121, R9 = cn11
      sLine1v1 = VMEM(iptr1+#0)                     //
      IF P0 iptr0 = ADD(iptr0,vsize)                //
      IF P0 iptr1 = ADD(iptr1,vsize)                //
    }
    { cn22 = ##0xFE02FE02                           //
      sLine2v1 = VMEM(iptr2+#0)                     //
      IF P0 iptr2 = ADD(iptr2,vsize)                //
    }
    { sLine3v1 = VMEM(iptr3+#0)                     //
      IF P0 iptr3 = ADD(iptr3,vsize)                //
      R28 = ADD(R28,#-1)                            //
    }

    .falign
.sobelPer2RowLoop:
    { sX00 = VLALIGN(sLine0v1,sLine0v0,#1)          //[1]
      sLine0v0 = sLine0v1                           //[1]
      P0 = CMP.GT(R28,#1)                           //[1]
      dVsum0.h += VMPA(dX22X20.ub,cn11.b)           //[2]
    }
    { sX10 = VLALIGN(sLine1v1,sLine1v0,#1)          //[1]
      sLine0v1 = VMEM(iptr0+#0)                     //[1]
      IF P0 iptr0 = ADD(iptr0,vsize)                //[1]
      dHsum12.h = VTMPY(dX32X30.ub,c121.b)          //[2]
    }
    { sX20 = VLALIGN(sLine2v1,sLine2v0,#1)          //[1]
      sLine1v0 = sLine1v1                           //[1]
      dVsum1.h += VMPA(dX32X30.ub,cn11.b)           //[2]
    }
    { sX30 = VLALIGN(sLine3v1,sLine3v0,#1)          //[1]
      sLine1v1 = VMEM(iptr1+#0)                     //[1]
      sEdgeH0L.uh = VABSDIFF(sHsum02L.h,sHsum00L.h) //[2]
      sEdgeH0H.uh = VABSDIFF(sHsum02H.h,sHsum00H.h) //[2]
    }
    { sX02 = VALIGN(sLine0v1,sLine0v0,#1)           //[1]
      sLine2v0 = sLine2v1                           //[1]
      sEdgeH1L.uh = VABSDIFF(sHsum12L.h,sHsum10L.h) //[2]
      sEdgeH1H.uh = VABSDIFF(sHsum12H.h,sHsum10H.h) //[2]
    }
    { sX12 = VALIGN(sLine1v1,sLine1v0,#1)           //[1]
      sLine2v1 = VMEM(iptr2+#0)                     //[1]
      sEdgeV0L.h = VABS(sVsum0L.h)                  //[2]
      sEdgeV0H.h = VABS(sVsum0H.h)                  //[2]
    }
    { dHsum00.h = VTMPY(dX02X00.ub,c121.b)          //[1]
      sEdgeV1L.h = VABS(sVsum1L.h)                  //[2]
      sEdgeV1H.h = VABS(sVsum1H.h)                  //[2]
    }
    { dHsum10.h = VTMPY(dX12X10.ub,c121.b)          //[1]
      IF P0 iptr1 = ADD(iptr1,vsize)                //[1]
      dEdge0.h = VADD(dEdgeH0.h,dEdgeV0.h)          //[2]
    }
    { dVsum0.h = VSUB(sX00.ub,sX02.ub)              //[1]
      sX22 = VALIGN(sLine2v1,sLine2v0,#1)           //[1]
      IF P0 iptr2 = ADD(iptr2,vsize)                //[1]
    }
    { dVsum1.h = VSUB(sX10.ub,sX12.ub)              //[1]
      R28 = ADD(R28,#-1)                            //[1]
      dEdge1.h = VADD(dEdgeH1.h,dEdgeV1.h)          //[2]
    }
    { dVsum0.h += VMPA(dX12X10.ub,cn22.b)           //[1]
      sLine3v0 = sLine3v1                           //[1]
      sLine3v1 = VMEM(iptr3+#0)                     //[1]
      IF P0 iptr3 = ADD(iptr3,vsize)                //[1]
    }
    { dVsum1.h += VMPA(dX22X20.ub,cn22.b)           //[1]
      sOut0.ub = VSAT(sEdge0H.h,sEdge0L.h)          //[2]
      IF P3 VMEM(optr0++#1) = sOut0.new             //[2]
    }
    { dHsum02.h = VTMPY(dX22X20.ub,c121.b)          //[1]
      sX32 = VALIGN(sLine3v1,sLine3v0,#1)           //[1]
      sOut1.ub = VSAT(sEdge1H.h,sEdge1L.h)          //[2]
      IF P3 VMEM(optr1++#1) = sOut1.new             //[2]
    }:endloop0

    //====== epilogue ======
    { dVsum0.h += VMPA(dX22X20.ub,cn11.b)           //[2]
    }
    { dHsum12.h = VTMPY(dX32X30.ub,c121.b)          //[2]
    }
    { dVsum1.h += VMPA(dX32X30.ub,cn11.b)           //[2]
      sEdgeV0L.h = VABS(sVsum0L.h)                  //[2]
      sEdgeV0H.h = VABS(sVsum0H.h)                  //[2]
    }
    { sEdgeH0L.uh = VABSDIFF(sHsum02L.h,sHsum00L.h) //[2]
      sEdgeH0H.uh = VABSDIFF(sHsum02H.h,sHsum00H.h) //[2]
      sEdgeV1L.h = VABS(sVsum1L.h)                  //[2]
      sEdgeV1H.h = VABS(sVsum1H.h)                  //[2]
    }
    { sEdgeH1L.uh = VABSDIFF(sHsum12L.h,sHsum10L.h) //[2]
      sEdgeH1H.uh = VABSDIFF(sHsum12H.h,sHsum10H.h) //[2]
      dEdge0.h = VADD(dEdgeH0.h,dEdgeV0.h)          //[2]
    }
    { dEdge1.h = VADD(dEdgeH1.h,dEdgeV1.h)          //[2]
    }
    { sOut0.ub = VSAT(sEdge0H.h,sEdge0L.h)          //[2]
      VMEM(optr0+#0) = sOut0.new                    //[2]
    }
    { sOut1.ub = VSAT(sEdge1H.h,sEdge1L.h)          //[2]
      VMEM(optr1+#0) = sOut1.new                    //[2]
    }
    { JUMPR R31                                     // return
    }
    .size	sobelPer2Row, .-sobelPer2Row

