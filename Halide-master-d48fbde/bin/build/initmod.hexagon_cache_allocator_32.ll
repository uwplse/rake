; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_cache_allocator.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_cache_allocator.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache" = type { i8*, i8, i32, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* }
%struct.halide_mutex = type { [1 x i32] }

@_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* null, align 4
@_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE = weak global %struct.halide_mutex zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"Hexagon: Out of memory (Cache Pool Allocation Failed)\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Hexagon: Out of memory (HAP_cache_lock failed)\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.10 = private unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_cache_allocator.cpp:122 Assert failed: cache_mem\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Hexagon: HAP_cache_unlock failed on pool free\0A\00", align 1

; Function Attrs: nounwind
define weak i8* @halide_locked_cache_malloc(i8* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 4, !tbaa !3
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  %4 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2, %14
  %6 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ %16, %14 ], [ %3, %2 ]
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %6, i32 0, i32 1
  %8 = load i8, i8* %7, align 4, !tbaa !7, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %6, i32 0, i32 2
  %12 = load i32, i32* %11, align 4, !tbaa !12
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %5
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %6, i32 0, i32 3
  %16 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %15, align 4, !tbaa !13
  %17 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %16, null
  br i1 %17, label %21, label %5, !llvm.loop !14

18:                                               ; preds = %10
  store i8 1, i8* %7, align 4, !tbaa !7
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %6, i32 0, i32 0
  %20 = load i8*, i8** %19, align 4, !tbaa !16
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  br label %76

21:                                               ; preds = %14, %2
  %22 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ null, %2 ], [ %6, %14 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  %23 = tail call i8* @malloc(i32 16) #3
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = tail call i8* @malloc(i32 1024) #3
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i32 0, i32 0)) #3
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #3
  br label %39

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %26, i32 1023
  store i8 0, i8* %31, align 1, !tbaa !17
  %32 = tail call i8* @halide_string_to_string(i8* nonnull %26, i8* nonnull %31, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i32 0, i32 0)) #3
  %33 = ptrtoint i8* %32 to i32
  %34 = ptrtoint i8* %26 to i32
  %35 = sub i32 1, %34
  %36 = add i32 %35, %33
  %37 = sext i32 %36 to i64
  %38 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %26, i64 %37) #3
  tail call void @halide_error(i8* %0, i8* nonnull %26) #3
  br label %39

39:                                               ; preds = %30, %28
  tail call void @free(i8* %26) #3
  br label %76

40:                                               ; preds = %21
  %41 = tail call i8* @HAP_cache_lock(i32 %1, i8** null) #3
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  tail call void @free(i8* nonnull %23) #3
  %44 = tail call i8* @malloc(i32 1024) #3
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0)) #3
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #3
  br label %57

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, i8* %44, i32 1023
  store i8 0, i8* %49, align 1, !tbaa !17
  %50 = tail call i8* @halide_string_to_string(i8* nonnull %44, i8* nonnull %49, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0)) #3
  %51 = ptrtoint i8* %50 to i32
  %52 = ptrtoint i8* %44 to i32
  %53 = sub i32 1, %52
  %54 = add i32 %53, %51
  %55 = sext i32 %54 to i64
  %56 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %44, i64 %55) #3
  tail call void @halide_error(i8* %0, i8* nonnull %44) #3
  br label %57

57:                                               ; preds = %48, %46
  tail call void @free(i8* %44) #3
  br label %76

58:                                               ; preds = %40
  %59 = bitcast i8* %23 to i8**
  store i8* %41, i8** %59, align 4, !tbaa !16
  %60 = getelementptr inbounds i8, i8* %23, i32 8
  %61 = bitcast i8* %60 to i32*
  store i32 %1, i32* %61, align 4, !tbaa !12
  %62 = getelementptr inbounds i8, i8* %23, i32 4
  store i8 1, i8* %62, align 4, !tbaa !7
  %63 = getelementptr inbounds i8, i8* %23, i32 12
  %64 = bitcast i8* %63 to %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"**
  store %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* null, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %64, align 4, !tbaa !13
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  %65 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %22, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %22, i32 0, i32 3
  %68 = bitcast %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %67 to i8**
  br label %72

69:                                               ; preds = %58
  %70 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 4, !tbaa !3
  %71 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69, %66
  %73 = phi i8** [ %68, %66 ], [ bitcast (%"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE to i8**), %69 ]
  store i8* %23, i8** %73, align 4, !tbaa !3
  br label %74

74:                                               ; preds = %72, %69
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  %75 = load i8*, i8** %59, align 4, !tbaa !16
  br label %76

76:                                               ; preds = %18, %39, %57, %74
  %77 = phi i8* [ null, %39 ], [ %20, %18 ], [ %75, %74 ], [ null, %57 ]
  ret i8* %77
}

; Function Attrs: nounwind
define weak void @halide_locked_cache_free(i8* %0, i8* %1) local_unnamed_addr #0 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.10, i32 0, i32 0)) #3
  tail call void @abort() #3
  br label %5

5:                                                ; preds = %4, %2
  %6 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 4, !tbaa !3
  %7 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5, %15
  %9 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ %17, %15 ], [ %6, %5 ]
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 4, !tbaa !16
  %12 = icmp eq i8* %11, %1
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %9, i32 0, i32 1
  store i8 0, i8* %14, align 4, !tbaa !7
  br label %19

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %9, i32 0, i32 3
  %17 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %16, align 4, !tbaa !3
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
  %2 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 4, !tbaa !3
  %3 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1, %27
  %5 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ %29, %27 ], [ %2, %1 ]
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 4, !tbaa !16
  %8 = icmp eq i8* %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @HAP_cache_unlock(i8* nonnull %7) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = tail call i8* @malloc(i32 1024) #3
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0)) #3
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #3
  br label %26

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, i8* %13, i32 1023
  store i8 0, i8* %18, align 1, !tbaa !17
  %19 = tail call i8* @halide_string_to_string(i8* nonnull %13, i8* nonnull %18, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0)) #3
  %20 = ptrtoint i8* %19 to i32
  %21 = ptrtoint i8* %13 to i32
  %22 = sub i32 1, %21
  %23 = add i32 %22, %20
  %24 = sext i32 %23 to i64
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %13, i64 %24) #3
  tail call void @halide_error(i8* %0, i8* nonnull %13) #3
  br label %26

26:                                               ; preds = %17, %15
  tail call void @free(i8* %13) #3
  br label %33

27:                                               ; preds = %9, %4
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %5, i32 0, i32 3
  %29 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %28, align 4, !tbaa !13
  %30 = bitcast %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %5 to i8*
  tail call void @free(i8* nonnull %30) #3
  %31 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %29, null
  br i1 %31, label %32, label %4, !llvm.loop !19

32:                                               ; preds = %27, %1
  store %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* null, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 4, !tbaa !3
  br label %33

33:                                               ; preds = %26, %32
  %34 = phi i32 [ %10, %26 ], [ 0, %32 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #3
  ret i32 %34
}

declare i8* @malloc(i32) local_unnamed_addr #2

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
!7 = !{!8, !9, i64 4}
!8 = !{!"_ZTSN6Halide7Runtime8Internal7Hexagon19hexagon_local_cacheE", !4, i64 0, !9, i64 4, !10, i64 8, !4, i64 12}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{!8, !10, i64 8}
!13 = !{!8, !4, i64 12}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!8, !4, i64 0}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
