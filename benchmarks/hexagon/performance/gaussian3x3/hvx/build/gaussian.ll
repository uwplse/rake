; ModuleID = 'src/gaussian.c'
source_filename = "src/gaussian.c"
target datalayout = "e-m:e-p:32:32:32-a:0-n16:32-i64:64:64-i32:32:32-i16:16:16-i1:8:8-f32:32:32-f64:64:64-v32:32:32-v64:64:64-v512:512:512-v1024:1024:1024-v2048:2048:2048"
target triple = "hexagon"

; Function Attrs: nounwind
define dso_local void @Gaussian3x3u8PerRow(i8* noalias nocapture readonly %src, i32 %stride, i32 %width, i8* noalias nocapture %dst) local_unnamed_addr #0 {
entry:
  %idx.neg = sub i32 0, %stride
  %add.ptr = getelementptr inbounds i8, i8* %src, i32 %idx.neg
  %0 = bitcast i8* %add.ptr to <32 x i32>*
  %1 = bitcast i8* %src to <32 x i32>*
  %add.ptr4 = getelementptr inbounds i8, i8* %src, i32 %stride
  %2 = bitcast i8* %add.ptr4 to <32 x i32>*
  %3 = bitcast i8* %dst to <32 x i32>*
  %4 = load <32 x i32>, <32 x i32>* %0, align 128, !tbaa !2
  %5 = load <32 x i32>, <32 x i32>* %1, align 128, !tbaa !2
  %6 = load <32 x i32>, <32 x i32>* %2, align 128, !tbaa !2
  %7 = tail call <32 x i32> @llvm.hexagon.V6.vd0.128B()
  %8 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %7, <32 x i32> %7)
  %9 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.128B(<32 x i32> %5, i32 33686018)
  %10 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %4, <32 x i32> %6)
  %11 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %9, <64 x i32> %10, i32 16843009)
  %cmp71 = icmp sgt i32 %width, 64
  br i1 %cmp71, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %incdec.ptr6 = getelementptr inbounds i8, i8* %add.ptr4, i32 128
  %12 = bitcast i8* %incdec.ptr6 to <32 x i32>*
  %incdec.ptr5 = getelementptr inbounds i8, i8* %src, i32 128
  %13 = bitcast i8* %incdec.ptr5 to <32 x i32>*
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr, i32 128
  %14 = bitcast i8* %incdec.ptr to <32 x i32>*
  %15 = xor i32 %width, -1
  %16 = icmp sgt i32 %15, -129
  %smax = select i1 %16, i32 %15, i32 -129
  %17 = add i32 %smax, %width
  %18 = add i32 %17, 64
  %19 = lshr i32 %18, 6
  %20 = shl i32 %19, 7
  %21 = add i32 %20, 128
  %scevgep = getelementptr i8, i8* %dst, i32 %21
  %.hexagon.vlcr = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %11)
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %optr.078 = phi <32 x i32>* [ %incdec.ptr10, %for.body ], [ %3, %for.body.preheader ]
  %iptr2.077 = phi <32 x i32>* [ %incdec.ptr9, %for.body ], [ %12, %for.body.preheader ]
  %iptr1.076 = phi <32 x i32>* [ %incdec.ptr8, %for.body ], [ %13, %for.body.preheader ]
  %iptr0.075 = phi <32 x i32>* [ %incdec.ptr7, %for.body ], [ %14, %for.body.preheader ]
  %dVsumv2.074 = phi <64 x i32> [ %29, %for.body ], [ %11, %for.body.preheader ]
  %dVsumv1.073 = phi <64 x i32> [ %dVsumv2.074, %for.body ], [ %8, %for.body.preheader ]
  %i.072 = phi i32 [ %sub, %for.body ], [ %width, %for.body.preheader ]
  %22 = phi <32 x i32> [ %32, %for.body ], [ %.hexagon.vlcr, %for.body.preheader ]
  %incdec.ptr7 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr0.075, i32 1
  %23 = load <32 x i32>, <32 x i32>* %iptr0.075, align 128, !tbaa !2
  %incdec.ptr8 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr1.076, i32 1
  %24 = load <32 x i32>, <32 x i32>* %iptr1.076, align 128, !tbaa !2
  %incdec.ptr9 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr2.077, i32 1
  %25 = load <32 x i32>, <32 x i32>* %iptr2.077, align 128, !tbaa !2
  %26 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv1.073)
  %27 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.128B(<32 x i32> %24, i32 33686018)
  %28 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %23, <32 x i32> %25)
  %29 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %27, <64 x i32> %28, i32 16843009)
  %30 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv2.074)
  %31 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %30, <32 x i32> %26, i32 2)
  %32 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %29)
  %33 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %32, <32 x i32> %22, i32 2)
  %34 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %31, <32 x i32> %22, i32 33686018)
  %35 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %34, <32 x i32> %30)
  %36 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %22, <32 x i32> %30, i32 33686018)
  %37 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %36, <32 x i32> %33)
  %38 = tail call <32 x i32> @llvm.hexagon.V6.vasrhubrndsat.128B(<32 x i32> %37, <32 x i32> %35, i32 4)
  %incdec.ptr10 = getelementptr inbounds <32 x i32>, <32 x i32>* %optr.078, i32 1
  store <32 x i32> %38, <32 x i32>* %optr.078, align 128, !tbaa !2
  %sub = add nsw i32 %i.072, -64
  %cmp = icmp sgt i32 %i.072, 128
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %scevgep81 = bitcast i8* %scevgep to <32 x i32>*
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %dVsumv1.0.lcssa = phi <64 x i32> [ %8, %entry ], [ %dVsumv2.074, %for.end.loopexit ]
  %dVsumv2.0.lcssa = phi <64 x i32> [ %11, %entry ], [ %29, %for.end.loopexit ]
  %optr.0.lcssa = phi <32 x i32>* [ %3, %entry ], [ %scevgep81, %for.end.loopexit ]
  %39 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv2.0.lcssa)
  %40 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv1.0.lcssa)
  %41 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %39, <32 x i32> %40, i32 2)
  %42 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dVsumv2.0.lcssa)
  %43 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %42, <32 x i32> %42, i32 2)
  %44 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %41, <32 x i32> %42, i32 33686018)
  %45 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %44, <32 x i32> %39)
  %46 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %42, <32 x i32> %39, i32 33686018)
  %47 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %46, <32 x i32> %43)
  %48 = tail call <32 x i32> @llvm.hexagon.V6.vasrhubrndsat.128B(<32 x i32> %47, <32 x i32> %45, i32 4)
  store <32 x i32> %48, <32 x i32>* %optr.0.lcssa, align 128, !tbaa !2
  ret void
}

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32>, <32 x i32>) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.vd0.128B() #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.hexagon.V6.vmpybus.128B(<32 x i32>, i32) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32>, <64 x i32>, i32) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32>) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32>, <32 x i32>, i32) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32>) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32>, <32 x i32>, i32) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32>, <32 x i32>) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32>, <32 x i32>, i32) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.vasrhubrndsat.128B(<32 x i32>, <32 x i32>, i32) #1

