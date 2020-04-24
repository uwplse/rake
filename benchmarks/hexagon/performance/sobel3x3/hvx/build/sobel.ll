; ModuleID = 'src/sobel.c'
source_filename = "src/sobel.c"
target datalayout = "e-m:e-p:32:32:32-a:0-n16:32-i64:64:64-i32:32:32-i16:16:16-i1:8:8-f32:32:32-f64:64:64-v32:32:32-v64:64:64-v512:512:512-v1024:1024:1024-v2048:2048:2048"
target triple = "hexagon"

; Function Attrs: nounwind
define dso_local void @sobelPer2Row(i8* noalias nocapture readonly %inp, i32 %stride, i32 %width, i8* noalias nocapture %outp) local_unnamed_addr #0 {
entry:
  %idx.neg = sub i32 0, %stride
  %add.ptr = getelementptr inbounds i8, i8* %inp, i32 %idx.neg
  %0 = bitcast i8* %add.ptr to <32 x i32>*
  %1 = bitcast i8* %inp to <32 x i32>*
  %add.ptr4 = getelementptr inbounds i8, i8* %inp, i32 %stride
  %2 = bitcast i8* %add.ptr4 to <32 x i32>*
  %mul5 = shl nsw i32 %stride, 1
  %add.ptr6 = getelementptr inbounds i8, i8* %inp, i32 %mul5
  %3 = bitcast i8* %add.ptr6 to <32 x i32>*
  %4 = bitcast i8* %outp to <32 x i32>*
  %add.ptr10 = getelementptr inbounds i8, i8* %outp, i32 %stride
  %5 = bitcast i8* %add.ptr10 to <32 x i32>*
  %6 = tail call <32 x i32> @llvm.hexagon.V6.vd0.128B()
  %7 = load <32 x i32>, <32 x i32>* %0, align 128, !tbaa !2
  %8 = load <32 x i32>, <32 x i32>* %1, align 128, !tbaa !2
  %9 = load <32 x i32>, <32 x i32>* %2, align 128, !tbaa !2
  %10 = load <32 x i32>, <32 x i32>* %3, align 128, !tbaa !2
  %cmp = icmp sgt i32 %width, 64
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr, i32 128
  %11 = bitcast i8* %incdec.ptr to <32 x i32>*
  %incdec.ptr11 = getelementptr inbounds i8, i8* %inp, i32 128
  %12 = bitcast i8* %incdec.ptr11 to <32 x i32>*
  %incdec.ptr12 = getelementptr inbounds i8, i8* %add.ptr4, i32 128
  %13 = bitcast i8* %incdec.ptr12 to <32 x i32>*
  %incdec.ptr13 = getelementptr inbounds i8, i8* %add.ptr6, i32 128
  %14 = bitcast i8* %incdec.ptr13 to <32 x i32>*
  br label %for.body.preheader

