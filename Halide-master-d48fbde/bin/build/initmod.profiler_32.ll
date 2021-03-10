; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.halide_profiler_state = type { %struct.halide_mutex, i32, i32, i32, i32, %struct.halide_profiler_pipeline_stats*, void (i32*, i32*)*, %struct.halide_thread* }
%struct.halide_mutex = type { [1 x i32] }
%struct.halide_profiler_pipeline_stats = type { i64, i64, i64, i64, i64, i64, i8*, %struct.halide_profiler_func_stats*, i8*, i32, i32, i32, i32, i32 }
%struct.halide_profiler_func_stats = type { i64, i64, i64, i64, i64, i64, i64, i8*, i32 }
%struct.halide_thread = type opaque
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>

@_ZZ25halide_profiler_get_stateE1s = internal global %struct.halide_profiler_state { %struct.halide_mutex zeroinitializer, i32 1, i32 0, i32 0, i32 0, %struct.halide_profiler_pipeline_stats* null, void (i32*, i32*)* null, %struct.halide_thread* null }, align 4
@.str = private unnamed_addr constant [114 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp:207 Assert failed: p_stats != nullptr\0A\00", align 1
@.str.1 = private unnamed_addr constant [114 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp:234 Assert failed: p_stats != nullptr\0A\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp:235 Assert failed: func_id >= 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [124 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp:236 Assert failed: func_id < p_stats->num_funcs\0A\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp:270 Assert failed: p_stats != nullptr\0A\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp:271 Assert failed: func_id >= 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [124 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp:272 Assert failed: func_id < p_stats->num_funcs\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c" total time: \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" ms\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"  samples: \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"  runs: \00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"  time/run: \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" ms\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c" average threads used: \00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c" heap allocations: \00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"  peak heap usage: \00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c" bytes\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%)\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"threads: \00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c" peak: \00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c" num: \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c" avg: \00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c" stack: \00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_profiler_shutdown, i8* null }]

; Function Attrs: nounwind willreturn mustprogress
define weak %struct.halide_profiler_state* @halide_profiler_get_state() local_unnamed_addr #0 {
  ret %struct.halide_profiler_state* @_ZZ25halide_profiler_get_stateE1s
}

; Function Attrs: nounwind mustprogress
define weak %struct.halide_profiler_pipeline_stats* @_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy(i8* %0, i32 %1, i64* %2) local_unnamed_addr #1 {
  %4 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 5
  %6 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %5, align 4, !tbaa !3
  %7 = icmp eq %struct.halide_profiler_pipeline_stats* %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %3, %17
  %9 = phi %struct.halide_profiler_pipeline_stats* [ %20, %17 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 6
  %11 = load i8*, i8** %10, align 8, !tbaa !7
  %12 = icmp eq i8* %11, %0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 9
  %15 = load i32, i32* %14, align 4, !tbaa !11
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %85, label %17

17:                                               ; preds = %8, %13
  %18 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 8
  %19 = bitcast i8** %18 to %struct.halide_profiler_pipeline_stats**
  %20 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %19, align 4, !tbaa !3
  %21 = icmp eq %struct.halide_profiler_pipeline_stats* %20, null
  br i1 %21, label %22, label %8, !llvm.loop !12

22:                                               ; preds = %17, %3
  %23 = tail call i8* @malloc(i32 80) #6
  %24 = bitcast i8* %23 to %struct.halide_profiler_pipeline_stats*
  %25 = icmp eq i8* %23, null
  br i1 %25, label %85, label %26

26:                                               ; preds = %22
  %27 = bitcast %struct.halide_profiler_pipeline_stats** %5 to i8**
  %28 = load i8*, i8** %27, align 4, !tbaa !14
  %29 = getelementptr inbounds i8, i8* %23, i32 56
  %30 = bitcast i8* %29 to i8**
  store i8* %28, i8** %30, align 8, !tbaa !17
  %31 = getelementptr inbounds i8, i8* %23, i32 48
  %32 = bitcast i8* %31 to i8**
  store i8* %0, i8** %32, align 8, !tbaa !7
  %33 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 2
  %34 = load i32, i32* %33, align 4, !tbaa !18
  %35 = getelementptr inbounds i8, i8* %23, i32 64
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 8, !tbaa !19
  %37 = getelementptr inbounds i8, i8* %23, i32 60
  %38 = bitcast i8* %37 to i32*
  store i32 %1, i32* %38, align 4, !tbaa !11
  %39 = getelementptr inbounds i8, i8* %23, i32 68
  %40 = bitcast i8* %39 to i32*
  store i32 0, i32* %40, align 4, !tbaa !20
  %41 = bitcast i8* %23 to i64*
  store i64 0, i64* %41, align 8, !tbaa !21
  %42 = getelementptr inbounds i8, i8* %23, i32 72
  %43 = bitcast i8* %42 to i32*
  store i32 0, i32* %43, align 8, !tbaa !22
  %44 = getelementptr inbounds i8, i8* %23, i32 8
  %45 = bitcast i8* %44 to i64*
  store i64 0, i64* %45, align 8, !tbaa !23
  %46 = getelementptr inbounds i8, i8* %23, i32 16
  %47 = bitcast i8* %46 to i64*
  store i64 0, i64* %47, align 8, !tbaa !24
  %48 = getelementptr inbounds i8, i8* %23, i32 24
  %49 = bitcast i8* %48 to i64*
  store i64 0, i64* %49, align 8, !tbaa !25
  %50 = getelementptr inbounds i8, i8* %23, i32 76
  %51 = bitcast i8* %50 to i32*
  store i32 0, i32* %51, align 4, !tbaa !26
  %52 = getelementptr inbounds i8, i8* %23, i32 32
  %53 = bitcast i8* %52 to i64*
  store i64 0, i64* %53, align 8, !tbaa !27
  %54 = getelementptr inbounds i8, i8* %23, i32 40
  %55 = bitcast i8* %54 to i64*
  store i64 0, i64* %55, align 8, !tbaa !28
  %56 = shl i32 %1, 6
  %57 = tail call i8* @malloc(i32 %56) #6
  %58 = getelementptr inbounds i8, i8* %23, i32 52
  %59 = bitcast i8* %58 to i8**
  store i8* %57, i8** %59, align 4, !tbaa !29
  %60 = icmp eq i8* %57, null
  %61 = bitcast i8* %57 to %struct.halide_profiler_func_stats*
  br i1 %60, label %64, label %62

62:                                               ; preds = %26
  %63 = icmp sgt i32 %1, 0
  br i1 %63, label %68, label %65

64:                                               ; preds = %26
  tail call void @free(i8* nonnull %23) #6
  br label %85

65:                                               ; preds = %68, %62
  %66 = load i32, i32* %33, align 4, !tbaa !18
  %67 = add nsw i32 %66, %1
  store i32 %67, i32* %33, align 4, !tbaa !18
  store i8* %23, i8** %27, align 4, !tbaa !14
  br label %85

68:                                               ; preds = %62, %68
  %69 = phi i32 [ %83, %68 ], [ 0, %62 ]
  %70 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 0
  store i64 0, i64* %70, align 8, !tbaa !30
  %71 = getelementptr inbounds i64, i64* %2, i32 %69
  %72 = load i64, i64* %71, align 8, !tbaa !32
  %73 = trunc i64 %72 to i32
  %74 = inttoptr i32 %73 to i8*
  %75 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 7
  store i8* %74, i8** %75, align 8, !tbaa !33
  %76 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 1
  store i64 0, i64* %76, align 8, !tbaa !34
  %77 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 2
  store i64 0, i64* %77, align 8, !tbaa !35
  %78 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 3
  store i64 0, i64* %78, align 8, !tbaa !36
  %79 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 8
  store i32 0, i32* %79, align 4, !tbaa !37
  %80 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 4
  store i64 0, i64* %80, align 8, !tbaa !38
  %81 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 5
  store i64 0, i64* %81, align 8, !tbaa !39
  %82 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 6
  store i64 0, i64* %82, align 8, !tbaa !40
  %83 = add nuw nsw i32 %69, 1
  %84 = icmp slt i32 %83, %1
  br i1 %84, label %68, label %65, !llvm.loop !41

85:                                               ; preds = %13, %64, %65, %22
  %86 = phi %struct.halide_profiler_pipeline_stats* [ %24, %65 ], [ null, %64 ], [ null, %22 ], [ %9, %13 ]
  ret %struct.halide_profiler_pipeline_stats* %86
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @malloc(i32) local_unnamed_addr #3

declare void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi(%struct.halide_profiler_state* %0, i32 %1, i64 %2, i32 %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i32 0, i32 5
  %6 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %5, align 4, !tbaa !3
  %7 = icmp eq %struct.halide_profiler_pipeline_stats* %6, null
  br i1 %7, label %59, label %8

8:                                                ; preds = %4, %54
  %9 = phi %struct.halide_profiler_pipeline_stats* [ %57, %54 ], [ %6, %4 ]
  %10 = phi %struct.halide_profiler_pipeline_stats* [ %9, %54 ], [ null, %4 ]
  %11 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 10
  %12 = load i32, i32* %11, align 8, !tbaa !19
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %54, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 9
  %16 = load i32, i32* %15, align 4, !tbaa !11
  %17 = add nsw i32 %16, %12
  %18 = icmp sgt i32 %17, %1
  br i1 %18, label %19, label %54

19:                                               ; preds = %14
  %20 = icmp eq %struct.halide_profiler_pipeline_stats* %10, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 8
  %23 = load i8*, i8** %22, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %10, i32 0, i32 8
  store i8* %23, i8** %24, align 8, !tbaa !17
  %25 = bitcast i8** %22 to %struct.halide_profiler_pipeline_stats**
  store %struct.halide_profiler_pipeline_stats* %6, %struct.halide_profiler_pipeline_stats** %25, align 8, !tbaa !17
  store %struct.halide_profiler_pipeline_stats* %9, %struct.halide_profiler_pipeline_stats** %5, align 4, !tbaa !14
  br label %26

26:                                               ; preds = %21, %19
  %27 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 7
  %28 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %27, align 4, !tbaa !29
  %29 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %28, i32 %1
  %30 = sub i32 0, %12
  %31 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %29, i32 %30
  %32 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !30
  %34 = add i64 %33, %2
  store i64 %34, i64* %32, align 8, !tbaa !30
  %35 = sext i32 %3 to i64
  %36 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %31, i32 0, i32 5
  %37 = load i64, i64* %36, align 8, !tbaa !39
  %38 = add i64 %37, %35
  store i64 %38, i64* %36, align 8, !tbaa !39
  %39 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %31, i32 0, i32 6
  %40 = load i64, i64* %39, align 8, !tbaa !40
  %41 = add i64 %40, 1
  store i64 %41, i64* %39, align 8, !tbaa !40
  %42 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 0
  %43 = load i64, i64* %42, align 8, !tbaa !21
  %44 = add i64 %43, %2
  store i64 %44, i64* %42, align 8, !tbaa !21
  %45 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 12
  %46 = load i32, i32* %45, align 8, !tbaa !22
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 4
  %49 = load i64, i64* %48, align 8, !tbaa !27
  %50 = add i64 %49, %35
  store i64 %50, i64* %48, align 8, !tbaa !27
  %51 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 5
  %52 = load i64, i64* %51, align 8, !tbaa !28
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8, !tbaa !28
  ret void

54:                                               ; preds = %14, %8
  %55 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 8
  %56 = bitcast i8** %55 to %struct.halide_profiler_pipeline_stats**
  %57 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %56, align 4, !tbaa !3
  %58 = icmp eq %struct.halide_profiler_pipeline_stats* %57, null
  br i1 %58, label %59, label %8, !llvm.loop !42

59:                                               ; preds = %54, %4
  ret void
}

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv(i8* %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* %5) #6
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 3
  %7 = load i32, i32* %6, align 4, !tbaa !43
  %8 = icmp eq i32 %7, -2
  br i1 %8, label %39, label %9

9:                                                ; preds = %1
  %10 = bitcast i32* %2 to i8*
  %11 = bitcast i32* %3 to i8*
  %12 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 6
  %13 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 4
  %14 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 1
  br label %18

15:                                               ; preds = %28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #7
  %16 = load i32, i32* %6, align 4, !tbaa !43
  %17 = icmp eq i32 %16, -2
  br i1 %17, label %39, label %18, !llvm.loop !44

18:                                               ; preds = %9, %15
  %19 = call i64 @halide_current_time_ns(i8* null) #6
  br label %20

20:                                               ; preds = %37, %18
  %21 = phi i64 [ %19, %18 ], [ %29, %37 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #7
  %22 = load void (i32*, i32*)*, void (i32*, i32*)** %12, align 4, !tbaa !45
  %23 = icmp eq void (i32*, i32*)* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call void %22(i32* nonnull %2, i32* nonnull %3) #6
  br label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4, !tbaa !43
  store i32 %26, i32* %2, align 4, !tbaa !46
  %27 = load i32, i32* %13, align 4, !tbaa !47
  store i32 %27, i32* %3, align 4, !tbaa !46
  br label %28

28:                                               ; preds = %25, %24
  %29 = call i64 @halide_current_time_ns(i8* null) #6
  %30 = load i32, i32* %2, align 4, !tbaa !46
  %31 = icmp eq i32 %30, -2
  br i1 %31, label %15, label %32

32:                                               ; preds = %28
  %33 = icmp sgt i32 %30, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = sub i64 %29, %21
  %36 = load i32, i32* %3, align 4, !tbaa !46
  call void @_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi(%struct.halide_profiler_state* nonnull %4, i32 %30, i64 %35, i32 %36) #5
  br label %37

37:                                               ; preds = %34, %32
  %38 = load i32, i32* %14, align 4, !tbaa !48
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %5) #6
  call void @halide_sleep_ms(i8* null, i32 %38) #6
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #7
  br label %20

39:                                               ; preds = %15, %1
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %5) #6
  ret void
}

declare void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #3

declare extern_weak i64 @halide_current_time_ns(i8*) local_unnamed_addr #3

declare void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #3

declare extern_weak void @halide_sleep_ms(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
define weak %struct.halide_profiler_pipeline_stats* @halide_profiler_get_pipeline_state(i8* %0) local_unnamed_addr #4 {
  %2 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %3 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i32 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* %3) #6
  %4 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i32 0, i32 5
  %5 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %4, align 4, !tbaa !3
  %6 = icmp eq %struct.halide_profiler_pipeline_stats* %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1, %12
  %8 = phi %struct.halide_profiler_pipeline_stats* [ %15, %12 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %8, i32 0, i32 6
  %10 = load i8*, i8** %9, align 8, !tbaa !7
  %11 = icmp eq i8* %10, %0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %8, i32 0, i32 8
  %14 = bitcast i8** %13 to %struct.halide_profiler_pipeline_stats**
  %15 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %14, align 4, !tbaa !3
  %16 = icmp eq %struct.halide_profiler_pipeline_stats* %15, null
  br i1 %16, label %17, label %7, !llvm.loop !49

17:                                               ; preds = %12, %7, %1
  %18 = phi %struct.halide_profiler_pipeline_stats* [ null, %1 ], [ %8, %7 ], [ null, %12 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %3) #6
  ret %struct.halide_profiler_pipeline_stats* %18
}

; Function Attrs: nounwind
define weak i32 @halide_profiler_pipeline_start(i8* %0, i8* %1, i32 %2, i64* %3) local_unnamed_addr #4 {
  %5 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %5, i32 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* %6) #6
  %7 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %5, i32 0, i32 7
  %8 = load %struct.halide_thread*, %struct.halide_thread** %7, align 4, !tbaa !50
  %9 = icmp eq %struct.halide_thread* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = tail call i32 @halide_start_clock(i8* %0) #6
  %12 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv, i8* null) #6
  store %struct.halide_thread* %12, %struct.halide_thread** %7, align 4, !tbaa !50
  br label %13