; Function Attrs: nounwind
define dso_local void @Gaussian3x3u8(i8* noalias nocapture readonly %src, i32 %stride, i32 %width, i32 %height, i8* noalias nocapture %dst) local_unnamed_addr #0 {
entry:
  %sub = add nsw i32 %height, -1
  %cmp26 = icmp sgt i32 %height, 2
  br i1 %cmp26, label %for.cond3.preheader.lr.ph, label %for.end9

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %add.ptr2 = getelementptr inbounds i8, i8* %dst, i32 %stride
  %add.ptr = getelementptr inbounds i8, i8* %src, i32 %stride
  %idx.neg.i = sub i32 0, %stride
  %0 = tail call <32 x i32> @llvm.hexagon.V6.vd0.128B() #2
  %1 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %0, <32 x i32> %0) #2
  %cmp71.i = icmp sgt i32 %width, 64
  %2 = xor i32 %width, -1
  %3 = icmp sgt i32 %2, -129
  %smax.i = select i1 %3, i32 %2, i32 -129
  %4 = add i32 %width, 64
  %5 = add i32 %4, %smax.i
  %6 = lshr i32 %5, 6
  %7 = shl i32 %6, 7
  %8 = add i32 %7, 128
  %9 = shl i32 %stride, 2
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.inc8
  %y.029 = phi i32 [ 1, %for.cond3.preheader.lr.ph ], [ %add, %for.inc8 ]
  %outp.028 = phi i8* [ %add.ptr2, %for.cond3.preheader.lr.ph ], [ %scevgep, %for.inc8 ]
  %inp.027 = phi i8* [ %add.ptr, %for.cond3.preheader.lr.ph ], [ %scevgep30, %for.inc8 ]
  %scevgep = getelementptr i8, i8* %outp.028, i32 %9
  %.phi.trans.insert = bitcast i8* %inp.027 to <32 x i32>*
  %.pre = load <32 x i32>, <32 x i32>* %.phi.trans.insert, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  br label %for.body5

for.body5:                                        ; preds = %Gaussian3x3u8PerRow.exit, %for.cond3.preheader
  %10 = phi <32 x i32> [ %.pre, %for.cond3.preheader ], [ %15, %Gaussian3x3u8PerRow.exit ]
  %outp.125 = phi i8* [ %outp.028, %for.cond3.preheader ], [ %add.ptr7, %Gaussian3x3u8PerRow.exit ]
  %inp.124 = phi i8* [ %inp.027, %for.cond3.preheader ], [ %add.ptr4.i, %Gaussian3x3u8PerRow.exit ]
  %yi.023 = phi i32 [ 0, %for.cond3.preheader ], [ %inc, %Gaussian3x3u8PerRow.exit ]
  %add.ptr.i = getelementptr inbounds i8, i8* %inp.124, i32 %idx.neg.i
  %11 = bitcast i8* %add.ptr.i to <32 x i32>*
  %add.ptr4.i = getelementptr inbounds i8, i8* %inp.124, i32 %stride
  %12 = bitcast i8* %add.ptr4.i to <32 x i32>*
  %13 = bitcast i8* %outp.125 to <32 x i32>*
  %14 = load <32 x i32>, <32 x i32>* %11, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %15 = load <32 x i32>, <32 x i32>* %12, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %16 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.128B(<32 x i32> %10, i32 33686018) #2
  %17 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %14, <32 x i32> %15) #2
  %18 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %16, <64 x i32> %17, i32 16843009) #2
  br i1 %cmp71.i, label %for.body.preheader.i, label %Gaussian3x3u8PerRow.exit

for.body.preheader.i:                             ; preds = %for.body5
  %incdec.ptr6.i = getelementptr inbounds i8, i8* %add.ptr4.i, i32 128
  %19 = bitcast i8* %incdec.ptr6.i to <32 x i32>*
  %incdec.ptr5.i = getelementptr inbounds i8, i8* %inp.124, i32 128
  %20 = bitcast i8* %incdec.ptr5.i to <32 x i32>*
  %incdec.ptr.i = getelementptr inbounds i8, i8* %add.ptr.i, i32 128
  %21 = bitcast i8* %incdec.ptr.i to <32 x i32>*
  %.hexagon.vlcr.i = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %18) #2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %optr.078.i = phi <32 x i32>* [ %incdec.ptr10.i, %for.body.i ], [ %13, %for.body.preheader.i ]
  %iptr2.077.i = phi <32 x i32>* [ %incdec.ptr9.i, %for.body.i ], [ %19, %for.body.preheader.i ]
  %iptr1.076.i = phi <32 x i32>* [ %incdec.ptr8.i, %for.body.i ], [ %20, %for.body.preheader.i ]
  %iptr0.075.i = phi <32 x i32>* [ %incdec.ptr7.i, %for.body.i ], [ %21, %for.body.preheader.i ]
  %dVsumv2.074.i = phi <64 x i32> [ %29, %for.body.i ], [ %18, %for.body.preheader.i ]
  %dVsumv1.073.i = phi <64 x i32> [ %dVsumv2.074.i, %for.body.i ], [ %1, %for.body.preheader.i ]
  %i.072.i = phi i32 [ %sub.i, %for.body.i ], [ %width, %for.body.preheader.i ]
  %22 = phi <32 x i32> [ %32, %for.body.i ], [ %.hexagon.vlcr.i, %for.body.preheader.i ]
  %incdec.ptr7.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr0.075.i, i32 1
  %23 = load <32 x i32>, <32 x i32>* %iptr0.075.i, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %incdec.ptr8.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr1.076.i, i32 1
  %24 = load <32 x i32>, <32 x i32>* %iptr1.076.i, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %incdec.ptr9.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr2.077.i, i32 1
  %25 = load <32 x i32>, <32 x i32>* %iptr2.077.i, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %26 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv1.073.i) #2
  %27 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.128B(<32 x i32> %24, i32 33686018) #2
  %28 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %23, <32 x i32> %25) #2
  %29 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %27, <64 x i32> %28, i32 16843009) #2
  %30 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv2.074.i) #2
  %31 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %30, <32 x i32> %26, i32 2) #2
  %32 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %29) #2
  %33 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %32, <32 x i32> %22, i32 2) #2
  %34 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %31, <32 x i32> %22, i32 33686018) #2
  %35 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %34, <32 x i32> %30) #2
  %36 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %22, <32 x i32> %30, i32 33686018) #2
  %37 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %36, <32 x i32> %33) #2
  %38 = tail call <32 x i32> @llvm.hexagon.V6.vasrhubrndsat.128B(<32 x i32> %37, <32 x i32> %35, i32 4) #2
  %incdec.ptr10.i = getelementptr inbounds <32 x i32>, <32 x i32>* %optr.078.i, i32 1
  store <32 x i32> %38, <32 x i32>* %optr.078.i, align 128, !tbaa !2, !alias.scope !8, !noalias !5
  %sub.i = add nsw i32 %i.072.i, -64
  %cmp.i = icmp sgt i32 %i.072.i, 128
  br i1 %cmp.i, label %for.body.i, label %for.end.loopexit.i