if.end:                                           ; preds = %entry
  %cmp14131 = icmp sgt i32 %width, 0
  br i1 %cmp14131, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end.thread, %if.end
  %iptr3.1144.ph = phi <32 x i32>* [ %3, %if.end ], [ %14, %if.end.thread ]
  %iptr2.1143.ph = phi <32 x i32>* [ %2, %if.end ], [ %13, %if.end.thread ]
  %iptr1.1142.ph = phi <32 x i32>* [ %1, %if.end ], [ %12, %if.end.thread ]
  %iptr0.1141.ph = phi <32 x i32>* [ %0, %if.end ], [ %11, %if.end.thread ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %optr1.0146 = phi <32 x i32>* [ %incdec.ptr16, %for.inc ], [ %5, %for.body.preheader ]
  %optr0.0145 = phi <32 x i32>* [ %incdec.ptr15, %for.inc ], [ %4, %for.body.preheader ]
  %iptr3.1144 = phi <32 x i32>* [ %iptr3.2, %for.inc ], [ %iptr3.1144.ph, %for.body.preheader ]
  %iptr2.1143 = phi <32 x i32>* [ %iptr2.2, %for.inc ], [ %iptr2.1143.ph, %for.body.preheader ]
  %iptr1.1142 = phi <32 x i32>* [ %iptr1.2, %for.inc ], [ %iptr1.1142.ph, %for.body.preheader ]
  %iptr0.1141 = phi <32 x i32>* [ %iptr0.2, %for.inc ], [ %iptr0.1141.ph, %for.body.preheader ]
  %i.0140 = phi i32 [ %sub, %for.inc ], [ %width, %for.body.preheader ]
  %sLine0v0.0139 = phi <32 x i32> [ %sLine0v1.0138, %for.inc ], [ %6, %for.body.preheader ]
  %sLine0v1.0138 = phi <32 x i32> [ %19, %for.inc ], [ %7, %for.body.preheader ]
  %sLine1v0.0137 = phi <32 x i32> [ %sLine1v1.0136, %for.inc ], [ %6, %for.body.preheader ]
  %sLine1v1.0136 = phi <32 x i32> [ %20, %for.inc ], [ %8, %for.body.preheader ]
  %sLine2v0.0135 = phi <32 x i32> [ %sLine2v1.0134, %for.inc ], [ %6, %for.body.preheader ]
  %sLine2v1.0134 = phi <32 x i32> [ %21, %for.inc ], [ %9, %for.body.preheader ]
  %sLine3v0.0133 = phi <32 x i32> [ %sLine3v1.0132, %for.inc ], [ %6, %for.body.preheader ]
  %sLine3v1.0132 = phi <32 x i32> [ %22, %for.inc ], [ %10, %for.body.preheader ]
  %15 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %sLine0v1.0138, <32 x i32> %sLine0v0.0139, i32 1)
  %16 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %sLine1v1.0136, <32 x i32> %sLine1v0.0137, i32 1)
  %17 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %sLine2v1.0134, <32 x i32> %sLine2v0.0135, i32 1)
  %18 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %sLine3v1.0132, <32 x i32> %sLine3v0.0133, i32 1)
  %19 = load <32 x i32>, <32 x i32>* %iptr0.1141, align 128, !tbaa !2
  %20 = load <32 x i32>, <32 x i32>* %iptr1.1142, align 128, !tbaa !2
  %21 = load <32 x i32>, <32 x i32>* %iptr2.1143, align 128, !tbaa !2
  %22 = load <32 x i32>, <32 x i32>* %iptr3.1144, align 128, !tbaa !2
  %23 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %19, <32 x i32> %sLine0v1.0138, i32 1)
  %24 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %20, <32 x i32> %sLine1v1.0136, i32 1)
  %25 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %21, <32 x i32> %sLine2v1.0134, i32 1)
  %26 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %22, <32 x i32> %sLine3v1.0132, i32 1)
  %27 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %23, <32 x i32> %15)
  %28 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %24, <32 x i32> %16)
  %29 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %25, <32 x i32> %17)
  %30 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %26, <32 x i32> %18)
  %31 = tail call <64 x i32> @llvm.hexagon.V6.vtmpybus.128B(<64 x i32> %27, i32 33620481)
  %32 = tail call <64 x i32> @llvm.hexagon.V6.vtmpybus.128B(<64 x i32> %29, i32 33620481)
  %33 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %32)
  %34 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %31)
  %35 = tail call <32 x i32> @llvm.hexagon.V6.vabsdiffh.128B(<32 x i32> %33, <32 x i32> %34)
  %36 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %32)
  %37 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %31)
  %38 = tail call <32 x i32> @llvm.hexagon.V6.vabsdiffh.128B(<32 x i32> %36, <32 x i32> %37)
  %39 = tail call <64 x i32> @llvm.hexagon.V6.vsububh.128B(<32 x i32> %15, <32 x i32> %23)
  %40 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %39, <64 x i32> %28, i32 -33358334)
  %41 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %40, <64 x i32> %29, i32 -16646399)
  %42 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %41)
  %43 = tail call <32 x i32> @llvm.hexagon.V6.vabsh.128B(<32 x i32> %42)
  %44 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %41)
  %45 = tail call <32 x i32> @llvm.hexagon.V6.vabsh.128B(<32 x i32> %44)
  %46 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %35, <32 x i32> %43)
  %47 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %38, <32 x i32> %45)
  %48 = tail call <32 x i32> @llvm.hexagon.V6.vsathub.128B(<32 x i32> %47, <32 x i32> %46)
  %incdec.ptr15 = getelementptr inbounds <32 x i32>, <32 x i32>* %optr0.0145, i32 1
  store <32 x i32> %48, <32 x i32>* %optr0.0145, align 128, !tbaa !2
  %49 = tail call <64 x i32> @llvm.hexagon.V6.vtmpybus.128B(<64 x i32> %28, i32 33620481)
  %50 = tail call <64 x i32> @llvm.hexagon.V6.vtmpybus.128B(<64 x i32> %30, i32 33620481)
  %51 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %50)
  %52 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %49)
  %53 = tail call <32 x i32> @llvm.hexagon.V6.vabsdiffh.128B(<32 x i32> %51, <32 x i32> %52)
  %54 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %50)
  %55 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %49)
  %56 = tail call <32 x i32> @llvm.hexagon.V6.vabsdiffh.128B(<32 x i32> %54, <32 x i32> %55)
  %57 = tail call <64 x i32> @llvm.hexagon.V6.vsububh.128B(<32 x i32> %16, <32 x i32> %24)
  %58 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %57, <64 x i32> %29, i32 -33358334)
  %59 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %58, <64 x i32> %30, i32 -16646399)
  %60 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %59)
  %61 = tail call <32 x i32> @llvm.hexagon.V6.vabsh.128B(<32 x i32> %60)
  %62 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %59)
  %63 = tail call <32 x i32> @llvm.hexagon.V6.vabsh.128B(<32 x i32> %62)
  %64 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %53, <32 x i32> %61)
  %65 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %56, <32 x i32> %63)
  %66 = tail call <32 x i32> @llvm.hexagon.V6.vsathub.128B(<32 x i32> %65, <32 x i32> %64)
  %incdec.ptr16 = getelementptr inbounds <32 x i32>, <32 x i32>* %optr1.0146, i32 1
  store <32 x i32> %66, <32 x i32>* %optr1.0146, align 128, !tbaa !2
  %cmp17 = icmp sgt i32 %i.0140, 128
  br i1 %cmp17, label %if.then18, label %for.inc

