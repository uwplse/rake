; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_cache_allocator.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_cache_allocator.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache" = type { i8*, i8, [7 x i8], i64, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* }
%struct.halide_mutex = type { [1 x i64] }

@_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* null, align 8
@_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE = weak global %struct.halide_mutex zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"Hexagon: Out of memory (Cache Pool Allocation Failed)\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Hexagon: Out of memory (HAP_cache_lock failed)\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.10 = private unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_cache_allocator.cpp:122 Assert failed: cache_mem\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Hexagon: HAP_cache_unlock failed on pool free\0A\00", align 1

; Function Attrs: nounwind
define weak i8* @halide_locked_cache_malloc(i8* %0, i64 %1) local_unnamed_addr #0 {
  %3 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 8, !tbaa !3
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  %4 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2, %14
  %6 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ %16, %14 ], [ %3, %2 ]
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %6, i64 0, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !7, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %6, i64 0, i32 3
  %12 = load i64, i64* %11, align 8, !tbaa !12
  %13 = icmp eq i64 %12, %1
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %5
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %6, i64 0, i32 4
  %16 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %15, align 8, !tbaa !13
  %17 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %16, null
  br i1 %17, label %21, label %5, !llvm.loop !14

18:                                               ; preds = %10
  store i8 1, i8* %7, align 8, !tbaa !7
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %6, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !16
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  br label %75

21:                                               ; preds = %14, %2
  %22 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ null, %2 ], [ %6, %14 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  %23 = tail call i8* @malloc(i64 32) #3
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = tail call i8* @malloc(i64 1024) #3
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0)) #3
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #3
  br label %38

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %26, i64 1023
  store i8 0, i8* %31, align 1, !tbaa !17
  %32 = tail call i8* @halide_string_to_string(i8* nonnull %26, i8* nonnull %31, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0)) #3
  %33 = ptrtoint i8* %32 to i64
  %34 = ptrtoint i8* %26 to i64
  %35 = sub i64 1, %34
  %36 = add i64 %35, %33
  %37 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %26, i64 %36) #3
  tail call void @halide_error(i8* %0, i8* nonnull %26) #3
  br label %38

38:                                               ; preds = %30, %28
  tail call void @free(i8* %26) #3
  br label %75

39:                                               ; preds = %21
  %40 = trunc i64 %1 to i32
  %41 = tail call i8* @HAP_cache_lock(i32 %40, i8** null) #3
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  tail call void @free(i8* nonnull %23) #3
  %44 = tail call i8* @malloc(i64 1024) #3
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0)) #3
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #3
  br label %56

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, i8* %44, i64 1023
  store i8 0, i8* %49, align 1, !tbaa !17
  %50 = tail call i8* @halide_string_to_string(i8* nonnull %44, i8* nonnull %49, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0)) #3
  %51 = ptrtoint i8* %50 to i64
  %52 = ptrtoint i8* %44 to i64
  %53 = sub i64 1, %52
  %54 = add i64 %53, %51
  %55 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %44, i64 %54) #3
  tail call void @halide_error(i8* %0, i8* nonnull %44) #3
  br label %56

56:                                               ; preds = %48, %46
  tail call void @free(i8* %44) #3
  br label %75

57:                                               ; preds = %39
  %58 = bitcast i8* %23 to i8**
  store i8* %41, i8** %58, align 8, !tbaa !16
  %59 = getelementptr inbounds i8, i8* %23, i64 16
  %60 = bitcast i8* %59 to i64*
  store i64 %1, i64* %60, align 8, !tbaa !12
  %61 = getelementptr inbounds i8, i8* %23, i64 8
  store i8 1, i8* %61, align 8, !tbaa !7
  %62 = getelementptr inbounds i8, i8* %23, i64 24
  %63 = bitcast i8* %62 to %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"**
  store %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* null, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %63, align 8, !tbaa !13
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  %64 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %22, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %22, i64 0, i32 4
  %67 = bitcast %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %66 to i8**
  br label %71

68:                                               ; preds = %57
  %69 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 8, !tbaa !3
  %70 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %65
  %72 = phi i8** [ %67, %65 ], [ bitcast (%"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE to i8**), %68 ]
  store i8* %23, i8** %72, align 8, !tbaa !3
  br label %73

73:                                               ; preds = %71, %68
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  %74 = load i8*, i8** %58, align 8, !tbaa !16
  br label %75

75:                                               ; preds = %18, %38, %56, %73
  %76 = phi i8* [ null, %38 ], [ %20, %18 ], [ %74, %73 ], [ null, %56 ]
  ret i8* %76
}

; Function Attrs: nounwind
define weak void @halide_locked_cache_free(i8* %0, i8* %1) local_unnamed_addr #0 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.10, i64 0, i64 0)) #3
  tail call void @abort() #3
  br label %5

5:                                                ; preds = %4, %2
  %6 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 8, !tbaa !3
  %7 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5, %15
  %9 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ %17, %15 ], [ %6, %5 ]
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %9, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !tbaa !16
  %12 = icmp eq i8* %11, %1
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %9, i64 0, i32 1
  store i8 0, i8* %14, align 8, !tbaa !7
  br label %19

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %9, i64 0, i32 4
  %17 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %16, align 8, !tbaa !3
  %18 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %17, null
  br i1 %18, label %19, label %8, !llvm.loop !18

19:                                               ; preds = %15, %5, %13
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_hexagon_allocate_l2_pool(i8* %0) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_free_l2_pool(i8* %0) local_unnamed_addr #0 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  %2 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 8, !tbaa !3
  %3 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1, %26
  %5 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ %28, %26 ], [ %2, %1 ]
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %5, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !16
  %8 = icmp eq i8* %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @HAP_cache_unlock(i8* nonnull %7) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %9
  %13 = tail call i8* @malloc(i64 1024) #3
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0)) #3
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #3
  br label %25

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, i8* %13, i64 1023
  store i8 0, i8* %18, align 1, !tbaa !17
  %19 = tail call i8* @halide_string_to_string(i8* nonnull %13, i8* nonnull %18, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0)) #3
  %20 = ptrtoint i8* %19 to i64
  %21 = ptrtoint i8* %13 to i64
  %22 = sub i64 1, %21
  %23 = add i64 %22, %20
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %13, i64 %23) #3
  tail call void @halide_error(i8* %0, i8* nonnull %13) #3
  br label %25

25:                                               ; preds = %17, %15
  tail call void @free(i8* %13) #3
  br label %32

26:                                               ; preds = %9, %4
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %5, i64 0, i32 4
  %28 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %27, align 8, !tbaa !13
  %29 = bitcast %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %5 to i8*
  tail call void @free(i8* nonnull %29) #3
  %30 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %28, null
  br i1 %30, label %31, label %4, !llvm.loop !19

31:                                               ; preds = %26, %1
  store %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* null, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 8, !tbaa !3
  br label %32

32:                                               ; preds = %25, %31
  %33 = phi i32 [ %10, %25 ], [ 0, %31 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  ret i32 %33
}

declare i8* @malloc(i64) local_unnamed_addr #2

declare i8* @HAP_cache_lock(i32, i8**) local_unnamed_addr #2

declare void @free(i8*) local_unnamed_addr #2

declare void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

declare void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare i32 @HAP_cache_unlock(i8*) local_unnamed_addr #2

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSN6Halide7Runtime8Internal7Hexagon19hexagon_local_cacheE", !4, i64 0, !9, i64 8, !10, i64 16, !4, i64 24}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{!8, !10, i64 16}
!13 = !{!8, !4, i64 24}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!8, !4, i64 0}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