for.end.loopexit.i:                               ; preds = %for.body.i
  %scevgep.i = getelementptr i8, i8* %outp.125, i32 %8
  %scevgep81.i = bitcast i8* %scevgep.i to <32 x i32>*
  br label %Gaussian3x3u8PerRow.exit

Gaussian3x3u8PerRow.exit:                         ; preds = %for.body5, %for.end.loopexit.i
  %dVsumv1.0.lcssa.i = phi <64 x i32> [ %1, %for.body5 ], [ %dVsumv2.074.i, %for.end.loopexit.i ]
  %dVsumv2.0.lcssa.i = phi <64 x i32> [ %18, %for.body5 ], [ %29, %for.end.loopexit.i ]
  %optr.0.lcssa.i = phi <32 x i32>* [ %13, %for.body5 ], [ %scevgep81.i, %for.end.loopexit.i ]
  %39 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv2.0.lcssa.i) #2
  %40 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv1.0.lcssa.i) #2
  %41 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %39, <32 x i32> %40, i32 2) #2
  %42 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dVsumv2.0.lcssa.i) #2
  %43 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %42, <32 x i32> %42, i32 2) #2
  %44 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %41, <32 x i32> %42, i32 33686018) #2
  %45 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %44, <32 x i32> %39) #2
  %46 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %42, <32 x i32> %39, i32 33686018) #2
  %47 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %46, <32 x i32> %43) #2
  %48 = tail call <32 x i32> @llvm.hexagon.V6.vasrhubrndsat.128B(<32 x i32> %47, <32 x i32> %45, i32 4) #2
  store <32 x i32> %48, <32 x i32>* %optr.0.lcssa.i, align 128, !tbaa !2, !alias.scope !8, !noalias !5
  %add.ptr7 = getelementptr inbounds i8, i8* %outp.125, i32 %stride
  %inc = add nuw nsw i32 %yi.023, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %for.inc8, label %for.body5

for.inc8:                                         ; preds = %Gaussian3x3u8PerRow.exit
  %scevgep30 = getelementptr i8, i8* %inp.027, i32 %9
  %add = add nuw nsw i32 %y.029, 4
  %cmp = icmp slt i32 %add, %sub
  br i1 %cmp, label %for.cond3.preheader, label %for.end9

for.end9:                                         ; preds = %for.inc8, %entry
  ret void
}

