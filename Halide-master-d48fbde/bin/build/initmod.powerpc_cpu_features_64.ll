; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/powerpc_cpu_features.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/powerpc_cpu_features.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::CpuFeatures" = type { [2 x i64], [2 x i64] }

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv(%"struct.Halide::Runtime::Internal::CpuFeatures"* noalias sret(%"struct.Halide::Runtime::Internal::CpuFeatures") align 8 %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 0, i64 0
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 1, i64 0
  store i64 0, i64* %3, align 8, !tbaa !3
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 0, i64 1
  store i64 0, i64* %4, align 8, !tbaa !3
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 1, i64 1
  store i64 0, i64* %5, align 8, !tbaa !3
  store i64 12288, i64* %2, align 8, !tbaa !3
  %6 = tail call i64 @getauxval(i64 16) #2
  %7 = tail call i64 @getauxval(i64 26) #2
  %8 = trunc i64 %6 to i8
  %9 = icmp sgt i8 %8, -1
  %10 = trunc i64 %7 to i32
  %11 = icmp sgt i32 %10, -1
  %12 = and i1 %9, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = select i1 %9, i64 8192, i64 12288
  %15 = select i1 %11, i64 4096, i64 %14
  store i64 %15, i64* %3, align 8, !tbaa !3
  br label %16

16:                                               ; preds = %1, %13
  ret void
}

declare i64 @getauxval(i64) local_unnamed_addr #1

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