13:                                               ; preds = %10, %4
  %14 = tail call %struct.halide_profiler_pipeline_stats* @_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy(i8* %1, i32 %2, i64* %3) #5
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 @halide_error_out_of_memory(i8* %0) #6
  br label %24

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %14, i32 0, i32 11
  %20 = load i32, i32* %19, align 4, !tbaa !20
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4, !tbaa !20
  %22 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %14, i32 0, i32 10
  %23 = load i32, i32* %22, align 8, !tbaa !19
  br label %24

24:                                               ; preds = %18, %16
  %25 = phi i32 [ %23, %18 ], [ %17, %16 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %6) #6
  ret i32 %25
}

declare extern_weak i32 @halide_start_clock(i8*) local_unnamed_addr #3

declare %struct.halide_thread* @halide_spawn_thread(void (i8*)*, i8*) local_unnamed_addr #3

declare i32 @halide_error_out_of_memory(i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak void @halide_profiler_stack_peak_update(i8* %0, i8* %1, i64* %2) local_unnamed_addr #1 {
  %4 = icmp eq i8* %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %6

6:                                                ; preds = %5, %3
  %7 = getelementptr inbounds i8, i8* %1, i32 60
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !11
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %1, i32 52
  %13 = bitcast i8* %12 to %struct.halide_profiler_func_stats**
  br label %15

14:                                               ; preds = %34, %6
  ret void

15:                                               ; preds = %11, %34
  %16 = phi i32 [ %9, %11 ], [ %35, %34 ]
  %17 = phi i32 [ 0, %11 ], [ %36, %34 ]
  %18 = getelementptr inbounds i64, i64* %2, i32 %17
  %19 = load i64, i64* %18, align 8, !tbaa !32
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %13, align 4, !tbaa !29
  %23 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %22, i32 %17, i32 4
  %24 = load i64, i64* %23, align 8, !tbaa !32
  br label %25

25:                                               ; preds = %28, %21
  %26 = phi i64 [ %24, %21 ], [ %30, %28 ]
  %27 = icmp ult i64 %26, %19
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = cmpxchg i64* %23, i64 %26, i64 %19 seq_cst seq_cst
  %30 = extractvalue { i64, i1 } %29, 0
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %25, !llvm.loop !51

32:                                               ; preds = %25, %28
  %33 = load i32, i32* %8, align 4, !tbaa !11
  br label %34

34:                                               ; preds = %32, %15
  %35 = phi i32 [ %33, %32 ], [ %16, %15 ]
  %36 = add nuw nsw i32 %17, 1
  %37 = icmp slt i32 %36, %35
  br i1 %37, label %15, label %14, !llvm.loop !52
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #3

declare void @abort() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak void @halide_profiler_memory_allocate(i8* %0, i8* %1, i32 %2, i64 %3) local_unnamed_addr #1 {
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %59, label %6

6:                                                ; preds = %4
  %7 = icmp eq i8* %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %9

9:                                                ; preds = %6, %8
  %10 = icmp sgt i32 %2, -1
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %12

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds i8, i8* %1, i32 60
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !11
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %18

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds i8, i8* %1, i32 52
  %20 = bitcast i8* %19 to %struct.halide_profiler_func_stats**
  %21 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %20, align 4, !tbaa !29
  %22 = getelementptr inbounds i8, i8* %1, i32 76
  %23 = bitcast i8* %22 to i32*
  %24 = atomicrmw add i32* %23, i32 1 seq_cst
  %25 = getelementptr inbounds i8, i8* %1, i32 24
  %26 = bitcast i8* %25 to i64*
  %27 = atomicrmw add i64* %26, i64 %3 seq_cst
  %28 = getelementptr inbounds i8, i8* %1, i32 8
  %29 = bitcast i8* %28 to i64*
  %30 = atomicrmw add i64* %29, i64 %3 seq_cst
  %31 = add i64 %30, %3
  %32 = getelementptr inbounds i8, i8* %1, i32 16
  %33 = bitcast i8* %32 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !32
  br label %35

35:                                               ; preds = %38, %18
  %36 = phi i64 [ %34, %18 ], [ %40, %38 ]
  %37 = icmp ult i64 %36, %31
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = cmpxchg i64* %33, i64 %36, i64 %31 seq_cst seq_cst
  %40 = extractvalue { i64, i1 } %39, 0
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %42, label %35, !llvm.loop !51

42:                                               ; preds = %35, %38
  %43 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i32 %2, i32 8
  %44 = atomicrmw add i32* %43, i32 1 seq_cst
  %45 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i32 %2, i32 3
  %46 = atomicrmw add i64* %45, i64 %3 seq_cst
  %47 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i32 %2, i32 1
  %48 = atomicrmw add i64* %47, i64 %3 seq_cst
  %49 = add i64 %48, %3
  %50 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i32 %2, i32 2
  %51 = load i64, i64* %50, align 8, !tbaa !32
  br label %52

52:                                               ; preds = %55, %42
  %53 = phi i64 [ %51, %42 ], [ %57, %55 ]
  %54 = icmp ult i64 %53, %49
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = cmpxchg i64* %50, i64 %53, i64 %49 seq_cst seq_cst
  %57 = extractvalue { i64, i1 } %56, 0
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %52, !llvm.loop !51

59:                                               ; preds = %55, %52, %4
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @halide_profiler_memory_free(i8* %0, i8* %1, i32 %2, i64 %3) local_unnamed_addr #1 {
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %4
  %7 = icmp eq i8* %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %9

9:                                                ; preds = %6, %8
  %10 = icmp sgt i32 %2, -1
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %12

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds i8, i8* %1, i32 60
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !11
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.6, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %18

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds i8, i8* %1, i32 52
  %20 = bitcast i8* %19 to %struct.halide_profiler_func_stats**
  %21 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %20, align 4, !tbaa !29
  %22 = getelementptr inbounds i8, i8* %1, i32 8
  %23 = bitcast i8* %22 to i64*
  %24 = atomicrmw sub i64* %23, i64 %3 seq_cst
  %25 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i32 %2, i32 1
  %26 = atomicrmw sub i64* %25, i64 %3 seq_cst
  br label %27

27:                                               ; preds = %4, %18
  ret void
}