; Function Attrs: nounwind
define dso_local void @Gaussian5x5u8PerRow(i8* noalias nocapture readonly %src, i32 %stride, i32 %width, i8* noalias nocapture %dst) local_unnamed_addr #0 {
entry:
  %mul = shl nsw i32 %stride, 1
  %0 = bitcast i8* %dst to <32 x i32>*
  %cmp123 = icmp sgt i32 %width, 64
  br i1 %cmp123, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %add.ptr9 = getelementptr inbounds i8, i8* %src, i32 %mul
  %1 = bitcast i8* %add.ptr9 to <32 x i32>*
  %add.ptr7 = getelementptr inbounds i8, i8* %src, i32 %stride
  %2 = bitcast i8* %add.ptr7 to <32 x i32>*
  %3 = bitcast i8* %src to <32 x i32>*
  %idx.neg2 = sub i32 0, %stride
  %add.ptr3 = getelementptr inbounds i8, i8* %src, i32 %idx.neg2
  %4 = bitcast i8* %add.ptr3 to <32 x i32>*
  %idx.neg = sub i32 0, %mul
  %add.ptr = getelementptr inbounds i8, i8* %src, i32 %idx.neg
  %5 = bitcast i8* %add.ptr to <32 x i32>*
  %6 = xor i32 %width, -1
  %7 = icmp sgt i32 %6, -129
  %smax = select i1 %7, i32 %6, i32 -129
  %8 = add i32 %smax, %width
  %9 = add i32 %8, 64
  %10 = lshr i32 %9, 6
  %11 = shl i32 %10, 7
  %12 = add i32 %11, 128
  %scevgep = getelementptr i8, i8* %dst, i32 %12
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %optr.0136 = phi <32 x i32>* [ %incdec.ptr14, %for.body ], [ %0, %for.body.preheader ]
  %iptr4.0135 = phi <32 x i32>* [ %incdec.ptr13, %for.body ], [ %1, %for.body.preheader ]
  %iptr3.0134 = phi <32 x i32>* [ %incdec.ptr12, %for.body ], [ %2, %for.body.preheader ]
  %iptr2.0133 = phi <32 x i32>* [ %incdec.ptr11, %for.body ], [ %3, %for.body.preheader ]
  %iptr1.0132 = phi <32 x i32>* [ %incdec.ptr10, %for.body ], [ %4, %for.body.preheader ]
  %iptr0.0131 = phi <32 x i32>* [ %incdec.ptr, %for.body ], [ %5, %for.body.preheader ]
  %dVsumv1.0130 = phi <64 x i32> [ %21, %for.body ], [ undef, %for.body.preheader ]
  %i.0129 = phi i32 [ %sub, %for.body ], [ %width, %for.body.preheader ]
  %sLine0.0128 = phi <32 x i32> [ %13, %for.body ], [ undef, %for.body.preheader ]
  %sLine1.0127 = phi <32 x i32> [ %14, %for.body ], [ undef, %for.body.preheader ]
  %sLine2.0126 = phi <32 x i32> [ %15, %for.body ], [ undef, %for.body.preheader ]
  %sLine3.0125 = phi <32 x i32> [ %16, %for.body ], [ undef, %for.body.preheader ]
  %sLine4.0124 = phi <32 x i32> [ %17, %for.body ], [ undef, %for.body.preheader ]
  %incdec.ptr = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr0.0131, i32 1
  %13 = load <32 x i32>, <32 x i32>* %iptr0.0131, align 128, !tbaa !2
  %incdec.ptr10 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr1.0132, i32 1
  %14 = load <32 x i32>, <32 x i32>* %iptr1.0132, align 128, !tbaa !2
  %incdec.ptr11 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr2.0133, i32 1
  %15 = load <32 x i32>, <32 x i32>* %iptr2.0133, align 128, !tbaa !2
  %incdec.ptr12 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr3.0134, i32 1
  %16 = load <32 x i32>, <32 x i32>* %iptr3.0134, align 128, !tbaa !2
  %incdec.ptr13 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr4.0135, i32 1
  %17 = load <32 x i32>, <32 x i32>* %iptr4.0135, align 128, !tbaa !2
  %18 = tail call <64 x i32> @llvm.hexagon.V6.vaddubh.128B(<32 x i32> %sLine0.0128, <32 x i32> %sLine4.0124)
  %19 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.acc.128B(<64 x i32> %18, <32 x i32> %sLine2.0126, i32 101058054)
  %20 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %sLine3.0125, <32 x i32> %sLine1.0127)
  %21 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %19, <64 x i32> %20, i32 67372036)
  %22 = tail call <64 x i32> @llvm.hexagon.V6.vaddubh.128B(<32 x i32> %13, <32 x i32> %17)
  %23 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.acc.128B(<64 x i32> %22, <32 x i32> %15, i32 101058054)
  %24 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %16, <32 x i32> %14)
  %25 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %23, <64 x i32> %24, i32 67372036)
  %26 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %21)
  %27 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dVsumv1.0130)
  %28 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %26, <32 x i32> %27, i32 2)
  %29 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %21)
  %30 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv1.0130)
  %31 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %29, <32 x i32> %30, i32 2)
  %32 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %25)
  %33 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %32, <32 x i32> %26, i32 2)
  %34 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %25)
  %35 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %34, <32 x i32> %29, i32 2)
  %36 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %31, <32 x i32> %29)
  %37 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %26, <32 x i32> %33)
  %38 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %28, <32 x i32> %33)
  %39 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %38, <32 x i32> %26, i32 101058054)
  %40 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %39, <32 x i32> %36, i32 67372036)
  %41 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %31, <32 x i32> %35)
  %42 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %41, <32 x i32> %29, i32 101058054)
  %43 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %42, <32 x i32> %37, i32 67372036)
  %44 = tail call <32 x i32> @llvm.hexagon.V6.vshuffob.128B(<32 x i32> %43, <32 x i32> %40)
  %incdec.ptr14 = getelementptr inbounds <32 x i32>, <32 x i32>* %optr.0136, i32 1
  store <32 x i32> %44, <32 x i32>* %optr.0136, align 128, !tbaa !2
  %sub = add nsw i32 %i.0129, -64
  %cmp = icmp sgt i32 %i.0129, 128
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %scevgep140 = bitcast i8* %scevgep to <32 x i32>*
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %dVsumv1.0.lcssa = phi <64 x i32> [ undef, %entry ], [ %21, %for.end.loopexit ]
  %dVsumv2.0.lcssa = phi <64 x i32> [ undef, %entry ], [ %25, %for.end.loopexit ]
  %optr.0.lcssa = phi <32 x i32>* [ %0, %entry ], [ %scevgep140, %for.end.loopexit ]
  %45 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dVsumv2.0.lcssa)
  %46 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dVsumv1.0.lcssa)
  %47 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %45, <32 x i32> %46, i32 2)
  %48 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv2.0.lcssa)
  %49 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv1.0.lcssa)
  %50 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %48, <32 x i32> %49, i32 2)
  %51 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %45, <32 x i32> %45, i32 2)
  %52 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %48, <32 x i32> %48, i32 2)
  %53 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %50, <32 x i32> %48)
  %54 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %45, <32 x i32> %51)
  %55 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %47, <32 x i32> %51)
  %56 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %55, <32 x i32> %45, i32 101058054)
  %57 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %56, <32 x i32> %53, i32 67372036)
  %58 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %50, <32 x i32> %52)
  %59 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %58, <32 x i32> %48, i32 101058054)
  %60 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %59, <32 x i32> %54, i32 67372036)
  %61 = tail call <32 x i32> @llvm.hexagon.V6.vshuffob.128B(<32 x i32> %60, <32 x i32> %57)
  store <32 x i32> %61, <32 x i32>* %optr.0.lcssa, align 128, !tbaa !2
  ret void
}

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.hexagon.V6.vaddubh.128B(<32 x i32>, <32 x i32>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.hexagon.V6.vmpybus.acc.128B(<64 x i32>, <32 x i32>, i32) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.vshuffob.128B(<32 x i32>, <32 x i32>) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32>, <32 x i32>, i32) #1

