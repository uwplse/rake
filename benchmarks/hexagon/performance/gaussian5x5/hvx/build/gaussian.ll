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
  %cmp71 = icmp sgt i32 %width, 128
  br i1 %cmp71, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %incdec.ptr6 = getelementptr inbounds i8, i8* %add.ptr4, i32 128
  %12 = bitcast i8* %incdec.ptr6 to <32 x i32>*
  %incdec.ptr5 = getelementptr inbounds i8, i8* %src, i32 128
  %13 = bitcast i8* %incdec.ptr5 to <32 x i32>*
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr, i32 128
  %14 = bitcast i8* %incdec.ptr to <32 x i32>*
  %15 = xor i32 %width, -1
  %16 = icmp sgt i32 %15, -257
  %smax = select i1 %16, i32 %15, i32 -257
  %17 = add i32 %smax, %width
  %18 = add i32 %17, 256
  %19 = and i32 %18, -128
  %scevgep = getelementptr i8, i8* %dst, i32 %19
  %.hexagon.vlcr = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %11)
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %optr.078 = phi <32 x i32>* [ %incdec.ptr10, %for.body ], [ %3, %for.body.preheader ]
  %iptr2.077 = phi <32 x i32>* [ %incdec.ptr9, %for.body ], [ %12, %for.body.preheader ]
  %iptr1.076 = phi <32 x i32>* [ %incdec.ptr8, %for.body ], [ %13, %for.body.preheader ]
  %iptr0.075 = phi <32 x i32>* [ %incdec.ptr7, %for.body ], [ %14, %for.body.preheader ]
  %dVsumv2.074 = phi <64 x i32> [ %27, %for.body ], [ %11, %for.body.preheader ]
  %dVsumv1.073 = phi <64 x i32> [ %dVsumv2.074, %for.body ], [ %8, %for.body.preheader ]
  %i.072 = phi i32 [ %sub, %for.body ], [ %width, %for.body.preheader ]
  %20 = phi <32 x i32> [ %30, %for.body ], [ %.hexagon.vlcr, %for.body.preheader ]
  %incdec.ptr7 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr0.075, i32 1
  %21 = load <32 x i32>, <32 x i32>* %iptr0.075, align 128, !tbaa !2
  %incdec.ptr8 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr1.076, i32 1
  %22 = load <32 x i32>, <32 x i32>* %iptr1.076, align 128, !tbaa !2
  %incdec.ptr9 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr2.077, i32 1
  %23 = load <32 x i32>, <32 x i32>* %iptr2.077, align 128, !tbaa !2
  %24 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv1.073)
  %25 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.128B(<32 x i32> %22, i32 33686018)
  %26 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %21, <32 x i32> %23)
  %27 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %25, <64 x i32> %26, i32 16843009)
  %28 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv2.074)
  %29 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %28, <32 x i32> %24, i32 2)
  %30 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %27)
  %31 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %30, <32 x i32> %20, i32 2)
  %32 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %29, <32 x i32> %20, i32 33686018)
  %33 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %32, <32 x i32> %28)
  %34 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %20, <32 x i32> %28, i32 33686018)
  %35 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %34, <32 x i32> %31)
  %36 = tail call <32 x i32> @llvm.hexagon.V6.vasrhubrndsat.128B(<32 x i32> %35, <32 x i32> %33, i32 4)
  %incdec.ptr10 = getelementptr inbounds <32 x i32>, <32 x i32>* %optr.078, i32 1
  store <32 x i32> %36, <32 x i32>* %optr.078, align 128, !tbaa !2
  %sub = add nsw i32 %i.072, -128
  %cmp = icmp sgt i32 %i.072, 256
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %scevgep81 = bitcast i8* %scevgep to <32 x i32>*
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %dVsumv1.0.lcssa = phi <64 x i32> [ %8, %entry ], [ %dVsumv2.074, %for.end.loopexit ]
  %dVsumv2.0.lcssa = phi <64 x i32> [ %11, %entry ], [ %27, %for.end.loopexit ]
  %optr.0.lcssa = phi <32 x i32>* [ %3, %entry ], [ %scevgep81, %for.end.loopexit ]
  %37 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv2.0.lcssa)
  %38 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv1.0.lcssa)
  %39 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %37, <32 x i32> %38, i32 2)
  %40 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dVsumv2.0.lcssa)
  %41 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %40, <32 x i32> %40, i32 2)
  %42 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %39, <32 x i32> %40, i32 33686018)
  %43 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %42, <32 x i32> %37)
  %44 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %40, <32 x i32> %37, i32 33686018)
  %45 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %44, <32 x i32> %41)
  %46 = tail call <32 x i32> @llvm.hexagon.V6.vasrhubrndsat.128B(<32 x i32> %45, <32 x i32> %43, i32 4)
  store <32 x i32> %46, <32 x i32>* %optr.0.lcssa, align 128, !tbaa !2
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
  %cmp17 = icmp sgt i32 %height, 2
  br i1 %cmp17, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = tail call <32 x i32> @llvm.hexagon.V6.vd0.128B() #2
  %1 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %0, <32 x i32> %0) #2
  %cmp71.i = icmp sgt i32 %width, 128
  %2 = xor i32 %width, -1
  %3 = icmp sgt i32 %2, -257
  %smax.i = select i1 %3, i32 %2, i32 -257
  %4 = add i32 %width, 256
  %5 = add i32 %4, %smax.i
  %6 = and i32 %5, -128
  %7 = add i32 %height, -1
  %.phi.trans.insert = bitcast i8* %src to <32 x i32>*
  %.pre = load <32 x i32>, <32 x i32>* %.phi.trans.insert, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %inp.021.phi.trans.insert = getelementptr inbounds i8, i8* %src, i32 %stride
  %.phi.trans.insert22 = bitcast i8* %inp.021.phi.trans.insert to <32 x i32>*
  %.pre23 = load <32 x i32>, <32 x i32>* %.phi.trans.insert22, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  br label %for.body

