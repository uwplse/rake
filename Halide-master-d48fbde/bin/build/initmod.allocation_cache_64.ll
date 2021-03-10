; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/allocation_cache.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/allocation_cache.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_mutex = type { [1 x i64] }
%struct.halide_device_allocation_pool = type { i32 (i8*)*, %struct.halide_device_allocation_pool* }

@_ZN6Halide7Runtime8Internal36halide_reuse_device_allocations_flagE = weak local_unnamed_addr global i8 1, align 1
@_ZN6Halide7Runtime8Internal21allocation_pools_lockE = weak global %struct.halide_mutex zeroinitializer, align 8
@_ZN6Halide7Runtime8Internal23device_allocation_poolsE = weak local_unnamed_addr global %struct.halide_device_allocation_pool* null, align 8

; Function Attrs: nounwind
define weak i32 @halide_reuse_device_allocations(i8* %0, i1 zeroext %1) local_unnamed_addr #0 {
  %3 = zext i1 %1 to i8
  store i8 %3, i8* @_ZN6Halide7Runtime8Internal36halide_reuse_device_allocations_flagE, align 1, !tbaa !3
  br i1 %1, label %20, label %4

4:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal21allocation_pools_lockE) #3
  %5 = load %struct.halide_device_allocation_pool*, %struct.halide_device_allocation_pool** @_ZN6Halide7Runtime8Internal23device_allocation_poolsE, align 8, !tbaa !7
  %6 = icmp eq %struct.halide_device_allocation_pool* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %9, %4
  %8 = phi i32 [ 0, %4 ], [ %16, %9 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal21allocation_pools_lockE) #3
  br label %20

9:                                                ; preds = %4, %9
  %10 = phi %struct.halide_device_allocation_pool* [ %18, %9 ], [ %5, %4 ]
  %11 = phi i32 [ %16, %9 ], [ 0, %4 ]
  %12 = getelementptr inbounds %struct.halide_device_allocation_pool, %struct.halide_device_allocation_pool* %10, i64 0, i32 0
  %13 = load i32 (i8*)*, i32 (i8*)** %12, align 8, !tbaa !9
  %14 = tail call i32 %13(i8* %0) #3
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 %11, i32 %14
  %17 = getelementptr inbounds %struct.halide_device_allocation_pool, %struct.halide_device_allocation_pool* %10, i64 0, i32 1
  %18 = load %struct.halide_device_allocation_pool*, %struct.halide_device_allocation_pool** %17, align 8, !tbaa !7
  %19 = icmp eq %struct.halide_device_allocation_pool* %18, null
  br i1 %19, label %7, label %9, !llvm.loop !11

20:                                               ; preds = %7, %2
  %21 = phi i32 [ 0, %2 ], [ %8, %7 ]
  ret i32 %21
}

; Function Attrs: nounwind willreturn mustprogress
define weak zeroext i1 @halide_can_reuse_device_allocations(i8* %0) local_unnamed_addr #1 {
  %2 = load i8, i8* @_ZN6Halide7Runtime8Internal36halide_reuse_device_allocations_flagE, align 1, !tbaa !3, !range !13
  %3 = icmp ne i8 %2, 0
  ret i1 %3
}

; Function Attrs: nounwind
define weak void @halide_register_device_allocation_pool(%struct.halide_device_allocation_pool* %0) local_unnamed_addr #0 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal21allocation_pools_lockE) #3
  %2 = load %struct.halide_device_allocation_pool*, %struct.halide_device_allocation_pool** @_ZN6Halide7Runtime8Internal23device_allocation_poolsE, align 8, !tbaa !7
  %3 = getelementptr inbounds %struct.halide_device_allocation_pool, %struct.halide_device_allocation_pool* %0, i64 0, i32 1
  store %struct.halide_device_allocation_pool* %2, %struct.halide_device_allocation_pool** %3, align 8, !tbaa !14
  store %struct.halide_device_allocation_pool* %0, %struct.halide_device_allocation_pool** @_ZN6Halide7Runtime8Internal23device_allocation_poolsE, align 8, !tbaa !7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal21allocation_pools_lockE) #3
  ret void
}

declare void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

declare void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"bool", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !8, i64 0}
!10 = !{!"_ZTS29halide_device_allocation_pool", !8, i64 0, !8, i64 8}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i8 0, i8 2}
!14 = !{!10, !8, i64 8}