; Function Attrs: nounwind
define dso_local void @Gaussian5x5u8(i8* noalias %src, i32 %stride, i32 %width, i32 %height, i8* noalias nocapture %dst) local_unnamed_addr #0 {
entry:
  %mul = shl nsw i32 %stride, 1
  %sub = add nsw i32 %height, -2
  %cmp31 = icmp sgt i32 %height, 4
  br i1 %cmp31, label %for.body.lr.ph, label %for.end11

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr2 = getelementptr inbounds i8, i8* %dst, i32 %mul
  %add.ptr = getelementptr inbounds i8, i8* %src, i32 %mul
  %mul3 = shl i32 %stride, 2
  %cmp123.i = icmp sgt i32 %width, 64
  %idx.neg2.i = sub i32 0, %stride
  %idx.neg.i = sub i32 0, %mul
  %0 = xor i32 %width, -1
  %1 = icmp sgt i32 %0, -129
  %smax.i = select i1 %1, i32 %0, i32 -129
  %2 = add i32 %width, 64
  %3 = add i32 %2, %smax.i
  %4 = lshr i32 %3, 6
  %5 = shl i32 %4, 7
  %6 = add i32 %5, 128
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc10
  %y.034 = phi i32 [ 2, %for.body.lr.ph ], [ %add, %for.inc10 ]
  %outp.033 = phi i8* [ %add.ptr2, %for.body.lr.ph ], [ %scevgep36, %for.inc10 ]
  %inp.032 = phi i8* [ %add.ptr, %for.body.lr.ph ], [ %add.ptr4, %for.inc10 ]
  %add.ptr4 = getelementptr i8, i8* %inp.032, i32 %mul3
  tail call void @llvm.hexagon.Y5.l2fetch(i8* %add.ptr4, i64 8246463037448)
  br label %for.body7

for.body7:                                        ; preds = %Gaussian5x5u8PerRow.exit, %for.body
  %outp.130 = phi i8* [ %outp.033, %for.body ], [ %add.ptr9, %Gaussian5x5u8PerRow.exit ]
  %inp.129 = phi i8* [ %inp.032, %for.body ], [ %add.ptr8, %Gaussian5x5u8PerRow.exit ]
  %yi.028 = phi i32 [ 0, %for.body ], [ %inc, %Gaussian5x5u8PerRow.exit ]
  %7 = bitcast i8* %outp.130 to <32 x i32>*
  br i1 %cmp123.i, label %for.body.preheader.i, label %Gaussian5x5u8PerRow.exit

for.body.preheader.i:                             ; preds = %for.body7
  %add.ptr9.i = getelementptr inbounds i8, i8* %inp.129, i32 %mul
  %8 = bitcast i8* %add.ptr9.i to <32 x i32>*
  %add.ptr7.i = getelementptr inbounds i8, i8* %inp.129, i32 %stride
  %9 = bitcast i8* %add.ptr7.i to <32 x i32>*
  %10 = bitcast i8* %inp.129 to <32 x i32>*
  %add.ptr3.i = getelementptr inbounds i8, i8* %inp.129, i32 %idx.neg2.i
  %11 = bitcast i8* %add.ptr3.i to <32 x i32>*
  %add.ptr.i = getelementptr inbounds i8, i8* %inp.129, i32 %idx.neg.i
  %12 = bitcast i8* %add.ptr.i to <32 x i32>*
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %optr.0136.i = phi <32 x i32>* [ %incdec.ptr14.i, %for.body.i ], [ %7, %for.body.preheader.i ]
  %iptr4.0135.i = phi <32 x i32>* [ %incdec.ptr13.i, %for.body.i ], [ %8, %for.body.preheader.i ]
  %iptr3.0134.i = phi <32 x i32>* [ %incdec.ptr12.i, %for.body.i ], [ %9, %for.body.preheader.i ]
  %iptr2.0133.i = phi <32 x i32>* [ %incdec.ptr11.i, %for.body.i ], [ %10, %for.body.preheader.i ]
  %iptr1.0132.i = phi <32 x i32>* [ %incdec.ptr10.i, %for.body.i ], [ %11, %for.body.preheader.i ]
  %iptr0.0131.i = phi <32 x i32>* [ %incdec.ptr.i, %for.body.i ], [ %12, %for.body.preheader.i ]
  %dVsumv1.0130.i = phi <64 x i32> [ %21, %for.body.i ], [ undef, %for.body.preheader.i ]
  %i.0129.i = phi i32 [ %sub.i, %for.body.i ], [ %width, %for.body.preheader.i ]
  %sLine0.0128.i = phi <32 x i32> [ %13, %for.body.i ], [ undef, %for.body.preheader.i ]
  %sLine1.0127.i = phi <32 x i32> [ %14, %for.body.i ], [ undef, %for.body.preheader.i ]
  %sLine2.0126.i = phi <32 x i32> [ %15, %for.body.i ], [ undef, %for.body.preheader.i ]
  %sLine3.0125.i = phi <32 x i32> [ %16, %for.body.i ], [ undef, %for.body.preheader.i ]
  %sLine4.0124.i = phi <32 x i32> [ %17, %for.body.i ], [ undef, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr0.0131.i, i32 1
  %13 = load <32 x i32>, <32 x i32>* %iptr0.0131.i, align 128, !tbaa !2, !alias.scope !10, !noalias !13
  %incdec.ptr10.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr1.0132.i, i32 1
  %14 = load <32 x i32>, <32 x i32>* %iptr1.0132.i, align 128, !tbaa !2, !alias.scope !10, !noalias !13
  %incdec.ptr11.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr2.0133.i, i32 1
  %15 = load <32 x i32>, <32 x i32>* %iptr2.0133.i, align 128, !tbaa !2, !alias.scope !10, !noalias !13
  %incdec.ptr12.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr3.0134.i, i32 1
  %16 = load <32 x i32>, <32 x i32>* %iptr3.0134.i, align 128, !tbaa !2, !alias.scope !10, !noalias !13
  %incdec.ptr13.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr4.0135.i, i32 1
  %17 = load <32 x i32>, <32 x i32>* %iptr4.0135.i, align 128, !tbaa !2, !alias.scope !10, !noalias !13
  %18 = tail call <64 x i32> @llvm.hexagon.V6.vaddubh.128B(<32 x i32> %sLine0.0128.i, <32 x i32> %sLine4.0124.i) #2
  %19 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.acc.128B(<64 x i32> %18, <32 x i32> %sLine2.0126.i, i32 101058054) #2
  %20 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %sLine3.0125.i, <32 x i32> %sLine1.0127.i) #2
  %21 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %19, <64 x i32> %20, i32 67372036) #2
  %22 = tail call <64 x i32> @llvm.hexagon.V6.vaddubh.128B(<32 x i32> %13, <32 x i32> %17) #2
  %23 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.acc.128B(<64 x i32> %22, <32 x i32> %15, i32 101058054) #2
  %24 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %16, <32 x i32> %14) #2
  %25 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %23, <64 x i32> %24, i32 67372036) #2
  %26 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %21) #2
  %27 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dVsumv1.0130.i) #2
  %28 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %26, <32 x i32> %27, i32 2) #2
  %29 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %21) #2
  %30 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv1.0130.i) #2
  %31 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %29, <32 x i32> %30, i32 2) #2
  %32 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %25) #2
  %33 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %32, <32 x i32> %26, i32 2) #2
  %34 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %25) #2
  %35 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %34, <32 x i32> %29, i32 2) #2
  %36 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %31, <32 x i32> %29) #2
  %37 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %26, <32 x i32> %33) #2
  %38 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %28, <32 x i32> %33) #2
  %39 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %38, <32 x i32> %26, i32 101058054) #2
  %40 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %39, <32 x i32> %36, i32 67372036) #2
  %41 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %31, <32 x i32> %35) #2
  %42 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %41, <32 x i32> %29, i32 101058054) #2
  %43 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %42, <32 x i32> %37, i32 67372036) #2
  %44 = tail call <32 x i32> @llvm.hexagon.V6.vshuffob.128B(<32 x i32> %43, <32 x i32> %40) #2
  %incdec.ptr14.i = getelementptr inbounds <32 x i32>, <32 x i32>* %optr.0136.i, i32 1
  store <32 x i32> %44, <32 x i32>* %optr.0136.i, align 128, !tbaa !2, !alias.scope !13, !noalias !10
  %sub.i = add nsw i32 %i.0129.i, -64
  %cmp.i = icmp sgt i32 %i.0129.i, 128
  br i1 %cmp.i, label %for.body.i, label %for.end.loopexit.i

