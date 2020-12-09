; ModuleID = 'code.c'
source_filename = "code.c"
target datalayout = "e-m:e-p:32:32:32-a:0-n16:32-i64:64:64-i32:32:32-i16:16:16-i1:8:8-f32:32:32-f64:64:64-v32:32:32-v64:64:64-v512:512:512-v1024:1024:1024-v2048:2048:2048"
target triple = "hexagon"

; Function Attrs: nounwind readonly
define dso_local inreg <64 x i32> @getllvm(i16* noalias nocapture readonly %src) local_unnamed_addr #0 {
entry:
  %0 = bitcast i16* %src to <32 x i32>*
  %add.ptr = getelementptr inbounds i16, i16* %src, i32 1
  %1 = bitcast i16* %add.ptr to <32 x i32>*
  %2 = load <32 x i32>, <32 x i32>* %0, align 128, !tbaa !2
  %3 = load <32 x i32>, <32 x i32>* %1, align 128, !tbaa !2
  %4 = tail call <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32> %2, <32 x i32> %3)
  ret <64 x i32> %4
}

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.hexagon.V6.vcombine.128B(<32 x i32>, <32 x i32>) #1

; Function Attrs: nounwind readonly
define dso_local inreg <64 x i32> @getllvm2(i16* noalias nocapture readonly %src) local_unnamed_addr #0 {
entry:
  %0 = bitcast i16* %src to <64 x i32>*
  %1 = load <64 x i32>, <64 x i32>* %0, align 256, !tbaa !2
  %2 = tail call <64 x i32> @llvm.hexagon.V6.vmpauhb.128B(<64 x i32> %1, i32 33817092)
  ret <64 x i32> %2
}

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.hexagon.V6.vmpauhb.128B(<64 x i32>, i32) #1

; Function Attrs: nounwind readonly
define dso_local inreg <64 x i32> @getllvm3(i16* noalias nocapture readonly %src) local_unnamed_addr #0 {
entry:
  %0 = bitcast i16* %src to <64 x i32>*
  %add.ptr = getelementptr inbounds i16, i16* %src, i32 1
  %1 = bitcast i16* %add.ptr to <32 x i32>*
  %2 = load <64 x i32>, <64 x i32>* %0, align 256, !tbaa !2
  %3 = load <32 x i32>, <32 x i32>* %1, align 128, !tbaa !2
  %4 = tail call <64 x i32> @llvm.hexagon.V6.vmpyub.acc.128B(<64 x i32> %2, <32 x i32> %3, i32 33817092)
  ret <64 x i32> %4
}

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.hexagon.V6.vmpyub.acc.128B(<64 x i32>, <32 x i32>, i32) #1

attributes #0 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv66" "target-features"="+hvx-length128b,+hvxv66,-long-calls" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"QuIC LLVM Hexagon Clang version 8.3.07 (based on LLVM 7.0.0)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
