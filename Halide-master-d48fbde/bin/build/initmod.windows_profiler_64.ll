; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_profiler.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_profiler.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-windows-msvc19.11.0"

%struct.halide_profiler_state = type { %struct.halide_mutex, i32, i32, i32, i32, %struct.halide_profiler_pipeline_stats*, void (i32*, i32*)*, %struct.halide_thread* }
%struct.halide_mutex = type { [1 x i64] }
%struct.halide_profiler_pipeline_stats = type { i64, i64, i64, i64, i64, i64, i8*, %struct.halide_profiler_func_stats*, i8*, i32, i32, i32, i32, i32, [4 x i8] }
%struct.halide_profiler_func_stats = type { i64, i64, i64, i64, i64, i64, i64, i8*, i32, [4 x i8] }
%struct.halide_thread = type opaque
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type { i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }

$"??_C@_0HC@NOIAIGCC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HC@MJAJLJCF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GM@GJMNAOKK@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HM@KEKFGDCE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HC@PMOKBCNB@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0GM@CDNILHME@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_0HM@CMPHPLIB@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_0O@BGKKBPNB@?5total?5time?3?5?$AA@" = comdat any

$"??_C@_03DKJEPNJL@?5ms?$AA@" = comdat any

$"??_C@_0M@HBNPAI@?5?5samples?3?5?$AA@" = comdat any

$"??_C@_08KBJJNEGO@?5?5runs?3?5?$AA@" = comdat any

$"??_C@_0N@CEEGKBED@?5?5time?1run?3?5?$AA@" = comdat any

$"??_C@_04JNAIDGLL@?5ms?6?$AA@" = comdat any

$"??_C@_0BI@CMGBJPNG@?5average?5threads?5used?3?5?$AA@" = comdat any

$"??_C@_0BE@BOGLMGMN@?5heap?5allocations?3?5?$AA@" = comdat any

$"??_C@_0BE@CEBPNHKJ@?5?5peak?5heap?5usage?3?5?$AA@" = comdat any

$"??_C@_07PPFNDMLI@?5bytes?6?$AA@" = comdat any

$"??_C@_02KNHHEEKP@?5?5?$AA@" = comdat any

$"??_C@_02LMMGGCAJ@?3?5?$AA@" = comdat any

$"??_C@_01CLKCMJKC@?5?$AA@" = comdat any

$"??_C@_02EEKDFEKL@ms?$AA@" = comdat any

$"??_C@_01ODHLEDKK@?$CI?$AA@" = comdat any

$"??_C@_02HKHODNAN@?$CF?$CJ?$AA@" = comdat any

$"??_C@_09FJHPCCJM@threads?3?5?$AA@" = comdat any

$"??_C@_07CDPHGGBJ@?5peak?3?5?$AA@" = comdat any

$"??_C@_06NLNGHDLC@?5num?3?5?$AA@" = comdat any

$"??_C@_06CJNFLND@?5avg?3?5?$AA@" = comdat any

$"??_C@_08OMJKOODN@?5stack?3?5?$AA@" = comdat any

$"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@" = comdat any

$"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@" = comdat any