for.end.loopexit.i:                               ; preds = %for.body.i
  %scevgep.i = getelementptr i8, i8* %outp.130, i32 %6
  %scevgep140.i = bitcast i8* %scevgep.i to <32 x i32>*
  br label %Gaussian5x5u8PerRow.exit

Gaussian5x5u8PerRow.exit:                         ; preds = %for.body7, %for.end.loopexit.i
  %dVsumv1.0.lcssa.i = phi <64 x i32> [ undef, %for.body7 ], [ %21, %for.end.loopexit.i ]
  %dVsumv2.0.lcssa.i = phi <64 x i32> [ undef, %for.body7 ], [ %25, %for.end.loopexit.i ]
  %optr.0.lcssa.i = phi <32 x i32>* [ %7, %for.body7 ], [ %scevgep140.i, %for.end.loopexit.i ]
  %45 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dVsumv2.0.lcssa.i) #2
  %46 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dVsumv1.0.lcssa.i) #2
  %47 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %45, <32 x i32> %46, i32 2) #2
  %48 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv2.0.lcssa.i) #2
  %49 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv1.0.lcssa.i) #2
  %50 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %48, <32 x i32> %49, i32 2) #2
  %51 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %45, <32 x i32> %45, i32 2) #2
  %52 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %48, <32 x i32> %48, i32 2) #2
  %53 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %50, <32 x i32> %48) #2
  %54 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %45, <32 x i32> %51) #2
  %55 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %47, <32 x i32> %51) #2
  %56 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %55, <32 x i32> %45, i32 101058054) #2
  %57 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %56, <32 x i32> %53, i32 67372036) #2
  %58 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %50, <32 x i32> %52) #2
  %59 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %58, <32 x i32> %48, i32 101058054) #2
  %60 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %59, <32 x i32> %54, i32 67372036) #2
  %61 = tail call <32 x i32> @llvm.hexagon.V6.vshuffob.128B(<32 x i32> %60, <32 x i32> %57) #2
  store <32 x i32> %61, <32 x i32>* %optr.0.lcssa.i, align 128, !tbaa !2, !alias.scope !13, !noalias !10
  %add.ptr8 = getelementptr inbounds i8, i8* %inp.129, i32 %stride
  %add.ptr9 = getelementptr inbounds i8, i8* %outp.130, i32 %stride
  %inc = add nuw nsw i32 %yi.028, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %for.inc10, label %for.body7

for.inc10:                                        ; preds = %Gaussian5x5u8PerRow.exit
  %scevgep36 = getelementptr i8, i8* %outp.033, i32 %mul3
  %add = add nuw nsw i32 %y.034, 4
  %cmp = icmp slt i32 %add, %sub
  br i1 %cmp, label %for.body, label %for.end11

for.end11:                                        ; preds = %for.inc10, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.hexagon.Y5.l2fetch(i8*, i64) #2