if.then18:                                        ; preds = %for.body
  %incdec.ptr19 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr0.1141, i32 1
  %incdec.ptr20 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr1.1142, i32 1
  %incdec.ptr21 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr2.1143, i32 1
  %incdec.ptr22 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr3.1144, i32 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then18
  %iptr0.2 = phi <32 x i32>* [ %incdec.ptr19, %if.then18 ], [ %iptr0.1141, %for.body ]
  %iptr1.2 = phi <32 x i32>* [ %incdec.ptr20, %if.then18 ], [ %iptr1.1142, %for.body ]
  %iptr2.2 = phi <32 x i32>* [ %incdec.ptr21, %if.then18 ], [ %iptr2.1143, %for.body ]
  %iptr3.2 = phi <32 x i32>* [ %incdec.ptr22, %if.then18 ], [ %iptr3.1144, %for.body ]
  %sub = add nsw i32 %i.0140, -64
  %cmp14 = icmp sgt i32 %i.0140, 64
  br i1 %cmp14, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  ret void
}

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.vd0.128B() #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32>, <32 x i32>, i32) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32>, <32 x i32>, i32) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32>, <32 x i32>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.hexagon.V6.vtmpybus.128B(<64 x i32>, i32) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.vabsdiffh.128B(<32 x i32>, <32 x i32>) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32>) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.hexagon.V6.vsububh.128B(<32 x i32>, <32 x i32>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32>, <64 x i32>, i32) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.vabsh.128B(<32 x i32>) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32>, <32 x i32>) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.vsathub.128B(<32 x i32>, <32 x i32>) #1