@"?s@?1??halide_profiler_get_state@@9@4Uhalide_profiler_state@@A" = internal global %struct.halide_profiler_state { %struct.halide_mutex zeroinitializer, i32 1, i32 0, i32 0, i32 0, %struct.halide_profiler_pipeline_stats* null, void (i32*, i32*)* null, %struct.halide_thread* null }, align 8
@"??_C@_0HC@NOIAIGCC@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [114 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp:207 Assert failed: p_stats != nullptr\0A\00", comdat, align 1
@"??_C@_0HC@MJAJLJCF@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [114 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp:234 Assert failed: p_stats != nullptr\0A\00", comdat, align 1
@"??_C@_0GM@GJMNAOKK@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp:235 Assert failed: func_id >= 0\0A\00", comdat, align 1
@"??_C@_0HM@KEKFGDCE@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [124 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp:236 Assert failed: func_id < p_stats->num_funcs\0A\00", comdat, align 1
@"??_C@_0HC@PMOKBCNB@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [114 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp:270 Assert failed: p_stats != nullptr\0A\00", comdat, align 1
@"??_C@_0GM@CDNILHME@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp:271 Assert failed: func_id >= 0\0A\00", comdat, align 1
@"??_C@_0HM@CMPHPLIB@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [124 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp:272 Assert failed: func_id < p_stats->num_funcs\0A\00", comdat, align 1
@"??_C@_01EEMJAFIK@?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"\0A\00", comdat, align 1
@"??_C@_0O@BGKKBPNB@?5total?5time?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c" total time: \00", comdat, align 1
@"??_C@_03DKJEPNJL@?5ms?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c" ms\00", comdat, align 1
@"??_C@_0M@HBNPAI@?5?5samples?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [12 x i8] c"  samples: \00", comdat, align 1
@"??_C@_08KBJJNEGO@?5?5runs?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [9 x i8] c"  runs: \00", comdat, align 1
@"??_C@_0N@CEEGKBED@?5?5time?1run?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"  time/run: \00", comdat, align 1
@"??_C@_04JNAIDGLL@?5ms?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [5 x i8] c" ms\0A\00", comdat, align 1
@"??_C@_0BI@CMGBJPNG@?5average?5threads?5used?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [24 x i8] c" average threads used: \00", comdat, align 1
@"??_C@_0BE@BOGLMGMN@?5heap?5allocations?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c" heap allocations: \00", comdat, align 1
@"??_C@_0BE@CEBPNHKJ@?5?5peak?5heap?5usage?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"  peak heap usage: \00", comdat, align 1
@"??_C@_07PPFNDMLI@?5bytes?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c" bytes\0A\00", comdat, align 1
@"??_C@_02KNHHEEKP@?5?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"  \00", comdat, align 1
@"??_C@_02LMMGGCAJ@?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c": \00", comdat, align 1
@"??_C@_01CLKCMJKC@?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c" \00", comdat, align 1
@"??_C@_02EEKDFEKL@ms?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"ms\00", comdat, align 1
@"??_C@_01ODHLEDKK@?$CI?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"(\00", comdat, align 1
@"??_C@_02HKHODNAN@?$CF?$CJ?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"%)\00", comdat, align 1
@"??_C@_09FJHPCCJM@threads?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [10 x i8] c"threads: \00", comdat, align 1
@"??_C@_07CDPHGGBJ@?5peak?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c" peak: \00", comdat, align 1
@"??_C@_06NLNGHDLC@?5num?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [7 x i8] c" num: \00", comdat, align 1
@"??_C@_06CJNFLND@?5avg?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [7 x i8] c" avg: \00", comdat, align 1
@"??_C@_08OMJKOODN@?5stack?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [9 x i8] c" stack: \00", comdat, align 1
@"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@" = linkonce_odr dso_local unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", comdat, align 1
@"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@" = linkonce_odr dso_local unnamed_addr constant [10 x i8] c"<nullptr>\00", comdat, align 1

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local %struct.halide_profiler_state* @halide_profiler_get_state() local_unnamed_addr #0 {
  ret %struct.halide_profiler_state* @"?s@?1??halide_profiler_get_state@@9@4Uhalide_profiler_state@@A"
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_profiler_pipeline_stats* @"?find_or_create_pipeline@Internal@Runtime@Halide@@YAPEAUhalide_profiler_pipeline_stats@@PEBDHPEB_K@Z"(i8* %0, i32 %1, i64* %2) local_unnamed_addr #1 {
  %4 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 5
  %6 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %5, align 8, !tbaa !2
  %7 = icmp eq %struct.halide_profiler_pipeline_stats* %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %3, %17
  %9 = phi %struct.halide_profiler_pipeline_stats* [ %20, %17 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 6
  %11 = load i8*, i8** %10, align 8, !tbaa !6
  %12 = icmp eq i8* %11, %0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 9
  %15 = load i32, i32* %14, align 8, !tbaa !10
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %87, label %17

17:                                               ; preds = %8, %13
  %18 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 8
  %19 = bitcast i8** %18 to %struct.halide_profiler_pipeline_stats**
  %20 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %19, align 8, !tbaa !2
  %21 = icmp eq %struct.halide_profiler_pipeline_stats* %20, null
  br i1 %21, label %22, label %8, !llvm.loop !11

22:                                               ; preds = %17, %3
  %23 = tail call i8* @malloc(i64 96) #6
  %24 = bitcast i8* %23 to %struct.halide_profiler_pipeline_stats*
  %25 = icmp eq i8* %23, null
  br i1 %25, label %87, label %26

26:                                               ; preds = %22
  %27 = bitcast %struct.halide_profiler_pipeline_stats** %5 to i8**
  %28 = load i8*, i8** %27, align 8, !tbaa !13
  %29 = getelementptr inbounds i8, i8* %23, i64 64
  %30 = bitcast i8* %29 to i8**
  store i8* %28, i8** %30, align 8, !tbaa !16
  %31 = getelementptr inbounds i8, i8* %23, i64 48
  %32 = bitcast i8* %31 to i8**
  store i8* %0, i8** %32, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 2
  %34 = load i32, i32* %33, align 4, !tbaa !17
  %35 = getelementptr inbounds i8, i8* %23, i64 76
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 4, !tbaa !18
  %37 = getelementptr inbounds i8, i8* %23, i64 72
  %38 = bitcast i8* %37 to i32*
  store i32 %1, i32* %38, align 8, !tbaa !10
  %39 = getelementptr inbounds i8, i8* %23, i64 80
  %40 = bitcast i8* %39 to i32*
  store i32 0, i32* %40, align 8, !tbaa !19
  %41 = bitcast i8* %23 to i64*
  store i64 0, i64* %41, align 8, !tbaa !20
  %42 = getelementptr inbounds i8, i8* %23, i64 84
  %43 = bitcast i8* %42 to i32*
  store i32 0, i32* %43, align 4, !tbaa !21
  %44 = getelementptr inbounds i8, i8* %23, i64 8
  %45 = bitcast i8* %44 to i64*
  store i64 0, i64* %45, align 8, !tbaa !22
  %46 = getelementptr inbounds i8, i8* %23, i64 16
  %47 = bitcast i8* %46 to i64*
  store i64 0, i64* %47, align 8, !tbaa !23
  %48 = getelementptr inbounds i8, i8* %23, i64 24
  %49 = bitcast i8* %48 to i64*
  store i64 0, i64* %49, align 8, !tbaa !24
  %50 = getelementptr inbounds i8, i8* %23, i64 88
  %51 = bitcast i8* %50 to i32*
  store i32 0, i32* %51, align 8, !tbaa !25
  %52 = getelementptr inbounds i8, i8* %23, i64 32
  %53 = bitcast i8* %52 to i64*
  store i64 0, i64* %53, align 8, !tbaa !26
  %54 = getelementptr inbounds i8, i8* %23, i64 40
  %55 = bitcast i8* %54 to i64*
  store i64 0, i64* %55, align 8, !tbaa !27
  %56 = sext i32 %1 to i64
  %57 = mul nsw i64 %56, 72
  %58 = tail call i8* @malloc(i64 %57) #6
  %59 = getelementptr inbounds i8, i8* %23, i64 56
  %60 = bitcast i8* %59 to i8**
  store i8* %58, i8** %60, align 8, !tbaa !28
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
  %69 = load i32, i32* %33, align 4, !tbaa !17
  %70 = add nsw i32 %69, %1
  store i32 %70, i32* %33, align 4, !tbaa !17
  store i8* %23, i8** %27, align 8, !tbaa !13
  br label %87

71:                                               ; preds = %65, %71
  %72 = phi i64 [ 0, %65 ], [ %85, %71 ]
  %73 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 0
  store i64 0, i64* %73, align 8, !tbaa !29
  %74 = getelementptr inbounds i64, i64* %2, i64 %72
  %75 = load i64, i64* %74, align 8, !tbaa !31
  %76 = inttoptr i64 %75 to i8*
  %77 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 7
  store i8* %76, i8** %77, align 8, !tbaa !32
  %78 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 1
  store i64 0, i64* %78, align 8, !tbaa !33
  %79 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 2
  store i64 0, i64* %79, align 8, !tbaa !34
  %80 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 3
  store i64 0, i64* %80, align 8, !tbaa !35
  %81 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 8
  store i32 0, i32* %81, align 8, !tbaa !36
  %82 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 4
  store i64 0, i64* %82, align 8, !tbaa !37
  %83 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 5
  store i64 0, i64* %83, align 8, !tbaa !38
  %84 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 6
  store i64 0, i64* %84, align 8, !tbaa !39
  %85 = add nuw nsw i64 %72, 1
  %86 = icmp eq i64 %85, %66
  br i1 %86, label %68, label %71, !llvm.loop !40

87:                                               ; preds = %13, %67, %68, %22
  %88 = phi %struct.halide_profiler_pipeline_stats* [ %24, %68 ], [ null, %67 ], [ null, %22 ], [ %9, %13 ]
  ret %struct.halide_profiler_pipeline_stats* %88
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i8* @malloc(i64) local_unnamed_addr #3

declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?bill_func@Internal@Runtime@Halide@@YAXPEAUhalide_profiler_state@@H_KH@Z"(%struct.halide_profiler_state* %0, i32 %1, i64 %2, i32 %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i64 0, i32 5
  %6 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %5, align 8, !tbaa !2
  %7 = icmp eq %struct.halide_profiler_pipeline_stats* %6, null
  br i1 %7, label %61, label %8

8:                                                ; preds = %4, %56
  %9 = phi %struct.halide_profiler_pipeline_stats* [ %59, %56 ], [ %6, %4 ]
  %10 = phi %struct.halide_profiler_pipeline_stats* [ %9, %56 ], [ null, %4 ]
  %11 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 10
  %12 = load i32, i32* %11, align 4, !tbaa !18
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %56, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 9
  %16 = load i32, i32* %15, align 8, !tbaa !10
  %17 = add nsw i32 %16, %12
  %18 = icmp sgt i32 %17, %1
  br i1 %18, label %19, label %56

19:                                               ; preds = %14
  %20 = icmp eq %struct.halide_profiler_pipeline_stats* %10, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 8
  %23 = load i8*, i8** %22, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %10, i64 0, i32 8
  store i8* %23, i8** %24, align 8, !tbaa !16
  %25 = bitcast i8** %22 to %struct.halide_profiler_pipeline_stats**
  store %struct.halide_profiler_pipeline_stats* %6, %struct.halide_profiler_pipeline_stats** %25, align 8, !tbaa !16
  store %struct.halide_profiler_pipeline_stats* %9, %struct.halide_profiler_pipeline_stats** %5, align 8, !tbaa !13
  br label %26

26:                                               ; preds = %21, %19
  %27 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 7
  %28 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %27, align 8, !tbaa !28
  %29 = sext i32 %1 to i64
  %30 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %28, i64 %29
  %31 = sext i32 %12 to i64
  %32 = sub nsw i64 0, %31
  %33 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %30, i64 %32
  %34 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %33, i64 0, i32 0
  %35 = load i64, i64* %34, align 8, !tbaa !29
  %36 = add i64 %35, %2
  store i64 %36, i64* %34, align 8, !tbaa !29
  %37 = sext i32 %3 to i64
  %38 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %33, i64 0, i32 5
  %39 = load i64, i64* %38, align 8, !tbaa !38
  %40 = add i64 %39, %37
  store i64 %40, i64* %38, align 8, !tbaa !38
  %41 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %33, i64 0, i32 6
  %42 = load i64, i64* %41, align 8, !tbaa !39
  %43 = add i64 %42, 1
  store i64 %43, i64* %41, align 8, !tbaa !39
  %44 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !20
  %46 = add i64 %45, %2
  store i64 %46, i64* %44, align 8, !tbaa !20
  %47 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 12
  %48 = load i32, i32* %47, align 4, !tbaa !21
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4, !tbaa !21
  %50 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 4
  %51 = load i64, i64* %50, align 8, !tbaa !26
  %52 = add i64 %51, %37
  store i64 %52, i64* %50, align 8, !tbaa !26
  %53 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 5
  %54 = load i64, i64* %53, align 8, !tbaa !27
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8, !tbaa !27
  ret void

56:                                               ; preds = %14, %8
  %57 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 8
  %58 = bitcast i8** %57 to %struct.halide_profiler_pipeline_stats**
  %59 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %58, align 8, !tbaa !2
  %60 = icmp eq %struct.halide_profiler_pipeline_stats* %59, null
  br i1 %60, label %61, label %8, !llvm.loop !41

61:                                               ; preds = %56, %4
  ret void
}