; Function Attrs: nounwind
define weak void @halide_profiler_report_unlocked(i8* %0, %struct.halide_profiler_state* %1) local_unnamed_addr #4 {
  %3 = alloca [1024 x i8], align 1
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %5) #7
  %6 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %6) #7
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 3
  store i8* %0, i8** %7, align 4, !tbaa !53
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 4
  store i8 0, i8* %8, align 4, !tbaa !56
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 0
  store i8* %5, i8** %9, align 4
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 1
  store i8* %5, i8** %10, align 4, !tbaa !57
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i32 0, i32 1023
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 2
  store i8* %11, i8** %12, align 4, !tbaa !58
  store i8 0, i8* %11, align 1, !tbaa !59
  %13 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i32 0, i32 5
  %14 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %13, align 4, !tbaa !3
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null
  br i1 %15, label %21, label %40

16:                                               ; preds = %429
  %17 = load i8*, i8** %9, align 4, !tbaa !60
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 4, !tbaa !53
  call void @halide_error(i8* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0)) #6
  br label %31

21:                                               ; preds = %2, %16
  %22 = phi i8* [ %17, %16 ], [ %5, %2 ]
  %23 = load i8*, i8** %10, align 4, !tbaa !57
  %24 = load i8*, i8** %7, align 4, !tbaa !53
  %25 = ptrtoint i8* %23 to i32
  %26 = ptrtoint i8* %22 to i32
  %27 = sub i32 1, %26
  %28 = add i32 %27, %25
  %29 = sext i32 %28 to i64
  %30 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %24, i8* nonnull %22, i64 %29) #6
  br label %31

