; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_profiler_state = type { %struct.halide_mutex, i32, i32, i32, i32, %struct.halide_profiler_pipeline_stats*, void (i32*, i32*)*, %struct.halide_thread* }
%struct.halide_mutex = type { [1 x i64] }
%struct.halide_profiler_pipeline_stats = type { i64, i64, i64, i64, i64, i64, i8*, %struct.halide_profiler_func_stats*, i8*, i32, i32, i32, i32, i32, [4 x i8] }
%struct.halide_profiler_func_stats = type { i64, i64, i64, i64, i64, i64, i64, i8*, i32, [4 x i8] }
%struct.halide_thread = type opaque
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>

@_ZZ25halide_profiler_get_stateE1s = internal global %struct.halide_profiler_state { %struct.halide_mutex zeroinitializer, i32 1, i32 0, i32 0, i32 0, %struct.halide_profiler_pipeline_stats* null, void (i32*, i32*)* null, %struct.halide_thread* null }, align 8
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
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 5
  %6 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %5, align 8, !tbaa !3
  %7 = icmp eq %struct.halide_profiler_pipeline_stats* %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %3, %17
  %9 = phi %struct.halide_profiler_pipeline_stats* [ %20, %17 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 6
  %11 = load i8*, i8** %10, align 8, !tbaa !7
  %12 = icmp eq i8* %11, %0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 9
  %15 = load i32, i32* %14, align 8, !tbaa !11
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %87, label %17

17:                                               ; preds = %8, %13
  %18 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 8
  %19 = bitcast i8** %18 to %struct.halide_profiler_pipeline_stats**
  %20 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %19, align 8, !tbaa !3
  %21 = icmp eq %struct.halide_profiler_pipeline_stats* %20, null
  br i1 %21, label %22, label %8, !llvm.loop !12

22:                                               ; preds = %17, %3
  %23 = tail call i8* @malloc(i64 96) #6
  %24 = bitcast i8* %23 to %struct.halide_profiler_pipeline_stats*
  %25 = icmp eq i8* %23, null
  br i1 %25, label %87, label %26

26:                                               ; preds = %22
  %27 = bitcast %struct.halide_profiler_pipeline_stats** %5 to i8**
  %28 = load i8*, i8** %27, align 8, !tbaa !14
  %29 = getelementptr inbounds i8, i8* %23, i64 64
  %30 = bitcast i8* %29 to i8**
  store i8* %28, i8** %30, align 8, !tbaa !17
  %31 = getelementptr inbounds i8, i8* %23, i64 48
  %32 = bitcast i8* %31 to i8**
  store i8* %0, i8** %32, align 8, !tbaa !7
  %33 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 2
  %34 = load i32, i32* %33, align 4, !tbaa !18
  %35 = getelementptr inbounds i8, i8* %23, i64 76
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 4, !tbaa !19
  %37 = getelementptr inbounds i8, i8* %23, i64 72
  %38 = bitcast i8* %37 to i32*
  store i32 %1, i32* %38, align 8, !tbaa !11
  %39 = getelementptr inbounds i8, i8* %23, i64 80
  %40 = bitcast i8* %39 to i32*
  store i32 0, i32* %40, align 8, !tbaa !20
  %41 = bitcast i8* %23 to i64*
  store i64 0, i64* %41, align 8, !tbaa !21
  %42 = getelementptr inbounds i8, i8* %23, i64 84
  %43 = bitcast i8* %42 to i32*
  store i32 0, i32* %43, align 4, !tbaa !22
  %44 = getelementptr inbounds i8, i8* %23, i64 8
  %45 = bitcast i8* %44 to i64*
  store i64 0, i64* %45, align 8, !tbaa !23
  %46 = getelementptr inbounds i8, i8* %23, i64 16
  %47 = bitcast i8* %46 to i64*
  store i64 0, i64* %47, align 8, !tbaa !24
  %48 = getelementptr inbounds i8, i8* %23, i64 24
  %49 = bitcast i8* %48 to i64*
  store i64 0, i64* %49, align 8, !tbaa !25
  %50 = getelementptr inbounds i8, i8* %23, i64 88
  %51 = bitcast i8* %50 to i32*
  store i32 0, i32* %51, align 8, !tbaa !26
  %52 = getelementptr inbounds i8, i8* %23, i64 32
  %53 = bitcast i8* %52 to i64*
  store i64 0, i64* %53, align 8, !tbaa !27
  %54 = getelementptr inbounds i8, i8* %23, i64 40
  %55 = bitcast i8* %54 to i64*
  store i64 0, i64* %55, align 8, !tbaa !28
  %56 = sext i32 %1 to i64
  %57 = mul nsw i64 %56, 72
  %58 = tail call i8* @malloc(i64 %57) #6
  %59 = getelementptr inbounds i8, i8* %23, i64 56
  %60 = bitcast i8* %59 to i8**
  store i8* %58, i8** %60, align 8, !tbaa !29
  %61 = icmp eq i8* %58, null
  %62 = bitcast i8* %58 to %struct.halide_profiler_func_stats*
  br i1 %61, label %67, label %63

63:                                               ; preds = %26
  %64 = icmp sgt i32 %1, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = zext i32 %1 to i64
  br label %71

67:                                               ; preds = %26
  tail call void @free(i8* nonnull %23) #6
  br label %87

68:                                               ; preds = %71, %63
  %69 = load i32, i32* %33, align 4, !tbaa !18
  %70 = add nsw i32 %69, %1
  store i32 %70, i32* %33, align 4, !tbaa !18
  store i8* %23, i8** %27, align 8, !tbaa !14
  br label %87

71:                                               ; preds = %65, %71
  %72 = phi i64 [ 0, %65 ], [ %85, %71 ]
  %73 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 0
  store i64 0, i64* %73, align 8, !tbaa !30
  %74 = getelementptr inbounds i64, i64* %2, i64 %72
  %75 = load i64, i64* %74, align 8, !tbaa !32
  %76 = inttoptr i64 %75 to i8*
  %77 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 7
  store i8* %76, i8** %77, align 8, !tbaa !33
  %78 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 1
  store i64 0, i64* %78, align 8, !tbaa !34
  %79 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 2
  store i64 0, i64* %79, align 8, !tbaa !35
  %80 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 3
  store i64 0, i64* %80, align 8, !tbaa !36
  %81 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 8
  store i32 0, i32* %81, align 8, !tbaa !37
  %82 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 4
  store i64 0, i64* %82, align 8, !tbaa !38
  %83 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 5
  store i64 0, i64* %83, align 8, !tbaa !39
  %84 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 6
  store i64 0, i64* %84, align 8, !tbaa !40
  %85 = add nuw nsw i64 %72, 1
  %86 = icmp eq i64 %85, %66
  br i1 %86, label %68, label %71, !llvm.loop !41

87:                                               ; preds = %13, %67, %68, %22
  %88 = phi %struct.halide_profiler_pipeline_stats* [ %24, %68 ], [ null, %67 ], [ null, %22 ], [ %9, %13 ]
  ret %struct.halide_profiler_pipeline_stats* %88
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @malloc(i64) local_unnamed_addr #3

declare void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi(%struct.halide_profiler_state* %0, i32 %1, i64 %2, i32 %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i64 0, i32 5
  %6 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %5, align 8, !tbaa !3
  %7 = icmp eq %struct.halide_profiler_pipeline_stats* %6, null
  br i1 %7, label %61, label %8

8:                                                ; preds = %4, %56
  %9 = phi %struct.halide_profiler_pipeline_stats* [ %59, %56 ], [ %6, %4 ]
  %10 = phi %struct.halide_profiler_pipeline_stats* [ %9, %56 ], [ null, %4 ]
  %11 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 10
  %12 = load i32, i32* %11, align 4, !tbaa !19
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %56, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 9
  %16 = load i32, i32* %15, align 8, !tbaa !11
  %17 = add nsw i32 %16, %12
  %18 = icmp sgt i32 %17, %1
  br i1 %18, label %19, label %56

19:                                               ; preds = %14
  %20 = icmp eq %struct.halide_profiler_pipeline_stats* %10, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 8
  %23 = load i8*, i8** %22, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %10, i64 0, i32 8
  store i8* %23, i8** %24, align 8, !tbaa !17
  %25 = bitcast i8** %22 to %struct.halide_profiler_pipeline_stats**
  store %struct.halide_profiler_pipeline_stats* %6, %struct.halide_profiler_pipeline_stats** %25, align 8, !tbaa !17
  store %struct.halide_profiler_pipeline_stats* %9, %struct.halide_profiler_pipeline_stats** %5, align 8, !tbaa !14
  br label %26

26:                                               ; preds = %21, %19
  %27 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 7
  %28 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %27, align 8, !tbaa !29
  %29 = sext i32 %1 to i64
  %30 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %28, i64 %29
  %31 = sext i32 %12 to i64
  %32 = sub nsw i64 0, %31
  %33 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %30, i64 %32
  %34 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %33, i64 0, i32 0
  %35 = load i64, i64* %34, align 8, !tbaa !30
  %36 = add i64 %35, %2
  store i64 %36, i64* %34, align 8, !tbaa !30
  %37 = sext i32 %3 to i64
  %38 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %33, i64 0, i32 5
  %39 = load i64, i64* %38, align 8, !tbaa !39
  %40 = add i64 %39, %37
  store i64 %40, i64* %38, align 8, !tbaa !39
  %41 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %33, i64 0, i32 6
  %42 = load i64, i64* %41, align 8, !tbaa !40
  %43 = add i64 %42, 1
  store i64 %43, i64* %41, align 8, !tbaa !40
  %44 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !21
  %46 = add i64 %45, %2
  store i64 %46, i64* %44, align 8, !tbaa !21
  %47 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 12
  %48 = load i32, i32* %47, align 4, !tbaa !22
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4, !tbaa !22
  %50 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 4
  %51 = load i64, i64* %50, align 8, !tbaa !27
  %52 = add i64 %51, %37
  store i64 %52, i64* %50, align 8, !tbaa !27
  %53 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 5
  %54 = load i64, i64* %53, align 8, !tbaa !28
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8, !tbaa !28
  ret void

56:                                               ; preds = %14, %8
  %57 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 8
  %58 = bitcast i8** %57 to %struct.halide_profiler_pipeline_stats**
  %59 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %58, align 8, !tbaa !3
  %60 = icmp eq %struct.halide_profiler_pipeline_stats* %59, null
  br i1 %60, label %61, label %8, !llvm.loop !42

61:                                               ; preds = %56, %4
  ret void
}

; Function Attrs: nounwind
define weak void @_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv(i8* %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* %5) #6
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 3
  %7 = load i32, i32* %6, align 8, !tbaa !43
  %8 = icmp eq i32 %7, -2
  br i1 %8, label %39, label %9

9:                                                ; preds = %1
  %10 = bitcast i32* %2 to i8*
  %11 = bitcast i32* %3 to i8*
  %12 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 6
  %13 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 4
  %14 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 1
  br label %18

15:                                               ; preds = %28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #7
  %16 = load i32, i32* %6, align 8, !tbaa !43
  %17 = icmp eq i32 %16, -2
  br i1 %17, label %39, label %18, !llvm.loop !44

18:                                               ; preds = %9, %15
  %19 = call i64 @halide_current_time_ns(i8* null) #6
  br label %20

20:                                               ; preds = %37, %18
  %21 = phi i64 [ %19, %18 ], [ %29, %37 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #7
  %22 = load void (i32*, i32*)*, void (i32*, i32*)** %12, align 8, !tbaa !45
  %23 = icmp eq void (i32*, i32*)* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call void %22(i32* nonnull %2, i32* nonnull %3) #6
  br label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 8, !tbaa !43
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
  %38 = load i32, i32* %14, align 8, !tbaa !48
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
  %3 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* %3) #6
  %4 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i64 0, i32 5
  %5 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %4, align 8, !tbaa !3
  %6 = icmp eq %struct.halide_profiler_pipeline_stats* %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1, %12
  %8 = phi %struct.halide_profiler_pipeline_stats* [ %15, %12 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %8, i64 0, i32 6
  %10 = load i8*, i8** %9, align 8, !tbaa !7
  %11 = icmp eq i8* %10, %0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %8, i64 0, i32 8
  %14 = bitcast i8** %13 to %struct.halide_profiler_pipeline_stats**
  %15 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %14, align 8, !tbaa !3
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
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %5, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* %6) #6
  %7 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %5, i64 0, i32 7
  %8 = load %struct.halide_thread*, %struct.halide_thread** %7, align 8, !tbaa !50
  %9 = icmp eq %struct.halide_thread* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = tail call i32 @halide_start_clock(i8* %0) #6
  %12 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv, i8* null) #6
  store %struct.halide_thread* %12, %struct.halide_thread** %7, align 8, !tbaa !50
  br label %13