; Function Attrs: nounwind
define dso_local void @sobel(i8* nocapture readonly %in, i32 %stride, i32 %width, i32 %height, i8* nocapture %out) local_unnamed_addr #0 {
entry:
  %sub = add nsw i32 %height, -1
  %cmp17 = icmp sgt i32 %height, 2
  br i1 %cmp17, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr2 = getelementptr inbounds i8, i8* %out, i32 %stride
  %add.ptr = getelementptr inbounds i8, i8* %in, i32 %stride
  %idx.neg.i = sub i32 0, %stride
  %mul5.i = shl nsw i32 %stride, 1
  %0 = tail call <32 x i32> @llvm.hexagon.V6.vd0.128B() #2
  %cmp.i = icmp sgt i32 %width, 64
  %cmp14131.i = icmp sgt i32 %width, 0
  %.phi.trans.insert = bitcast i8* %add.ptr to <32 x i32>*
  %.pre = load <32 x i32>, <32 x i32>* %.phi.trans.insert, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %sobelPer2Row.exit
  %1 = phi <32 x i32> [ %.pre, %for.body.lr.ph ], [ %9, %sobelPer2Row.exit ]
  %output.020 = phi i8* [ %add.ptr2, %for.body.lr.ph ], [ %add.ptr6, %sobelPer2Row.exit ]
  %input.019 = phi i8* [ %add.ptr, %for.body.lr.ph ], [ %add.ptr6.i, %sobelPer2Row.exit ]
  %i.018 = phi i32 [ 1, %for.body.lr.ph ], [ %add, %sobelPer2Row.exit ]
  %add.ptr.i = getelementptr inbounds i8, i8* %input.019, i32 %idx.neg.i
  %2 = bitcast i8* %add.ptr.i to <32 x i32>*
  %add.ptr4.i = getelementptr inbounds i8, i8* %input.019, i32 %stride
  %3 = bitcast i8* %add.ptr4.i to <32 x i32>*
  %add.ptr6.i = getelementptr inbounds i8, i8* %input.019, i32 %mul5.i
  %4 = bitcast i8* %add.ptr6.i to <32 x i32>*
  %5 = bitcast i8* %output.020 to <32 x i32>*
  %add.ptr10.i = getelementptr inbounds i8, i8* %output.020, i32 %stride
  %6 = bitcast i8* %add.ptr10.i to <32 x i32>*
  %7 = load <32 x i32>, <32 x i32>* %2, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %8 = load <32 x i32>, <32 x i32>* %3, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %9 = load <32 x i32>, <32 x i32>* %4, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %for.body
  %incdec.ptr.i = getelementptr inbounds i8, i8* %add.ptr.i, i32 128
  %10 = bitcast i8* %incdec.ptr.i to <32 x i32>*
  %incdec.ptr11.i = getelementptr inbounds i8, i8* %input.019, i32 128
  %incdec.ptr12.i = getelementptr inbounds i8, i8* %add.ptr4.i, i32 128
  %11 = bitcast i8* %incdec.ptr12.i to <32 x i32>*
  %incdec.ptr13.i = getelementptr inbounds i8, i8* %add.ptr6.i, i32 128
  %12 = bitcast i8* %incdec.ptr13.i to <32 x i32>*
  br label %for.body.preheader.i

if.end.i:                                         ; preds = %for.body
  br i1 %cmp14131.i, label %for.body.preheader.i, label %sobelPer2Row.exit