31:                                               ; preds = %21, %19
  %32 = load i8, i8* %8, align 4, !tbaa !56, !range !61
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 4, !tbaa !60
  %36 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 5, i32 0
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void @free(i8* %35) #6
  br label %39

39:                                               ; preds = %31, %34, %38
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %5) #7
  ret void

40:                                               ; preds = %2, %429
  %41 = phi %struct.halide_profiler_pipeline_stats* [ %432, %429 ], [ %14, %2 ]
  %42 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8, !tbaa !21
  %44 = uitofp i64 %43 to float
  %45 = fdiv float %44, 1.000000e+06
  %46 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 11
  %47 = load i32, i32* %46, align 4, !tbaa !20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %429, label %49

49:                                               ; preds = %40
  %50 = load i8*, i8** %9, align 4, !tbaa !60
  store i8* %50, i8** %10, align 4, !tbaa !57
  %51 = icmp eq i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i8 0, i8* %50, align 1, !tbaa !59
  br label %53

53:                                               ; preds = %49, %52
  %54 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 13
  %55 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 4
  %56 = load i64, i64* %55, align 8, !tbaa !27
  %57 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 5
  %58 = load i64, i64* %57, align 8, !tbaa !28
  %59 = icmp eq i64 %56, %58
  %60 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 6
  %61 = load i8*, i8** %60, align 8, !tbaa !7
  %62 = icmp eq i8* %61, null
  %63 = load i8*, i8** %10, align 4, !tbaa !57
  %64 = load i8*, i8** %12, align 4, !tbaa !58
  br i1 %62, label %65, label %67

65:                                               ; preds = %53
  %66 = call i8* @halide_string_to_string(i8* %63, i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0)) #6
  br label %69

67:                                               ; preds = %53
  %68 = call i8* @halide_string_to_string(i8* %63, i8* %64, i8* nonnull %61) #6
  br label %69

