; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_device_selection.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_device_selection.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

@_ZN6Halide7Runtime8Internal17halide_gpu_deviceE = weak local_unnamed_addr global i32 0, align 4
@_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE = weak global i8 0, align 1
@_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE = weak local_unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [14 x i8] c"HL_GPU_DEVICE\00", align 1

; Function Attrs: nounwind willreturn mustprogress
define weak void @halide_set_gpu_device(i32 %0) local_unnamed_addr #0 {
  store i32 %0, i32* @_ZN6Halide7Runtime8Internal17halide_gpu_deviceE, align 4, !tbaa !3
  store i8 1, i8* @_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE, align 1, !tbaa !7
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_get_gpu_device(i8* %0) local_unnamed_addr #1 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE, i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !9

5:                                                ; preds = %2
  %6 = load i8, i8* @_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE, align 1, !tbaa !7, !range !11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @_ZN6Halide7Runtime8Internal17halide_gpu_deviceE, align 4, !tbaa !3
  br label %17

10:                                               ; preds = %5
  %11 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #3
  %12 = icmp eq i8* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @atoi(i8* nonnull %11) #3
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi i32 [ %14, %13 ], [ -1, %10 ]
  store i32 %16, i32* @_ZN6Halide7Runtime8Internal17halide_gpu_deviceE, align 4, !tbaa !3
  store i8 1, i8* @_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE, align 1, !tbaa !7
  br label %17

17:                                               ; preds = %8, %15
  %18 = phi i32 [ %9, %8 ], [ %16, %15 ]
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE release, align 1
  ret i32 %18
}

declare i8* @getenv(i8*) local_unnamed_addr #2

declare i32 @atoi(i8*) local_unnamed_addr #2

attributes #0 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"bool", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i8 0, i8 2}