; Function Attrs: nounwind
define weak dso_local void @"?sampling_profiler_thread@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* %5) #6
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 3
  %7 = load i32, i32* %6, align 8, !tbaa !42
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
  %16 = load i32, i32* %6, align 8, !tbaa !42
  %17 = icmp eq i32 %16, -2
  br i1 %17, label %39, label %18, !llvm.loop !43

18:                                               ; preds = %9, %15
  %19 = call i64 @halide_current_time_ns(i8* null) #6
  br label %20

20:                                               ; preds = %37, %18
  %21 = phi i64 [ %19, %18 ], [ %29, %37 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #7
  %22 = load void (i32*, i32*)*, void (i32*, i32*)** %12, align 8, !tbaa !44
  %23 = icmp eq void (i32*, i32*)* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call void %22(i32* nonnull %2, i32* nonnull %3) #6
  br label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 8, !tbaa !42
  store i32 %26, i32* %2, align 4, !tbaa !45
  %27 = load i32, i32* %13, align 4, !tbaa !46
  store i32 %27, i32* %3, align 4, !tbaa !45
  br label %28

28:                                               ; preds = %25, %24
  %29 = call i64 @halide_current_time_ns(i8* null) #6
  %30 = load i32, i32* %2, align 4, !tbaa !45
  %31 = icmp eq i32 %30, -2
  br i1 %31, label %15, label %32

32:                                               ; preds = %28
  %33 = icmp sgt i32 %30, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32, i32* %3, align 4, !tbaa !45
  %36 = sub i64 %29, %21
  call void @"?bill_func@Internal@Runtime@Halide@@YAXPEAUhalide_profiler_state@@H_KH@Z"(%struct.halide_profiler_state* nonnull %4, i32 %30, i64 %36, i32 %35) #5
  br label %37

37:                                               ; preds = %34, %32
  %38 = load i32, i32* %14, align 8, !tbaa !47
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

declare dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #3

declare extern_weak dso_local i64 @halide_current_time_ns(i8*) local_unnamed_addr #3

declare dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #3

declare extern_weak dso_local void @halide_sleep_ms(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local %struct.halide_profiler_pipeline_stats* @halide_profiler_get_pipeline_state(i8* %0) local_unnamed_addr #4 {
  %2 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %3 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* %3) #6
  %4 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i64 0, i32 5
  %5 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %4, align 8, !tbaa !2
  %6 = icmp eq %struct.halide_profiler_pipeline_stats* %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1, %12
  %8 = phi %struct.halide_profiler_pipeline_stats* [ %15, %12 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %8, i64 0, i32 6
  %10 = load i8*, i8** %9, align 8, !tbaa !6
  %11 = icmp eq i8* %10, %0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %8, i64 0, i32 8
  %14 = bitcast i8** %13 to %struct.halide_profiler_pipeline_stats**
  %15 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %14, align 8, !tbaa !2
  %16 = icmp eq %struct.halide_profiler_pipeline_stats* %15, null
  br i1 %16, label %17, label %7, !llvm.loop !48

17:                                               ; preds = %12, %7, %1
  %18 = phi %struct.halide_profiler_pipeline_stats* [ null, %1 ], [ %8, %7 ], [ null, %12 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %3) #6
  ret %struct.halide_profiler_pipeline_stats* %18
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_profiler_pipeline_start(i8* %0, i8* %1, i32 %2, i64* %3) local_unnamed_addr #4 {
  %5 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %5, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* %6) #6
  %7 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %5, i64 0, i32 7
  %8 = load %struct.halide_thread*, %struct.halide_thread** %7, align 8, !tbaa !49
  %9 = icmp eq %struct.halide_thread* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = tail call i32 @halide_start_clock(i8* %0) #6
  %12 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @"?sampling_profiler_thread@Internal@Runtime@Halide@@YAXPEAX@Z", i8* null) #6
  store %struct.halide_thread* %12, %struct.halide_thread** %7, align 8, !tbaa !49
  br label %13

13:                                               ; preds = %10, %4
  %14 = tail call %struct.halide_profiler_pipeline_stats* @"?find_or_create_pipeline@Internal@Runtime@Halide@@YAPEAUhalide_profiler_pipeline_stats@@PEBDHPEB_K@Z"(i8* %1, i32 %2, i64* %3) #5
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 @halide_error_out_of_memory(i8* %0) #6
  br label %24

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %14, i64 0, i32 11
  %20 = load i32, i32* %19, align 8, !tbaa !19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %14, i64 0, i32 10
  %23 = load i32, i32* %22, align 4, !tbaa !18
  br label %24

24:                                               ; preds = %18, %16
  %25 = phi i32 [ %23, %18 ], [ %17, %16 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %6) #6
  ret i32 %25
}

declare extern_weak dso_local i32 @halide_start_clock(i8*) local_unnamed_addr #3

declare dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)*, i8*) local_unnamed_addr #3

declare dso_local i32 @halide_error_out_of_memory(i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_stack_peak_update(i8* %0, i8* %1, i64* %2) local_unnamed_addr #1 {
  %4 = icmp eq i8* %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @"??_C@_0HC@NOIAIGCC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %6

6:                                                ; preds = %5, %3
  %7 = getelementptr inbounds i8, i8* %1, i64 72
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !10
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
  %19 = load i64, i64* %18, align 8, !tbaa !31
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %13, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %22, i64 %17, i32 4
  %24 = load i64, i64* %23, align 8, !tbaa !31
  br label %25

25:                                               ; preds = %28, %21
  %26 = phi i64 [ %24, %21 ], [ %30, %28 ]
  %27 = icmp ult i64 %26, %19
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = cmpxchg i64* %23, i64 %26, i64 %19 seq_cst seq_cst
  %30 = extractvalue { i64, i1 } %29, 0
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %25, !llvm.loop !50

32:                                               ; preds = %25, %28
  %33 = load i32, i32* %8, align 8, !tbaa !10
  br label %34

34:                                               ; preds = %32, %15
  %35 = phi i32 [ %33, %32 ], [ %16, %15 ]
  %36 = add nuw nsw i64 %17, 1
  %37 = sext i32 %35 to i64
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %15, label %14, !llvm.loop !51
}