69:                                               ; preds = %65, %67
  %70 = phi i8* [ %68, %67 ], [ %66, %65 ]
  store i8* %70, i8** %10, align 4, !tbaa !57
  %71 = load i8*, i8** %12, align 4, !tbaa !58
  %72 = call i8* @halide_string_to_string(i8* %70, i8* %71, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #6
  store i8* %72, i8** %10, align 4, !tbaa !57
  %73 = load i8*, i8** %12, align 4, !tbaa !58
  %74 = call i8* @halide_string_to_string(i8* %72, i8* %73, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)) #6
  store i8* %74, i8** %10, align 4, !tbaa !57
  %75 = load i8*, i8** %12, align 4, !tbaa !58
  %76 = fpext float %45 to double
  %77 = call i8* @halide_double_to_string(i8* %74, i8* %75, double %76, i32 0) #6
  store i8* %77, i8** %10, align 4, !tbaa !57
  %78 = load i8*, i8** %12, align 4, !tbaa !58
  %79 = call i8* @halide_string_to_string(i8* %77, i8* %78, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)) #6
  store i8* %79, i8** %10, align 4, !tbaa !57
  %80 = load i8*, i8** %12, align 4, !tbaa !58
  %81 = call i8* @halide_string_to_string(i8* %79, i8* %80, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)) #6
  store i8* %81, i8** %10, align 4, !tbaa !57
  %82 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 12
  %83 = load i32, i32* %82, align 8, !tbaa !22
  %84 = load i8*, i8** %12, align 4, !tbaa !58
  %85 = sext i32 %83 to i64
  %86 = call i8* @halide_int64_to_string(i8* %81, i8* %84, i64 %85, i32 1) #6
  store i8* %86, i8** %10, align 4, !tbaa !57
  %87 = load i8*, i8** %12, align 4, !tbaa !58
  %88 = call i8* @halide_string_to_string(i8* %86, i8* %87, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #6
  store i8* %88, i8** %10, align 4, !tbaa !57
  %89 = load i32, i32* %46, align 4, !tbaa !20
  %90 = load i8*, i8** %12, align 4, !tbaa !58
  %91 = sext i32 %89 to i64
  %92 = call i8* @halide_int64_to_string(i8* %88, i8* %90, i64 %91, i32 1) #6
  store i8* %92, i8** %10, align 4, !tbaa !57
  %93 = load i8*, i8** %12, align 4, !tbaa !58
  %94 = call i8* @halide_string_to_string(i8* %92, i8* %93, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)) #6
  store i8* %94, i8** %10, align 4, !tbaa !57
  %95 = load i32, i32* %46, align 4, !tbaa !20
  %96 = sitofp i32 %95 to float
  %97 = fdiv float %45, %96
  %98 = load i8*, i8** %12, align 4, !tbaa !58
  %99 = fpext float %97 to double
  %100 = call i8* @halide_double_to_string(i8* %94, i8* %98, double %99, i32 0) #6
  store i8* %100, i8** %10, align 4, !tbaa !57
  %101 = load i8*, i8** %12, align 4, !tbaa !58
  %102 = call i8* @halide_string_to_string(i8* %100, i8* %101, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #6
  store i8* %102, i8** %10, align 4, !tbaa !57
  br i1 %59, label %116, label %103

103:                                              ; preds = %69
  %104 = uitofp i64 %56 to double
  %105 = uitofp i64 %58 to double
  %106 = fadd double %105, 1.000000e-10
  %107 = fdiv double %104, %106
  %108 = fptrunc double %107 to float
  %109 = load i8*, i8** %12, align 4, !tbaa !58
  %110 = call i8* @halide_string_to_string(i8* %102, i8* %109, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0)) #6
  store i8* %110, i8** %10, align 4, !tbaa !57
  %111 = load i8*, i8** %12, align 4, !tbaa !58
  %112 = fpext float %108 to double
  %113 = call i8* @halide_double_to_string(i8* %110, i8* %111, double %112, i32 0) #6
  store i8* %113, i8** %10, align 4, !tbaa !57
  %114 = load i8*, i8** %12, align 4, !tbaa !58
  %115 = call i8* @halide_string_to_string(i8* %113, i8* %114, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #6
  store i8* %115, i8** %10, align 4, !tbaa !57
  br label %116

116:                                              ; preds = %103, %69
  %117 = phi i8* [ %115, %103 ], [ %102, %69 ]
  %118 = load i8*, i8** %12, align 4, !tbaa !58
  %119 = call i8* @halide_string_to_string(i8* %117, i8* %118, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #6
  store i8* %119, i8** %10, align 4, !tbaa !57
  %120 = load i32, i32* %54, align 4, !tbaa !26
  %121 = load i8*, i8** %12, align 4, !tbaa !58
  %122 = sext i32 %120 to i64
  %123 = call i8* @halide_int64_to_string(i8* %119, i8* %121, i64 %122, i32 1) #6
  store i8* %123, i8** %10, align 4, !tbaa !57
  %124 = load i8*, i8** %12, align 4, !tbaa !58
  %125 = call i8* @halide_string_to_string(i8* %123, i8* %124, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0)) #6
  store i8* %125, i8** %10, align 4, !tbaa !57
  %126 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 2
  %127 = load i64, i64* %126, align 8, !tbaa !24
  %128 = load i8*, i8** %12, align 4, !tbaa !58
  %129 = call i8* @halide_uint64_to_string(i8* %125, i8* %128, i64 %127, i32 1) #6
  store i8* %129, i8** %10, align 4, !tbaa !57
  %130 = load i8*, i8** %12, align 4, !tbaa !58
  %131 = call i8* @halide_string_to_string(i8* %129, i8* %130, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)) #6
  store i8* %131, i8** %10, align 4, !tbaa !57
  %132 = load i8*, i8** %9, align 4, !tbaa !60
  %133 = icmp eq i8* %132, null
  br i1 %133, label %143, label %134

134:                                              ; preds = %116
  %135 = load i8*, i8** %7, align 4, !tbaa !53
  %136 = ptrtoint i8* %131 to i32
  %137 = ptrtoint i8* %132 to i32
  %138 = add i32 %136, 1
  %139 = sub i32 %138, %137
  %140 = sext i32 %139 to i64
  %141 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %135, i8* nonnull %132, i64 %140) #6
  %142 = load i8*, i8** %9, align 4, !tbaa !60
  br label %143

143:                                              ; preds = %116, %134
  %144 = phi i8* [ %142, %134 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0), %116 ]
  call void @halide_print(i8* %0, i8* %144) #6
  %145 = load i64, i64* %42, align 8, !tbaa !21
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 3
  %149 = load i64, i64* %148, align 8, !tbaa !25
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 9
  %153 = load i32, i32* %152, align 4, !tbaa !11
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %429

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 7
  %157 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %156, align 4, !tbaa !29
  br label %160

158:                                              ; preds = %160
  %159 = icmp slt i32 %165, %153
  br i1 %159, label %160, label %429, !llvm.loop !62

160:                                              ; preds = %155, %158
  %161 = phi i32 [ 0, %155 ], [ %165, %158 ]
  %162 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %157, i32 %161, i32 4
  %163 = load i64, i64* %162, align 8, !tbaa !38
  %164 = icmp eq i64 %163, 0
  %165 = add nuw nsw i32 %161, 1
  br i1 %164, label %158, label %166

166:                                              ; preds = %160, %143, %147
  %167 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 9
  %168 = load i32, i32* %167, align 4, !tbaa !11
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %429

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 7
  br label %172

172:                                              ; preds = %170, %425
  %173 = phi i32 [ 0, %170 ], [ %426, %425 ]
  %174 = load i8*, i8** %9, align 4, !tbaa !60
  store i8* %174, i8** %10, align 4, !tbaa !57
  %175 = icmp eq i8* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  store i8 0, i8* %174, align 1, !tbaa !59
  br label %177

177:                                              ; preds = %172, %176
  %178 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %171, align 4, !tbaa !29
  %179 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173
  %180 = icmp eq i32 %173, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %179, i32 0, i32 0
  %183 = load i64, i64* %182, align 8, !tbaa !30
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %425, label %185

185:                                              ; preds = %181, %177
  %186 = load i8*, i8** %10, align 4, !tbaa !57
  %187 = load i8*, i8** %12, align 4, !tbaa !58
  %188 = call i8* @halide_string_to_string(i8* %186, i8* %187, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0)) #6
  store i8* %188, i8** %10, align 4, !tbaa !57
  %189 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 7
  %190 = load i8*, i8** %189, align 8, !tbaa !33
  %191 = icmp eq i8* %190, null
  %192 = load i8*, i8** %12, align 4, !tbaa !58
  br i1 %191, label %193, label %195

193:                                              ; preds = %185
  %194 = call i8* @halide_string_to_string(i8* %188, i8* %192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0)) #6
  br label %197

195:                                              ; preds = %185
  %196 = call i8* @halide_string_to_string(i8* %188, i8* %192, i8* nonnull %190) #6
  br label %197

197:                                              ; preds = %193, %195
  %198 = phi i8* [ %196, %195 ], [ %194, %193 ]
  store i8* %198, i8** %10, align 4, !tbaa !57
  %199 = load i8*, i8** %12, align 4, !tbaa !58
  %200 = call i8* @halide_string_to_string(i8* %198, i8* %199, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)) #6
  store i8* %200, i8** %10, align 4, !tbaa !57
  %201 = load i8*, i8** %9, align 4, !tbaa !60
  %202 = ptrtoint i8* %200 to i32
  %203 = ptrtoint i8* %201 to i32
  %204 = sub i32 %202, %203
  %205 = icmp ult i32 %204, 25
  br i1 %205, label %206, label %215

