; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/can_use_target.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/can_use_target.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Runtime::Internal::CpuFeatures" = type { [2 x i64], [2 x i64] }

@_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE = weak local_unnamed_addr global i32 (i32, i64*)* @halide_default_can_use_target_features, align 8
@_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE = weak global [4 x i64] zeroinitializer, align 8
@_ZN6Halide7Runtime8Internal31halide_cpu_features_initializedE = weak local_unnamed_addr global i8 0, align 1
@_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE = weak global %struct.halide_mutex zeroinitializer, align 8
@.str = private unnamed_addr constant [81 x i8] c"Internal error: wrong structure size passed to halide_can_use_target_features()\0A\00", align 1

; Function Attrs: nounwind
define weak i32 @halide_default_can_use_target_features(i32 %0, i64* %1) #0 {
  %3 = alloca %"struct.Halide::Runtime::Internal::CpuFeatures", align 8
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE) #5
  %4 = load i8, i8* @_ZN6Halide7Runtime8Internal31halide_cpu_features_initializedE, align 1, !tbaa !3, !range !7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = bitcast %"struct.Halide::Runtime::Internal::CpuFeatures"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #6
  call void @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv(%"struct.Halide::Runtime::Internal::CpuFeatures"* nonnull sret(%"struct.Halide::Runtime::Internal::CpuFeatures") align 8 %3) #5
  %8 = call i8* @memcpy(i8* bitcast ([4 x i64]* @_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE to i8*), i8* nonnull %7, i64 32) #5
  store i8 1, i8* @_ZN6Halide7Runtime8Internal31halide_cpu_features_initializedE, align 1, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #6
  br label %9

9:                                                ; preds = %6, %2
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE) #5
  %10 = icmp eq i32 %0, 2
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  call void @halide_error(i8* null, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0)) #5
  br label %12

12:                                               ; preds = %11, %9
  %13 = load i64, i64* %1, align 8, !tbaa !8
  %14 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE, i64 0, i64 0), align 8, !tbaa !8
  %15 = and i64 %14, %13
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE, i64 0, i64 2), align 8, !tbaa !8
  %19 = and i64 %18, %15
  %20 = icmp eq i64 %19, %15
  br i1 %20, label %21, label %27

21:                                               ; preds = %12, %17
  %22 = getelementptr inbounds i64, i64* %1, i64 1
  %23 = load i64, i64* %22, align 8, !tbaa !8
  %24 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE, i64 0, i64 1), align 8, !tbaa !8
  %25 = and i64 %24, %23
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %33, label %29

27:                                               ; preds = %33, %29, %17
  %28 = phi i32 [ 0, %17 ], [ 0, %29 ], [ 1, %33 ]
  ret i32 %28

29:                                               ; preds = %21
  %30 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE, i64 0, i64 3), align 8, !tbaa !8
  %31 = and i64 %30, %25
  %32 = icmp eq i64 %31, %25
  br i1 %32, label %33, label %27

33:                                               ; preds = %29, %21
  br label %27
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 (i32, i64*)* @halide_set_custom_can_use_target_features(i32 (i32, i64*)* %0) local_unnamed_addr #1 {
  %2 = load i32 (i32, i64*)*, i32 (i32, i64*)** @_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE, align 8, !tbaa !10
  store i32 (i32, i64*)* %0, i32 (i32, i64*)** @_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE, align 8, !tbaa !10
  ret i32 (i32, i64*)* %2
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_can_use_target_features(i32 %0, i64* %1) local_unnamed_addr #3 {
  %3 = load i32 (i32, i64*)*, i32 (i32, i64*)** @_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE, align 8, !tbaa !10
  %4 = tail call i32 %3(i32 %0, i64* %1) #5
  ret i32 %4
}

declare extern_weak void @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv(%"struct.Halide::Runtime::Internal::CpuFeatures"* sret(%"struct.Halide::Runtime::Internal::CpuFeatures") align 8) local_unnamed_addr #4

declare i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #4

declare void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #4

declare void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #4

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"bool", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i8 0, i8 2}
!8 = !{!9, !9, i64 0}
!9 = !{!"long long", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