for.body:                                         ; preds = %Gaussian3x3u8PerRow.exit, %for.body.lr.ph
  %8 = phi <32 x i32> [ %.pre23, %for.body.lr.ph ], [ %12, %Gaussian3x3u8PerRow.exit ]
  %9 = phi <32 x i32> [ %.pre, %for.body.lr.ph ], [ %8, %Gaussian3x3u8PerRow.exit ]
  %src.pn = phi i8* [ %src, %for.body.lr.ph ], [ %inp.021, %Gaussian3x3u8PerRow.exit ]
  %dst.pn = phi i8* [ %dst, %for.body.lr.ph ], [ %outp.020, %Gaussian3x3u8PerRow.exit ]
  %y.018 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %Gaussian3x3u8PerRow.exit ]
  %outp.020 = getelementptr inbounds i8, i8* %dst.pn, i32 %stride
  %inp.021 = getelementptr inbounds i8, i8* %src.pn, i32 %stride
  %add.ptr4.i = getelementptr inbounds i8, i8* %inp.021, i32 %stride
  %10 = bitcast i8* %add.ptr4.i to <32 x i32>*
  %11 = bitcast i8* %outp.020 to <32 x i32>*
  %12 = load <32 x i32>, <32 x i32>* %10, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %13 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.128B(<32 x i32> %8, i32 33686018) #2
  %14 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %9, <32 x i32> %12) #2
  %15 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %13, <64 x i32> %14, i32 16843009) #2
  br i1 %cmp71.i, label %for.body.preheader.i, label %Gaussian3x3u8PerRow.exit

for.body.preheader.i:                             ; preds = %for.body
  %incdec.ptr6.i = getelementptr inbounds i8, i8* %add.ptr4.i, i32 128
  %16 = bitcast i8* %incdec.ptr6.i to <32 x i32>*
  %incdec.ptr5.i = getelementptr inbounds i8, i8* %inp.021, i32 128
  %17 = bitcast i8* %incdec.ptr5.i to <32 x i32>*
  %incdec.ptr.i = getelementptr inbounds i8, i8* %src.pn, i32 128
  %18 = bitcast i8* %incdec.ptr.i to <32 x i32>*
  %.hexagon.vlcr.i = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %15) #2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %optr.078.i = phi <32 x i32>* [ %incdec.ptr10.i, %for.body.i ], [ %11, %for.body.preheader.i ]
  %iptr2.077.i = phi <32 x i32>* [ %incdec.ptr9.i, %for.body.i ], [ %16, %for.body.preheader.i ]
  %iptr1.076.i = phi <32 x i32>* [ %incdec.ptr8.i, %for.body.i ], [ %17, %for.body.preheader.i ]
  %iptr0.075.i = phi <32 x i32>* [ %incdec.ptr7.i, %for.body.i ], [ %18, %for.body.preheader.i ]
  %dVsumv2.074.i = phi <64 x i32> [ %26, %for.body.i ], [ %15, %for.body.preheader.i ]
  %dVsumv1.073.i = phi <64 x i32> [ %dVsumv2.074.i, %for.body.i ], [ %1, %for.body.preheader.i ]
  %i.072.i = phi i32 [ %sub.i, %for.body.i ], [ %width, %for.body.preheader.i ]
  %19 = phi <32 x i32> [ %29, %for.body.i ], [ %.hexagon.vlcr.i, %for.body.preheader.i ]
  %incdec.ptr7.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr0.075.i, i32 1
  %20 = load <32 x i32>, <32 x i32>* %iptr0.075.i, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %incdec.ptr8.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr1.076.i, i32 1
  %21 = load <32 x i32>, <32 x i32>* %iptr1.076.i, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %incdec.ptr9.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr2.077.i, i32 1
  %22 = load <32 x i32>, <32 x i32>* %iptr2.077.i, align 128, !tbaa !2, !alias.scope !5, !noalias !8
  %23 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv1.073.i) #2
  %24 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.128B(<32 x i32> %21, i32 33686018) #2
  %25 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %20, <32 x i32> %22) #2
  %26 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %24, <64 x i32> %25, i32 16843009) #2
  %27 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv2.074.i) #2
  %28 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %27, <32 x i32> %23, i32 2) #2
  %29 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %26) #2
  %30 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %29, <32 x i32> %19, i32 2) #2
  %31 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %28, <32 x i32> %19, i32 33686018) #2
  %32 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %31, <32 x i32> %27) #2
  %33 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %19, <32 x i32> %27, i32 33686018) #2
  %34 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %33, <32 x i32> %30) #2
  %35 = tail call <32 x i32> @llvm.hexagon.V6.vasrhubrndsat.128B(<32 x i32> %34, <32 x i32> %32, i32 4) #2
  %incdec.ptr10.i = getelementptr inbounds <32 x i32>, <32 x i32>* %optr.078.i, i32 1
  store <32 x i32> %35, <32 x i32>* %optr.078.i, align 128, !tbaa !2, !alias.scope !8, !noalias !5
  %sub.i = add nsw i32 %i.072.i, -128
  %cmp.i = icmp sgt i32 %i.072.i, 256
  br i1 %cmp.i, label %for.body.i, label %for.end.loopexit.i