206:                                              ; preds = %197, %206
  %207 = phi i8* [ %209, %206 ], [ %200, %197 ]
  %208 = load i8*, i8** %12, align 4, !tbaa !58
  %209 = call i8* @halide_string_to_string(i8* %207, i8* %208, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #6
  store i8* %209, i8** %10, align 4, !tbaa !57
  %210 = load i8*, i8** %9, align 4, !tbaa !60
  %211 = ptrtoint i8* %209 to i32
  %212 = ptrtoint i8* %210 to i32
  %213 = sub i32 %211, %212
  %214 = icmp ult i32 %213, 25
  br i1 %214, label %206, label %215, !llvm.loop !63

215:                                              ; preds = %206, %197
  %216 = phi i8* [ %200, %197 ], [ %209, %206 ]
  %217 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %179, i32 0, i32 0
  %218 = load i64, i64* %217, align 8, !tbaa !30
  %219 = uitofp i64 %218 to float
  %220 = load i32, i32* %46, align 4, !tbaa !20
  %221 = sitofp i32 %220 to float
  %222 = fmul float %221, 1.000000e+06
  %223 = fdiv float %219, %222
  %224 = load i8*, i8** %12, align 4, !tbaa !58
  %225 = fpext float %223 to double
  %226 = call i8* @halide_double_to_string(i8* %216, i8* %224, double %225, i32 0) #6
  store i8* %226, i8** %10, align 4, !tbaa !57
  %227 = icmp eq i8* %226, null
  br i1 %227, label %234, label %228

228:                                              ; preds = %215
  %229 = getelementptr inbounds i8, i8* %226, i32 -3
  %230 = load i8*, i8** %9, align 4, !tbaa !60
  %231 = icmp ult i8* %229, %230
  %232 = select i1 %231, i8* %230, i8* %229
  store i8* %232, i8** %10, align 4
  store i8 0, i8* %232, align 1, !tbaa !59
  %233 = load i8*, i8** %10, align 4, !tbaa !57
  br label %234

234:                                              ; preds = %215, %228
  %235 = phi i8* [ null, %215 ], [ %233, %228 ]
  %236 = load i8*, i8** %12, align 4, !tbaa !58
  %237 = call i8* @halide_string_to_string(i8* %235, i8* %236, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)) #6
  store i8* %237, i8** %10, align 4, !tbaa !57
  %238 = load i8*, i8** %9, align 4, !tbaa !60
  %239 = ptrtoint i8* %237 to i32
  %240 = ptrtoint i8* %238 to i32
  %241 = sub i32 %239, %240
  %242 = icmp ult i32 %241, 35
  br i1 %242, label %243, label %252

243:                                              ; preds = %234, %243
  %244 = phi i8* [ %246, %243 ], [ %237, %234 ]
  %245 = load i8*, i8** %12, align 4, !tbaa !58
  %246 = call i8* @halide_string_to_string(i8* %244, i8* %245, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #6
  store i8* %246, i8** %10, align 4, !tbaa !57
  %247 = load i8*, i8** %9, align 4, !tbaa !60
  %248 = ptrtoint i8* %246 to i32
  %249 = ptrtoint i8* %247 to i32
  %250 = sub i32 %248, %249
  %251 = icmp ult i32 %250, 35
  br i1 %251, label %243, label %252, !llvm.loop !64

252:                                              ; preds = %243, %234
  %253 = phi i8* [ %237, %234 ], [ %246, %243 ]
  %254 = load i64, i64* %42, align 8, !tbaa !21
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %252
  %257 = load i64, i64* %217, align 8, !tbaa !30
  %258 = mul i64 %257, 100
  %259 = udiv i64 %258, %254
  %260 = trunc i64 %259 to i32
  br label %261

261:                                              ; preds = %256, %252
  %262 = phi i32 [ %260, %256 ], [ 0, %252 ]
  %263 = load i8*, i8** %12, align 4, !tbaa !58
  %264 = call i8* @halide_string_to_string(i8* %253, i8* %263, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)) #6
  store i8* %264, i8** %10, align 4, !tbaa !57
  %265 = load i8*, i8** %12, align 4, !tbaa !58
  %266 = sext i32 %262 to i64
  %267 = call i8* @halide_int64_to_string(i8* %264, i8* %265, i64 %266, i32 1) #6
  store i8* %267, i8** %10, align 4, !tbaa !57
  %268 = load i8*, i8** %12, align 4, !tbaa !58
  %269 = call i8* @halide_string_to_string(i8* %267, i8* %268, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)) #6
  store i8* %269, i8** %10, align 4, !tbaa !57
  %270 = load i8*, i8** %9, align 4, !tbaa !60
  %271 = ptrtoint i8* %269 to i32
  %272 = ptrtoint i8* %270 to i32
  %273 = sub i32 %271, %272
  %274 = icmp ult i32 %273, 43
  br i1 %274, label %275, label %284

275:                                              ; preds = %261, %275
  %276 = phi i8* [ %278, %275 ], [ %269, %261 ]
  %277 = load i8*, i8** %12, align 4, !tbaa !58
  %278 = call i8* @halide_string_to_string(i8* %276, i8* %277, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #6
  store i8* %278, i8** %10, align 4, !tbaa !57
  %279 = load i8*, i8** %9, align 4, !tbaa !60
  %280 = ptrtoint i8* %278 to i32
  %281 = ptrtoint i8* %279 to i32
  %282 = sub i32 %280, %281
  %283 = icmp ult i32 %282, 43
  br i1 %283, label %275, label %284, !llvm.loop !65

284:                                              ; preds = %275, %261
  %285 = phi i8* [ %269, %261 ], [ %278, %275 ]
  br i1 %59, label %324, label %286

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 5
  %288 = load i64, i64* %287, align 8, !tbaa !39
  %289 = uitofp i64 %288 to double
  %290 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 6
  %291 = load i64, i64* %290, align 8, !tbaa !40
  %292 = uitofp i64 %291 to double
  %293 = fadd double %292, 1.000000e-10
  %294 = fdiv double %289, %293
  %295 = fptrunc double %294 to float
  %296 = load i8*, i8** %12, align 4, !tbaa !58
  %297 = call i8* @halide_string_to_string(i8* %285, i8* %296, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0)) #6
  store i8* %297, i8** %10, align 4, !tbaa !57
  %298 = load i8*, i8** %12, align 4, !tbaa !58
  %299 = fpext float %295 to double
  %300 = call i8* @halide_double_to_string(i8* %297, i8* %298, double %299, i32 0) #6
  store i8* %300, i8** %10, align 4, !tbaa !57
  %301 = icmp eq i8* %300, null
  br i1 %301, label %308, label %302