13:                                               ; preds = %10, %4
  %14 = tail call %struct.halide_profiler_pipeline_stats* @_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy(i8* %1, i32 %2, i64* %3) #5
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 @halide_error_out_of_memory(i8* %0) #6
  br label %24

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %14, i64 0, i32 11
  %20 = load i32, i32* %19, align 8, !tbaa !20
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8, !tbaa !20
  %22 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %14, i64 0, i32 10
  %23 = load i32, i32* %22, align 4, !tbaa !19
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
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %6

6:                                                ; preds = %5, %3
  %7 = getelementptr inbounds i8, i8* %1, i64 72
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !11
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %1, i64 56
  %13 = bitcast i8* %12 to %struct.halide_profiler_func_stats**
  br label %15

14:                                               ; preds = %34, %6
  ret void

15:                                               ; preds = %11, %34
  %16 = phi i32 [ %9, %11 ], [ %35, %34 ]
  %17 = phi i64 [ 0, %11 ], [ %36, %34 ]
  %18 = getelementptr inbounds i64, i64* %2, i64 %17
  %19 = load i64, i64* %18, align 8, !tbaa !32
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %13, align 8, !tbaa !29
  %23 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %22, i64 %17, i32 4
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
  %33 = load i32, i32* %8, align 8, !tbaa !11
  br label %34