for.body.preheader.i:                             ; preds = %if.end.i, %if.end.thread.i
  %iptr3.0151.i = phi <32 x i32>* [ %12, %if.end.thread.i ], [ %4, %if.end.i ]
  %iptr2.0150.i = phi <32 x i32>* [ %11, %if.end.thread.i ], [ %3, %if.end.i ]
  %iptr1.0149.i.in = phi i8* [ %incdec.ptr11.i, %if.end.thread.i ], [ %input.019, %if.end.i ]
  %iptr0.0148.i = phi <32 x i32>* [ %10, %if.end.thread.i ], [ %2, %if.end.i ]
  %iptr1.0149.i = bitcast i8* %iptr1.0149.i.in to <32 x i32>*
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.preheader.i
  %optr1.0146.i = phi <32 x i32>* [ %incdec.ptr16.i, %for.inc.i ], [ %6, %for.body.preheader.i ]
  %optr0.0145.i = phi <32 x i32>* [ %incdec.ptr15.i, %for.inc.i ], [ %5, %for.body.preheader.i ]
  %iptr3.1144.i = phi <32 x i32>* [ %iptr3.2.i, %for.inc.i ], [ %iptr3.0151.i, %for.body.preheader.i ]
  %iptr2.1143.i = phi <32 x i32>* [ %iptr2.2.i, %for.inc.i ], [ %iptr2.0150.i, %for.body.preheader.i ]
  %iptr1.1142.i = phi <32 x i32>* [ %iptr1.2.i, %for.inc.i ], [ %iptr1.0149.i, %for.body.preheader.i ]
  %iptr0.1141.i = phi <32 x i32>* [ %iptr0.2.i, %for.inc.i ], [ %iptr0.0148.i, %for.body.preheader.i ]
  %i.0140.i = phi i32 [ %sub.i, %for.inc.i ], [ %width, %for.body.preheader.i ]
  %sLine0v0.0139.i = phi <32 x i32> [ %sLine0v1.0138.i, %for.inc.i ], [ %0, %for.body.preheader.i ]
  %sLine0v1.0138.i = phi <32 x i32> [ %17, %for.inc.i ], [ %7, %for.body.preheader.i ]
  %sLine1v0.0137.i = phi <32 x i32> [ %sLine1v1.0136.i, %for.inc.i ], [ %0, %for.body.preheader.i ]
  %sLine1v1.0136.i = phi <32 x i32> [ %18, %for.inc.i ], [ %1, %for.body.preheader.i ]
  %sLine2v0.0135.i = phi <32 x i32> [ %sLine2v1.0134.i, %for.inc.i ], [ %0, %for.body.preheader.i ]
  %sLine2v1.0134.i = phi <32 x i32> [ %19, %for.inc.i ], [ %8, %for.body.preheader.i ]
  %sLine3v0.0133.i = phi <32 x i32> [ %sLine3v1.0132.i, %for.inc.i ], [ %0, %for.body.preheader.i ]
  %sLine3v1.0132.i = phi <32 x i32> [ %20, %for.inc.i ], [ %9, %for.body.preheader.i ]
  %13 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %sLine0v1.0138.i, <32 x i32> %sLine0v0.0139.i, i32 1) #2
  %14 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %sLine1v1.0136.i, <32 x i32> %sLine1v0.0137.i, i32 1) #2
  %15 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %sLine2v1.0134.i, <32 x i32> %sLine2v0.0135.i, i32 1) #2
  %16 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %sLine3v1.0132.i, <32 x i32> %sLine3v0.0133.i, i32 1) #2
  %17 = load <32 x i32>, <32 x i32>* %iptr0.1141.i, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %18 = load <32 x i32>, <32 x i32>* %iptr1.1142.i, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %19 = load <32 x i32>, <32 x i32>* %iptr2.1143.i, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %20 = load <32 x i32>, <32 x i32>* %iptr3.1144.i, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %21 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %17, <32 x i32> %sLine0v1.0138.i, i32 1) #2
  %22 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %18, <32 x i32> %sLine1v1.0136.i, i32 1) #2
  %23 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %19, <32 x i32> %sLine2v1.0134.i, i32 1) #2
  %24 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %20, <32 x i32> %sLine3v1.0132.i, i32 1) #2
  %25 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %21, <32 x i32> %13) #2
  %26 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %22, <32 x i32> %14) #2
  %27 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %23, <32 x i32> %15) #2
  %28 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %24, <32 x i32> %16) #2
  %29 = tail call <64 x i32> @llvm.hexagon.V6.vtmpybus.128B(<64 x i32> %25, i32 33620481) #2
  %30 = tail call <64 x i32> @llvm.hexagon.V6.vtmpybus.128B(<64 x i32> %27, i32 33620481) #2
  %31 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %30) #2
  %32 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %29) #2
  %33 = tail call <32 x i32> @llvm.hexagon.V6.vabsdiffh.128B(<32 x i32> %31, <32 x i32> %32) #2
  %34 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %30) #2
  %35 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %29) #2
  %36 = tail call <32 x i32> @llvm.hexagon.V6.vabsdiffh.128B(<32 x i32> %34, <32 x i32> %35) #2
  %37 = tail call <64 x i32> @llvm.hexagon.V6.vsububh.128B(<32 x i32> %13, <32 x i32> %21) #2
  %38 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %37, <64 x i32> %26, i32 -33358334) #2
  %39 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %38, <64 x i32> %27, i32 -16646399) #2
  %40 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %39) #2
  %41 = tail call <32 x i32> @llvm.hexagon.V6.vabsh.128B(<32 x i32> %40) #2
  %42 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %39) #2
  %43 = tail call <32 x i32> @llvm.hexagon.V6.vabsh.128B(<32 x i32> %42) #2
  %44 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %33, <32 x i32> %41) #2
  %45 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %36, <32 x i32> %43) #2
  %46 = tail call <32 x i32> @llvm.hexagon.V6.vsathub.128B(<32 x i32> %45, <32 x i32> %44) #2
  %incdec.ptr15.i = getelementptr inbounds <32 x i32>, <32 x i32>* %optr0.0145.i, i32 1
  store <32 x i32> %46, <32 x i32>* %optr0.0145.i, align 128, !tbaa !2, !alias.scope !8, !noalias !5
  %47 = tail call <64 x i32> @llvm.hexagon.V6.vtmpybus.128B(<64 x i32> %26, i32 33620481) #2
  %48 = tail call <64 x i32> @llvm.hexagon.V6.vtmpybus.128B(<64 x i32> %28, i32 33620481) #2
  %49 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %48) #2
  %50 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %47) #2
  %51 = tail call <32 x i32> @llvm.hexagon.V6.vabsdiffh.128B(<32 x i32> %49, <32 x i32> %50) #2
  %52 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %48) #2
  %53 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %47) #2
  %54 = tail call <32 x i32> @llvm.hexagon.V6.vabsdiffh.128B(<32 x i32> %52, <32 x i32> %53) #2
  %55 = tail call <64 x i32> @llvm.hexagon.V6.vsububh.128B(<32 x i32> %14, <32 x i32> %22) #2
  %56 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %55, <64 x i32> %27, i32 -33358334) #2
  %57 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %56, <64 x i32> %28, i32 -16646399) #2
  %58 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %57) #2
  %59 = tail call <32 x i32> @llvm.hexagon.V6.vabsh.128B(<32 x i32> %58) #2
  %60 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %57) #2
  %61 = tail call <32 x i32> @llvm.hexagon.V6.vabsh.128B(<32 x i32> %60) #2
  %62 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %51, <32 x i32> %59) #2
  %63 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %54, <32 x i32> %61) #2
  %64 = tail call <32 x i32> @llvm.hexagon.V6.vsathub.128B(<32 x i32> %63, <32 x i32> %62) #2
  %incdec.ptr16.i = getelementptr inbounds <32 x i32>, <32 x i32>* %optr1.0146.i, i32 1
  store <32 x i32> %64, <32 x i32>* %optr1.0146.i, align 128, !tbaa !2, !alias.scope !8, !noalias !5
  %cmp17.i = icmp sgt i32 %i.0140.i, 128
  br i1 %cmp17.i, label %if.then18.i, label %for.inc.i