; Function Attrs: nounwind
define dso_local void @Gaussian7x7u8PerRow(i8* noalias nocapture readonly %src, i32 %stride, i32 %width, i8* noalias nocapture %dst) local_unnamed_addr #0 {
entry:
  %mul = mul nsw i32 %stride, 3
  %idx.neg = sub i32 0, %mul
  %add.ptr = getelementptr inbounds i8, i8* %src, i32 %idx.neg
  %0 = bitcast i8* %add.ptr to <32 x i32>*
  %mul1 = shl nsw i32 %stride, 1
  %idx.neg2 = sub i32 0, %mul1
  %add.ptr3 = getelementptr inbounds i8, i8* %src, i32 %idx.neg2
  %1 = bitcast i8* %add.ptr3 to <32 x i32>*
  %idx.neg5 = sub i32 0, %stride
  %add.ptr6 = getelementptr inbounds i8, i8* %src, i32 %idx.neg5
  %2 = bitcast i8* %add.ptr6 to <32 x i32>*
  %3 = bitcast i8* %src to <32 x i32>*
  %add.ptr10 = getelementptr inbounds i8, i8* %src, i32 %stride
  %4 = bitcast i8* %add.ptr10 to <32 x i32>*
  %add.ptr12 = getelementptr inbounds i8, i8* %src, i32 %mul1
  %5 = bitcast i8* %add.ptr12 to <32 x i32>*
  %add.ptr14 = getelementptr inbounds i8, i8* %src, i32 %mul
  %6 = bitcast i8* %add.ptr14 to <32 x i32>*
  %7 = bitcast i8* %dst to <32 x i32>*
  %8 = load <32 x i32>, <32 x i32>* %0, align 128, !tbaa !2
  %9 = load <32 x i32>, <32 x i32>* %1, align 128, !tbaa !2
  %10 = load <32 x i32>, <32 x i32>* %2, align 128, !tbaa !2
  %11 = load <32 x i32>, <32 x i32>* %3, align 128, !tbaa !2
  %12 = load <32 x i32>, <32 x i32>* %4, align 128, !tbaa !2
  %13 = load <32 x i32>, <32 x i32>* %5, align 128, !tbaa !2
  %14 = load <32 x i32>, <32 x i32>* %6, align 128, !tbaa !2
  %15 = tail call <32 x i32> @llvm.hexagon.V6.vd0.128B()
  %16 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %15, <32 x i32> %15)
  %17 = tail call <64 x i32> @llvm.hexagon.V6.vaddubh.128B(<32 x i32> %14, <32 x i32> %8)
  %18 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %13, <32 x i32> %9)
  %19 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %17, <64 x i32> %18, i32 101058054)
  %20 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %12, <32 x i32> %10)
  %21 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %19, <64 x i32> %20, i32 252645135)
  %22 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.acc.128B(<64 x i32> %21, <32 x i32> %11, i32 336860180)
  %cmp155 = icmp sgt i32 %width, 64
  br i1 %cmp155, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %incdec.ptr20 = getelementptr inbounds i8, i8* %add.ptr14, i32 128
  %23 = bitcast i8* %incdec.ptr20 to <32 x i32>*
  %incdec.ptr19 = getelementptr inbounds i8, i8* %add.ptr12, i32 128
  %24 = bitcast i8* %incdec.ptr19 to <32 x i32>*
  %incdec.ptr18 = getelementptr inbounds i8, i8* %add.ptr10, i32 128
  %25 = bitcast i8* %incdec.ptr18 to <32 x i32>*
  %incdec.ptr17 = getelementptr inbounds i8, i8* %src, i32 128
  %26 = bitcast i8* %incdec.ptr17 to <32 x i32>*
  %incdec.ptr16 = getelementptr inbounds i8, i8* %add.ptr6, i32 128
  %27 = bitcast i8* %incdec.ptr16 to <32 x i32>*
  %incdec.ptr15 = getelementptr inbounds i8, i8* %add.ptr3, i32 128
  %28 = bitcast i8* %incdec.ptr15 to <32 x i32>*
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr, i32 128
  %29 = bitcast i8* %incdec.ptr to <32 x i32>*
  %30 = xor i32 %width, -1
  %31 = icmp sgt i32 %30, -129
  %smax = select i1 %31, i32 %30, i32 -129
  %32 = add i32 %smax, %width
  %33 = add i32 %32, 64
  %34 = lshr i32 %33, 6
  %35 = shl i32 %34, 7
  %36 = add i32 %35, 128
  %scevgep = getelementptr i8, i8* %dst, i32 %36
  %.hexagon.vlcr = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %22)
  %.hexagon.vlcr170 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %22)
  %.hexagon.vlcr171 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %16)
  %.hexagon.vlcr173 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %16)
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %optr.0166 = phi <32 x i32>* [ %incdec.ptr28, %for.body ], [ %7, %for.body.preheader ]
  %iptr6.0165 = phi <32 x i32>* [ %incdec.ptr27, %for.body ], [ %23, %for.body.preheader ]
  %iptr5.0164 = phi <32 x i32>* [ %incdec.ptr26, %for.body ], [ %24, %for.body.preheader ]
  %iptr4.0163 = phi <32 x i32>* [ %incdec.ptr25, %for.body ], [ %25, %for.body.preheader ]
  %iptr3.0162 = phi <32 x i32>* [ %incdec.ptr24, %for.body ], [ %26, %for.body.preheader ]
  %iptr2.0161 = phi <32 x i32>* [ %incdec.ptr23, %for.body ], [ %27, %for.body.preheader ]
  %iptr1.0160 = phi <32 x i32>* [ %incdec.ptr22, %for.body ], [ %28, %for.body.preheader ]
  %iptr0.0159 = phi <32 x i32>* [ %incdec.ptr21, %for.body ], [ %29, %for.body.preheader ]
  %dXV1.0158 = phi <64 x i32> [ %56, %for.body ], [ %22, %for.body.preheader ]
  %i.0156 = phi i32 [ %sub, %for.body ], [ %width, %for.body.preheader ]
  %37 = phi <32 x i32> [ %59, %for.body ], [ %.hexagon.vlcr, %for.body.preheader ]
  %38 = phi <32 x i32> [ %57, %for.body ], [ %.hexagon.vlcr170, %for.body.preheader ]
  %39 = phi <32 x i32> [ %37, %for.body ], [ %.hexagon.vlcr171, %for.body.preheader ]
  %40 = phi <32 x i32> [ %38, %for.body ], [ %.hexagon.vlcr173, %for.body.preheader ]
  %incdec.ptr21 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr0.0159, i32 1
  %41 = load <32 x i32>, <32 x i32>* %iptr0.0159, align 128, !tbaa !2
  %incdec.ptr22 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr1.0160, i32 1
  %42 = load <32 x i32>, <32 x i32>* %iptr1.0160, align 128, !tbaa !2
  %incdec.ptr23 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr2.0161, i32 1
  %43 = load <32 x i32>, <32 x i32>* %iptr2.0161, align 128, !tbaa !2
  %incdec.ptr24 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr3.0162, i32 1
  %44 = load <32 x i32>, <32 x i32>* %iptr3.0162, align 128, !tbaa !2
  %incdec.ptr25 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr4.0163, i32 1
  %45 = load <32 x i32>, <32 x i32>* %iptr4.0163, align 128, !tbaa !2
  %incdec.ptr26 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr5.0164, i32 1
  %46 = load <32 x i32>, <32 x i32>* %iptr5.0164, align 128, !tbaa !2
  %incdec.ptr27 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr6.0165, i32 1
  %47 = load <32 x i32>, <32 x i32>* %iptr6.0165, align 128, !tbaa !2
  %48 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %37, <32 x i32> %39, i32 2)
  %49 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %38, <32 x i32> %40, i32 2)
  %50 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %37, <32 x i32> %39, i32 4)
  %51 = tail call <64 x i32> @llvm.hexagon.V6.vaddubh.128B(<32 x i32> %47, <32 x i32> %41)
  %52 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %46, <32 x i32> %42)
  %53 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %51, <64 x i32> %52, i32 101058054)
  %54 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %45, <32 x i32> %43)
  %55 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %53, <64 x i32> %54, i32 252645135)
  %56 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.acc.128B(<64 x i32> %55, <32 x i32> %44, i32 336860180)
  %57 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %56)
  %58 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %57, <32 x i32> %38, i32 2)
  %59 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %56)
  %60 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %59, <32 x i32> %37, i32 2)
  %61 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %57, <32 x i32> %38, i32 4)
  %62 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %37, <32 x i32> %48)
  %63 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %62, <32 x i32> %38)
  %64 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.128B(<64 x i32> %63, i32 252972820)
  %65 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %58, <32 x i32> %38)
  %66 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %65, <32 x i32> %37)
  %67 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.128B(<64 x i32> %66, i32 252972820)
  %68 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %60, <32 x i32> %50)
  %69 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %58, <32 x i32> %49)
  %70 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %68, <32 x i32> %69)
  %71 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.acc.128B(<64 x i32> %64, <64 x i32> %70, i32 17170694)
  %72 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %61, <32 x i32> %49)
  %73 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %60, <32 x i32> %48)
  %74 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %72, <32 x i32> %73)
  %75 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.acc.128B(<64 x i32> %67, <64 x i32> %74, i32 17170694)
  %76 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %71)
  %77 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %71)
  %78 = tail call <32 x i32> @llvm.hexagon.V6.vasrwh.128B(<32 x i32> %76, <32 x i32> %77, i32 12)
  %79 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %75)
  %80 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %75)
  %81 = tail call <32 x i32> @llvm.hexagon.V6.vasrwh.128B(<32 x i32> %79, <32 x i32> %80, i32 12)
  %82 = tail call <32 x i32> @llvm.hexagon.V6.vshuffeb.128B(<32 x i32> %81, <32 x i32> %78)
  %incdec.ptr28 = getelementptr inbounds <32 x i32>, <32 x i32>* %optr.0166, i32 1
  store <32 x i32> %82, <32 x i32>* %optr.0166, align 128, !tbaa !2
  %sub = add nsw i32 %i.0156, -64
  %cmp = icmp sgt i32 %i.0156, 128
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %scevgep169 = bitcast i8* %scevgep to <32 x i32>*
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %dXV0.0.lcssa = phi <64 x i32> [ %16, %entry ], [ %dXV1.0158, %for.end.loopexit ]
  %dXV1.0.lcssa = phi <64 x i32> [ %22, %entry ], [ %56, %for.end.loopexit ]
  %optr.0.lcssa = phi <32 x i32>* [ %7, %entry ], [ %scevgep169, %for.end.loopexit ]
  %83 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dXV1.0.lcssa)
  %84 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dXV0.0.lcssa)
  %85 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %83, <32 x i32> %84, i32 2)
  %86 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dXV1.0.lcssa)
  %87 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dXV0.0.lcssa)
  %88 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %86, <32 x i32> %87, i32 2)
  %89 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %83, <32 x i32> %84, i32 4)
  %90 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %16)
  %91 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %90, <32 x i32> %86, i32 2)
  %92 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %16)
  %93 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %92, <32 x i32> %83, i32 2)
  %94 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %90, <32 x i32> %86, i32 4)
  %95 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %83, <32 x i32> %85)
  %96 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %95, <32 x i32> %86)
  %97 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.128B(<64 x i32> %96, i32 252972820)
  %98 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %91, <32 x i32> %86)
  %99 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %98, <32 x i32> %83)
  %100 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.128B(<64 x i32> %99, i32 252972820)
  %101 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %93, <32 x i32> %89)
  %102 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %91, <32 x i32> %88)
  %103 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %101, <32 x i32> %102)
  %104 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.acc.128B(<64 x i32> %97, <64 x i32> %103, i32 17170694)
  %105 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %94, <32 x i32> %88)
  %106 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %93, <32 x i32> %85)
  %107 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %105, <32 x i32> %106)
  %108 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.acc.128B(<64 x i32> %100, <64 x i32> %107, i32 17170694)
  %109 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %104)
  %110 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %104)
  %111 = tail call <32 x i32> @llvm.hexagon.V6.vasrwh.128B(<32 x i32> %109, <32 x i32> %110, i32 12)
  %112 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %108)
  %113 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %108)
  %114 = tail call <32 x i32> @llvm.hexagon.V6.vasrwh.128B(<32 x i32> %112, <32 x i32> %113, i32 12)
  %115 = tail call <32 x i32> @llvm.hexagon.V6.vshuffeb.128B(<32 x i32> %114, <32 x i32> %111)
  store <32 x i32> %115, <32 x i32>* %optr.0.lcssa, align 128, !tbaa !2
  ret void
}

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.hexagon.V6.vmpahb.128B(<64 x i32>, i32) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.hexagon.V6.vmpahb.acc.128B(<64 x i32>, <64 x i32>, i32) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.vasrwh.128B(<32 x i32>, <32 x i32>, i32) #1