34:                                               ; preds = %32, %15
  %35 = phi i32 [ %33, %32 ], [ %16, %15 ]
  %36 = add nuw nsw i64 %17, 1
  %37 = sext i32 %35 to i64
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %15, label %14, !llvm.loop !52
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #3

declare void @abort() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak void @halide_profiler_memory_allocate(i8* %0, i8* %1, i32 %2, i64 %3) local_unnamed_addr #1 {
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %60, label %6

6:                                                ; preds = %4
  %7 = icmp eq i8* %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %9

9:                                                ; preds = %6, %8
  %10 = icmp sgt i32 %2, -1
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %12

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds i8, i8* %1, i64 72
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !11
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %18

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds i8, i8* %1, i64 56
  %20 = bitcast i8* %19 to %struct.halide_profiler_func_stats**
  %21 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %20, align 8, !tbaa !29
  %22 = sext i32 %2 to i64
  %23 = getelementptr inbounds i8, i8* %1, i64 88
  %24 = bitcast i8* %23 to i32*
  %25 = atomicrmw add i32* %24, i32 1 seq_cst
  %26 = getelementptr inbounds i8, i8* %1, i64 24
  %27 = bitcast i8* %26 to i64*
  %28 = atomicrmw add i64* %27, i64 %3 seq_cst
  %29 = getelementptr inbounds i8, i8* %1, i64 8
  %30 = bitcast i8* %29 to i64*
  %31 = atomicrmw add i64* %30, i64 %3 seq_cst
  %32 = add i64 %31, %3
  %33 = getelementptr inbounds i8, i8* %1, i64 16
  %34 = bitcast i8* %33 to i64*
  %35 = load i64, i64* %34, align 8, !tbaa !32
  br label %36

36:                                               ; preds = %39, %18
  %37 = phi i64 [ %35, %18 ], [ %41, %39 ]
  %38 = icmp ult i64 %37, %32
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = cmpxchg i64* %34, i64 %37, i64 %32 seq_cst seq_cst
  %41 = extractvalue { i64, i1 } %40, 0
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %36, !llvm.loop !51

43:                                               ; preds = %36, %39
  %44 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 8
  %45 = atomicrmw add i32* %44, i32 1 seq_cst
  %46 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 3
  %47 = atomicrmw add i64* %46, i64 %3 seq_cst
  %48 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 1
  %49 = atomicrmw add i64* %48, i64 %3 seq_cst
  %50 = add i64 %49, %3
  %51 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 2
  %52 = load i64, i64* %51, align 8, !tbaa !32
  br label %53

53:                                               ; preds = %56, %43
  %54 = phi i64 [ %52, %43 ], [ %58, %56 ]
  %55 = icmp ult i64 %54, %50
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = cmpxchg i64* %51, i64 %54, i64 %50 seq_cst seq_cst
  %58 = extractvalue { i64, i1 } %57, 0
  %59 = icmp eq i64 %54, %58
  br i1 %59, label %60, label %53, !llvm.loop !51

60:                                               ; preds = %56, %53, %4
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @halide_profiler_memory_free(i8* %0, i8* %1, i32 %2, i64 %3) local_unnamed_addr #1 {
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = icmp eq i8* %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %9

9:                                                ; preds = %6, %8
  %10 = icmp sgt i32 %2, -1
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %12

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds i8, i8* %1, i64 72
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !11
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.6, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %18

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds i8, i8* %1, i64 56
  %20 = bitcast i8* %19 to %struct.halide_profiler_func_stats**
  %21 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %20, align 8, !tbaa !29
  %22 = sext i32 %2 to i64
  %23 = getelementptr inbounds i8, i8* %1, i64 8
  %24 = bitcast i8* %23 to i64*
  %25 = atomicrmw sub i64* %24, i64 %3 seq_cst
  %26 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 1
  %27 = atomicrmw sub i64* %26, i64 %3 seq_cst
  br label %28

28:                                               ; preds = %4, %18
  ret void
}

; Function Attrs: nounwind
define weak void @halide_profiler_report_unlocked(i8* %0, %struct.halide_profiler_state* %1) local_unnamed_addr #4 {
  %3 = alloca [1024 x i8], align 1
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %5) #7
  %6 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 3
  store i8* %0, i8** %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 4
  store i8 0, i8* %8, align 8, !tbaa !56
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 0
  store i8* %5, i8** %9, align 8
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 1
  store i8* %5, i8** %10, align 8, !tbaa !57
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 1023
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 2
  store i8* %11, i8** %12, align 8, !tbaa !58
  store i8 0, i8* %11, align 1, !tbaa !59
  %13 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 5
  %14 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %13, align 8, !tbaa !3
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null
  br i1 %15, label %21, label %39

16:                                               ; preds = %422
  %17 = load i8*, i8** %9, align 8, !tbaa !60
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8, !tbaa !53
  call void @halide_error(i8* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0)) #6
  br label %30