302:                                              ; preds = %286
  %303 = getelementptr inbounds i8, i8* %300, i32 -3
  %304 = load i8*, i8** %9, align 4, !tbaa !60
  %305 = icmp ult i8* %303, %304
  %306 = select i1 %305, i8* %304, i8* %303
  store i8* %306, i8** %10, align 4
  store i8 0, i8* %306, align 1, !tbaa !59
  %307 = load i8*, i8** %10, align 4, !tbaa !57
  br label %308

308:                                              ; preds = %286, %302
  %309 = phi i8* [ null, %286 ], [ %307, %302 ]
  %310 = load i8*, i8** %9, align 4, !tbaa !60
  %311 = ptrtoint i8* %309 to i32
  %312 = ptrtoint i8* %310 to i32
  %313 = sub i32 %311, %312
  %314 = icmp ult i32 %313, 58
  br i1 %314, label %315, label %324

315:                                              ; preds = %308, %315
  %316 = phi i8* [ %318, %315 ], [ %309, %308 ]
  %317 = load i8*, i8** %12, align 4, !tbaa !58
  %318 = call i8* @halide_string_to_string(i8* %316, i8* %317, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #6
  store i8* %318, i8** %10, align 4, !tbaa !57
  %319 = load i8*, i8** %9, align 4, !tbaa !60
  %320 = ptrtoint i8* %318 to i32
  %321 = ptrtoint i8* %319 to i32
  %322 = sub i32 %320, %321
  %323 = icmp ult i32 %322, 58
  br i1 %323, label %315, label %324, !llvm.loop !66

324:                                              ; preds = %315, %308, %284
  %325 = phi i8* [ %285, %284 ], [ %309, %308 ], [ %318, %315 ]
  %326 = phi i32 [ 58, %284 ], [ 73, %308 ], [ 73, %315 ]
  %327 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 8
  %328 = load i32, i32* %327, align 4, !tbaa !37
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %336, label %330

330:                                              ; preds = %324
  %331 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 3
  %332 = load i64, i64* %331, align 8, !tbaa !36
  %333 = sext i32 %328 to i64
  %334 = udiv i64 %332, %333
  %335 = trunc i64 %334 to i32
  br label %336

336:                                              ; preds = %330, %324
  %337 = phi i32 [ %335, %330 ], [ 0, %324 ]
  %338 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 2
  %339 = load i64, i64* %338, align 8, !tbaa !35
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %397, label %341

341:                                              ; preds = %336
  %342 = load i8*, i8** %12, align 4, !tbaa !58
  %343 = call i8* @halide_string_to_string(i8* %325, i8* %342, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0)) #6
  store i8* %343, i8** %10, align 4, !tbaa !57
  %344 = load i64, i64* %338, align 8, !tbaa !35
  %345 = load i8*, i8** %12, align 4, !tbaa !58
  %346 = call i8* @halide_uint64_to_string(i8* %343, i8* %345, i64 %344, i32 1) #6
  store i8* %346, i8** %10, align 4, !tbaa !57
  %347 = load i8*, i8** %9, align 4, !tbaa !60
  %348 = ptrtoint i8* %346 to i32
  %349 = ptrtoint i8* %347 to i32
  %350 = sub i32 %348, %349
  %351 = sext i32 %350 to i64
  %352 = zext i32 %326 to i64
  %353 = icmp ult i64 %351, %352
  br i1 %353, label %354, label %364

354:                                              ; preds = %341, %354
  %355 = phi i8* [ %357, %354 ], [ %346, %341 ]
  %356 = load i8*, i8** %12, align 4, !tbaa !58
  %357 = call i8* @halide_string_to_string(i8* %355, i8* %356, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #6
  store i8* %357, i8** %10, align 4, !tbaa !57
  %358 = load i8*, i8** %9, align 4, !tbaa !60
  %359 = ptrtoint i8* %357 to i32
  %360 = ptrtoint i8* %358 to i32
  %361 = sub i32 %359, %360
  %362 = sext i32 %361 to i64
  %363 = icmp ult i64 %362, %352
  br i1 %363, label %354, label %364, !llvm.loop !67

364:                                              ; preds = %354, %341
  %365 = phi i8* [ %346, %341 ], [ %357, %354 ]
  %366 = load i8*, i8** %12, align 4, !tbaa !58
  %367 = call i8* @halide_string_to_string(i8* %365, i8* %366, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #6
  store i8* %367, i8** %10, align 4, !tbaa !57
  %368 = load i32, i32* %327, align 4, !tbaa !37
  %369 = load i8*, i8** %12, align 4, !tbaa !58
  %370 = sext i32 %368 to i64
  %371 = call i8* @halide_int64_to_string(i8* %367, i8* %369, i64 %370, i32 1) #6
  store i8* %371, i8** %10, align 4, !tbaa !57
  %372 = add nuw nsw i32 %326, 15
  %373 = load i8*, i8** %9, align 4, !tbaa !60
  %374 = ptrtoint i8* %371 to i32
  %375 = ptrtoint i8* %373 to i32
  %376 = sub i32 %374, %375
  %377 = sext i32 %376 to i64
  %378 = zext i32 %372 to i64
  %379 = icmp ult i64 %377, %378
  br i1 %379, label %380, label %390

380:                                              ; preds = %364, %380
  %381 = phi i8* [ %383, %380 ], [ %371, %364 ]
  %382 = load i8*, i8** %12, align 4, !tbaa !58
  %383 = call i8* @halide_string_to_string(i8* %381, i8* %382, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #6
  store i8* %383, i8** %10, align 4, !tbaa !57
  %384 = load i8*, i8** %9, align 4, !tbaa !60
  %385 = ptrtoint i8* %383 to i32
  %386 = ptrtoint i8* %384 to i32
  %387 = sub i32 %385, %386
  %388 = sext i32 %387 to i64
  %389 = icmp ult i64 %388, %378
  br i1 %389, label %380, label %390, !llvm.loop !68

390:                                              ; preds = %380, %364
  %391 = phi i8* [ %371, %364 ], [ %383, %380 ]
  %392 = load i8*, i8** %12, align 4, !tbaa !58
  %393 = call i8* @halide_string_to_string(i8* %391, i8* %392, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0)) #6
  store i8* %393, i8** %10, align 4, !tbaa !57
  %394 = load i8*, i8** %12, align 4, !tbaa !58
  %395 = sext i32 %337 to i64
  %396 = call i8* @halide_int64_to_string(i8* %393, i8* %394, i64 %395, i32 1) #6
  store i8* %396, i8** %10, align 4, !tbaa !57
  br label %397

397:                                              ; preds = %390, %336
  %398 = phi i8* [ %396, %390 ], [ %325, %336 ]
  %399 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 4
  %400 = load i64, i64* %399, align 8, !tbaa !38
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %408, label %402

402:                                              ; preds = %397
  %403 = load i8*, i8** %12, align 4, !tbaa !58
  %404 = call i8* @halide_string_to_string(i8* %398, i8* %403, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)) #6
  store i8* %404, i8** %10, align 4, !tbaa !57
  %405 = load i64, i64* %399, align 8, !tbaa !38
  %406 = load i8*, i8** %12, align 4, !tbaa !58
  %407 = call i8* @halide_uint64_to_string(i8* %404, i8* %406, i64 %405, i32 1) #6
  store i8* %407, i8** %10, align 4, !tbaa !57
  br label %408

408:                                              ; preds = %402, %397
  %409 = phi i8* [ %407, %402 ], [ %398, %397 ]
  %410 = load i8*, i8** %12, align 4, !tbaa !58
  %411 = call i8* @halide_string_to_string(i8* %409, i8* %410, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #6
  store i8* %411, i8** %10, align 4, !tbaa !57
  %412 = load i8*, i8** %9, align 4, !tbaa !60
  %413 = icmp eq i8* %412, null
  br i1 %413, label %423, label %414

414:                                              ; preds = %408
  %415 = load i8*, i8** %7, align 4, !tbaa !53
  %416 = ptrtoint i8* %411 to i32
  %417 = ptrtoint i8* %412 to i32
  %418 = add i32 %416, 1
  %419 = sub i32 %418, %417
  %420 = sext i32 %419 to i64
  %421 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %415, i8* nonnull %412, i64 %420) #6
  %422 = load i8*, i8** %9, align 4, !tbaa !60
  br label %423

423:                                              ; preds = %408, %414
  %424 = phi i8* [ %422, %414 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0), %408 ]
  call void @halide_print(i8* %0, i8* %424) #6
  br label %425