for.end.loopexit.i:                               ; preds = %for.body.i
  %scevgep.i = getelementptr i8, i8* %outp.020, i32 %6
  %scevgep81.i = bitcast i8* %scevgep.i to <32 x i32>*
  br label %Gaussian3x3u8PerRow.exit

Gaussian3x3u8PerRow.exit:                         ; preds = %for.body, %for.end.loopexit.i
  %dVsumv1.0.lcssa.i = phi <64 x i32> [ %1, %for.body ], [ %dVsumv2.074.i, %for.end.loopexit.i ]
  %dVsumv2.0.lcssa.i = phi <64 x i32> [ %15, %for.body ], [ %26, %for.end.loopexit.i ]
  %optr.0.lcssa.i = phi <32 x i32>* [ %11, %for.body ], [ %scevgep81.i, %for.end.loopexit.i ]
  %36 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv2.0.lcssa.i) #2
  %37 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv1.0.lcssa.i) #2
  %38 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %36, <32 x i32> %37, i32 2) #2
  %39 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dVsumv2.0.lcssa.i) #2
  %40 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %39, <32 x i32> %39, i32 2) #2
  %41 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %38, <32 x i32> %39, i32 33686018) #2
  %42 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %41, <32 x i32> %36) #2
  %43 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %39, <32 x i32> %36, i32 33686018) #2
  %44 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %43, <32 x i32> %40) #2
  %45 = tail call <32 x i32> @llvm.hexagon.V6.vasrhubrndsat.128B(<32 x i32> %44, <32 x i32> %42, i32 4) #2
  store <32 x i32> %45, <32 x i32>* %optr.0.lcssa.i, align 128, !tbaa !2, !alias.scope !8, !noalias !5
  %inc = add nuw nsw i32 %y.018, 1
  %exitcond = icmp eq i32 %inc, %7
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %Gaussian3x3u8PerRow.exit, %entry
  ret void
}