21:                                               ; preds = %2, %16
  %22 = phi i8* [ %17, %16 ], [ %5, %2 ]
  %23 = load i8*, i8** %10, align 8, !tbaa !57
  %24 = load i8*, i8** %7, align 8, !tbaa !53
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %22 to i64
  %27 = sub i64 1, %26
  %28 = add i64 %27, %25
  %29 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %24, i8* nonnull %22, i64 %28) #6
  br label %30

30:                                               ; preds = %21, %19
  %31 = load i8, i8* %8, align 8, !tbaa !56, !range !61
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %9, align 8, !tbaa !60
  %35 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 5, i64 0
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  call void @free(i8* %34) #6
  br label %38

38:                                               ; preds = %30, %33, %37
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %5) #7
  ret void

39:                                               ; preds = %2, %422
  %40 = phi %struct.halide_profiler_pipeline_stats* [ %425, %422 ], [ %14, %2 ]
  %41 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 0
  %42 = load i64, i64* %41, align 8, !tbaa !21
  %43 = uitofp i64 %42 to float
  %44 = fdiv float %43, 1.000000e+06
  %45 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 11
  %46 = load i32, i32* %45, align 8, !tbaa !20
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %422, label %48

48:                                               ; preds = %39
  %49 = load i8*, i8** %9, align 8, !tbaa !60
  store i8* %49, i8** %10, align 8, !tbaa !57
  %50 = icmp eq i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i8 0, i8* %49, align 1, !tbaa !59
  br label %52

52:                                               ; preds = %48, %51
  %53 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 13
  %54 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 4
  %55 = load i64, i64* %54, align 8, !tbaa !27
  %56 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 5
  %57 = load i64, i64* %56, align 8, !tbaa !28
  %58 = icmp eq i64 %55, %57
  %59 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 6
  %60 = load i8*, i8** %59, align 8, !tbaa !7
  %61 = icmp eq i8* %60, null
  %62 = load i8*, i8** %10, align 8, !tbaa !57
  %63 = load i8*, i8** %12, align 8, !tbaa !58
  br i1 %61, label %64, label %66

64:                                               ; preds = %52
  %65 = call i8* @halide_string_to_string(i8* %62, i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)) #6
  br label %68

66:                                               ; preds = %52
  %67 = call i8* @halide_string_to_string(i8* %62, i8* %63, i8* nonnull %60) #6
  br label %68

68:                                               ; preds = %64, %66
  %69 = phi i8* [ %67, %66 ], [ %65, %64 ]
  store i8* %69, i8** %10, align 8, !tbaa !57
  %70 = load i8*, i8** %12, align 8, !tbaa !58
  %71 = call i8* @halide_string_to_string(i8* %69, i8* %70, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6
  store i8* %71, i8** %10, align 8, !tbaa !57
  %72 = load i8*, i8** %12, align 8, !tbaa !58
  %73 = call i8* @halide_string_to_string(i8* %71, i8* %72, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0)) #6
  store i8* %73, i8** %10, align 8, !tbaa !57
  %74 = load i8*, i8** %12, align 8, !tbaa !58
  %75 = fpext float %44 to double
  %76 = call i8* @halide_double_to_string(i8* %73, i8* %74, double %75, i32 0) #6
  store i8* %76, i8** %10, align 8, !tbaa !57
  %77 = load i8*, i8** %12, align 8, !tbaa !58
  %78 = call i8* @halide_string_to_string(i8* %76, i8* %77, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #6
  store i8* %78, i8** %10, align 8, !tbaa !57
  %79 = load i8*, i8** %12, align 8, !tbaa !58
  %80 = call i8* @halide_string_to_string(i8* %78, i8* %79, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)) #6
  store i8* %80, i8** %10, align 8, !tbaa !57
  %81 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 12
  %82 = load i32, i32* %81, align 4, !tbaa !22
  %83 = load i8*, i8** %12, align 8, !tbaa !58
  %84 = sext i32 %82 to i64
  %85 = call i8* @halide_int64_to_string(i8* %80, i8* %83, i64 %84, i32 1) #6
  store i8* %85, i8** %10, align 8, !tbaa !57
  %86 = load i8*, i8** %12, align 8, !tbaa !58
  %87 = call i8* @halide_string_to_string(i8* %85, i8* %86, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #6
  store i8* %87, i8** %10, align 8, !tbaa !57
  %88 = load i32, i32* %45, align 8, !tbaa !20
  %89 = load i8*, i8** %12, align 8, !tbaa !58
  %90 = sext i32 %88 to i64
  %91 = call i8* @halide_int64_to_string(i8* %87, i8* %89, i64 %90, i32 1) #6
  store i8* %91, i8** %10, align 8, !tbaa !57
  %92 = load i8*, i8** %12, align 8, !tbaa !58
  %93 = call i8* @halide_string_to_string(i8* %91, i8* %92, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)) #6
  store i8* %93, i8** %10, align 8, !tbaa !57
  %94 = load i32, i32* %45, align 8, !tbaa !20
  %95 = sitofp i32 %94 to float
  %96 = fdiv float %44, %95
  %97 = load i8*, i8** %12, align 8, !tbaa !58
  %98 = fpext float %96 to double
  %99 = call i8* @halide_double_to_string(i8* %93, i8* %97, double %98, i32 0) #6
  store i8* %99, i8** %10, align 8, !tbaa !57
  %100 = load i8*, i8** %12, align 8, !tbaa !58
  %101 = call i8* @halide_string_to_string(i8* %99, i8* %100, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #6
  store i8* %101, i8** %10, align 8, !tbaa !57
  br i1 %58, label %115, label %102

102:                                              ; preds = %68
  %103 = uitofp i64 %55 to double
  %104 = uitofp i64 %57 to double
  %105 = fadd double %104, 1.000000e-10
  %106 = fdiv double %103, %105
  %107 = fptrunc double %106 to float
  %108 = load i8*, i8** %12, align 8, !tbaa !58
  %109 = call i8* @halide_string_to_string(i8* %101, i8* %108, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #6
  store i8* %109, i8** %10, align 8, !tbaa !57
  %110 = load i8*, i8** %12, align 8, !tbaa !58
  %111 = fpext float %107 to double
  %112 = call i8* @halide_double_to_string(i8* %109, i8* %110, double %111, i32 0) #6
  store i8* %112, i8** %10, align 8, !tbaa !57
  %113 = load i8*, i8** %12, align 8, !tbaa !58
  %114 = call i8* @halide_string_to_string(i8* %112, i8* %113, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6
  store i8* %114, i8** %10, align 8, !tbaa !57
  br label %115

115:                                              ; preds = %102, %68
  %116 = phi i8* [ %114, %102 ], [ %101, %68 ]
  %117 = load i8*, i8** %12, align 8, !tbaa !58
  %118 = call i8* @halide_string_to_string(i8* %116, i8* %117, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)) #6
  store i8* %118, i8** %10, align 8, !tbaa !57
  %119 = load i32, i32* %53, align 8, !tbaa !26
  %120 = load i8*, i8** %12, align 8, !tbaa !58
  %121 = sext i32 %119 to i64
  %122 = call i8* @halide_int64_to_string(i8* %118, i8* %120, i64 %121, i32 1) #6
  store i8* %122, i8** %10, align 8, !tbaa !57
  %123 = load i8*, i8** %12, align 8, !tbaa !58
  %124 = call i8* @halide_string_to_string(i8* %122, i8* %123, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0)) #6
  store i8* %124, i8** %10, align 8, !tbaa !57
  %125 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 2
  %126 = load i64, i64* %125, align 8, !tbaa !24
  %127 = load i8*, i8** %12, align 8, !tbaa !58
  %128 = call i8* @halide_uint64_to_string(i8* %124, i8* %127, i64 %126, i32 1) #6
  store i8* %128, i8** %10, align 8, !tbaa !57
  %129 = load i8*, i8** %12, align 8, !tbaa !58
  %130 = call i8* @halide_string_to_string(i8* %128, i8* %129, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #6
  store i8* %130, i8** %10, align 8, !tbaa !57
  %131 = load i8*, i8** %9, align 8, !tbaa !60
  %132 = icmp eq i8* %131, null
  br i1 %132, label %141, label %133

133:                                              ; preds = %115
  %134 = load i8*, i8** %7, align 8, !tbaa !53
  %135 = ptrtoint i8* %130 to i64
  %136 = ptrtoint i8* %131 to i64
  %137 = add i64 %135, 1
  %138 = sub i64 %137, %136
  %139 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %134, i8* nonnull %131, i64 %138) #6
  %140 = load i8*, i8** %9, align 8, !tbaa !60
  br label %141

141:                                              ; preds = %115, %133
  %142 = phi i8* [ %140, %133 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), %115 ]
  call void @halide_print(i8* %0, i8* %142) #6
  %143 = load i64, i64* %41, align 8, !tbaa !21
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %165

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 3
  %147 = load i64, i64* %146, align 8, !tbaa !25
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 9
  %151 = load i32, i32* %150, align 8, !tbaa !11
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %422

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 7
  %155 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %154, align 8, !tbaa !29
  %156 = sext i32 %151 to i64
  br label %159