declare extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_memory_allocate(i8* %0, i8* %1, i32 %2, i64 %3) local_unnamed_addr #1 {
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %60, label %6

6:                                                ; preds = %4
  %7 = icmp eq i8* %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @"??_C@_0HC@MJAJLJCF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %9

9:                                                ; preds = %6, %8
  %10 = icmp sgt i32 %2, -1
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@GJMNAOKK@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %12

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds i8, i8* %1, i64 72
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !10
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @"??_C@_0HM@KEKFGDCE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %18

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds i8, i8* %1, i64 56
  %20 = bitcast i8* %19 to %struct.halide_profiler_func_stats**
  %21 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %20, align 8, !tbaa !28
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
  %35 = load i64, i64* %34, align 8, !tbaa !31
  br label %36

36:                                               ; preds = %39, %18
  %37 = phi i64 [ %35, %18 ], [ %41, %39 ]
  %38 = icmp ult i64 %37, %32
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = cmpxchg i64* %34, i64 %37, i64 %32 seq_cst seq_cst
  %41 = extractvalue { i64, i1 } %40, 0
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %36, !llvm.loop !50

43:                                               ; preds = %36, %39
  %44 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 8
  %45 = atomicrmw add i32* %44, i32 1 seq_cst
  %46 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 3
  %47 = atomicrmw add i64* %46, i64 %3 seq_cst
  %48 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 1
  %49 = atomicrmw add i64* %48, i64 %3 seq_cst
  %50 = add i64 %49, %3
  %51 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 2
  %52 = load i64, i64* %51, align 8, !tbaa !31
  br label %53

53:                                               ; preds = %56, %43
  %54 = phi i64 [ %52, %43 ], [ %58, %56 ]
  %55 = icmp ult i64 %54, %50
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = cmpxchg i64* %51, i64 %54, i64 %50 seq_cst seq_cst
  %58 = extractvalue { i64, i1 } %57, 0
  %59 = icmp eq i64 %54, %58
  br i1 %59, label %60, label %53, !llvm.loop !50

60:                                               ; preds = %56, %53, %4
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_memory_free(i8* %0, i8* %1, i32 %2, i64 %3) local_unnamed_addr #1 {
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = icmp eq i8* %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @"??_C@_0HC@PMOKBCNB@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %9

9:                                                ; preds = %6, %8
  %10 = icmp sgt i32 %2, -1
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@CDNILHME@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %12

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds i8, i8* %1, i64 72
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !10
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @"??_C@_0HM@CMPHPLIB@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %18

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds i8, i8* %1, i64 56
  %20 = bitcast i8* %19 to %struct.halide_profiler_func_stats**
  %21 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %20, align 8, !tbaa !28
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
define weak dso_local void @halide_profiler_report_unlocked(i8* %0, %struct.halide_profiler_state* %1) local_unnamed_addr #4 {
  %3 = alloca [1024 x i8], align 1
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %5) #7
  %6 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 3
  store i8* %0, i8** %7, align 8, !tbaa !52
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 4
  store i8 0, i8* %8, align 8, !tbaa !55
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 0
  store i8* %5, i8** %9, align 8
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 1
  store i8* %5, i8** %10, align 8, !tbaa !56
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 1023
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 2
  store i8* %11, i8** %12, align 8, !tbaa !57
  store i8 0, i8* %11, align 1, !tbaa !58
  %13 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 5
  %14 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %13, align 8, !tbaa !2
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null
  br i1 %15, label %21, label %39

16:                                               ; preds = %422
  %17 = load i8*, i8** %9, align 8, !tbaa !59
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8, !tbaa !52
  call void @halide_error(i8* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #6
  br label %30

21:                                               ; preds = %2, %16
  %22 = phi i8* [ %17, %16 ], [ %5, %2 ]
  %23 = load i8*, i8** %10, align 8, !tbaa !56
  %24 = load i8*, i8** %7, align 8, !tbaa !52
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %22 to i64
  %27 = sub i64 1, %26
  %28 = add i64 %27, %25
  %29 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %24, i8* nonnull %22, i64 %28) #6
  br label %30

30:                                               ; preds = %21, %19
  %31 = load i8, i8* %8, align 8, !tbaa !55, !range !60
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %9, align 8, !tbaa !59
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
  %42 = load i64, i64* %41, align 8, !tbaa !20
  %43 = uitofp i64 %42 to float
  %44 = fdiv float %43, 1.000000e+06
  %45 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 11
  %46 = load i32, i32* %45, align 8, !tbaa !19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %422, label %48

48:                                               ; preds = %39
  %49 = load i8*, i8** %9, align 8, !tbaa !59
  store i8* %49, i8** %10, align 8, !tbaa !56
  %50 = icmp eq i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i8 0, i8* %49, align 1, !tbaa !58
  br label %52

52:                                               ; preds = %48, %51
  %53 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 13
  %54 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 4
  %55 = load i64, i64* %54, align 8, !tbaa !26
  %56 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 5
  %57 = load i64, i64* %56, align 8, !tbaa !27
  %58 = icmp eq i64 %55, %57
  %59 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 6
  %60 = load i8*, i8** %59, align 8, !tbaa !6
  %61 = icmp eq i8* %60, null
  %62 = load i8*, i8** %12, align 8, !tbaa !57
  %63 = load i8*, i8** %10, align 8, !tbaa !56
  br i1 %61, label %64, label %66

