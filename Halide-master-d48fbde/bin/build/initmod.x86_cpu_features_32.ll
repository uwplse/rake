; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/x86_cpu_features.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/x86_cpu_features.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"struct.Halide::Runtime::Internal::CpuFeatures" = type { [2 x i64], [2 x i64] }

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv(%"struct.Halide::Runtime::Internal::CpuFeatures"* noalias sret(%"struct.Halide::Runtime::Internal::CpuFeatures") align 8 %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i32], align 4
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i32 0, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i32 0, i32 1, i32 0
  store i64 0, i64* %4, align 8, !tbaa !3
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i32 0, i32 0, i32 1
  store i64 0, i64* %5, align 8, !tbaa !3
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i32 0, i32 1, i32 1
  store i64 0, i64* %6, align 8, !tbaa !3
  store i64 17042430231280, i64* %3, align 8, !tbaa !3
  %7 = bitcast [4 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #3
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i32 0, i32 0
  store i32 1, i32* %8, align 4, !tbaa !7
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i32 0, i32 1
  store i32 0, i32* %9, align 4, !tbaa !7
  call void @x86_cpuid_halide(i32* nonnull %8) #4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i32 0, i32 2
  %11 = load i32, i32* %10, align 4, !tbaa !7
  %12 = and i32 %11, 805834752
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = lshr i32 %11, 23
  %16 = and i32 %15, 32
  %17 = lshr i32 %11, 15
  %18 = and i32 %17, 16
  %19 = or i32 %16, %18
  %20 = lshr i32 %11, 20
  %21 = and i32 %20, 512
  %22 = or i32 %19, %21
  %23 = lshr i32 %11, 5
  %24 = and i32 %23, 128
  %25 = or i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %4, align 8, !tbaa !3
  br label %27

27:                                               ; preds = %1, %14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #3
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @x86_cpuid_halide(i32*) local_unnamed_addr #2

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