157:                                              ; preds = %159
  %158 = icmp slt i64 %164, %156
  br i1 %158, label %159, label %422, !llvm.loop !62

159:                                              ; preds = %153, %157
  %160 = phi i64 [ 0, %153 ], [ %164, %157 ]
  %161 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %155, i64 %160, i32 4
  %162 = load i64, i64* %161, align 8, !tbaa !38
  %163 = icmp eq i64 %162, 0
  %164 = add nuw nsw i64 %160, 1
  br i1 %163, label %157, label %165

165:                                              ; preds = %159, %145, %141
  %166 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 9
  %167 = load i32, i32* %166, align 8, !tbaa !11
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %422

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 7
  br label %171

171:                                              ; preds = %169, %417
  %172 = phi i64 [ 0, %169 ], [ %418, %417 ]
  %173 = load i8*, i8** %9, align 8, !tbaa !60
  store i8* %173, i8** %10, align 8, !tbaa !57
  %174 = icmp eq i8* %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %171
  store i8 0, i8* %173, align 1, !tbaa !59
  br label %176

176:                                              ; preds = %171, %175
  %177 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %170, align 8, !tbaa !29
  %178 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172
  %179 = icmp eq i64 %172, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i64 0, i32 0
  %182 = load i64, i64* %181, align 8, !tbaa !30
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %417, label %184

184:                                              ; preds = %180, %176
  %185 = load i8*, i8** %10, align 8, !tbaa !57
  %186 = load i8*, i8** %12, align 8, !tbaa !58
  %187 = call i8* @halide_string_to_string(i8* %185, i8* %186, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0)) #6
  store i8* %187, i8** %10, align 8, !tbaa !57
  %188 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 7
  %189 = load i8*, i8** %188, align 8, !tbaa !33
  %190 = icmp eq i8* %189, null
  %191 = load i8*, i8** %12, align 8, !tbaa !58
  br i1 %190, label %192, label %194

192:                                              ; preds = %184
  %193 = call i8* @halide_string_to_string(i8* %187, i8* %191, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)) #6
  br label %196

194:                                              ; preds = %184
  %195 = call i8* @halide_string_to_string(i8* %187, i8* %191, i8* nonnull %189) #6
  br label %196