; Function Attrs: nounwind
define dso_local void @Gaussian5x5u8PerRow(i8* noalias nocapture readonly %src, i32 %stride, i32 %width, i8* noalias nocapture %dst) local_unnamed_addr #0 {
entry:
  %mul = shl nsw i32 %stride, 1
  %idx.neg = sub i32 0, %mul
  %add.ptr = getelementptr inbounds i8, i8* %src, i32 %idx.neg
  %0 = bitcast i8* %add.ptr to <32 x i32>*
  %idx.neg2 = sub i32 0, %stride
  %add.ptr3 = getelementptr inbounds i8, i8* %src, i32 %idx.neg2
  %1 = bitcast i8* %add.ptr3 to <32 x i32>*
  %2 = bitcast i8* %src to <32 x i32>*
  %add.ptr7 = getelementptr inbounds i8, i8* %src, i32 %stride
  %3 = bitcast i8* %add.ptr7 to <32 x i32>*
  %add.ptr9 = getelementptr inbounds i8, i8* %src, i32 %mul
  %4 = bitcast i8* %add.ptr9 to <32 x i32>*
  %5 = bitcast i8* %dst to <32 x i32>*
  %6 = tail call <32 x i32> @llvm.hexagon.V6.vd0.128B()
  %7 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %6, <32 x i32> %6)
  %8 = load <32 x i32>, <32 x i32>* %0, align 128, !tbaa !2
  %9 = load <32 x i32>, <32 x i32>* %1, align 128, !tbaa !2
  %10 = load <32 x i32>, <32 x i32>* %2, align 128, !tbaa !2
  %11 = load <32 x i32>, <32 x i32>* %3, align 128, !tbaa !2
  %12 = load <32 x i32>, <32 x i32>* %4, align 128, !tbaa !2
  %13 = tail call <64 x i32> @llvm.hexagon.V6.vaddubh.128B(<32 x i32> %8, <32 x i32> %12)
  %14 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.acc.128B(<64 x i32> %13, <32 x i32> %10, i32 101058054)
  %15 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %11, <32 x i32> %9)
  %16 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %14, <64 x i32> %15, i32 67372036)
  %cmp148 = icmp sgt i32 %width, 128
  br i1 %cmp148, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %incdec.ptr13 = getelementptr inbounds i8, i8* %add.ptr9, i32 128
  %17 = bitcast i8* %incdec.ptr13 to <32 x i32>*
  %incdec.ptr12 = getelementptr inbounds i8, i8* %add.ptr7, i32 128
  %18 = bitcast i8* %incdec.ptr12 to <32 x i32>*
  %incdec.ptr11 = getelementptr inbounds i8, i8* %src, i32 128
  %19 = bitcast i8* %incdec.ptr11 to <32 x i32>*
  %incdec.ptr10 = getelementptr inbounds i8, i8* %add.ptr3, i32 128
  %20 = bitcast i8* %incdec.ptr10 to <32 x i32>*
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr, i32 128
  %21 = bitcast i8* %incdec.ptr to <32 x i32>*
  %22 = xor i32 %width, -1
  %23 = icmp sgt i32 %22, -257
  %smax = select i1 %23, i32 %22, i32 -257
  %24 = add i32 %smax, %width
  %25 = add i32 %24, 256
  %26 = and i32 %25, -128
  %scevgep = getelementptr i8, i8* %dst, i32 %26
  %.hexagon.vlcr = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %7)
  %.hexagon.vlcr167 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %7)
  %.hexagon.vlcr172 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %16)
  %.hexagon.vlcr173 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %16)
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %optr.0161 = phi <32 x i32>* [ %incdec.ptr19, %for.body ], [ %5, %for.body.preheader ]
  %iptr4.0160 = phi <32 x i32>* [ %incdec.ptr18, %for.body ], [ %17, %for.body.preheader ]
  %iptr3.0159 = phi <32 x i32>* [ %incdec.ptr17, %for.body ], [ %18, %for.body.preheader ]
  %iptr2.0158 = phi <32 x i32>* [ %incdec.ptr16, %for.body ], [ %19, %for.body.preheader ]
  %iptr1.0157 = phi <32 x i32>* [ %incdec.ptr15, %for.body ], [ %20, %for.body.preheader ]
  %iptr0.0156 = phi <32 x i32>* [ %incdec.ptr14, %for.body ], [ %21, %for.body.preheader ]
  %i.0149 = phi i32 [ %sub, %for.body ], [ %width, %for.body.preheader ]
  %27 = phi <32 x i32> [ %30, %for.body ], [ %.hexagon.vlcr, %for.body.preheader ]
  %28 = phi <32 x i32> [ %31, %for.body ], [ %.hexagon.vlcr167, %for.body.preheader ]
  %29 = phi <64 x i32> [ %40, %for.body ], [ %16, %for.body.preheader ]
  %30 = phi <32 x i32> [ %43, %for.body ], [ %.hexagon.vlcr172, %for.body.preheader ]
  %31 = phi <32 x i32> [ %45, %for.body ], [ %.hexagon.vlcr173, %for.body.preheader ]
  %incdec.ptr14 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr0.0156, i32 1
  %32 = load <32 x i32>, <32 x i32>* %iptr0.0156, align 128, !tbaa !2
  %incdec.ptr15 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr1.0157, i32 1
  %33 = load <32 x i32>, <32 x i32>* %iptr1.0157, align 128, !tbaa !2
  %incdec.ptr16 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr2.0158, i32 1
  %34 = load <32 x i32>, <32 x i32>* %iptr2.0158, align 128, !tbaa !2
  %incdec.ptr17 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr3.0159, i32 1
  %35 = load <32 x i32>, <32 x i32>* %iptr3.0159, align 128, !tbaa !2
  %incdec.ptr18 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr4.0160, i32 1
  %36 = load <32 x i32>, <32 x i32>* %iptr4.0160, align 128, !tbaa !2
  %37 = tail call <64 x i32> @llvm.hexagon.V6.vaddubh.128B(<32 x i32> %32, <32 x i32> %36)
  %38 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.acc.128B(<64 x i32> %37, <32 x i32> %34, i32 101058054)
  %39 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %35, <32 x i32> %33)
  %40 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %38, <64 x i32> %39, i32 67372036)
  %41 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %30, <32 x i32> %27, i32 2)
  %42 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %31, <32 x i32> %28, i32 2)
  %43 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %40)
  %44 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %43, <32 x i32> %30, i32 2)
  %45 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %40)
  %46 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %45, <32 x i32> %31, i32 2)
  %47 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %42, <32 x i32> %31)
  %48 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %30, <32 x i32> %44)
  %49 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %41, <32 x i32> %44)
  %50 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %49, <32 x i32> %30, i32 101058054)
  %51 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %50, <32 x i32> %47, i32 67372036)
  %52 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %42, <32 x i32> %46)
  %53 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %52, <32 x i32> %31, i32 101058054)
  %54 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %53, <32 x i32> %48, i32 67372036)
  %55 = tail call <32 x i32> @llvm.hexagon.V6.vshuffob.128B(<32 x i32> %54, <32 x i32> %51)
  %incdec.ptr19 = getelementptr inbounds <32 x i32>, <32 x i32>* %optr.0161, i32 1
  store <32 x i32> %55, <32 x i32>* %optr.0161, align 128, !tbaa !2
  %sub = add nsw i32 %i.0149, -128
  %cmp = icmp sgt i32 %i.0149, 256
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %scevgep165 = bitcast i8* %scevgep to <32 x i32>*
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %dVsumv1.0.lcssa = phi <64 x i32> [ %7, %entry ], [ %29, %for.end.loopexit ]
  %dVsumv2.0.lcssa = phi <64 x i32> [ %16, %entry ], [ %40, %for.end.loopexit ]
  %optr.0.lcssa = phi <32 x i32>* [ %5, %entry ], [ %scevgep165, %for.end.loopexit ]
  %56 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dVsumv2.0.lcssa)
  %57 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dVsumv1.0.lcssa)
  %58 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %56, <32 x i32> %57, i32 2)
  %59 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv2.0.lcssa)
  %60 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv1.0.lcssa)
  %61 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %59, <32 x i32> %60, i32 2)
  %62 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %56, <32 x i32> %56, i32 2)
  %63 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %59, <32 x i32> %59, i32 2)
  %64 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %61, <32 x i32> %59)
  %65 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %56, <32 x i32> %62)
  %66 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %58, <32 x i32> %62)
  %67 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %66, <32 x i32> %56, i32 101058054)
  %68 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %67, <32 x i32> %64, i32 67372036)
  %69 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %61, <32 x i32> %63)
  %70 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %69, <32 x i32> %59, i32 101058054)
  %71 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %70, <32 x i32> %65, i32 67372036)
  %72 = tail call <32 x i32> @llvm.hexagon.V6.vshuffob.128B(<32 x i32> %71, <32 x i32> %68)
  store <32 x i32> %72, <32 x i32>* %optr.0.lcssa, align 128, !tbaa !2
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
  %idx.neg.i = sub i32 0, %mul
  %idx.neg2.i = sub i32 0, %stride
  %cmp148.i = icmp sgt i32 %width, 128
  %0 = xor i32 %width, -1
  %1 = icmp sgt i32 %0, -257
  %smax.i = select i1 %1, i32 %0, i32 -257
  %2 = add i32 %width, 256
  %3 = add i32 %2, %smax.i
  %4 = and i32 %3, -128
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc10
  %y.034 = phi i32 [ 2, %for.body.lr.ph ], [ %add, %for.inc10 ]
  %outp.033 = phi i8* [ %add.ptr2, %for.body.lr.ph ], [ %scevgep, %for.inc10 ]
  %inp.032 = phi i8* [ %add.ptr, %for.body.lr.ph ], [ %add.ptr4, %for.inc10 ]
  %add.ptr4 = getelementptr i8, i8* %inp.032, i32 %mul3
  tail call void @llvm.hexagon.Y5.l2fetch(i8* %add.ptr4, i64 8246463037448)
  %5 = tail call <32 x i32> @llvm.hexagon.V6.vd0.128B() #2
  %6 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %5, <32 x i32> %5) #2
  %scevgep = getelementptr i8, i8* %outp.033, i32 %mul3
  %.phi.trans.insert = bitcast i8* %inp.032 to <32 x i32>*
  %.pre = load <32 x i32>, <32 x i32>* %.phi.trans.insert, align 128, !tbaa !2, !alias.scope !10, !noalias !13
  br label %for.body7