425:                                              ; preds = %181, %423
  %426 = add nuw nsw i32 %173, 1
  %427 = load i32, i32* %167, align 4, !tbaa !11
  %428 = icmp slt i32 %426, %427
  br i1 %428, label %172, label %429, !llvm.loop !69

429:                                              ; preds = %158, %425, %151, %166, %40
  %430 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 8
  %431 = bitcast i8** %430 to %struct.halide_profiler_pipeline_stats**
  %432 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %431, align 4, !tbaa !3
  %433 = icmp eq %struct.halide_profiler_pipeline_stats* %432, null
  br i1 %433, label %16, label %40, !llvm.loop !70
}

; Function Attrs: nounwind
define weak void @halide_profiler_report(i8* %0) local_unnamed_addr #4 {
  %2 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %3 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i32 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* %3) #6
  tail call void @halide_profiler_report_unlocked(i8* %0, %struct.halide_profiler_state* %2) #5
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %3) #6
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i32 0, i32 5
  %3 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %2, align 4, !tbaa !14
  %4 = icmp eq %struct.halide_profiler_pipeline_stats* %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %5
  %6 = phi %struct.halide_profiler_pipeline_stats* [ %14, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %6, i32 0, i32 8
  %8 = bitcast i8** %7 to %struct.halide_profiler_pipeline_stats**
  %9 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %8, align 8, !tbaa !17
  store %struct.halide_profiler_pipeline_stats* %9, %struct.halide_profiler_pipeline_stats** %2, align 4, !tbaa !14
  %10 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %6, i32 0, i32 7
  %11 = bitcast %struct.halide_profiler_func_stats** %10 to i8**
  %12 = load i8*, i8** %11, align 4, !tbaa !29
  tail call void @free(i8* %12) #6
  %13 = bitcast %struct.halide_profiler_pipeline_stats* %6 to i8*
  tail call void @free(i8* nonnull %13) #6
  %14 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %2, align 4, !tbaa !14
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null
  br i1 %15, label %16, label %5, !llvm.loop !71

16:                                               ; preds = %5, %1
  %17 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i32 0, i32 2
  store i32 0, i32* %17, align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind
define weak void @halide_profiler_reset() local_unnamed_addr #4 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i32 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* %2) #6
  tail call void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* %1) #5
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %2) #6
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @halide_profiler_shutdown() #1 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i32 0, i32 7
  %3 = load %struct.halide_thread*, %struct.halide_thread** %2, align 4, !tbaa !50
  %4 = icmp eq %struct.halide_thread* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i32 0, i32 3
  store i32 -2, i32* %6, align 4, !tbaa !43
  tail call void @halide_join_thread(%struct.halide_thread* nonnull %3) #6
  store %struct.halide_thread* null, %struct.halide_thread** %2, align 4, !tbaa !50
  store i32 -1, i32* %6, align 4, !tbaa !43
  tail call void @halide_profiler_report_unlocked(i8* null, %struct.halide_profiler_state* nonnull %1) #5
  tail call void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* nonnull %1) #5
  br label %7

7:                                                ; preds = %0, %5
  ret void
}

declare void @halide_join_thread(%struct.halide_thread*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak void @halide_profiler_pipeline_end(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, i8* %1, i32 12
  %4 = bitcast i8* %3 to i32*
  store i32 -1, i32* %4, align 4, !tbaa !43
  ret void
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #3

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare extern_weak i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #3

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare extern_weak i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

attributes #0 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 48}
!8 = !{!"_ZTS30halide_profiler_pipeline_stats", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76}
!9 = !{!"long long", !5, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!8, !10, i64 60}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !4, i64 20}
!15 = !{!"_ZTS21halide_profiler_state", !16, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!16 = !{!"_ZTS12halide_mutex", !5, i64 0}
!17 = !{!8, !4, i64 56}
!18 = !{!15, !10, i64 8}
!19 = !{!8, !10, i64 64}
!20 = !{!8, !10, i64 68}
!21 = !{!8, !9, i64 0}
!22 = !{!8, !10, i64 72}
!23 = !{!8, !9, i64 8}
!24 = !{!8, !9, i64 16}
!25 = !{!8, !9, i64 24}
!26 = !{!8, !10, i64 76}
!27 = !{!8, !9, i64 32}
!28 = !{!8, !9, i64 40}
!29 = !{!8, !4, i64 52}
!30 = !{!31, !9, i64 0}
!31 = !{!"_ZTS26halide_profiler_func_stats", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !4, i64 56, !10, i64 60}
!32 = !{!9, !9, i64 0}
!33 = !{!31, !4, i64 56}
!34 = !{!31, !9, i64 8}
!35 = !{!31, !9, i64 16}
!36 = !{!31, !9, i64 24}
!37 = !{!31, !10, i64 60}
!38 = !{!31, !9, i64 32}
!39 = !{!31, !9, i64 40}
!40 = !{!31, !9, i64 48}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = !{!15, !10, i64 12}
!44 = distinct !{!44, !13}
!45 = !{!15, !4, i64 24}
!46 = !{!10, !10, i64 0}
!47 = !{!15, !10, i64 16}
!48 = !{!15, !10, i64 4}
!49 = distinct !{!49, !13}
!50 = !{!15, !4, i64 28}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = !{!54, !4, i64 12}
!54 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !55, i64 16, !5, i64 17}
!55 = !{!"bool", !5, i64 0}
!56 = !{!54, !55, i64 16}
!57 = !{!54, !4, i64 4}
!58 = !{!54, !4, i64 8}
!59 = !{!5, !5, i64 0}
!60 = !{!54, !4, i64 0}
!61 = !{i8 0, i8 2}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