196:                                              ; preds = %192, %194
  %197 = phi i8* [ %195, %194 ], [ %193, %192 ]
  store i8* %197, i8** %10, align 8, !tbaa !57
  %198 = load i8*, i8** %12, align 8, !tbaa !58
  %199 = call i8* @halide_string_to_string(i8* %197, i8* %198, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #6
  store i8* %199, i8** %10, align 8, !tbaa !57
  %200 = load i8*, i8** %9, align 8, !tbaa !60
  %201 = ptrtoint i8* %199 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = icmp ult i64 %203, 25
  br i1 %204, label %205, label %214

205:                                              ; preds = %196, %205
  %206 = phi i8* [ %208, %205 ], [ %199, %196 ]
  %207 = load i8*, i8** %12, align 8, !tbaa !58
  %208 = call i8* @halide_string_to_string(i8* %206, i8* %207, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #6
  store i8* %208, i8** %10, align 8, !tbaa !57
  %209 = load i8*, i8** %9, align 8, !tbaa !60
  %210 = ptrtoint i8* %208 to i64
  %211 = ptrtoint i8* %209 to i64
  %212 = sub i64 %210, %211
  %213 = icmp ult i64 %212, 25
  br i1 %213, label %205, label %214, !llvm.loop !63

214:                                              ; preds = %205, %196
  %215 = phi i8* [ %199, %196 ], [ %208, %205 ]
  %216 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i64 0, i32 0
  %217 = load i64, i64* %216, align 8, !tbaa !30
  %218 = uitofp i64 %217 to float
  %219 = load i32, i32* %45, align 8, !tbaa !20
  %220 = sitofp i32 %219 to float
  %221 = fmul float %220, 1.000000e+06
  %222 = fdiv float %218, %221
  %223 = load i8*, i8** %12, align 8, !tbaa !58
  %224 = fpext float %222 to double
  %225 = call i8* @halide_double_to_string(i8* %215, i8* %223, double %224, i32 0) #6
  store i8* %225, i8** %10, align 8, !tbaa !57
  %226 = icmp eq i8* %225, null
  br i1 %226, label %233, label %227

227:                                              ; preds = %214
  %228 = getelementptr inbounds i8, i8* %225, i64 -3
  %229 = load i8*, i8** %9, align 8, !tbaa !60
  %230 = icmp ult i8* %228, %229
  %231 = select i1 %230, i8* %229, i8* %228
  store i8* %231, i8** %10, align 8
  store i8 0, i8* %231, align 1, !tbaa !59
  %232 = load i8*, i8** %10, align 8, !tbaa !57
  br label %233

233:                                              ; preds = %214, %227
  %234 = phi i8* [ null, %214 ], [ %232, %227 ]
  %235 = load i8*, i8** %12, align 8, !tbaa !58
  %236 = call i8* @halide_string_to_string(i8* %234, i8* %235, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #6
  store i8* %236, i8** %10, align 8, !tbaa !57
  %237 = load i8*, i8** %9, align 8, !tbaa !60
  %238 = ptrtoint i8* %236 to i64
  %239 = ptrtoint i8* %237 to i64
  %240 = sub i64 %238, %239
  %241 = icmp ult i64 %240, 35
  br i1 %241, label %242, label %251

242:                                              ; preds = %233, %242
  %243 = phi i8* [ %245, %242 ], [ %236, %233 ]
  %244 = load i8*, i8** %12, align 8, !tbaa !58
  %245 = call i8* @halide_string_to_string(i8* %243, i8* %244, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #6
  store i8* %245, i8** %10, align 8, !tbaa !57
  %246 = load i8*, i8** %9, align 8, !tbaa !60
  %247 = ptrtoint i8* %245 to i64
  %248 = ptrtoint i8* %246 to i64
  %249 = sub i64 %247, %248
  %250 = icmp ult i64 %249, 35
  br i1 %250, label %242, label %251, !llvm.loop !64

251:                                              ; preds = %242, %233
  %252 = phi i8* [ %236, %233 ], [ %245, %242 ]
  %253 = load i64, i64* %41, align 8, !tbaa !21
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %251
  %256 = load i64, i64* %216, align 8, !tbaa !30
  %257 = mul i64 %256, 100
  %258 = udiv i64 %257, %253
  br label %259

259:                                              ; preds = %255, %251
  %260 = phi i64 [ %258, %255 ], [ 0, %251 ]
  %261 = load i8*, i8** %12, align 8, !tbaa !58
  %262 = call i8* @halide_string_to_string(i8* %252, i8* %261, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6
  store i8* %262, i8** %10, align 8, !tbaa !57
  %263 = load i8*, i8** %12, align 8, !tbaa !58
  %264 = shl i64 %260, 32
  %265 = ashr exact i64 %264, 32
  %266 = call i8* @halide_int64_to_string(i8* %262, i8* %263, i64 %265, i32 1) #6
  store i8* %266, i8** %10, align 8, !tbaa !57
  %267 = load i8*, i8** %12, align 8, !tbaa !58
  %268 = call i8* @halide_string_to_string(i8* %266, i8* %267, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #6
  store i8* %268, i8** %10, align 8, !tbaa !57
  %269 = load i8*, i8** %9, align 8, !tbaa !60
  %270 = ptrtoint i8* %268 to i64
  %271 = ptrtoint i8* %269 to i64
  %272 = sub i64 %270, %271
  %273 = icmp ult i64 %272, 43
  br i1 %273, label %274, label %283

274:                                              ; preds = %259, %274
  %275 = phi i8* [ %277, %274 ], [ %268, %259 ]
  %276 = load i8*, i8** %12, align 8, !tbaa !58
  %277 = call i8* @halide_string_to_string(i8* %275, i8* %276, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #6
  store i8* %277, i8** %10, align 8, !tbaa !57
  %278 = load i8*, i8** %9, align 8, !tbaa !60
  %279 = ptrtoint i8* %277 to i64
  %280 = ptrtoint i8* %278 to i64
  %281 = sub i64 %279, %280
  %282 = icmp ult i64 %281, 43
  br i1 %282, label %274, label %283, !llvm.loop !65

283:                                              ; preds = %274, %259
  %284 = phi i8* [ %268, %259 ], [ %277, %274 ]
  br i1 %58, label %323, label %285

285:                                              ; preds = %283
  %286 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 5
  %287 = load i64, i64* %286, align 8, !tbaa !39
  %288 = uitofp i64 %287 to double
  %289 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 6
  %290 = load i64, i64* %289, align 8, !tbaa !40
  %291 = uitofp i64 %290 to double
  %292 = fadd double %291, 1.000000e-10
  %293 = fdiv double %288, %292
  %294 = fptrunc double %293 to float
  %295 = load i8*, i8** %12, align 8, !tbaa !58
  %296 = call i8* @halide_string_to_string(i8* %284, i8* %295, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0)) #6
  store i8* %296, i8** %10, align 8, !tbaa !57
  %297 = load i8*, i8** %12, align 8, !tbaa !58
  %298 = fpext float %294 to double
  %299 = call i8* @halide_double_to_string(i8* %296, i8* %297, double %298, i32 0) #6
  store i8* %299, i8** %10, align 8, !tbaa !57
  %300 = icmp eq i8* %299, null
  br i1 %300, label %307, label %301

301:                                              ; preds = %285
  %302 = getelementptr inbounds i8, i8* %299, i64 -3
  %303 = load i8*, i8** %9, align 8, !tbaa !60
  %304 = icmp ult i8* %302, %303
  %305 = select i1 %304, i8* %303, i8* %302
  store i8* %305, i8** %10, align 8
  store i8 0, i8* %305, align 1, !tbaa !59
  %306 = load i8*, i8** %10, align 8, !tbaa !57
  br label %307

307:                                              ; preds = %285, %301
  %308 = phi i8* [ null, %285 ], [ %306, %301 ]
  %309 = load i8*, i8** %9, align 8, !tbaa !60
  %310 = ptrtoint i8* %308 to i64
  %311 = ptrtoint i8* %309 to i64
  %312 = sub i64 %310, %311
  %313 = icmp ult i64 %312, 58
  br i1 %313, label %314, label %323

314:                                              ; preds = %307, %314
  %315 = phi i8* [ %317, %314 ], [ %308, %307 ]
  %316 = load i8*, i8** %12, align 8, !tbaa !58
  %317 = call i8* @halide_string_to_string(i8* %315, i8* %316, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #6
  store i8* %317, i8** %10, align 8, !tbaa !57
  %318 = load i8*, i8** %9, align 8, !tbaa !60
  %319 = ptrtoint i8* %317 to i64
  %320 = ptrtoint i8* %318 to i64
  %321 = sub i64 %319, %320
  %322 = icmp ult i64 %321, 58
  br i1 %322, label %314, label %323, !llvm.loop !66

323:                                              ; preds = %314, %307, %283
  %324 = phi i8* [ %284, %283 ], [ %308, %307 ], [ %317, %314 ]
  %325 = phi i64 [ 58, %283 ], [ 73, %307 ], [ 73, %314 ]
  %326 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 8
  %327 = load i32, i32* %326, align 8, !tbaa !37
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 3
  %331 = load i64, i64* %330, align 8, !tbaa !36
  %332 = sext i32 %327 to i64
  %333 = udiv i64 %331, %332
  br label %334

334:                                              ; preds = %329, %323
  %335 = phi i64 [ %333, %329 ], [ 0, %323 ]
  %336 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 2
  %337 = load i64, i64* %336, align 8, !tbaa !35
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %390, label %339

339:                                              ; preds = %334
  %340 = load i8*, i8** %12, align 8, !tbaa !58
  %341 = call i8* @halide_string_to_string(i8* %324, i8* %340, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0)) #6
  store i8* %341, i8** %10, align 8, !tbaa !57
  %342 = load i64, i64* %336, align 8, !tbaa !35
  %343 = load i8*, i8** %12, align 8, !tbaa !58
  %344 = call i8* @halide_uint64_to_string(i8* %341, i8* %343, i64 %342, i32 1) #6
  store i8* %344, i8** %10, align 8, !tbaa !57
  %345 = load i8*, i8** %9, align 8, !tbaa !60
  %346 = ptrtoint i8* %344 to i64
  %347 = ptrtoint i8* %345 to i64
  %348 = sub i64 %346, %347
  %349 = icmp ult i64 %348, %325
  br i1 %349, label %350, label %359

350:                                              ; preds = %339, %350
  %351 = phi i8* [ %353, %350 ], [ %344, %339 ]
  %352 = load i8*, i8** %12, align 8, !tbaa !58
  %353 = call i8* @halide_string_to_string(i8* %351, i8* %352, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #6
  store i8* %353, i8** %10, align 8, !tbaa !57
  %354 = load i8*, i8** %9, align 8, !tbaa !60
  %355 = ptrtoint i8* %353 to i64
  %356 = ptrtoint i8* %354 to i64
  %357 = sub i64 %355, %356
  %358 = icmp ult i64 %357, %325
  br i1 %358, label %350, label %359, !llvm.loop !67

359:                                              ; preds = %350, %339
  %360 = phi i8* [ %344, %339 ], [ %353, %350 ]
  %361 = load i8*, i8** %12, align 8, !tbaa !58
  %362 = call i8* @halide_string_to_string(i8* %360, i8* %361, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0)) #6
  store i8* %362, i8** %10, align 8, !tbaa !57
  %363 = load i32, i32* %326, align 8, !tbaa !37
  %364 = load i8*, i8** %12, align 8, !tbaa !58
  %365 = sext i32 %363 to i64
  %366 = call i8* @halide_int64_to_string(i8* %362, i8* %364, i64 %365, i32 1) #6
  store i8* %366, i8** %10, align 8, !tbaa !57
  %367 = add nuw nsw i64 %325, 15
  %368 = load i8*, i8** %9, align 8, !tbaa !60
  %369 = ptrtoint i8* %366 to i64
  %370 = ptrtoint i8* %368 to i64
  %371 = sub i64 %369, %370
  %372 = icmp ult i64 %371, %367
  br i1 %372, label %373, label %382

373:                                              ; preds = %359, %373
  %374 = phi i8* [ %376, %373 ], [ %366, %359 ]
  %375 = load i8*, i8** %12, align 8, !tbaa !58
  %376 = call i8* @halide_string_to_string(i8* %374, i8* %375, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #6
  store i8* %376, i8** %10, align 8, !tbaa !57
  %377 = load i8*, i8** %9, align 8, !tbaa !60
  %378 = ptrtoint i8* %376 to i64
  %379 = ptrtoint i8* %377 to i64
  %380 = sub i64 %378, %379
  %381 = icmp ult i64 %380, %367
  br i1 %381, label %373, label %382, !llvm.loop !68

382:                                              ; preds = %373, %359
  %383 = phi i8* [ %366, %359 ], [ %376, %373 ]
  %384 = load i8*, i8** %12, align 8, !tbaa !58
  %385 = call i8* @halide_string_to_string(i8* %383, i8* %384, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)) #6
  store i8* %385, i8** %10, align 8, !tbaa !57
  %386 = load i8*, i8** %12, align 8, !tbaa !58
  %387 = shl i64 %335, 32
  %388 = ashr exact i64 %387, 32
  %389 = call i8* @halide_int64_to_string(i8* %385, i8* %386, i64 %388, i32 1) #6
  store i8* %389, i8** %10, align 8, !tbaa !57
  br label %390

390:                                              ; preds = %382, %334
  %391 = phi i8* [ %389, %382 ], [ %324, %334 ]
  %392 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 4
  %393 = load i64, i64* %392, align 8, !tbaa !38
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %401, label %395

395:                                              ; preds = %390
  %396 = load i8*, i8** %12, align 8, !tbaa !58
  %397 = call i8* @halide_string_to_string(i8* %391, i8* %396, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)) #6
  store i8* %397, i8** %10, align 8, !tbaa !57
  %398 = load i64, i64* %392, align 8, !tbaa !38
  %399 = load i8*, i8** %12, align 8, !tbaa !58
  %400 = call i8* @halide_uint64_to_string(i8* %397, i8* %399, i64 %398, i32 1) #6
  store i8* %400, i8** %10, align 8, !tbaa !57
  br label %401

401:                                              ; preds = %395, %390
  %402 = phi i8* [ %400, %395 ], [ %391, %390 ]
  %403 = load i8*, i8** %12, align 8, !tbaa !58
  %404 = call i8* @halide_string_to_string(i8* %402, i8* %403, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6
  store i8* %404, i8** %10, align 8, !tbaa !57
  %405 = load i8*, i8** %9, align 8, !tbaa !60
  %406 = icmp eq i8* %405, null
  br i1 %406, label %415, label %407

407:                                              ; preds = %401
  %408 = load i8*, i8** %7, align 8, !tbaa !53
  %409 = ptrtoint i8* %404 to i64
  %410 = ptrtoint i8* %405 to i64
  %411 = add i64 %409, 1
  %412 = sub i64 %411, %410
  %413 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %408, i8* nonnull %405, i64 %412) #6
  %414 = load i8*, i8** %9, align 8, !tbaa !60
  br label %415

415:                                              ; preds = %401, %407
  %416 = phi i8* [ %414, %407 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), %401 ]
  call void @halide_print(i8* %0, i8* %416) #6
  br label %417

417:                                              ; preds = %180, %415
  %418 = add nuw nsw i64 %172, 1
  %419 = load i32, i32* %166, align 8, !tbaa !11
  %420 = sext i32 %419 to i64
  %421 = icmp slt i64 %418, %420
  br i1 %421, label %171, label %422, !llvm.loop !69

422:                                              ; preds = %157, %417, %149, %165, %39
  %423 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 8
  %424 = bitcast i8** %423 to %struct.halide_profiler_pipeline_stats**
  %425 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %424, align 8, !tbaa !3
  %426 = icmp eq %struct.halide_profiler_pipeline_stats* %425, null
  br i1 %426, label %16, label %39, !llvm.loop !70
}

; Function Attrs: nounwind
define weak void @halide_profiler_report(i8* %0) local_unnamed_addr #4 {
  %2 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %3 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* %3) #6
  tail call void @halide_profiler_report_unlocked(i8* %0, %struct.halide_profiler_state* %2) #5
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %3) #6
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i64 0, i32 5
  %3 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %2, align 8, !tbaa !14
  %4 = icmp eq %struct.halide_profiler_pipeline_stats* %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %5
  %6 = phi %struct.halide_profiler_pipeline_stats* [ %14, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %6, i64 0, i32 8
  %8 = bitcast i8** %7 to %struct.halide_profiler_pipeline_stats**
  %9 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %8, align 8, !tbaa !17
  store %struct.halide_profiler_pipeline_stats* %9, %struct.halide_profiler_pipeline_stats** %2, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %6, i64 0, i32 7
  %11 = bitcast %struct.halide_profiler_func_stats** %10 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !29
  tail call void @free(i8* %12) #6
  %13 = bitcast %struct.halide_profiler_pipeline_stats* %6 to i8*
  tail call void @free(i8* nonnull %13) #6
  %14 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %2, align 8, !tbaa !14
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null
  br i1 %15, label %16, label %5, !llvm.loop !71

16:                                               ; preds = %5, %1
  %17 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i64 0, i32 2
  store i32 0, i32* %17, align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind
define weak void @halide_profiler_reset() local_unnamed_addr #4 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* %2) #6
  tail call void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* %1) #5
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %2) #6
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @halide_profiler_shutdown() #1 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 7
  %3 = load %struct.halide_thread*, %struct.halide_thread** %2, align 8, !tbaa !50
  %4 = icmp eq %struct.halide_thread* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 3
  store i32 -2, i32* %6, align 8, !tbaa !43
  tail call void @halide_join_thread(%struct.halide_thread* nonnull %3) #6
  store %struct.halide_thread* null, %struct.halide_thread** %2, align 8, !tbaa !50
  store i32 -1, i32* %6, align 8, !tbaa !43
  tail call void @halide_profiler_report_unlocked(i8* null, %struct.halide_profiler_state* nonnull %1) #5
  tail call void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* nonnull %1) #5
  br label %7