for.body7:                                        ; preds = %Gaussian5x5u8PerRow.exit, %for.body
  %7 = phi <32 x i32> [ %.pre, %for.body ], [ %15, %Gaussian5x5u8PerRow.exit ]
  %outp.130 = phi i8* [ %outp.033, %for.body ], [ %add.ptr9, %Gaussian5x5u8PerRow.exit ]
  %inp.129 = phi i8* [ %inp.032, %for.body ], [ %add.ptr7.i, %Gaussian5x5u8PerRow.exit ]
  %yi.028 = phi i32 [ 0, %for.body ], [ %inc, %Gaussian5x5u8PerRow.exit ]
  %add.ptr.i = getelementptr inbounds i8, i8* %inp.129, i32 %idx.neg.i
  %8 = bitcast i8* %add.ptr.i to <32 x i32>*
  %add.ptr3.i = getelementptr inbounds i8, i8* %inp.129, i32 %idx.neg2.i
  %9 = bitcast i8* %add.ptr3.i to <32 x i32>*
  %add.ptr7.i = getelementptr inbounds i8, i8* %inp.129, i32 %stride
  %10 = bitcast i8* %add.ptr7.i to <32 x i32>*
  %add.ptr9.i = getelementptr inbounds i8, i8* %inp.129, i32 %mul
  %11 = bitcast i8* %add.ptr9.i to <32 x i32>*
  %12 = bitcast i8* %outp.130 to <32 x i32>*
  %13 = load <32 x i32>, <32 x i32>* %8, align 128, !tbaa !2, !alias.scope !10, !noalias !13
  %14 = load <32 x i32>, <32 x i32>* %9, align 128, !tbaa !2, !alias.scope !10, !noalias !13
  %15 = load <32 x i32>, <32 x i32>* %10, align 128, !tbaa !2, !alias.scope !10, !noalias !13
  %16 = load <32 x i32>, <32 x i32>* %11, align 128, !tbaa !2, !alias.scope !10, !noalias !13
  %17 = tail call <64 x i32> @llvm.hexagon.V6.vaddubh.128B(<32 x i32> %13, <32 x i32> %16) #2
  %18 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.acc.128B(<64 x i32> %17, <32 x i32> %7, i32 101058054) #2
  %19 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %15, <32 x i32> %14) #2
  %20 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %18, <64 x i32> %19, i32 67372036) #2
  br i1 %cmp148.i, label %for.body.preheader.i, label %Gaussian5x5u8PerRow.exit