64:                                               ; preds = %52
  %65 = call i8* @halide_string_to_string(i8* %63, i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #6
  br label %68

66:                                               ; preds = %52
  %67 = call i8* @halide_string_to_string(i8* %63, i8* %62, i8* nonnull %60) #6
  br label %68

68:                                               ; preds = %64, %66
  %69 = phi i8* [ %67, %66 ], [ %65, %64 ]
  store i8* %69, i8** %10, align 8, !tbaa !56
  %70 = load i8*, i8** %12, align 8, !tbaa !57
  %71 = call i8* @halide_string_to_string(i8* %69, i8* %70, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #6
  store i8* %71, i8** %10, align 8, !tbaa !56
  %72 = load i8*, i8** %12, align 8, !tbaa !57
  %73 = call i8* @halide_string_to_string(i8* %71, i8* %72, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@BGKKBPNB@?5total?5time?3?5?$AA@", i64 0, i64 0)) #6
  store i8* %73, i8** %10, align 8, !tbaa !56
  %74 = fpext float %44 to double
  %75 = load i8*, i8** %12, align 8, !tbaa !57
  %76 = call i8* @halide_double_to_string(i8* %73, i8* %75, double %74, i32 0) #6
  store i8* %76, i8** %10, align 8, !tbaa !56
  %77 = load i8*, i8** %12, align 8, !tbaa !57
  %78 = call i8* @halide_string_to_string(i8* %76, i8* %77, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @"??_C@_03DKJEPNJL@?5ms?$AA@", i64 0, i64 0)) #6
  store i8* %78, i8** %10, align 8, !tbaa !56
  %79 = load i8*, i8** %12, align 8, !tbaa !57
  %80 = call i8* @halide_string_to_string(i8* %78, i8* %79, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @"??_C@_0M@HBNPAI@?5?5samples?3?5?$AA@", i64 0, i64 0)) #6
  store i8* %80, i8** %10, align 8, !tbaa !56
  %81 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 12
  %82 = load i32, i32* %81, align 4, !tbaa !21
  %83 = sext i32 %82 to i64
  %84 = load i8*, i8** %12, align 8, !tbaa !57
  %85 = call i8* @halide_int64_to_string(i8* %80, i8* %84, i64 %83, i32 1) #6
  store i8* %85, i8** %10, align 8, !tbaa !56
  %86 = load i8*, i8** %12, align 8, !tbaa !57
  %87 = call i8* @halide_string_to_string(i8* %85, i8* %86, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08KBJJNEGO@?5?5runs?3?5?$AA@", i64 0, i64 0)) #6
  store i8* %87, i8** %10, align 8, !tbaa !56
  %88 = load i32, i32* %45, align 8, !tbaa !19
  %89 = sext i32 %88 to i64
  %90 = load i8*, i8** %12, align 8, !tbaa !57
  %91 = call i8* @halide_int64_to_string(i8* %87, i8* %90, i64 %89, i32 1) #6
  store i8* %91, i8** %10, align 8, !tbaa !56
  %92 = load i8*, i8** %12, align 8, !tbaa !57
  %93 = call i8* @halide_string_to_string(i8* %91, i8* %92, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@CEEGKBED@?5?5time?1run?3?5?$AA@", i64 0, i64 0)) #6
  store i8* %93, i8** %10, align 8, !tbaa !56
  %94 = load i32, i32* %45, align 8, !tbaa !19
  %95 = sitofp i32 %94 to float
  %96 = fdiv float %44, %95
  %97 = fpext float %96 to double
  %98 = load i8*, i8** %12, align 8, !tbaa !57
  %99 = call i8* @halide_double_to_string(i8* %93, i8* %98, double %97, i32 0) #6
  store i8* %99, i8** %10, align 8, !tbaa !56
  %100 = load i8*, i8** %12, align 8, !tbaa !57
  %101 = call i8* @halide_string_to_string(i8* %99, i8* %100, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @"??_C@_04JNAIDGLL@?5ms?6?$AA@", i64 0, i64 0)) #6
  store i8* %101, i8** %10, align 8, !tbaa !56
  br i1 %58, label %115, label %102

102:                                              ; preds = %68
  %103 = uitofp i64 %55 to double
  %104 = uitofp i64 %57 to double
  %105 = fadd double %104, 1.000000e-10
  %106 = fdiv double %103, %105
  %107 = fptrunc double %106 to float
  %108 = load i8*, i8** %12, align 8, !tbaa !57
  %109 = call i8* @halide_string_to_string(i8* %101, i8* %108, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@CMGBJPNG@?5average?5threads?5used?3?5?$AA@", i64 0, i64 0)) #6
  store i8* %109, i8** %10, align 8, !tbaa !56
  %110 = fpext float %107 to double
  %111 = load i8*, i8** %12, align 8, !tbaa !57
  %112 = call i8* @halide_double_to_string(i8* %109, i8* %111, double %110, i32 0) #6
  store i8* %112, i8** %10, align 8, !tbaa !56
  %113 = load i8*, i8** %12, align 8, !tbaa !57
  %114 = call i8* @halide_string_to_string(i8* %112, i8* %113, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #6
  store i8* %114, i8** %10, align 8, !tbaa !56
  br label %115

115:                                              ; preds = %102, %68
  %116 = phi i8* [ %114, %102 ], [ %101, %68 ]
  %117 = load i8*, i8** %12, align 8, !tbaa !57
  %118 = call i8* @halide_string_to_string(i8* %116, i8* %117, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@BOGLMGMN@?5heap?5allocations?3?5?$AA@", i64 0, i64 0)) #6
  store i8* %118, i8** %10, align 8, !tbaa !56
  %119 = load i32, i32* %53, align 8, !tbaa !25
  %120 = sext i32 %119 to i64
  %121 = load i8*, i8** %12, align 8, !tbaa !57
  %122 = call i8* @halide_int64_to_string(i8* %118, i8* %121, i64 %120, i32 1) #6
  store i8* %122, i8** %10, align 8, !tbaa !56
  %123 = load i8*, i8** %12, align 8, !tbaa !57
  %124 = call i8* @halide_string_to_string(i8* %122, i8* %123, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@CEBPNHKJ@?5?5peak?5heap?5usage?3?5?$AA@", i64 0, i64 0)) #6
  store i8* %124, i8** %10, align 8, !tbaa !56
  %125 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 2
  %126 = load i64, i64* %125, align 8, !tbaa !23
  %127 = load i8*, i8** %12, align 8, !tbaa !57
  %128 = call i8* @halide_uint64_to_string(i8* %124, i8* %127, i64 %126, i32 1) #6
  store i8* %128, i8** %10, align 8, !tbaa !56
  %129 = load i8*, i8** %12, align 8, !tbaa !57
  %130 = call i8* @halide_string_to_string(i8* %128, i8* %129, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07PPFNDMLI@?5bytes?6?$AA@", i64 0, i64 0)) #6
  store i8* %130, i8** %10, align 8, !tbaa !56
  %131 = load i8*, i8** %9, align 8, !tbaa !59
  %132 = icmp eq i8* %131, null
  br i1 %132, label %141, label %133

133:                                              ; preds = %115
  %134 = load i8*, i8** %7, align 8, !tbaa !52
  %135 = ptrtoint i8* %130 to i64
  %136 = ptrtoint i8* %131 to i64
  %137 = add i64 %135, 1
  %138 = sub i64 %137, %136
  %139 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %134, i8* nonnull %131, i64 %138) #6
  %140 = load i8*, i8** %9, align 8, !tbaa !59
  br label %141

141:                                              ; preds = %115, %133
  %142 = phi i8* [ %140, %133 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0), %115 ]
  call void @halide_print(i8* %0, i8* %142) #6
  %143 = load i64, i64* %41, align 8, !tbaa !20
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %165

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 3
  %147 = load i64, i64* %146, align 8, !tbaa !24
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 9
  %151 = load i32, i32* %150, align 8, !tbaa !10
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %422

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 7
  %155 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %154, align 8, !tbaa !28
  %156 = sext i32 %151 to i64
  br label %159

157:                                              ; preds = %159
  %158 = icmp slt i64 %164, %156
  br i1 %158, label %159, label %422, !llvm.loop !61

159:                                              ; preds = %153, %157
  %160 = phi i64 [ 0, %153 ], [ %164, %157 ]
  %161 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %155, i64 %160, i32 4
  %162 = load i64, i64* %161, align 8, !tbaa !37
  %163 = icmp eq i64 %162, 0
  %164 = add nuw nsw i64 %160, 1
  br i1 %163, label %157, label %165

165:                                              ; preds = %159, %145, %141
  %166 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 9
  %167 = load i32, i32* %166, align 8, !tbaa !10
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %422

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 7
  br label %171

171:                                              ; preds = %169, %417
  %172 = phi i64 [ 0, %169 ], [ %418, %417 ]
  %173 = load i8*, i8** %9, align 8, !tbaa !59
  store i8* %173, i8** %10, align 8, !tbaa !56
  %174 = icmp eq i8* %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %171
  store i8 0, i8* %173, align 1, !tbaa !58
  br label %176

176:                                              ; preds = %171, %175
  %177 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %170, align 8, !tbaa !28
  %178 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172
  %179 = icmp eq i64 %172, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i64 0, i32 0
  %182 = load i64, i64* %181, align 8, !tbaa !29
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %417, label %184

184:                                              ; preds = %180, %176
  %185 = load i8*, i8** %12, align 8, !tbaa !57
  %186 = load i8*, i8** %10, align 8, !tbaa !56
  %187 = call i8* @halide_string_to_string(i8* %186, i8* %185, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02KNHHEEKP@?5?5?$AA@", i64 0, i64 0)) #6
  store i8* %187, i8** %10, align 8, !tbaa !56
  %188 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 7
  %189 = load i8*, i8** %188, align 8, !tbaa !32
  %190 = icmp eq i8* %189, null
  %191 = load i8*, i8** %12, align 8, !tbaa !57
  br i1 %190, label %192, label %194

192:                                              ; preds = %184
  %193 = call i8* @halide_string_to_string(i8* %187, i8* %191, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #6
  br label %196

194:                                              ; preds = %184
  %195 = call i8* @halide_string_to_string(i8* %187, i8* %191, i8* nonnull %189) #6
  br label %196

196:                                              ; preds = %192, %194
  %197 = phi i8* [ %195, %194 ], [ %193, %192 ]
  store i8* %197, i8** %10, align 8, !tbaa !56
  %198 = load i8*, i8** %12, align 8, !tbaa !57
  %199 = call i8* @halide_string_to_string(i8* %197, i8* %198, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02LMMGGCAJ@?3?5?$AA@", i64 0, i64 0)) #6
  store i8* %199, i8** %10, align 8, !tbaa !56
  %200 = load i8*, i8** %9, align 8, !tbaa !59
  %201 = ptrtoint i8* %199 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = icmp ult i64 %203, 25
  br i1 %204, label %205, label %214

205:                                              ; preds = %196, %205
  %206 = phi i8* [ %208, %205 ], [ %199, %196 ]
  %207 = load i8*, i8** %12, align 8, !tbaa !57
  %208 = call i8* @halide_string_to_string(i8* %206, i8* %207, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0)) #6
  store i8* %208, i8** %10, align 8, !tbaa !56
  %209 = load i8*, i8** %9, align 8, !tbaa !59
  %210 = ptrtoint i8* %208 to i64
  %211 = ptrtoint i8* %209 to i64
  %212 = sub i64 %210, %211
  %213 = icmp ult i64 %212, 25
  br i1 %213, label %205, label %214, !llvm.loop !62

214:                                              ; preds = %205, %196
  %215 = phi i8* [ %199, %196 ], [ %208, %205 ]
  %216 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i64 0, i32 0
  %217 = load i64, i64* %216, align 8, !tbaa !29
  %218 = uitofp i64 %217 to float
  %219 = load i32, i32* %45, align 8, !tbaa !19
  %220 = sitofp i32 %219 to float
  %221 = fmul float %220, 1.000000e+06
  %222 = fdiv float %218, %221
  %223 = fpext float %222 to double
  %224 = load i8*, i8** %12, align 8, !tbaa !57
  %225 = call i8* @halide_double_to_string(i8* %215, i8* %224, double %223, i32 0) #6
  store i8* %225, i8** %10, align 8, !tbaa !56
  %226 = icmp eq i8* %225, null
  br i1 %226, label %233, label %227

227:                                              ; preds = %214
  %228 = getelementptr inbounds i8, i8* %225, i64 -3
  %229 = load i8*, i8** %9, align 8, !tbaa !59
  %230 = icmp ult i8* %228, %229
  %231 = select i1 %230, i8* %229, i8* %228
  store i8* %231, i8** %10, align 8
  store i8 0, i8* %231, align 1, !tbaa !58
  %232 = load i8*, i8** %10, align 8, !tbaa !56
  br label %233

233:                                              ; preds = %214, %227
  %234 = phi i8* [ null, %214 ], [ %232, %227 ]
  %235 = load i8*, i8** %12, align 8, !tbaa !57
  %236 = call i8* @halide_string_to_string(i8* %234, i8* %235, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02EEKDFEKL@ms?$AA@", i64 0, i64 0)) #6
  store i8* %236, i8** %10, align 8, !tbaa !56
  %237 = load i8*, i8** %9, align 8, !tbaa !59
  %238 = ptrtoint i8* %236 to i64
  %239 = ptrtoint i8* %237 to i64
  %240 = sub i64 %238, %239
  %241 = icmp ult i64 %240, 35
  br i1 %241, label %242, label %251

242:                                              ; preds = %233, %242
  %243 = phi i8* [ %245, %242 ], [ %236, %233 ]
  %244 = load i8*, i8** %12, align 8, !tbaa !57
  %245 = call i8* @halide_string_to_string(i8* %243, i8* %244, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0)) #6
  store i8* %245, i8** %10, align 8, !tbaa !56
  %246 = load i8*, i8** %9, align 8, !tbaa !59
  %247 = ptrtoint i8* %245 to i64
  %248 = ptrtoint i8* %246 to i64
  %249 = sub i64 %247, %248
  %250 = icmp ult i64 %249, 35
  br i1 %250, label %242, label %251, !llvm.loop !63

251:                                              ; preds = %242, %233
  %252 = phi i8* [ %236, %233 ], [ %245, %242 ]
  %253 = load i64, i64* %41, align 8, !tbaa !20
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %251
  %256 = load i64, i64* %216, align 8, !tbaa !29
  %257 = mul i64 %256, 100
  %258 = udiv i64 %257, %253
  br label %259

259:                                              ; preds = %255, %251
  %260 = phi i64 [ %258, %255 ], [ 0, %251 ]
  %261 = load i8*, i8** %12, align 8, !tbaa !57
  %262 = call i8* @halide_string_to_string(i8* %252, i8* %261, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01ODHLEDKK@?$CI?$AA@", i64 0, i64 0)) #6
  store i8* %262, i8** %10, align 8, !tbaa !56
  %263 = shl i64 %260, 32
  %264 = ashr exact i64 %263, 32
  %265 = load i8*, i8** %12, align 8, !tbaa !57
  %266 = call i8* @halide_int64_to_string(i8* %262, i8* %265, i64 %264, i32 1) #6
  store i8* %266, i8** %10, align 8, !tbaa !56
  %267 = load i8*, i8** %12, align 8, !tbaa !57
  %268 = call i8* @halide_string_to_string(i8* %266, i8* %267, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02HKHODNAN@?$CF?$CJ?$AA@", i64 0, i64 0)) #6
  store i8* %268, i8** %10, align 8, !tbaa !56
  %269 = load i8*, i8** %9, align 8, !tbaa !59
  %270 = ptrtoint i8* %268 to i64
  %271 = ptrtoint i8* %269 to i64
  %272 = sub i64 %270, %271
  %273 = icmp ult i64 %272, 43
  br i1 %273, label %274, label %283

274:                                              ; preds = %259, %274
  %275 = phi i8* [ %277, %274 ], [ %268, %259 ]
  %276 = load i8*, i8** %12, align 8, !tbaa !57
  %277 = call i8* @halide_string_to_string(i8* %275, i8* %276, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0)) #6
  store i8* %277, i8** %10, align 8, !tbaa !56
  %278 = load i8*, i8** %9, align 8, !tbaa !59
  %279 = ptrtoint i8* %277 to i64
  %280 = ptrtoint i8* %278 to i64
  %281 = sub i64 %279, %280
  %282 = icmp ult i64 %281, 43
  br i1 %282, label %274, label %283, !llvm.loop !64

283:                                              ; preds = %274, %259
  %284 = phi i8* [ %268, %259 ], [ %277, %274 ]
  br i1 %58, label %323, label %285

285:                                              ; preds = %283
  %286 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 5
  %287 = load i64, i64* %286, align 8, !tbaa !38
  %288 = uitofp i64 %287 to double
  %289 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 6
  %290 = load i64, i64* %289, align 8, !tbaa !39
  %291 = uitofp i64 %290 to double
  %292 = fadd double %291, 1.000000e-10
  %293 = fdiv double %288, %292
  %294 = fptrunc double %293 to float
  %295 = load i8*, i8** %12, align 8, !tbaa !57
  %296 = call i8* @halide_string_to_string(i8* %284, i8* %295, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09FJHPCCJM@threads?3?5?$AA@", i64 0, i64 0)) #6
  store i8* %296, i8** %10, align 8, !tbaa !56
  %297 = fpext float %294 to double
  %298 = load i8*, i8** %12, align 8, !tbaa !57
  %299 = call i8* @halide_double_to_string(i8* %296, i8* %298, double %297, i32 0) #6
  store i8* %299, i8** %10, align 8, !tbaa !56
  %300 = icmp eq i8* %299, null
  br i1 %300, label %307, label %301

301:                                              ; preds = %285
  %302 = getelementptr inbounds i8, i8* %299, i64 -3
  %303 = load i8*, i8** %9, align 8, !tbaa !59
  %304 = icmp ult i8* %302, %303
  %305 = select i1 %304, i8* %303, i8* %302
  store i8* %305, i8** %10, align 8
  store i8 0, i8* %305, align 1, !tbaa !58
  %306 = load i8*, i8** %10, align 8, !tbaa !56
  br label %307

307:                                              ; preds = %285, %301
  %308 = phi i8* [ null, %285 ], [ %306, %301 ]
  %309 = load i8*, i8** %9, align 8, !tbaa !59
  %310 = ptrtoint i8* %308 to i64
  %311 = ptrtoint i8* %309 to i64
  %312 = sub i64 %310, %311
  %313 = icmp ult i64 %312, 58
  br i1 %313, label %314, label %323

314:                                              ; preds = %307, %314
  %315 = phi i8* [ %317, %314 ], [ %308, %307 ]
  %316 = load i8*, i8** %12, align 8, !tbaa !57
  %317 = call i8* @halide_string_to_string(i8* %315, i8* %316, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0)) #6
  store i8* %317, i8** %10, align 8, !tbaa !56
  %318 = load i8*, i8** %9, align 8, !tbaa !59
  %319 = ptrtoint i8* %317 to i64
  %320 = ptrtoint i8* %318 to i64
  %321 = sub i64 %319, %320
  %322 = icmp ult i64 %321, 58
  br i1 %322, label %314, label %323, !llvm.loop !65

323:                                              ; preds = %314, %307, %283
  %324 = phi i8* [ %284, %283 ], [ %308, %307 ], [ %317, %314 ]
  %325 = phi i64 [ 58, %283 ], [ 73, %307 ], [ 73, %314 ]
  %326 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 8
  %327 = load i32, i32* %326, align 8, !tbaa !36
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 3
  %331 = load i64, i64* %330, align 8, !tbaa !35
  %332 = sext i32 %327 to i64
  %333 = udiv i64 %331, %332
  br label %334

334:                                              ; preds = %329, %323
  %335 = phi i64 [ %333, %329 ], [ 0, %323 ]
  %336 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 2
  %337 = load i64, i64* %336, align 8, !tbaa !34
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %390, label %339

339:                                              ; preds = %334
  %340 = load i8*, i8** %12, align 8, !tbaa !57
  %341 = call i8* @halide_string_to_string(i8* %324, i8* %340, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07CDPHGGBJ@?5peak?3?5?$AA@", i64 0, i64 0)) #6
  store i8* %341, i8** %10, align 8, !tbaa !56
  %342 = load i64, i64* %336, align 8, !tbaa !34
  %343 = load i8*, i8** %12, align 8, !tbaa !57
  %344 = call i8* @halide_uint64_to_string(i8* %341, i8* %343, i64 %342, i32 1) #6
  store i8* %344, i8** %10, align 8, !tbaa !56
  %345 = load i8*, i8** %9, align 8, !tbaa !59
  %346 = ptrtoint i8* %344 to i64
  %347 = ptrtoint i8* %345 to i64
  %348 = sub i64 %346, %347
  %349 = icmp ult i64 %348, %325
  br i1 %349, label %350, label %359

350:                                              ; preds = %339, %350
  %351 = phi i8* [ %353, %350 ], [ %344, %339 ]
  %352 = load i8*, i8** %12, align 8, !tbaa !57
  %353 = call i8* @halide_string_to_string(i8* %351, i8* %352, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0)) #6
  store i8* %353, i8** %10, align 8, !tbaa !56
  %354 = load i8*, i8** %9, align 8, !tbaa !59
  %355 = ptrtoint i8* %353 to i64
  %356 = ptrtoint i8* %354 to i64
  %357 = sub i64 %355, %356
  %358 = icmp ult i64 %357, %325
  br i1 %358, label %350, label %359, !llvm.loop !66

359:                                              ; preds = %350, %339
  %360 = phi i8* [ %344, %339 ], [ %353, %350 ]
  %361 = load i8*, i8** %12, align 8, !tbaa !57
  %362 = call i8* @halide_string_to_string(i8* %360, i8* %361, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06NLNGHDLC@?5num?3?5?$AA@", i64 0, i64 0)) #6
  store i8* %362, i8** %10, align 8, !tbaa !56
  %363 = load i32, i32* %326, align 8, !tbaa !36
  %364 = sext i32 %363 to i64
  %365 = load i8*, i8** %12, align 8, !tbaa !57
  %366 = call i8* @halide_int64_to_string(i8* %362, i8* %365, i64 %364, i32 1) #6
  store i8* %366, i8** %10, align 8, !tbaa !56
  %367 = add nuw nsw i64 %325, 15
  %368 = load i8*, i8** %9, align 8, !tbaa !59
  %369 = ptrtoint i8* %366 to i64
  %370 = ptrtoint i8* %368 to i64
  %371 = sub i64 %369, %370
  %372 = icmp ult i64 %371, %367
  br i1 %372, label %373, label %382

373:                                              ; preds = %359, %373
  %374 = phi i8* [ %376, %373 ], [ %366, %359 ]
  %375 = load i8*, i8** %12, align 8, !tbaa !57
  %376 = call i8* @halide_string_to_string(i8* %374, i8* %375, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0)) #6
  store i8* %376, i8** %10, align 8, !tbaa !56
  %377 = load i8*, i8** %9, align 8, !tbaa !59
  %378 = ptrtoint i8* %376 to i64
  %379 = ptrtoint i8* %377 to i64
  %380 = sub i64 %378, %379
  %381 = icmp ult i64 %380, %367
  br i1 %381, label %373, label %382, !llvm.loop !67

382:                                              ; preds = %373, %359
  %383 = phi i8* [ %366, %359 ], [ %376, %373 ]
  %384 = load i8*, i8** %12, align 8, !tbaa !57
  %385 = call i8* @halide_string_to_string(i8* %383, i8* %384, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06CJNFLND@?5avg?3?5?$AA@", i64 0, i64 0)) #6
  store i8* %385, i8** %10, align 8, !tbaa !56
  %386 = shl i64 %335, 32
  %387 = ashr exact i64 %386, 32
  %388 = load i8*, i8** %12, align 8, !tbaa !57
  %389 = call i8* @halide_int64_to_string(i8* %385, i8* %388, i64 %387, i32 1) #6
  store i8* %389, i8** %10, align 8, !tbaa !56
  br label %390

390:                                              ; preds = %382, %334
  %391 = phi i8* [ %389, %382 ], [ %324, %334 ]
  %392 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 4
  %393 = load i64, i64* %392, align 8, !tbaa !37
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %401, label %395

395:                                              ; preds = %390
  %396 = load i8*, i8** %12, align 8, !tbaa !57
  %397 = call i8* @halide_string_to_string(i8* %391, i8* %396, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08OMJKOODN@?5stack?3?5?$AA@", i64 0, i64 0)) #6
  store i8* %397, i8** %10, align 8, !tbaa !56
  %398 = load i64, i64* %392, align 8, !tbaa !37
  %399 = load i8*, i8** %12, align 8, !tbaa !57
  %400 = call i8* @halide_uint64_to_string(i8* %397, i8* %399, i64 %398, i32 1) #6
  store i8* %400, i8** %10, align 8, !tbaa !56
  br label %401

401:                                              ; preds = %395, %390
  %402 = phi i8* [ %400, %395 ], [ %391, %390 ]
  %403 = load i8*, i8** %12, align 8, !tbaa !57
  %404 = call i8* @halide_string_to_string(i8* %402, i8* %403, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #6
  store i8* %404, i8** %10, align 8, !tbaa !56
  %405 = load i8*, i8** %9, align 8, !tbaa !59
  %406 = icmp eq i8* %405, null
  br i1 %406, label %415, label %407

407:                                              ; preds = %401
  %408 = load i8*, i8** %7, align 8, !tbaa !52
  %409 = ptrtoint i8* %404 to i64
  %410 = ptrtoint i8* %405 to i64
  %411 = add i64 %409, 1
  %412 = sub i64 %411, %410
  %413 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %408, i8* nonnull %405, i64 %412) #6
  %414 = load i8*, i8** %9, align 8, !tbaa !59
  br label %415

415:                                              ; preds = %401, %407
  %416 = phi i8* [ %414, %407 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0), %401 ]
  call void @halide_print(i8* %0, i8* %416) #6
  br label %417

417:                                              ; preds = %180, %415
  %418 = add nuw nsw i64 %172, 1
  %419 = load i32, i32* %166, align 8, !tbaa !10
  %420 = sext i32 %419 to i64
  %421 = icmp slt i64 %418, %420
  br i1 %421, label %171, label %422, !llvm.loop !68

422:                                              ; preds = %157, %417, %149, %165, %39
  %423 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 8
  %424 = bitcast i8** %423 to %struct.halide_profiler_pipeline_stats**
  %425 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %424, align 8, !tbaa !2
  %426 = icmp eq %struct.halide_profiler_pipeline_stats* %425, null
  br i1 %426, label %16, label %39, !llvm.loop !69
}

; Function Attrs: nounwind
define weak dso_local void @halide_profiler_report(i8* %0) local_unnamed_addr #4 {
  %2 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %3 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* %3) #6
  tail call void @halide_profiler_report_unlocked(i8* %0, %struct.halide_profiler_state* %2) #5
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %3) #6
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i64 0, i32 5
  %3 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %2, align 8, !tbaa !13
  %4 = icmp eq %struct.halide_profiler_pipeline_stats* %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %5
  %6 = phi %struct.halide_profiler_pipeline_stats* [ %14, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %6, i64 0, i32 8
  %8 = bitcast i8** %7 to %struct.halide_profiler_pipeline_stats**
  %9 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %8, align 8, !tbaa !16
  store %struct.halide_profiler_pipeline_stats* %9, %struct.halide_profiler_pipeline_stats** %2, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %6, i64 0, i32 7
  %11 = bitcast %struct.halide_profiler_func_stats** %10 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !28
  tail call void @free(i8* %12) #6
  %13 = bitcast %struct.halide_profiler_pipeline_stats* %6 to i8*
  tail call void @free(i8* nonnull %13) #6
  %14 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %2, align 8, !tbaa !13
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null
  br i1 %15, label %16, label %5, !llvm.loop !70

16:                                               ; preds = %5, %1
  %17 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i64 0, i32 2
  store i32 0, i32* %17, align 4, !tbaa !17
  ret void
}

; Function Attrs: nounwind
define weak dso_local void @halide_profiler_reset() local_unnamed_addr #4 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* %2) #6
  tail call void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* %1) #5
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %2) #6
  ret void
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_shutdown() local_unnamed_addr #1 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 7
  %3 = load %struct.halide_thread*, %struct.halide_thread** %2, align 8, !tbaa !49
  %4 = icmp eq %struct.halide_thread* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 3
  store i32 -2, i32* %6, align 8, !tbaa !42
  tail call void @halide_join_thread(%struct.halide_thread* nonnull %3) #6
  store %struct.halide_thread* null, %struct.halide_thread** %2, align 8, !tbaa !49
  store i32 -1, i32* %6, align 8, !tbaa !42
  tail call void @halide_profiler_report_unlocked(i8* null, %struct.halide_profiler_state* nonnull %1) #5
  tail call void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* nonnull %1) #5
  br label %7

7:                                                ; preds = %0, %5
  ret void
}

declare dso_local void @halide_join_thread(%struct.halide_thread*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_windows_profiler_shutdown() local_unnamed_addr #1 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #5
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 7
  %3 = load %struct.halide_thread*, %struct.halide_thread** %2, align 8, !tbaa !49
  %4 = icmp eq %struct.halide_thread* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void @halide_profiler_report_unlocked(i8* null, %struct.halide_profiler_state* nonnull %1) #5
  br label %6

6:                                                ; preds = %0, %5
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_profiler_pipeline_end(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, i8* %1, i64 16
  %4 = bitcast i8* %3 to i32*
  store i32 -1, i32* %4, align 8, !tbaa !42
  ret void
}

declare extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

declare dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare extern_weak dso_local i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #3

declare extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

attributes #0 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !3, i64 48}
!7 = !{!"?AUhalide_profiler_pipeline_stats@@", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88}
!8 = !{!"long long", !4, i64 0}
!9 = !{!"int", !4, i64 0}
!10 = !{!7, !9, i64 72}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !3, i64 24}
!14 = !{!"?AUhalide_profiler_state@@", !15, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !3, i64 24, !3, i64 32, !3, i64 40}
!15 = !{!"?AUhalide_mutex@@", !4, i64 0}
!16 = !{!7, !3, i64 64}
!17 = !{!14, !9, i64 12}
!18 = !{!7, !9, i64 76}
!19 = !{!7, !9, i64 80}
!20 = !{!7, !8, i64 0}
!21 = !{!7, !9, i64 84}
!22 = !{!7, !8, i64 8}
!23 = !{!7, !8, i64 16}
!24 = !{!7, !8, i64 24}
!25 = !{!7, !9, i64 88}
!26 = !{!7, !8, i64 32}
!27 = !{!7, !8, i64 40}
!28 = !{!7, !3, i64 56}
!29 = !{!30, !8, i64 0}
!30 = !{!"?AUhalide_profiler_func_stats@@", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !3, i64 56, !9, i64 64}
!31 = !{!8, !8, i64 0}
!32 = !{!30, !3, i64 56}
!33 = !{!30, !8, i64 8}
!34 = !{!30, !8, i64 16}
!35 = !{!30, !8, i64 24}
!36 = !{!30, !9, i64 64}
!37 = !{!30, !8, i64 32}
!38 = !{!30, !8, i64 40}
!39 = !{!30, !8, i64 48}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = !{!14, !9, i64 16}
!43 = distinct !{!43, !12}
!44 = !{!14, !3, i64 32}
!45 = !{!9, !9, i64 0}
!46 = !{!14, !9, i64 20}
!47 = !{!14, !9, i64 8}
!48 = distinct !{!48, !12}
!49 = !{!14, !3, i64 40}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12}
!52 = !{!53, !3, i64 24}
!53 = !{!"?AV?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !54, i64 32, !4, i64 33}
!54 = !{!"bool", !4, i64 0}
!55 = !{!53, !54, i64 32}
!56 = !{!53, !3, i64 8}
!57 = !{!53, !3, i64 16}
!58 = !{!4, !4, i64 0}
!59 = !{!53, !3, i64 0}
!60 = !{i8 0, i8 2}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
