; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/x86_cpu_features.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/x86_cpu_features.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::CpuFeatures" = type { [2 x i64], [2 x i64] }

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv(%"struct.Halide::Runtime::Internal::CpuFeatures"* noalias sret(%"struct.Halide::Runtime::Internal::CpuFeatures") align 8 %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i32], align 4
  %3 = alloca [4 x i32], align 4
  %4 = alloca [4 x i32], align 4
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 0, i64 0
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 1, i64 0
  store i64 0, i64* %6, align 8, !tbaa !3
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 0, i64 1
  store i64 0, i64* %7, align 8, !tbaa !3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 1, i64 1
  store i64 0, i64* %8, align 8, !tbaa !3
  store i64 17042430231280, i64* %5, align 8, !tbaa !3
  %9 = bitcast [4 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #3
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  store i32 1, i32* %10, align 4, !tbaa !7
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  store i32 0, i32* %11, align 4, !tbaa !7
  call void @x86_cpuid_halide(i32* nonnull %10) #4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  %13 = load i32, i32* %12, align 4, !tbaa !7
  %14 = lshr i32 %13, 15
  %15 = and i32 %14, 16
  %16 = lshr i32 %13, 23
  %17 = and i32 %16, 32
  %18 = or i32 %17, %15
  %19 = lshr i32 %13, 20
  %20 = and i32 %19, 512
  %21 = or i32 %20, %18
  %22 = lshr i32 %13, 5
  %23 = and i32 %22, 128
  %24 = or i32 %23, %21
  %25 = zext i32 %24 to i64
  %26 = and i32 %13, 805834752
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i64 %25, i64* %6, align 8, !tbaa !3
  br label %29

29:                                               ; preds = %1, %28
  %30 = and i32 %13, 1879048192
  %31 = icmp eq i32 %30, 1879048192
  br i1 %31, label %32, label %73

32:                                               ; preds = %29
  %33 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %33) #3
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  store i32 7, i32* %34, align 4, !tbaa !7
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  store i32 0, i32* %35, align 4, !tbaa !7
  call void @x86_cpuid_halide(i32* nonnull %34) #4
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = and i32 %36, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = or i64 %25, 64
  store i64 %40, i64* %6, align 8, !tbaa !3
  br label %41

41:                                               ; preds = %39, %32
  %42 = phi i64 [ %40, %39 ], [ %25, %32 ]
  %43 = and i32 %36, 268500992
  %44 = icmp eq i32 %43, 268500992
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = and i32 %36, 469827584
  %47 = icmp eq i32 %46, 469827584
  %48 = select i1 %47, i64 1649267441664, i64 549755813888
  %49 = or i64 %42, %48
  %50 = and i32 %36, -805109760
  %51 = icmp eq i32 %50, -805109760
  %52 = or i64 %49, 2199023255552
  %53 = select i1 %51, i64 %52, i64 %49
  store i64 %53, i64* %6, align 8, !tbaa !3
  %54 = and i32 %36, -803012608
  %55 = icmp eq i32 %54, -803012608
  br i1 %55, label %56, label %72

56:                                               ; preds = %45
  %57 = or i64 %53, 4398046511104
  store i64 %57, i64* %6, align 8, !tbaa !3
  %58 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %58) #3
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  store i32 7, i32* %59, align 4, !tbaa !7
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  store i32 1, i32* %60, align 4, !tbaa !7
  call void @x86_cpuid_halide(i32* nonnull %59) #4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %62 = load i32, i32* %61, align 4, !tbaa !7
  %63 = and i32 %62, 2048
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %59, align 4, !tbaa !7
  %67 = and i32 %66, 32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = or i64 %53, 13194139533312
  store i64 %70, i64* %6, align 8, !tbaa !3
  br label %71

71:                                               ; preds = %69, %65, %56
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %58) #3
  br label %72

72:                                               ; preds = %45, %71, %41
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %33) #3
  br label %73

73:                                               ; preds = %29, %72
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #3
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