for.body.preheader.i:                             ; preds = %for.body7
  %incdec.ptr13.i = getelementptr inbounds i8, i8* %add.ptr9.i, i32 128
  %21 = bitcast i8* %incdec.ptr13.i to <32 x i32>*
  %incdec.ptr12.i = getelementptr inbounds i8, i8* %add.ptr7.i, i32 128
  %22 = bitcast i8* %incdec.ptr12.i to <32 x i32>*
  %incdec.ptr11.i = getelementptr inbounds i8, i8* %inp.129, i32 128
  %23 = bitcast i8* %incdec.ptr11.i to <32 x i32>*
  %incdec.ptr10.i = getelementptr inbounds i8, i8* %add.ptr3.i, i32 128
  %24 = bitcast i8* %incdec.ptr10.i to <32 x i32>*
  %incdec.ptr.i = getelementptr inbounds i8, i8* %add.ptr.i, i32 128
  %25 = bitcast i8* %incdec.ptr.i to <32 x i32>*
  %.hexagon.vlcr.i = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %6) #2
  %.hexagon.vlcr167.i = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %6) #2
  %.hexagon.vlcr172.i = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %20) #2
  %.hexagon.vlcr173.i = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %20) #2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %optr.0161.i = phi <32 x i32>* [ %incdec.ptr19.i, %for.body.i ], [ %12, %for.body.preheader.i ]
  %iptr4.0160.i = phi <32 x i32>* [ %incdec.ptr18.i, %for.body.i ], [ %21, %for.body.preheader.i ]
  %iptr3.0159.i = phi <32 x i32>* [ %incdec.ptr17.i, %for.body.i ], [ %22, %for.body.preheader.i ]
  %iptr2.0158.i = phi <32 x i32>* [ %incdec.ptr16.i, %for.body.i ], [ %23, %for.body.preheader.i ]
  %iptr1.0157.i = phi <32 x i32>* [ %incdec.ptr15.i, %for.body.i ], [ %24, %for.body.preheader.i ]
  %iptr0.0156.i = phi <32 x i32>* [ %incdec.ptr14.i, %for.body.i ], [ %25, %for.body.preheader.i ]
  %i.0149.i = phi i32 [ %sub.i, %for.body.i ], [ %width, %for.body.preheader.i ]
  %26 = phi <32 x i32> [ %29, %for.body.i ], [ %.hexagon.vlcr.i, %for.body.preheader.i ]
  %27 = phi <32 x i32> [ %30, %for.body.i ], [ %.hexagon.vlcr167.i, %for.body.preheader.i ]
  %28 = phi <64 x i32> [ %39, %for.body.i ], [ %20, %for.body.preheader.i ]
  %29 = phi <32 x i32> [ %42, %for.body.i ], [ %.hexagon.vlcr172.i, %for.body.preheader.i ]
  %30 = phi <32 x i32> [ %44, %for.body.i ], [ %.hexagon.vlcr173.i, %for.body.preheader.i ]
  %incdec.ptr14.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr0.0156.i, i32 1
  %31 = load <32 x i32>, <32 x i32>* %iptr0.0156.i, align 128, !tbaa !2, !alias.scope !10, !noalias !13
  %incdec.ptr15.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr1.0157.i, i32 1
  %32 = load <32 x i32>, <32 x i32>* %iptr1.0157.i, align 128, !tbaa !2, !alias.scope !10, !noalias !13
  %incdec.ptr16.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr2.0158.i, i32 1
  %33 = load <32 x i32>, <32 x i32>* %iptr2.0158.i, align 128, !tbaa !2, !alias.scope !10, !noalias !13
  %incdec.ptr17.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr3.0159.i, i32 1
  %34 = load <32 x i32>, <32 x i32>* %iptr3.0159.i, align 128, !tbaa !2, !alias.scope !10, !noalias !13
  %incdec.ptr18.i = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr4.0160.i, i32 1
  %35 = load <32 x i32>, <32 x i32>* %iptr4.0160.i, align 128, !tbaa !2, !alias.scope !10, !noalias !13
  %36 = tail call <64 x i32> @llvm.hexagon.V6.vaddubh.128B(<32 x i32> %31, <32 x i32> %35) #2
  %37 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.acc.128B(<64 x i32> %36, <32 x i32> %33, i32 101058054) #2
  %38 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %34, <32 x i32> %32) #2
  %39 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %37, <64 x i32> %38, i32 67372036) #2
  %40 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %29, <32 x i32> %26, i32 2) #2
  %41 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %30, <32 x i32> %27, i32 2) #2
  %42 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %39) #2
  %43 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %42, <32 x i32> %29, i32 2) #2
  %44 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %39) #2
  %45 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %44, <32 x i32> %30, i32 2) #2
  %46 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %41, <32 x i32> %30) #2
  %47 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %29, <32 x i32> %43) #2
  %48 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %40, <32 x i32> %43) #2
  %49 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %48, <32 x i32> %29, i32 101058054) #2
  %50 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %49, <32 x i32> %46, i32 67372036) #2
  %51 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %41, <32 x i32> %45) #2
  %52 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %51, <32 x i32> %30, i32 101058054) #2
  %53 = tail call <32 x i32> @llvm.hexagon.V6.vmpyihb.acc.128B(<32 x i32> %52, <32 x i32> %47, i32 67372036) #2
  %54 = tail call <32 x i32> @llvm.hexagon.V6.vshuffob.128B(<32 x i32> %53, <32 x i32> %50) #2
  %incdec.ptr19.i = getelementptr inbounds <32 x i32>, <32 x i32>* %optr.0161.i, i32 1
  store <32 x i32> %54, <32 x i32>* %optr.0161.i, align 128, !tbaa !2, !alias.scope !13, !noalias !10
  %sub.i = add nsw i32 %i.0149.i, -128
  %cmp.i = icmp sgt i32 %i.0149.i, 256
  br i1 %cmp.i, label %for.body.i, label %for.end.loopexit.i