; Function Attrs: nounwind readnone
declare <32 x i32> @llvm.hexagon.V6.vshuffeb.128B(<32 x i32>, <32 x i32>) #1

; Function Attrs: nounwind
define dso_local void @Gaussian7x7u8(i8* noalias nocapture readonly %src, i32 %stride, i32 %width, i32 %height, i8* noalias nocapture %dst) local_unnamed_addr #0 {
entry:
  %mul = mul nsw i32 %stride, 3
  %cmp15 = icmp sgt i32 %height, 6
  br i1 %cmp15, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %add.ptr2 = getelementptr inbounds i8, i8* %dst, i32 %mul
  %add.ptr = getelementptr inbounds i8, i8* %src, i32 %mul
  %0 = add i32 %height, -3
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %outp.018 = phi i8* [ %add.ptr4, %for.body ], [ %add.ptr2, %for.body.preheader ]
  %inp.017 = phi i8* [ %add.ptr3, %for.body ], [ %add.ptr, %for.body.preheader ]
  %y.016 = phi i32 [ %inc, %for.body ], [ 3, %for.body.preheader ]
  tail call void @Gaussian7x7u8PerRow(i8* %inp.017, i32 %stride, i32 %width, i8* %outp.018)
  %add.ptr3 = getelementptr inbounds i8, i8* %inp.017, i32 %stride
  %add.ptr4 = getelementptr inbounds i8, i8* %outp.018, i32 %stride
  %inc = add nuw nsw i32 %y.016, 1
  %exitcond = icmp eq i32 %inc, %0
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
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
!6 = distinct !{!6, !7, !"Gaussian3x3u8PerRow: %src"}
!7 = distinct !{!7, !"Gaussian3x3u8PerRow"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"Gaussian3x3u8PerRow: %dst"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"Gaussian5x5u8PerRow: %src"}
!12 = distinct !{!12, !"Gaussian5x5u8PerRow"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"Gaussian5x5u8PerRow: %dst"}