7:                                                ; preds = %0, %5
  ret void
}

declare void @halide_join_thread(%struct.halide_thread*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak void @halide_profiler_pipeline_end(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, i8* %1, i64 16
  %4 = bitcast i8* %3 to i32*
  store i32 -1, i32* %4, align 8, !tbaa !43
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
!8 = !{!"_ZTS30halide_profiler_pipeline_stats", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88}
!9 = !{!"long long", !5, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!8, !10, i64 72}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !4, i64 24}
!15 = !{!"_ZTS21halide_profiler_state", !16, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !4, i64 24, !4, i64 32, !4, i64 40}
!16 = !{!"_ZTS12halide_mutex", !5, i64 0}
!17 = !{!8, !4, i64 64}
!18 = !{!15, !10, i64 12}
!19 = !{!8, !10, i64 76}
!20 = !{!8, !10, i64 80}
!21 = !{!8, !9, i64 0}
!22 = !{!8, !10, i64 84}
!23 = !{!8, !9, i64 8}
!24 = !{!8, !9, i64 16}
!25 = !{!8, !9, i64 24}
!26 = !{!8, !10, i64 88}
!27 = !{!8, !9, i64 32}
!28 = !{!8, !9, i64 40}
!29 = !{!8, !4, i64 56}
!30 = !{!31, !9, i64 0}
!31 = !{!"_ZTS26halide_profiler_func_stats", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !4, i64 56, !10, i64 64}
!32 = !{!9, !9, i64 0}
!33 = !{!31, !4, i64 56}
!34 = !{!31, !9, i64 8}
!35 = !{!31, !9, i64 16}
!36 = !{!31, !9, i64 24}
!37 = !{!31, !10, i64 64}
!38 = !{!31, !9, i64 32}
!39 = !{!31, !9, i64 40}
!40 = !{!31, !9, i64 48}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = !{!15, !10, i64 16}
!44 = distinct !{!44, !13}
!45 = !{!15, !4, i64 32}
!46 = !{!10, !10, i64 0}
!47 = !{!15, !10, i64 20}
!48 = !{!15, !10, i64 8}
!49 = distinct !{!49, !13}
!50 = !{!15, !4, i64 40}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = !{!54, !4, i64 24}
!54 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEE", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !55, i64 32, !5, i64 33}
!55 = !{!"bool", !5, i64 0}
!56 = !{!54, !55, i64 32}
!57 = !{!54, !4, i64 8}
!58 = !{!54, !4, i64 16}
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