for.end.loopexit.i:                               ; preds = %for.body.i
  %scevgep.i = getelementptr i8, i8* %outp.130, i32 %4
  %scevgep165.i = bitcast i8* %scevgep.i to <32 x i32>*
  br label %Gaussian5x5u8PerRow.exit

Gaussian5x5u8PerRow.exit:                         ; preds = %for.body7, %for.end.loopexit.i
  %dVsumv1.0.lcssa.i = phi <64 x i32> [ %6, %for.body7 ], [ %28, %for.end.loopexit.i ]
  %dVsumv2.0.lcssa.i = phi <64 x i32> [ %20, %for.body7 ], [ %39, %for.end.loopexit.i ]
  %optr.0.lcssa.i = phi <32 x i32>* [ %12, %for.body7 ], [ %scevgep165.i, %for.end.loopexit.i ]
  %55 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dVsumv2.0.lcssa.i) #2
  %56 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dVsumv1.0.lcssa.i) #2
  %57 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %55, <32 x i32> %56, i32 2) #2
  %58 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv2.0.lcssa.i) #2
  %59 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dVsumv1.0.lcssa.i) #2
  %60 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %58, <32 x i32> %59, i32 2) #2
  %61 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %55, <32 x i32> %55, i32 2) #2
  %62 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %58, <32 x i32> %58, i32 2) #2
  %63 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %60, <32 x i32> %58) #2
  %64 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %55, <32 x i32> %61) #2
  %65 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %57, <32 x i32> %61) #2
  %66 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %65, <32 x i32> %55, i32 101058054) #2
  %67 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %66, <32 x i32> %63, i32 67372036) #2
  %68 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %60, <32 x i32> %62) #2
  %69 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %68, <32 x i32> %58, i32 101058054) #2
  %70 = tail call <32 x i32> @llvm.hexagon.V6.vmpyiwb.acc.128B(<32 x i32> %69, <32 x i32> %64, i32 67372036) #2
  %71 = tail call <32 x i32> @llvm.hexagon.V6.vshuffob.128B(<32 x i32> %70, <32 x i32> %67) #2
  store <32 x i32> %71, <32 x i32>* %optr.0.lcssa.i, align 128, !tbaa !2, !alias.scope !13, !noalias !10
  %add.ptr9 = getelementptr inbounds i8, i8* %outp.130, i32 %stride
  %inc = add nuw nsw i32 %yi.028, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %for.inc10, label %for.body7