if.then18.i:                                      ; preds = %for.body.i
  %incdec.ptr19.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr0.1141.i, i32 1
  %incdec.ptr20.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr1.1142.i, i32 1
  %incdec.ptr21.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr2.1143.i, i32 1
  %incdec.ptr22.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr3.1144.i, i32 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then18.i, %for.body.i
  %iptr0.2.i = phi <32 x i32>* [ %incdec.ptr19.i, %if.then18.i ], [ %iptr0.1141.i, %for.body.i ]
  %iptr1.2.i = phi <32 x i32>* [ %incdec.ptr20.i, %if.then18.i ], [ %iptr1.1142.i, %for.body.i ]
  %iptr2.2.i = phi <32 x i32>* [ %incdec.ptr21.i, %if.then18.i ], [ %iptr2.1143.i, %for.body.i ]
  %iptr3.2.i = phi <32 x i32>* [ %incdec.ptr22.i, %if.then18.i ], [ %iptr3.1144.i, %for.body.i ]
  %sub.i = add nsw i32 %i.0140.i, -64
  %cmp14.i = icmp sgt i32 %i.0140.i, 64
  br i1 %cmp14.i, label %for.body.i, label %sobelPer2Row.exit

sobelPer2Row.exit:                                ; preds = %for.inc.i, %if.end.i
  %add.ptr6 = getelementptr inbounds i8, i8* %output.020, i32 %mul5.i
  %add = add nuw nsw i32 %i.018, 2
  %cmp = icmp slt i32 %add, %sub
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %sobelPer2Row.exit, %entry
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv66" "target-features"="+hvx-length128b,+hvxv66,-long-calls" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"QuIC LLVM Hexagon Clang version 8.3.07 (based on LLVM 7.0.0)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"sobelPer2Row: %inp"}
!7 = distinct !{!7, !"sobelPer2Row"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"sobelPer2Row: %outp"}