for.inc10:                                        ; preds = %Gaussian5x5u8PerRow.exit
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
  %cmp155 = icmp sgt i32 %width, 128
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
  %31 = icmp sgt i32 %30, -257
  %smax = select i1 %31, i32 %30, i32 -257
  %32 = add i32 %smax, %width
  %33 = add i32 %32, 256
  %34 = and i32 %33, -128
  %scevgep = getelementptr i8, i8* %dst, i32 %34
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
  %dXV1.0158 = phi <64 x i32> [ %54, %for.body ], [ %22, %for.body.preheader ]
  %i.0156 = phi i32 [ %sub, %for.body ], [ %width, %for.body.preheader ]
  %35 = phi <32 x i32> [ %57, %for.body ], [ %.hexagon.vlcr, %for.body.preheader ]
  %36 = phi <32 x i32> [ %55, %for.body ], [ %.hexagon.vlcr170, %for.body.preheader ]
  %37 = phi <32 x i32> [ %35, %for.body ], [ %.hexagon.vlcr171, %for.body.preheader ]
  %38 = phi <32 x i32> [ %36, %for.body ], [ %.hexagon.vlcr173, %for.body.preheader ]
  %incdec.ptr21 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr0.0159, i32 1
  %39 = load <32 x i32>, <32 x i32>* %iptr0.0159, align 128, !tbaa !2
  %incdec.ptr22 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr1.0160, i32 1
  %40 = load <32 x i32>, <32 x i32>* %iptr1.0160, align 128, !tbaa !2
  %incdec.ptr23 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr2.0161, i32 1
  %41 = load <32 x i32>, <32 x i32>* %iptr2.0161, align 128, !tbaa !2
  %incdec.ptr24 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr3.0162, i32 1
  %42 = load <32 x i32>, <32 x i32>* %iptr3.0162, align 128, !tbaa !2
  %incdec.ptr25 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr4.0163, i32 1
  %43 = load <32 x i32>, <32 x i32>* %iptr4.0163, align 128, !tbaa !2
  %incdec.ptr26 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr5.0164, i32 1
  %44 = load <32 x i32>, <32 x i32>* %iptr5.0164, align 128, !tbaa !2
  %incdec.ptr27 = getelementptr inbounds <32 x i32>, <32 x i32>* %iptr6.0165, i32 1
  %45 = load <32 x i32>, <32 x i32>* %iptr6.0165, align 128, !tbaa !2
  %46 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %35, <32 x i32> %37, i32 2)
  %47 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %36, <32 x i32> %38, i32 2)
  %48 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %35, <32 x i32> %37, i32 4)
  %49 = tail call <64 x i32> @llvm.hexagon.V6.vaddubh.128B(<32 x i32> %45, <32 x i32> %39)
  %50 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %44, <32 x i32> %40)
  %51 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %49, <64 x i32> %50, i32 101058054)
  %52 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %43, <32 x i32> %41)
  %53 = tail call <64 x i32> @llvm.hexagon.V6.vmpabus.acc.128B(<64 x i32> %51, <64 x i32> %52, i32 252645135)
  %54 = tail call <64 x i32> @llvm.hexagon.V6.vmpybus.acc.128B(<64 x i32> %53, <32 x i32> %42, i32 336860180)
  %55 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %54)
  %56 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %55, <32 x i32> %36, i32 2)
  %57 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %54)
  %58 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %57, <32 x i32> %35, i32 2)
  %59 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %55, <32 x i32> %36, i32 4)
  %60 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %35, <32 x i32> %46)
  %61 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %60, <32 x i32> %36)
  %62 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.128B(<64 x i32> %61, i32 252972820)
  %63 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %56, <32 x i32> %36)
  %64 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %63, <32 x i32> %35)
  %65 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.128B(<64 x i32> %64, i32 252972820)
  %66 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %58, <32 x i32> %48)
  %67 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %56, <32 x i32> %47)
  %68 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %66, <32 x i32> %67)
  %69 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.acc.128B(<64 x i32> %62, <64 x i32> %68, i32 17170694)
  %70 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %59, <32 x i32> %47)
  %71 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %58, <32 x i32> %46)
  %72 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %70, <32 x i32> %71)
  %73 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.acc.128B(<64 x i32> %65, <64 x i32> %72, i32 17170694)
  %74 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %69)
  %75 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %69)
  %76 = tail call <32 x i32> @llvm.hexagon.V6.vasrwh.128B(<32 x i32> %74, <32 x i32> %75, i32 12)
  %77 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %73)
  %78 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %73)
  %79 = tail call <32 x i32> @llvm.hexagon.V6.vasrwh.128B(<32 x i32> %77, <32 x i32> %78, i32 12)
  %80 = tail call <32 x i32> @llvm.hexagon.V6.vshuffeb.128B(<32 x i32> %79, <32 x i32> %76)
  %incdec.ptr28 = getelementptr inbounds <32 x i32>, <32 x i32>* %optr.0166, i32 1
  store <32 x i32> %80, <32 x i32>* %optr.0166, align 128, !tbaa !2
  %sub = add nsw i32 %i.0156, -128
  %cmp = icmp sgt i32 %i.0156, 256
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %scevgep169 = bitcast i8* %scevgep to <32 x i32>*
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %dXV0.0.lcssa = phi <64 x i32> [ %16, %entry ], [ %dXV1.0158, %for.end.loopexit ]
  %dXV1.0.lcssa = phi <64 x i32> [ %22, %entry ], [ %54, %for.end.loopexit ]
  %optr.0.lcssa = phi <32 x i32>* [ %7, %entry ], [ %scevgep169, %for.end.loopexit ]
  %81 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dXV1.0.lcssa)
  %82 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %dXV0.0.lcssa)
  %83 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %81, <32 x i32> %82, i32 2)
  %84 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dXV1.0.lcssa)
  %85 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %dXV0.0.lcssa)
  %86 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %84, <32 x i32> %85, i32 2)
  %87 = tail call <32 x i32> @llvm.hexagon.V6.vlalignbi.128B(<32 x i32> %81, <32 x i32> %82, i32 4)
  %88 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %16)
  %89 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %88, <32 x i32> %84, i32 2)
  %90 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %16)
  %91 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %90, <32 x i32> %81, i32 2)
  %92 = tail call <32 x i32> @llvm.hexagon.V6.valignbi.128B(<32 x i32> %88, <32 x i32> %84, i32 4)
  %93 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %81, <32 x i32> %83)
  %94 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %93, <32 x i32> %84)
  %95 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.128B(<64 x i32> %94, i32 252972820)
  %96 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %89, <32 x i32> %84)
  %97 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %96, <32 x i32> %81)
  %98 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.128B(<64 x i32> %97, i32 252972820)
  %99 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %91, <32 x i32> %87)
  %100 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %89, <32 x i32> %86)
  %101 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %99, <32 x i32> %100)
  %102 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.acc.128B(<64 x i32> %95, <64 x i32> %101, i32 17170694)
  %103 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %92, <32 x i32> %86)
  %104 = tail call <32 x i32> @llvm.hexagon.V6.vaddh.128B(<32 x i32> %91, <32 x i32> %83)
  %105 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %103, <32 x i32> %104)
  %106 = tail call <64 x i32> @llvm.hexagon.V6.vmpahb.acc.128B(<64 x i32> %98, <64 x i32> %105, i32 17170694)
  %107 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %102)
  %108 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %102)
  %109 = tail call <32 x i32> @llvm.hexagon.V6.vasrwh.128B(<32 x i32> %107, <32 x i32> %108, i32 12)
  %110 = tail call <32 x i32> @llvm.hexagon.V6.hi.128B(<64 x i32> %106)
  %111 = tail call <32 x i32> @llvm.hexagon.V6.lo.128B(<64 x i32> %106)
  %112 = tail call <32 x i32> @llvm.hexagon.V6.vasrwh.128B(<32 x i32> %110, <32 x i32> %111, i32 12)
  %113 = tail call <32 x i32> @llvm.hexagon.V6.vshuffeb.128B(<32 x i32> %112, <32 x i32> %109)
  store <32 x i32> %113, <32 x i32>* %optr.0.lcssa, align 128, !tbaa !2
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
