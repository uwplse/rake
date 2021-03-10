; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_profiler.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_profiler.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-windows-msvc19.11.0"

%struct.halide_profiler_state = type { %struct.halide_mutex, i32, i32, i32, i32, %struct.halide_profiler_pipeline_stats*, void (i32*, i32*)*, %struct.halide_thread* }
%struct.halide_mutex = type { [1 x i64] }
%struct.halide_profiler_pipeline_stats = type { i64, i64, i64, i64, i64, i64, i8*, %struct.halide_profiler_func_stats*, i8*, i32, i32, i32, i32, i32, [4 x i8] }
%struct.halide_profiler_func_stats = type { i64, i64, i64, i64, i64, i64, i64, i8*, i32, [4 x i8] }
%struct.halide_thread = type opaque
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }
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

@"?s@?1??halide_profiler_get_state@@9@4Uhalide_profiler_state@@A" = internal global %struct.halide_profiler_state { %struct.halide_mutex zeroinitializer, i32 1, i32 0, i32 0, i32 0, %struct.halide_profiler_pipeline_stats* null, void (i32*, i32*)* null, %struct.halide_thread* null }, align 8, !dbg !0
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
define weak dso_local %struct.halide_profiler_state* @halide_profiler_get_state() local_unnamed_addr #0 !dbg !2 {
  ret %struct.halide_profiler_state* @"?s@?1??halide_profiler_get_state@@9@4Uhalide_profiler_state@@A", !dbg !101
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_profiler_pipeline_stats* @"?find_or_create_pipeline@Internal@Runtime@Halide@@YAPEAUhalide_profiler_pipeline_stats@@PEBDHPEB_K@Z"(i8* %0, i32 %1, i64* %2) local_unnamed_addr #1 !dbg !102 {
  call void @llvm.dbg.value(metadata i64* %2, metadata !108, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i32 %1, metadata !109, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i8* %0, metadata !110, metadata !DIExpression()), !dbg !117
  %4 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !118
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %4, metadata !111, metadata !DIExpression()), !dbg !117
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 5, !dbg !119
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !112, metadata !DIExpression()), !dbg !120
  %6 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %5, align 8, !dbg !120, !tbaa !121
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %6, metadata !112, metadata !DIExpression()), !dbg !120
  %7 = icmp eq %struct.halide_profiler_pipeline_stats* %6, null, !dbg !119
  br i1 %7, label %22, label %8, !dbg !119

8:                                                ; preds = %3, %17
  %9 = phi %struct.halide_profiler_pipeline_stats* [ %20, %17 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 6, !dbg !125
  %11 = load i8*, i8** %10, align 8, !dbg !125, !tbaa !128
  %12 = icmp eq i8* %11, %0, !dbg !125
  br i1 %12, label %13, label %17, !dbg !125

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 9, !dbg !125
  %15 = load i32, i32* %14, align 8, !dbg !125, !tbaa !132
  %16 = icmp eq i32 %15, %1, !dbg !125
  br i1 %16, label %87, label %17, !dbg !125

17:                                               ; preds = %8, %13
  %18 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 8, !dbg !133
  %19 = bitcast i8** %18 to %struct.halide_profiler_pipeline_stats**, !dbg !133
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !112, metadata !DIExpression()), !dbg !120
  %20 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %19, align 8, !dbg !120, !tbaa !121
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %20, metadata !112, metadata !DIExpression()), !dbg !120
  %21 = icmp eq %struct.halide_profiler_pipeline_stats* %20, null, !dbg !119
  br i1 %21, label %22, label %8, !dbg !119, !llvm.loop !134

22:                                               ; preds = %17, %3
  %23 = tail call i8* @malloc(i64 96) #7, !dbg !137
  %24 = bitcast i8* %23 to %struct.halide_profiler_pipeline_stats*, !dbg !137
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %24, metadata !114, metadata !DIExpression()), !dbg !117
  %25 = icmp eq i8* %23, null, !dbg !138
  br i1 %25, label %87, label %26, !dbg !138

26:                                               ; preds = %22
  %27 = bitcast %struct.halide_profiler_pipeline_stats** %5 to i8**, !dbg !139
  %28 = load i8*, i8** %27, align 8, !dbg !139, !tbaa !140
  %29 = getelementptr inbounds i8, i8* %23, i64 64, !dbg !139
  %30 = bitcast i8* %29 to i8**, !dbg !139
  store i8* %28, i8** %30, align 8, !dbg !139, !tbaa !143
  %31 = getelementptr inbounds i8, i8* %23, i64 48, !dbg !144
  %32 = bitcast i8* %31 to i8**, !dbg !144
  store i8* %0, i8** %32, align 8, !dbg !144, !tbaa !128
  %33 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 2, !dbg !145
  %34 = load i32, i32* %33, align 4, !dbg !145, !tbaa !146
  %35 = getelementptr inbounds i8, i8* %23, i64 76, !dbg !145
  %36 = bitcast i8* %35 to i32*, !dbg !145
  store i32 %34, i32* %36, align 4, !dbg !145, !tbaa !147
  %37 = getelementptr inbounds i8, i8* %23, i64 72, !dbg !148
  %38 = bitcast i8* %37 to i32*, !dbg !148
  store i32 %1, i32* %38, align 8, !dbg !148, !tbaa !132
  %39 = getelementptr inbounds i8, i8* %23, i64 80, !dbg !149
  %40 = bitcast i8* %39 to i32*, !dbg !149
  store i32 0, i32* %40, align 8, !dbg !149, !tbaa !150
  %41 = bitcast i8* %23 to i64*, !dbg !151
  store i64 0, i64* %41, align 8, !dbg !151, !tbaa !152
  %42 = getelementptr inbounds i8, i8* %23, i64 84, !dbg !153
  %43 = bitcast i8* %42 to i32*, !dbg !153
  store i32 0, i32* %43, align 4, !dbg !153, !tbaa !154
  %44 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !155
  %45 = bitcast i8* %44 to i64*, !dbg !155
  store i64 0, i64* %45, align 8, !dbg !155, !tbaa !156
  %46 = getelementptr inbounds i8, i8* %23, i64 16, !dbg !157
  %47 = bitcast i8* %46 to i64*, !dbg !157
  store i64 0, i64* %47, align 8, !dbg !157, !tbaa !158
  %48 = getelementptr inbounds i8, i8* %23, i64 24, !dbg !159
  %49 = bitcast i8* %48 to i64*, !dbg !159
  store i64 0, i64* %49, align 8, !dbg !159, !tbaa !160
  %50 = getelementptr inbounds i8, i8* %23, i64 88, !dbg !161
  %51 = bitcast i8* %50 to i32*, !dbg !161
  store i32 0, i32* %51, align 8, !dbg !161, !tbaa !162
  %52 = getelementptr inbounds i8, i8* %23, i64 32, !dbg !163
  %53 = bitcast i8* %52 to i64*, !dbg !163
  store i64 0, i64* %53, align 8, !dbg !163, !tbaa !164
  %54 = getelementptr inbounds i8, i8* %23, i64 40, !dbg !165
  %55 = bitcast i8* %54 to i64*, !dbg !165
  store i64 0, i64* %55, align 8, !dbg !165, !tbaa !166
  %56 = sext i32 %1 to i64, !dbg !167
  %57 = mul nsw i64 %56, 72, !dbg !167
  %58 = tail call i8* @malloc(i64 %57) #7, !dbg !167
  %59 = getelementptr inbounds i8, i8* %23, i64 56, !dbg !167
  %60 = bitcast i8* %59 to i8**, !dbg !167
  store i8* %58, i8** %60, align 8, !dbg !167, !tbaa !168
  %61 = icmp eq i8* %58, null, !dbg !169
  %62 = bitcast i8* %58 to %struct.halide_profiler_func_stats*, !dbg !169
  br i1 %61, label %67, label %63, !dbg !169

63:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 0, metadata !115, metadata !DIExpression()), !dbg !170
  %64 = icmp sgt i32 %1, 0, !dbg !171
  br i1 %64, label %65, label %68, !dbg !171

65:                                               ; preds = %63
  %66 = zext i32 %1 to i64, !dbg !171
  br label %71, !dbg !171

67:                                               ; preds = %26
  tail call void @free(i8* nonnull %23) #7, !dbg !172
  br label %87, !dbg !175

68:                                               ; preds = %71, %63
  %69 = load i32, i32* %33, align 4, !dbg !176, !tbaa !146
  %70 = add nsw i32 %69, %1, !dbg !176
  store i32 %70, i32* %33, align 4, !dbg !176, !tbaa !146
  store i8* %23, i8** %27, align 8, !dbg !177, !tbaa !140
  br label %87, !dbg !178

71:                                               ; preds = %65, %71
  %72 = phi i64 [ 0, %65 ], [ %85, %71 ]
  call void @llvm.dbg.value(metadata i64 %72, metadata !115, metadata !DIExpression()), !dbg !170
  %73 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 0, !dbg !179
  store i64 0, i64* %73, align 8, !dbg !179, !tbaa !182
  %74 = getelementptr inbounds i64, i64* %2, i64 %72, !dbg !184
  %75 = load i64, i64* %74, align 8, !dbg !184, !tbaa !185
  %76 = inttoptr i64 %75 to i8*, !dbg !184
  %77 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 7, !dbg !184
  store i8* %76, i8** %77, align 8, !dbg !184, !tbaa !186
  %78 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 1, !dbg !187
  store i64 0, i64* %78, align 8, !dbg !187, !tbaa !188
  %79 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 2, !dbg !189
  store i64 0, i64* %79, align 8, !dbg !189, !tbaa !190
  %80 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 3, !dbg !191
  store i64 0, i64* %80, align 8, !dbg !191, !tbaa !192
  %81 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 8, !dbg !193
  store i32 0, i32* %81, align 8, !dbg !193, !tbaa !194
  %82 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 4, !dbg !195
  store i64 0, i64* %82, align 8, !dbg !195, !tbaa !196
  %83 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 5, !dbg !197
  store i64 0, i64* %83, align 8, !dbg !197, !tbaa !198
  %84 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 6, !dbg !199
  store i64 0, i64* %84, align 8, !dbg !199, !tbaa !200
  %85 = add nuw nsw i64 %72, 1, !dbg !201
  call void @llvm.dbg.value(metadata i64 %85, metadata !115, metadata !DIExpression()), !dbg !170
  %86 = icmp eq i64 %85, %66, !dbg !171
  br i1 %86, label %68, label %71, !dbg !171, !llvm.loop !202

87:                                               ; preds = %13, %67, %68, %22
  %88 = phi %struct.halide_profiler_pipeline_stats* [ %24, %68 ], [ null, %67 ], [ null, %22 ], [ %9, %13 ], !dbg !117
  ret %struct.halide_profiler_pipeline_stats* %88, !dbg !204
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i8* @malloc(i64) local_unnamed_addr #4

declare dso_local void @free(i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?bill_func@Internal@Runtime@Halide@@YAXPEAUhalide_profiler_state@@H_KH@Z"(%struct.halide_profiler_state* %0, i32 %1, i64 %2, i32 %3) local_unnamed_addr #1 !dbg !205 {
  call void @llvm.dbg.value(metadata i32 %3, metadata !209, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i64 %2, metadata !210, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 %1, metadata !211, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %0, metadata !212, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* null, metadata !213, metadata !DIExpression()), !dbg !221
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i64 0, i32 5, !dbg !222
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !214, metadata !DIExpression()), !dbg !223
  %6 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %5, align 8, !dbg !223, !tbaa !121
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* null, metadata !213, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %6, metadata !214, metadata !DIExpression()), !dbg !223
  %7 = icmp eq %struct.halide_profiler_pipeline_stats* %6, null, !dbg !222
  br i1 %7, label %61, label %8, !dbg !222

8:                                                ; preds = %4, %56
  %9 = phi %struct.halide_profiler_pipeline_stats* [ %59, %56 ], [ %6, %4 ]
  %10 = phi %struct.halide_profiler_pipeline_stats* [ %9, %56 ], [ null, %4 ]
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %10, metadata !213, metadata !DIExpression()), !dbg !221
  %11 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 10, !dbg !224
  %12 = load i32, i32* %11, align 4, !dbg !224, !tbaa !147
  %13 = icmp sgt i32 %12, %1, !dbg !224
  br i1 %13, label %56, label %14, !dbg !224

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 9, !dbg !224
  %16 = load i32, i32* %15, align 8, !dbg !224, !tbaa !132
  %17 = add nsw i32 %16, %12, !dbg !224
  %18 = icmp sgt i32 %17, %1, !dbg !224
  br i1 %18, label %19, label %56, !dbg !224

19:                                               ; preds = %14
  %20 = icmp eq %struct.halide_profiler_pipeline_stats* %10, null, !dbg !225
  br i1 %20, label %26, label %21, !dbg !225

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 8, !dbg !226
  %23 = load i8*, i8** %22, align 8, !dbg !226, !tbaa !143
  %24 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %10, i64 0, i32 8, !dbg !226
  store i8* %23, i8** %24, align 8, !dbg !226, !tbaa !143
  %25 = bitcast i8** %22 to %struct.halide_profiler_pipeline_stats**, !dbg !229
  store %struct.halide_profiler_pipeline_stats* %6, %struct.halide_profiler_pipeline_stats** %25, align 8, !dbg !229, !tbaa !143
  store %struct.halide_profiler_pipeline_stats* %9, %struct.halide_profiler_pipeline_stats** %5, align 8, !dbg !230, !tbaa !140
  br label %26, !dbg !231

26:                                               ; preds = %21, %19
  %27 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 7, !dbg !232
  %28 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %27, align 8, !dbg !232, !tbaa !168
  %29 = sext i32 %1 to i64, !dbg !232
  %30 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %28, i64 %29, !dbg !232
  %31 = sext i32 %12 to i64, !dbg !232
  %32 = sub nsw i64 0, %31, !dbg !232
  %33 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %30, i64 %32, !dbg !232
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* %33, metadata !216, metadata !DIExpression()), !dbg !233
  %34 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %33, i64 0, i32 0, !dbg !234
  %35 = load i64, i64* %34, align 8, !dbg !234, !tbaa !182
  %36 = add i64 %35, %2, !dbg !234
  store i64 %36, i64* %34, align 8, !dbg !234, !tbaa !182
  %37 = sext i32 %3 to i64, !dbg !235
  %38 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %33, i64 0, i32 5, !dbg !235
  %39 = load i64, i64* %38, align 8, !dbg !235, !tbaa !198
  %40 = add i64 %39, %37, !dbg !235
  store i64 %40, i64* %38, align 8, !dbg !235, !tbaa !198
  %41 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %33, i64 0, i32 6, !dbg !236
  %42 = load i64, i64* %41, align 8, !dbg !236, !tbaa !200
  %43 = add i64 %42, 1, !dbg !236
  store i64 %43, i64* %41, align 8, !dbg !236, !tbaa !200
  %44 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 0, !dbg !237
  %45 = load i64, i64* %44, align 8, !dbg !237, !tbaa !152
  %46 = add i64 %45, %2, !dbg !237
  store i64 %46, i64* %44, align 8, !dbg !237, !tbaa !152
  %47 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 12, !dbg !238
  %48 = load i32, i32* %47, align 4, !dbg !238, !tbaa !154
  %49 = add nsw i32 %48, 1, !dbg !238
  store i32 %49, i32* %47, align 4, !dbg !238, !tbaa !154
  %50 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 4, !dbg !239
  %51 = load i64, i64* %50, align 8, !dbg !239, !tbaa !164
  %52 = add i64 %51, %37, !dbg !239
  store i64 %52, i64* %50, align 8, !dbg !239, !tbaa !164
  %53 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 5, !dbg !240
  %54 = load i64, i64* %53, align 8, !dbg !240, !tbaa !166
  %55 = add i64 %54, 1, !dbg !240
  store i64 %55, i64* %53, align 8, !dbg !240, !tbaa !166
  ret void

56:                                               ; preds = %14, %8
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %9, metadata !213, metadata !DIExpression()), !dbg !221
  %57 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 8, !dbg !241
  %58 = bitcast i8** %57 to %struct.halide_profiler_pipeline_stats**, !dbg !241
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !214, metadata !DIExpression()), !dbg !223
  %59 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %58, align 8, !dbg !223, !tbaa !121
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %59, metadata !214, metadata !DIExpression()), !dbg !223
  %60 = icmp eq %struct.halide_profiler_pipeline_stats* %59, null, !dbg !222
  br i1 %60, label %61, label %8, !dbg !222, !llvm.loop !242

61:                                               ; preds = %56, %4
  ret void, !dbg !244
}

; Function Attrs: nounwind
define weak dso_local void @"?sampling_profiler_thread@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #5 !dbg !245 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !249, metadata !DIExpression()), !dbg !259
  %4 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !260
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %4, metadata !250, metadata !DIExpression()), !dbg !259
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 0, !dbg !261
  tail call void @halide_mutex_lock(%struct.halide_mutex* %5) #7, !dbg !261
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 3, !dbg !262
  %7 = load i32, i32* %6, align 8, !dbg !262, !tbaa !263
  %8 = icmp eq i32 %7, -2, !dbg !262
  br i1 %8, label %39, label %9, !dbg !262

9:                                                ; preds = %1
  %10 = bitcast i32* %2 to i8*
  %11 = bitcast i32* %3 to i8*
  %12 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 6
  %13 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 4
  %14 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 1
  br label %18, !dbg !262

15:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 %29, metadata !253, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #8, !dbg !265
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #8, !dbg !265
  %16 = load i32, i32* %6, align 8, !dbg !262, !tbaa !263
  %17 = icmp eq i32 %16, -2, !dbg !262
  br i1 %17, label %39, label %18, !dbg !262, !llvm.loop !266

18:                                               ; preds = %9, %15
  %19 = call i64 @halide_current_time_ns(i8* null) #7, !dbg !268
  call void @llvm.dbg.value(metadata i64 %19, metadata !251, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 %19, metadata !253, metadata !DIExpression()), !dbg !264
  br label %20, !dbg !269

20:                                               ; preds = %37, %18
  %21 = phi i64 [ %19, %18 ], [ %29, %37 ], !dbg !270
  call void @llvm.dbg.value(metadata i64 %21, metadata !253, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #8, !dbg !271
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #8, !dbg !271
  %22 = load void (i32*, i32*)*, void (i32*, i32*)** %12, align 8, !dbg !272, !tbaa !273
  %23 = icmp eq void (i32*, i32*)* %22, null, !dbg !272
  br i1 %23, label %25, label %24, !dbg !272

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32* %2, metadata !254, metadata !DIExpression(DW_OP_deref)), !dbg !274
  call void @llvm.dbg.value(metadata i32* %3, metadata !256, metadata !DIExpression(DW_OP_deref)), !dbg !274
  call void %22(i32* nonnull %2, i32* nonnull %3) #7, !dbg !275
  br label %28, !dbg !278

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 8, !dbg !279, !tbaa !263
  call void @llvm.dbg.value(metadata i32 %26, metadata !254, metadata !DIExpression()), !dbg !274
  store i32 %26, i32* %2, align 4, !dbg !279, !tbaa !281
  %27 = load i32, i32* %13, align 4, !dbg !282, !tbaa !283
  call void @llvm.dbg.value(metadata i32 %27, metadata !256, metadata !DIExpression()), !dbg !274
  store i32 %27, i32* %3, align 4, !dbg !282, !tbaa !281
  br label %28, !dbg !284

28:                                               ; preds = %25, %24
  %29 = call i64 @halide_current_time_ns(i8* null) #7, !dbg !285
  call void @llvm.dbg.value(metadata i64 %29, metadata !257, metadata !DIExpression()), !dbg !274
  %30 = load i32, i32* %2, align 4, !dbg !286, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %30, metadata !254, metadata !DIExpression()), !dbg !274
  %31 = icmp eq i32 %30, -2, !dbg !286
  br i1 %31, label %15, label %32, !dbg !286

32:                                               ; preds = %28
  %33 = icmp sgt i32 %30, -1, !dbg !287
  br i1 %33, label %34, label %37, !dbg !287

34:                                               ; preds = %32
  %35 = load i32, i32* %3, align 4, !dbg !289, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %35, metadata !256, metadata !DIExpression()), !dbg !274
  %36 = sub i64 %29, %21, !dbg !289
  call void @"?bill_func@Internal@Runtime@Halide@@YAXPEAUhalide_profiler_state@@H_KH@Z"(%struct.halide_profiler_state* nonnull %4, i32 %30, i64 %36, i32 %35) #6, !dbg !289
  br label %37, !dbg !292

37:                                               ; preds = %34, %32
  call void @llvm.dbg.value(metadata i64 %29, metadata !253, metadata !DIExpression()), !dbg !264
  %38 = load i32, i32* %14, align 8, !dbg !293, !tbaa !294
  call void @llvm.dbg.value(metadata i32 %38, metadata !258, metadata !DIExpression()), !dbg !274
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %5) #7, !dbg !295
  call void @halide_sleep_ms(i8* null, i32 %38) #7, !dbg !296
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull %5) #7, !dbg !297
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #8, !dbg !265
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #8, !dbg !265
  br label %20

39:                                               ; preds = %15, %1
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %5) #7, !dbg !298
  ret void, !dbg !299
}

declare dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #4

declare extern_weak dso_local i64 @halide_current_time_ns(i8*) local_unnamed_addr #4

declare dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #4

declare extern_weak dso_local void @halide_sleep_ms(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
define weak dso_local %struct.halide_profiler_pipeline_stats* @halide_profiler_get_pipeline_state(i8* %0) local_unnamed_addr #5 !dbg !300 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !304, metadata !DIExpression()), !dbg !321
  %2 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !322
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %2, metadata !305, metadata !DIExpression()), !dbg !321
  %3 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i64 0, i32 0, !dbg !323
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !324, metadata !DIExpression()) #8, !dbg !329
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !327, metadata !DIExpression()) #8, !dbg !329
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !306, metadata !DIExpression()), !dbg !321
  tail call void @halide_mutex_lock(%struct.halide_mutex* %3) #7, !dbg !331
  %4 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i64 0, i32 5, !dbg !333
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !319, metadata !DIExpression()), !dbg !334
  %5 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %4, align 8, !dbg !334, !tbaa !121
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %5, metadata !319, metadata !DIExpression()), !dbg !334
  %6 = icmp eq %struct.halide_profiler_pipeline_stats* %5, null, !dbg !333
  br i1 %6, label %17, label %7, !dbg !333

7:                                                ; preds = %1, %12
  %8 = phi %struct.halide_profiler_pipeline_stats* [ %15, %12 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %8, i64 0, i32 6, !dbg !335
  %10 = load i8*, i8** %9, align 8, !dbg !335, !tbaa !128
  %11 = icmp eq i8* %10, %0, !dbg !335
  br i1 %11, label %17, label %12, !dbg !335

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %8, i64 0, i32 8, !dbg !338
  %14 = bitcast i8** %13 to %struct.halide_profiler_pipeline_stats**, !dbg !338
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !319, metadata !DIExpression()), !dbg !334
  %15 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %14, align 8, !dbg !334, !tbaa !121
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %15, metadata !319, metadata !DIExpression()), !dbg !334
  %16 = icmp eq %struct.halide_profiler_pipeline_stats* %15, null, !dbg !333
  br i1 %16, label %17, label %7, !dbg !333, !llvm.loop !339

17:                                               ; preds = %12, %7, %1
  %18 = phi %struct.halide_profiler_pipeline_stats* [ null, %1 ], [ %8, %7 ], [ null, %12 ], !dbg !334
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !341, metadata !DIExpression()) #8, !dbg !344
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %3) #7, !dbg !346
  ret %struct.halide_profiler_pipeline_stats* %18, !dbg !348
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_profiler_pipeline_start(i8* %0, i8* %1, i32 %2, i64* %3) local_unnamed_addr #5 !dbg !349 {
  call void @llvm.dbg.value(metadata i64* %3, metadata !353, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i32 %2, metadata !354, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i8* %1, metadata !355, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i8* %0, metadata !356, metadata !DIExpression()), !dbg !360
  %5 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !361
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %5, metadata !357, metadata !DIExpression()), !dbg !360
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %5, i64 0, i32 0, !dbg !362
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %6, metadata !324, metadata !DIExpression()) #8, !dbg !363
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !327, metadata !DIExpression()) #8, !dbg !363
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %6, metadata !358, metadata !DIExpression()), !dbg !360
  tail call void @halide_mutex_lock(%struct.halide_mutex* %6) #7, !dbg !365
  %7 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %5, i64 0, i32 7, !dbg !366
  %8 = load %struct.halide_thread*, %struct.halide_thread** %7, align 8, !dbg !366, !tbaa !367
  %9 = icmp eq %struct.halide_thread* %8, null, !dbg !366
  br i1 %9, label %10, label %13, !dbg !366

10:                                               ; preds = %4
  %11 = tail call i32 @halide_start_clock(i8* %0) #7, !dbg !368
  %12 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @"?sampling_profiler_thread@Internal@Runtime@Halide@@YAXPEAX@Z", i8* null) #7, !dbg !371
  store %struct.halide_thread* %12, %struct.halide_thread** %7, align 8, !dbg !371, !tbaa !367
  br label %13, !dbg !372

13:                                               ; preds = %10, %4
  %14 = tail call %struct.halide_profiler_pipeline_stats* @"?find_or_create_pipeline@Internal@Runtime@Halide@@YAPEAUhalide_profiler_pipeline_stats@@PEBDHPEB_K@Z"(i8* %1, i32 %2, i64* %3) #6, !dbg !373
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %14, metadata !359, metadata !DIExpression()), !dbg !360
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null, !dbg !374
  br i1 %15, label %16, label %18, !dbg !374

16:                                               ; preds = %13
  %17 = tail call i32 @halide_error_out_of_memory(i8* %0) #7, !dbg !375
  br label %24, !dbg !375

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %14, i64 0, i32 11, !dbg !378
  %20 = load i32, i32* %19, align 8, !dbg !378, !tbaa !150
  %21 = add nsw i32 %20, 1, !dbg !378
  store i32 %21, i32* %19, align 8, !dbg !378, !tbaa !150
  %22 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %14, i64 0, i32 10, !dbg !379
  %23 = load i32, i32* %22, align 4, !dbg !379, !tbaa !147
  br label %24, !dbg !379

24:                                               ; preds = %18, %16
  %25 = phi i32 [ %23, %18 ], [ %17, %16 ], !dbg !360
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !341, metadata !DIExpression()) #8, !dbg !380
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %6) #7, !dbg !382
  ret i32 %25, !dbg !383
}

declare extern_weak dso_local i32 @halide_start_clock(i8*) local_unnamed_addr #4

declare dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)*, i8*) local_unnamed_addr #4

declare dso_local i32 @halide_error_out_of_memory(i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_stack_peak_update(i8* %0, i8* %1, i64* %2) local_unnamed_addr #1 !dbg !384 {
  call void @llvm.dbg.value(metadata i64* %2, metadata !389, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i8* %1, metadata !390, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i8* %0, metadata !391, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i8* %1, metadata !392, metadata !DIExpression()), !dbg !395
  %4 = icmp eq i8* %1, null, !dbg !396
  br i1 %4, label %5, label %6, !dbg !396

5:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @"??_C@_0HC@NOIAIGCC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7, !dbg !398
  tail call void @abort() #7, !dbg !398
  br label %6, !dbg !398

6:                                                ; preds = %5, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !393, metadata !DIExpression()), !dbg !401
  %7 = getelementptr inbounds i8, i8* %1, i64 72, !dbg !402
  %8 = bitcast i8* %7 to i32*, !dbg !402
  %9 = load i32, i32* %8, align 8, !dbg !402, !tbaa !132
  %10 = icmp sgt i32 %9, 0, !dbg !402
  br i1 %10, label %11, label %14, !dbg !402

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %1, i64 56
  %13 = bitcast i8* %12 to %struct.halide_profiler_func_stats**
  br label %15, !dbg !402

14:                                               ; preds = %34, %6
  ret void, !dbg !403

15:                                               ; preds = %11, %34
  %16 = phi i32 [ %9, %11 ], [ %35, %34 ]
  %17 = phi i64 [ 0, %11 ], [ %36, %34 ]
  call void @llvm.dbg.value(metadata i64 %17, metadata !393, metadata !DIExpression()), !dbg !401
  %18 = getelementptr inbounds i64, i64* %2, i64 %17, !dbg !404
  %19 = load i64, i64* %18, align 8, !dbg !404, !tbaa !185
  %20 = icmp eq i64 %19, 0, !dbg !404
  br i1 %20, label %34, label %21, !dbg !404

21:                                               ; preds = %15
  %22 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %13, align 8, !dbg !407, !tbaa !168
  %23 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %22, i64 %17, i32 4, !dbg !407
  call void @llvm.dbg.value(metadata i64 %19, metadata !410, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64* %23, metadata !417, metadata !DIExpression()), !dbg !423
  %24 = load i64, i64* %23, align 8, !dbg !425, !tbaa !185
  call void @llvm.dbg.value(metadata i64 %24, metadata !418, metadata !DIExpression()), !dbg !423
  br label %25, !dbg !426

25:                                               ; preds = %28, %21
  %26 = phi i64 [ %24, %21 ], [ %30, %28 ], !dbg !423
  call void @llvm.dbg.value(metadata i64 %26, metadata !418, metadata !DIExpression()), !dbg !423
  %27 = icmp ult i64 %26, %19, !dbg !426
  br i1 %27, label %28, label %32, !dbg !426

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %26, metadata !419, metadata !DIExpression()), !dbg !427
  %29 = cmpxchg i64* %23, i64 %26, i64 %19 seq_cst seq_cst, !dbg !428
  %30 = extractvalue { i64, i1 } %29, 0, !dbg !428
  call void @llvm.dbg.value(metadata i64 %30, metadata !418, metadata !DIExpression()), !dbg !423
  %31 = icmp eq i64 %26, %30, !dbg !429
  br i1 %31, label %32, label %25, !llvm.loop !430

32:                                               ; preds = %25, %28
  %33 = load i32, i32* %8, align 8, !dbg !402, !tbaa !132
  br label %34, !dbg !432

34:                                               ; preds = %32, %15
  %35 = phi i32 [ %33, %32 ], [ %16, %15 ], !dbg !402
  %36 = add nuw nsw i64 %17, 1, !dbg !432
  call void @llvm.dbg.value(metadata i64 %36, metadata !393, metadata !DIExpression()), !dbg !401
  %37 = sext i32 %35 to i64, !dbg !402
  %38 = icmp slt i64 %36, %37, !dbg !402
  br i1 %38, label %15, label %14, !dbg !402, !llvm.loop !433
}

declare extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #4

declare dso_local void @abort() local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_memory_allocate(i8* %0, i8* %1, i32 %2, i64 %3) local_unnamed_addr #1 !dbg !435 {
  call void @llvm.dbg.value(metadata i64 %3, metadata !439, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata i32 %2, metadata !440, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata i8* %1, metadata !441, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata i8* %0, metadata !442, metadata !DIExpression()), !dbg !447
  %5 = icmp eq i64 %3, 0, !dbg !448
  br i1 %5, label %60, label %6, !dbg !448

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %1, metadata !443, metadata !DIExpression()), !dbg !447
  %7 = icmp eq i8* %1, null, !dbg !449
  br i1 %7, label %8, label %9, !dbg !449

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @"??_C@_0HC@MJAJLJCF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7, !dbg !451
  tail call void @abort() #7, !dbg !451
  br label %9, !dbg !451

9:                                                ; preds = %6, %8
  %10 = icmp sgt i32 %2, -1, !dbg !454
  br i1 %10, label %12, label %11, !dbg !454

11:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@GJMNAOKK@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7, !dbg !456
  tail call void @abort() #7, !dbg !456
  br label %12, !dbg !456

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds i8, i8* %1, i64 72, !dbg !459
  %14 = bitcast i8* %13 to i32*, !dbg !459
  %15 = load i32, i32* %14, align 8, !dbg !459, !tbaa !132
  %16 = icmp sgt i32 %15, %2, !dbg !459
  br i1 %16, label %18, label %17, !dbg !459

17:                                               ; preds = %12
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @"??_C@_0HM@KEKFGDCE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7, !dbg !461
  tail call void @abort() #7, !dbg !461
  br label %18, !dbg !461

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds i8, i8* %1, i64 56, !dbg !464
  %20 = bitcast i8* %19 to %struct.halide_profiler_func_stats**, !dbg !464
  %21 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %20, align 8, !dbg !464, !tbaa !168
  %22 = sext i32 %2 to i64, !dbg !464
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* undef, metadata !444, metadata !DIExpression()), !dbg !447
  %23 = getelementptr inbounds i8, i8* %1, i64 88, !dbg !465
  %24 = bitcast i8* %23 to i32*, !dbg !465
  %25 = atomicrmw add i32* %24, i32 1 seq_cst, !dbg !465
  %26 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !466
  %27 = bitcast i8* %26 to i64*, !dbg !466
  %28 = atomicrmw add i64* %27, i64 %3 seq_cst, !dbg !466
  %29 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !467
  %30 = bitcast i8* %29 to i64*, !dbg !467
  %31 = atomicrmw add i64* %30, i64 %3 seq_cst, !dbg !467
  %32 = add i64 %31, %3, !dbg !467
  call void @llvm.dbg.value(metadata i64 %32, metadata !445, metadata !DIExpression()), !dbg !447
  %33 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !468
  %34 = bitcast i8* %33 to i64*, !dbg !468
  call void @llvm.dbg.value(metadata i64 %32, metadata !410, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata i64* %34, metadata !417, metadata !DIExpression()), !dbg !469
  %35 = load i64, i64* %34, align 8, !dbg !471, !tbaa !185
  call void @llvm.dbg.value(metadata i64 %35, metadata !418, metadata !DIExpression()), !dbg !469
  br label %36, !dbg !472

36:                                               ; preds = %39, %18
  %37 = phi i64 [ %35, %18 ], [ %41, %39 ], !dbg !469
  call void @llvm.dbg.value(metadata i64 %37, metadata !418, metadata !DIExpression()), !dbg !469
  %38 = icmp ult i64 %37, %32, !dbg !472
  br i1 %38, label %39, label %43, !dbg !472

39:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i64 %37, metadata !419, metadata !DIExpression()), !dbg !473
  %40 = cmpxchg i64* %34, i64 %37, i64 %32 seq_cst seq_cst, !dbg !474
  %41 = extractvalue { i64, i1 } %40, 0, !dbg !474
  call void @llvm.dbg.value(metadata i64 %41, metadata !418, metadata !DIExpression()), !dbg !469
  %42 = icmp eq i64 %37, %41, !dbg !475
  br i1 %42, label %43, label %36, !llvm.loop !476

43:                                               ; preds = %36, %39
  %44 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 8, !dbg !478
  %45 = atomicrmw add i32* %44, i32 1 seq_cst, !dbg !478
  %46 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 3, !dbg !479
  %47 = atomicrmw add i64* %46, i64 %3 seq_cst, !dbg !479
  %48 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 1, !dbg !480
  %49 = atomicrmw add i64* %48, i64 %3 seq_cst, !dbg !480
  %50 = add i64 %49, %3, !dbg !480
  call void @llvm.dbg.value(metadata i64 %50, metadata !446, metadata !DIExpression()), !dbg !447
  %51 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 2, !dbg !481
  call void @llvm.dbg.value(metadata i64 %50, metadata !410, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64* %51, metadata !417, metadata !DIExpression()), !dbg !482
  %52 = load i64, i64* %51, align 8, !dbg !484, !tbaa !185
  call void @llvm.dbg.value(metadata i64 %52, metadata !418, metadata !DIExpression()), !dbg !482
  br label %53, !dbg !485

53:                                               ; preds = %56, %43
  %54 = phi i64 [ %52, %43 ], [ %58, %56 ], !dbg !482
  call void @llvm.dbg.value(metadata i64 %54, metadata !418, metadata !DIExpression()), !dbg !482
  %55 = icmp ult i64 %54, %50, !dbg !485
  br i1 %55, label %56, label %60, !dbg !485

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !419, metadata !DIExpression()), !dbg !486
  %57 = cmpxchg i64* %51, i64 %54, i64 %50 seq_cst seq_cst, !dbg !487
  %58 = extractvalue { i64, i1 } %57, 0, !dbg !487
  call void @llvm.dbg.value(metadata i64 %58, metadata !418, metadata !DIExpression()), !dbg !482
  %59 = icmp eq i64 %54, %58, !dbg !488
  br i1 %59, label %60, label %53, !llvm.loop !489

60:                                               ; preds = %56, %53, %4
  ret void, !dbg !491
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_memory_free(i8* %0, i8* %1, i32 %2, i64 %3) local_unnamed_addr #1 !dbg !492 {
  call void @llvm.dbg.value(metadata i64 %3, metadata !494, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i32 %2, metadata !495, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i8* %1, metadata !496, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i8* %0, metadata !497, metadata !DIExpression()), !dbg !500
  %5 = icmp eq i64 %3, 0, !dbg !501
  br i1 %5, label %28, label %6, !dbg !501

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %1, metadata !498, metadata !DIExpression()), !dbg !500
  %7 = icmp eq i8* %1, null, !dbg !502
  br i1 %7, label %8, label %9, !dbg !502

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @"??_C@_0HC@PMOKBCNB@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7, !dbg !504
  tail call void @abort() #7, !dbg !504
  br label %9, !dbg !504

9:                                                ; preds = %6, %8
  %10 = icmp sgt i32 %2, -1, !dbg !507
  br i1 %10, label %12, label %11, !dbg !507

11:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@CDNILHME@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7, !dbg !509
  tail call void @abort() #7, !dbg !509
  br label %12, !dbg !509

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds i8, i8* %1, i64 72, !dbg !512
  %14 = bitcast i8* %13 to i32*, !dbg !512
  %15 = load i32, i32* %14, align 8, !dbg !512, !tbaa !132
  %16 = icmp sgt i32 %15, %2, !dbg !512
  br i1 %16, label %18, label %17, !dbg !512

17:                                               ; preds = %12
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @"??_C@_0HM@CMPHPLIB@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #7, !dbg !514
  tail call void @abort() #7, !dbg !514
  br label %18, !dbg !514

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds i8, i8* %1, i64 56, !dbg !517
  %20 = bitcast i8* %19 to %struct.halide_profiler_func_stats**, !dbg !517
  %21 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %20, align 8, !dbg !517, !tbaa !168
  %22 = sext i32 %2 to i64, !dbg !517
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* undef, metadata !499, metadata !DIExpression()), !dbg !500
  %23 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !518
  %24 = bitcast i8* %23 to i64*, !dbg !518
  %25 = atomicrmw sub i64* %24, i64 %3 seq_cst, !dbg !518
  %26 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 1, !dbg !519
  %27 = atomicrmw sub i64* %26, i64 %3 seq_cst, !dbg !519
  br label %28

28:                                               ; preds = %4, %18
  ret void, !dbg !520
}

; Function Attrs: nounwind
define weak dso_local void @halide_profiler_report_unlocked(i8* %0, %struct.halide_profiler_state* %1) local_unnamed_addr #5 !dbg !521 {
  %3 = alloca [1024 x i8], align 1
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %1, metadata !525, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i8* %0, metadata !526, metadata !DIExpression()), !dbg !681
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !682
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %5) #8, !dbg !682
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !527, metadata !DIExpression()), !dbg !682
  %6 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*, !dbg !683
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #8, !dbg !683
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !531, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i8* %5, metadata !684, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8* %0, metadata !687, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !688, metadata !DIExpression()), !dbg !690
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 3, !dbg !692
  store i8* %0, i8** %7, align 8, !dbg !692, !tbaa !693
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 4, !dbg !692
  store i8 0, i8* %8, align 8, !dbg !692, !tbaa !696
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 0, !dbg !697
  store i8* %5, i8** %9, align 8, !dbg !697
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 1, !dbg !702
  store i8* %5, i8** %10, align 8, !dbg !702, !tbaa !703
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 1023, !dbg !704
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 2, !dbg !704
  store i8* %11, i8** %12, align 8, !dbg !704, !tbaa !707
  store i8 0, i8* %11, align 1, !dbg !708, !tbaa !709
  %13 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 5, !dbg !710
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !649, metadata !DIExpression()), !dbg !711
  %14 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %13, align 8, !dbg !711, !tbaa !121
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %14, metadata !649, metadata !DIExpression()), !dbg !711
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null, !dbg !710
  br i1 %15, label %21, label %39, !dbg !710

16:                                               ; preds = %422
  %17 = load i8*, i8** %9, align 8, !dbg !712, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !716, metadata !DIExpression()) #8, !dbg !719
  %18 = icmp eq i8* %17, null, !dbg !712
  br i1 %18, label %19, label %21, !dbg !712

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8, !dbg !720, !tbaa !693
  call void @halide_error(i8* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0)) #7, !dbg !720
  br label %30, !dbg !723

21:                                               ; preds = %2, %16
  %22 = phi i8* [ %17, %16 ], [ %5, %2 ]
  %23 = load i8*, i8** %10, align 8, !dbg !724, !tbaa !703
  %24 = load i8*, i8** %7, align 8, !dbg !724, !tbaa !693
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !726, metadata !DIExpression()) #8, !dbg !729
  %25 = ptrtoint i8* %23 to i64, !dbg !731
  %26 = ptrtoint i8* %22 to i64, !dbg !731
  %27 = sub i64 1, %26, !dbg !731
  %28 = add i64 %27, %25, !dbg !731
  %29 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %24, i8* nonnull %22, i64 %28) #7, !dbg !731
  br label %30, !dbg !732

30:                                               ; preds = %21, %19
  %31 = load i8, i8* %8, align 8, !dbg !733, !tbaa !696, !range !734
  %32 = icmp eq i8 %31, 0, !dbg !733
  br i1 %32, label %38, label %33, !dbg !733

33:                                               ; preds = %30
  %34 = load i8*, i8** %9, align 8, !dbg !733, !tbaa !718
  %35 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 5, i64 0, !dbg !733
  %36 = icmp eq i8* %34, %35, !dbg !733
  br i1 %36, label %38, label %37, !dbg !733

37:                                               ; preds = %33
  call void @free(i8* %34) #7, !dbg !735
  br label %38, !dbg !738

38:                                               ; preds = %30, %33, %37
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #8, !dbg !739
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %5) #8, !dbg !739
  ret void, !dbg !739

39:                                               ; preds = %2, %422
  %40 = phi %struct.halide_profiler_pipeline_stats* [ %425, %422 ], [ %14, %2 ]
  %41 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 0, !dbg !740
  %42 = load i64, i64* %41, align 8, !dbg !740, !tbaa !152
  %43 = uitofp i64 %42 to float, !dbg !740
  %44 = fdiv float %43, 1.000000e+06, !dbg !740
  call void @llvm.dbg.value(metadata float %44, metadata !651, metadata !DIExpression()), !dbg !741
  %45 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 11, !dbg !742
  %46 = load i32, i32* %45, align 8, !dbg !742, !tbaa !150
  %47 = icmp eq i32 %46, 0, !dbg !742
  br i1 %47, label %422, label %48, !dbg !742

48:                                               ; preds = %39
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !743, metadata !DIExpression()), !dbg !746
  %49 = load i8*, i8** %9, align 8, !dbg !748, !tbaa !718
  store i8* %49, i8** %10, align 8, !dbg !748, !tbaa !703
  %50 = icmp eq i8* %49, null, !dbg !749
  br i1 %50, label %52, label %51, !dbg !749

51:                                               ; preds = %48
  store i8 0, i8* %49, align 1, !dbg !750, !tbaa !709
  br label %52, !dbg !753

52:                                               ; preds = %48, %51
  call void @llvm.dbg.value(metadata i32 0, metadata !654, metadata !DIExpression()), !dbg !741
  %53 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 13, !dbg !754
  %54 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 4, !dbg !755
  %55 = load i64, i64* %54, align 8, !dbg !755, !tbaa !164
  %56 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 5, !dbg !755
  %57 = load i64, i64* %56, align 8, !dbg !755, !tbaa !166
  %58 = icmp eq i64 %55, %57, !dbg !755
  call void @llvm.dbg.value(metadata i1 %58, metadata !655, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !741
  call void @llvm.dbg.value(metadata float undef, metadata !656, metadata !DIExpression()), !dbg !741
  %59 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 6, !dbg !756
  %60 = load i8*, i8** %59, align 8, !dbg !756, !tbaa !128
  call void @llvm.dbg.value(metadata i8* %60, metadata !757, metadata !DIExpression()) #8, !dbg !761
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !761
  %61 = icmp eq i8* %60, null, !dbg !763
  %62 = load i8*, i8** %12, align 8, !dbg !764, !tbaa !707
  %63 = load i8*, i8** %10, align 8, !dbg !764, !tbaa !703
  br i1 %61, label %64, label %66, !dbg !763

64:                                               ; preds = %52
  %65 = call i8* @halide_string_to_string(i8* %63, i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7, !dbg !766
  br label %68, !dbg !768

66:                                               ; preds = %52
  %67 = call i8* @halide_string_to_string(i8* %63, i8* %62, i8* nonnull %60) #7, !dbg !769
  br label %68, !dbg !771

68:                                               ; preds = %64, %66
  %69 = phi i8* [ %67, %66 ], [ %65, %64 ], !dbg !764
  store i8* %69, i8** %10, align 8, !dbg !764, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !772
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !772
  %70 = load i8*, i8** %12, align 8, !dbg !774, !tbaa !707
  %71 = call i8* @halide_string_to_string(i8* %69, i8* %70, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7, !dbg !774
  store i8* %71, i8** %10, align 8, !dbg !774, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@BGKKBPNB@?5total?5time?3?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !775
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !775
  %72 = load i8*, i8** %12, align 8, !dbg !777, !tbaa !707
  %73 = call i8* @halide_string_to_string(i8* %71, i8* %72, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@BGKKBPNB@?5total?5time?3?5?$AA@", i64 0, i64 0)) #7, !dbg !777
  store i8* %73, i8** %10, align 8, !dbg !777, !tbaa !703
  call void @llvm.dbg.value(metadata float %44, metadata !778, metadata !DIExpression()) #8, !dbg !782
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !781, metadata !DIExpression()) #8, !dbg !782
  %74 = fpext float %44 to double, !dbg !784
  %75 = load i8*, i8** %12, align 8, !dbg !784, !tbaa !707
  %76 = call i8* @halide_double_to_string(i8* %73, i8* %75, double %74, i32 0) #7, !dbg !784
  store i8* %76, i8** %10, align 8, !dbg !784, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"??_C@_03DKJEPNJL@?5ms?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !785
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !785
  %77 = load i8*, i8** %12, align 8, !dbg !787, !tbaa !707
  %78 = call i8* @halide_string_to_string(i8* %76, i8* %77, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @"??_C@_03DKJEPNJL@?5ms?$AA@", i64 0, i64 0)) #7, !dbg !787
  store i8* %78, i8** %10, align 8, !dbg !787, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"??_C@_0M@HBNPAI@?5?5samples?3?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !788
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !788
  %79 = load i8*, i8** %12, align 8, !dbg !790, !tbaa !707
  %80 = call i8* @halide_string_to_string(i8* %78, i8* %79, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @"??_C@_0M@HBNPAI@?5?5samples?3?5?$AA@", i64 0, i64 0)) #7, !dbg !790
  store i8* %80, i8** %10, align 8, !dbg !790, !tbaa !703
  %81 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 12, !dbg !756
  %82 = load i32, i32* %81, align 4, !dbg !756, !tbaa !154
  call void @llvm.dbg.value(metadata i32 %82, metadata !791, metadata !DIExpression()) #8, !dbg !795
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !794, metadata !DIExpression()) #8, !dbg !795
  %83 = sext i32 %82 to i64, !dbg !797
  %84 = load i8*, i8** %12, align 8, !dbg !797, !tbaa !707
  %85 = call i8* @halide_int64_to_string(i8* %80, i8* %84, i64 %83, i32 1) #7, !dbg !797
  store i8* %85, i8** %10, align 8, !dbg !797, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08KBJJNEGO@?5?5runs?3?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !798
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !798
  %86 = load i8*, i8** %12, align 8, !dbg !800, !tbaa !707
  %87 = call i8* @halide_string_to_string(i8* %85, i8* %86, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08KBJJNEGO@?5?5runs?3?5?$AA@", i64 0, i64 0)) #7, !dbg !800
  store i8* %87, i8** %10, align 8, !dbg !800, !tbaa !703
  %88 = load i32, i32* %45, align 8, !dbg !756, !tbaa !150
  call void @llvm.dbg.value(metadata i32 %88, metadata !791, metadata !DIExpression()) #8, !dbg !801
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !794, metadata !DIExpression()) #8, !dbg !801
  %89 = sext i32 %88 to i64, !dbg !803
  %90 = load i8*, i8** %12, align 8, !dbg !803, !tbaa !707
  %91 = call i8* @halide_int64_to_string(i8* %87, i8* %90, i64 %89, i32 1) #7, !dbg !803
  store i8* %91, i8** %10, align 8, !dbg !803, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@CEEGKBED@?5?5time?1run?3?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !804
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !804
  %92 = load i8*, i8** %12, align 8, !dbg !806, !tbaa !707
  %93 = call i8* @halide_string_to_string(i8* %91, i8* %92, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@CEEGKBED@?5?5time?1run?3?5?$AA@", i64 0, i64 0)) #7, !dbg !806
  store i8* %93, i8** %10, align 8, !dbg !806, !tbaa !703
  %94 = load i32, i32* %45, align 8, !dbg !756, !tbaa !150
  %95 = sitofp i32 %94 to float, !dbg !756
  %96 = fdiv float %44, %95, !dbg !756
  call void @llvm.dbg.value(metadata float %96, metadata !778, metadata !DIExpression()) #8, !dbg !807
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !781, metadata !DIExpression()) #8, !dbg !807
  %97 = fpext float %96 to double, !dbg !809
  %98 = load i8*, i8** %12, align 8, !dbg !809, !tbaa !707
  %99 = call i8* @halide_double_to_string(i8* %93, i8* %98, double %97, i32 0) #7, !dbg !809
  store i8* %99, i8** %10, align 8, !dbg !809, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"??_C@_04JNAIDGLL@?5ms?6?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !810
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !810
  %100 = load i8*, i8** %12, align 8, !dbg !812, !tbaa !707
  %101 = call i8* @halide_string_to_string(i8* %99, i8* %100, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @"??_C@_04JNAIDGLL@?5ms?6?$AA@", i64 0, i64 0)) #7, !dbg !812
  store i8* %101, i8** %10, align 8, !dbg !812, !tbaa !703
  br i1 %58, label %115, label %102, !dbg !813

102:                                              ; preds = %68
  %103 = uitofp i64 %55 to double, !dbg !814
  %104 = uitofp i64 %57 to double, !dbg !814
  %105 = fadd double %104, 1.000000e-10, !dbg !814
  %106 = fdiv double %103, %105, !dbg !814
  %107 = fptrunc double %106 to float, !dbg !814
  call void @llvm.dbg.value(metadata float %107, metadata !656, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@CMGBJPNG@?5average?5threads?5used?3?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !815
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !815
  %108 = load i8*, i8** %12, align 8, !dbg !819, !tbaa !707
  %109 = call i8* @halide_string_to_string(i8* %101, i8* %108, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@CMGBJPNG@?5average?5threads?5used?3?5?$AA@", i64 0, i64 0)) #7, !dbg !819
  store i8* %109, i8** %10, align 8, !dbg !819, !tbaa !703
  call void @llvm.dbg.value(metadata float %107, metadata !778, metadata !DIExpression()) #8, !dbg !820
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !781, metadata !DIExpression()) #8, !dbg !820
  %110 = fpext float %107 to double, !dbg !822
  %111 = load i8*, i8** %12, align 8, !dbg !822, !tbaa !707
  %112 = call i8* @halide_double_to_string(i8* %109, i8* %111, double %110, i32 0) #7, !dbg !822
  store i8* %112, i8** %10, align 8, !dbg !822, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !823
  %113 = load i8*, i8** %12, align 8, !dbg !825, !tbaa !707
  %114 = call i8* @halide_string_to_string(i8* %112, i8* %113, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7, !dbg !825
  store i8* %114, i8** %10, align 8, !dbg !825, !tbaa !703
  br label %115, !dbg !826

115:                                              ; preds = %102, %68
  %116 = phi i8* [ %114, %102 ], [ %101, %68 ], !dbg !827
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@BOGLMGMN@?5heap?5allocations?3?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !829
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !829
  %117 = load i8*, i8** %12, align 8, !dbg !827, !tbaa !707
  %118 = call i8* @halide_string_to_string(i8* %116, i8* %117, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@BOGLMGMN@?5heap?5allocations?3?5?$AA@", i64 0, i64 0)) #7, !dbg !827
  store i8* %118, i8** %10, align 8, !dbg !827, !tbaa !703
  %119 = load i32, i32* %53, align 8, !dbg !830, !tbaa !162
  call void @llvm.dbg.value(metadata i32 %119, metadata !791, metadata !DIExpression()) #8, !dbg !831
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !794, metadata !DIExpression()) #8, !dbg !831
  %120 = sext i32 %119 to i64, !dbg !833
  %121 = load i8*, i8** %12, align 8, !dbg !833, !tbaa !707
  %122 = call i8* @halide_int64_to_string(i8* %118, i8* %121, i64 %120, i32 1) #7, !dbg !833
  store i8* %122, i8** %10, align 8, !dbg !833, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@CEBPNHKJ@?5?5peak?5heap?5usage?3?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !834
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !834
  %123 = load i8*, i8** %12, align 8, !dbg !836, !tbaa !707
  %124 = call i8* @halide_string_to_string(i8* %122, i8* %123, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@CEBPNHKJ@?5?5peak?5heap?5usage?3?5?$AA@", i64 0, i64 0)) #7, !dbg !836
  store i8* %124, i8** %10, align 8, !dbg !836, !tbaa !703
  %125 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 2, !dbg !830
  %126 = load i64, i64* %125, align 8, !dbg !830, !tbaa !158
  call void @llvm.dbg.value(metadata i64 %126, metadata !837, metadata !DIExpression()) #8, !dbg !841
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !840, metadata !DIExpression()) #8, !dbg !841
  %127 = load i8*, i8** %12, align 8, !dbg !843, !tbaa !707
  %128 = call i8* @halide_uint64_to_string(i8* %124, i8* %127, i64 %126, i32 1) #7, !dbg !843
  store i8* %128, i8** %10, align 8, !dbg !843, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07PPFNDMLI@?5bytes?6?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !844
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !844
  %129 = load i8*, i8** %12, align 8, !dbg !846, !tbaa !707
  %130 = call i8* @halide_string_to_string(i8* %128, i8* %129, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07PPFNDMLI@?5bytes?6?$AA@", i64 0, i64 0)) #7, !dbg !846
  store i8* %130, i8** %10, align 8, !dbg !846, !tbaa !703
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !847, metadata !DIExpression()) #8, !dbg !850
  %131 = load i8*, i8** %9, align 8, !dbg !852, !tbaa !718
  %132 = icmp eq i8* %131, null, !dbg !852
  br i1 %132, label %141, label %133, !dbg !852

133:                                              ; preds = %115
  %134 = load i8*, i8** %7, align 8, !dbg !853, !tbaa !693
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !726, metadata !DIExpression()) #8, !dbg !858
  %135 = ptrtoint i8* %130 to i64, !dbg !860
  %136 = ptrtoint i8* %131 to i64, !dbg !860
  %137 = add i64 %135, 1, !dbg !860
  %138 = sub i64 %137, %136, !dbg !860
  %139 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %134, i8* nonnull %131, i64 %138) #7, !dbg !860
  %140 = load i8*, i8** %9, align 8, !dbg !861, !tbaa !718
  br label %141, !dbg !861

141:                                              ; preds = %115, %133
  %142 = phi i8* [ %140, %133 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0), %115 ], !dbg !862
  call void @halide_print(i8* %0, i8* %142) #7, !dbg !863
  %143 = load i64, i64* %41, align 8, !dbg !864, !tbaa !152
  %144 = icmp eq i64 %143, 0, !dbg !864
  br i1 %144, label %145, label %165, !dbg !864

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 3, !dbg !864
  %147 = load i64, i64* %146, align 8, !dbg !864, !tbaa !160
  %148 = icmp eq i64 %147, 0, !dbg !864
  call void @llvm.dbg.value(metadata i1 %148, metadata !657, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !741
  br i1 %148, label %149, label %165, !dbg !865

149:                                              ; preds = %145
  call void @llvm.dbg.value(metadata i8 0, metadata !657, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i32 0, metadata !658, metadata !DIExpression()), !dbg !866
  %150 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 9, !dbg !867
  %151 = load i32, i32* %150, align 8, !dbg !867, !tbaa !132
  %152 = icmp sgt i32 %151, 0, !dbg !867
  br i1 %152, label %153, label %422, !dbg !867

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 7
  %155 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %154, align 8, !tbaa !168
  %156 = sext i32 %151 to i64
  br label %159, !dbg !867

157:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i8 0, metadata !657, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i64 %164, metadata !658, metadata !DIExpression()), !dbg !866
  %158 = icmp slt i64 %164, %156, !dbg !867
  br i1 %158, label %159, label %422, !dbg !867, !llvm.loop !868

159:                                              ; preds = %153, %157
  %160 = phi i64 [ 0, %153 ], [ %164, %157 ]
  call void @llvm.dbg.value(metadata i64 %160, metadata !658, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* undef, metadata !662, metadata !DIExpression()), !dbg !870
  %161 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %155, i64 %160, i32 4, !dbg !871
  %162 = load i64, i64* %161, align 8, !dbg !871, !tbaa !196
  %163 = icmp eq i64 %162, 0, !dbg !871
  call void @llvm.dbg.value(metadata i8 undef, metadata !657, metadata !DIExpression()), !dbg !741
  %164 = add nuw nsw i64 %160, 1, !dbg !872
  call void @llvm.dbg.value(metadata i64 %164, metadata !658, metadata !DIExpression()), !dbg !866
  br i1 %163, label %157, label %165

165:                                              ; preds = %159, %145, %141
  call void @llvm.dbg.value(metadata i32 0, metadata !665, metadata !DIExpression()), !dbg !873
  %166 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 9, !dbg !874
  %167 = load i32, i32* %166, align 8, !dbg !874, !tbaa !132
  %168 = icmp sgt i32 %167, 0, !dbg !874
  br i1 %168, label %169, label %422, !dbg !874

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 7
  br label %171, !dbg !874

171:                                              ; preds = %169, %417
  %172 = phi i64 [ 0, %169 ], [ %418, %417 ]
  call void @llvm.dbg.value(metadata i64 %172, metadata !665, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i64 0, metadata !669, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !743, metadata !DIExpression()), !dbg !876
  %173 = load i8*, i8** %9, align 8, !dbg !878, !tbaa !718
  store i8* %173, i8** %10, align 8, !dbg !878, !tbaa !703
  %174 = icmp eq i8* %173, null, !dbg !879
  br i1 %174, label %176, label %175, !dbg !879

175:                                              ; preds = %171
  store i8 0, i8* %173, align 1, !dbg !880, !tbaa !709
  br label %176, !dbg !881

176:                                              ; preds = %171, %175
  %177 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %170, align 8, !dbg !882, !tbaa !168
  %178 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, !dbg !882
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* %178, metadata !674, metadata !DIExpression()), !dbg !875
  %179 = icmp eq i64 %172, 0, !dbg !883
  br i1 %179, label %180, label %184, !dbg !883

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i64 0, i32 0, !dbg !883
  %182 = load i64, i64* %181, align 8, !dbg !883, !tbaa !182
  %183 = icmp eq i64 %182, 0, !dbg !883
  br i1 %183, label %417, label %184, !dbg !883

184:                                              ; preds = %180, %176
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02KNHHEEKP@?5?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !884
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !884
  %185 = load i8*, i8** %12, align 8, !dbg !886, !tbaa !707
  %186 = load i8*, i8** %10, align 8, !dbg !886, !tbaa !703
  %187 = call i8* @halide_string_to_string(i8* %186, i8* %185, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02KNHHEEKP@?5?5?$AA@", i64 0, i64 0)) #7, !dbg !886
  store i8* %187, i8** %10, align 8, !dbg !886, !tbaa !703
  %188 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 7, !dbg !887
  %189 = load i8*, i8** %188, align 8, !dbg !887, !tbaa !186
  call void @llvm.dbg.value(metadata i8* %189, metadata !757, metadata !DIExpression()) #8, !dbg !888
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !888
  %190 = icmp eq i8* %189, null, !dbg !890
  %191 = load i8*, i8** %12, align 8, !dbg !891, !tbaa !707
  br i1 %190, label %192, label %194, !dbg !890

192:                                              ; preds = %184
  %193 = call i8* @halide_string_to_string(i8* %187, i8* %191, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i64 0, i64 0)) #7, !dbg !892
  br label %196, !dbg !893

194:                                              ; preds = %184
  %195 = call i8* @halide_string_to_string(i8* %187, i8* %191, i8* nonnull %189) #7, !dbg !894
  br label %196, !dbg !895

196:                                              ; preds = %192, %194
  %197 = phi i8* [ %195, %194 ], [ %193, %192 ], !dbg !891
  store i8* %197, i8** %10, align 8, !dbg !891, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02LMMGGCAJ@?3?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !896
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !896
  %198 = load i8*, i8** %12, align 8, !dbg !898, !tbaa !707
  %199 = call i8* @halide_string_to_string(i8* %197, i8* %198, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02LMMGGCAJ@?3?5?$AA@", i64 0, i64 0)) #7, !dbg !898
  call void @llvm.dbg.value(metadata i64 25, metadata !669, metadata !DIExpression()), !dbg !875
  store i8* %199, i8** %10, align 8, !dbg !875, !tbaa !703
  %200 = load i8*, i8** %9, align 8, !dbg !899, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !904
  %201 = ptrtoint i8* %199 to i64, !dbg !906
  %202 = ptrtoint i8* %200 to i64, !dbg !906
  %203 = sub i64 %201, %202, !dbg !906
  %204 = icmp ult i64 %203, 25, !dbg !899
  br i1 %204, label %205, label %214, !dbg !899

205:                                              ; preds = %196, %205
  %206 = phi i8* [ %208, %205 ], [ %199, %196 ]
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !907
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !907
  %207 = load i8*, i8** %12, align 8, !dbg !910, !tbaa !707
  %208 = call i8* @halide_string_to_string(i8* %206, i8* %207, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0)) #7, !dbg !910
  store i8* %208, i8** %10, align 8, !dbg !875, !tbaa !703
  %209 = load i8*, i8** %9, align 8, !dbg !899, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !904
  %210 = ptrtoint i8* %208 to i64, !dbg !906
  %211 = ptrtoint i8* %209 to i64, !dbg !906
  %212 = sub i64 %210, %211, !dbg !906
  %213 = icmp ult i64 %212, 25, !dbg !899
  br i1 %213, label %205, label %214, !dbg !899, !llvm.loop !911

214:                                              ; preds = %205, %196
  %215 = phi i8* [ %199, %196 ], [ %208, %205 ], !dbg !875
  %216 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i64 0, i32 0, !dbg !913
  %217 = load i64, i64* %216, align 8, !dbg !913, !tbaa !182
  %218 = uitofp i64 %217 to float, !dbg !913
  %219 = load i32, i32* %45, align 8, !dbg !913, !tbaa !150
  %220 = sitofp i32 %219 to float, !dbg !913
  %221 = fmul float %220, 1.000000e+06, !dbg !913
  %222 = fdiv float %218, %221, !dbg !913
  call void @llvm.dbg.value(metadata float %222, metadata !675, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata float %222, metadata !778, metadata !DIExpression()) #8, !dbg !914
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !781, metadata !DIExpression()) #8, !dbg !914
  %223 = fpext float %222 to double, !dbg !916
  %224 = load i8*, i8** %12, align 8, !dbg !916, !tbaa !707
  %225 = call i8* @halide_double_to_string(i8* %215, i8* %224, double %223, i32 0) #7, !dbg !916
  store i8* %225, i8** %10, align 8, !dbg !916, !tbaa !703
  call void @llvm.dbg.value(metadata i32 3, metadata !917, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !920, metadata !DIExpression()), !dbg !921
  %226 = icmp eq i8* %225, null, !dbg !923
  br i1 %226, label %233, label %227, !dbg !923

227:                                              ; preds = %214
  %228 = getelementptr inbounds i8, i8* %225, i64 -3, !dbg !924
  %229 = load i8*, i8** %9, align 8, !dbg !927, !tbaa !718
  %230 = icmp ult i8* %228, %229, !dbg !927
  %231 = select i1 %230, i8* %229, i8* %228, !dbg !927
  store i8* %231, i8** %10, align 8, !dbg !928
  store i8 0, i8* %231, align 1, !dbg !929, !tbaa !709
  %232 = load i8*, i8** %10, align 8, !dbg !930, !tbaa !703
  br label %233, !dbg !932

233:                                              ; preds = %214, %227
  %234 = phi i8* [ null, %214 ], [ %232, %227 ], !dbg !930
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02EEKDFEKL@ms?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !933
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !933
  %235 = load i8*, i8** %12, align 8, !dbg !930, !tbaa !707
  %236 = call i8* @halide_string_to_string(i8* %234, i8* %235, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02EEKDFEKL@ms?$AA@", i64 0, i64 0)) #7, !dbg !930
  call void @llvm.dbg.value(metadata i64 35, metadata !669, metadata !DIExpression()), !dbg !875
  store i8* %236, i8** %10, align 8, !dbg !875, !tbaa !703
  %237 = load i8*, i8** %9, align 8, !dbg !934, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !935
  %238 = ptrtoint i8* %236 to i64, !dbg !937
  %239 = ptrtoint i8* %237 to i64, !dbg !937
  %240 = sub i64 %238, %239, !dbg !937
  %241 = icmp ult i64 %240, 35, !dbg !934
  br i1 %241, label %242, label %251, !dbg !934

242:                                              ; preds = %233, %242
  %243 = phi i8* [ %245, %242 ], [ %236, %233 ]
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !938
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !938
  %244 = load i8*, i8** %12, align 8, !dbg !941, !tbaa !707
  %245 = call i8* @halide_string_to_string(i8* %243, i8* %244, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0)) #7, !dbg !941
  store i8* %245, i8** %10, align 8, !dbg !875, !tbaa !703
  %246 = load i8*, i8** %9, align 8, !dbg !934, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !935
  %247 = ptrtoint i8* %245 to i64, !dbg !937
  %248 = ptrtoint i8* %246 to i64, !dbg !937
  %249 = sub i64 %247, %248, !dbg !937
  %250 = icmp ult i64 %249, 35, !dbg !934
  br i1 %250, label %242, label %251, !dbg !934, !llvm.loop !942

251:                                              ; preds = %242, %233
  %252 = phi i8* [ %236, %233 ], [ %245, %242 ], !dbg !875
  call void @llvm.dbg.value(metadata i32 0, metadata !676, metadata !DIExpression()), !dbg !875
  %253 = load i64, i64* %41, align 8, !dbg !944, !tbaa !152
  %254 = icmp eq i64 %253, 0, !dbg !944
  br i1 %254, label %259, label %255, !dbg !944

255:                                              ; preds = %251
  %256 = load i64, i64* %216, align 8, !dbg !945, !tbaa !182
  %257 = mul i64 %256, 100, !dbg !945
  %258 = udiv i64 %257, %253, !dbg !945
  call void @llvm.dbg.value(metadata i64 %258, metadata !676, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !875
  br label %259, !dbg !948

259:                                              ; preds = %255, %251
  %260 = phi i64 [ %258, %255 ], [ 0, %251 ], !dbg !875
  call void @llvm.dbg.value(metadata i32 undef, metadata !676, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01ODHLEDKK@?$CI?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !949
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !949
  %261 = load i8*, i8** %12, align 8, !dbg !951, !tbaa !707
  %262 = call i8* @halide_string_to_string(i8* %252, i8* %261, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01ODHLEDKK@?$CI?$AA@", i64 0, i64 0)) #7, !dbg !951
  store i8* %262, i8** %10, align 8, !dbg !951, !tbaa !703
  call void @llvm.dbg.value(metadata i32 undef, metadata !791, metadata !DIExpression()) #8, !dbg !952
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !794, metadata !DIExpression()) #8, !dbg !952
  %263 = shl i64 %260, 32, !dbg !954
  %264 = ashr exact i64 %263, 32, !dbg !954
  %265 = load i8*, i8** %12, align 8, !dbg !954, !tbaa !707
  %266 = call i8* @halide_int64_to_string(i8* %262, i8* %265, i64 %264, i32 1) #7, !dbg !954
  store i8* %266, i8** %10, align 8, !dbg !954, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02HKHODNAN@?$CF?$CJ?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !955
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !955
  %267 = load i8*, i8** %12, align 8, !dbg !957, !tbaa !707
  %268 = call i8* @halide_string_to_string(i8* %266, i8* %267, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02HKHODNAN@?$CF?$CJ?$AA@", i64 0, i64 0)) #7, !dbg !957
  call void @llvm.dbg.value(metadata i64 43, metadata !669, metadata !DIExpression()), !dbg !875
  store i8* %268, i8** %10, align 8, !dbg !875, !tbaa !703
  %269 = load i8*, i8** %9, align 8, !dbg !958, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !959
  %270 = ptrtoint i8* %268 to i64, !dbg !961
  %271 = ptrtoint i8* %269 to i64, !dbg !961
  %272 = sub i64 %270, %271, !dbg !961
  %273 = icmp ult i64 %272, 43, !dbg !958
  br i1 %273, label %274, label %283, !dbg !958

274:                                              ; preds = %259, %274
  %275 = phi i8* [ %277, %274 ], [ %268, %259 ]
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !962
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !962
  %276 = load i8*, i8** %12, align 8, !dbg !965, !tbaa !707
  %277 = call i8* @halide_string_to_string(i8* %275, i8* %276, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0)) #7, !dbg !965
  store i8* %277, i8** %10, align 8, !dbg !875, !tbaa !703
  %278 = load i8*, i8** %9, align 8, !dbg !958, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !959
  %279 = ptrtoint i8* %277 to i64, !dbg !961
  %280 = ptrtoint i8* %278 to i64, !dbg !961
  %281 = sub i64 %279, %280, !dbg !961
  %282 = icmp ult i64 %281, 43, !dbg !958
  br i1 %282, label %274, label %283, !dbg !958, !llvm.loop !966

283:                                              ; preds = %274, %259
  %284 = phi i8* [ %268, %259 ], [ %277, %274 ], !dbg !875
  br i1 %58, label %323, label %285, !dbg !968

285:                                              ; preds = %283
  %286 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 5, !dbg !969
  %287 = load i64, i64* %286, align 8, !dbg !969, !tbaa !198
  %288 = uitofp i64 %287 to double, !dbg !969
  %289 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 6, !dbg !969
  %290 = load i64, i64* %289, align 8, !dbg !969, !tbaa !200
  %291 = uitofp i64 %290 to double, !dbg !969
  %292 = fadd double %291, 1.000000e-10, !dbg !969
  %293 = fdiv double %288, %292, !dbg !969
  %294 = fptrunc double %293 to float, !dbg !969
  call void @llvm.dbg.value(metadata float %294, metadata !677, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09FJHPCCJM@threads?3?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !971
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !971
  %295 = load i8*, i8** %12, align 8, !dbg !973, !tbaa !707
  %296 = call i8* @halide_string_to_string(i8* %284, i8* %295, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09FJHPCCJM@threads?3?5?$AA@", i64 0, i64 0)) #7, !dbg !973
  store i8* %296, i8** %10, align 8, !dbg !973, !tbaa !703
  call void @llvm.dbg.value(metadata float %294, metadata !778, metadata !DIExpression()) #8, !dbg !974
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !781, metadata !DIExpression()) #8, !dbg !974
  %297 = fpext float %294 to double, !dbg !976
  %298 = load i8*, i8** %12, align 8, !dbg !976, !tbaa !707
  %299 = call i8* @halide_double_to_string(i8* %296, i8* %298, double %297, i32 0) #7, !dbg !976
  store i8* %299, i8** %10, align 8, !dbg !976, !tbaa !703
  call void @llvm.dbg.value(metadata i32 3, metadata !917, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !920, metadata !DIExpression()), !dbg !977
  %300 = icmp eq i8* %299, null, !dbg !979
  br i1 %300, label %307, label %301, !dbg !979

301:                                              ; preds = %285
  %302 = getelementptr inbounds i8, i8* %299, i64 -3, !dbg !980
  %303 = load i8*, i8** %9, align 8, !dbg !981, !tbaa !718
  %304 = icmp ult i8* %302, %303, !dbg !981
  %305 = select i1 %304, i8* %303, i8* %302, !dbg !981
  store i8* %305, i8** %10, align 8, !dbg !982
  store i8 0, i8* %305, align 1, !dbg !983, !tbaa !709
  %306 = load i8*, i8** %10, align 8, !dbg !984, !tbaa !703
  br label %307, !dbg !985

307:                                              ; preds = %285, %301
  %308 = phi i8* [ null, %285 ], [ %306, %301 ], !dbg !984
  call void @llvm.dbg.value(metadata i64 58, metadata !669, metadata !DIExpression()), !dbg !875
  %309 = load i8*, i8** %9, align 8, !dbg !984, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !986
  %310 = ptrtoint i8* %308 to i64, !dbg !988
  %311 = ptrtoint i8* %309 to i64, !dbg !988
  %312 = sub i64 %310, %311, !dbg !988
  %313 = icmp ult i64 %312, 58, !dbg !984
  br i1 %313, label %314, label %323, !dbg !984

314:                                              ; preds = %307, %314
  %315 = phi i8* [ %317, %314 ], [ %308, %307 ]
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !989
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !989
  %316 = load i8*, i8** %12, align 8, !dbg !992, !tbaa !707
  %317 = call i8* @halide_string_to_string(i8* %315, i8* %316, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0)) #7, !dbg !992
  store i8* %317, i8** %10, align 8, !dbg !992, !tbaa !703
  %318 = load i8*, i8** %9, align 8, !dbg !984, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !986
  %319 = ptrtoint i8* %317 to i64, !dbg !988
  %320 = ptrtoint i8* %318 to i64, !dbg !988
  %321 = sub i64 %319, %320, !dbg !988
  %322 = icmp ult i64 %321, 58, !dbg !984
  br i1 %322, label %314, label %323, !dbg !984, !llvm.loop !993

323:                                              ; preds = %314, %307, %283
  %324 = phi i8* [ %284, %283 ], [ %308, %307 ], [ %317, %314 ]
  %325 = phi i64 [ 58, %283 ], [ 73, %307 ], [ 73, %314 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !669, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i32 0, metadata !680, metadata !DIExpression()), !dbg !875
  %326 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 8, !dbg !995
  %327 = load i32, i32* %326, align 8, !dbg !995, !tbaa !194
  %328 = icmp eq i32 %327, 0, !dbg !995
  br i1 %328, label %334, label %329, !dbg !995

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 3, !dbg !996
  %331 = load i64, i64* %330, align 8, !dbg !996, !tbaa !192
  %332 = sext i32 %327 to i64, !dbg !996
  %333 = udiv i64 %331, %332, !dbg !996
  call void @llvm.dbg.value(metadata i64 %333, metadata !680, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !875
  br label %334, !dbg !999

334:                                              ; preds = %329, %323
  %335 = phi i64 [ %333, %329 ], [ 0, %323 ], !dbg !875
  call void @llvm.dbg.value(metadata i32 undef, metadata !680, metadata !DIExpression()), !dbg !875
  %336 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 2, !dbg !1000
  %337 = load i64, i64* %336, align 8, !dbg !1000, !tbaa !190
  %338 = icmp eq i64 %337, 0, !dbg !1000
  br i1 %338, label %390, label %339, !dbg !1000

339:                                              ; preds = %334
  call void @llvm.dbg.value(metadata i64 %325, metadata !669, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07CDPHGGBJ@?5peak?3?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !1001
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !1001
  %340 = load i8*, i8** %12, align 8, !dbg !1005, !tbaa !707
  %341 = call i8* @halide_string_to_string(i8* %324, i8* %340, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07CDPHGGBJ@?5peak?3?5?$AA@", i64 0, i64 0)) #7, !dbg !1005
  store i8* %341, i8** %10, align 8, !dbg !1005, !tbaa !703
  %342 = load i64, i64* %336, align 8, !dbg !1006, !tbaa !190
  call void @llvm.dbg.value(metadata i64 %342, metadata !837, metadata !DIExpression()) #8, !dbg !1007
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !840, metadata !DIExpression()) #8, !dbg !1007
  %343 = load i8*, i8** %12, align 8, !dbg !1009, !tbaa !707
  %344 = call i8* @halide_uint64_to_string(i8* %341, i8* %343, i64 %342, i32 1) #7, !dbg !1009
  store i8* %344, i8** %10, align 8, !dbg !1010, !tbaa !703
  %345 = load i8*, i8** %9, align 8, !dbg !1011, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !1012
  %346 = ptrtoint i8* %344 to i64, !dbg !1014
  %347 = ptrtoint i8* %345 to i64, !dbg !1014
  %348 = sub i64 %346, %347, !dbg !1014
  %349 = icmp ult i64 %348, %325, !dbg !1011
  br i1 %349, label %350, label %359, !dbg !1011

350:                                              ; preds = %339, %350
  %351 = phi i8* [ %353, %350 ], [ %344, %339 ]
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !1015
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !1015
  %352 = load i8*, i8** %12, align 8, !dbg !1018, !tbaa !707
  %353 = call i8* @halide_string_to_string(i8* %351, i8* %352, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0)) #7, !dbg !1018
  store i8* %353, i8** %10, align 8, !dbg !1010, !tbaa !703
  %354 = load i8*, i8** %9, align 8, !dbg !1011, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !1012
  %355 = ptrtoint i8* %353 to i64, !dbg !1014
  %356 = ptrtoint i8* %354 to i64, !dbg !1014
  %357 = sub i64 %355, %356, !dbg !1014
  %358 = icmp ult i64 %357, %325, !dbg !1011
  br i1 %358, label %350, label %359, !dbg !1011, !llvm.loop !1019

359:                                              ; preds = %350, %339
  %360 = phi i8* [ %344, %339 ], [ %353, %350 ], !dbg !1010
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06NLNGHDLC@?5num?3?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !1021
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !1021
  %361 = load i8*, i8** %12, align 8, !dbg !1023, !tbaa !707
  %362 = call i8* @halide_string_to_string(i8* %360, i8* %361, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06NLNGHDLC@?5num?3?5?$AA@", i64 0, i64 0)) #7, !dbg !1023
  store i8* %362, i8** %10, align 8, !dbg !1023, !tbaa !703
  %363 = load i32, i32* %326, align 8, !dbg !1024, !tbaa !194
  call void @llvm.dbg.value(metadata i32 %363, metadata !791, metadata !DIExpression()) #8, !dbg !1025
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !794, metadata !DIExpression()) #8, !dbg !1025
  %364 = sext i32 %363 to i64, !dbg !1027
  %365 = load i8*, i8** %12, align 8, !dbg !1027, !tbaa !707
  %366 = call i8* @halide_int64_to_string(i8* %362, i8* %365, i64 %364, i32 1) #7, !dbg !1027
  store i8* %366, i8** %10, align 8, !dbg !1027, !tbaa !703
  %367 = add nuw nsw i64 %325, 15, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %367, metadata !669, metadata !DIExpression()), !dbg !875
  %368 = load i8*, i8** %9, align 8, !dbg !1029, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !1030
  %369 = ptrtoint i8* %366 to i64, !dbg !1032
  %370 = ptrtoint i8* %368 to i64, !dbg !1032
  %371 = sub i64 %369, %370, !dbg !1032
  %372 = icmp ult i64 %371, %367, !dbg !1029
  br i1 %372, label %373, label %382, !dbg !1029

373:                                              ; preds = %359, %373
  %374 = phi i8* [ %376, %373 ], [ %366, %359 ]
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !1033
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !1033
  %375 = load i8*, i8** %12, align 8, !dbg !1036, !tbaa !707
  %376 = call i8* @halide_string_to_string(i8* %374, i8* %375, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i64 0, i64 0)) #7, !dbg !1036
  store i8* %376, i8** %10, align 8, !dbg !1036, !tbaa !703
  %377 = load i8*, i8** %9, align 8, !dbg !1029, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !1030
  %378 = ptrtoint i8* %376 to i64, !dbg !1032
  %379 = ptrtoint i8* %377 to i64, !dbg !1032
  %380 = sub i64 %378, %379, !dbg !1032
  %381 = icmp ult i64 %380, %367, !dbg !1029
  br i1 %381, label %373, label %382, !dbg !1029, !llvm.loop !1037

382:                                              ; preds = %373, %359
  %383 = phi i8* [ %366, %359 ], [ %376, %373 ], !dbg !1029
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06CJNFLND@?5avg?3?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !1039
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !1039
  %384 = load i8*, i8** %12, align 8, !dbg !1041, !tbaa !707
  %385 = call i8* @halide_string_to_string(i8* %383, i8* %384, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06CJNFLND@?5avg?3?5?$AA@", i64 0, i64 0)) #7, !dbg !1041
  store i8* %385, i8** %10, align 8, !dbg !1041, !tbaa !703
  call void @llvm.dbg.value(metadata i32 undef, metadata !791, metadata !DIExpression()) #8, !dbg !1042
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !794, metadata !DIExpression()) #8, !dbg !1042
  %386 = shl i64 %335, 32, !dbg !1044
  %387 = ashr exact i64 %386, 32, !dbg !1044
  %388 = load i8*, i8** %12, align 8, !dbg !1044, !tbaa !707
  %389 = call i8* @halide_int64_to_string(i8* %385, i8* %388, i64 %387, i32 1) #7, !dbg !1044
  store i8* %389, i8** %10, align 8, !dbg !1044, !tbaa !703
  br label %390, !dbg !1045

390:                                              ; preds = %382, %334
  %391 = phi i8* [ %389, %382 ], [ %324, %334 ]
  %392 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 4, !dbg !1046
  %393 = load i64, i64* %392, align 8, !dbg !1046, !tbaa !196
  %394 = icmp eq i64 %393, 0, !dbg !1046
  br i1 %394, label %401, label %395, !dbg !1046

395:                                              ; preds = %390
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08OMJKOODN@?5stack?3?5?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !1047
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !1047
  %396 = load i8*, i8** %12, align 8, !dbg !1051, !tbaa !707
  %397 = call i8* @halide_string_to_string(i8* %391, i8* %396, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08OMJKOODN@?5stack?3?5?$AA@", i64 0, i64 0)) #7, !dbg !1051
  store i8* %397, i8** %10, align 8, !dbg !1051, !tbaa !703
  %398 = load i64, i64* %392, align 8, !dbg !1052, !tbaa !196
  call void @llvm.dbg.value(metadata i64 %398, metadata !837, metadata !DIExpression()) #8, !dbg !1053
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !840, metadata !DIExpression()) #8, !dbg !1053
  %399 = load i8*, i8** %12, align 8, !dbg !1055, !tbaa !707
  %400 = call i8* @halide_uint64_to_string(i8* %397, i8* %399, i64 %398, i32 1) #7, !dbg !1055
  store i8* %400, i8** %10, align 8, !dbg !1055, !tbaa !703
  br label %401, !dbg !1056

401:                                              ; preds = %395, %390
  %402 = phi i8* [ %400, %395 ], [ %391, %390 ], !dbg !1057
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0), metadata !757, metadata !DIExpression()) #8, !dbg !1059
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !1059
  %403 = load i8*, i8** %12, align 8, !dbg !1057, !tbaa !707
  %404 = call i8* @halide_string_to_string(i8* %402, i8* %403, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i64 0, i64 0)) #7, !dbg !1057
  store i8* %404, i8** %10, align 8, !dbg !1057, !tbaa !703
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !847, metadata !DIExpression()) #8, !dbg !1060
  %405 = load i8*, i8** %9, align 8, !dbg !1062, !tbaa !718
  %406 = icmp eq i8* %405, null, !dbg !1062
  br i1 %406, label %415, label %407, !dbg !1062

407:                                              ; preds = %401
  %408 = load i8*, i8** %7, align 8, !dbg !1063, !tbaa !693
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !726, metadata !DIExpression()) #8, !dbg !1064
  %409 = ptrtoint i8* %404 to i64, !dbg !1066
  %410 = ptrtoint i8* %405 to i64, !dbg !1066
  %411 = add i64 %409, 1, !dbg !1066
  %412 = sub i64 %411, %410, !dbg !1066
  %413 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %408, i8* nonnull %405, i64 %412) #7, !dbg !1066
  %414 = load i8*, i8** %9, align 8, !dbg !1067, !tbaa !718
  br label %415, !dbg !1067

415:                                              ; preds = %401, %407
  %416 = phi i8* [ %414, %407 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i64 0, i64 0), %401 ], !dbg !1068
  call void @halide_print(i8* %0, i8* %416) #7, !dbg !1069
  br label %417, !dbg !1070

417:                                              ; preds = %180, %415
  %418 = add nuw nsw i64 %172, 1, !dbg !1071
  call void @llvm.dbg.value(metadata i64 %418, metadata !665, metadata !DIExpression()), !dbg !873
  %419 = load i32, i32* %166, align 8, !dbg !874, !tbaa !132
  %420 = sext i32 %419 to i64, !dbg !874
  %421 = icmp slt i64 %418, %420, !dbg !874
  br i1 %421, label %171, label %422, !dbg !874, !llvm.loop !1072

422:                                              ; preds = %157, %417, %149, %165, %39
  %423 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 8, !dbg !1074
  %424 = bitcast i8** %423 to %struct.halide_profiler_pipeline_stats**, !dbg !1074
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !649, metadata !DIExpression()), !dbg !711
  %425 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %424, align 8, !dbg !711, !tbaa !121
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %425, metadata !649, metadata !DIExpression()), !dbg !711
  %426 = icmp eq %struct.halide_profiler_pipeline_stats* %425, null, !dbg !710
  br i1 %426, label %16, label %39, !dbg !710, !llvm.loop !1075
}

; Function Attrs: nounwind
define weak dso_local void @halide_profiler_report(i8* %0) local_unnamed_addr #5 !dbg !1077 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1079, metadata !DIExpression()), !dbg !1082
  %2 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !1083
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %2, metadata !1080, metadata !DIExpression()), !dbg !1082
  %3 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i64 0, i32 0, !dbg !1084
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !324, metadata !DIExpression()) #8, !dbg !1085
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !327, metadata !DIExpression()) #8, !dbg !1085
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !1081, metadata !DIExpression()), !dbg !1082
  tail call void @halide_mutex_lock(%struct.halide_mutex* %3) #7, !dbg !1087
  tail call void @halide_profiler_report_unlocked(i8* %0, %struct.halide_profiler_state* %2) #6, !dbg !1088
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !341, metadata !DIExpression()) #8, !dbg !1089
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %3) #7, !dbg !1091
  ret void, !dbg !1092
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* %0) local_unnamed_addr #1 !dbg !1093 {
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %0, metadata !1097, metadata !DIExpression()), !dbg !1100
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i64 0, i32 5, !dbg !1101
  %3 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %2, align 8, !dbg !1101, !tbaa !140
  %4 = icmp eq %struct.halide_profiler_pipeline_stats* %3, null, !dbg !1101
  br i1 %4, label %16, label %5, !dbg !1101

5:                                                ; preds = %1, %5
  %6 = phi %struct.halide_profiler_pipeline_stats* [ %14, %5 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %6, metadata !1098, metadata !DIExpression()), !dbg !1102
  %7 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %6, i64 0, i32 8, !dbg !1103
  %8 = bitcast i8** %7 to %struct.halide_profiler_pipeline_stats**, !dbg !1103
  %9 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %8, align 8, !dbg !1103, !tbaa !143
  store %struct.halide_profiler_pipeline_stats* %9, %struct.halide_profiler_pipeline_stats** %2, align 8, !dbg !1103, !tbaa !140
  %10 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %6, i64 0, i32 7, !dbg !1104
  %11 = bitcast %struct.halide_profiler_func_stats** %10 to i8**, !dbg !1104
  %12 = load i8*, i8** %11, align 8, !dbg !1104, !tbaa !168
  tail call void @free(i8* %12) #7, !dbg !1104
  %13 = bitcast %struct.halide_profiler_pipeline_stats* %6 to i8*, !dbg !1105
  tail call void @free(i8* nonnull %13) #7, !dbg !1105
  %14 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %2, align 8, !dbg !1101, !tbaa !140
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null, !dbg !1101
  br i1 %15, label %16, label %5, !dbg !1101, !llvm.loop !1106

16:                                               ; preds = %5, %1
  %17 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i64 0, i32 2, !dbg !1108
  store i32 0, i32* %17, align 4, !dbg !1108, !tbaa !146
  ret void, !dbg !1109
}

; Function Attrs: nounwind
define weak dso_local void @halide_profiler_reset() local_unnamed_addr #5 !dbg !1110 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !1116
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %1, metadata !1114, metadata !DIExpression()), !dbg !1117
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 0, !dbg !1118
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %2, metadata !324, metadata !DIExpression()) #8, !dbg !1119
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !327, metadata !DIExpression()) #8, !dbg !1119
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %2, metadata !1115, metadata !DIExpression()), !dbg !1117
  tail call void @halide_mutex_lock(%struct.halide_mutex* %2) #7, !dbg !1121
  tail call void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* %1) #6, !dbg !1122
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !341, metadata !DIExpression()) #8, !dbg !1123
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %2) #7, !dbg !1125
  ret void, !dbg !1126
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_shutdown() local_unnamed_addr #1 !dbg !1127 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !1130
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %1, metadata !1129, metadata !DIExpression()), !dbg !1131
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 7, !dbg !1132
  %3 = load %struct.halide_thread*, %struct.halide_thread** %2, align 8, !dbg !1132, !tbaa !367
  %4 = icmp eq %struct.halide_thread* %3, null, !dbg !1132
  br i1 %4, label %7, label %5, !dbg !1132

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 3, !dbg !1133
  store i32 -2, i32* %6, align 8, !dbg !1133, !tbaa !263
  tail call void @halide_join_thread(%struct.halide_thread* nonnull %3) #7, !dbg !1134
  store %struct.halide_thread* null, %struct.halide_thread** %2, align 8, !dbg !1135, !tbaa !367
  store i32 -1, i32* %6, align 8, !dbg !1136, !tbaa !263
  tail call void @halide_profiler_report_unlocked(i8* null, %struct.halide_profiler_state* nonnull %1) #6, !dbg !1137
  tail call void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* nonnull %1) #6, !dbg !1138
  br label %7, !dbg !1139

7:                                                ; preds = %0, %5
  ret void, !dbg !1139
}

declare dso_local void @halide_join_thread(%struct.halide_thread*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_windows_profiler_shutdown() local_unnamed_addr #1 !dbg !1140 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !1143
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %1, metadata !1142, metadata !DIExpression()), !dbg !1144
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 7, !dbg !1145
  %3 = load %struct.halide_thread*, %struct.halide_thread** %2, align 8, !dbg !1145, !tbaa !367
  %4 = icmp eq %struct.halide_thread* %3, null, !dbg !1145
  br i1 %4, label %6, label %5, !dbg !1145

5:                                                ; preds = %0
  tail call void @halide_profiler_report_unlocked(i8* null, %struct.halide_profiler_state* nonnull %1) #6, !dbg !1146
  br label %6, !dbg !1147

6:                                                ; preds = %0, %5
  ret void, !dbg !1147
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_profiler_pipeline_end(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1148 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !1152, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i8* %0, metadata !1153, metadata !DIExpression()), !dbg !1154
  %3 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1155
  %4 = bitcast i8* %3 to i32*, !dbg !1155
  store i32 -1, i32* %4, align 8, !dbg !1155, !tbaa !263
  ret void, !dbg !1156
}

declare extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #4

declare dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #4

declare extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #4

declare extern_weak dso_local i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #4

declare extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #4

declare extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!68}
!llvm.module.flags = !{!97, !98, !99}
!llvm.ident = !{!100}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "s", scope: !2, file: !3, line: 12, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "halide_profiler_get_state", scope: !3, file: !3, line: 11, type: !4, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !96)
!3 = !DIFile(filename: "src/runtime/profiler.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "900600451b4b8bae854b3e4a030fb5c9")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_profiler_state", file: !8, line: 1766, size: 384, flags: DIFlagTypePassByValue, elements: !9, identifier: ".?AUhalide_profiler_state@@")
!8 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "b7ab0d29491f0813a909553a9435c0e2")
!9 = !{!10, !21, !23, !24, !25, !26, !60, !65}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !7, file: !8, line: 1770, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !8, line: 120, size: 64, flags: DIFlagTypePassByValue, elements: !12, identifier: ".?AUhalide_mutex@@")
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !11, file: !8, line: 121, baseType: !14, size: 64)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !19)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !16, line: 61, baseType: !17)
!16 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "0c7b3d8a4f3a5581b3edea53998e0f01")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !16, line: 10, baseType: !18)
!18 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !{!20}
!20 = !DISubrange(count: 1)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_time", scope: !7, file: !8, line: 1774, baseType: !22, size: 32, offset: 64)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "first_free_id", scope: !7, file: !8, line: 1777, baseType: !22, size: 32, offset: 96)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "current_func", scope: !7, file: !8, line: 1781, baseType: !22, size: 32, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "active_threads", scope: !7, file: !8, line: 1784, baseType: !22, size: 32, offset: 160)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "pipelines", scope: !7, file: !8, line: 1787, baseType: !27, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_profiler_pipeline_stats", file: !8, line: 1721, size: 768, flags: DIFlagTypePassByValue, elements: !29, identifier: ".?AUhalide_profiler_pipeline_stats@@")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !40, !53, !55, !56, !57, !58, !59}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !28, file: !8, line: 1723, baseType: !17, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "memory_current", scope: !28, file: !8, line: 1726, baseType: !17, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "memory_peak", scope: !28, file: !8, line: 1729, baseType: !17, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "memory_total", scope: !28, file: !8, line: 1732, baseType: !17, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "active_threads_numerator", scope: !28, file: !8, line: 1736, baseType: !17, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "active_threads_denominator", scope: !28, file: !8, line: 1736, baseType: !17, size: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !28, file: !8, line: 1739, baseType: !37, size: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !28, file: !8, line: 1742, baseType: !41, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_profiler_func_stats", file: !8, line: 1693, size: 576, flags: DIFlagTypePassByValue, elements: !43, identifier: ".?AUhalide_profiler_func_stats@@")
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !42, file: !8, line: 1695, baseType: !17, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "memory_current", scope: !42, file: !8, line: 1698, baseType: !17, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "memory_peak", scope: !42, file: !8, line: 1701, baseType: !17, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "memory_total", scope: !42, file: !8, line: 1704, baseType: !17, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "stack_peak", scope: !42, file: !8, line: 1707, baseType: !17, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "active_threads_numerator", scope: !42, file: !8, line: 1710, baseType: !17, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "active_threads_denominator", scope: !42, file: !8, line: 1710, baseType: !17, size: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !42, file: !8, line: 1713, baseType: !37, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "num_allocs", scope: !42, file: !8, line: 1716, baseType: !22, size: 32, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !28, file: !8, line: 1746, baseType: !54, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "num_funcs", scope: !28, file: !8, line: 1749, baseType: !22, size: 32, offset: 576)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "first_func_id", scope: !28, file: !8, line: 1752, baseType: !22, size: 32, offset: 608)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "runs", scope: !28, file: !8, line: 1755, baseType: !22, size: 32, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "samples", scope: !28, file: !8, line: 1758, baseType: !22, size: 32, offset: 672)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "num_allocs", scope: !28, file: !8, line: 1761, baseType: !22, size: 32, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "get_remote_profiler_state", scope: !7, file: !8, line: 1792, baseType: !61, size: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_thread", scope: !7, file: !8, line: 1795, baseType: !66, size: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_thread", file: !8, line: 312, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AUhalide_thread@@")
!68 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !69, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !84, globals: !86, imports: !91, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_profiler.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "3382dfd7821992c2e028aabed8bd4d40")
!70 = !{!71, !75}
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 1799, baseType: !22, size: 32, elements: !72, identifier: ".?AW4<unnamed-enum-halide_profiler_outside_of_halide>@@")
!72 = !{!73, !74}
!73 = !DIEnumerator(name: "halide_profiler_outside_of_halide", value: -1)
!74 = !DIEnumerator(name: "halide_profiler_please_stop", value: -2)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !8, line: 403, baseType: !76, size: 8, elements: !78, identifier: ".?AW4halide_type_code_t@@")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !16, line: 16, baseType: !77)
!77 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!80 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!83 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!84 = !{!27, !41, !37, !6, !85, !17}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!86 = !{!0, !87, !89}
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_stack_value))
!88 = distinct !DIGlobalVariable(name: "halide_profiler_please_stop", scope: !68, file: !8, line: 1805, type: !71, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_stack_value))
!90 = distinct !DIGlobalVariable(name: "halide_profiler_outside_of_halide", scope: !68, file: !8, line: 1801, type: !71, isLocal: true, isDefinition: true)
!91 = !{!92}
!92 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !68, entity: !93, file: !16, line: 225)
!93 = !DINamespace(name: "Internal", scope: !94)
!94 = !DINamespace(name: "Runtime", scope: !95)
!95 = !DINamespace(name: "Halide", scope: null)
!96 = !{}
!97 = !{i32 2, !"CodeView", i32 1}
!98 = !{i32 2, !"Debug Info Version", i32 3}
!99 = !{i32 1, !"wchar_size", i32 4}
!100 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!101 = !DILocation(line: 13, scope: !2)
!102 = distinct !DISubprogram(name: "find_or_create_pipeline", linkageName: "?find_or_create_pipeline@Internal@Runtime@Halide@@YAPEAUhalide_profiler_pipeline_stats@@PEBDHPEB_K@Z", scope: !93, file: !3, line: 21, type: !103, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !107)
!103 = !DISubroutineType(types: !104)
!104 = !{!27, !37, !22, !105}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!107 = !{!108, !109, !110, !111, !112, !114, !115}
!108 = !DILocalVariable(name: "func_names", arg: 3, scope: !102, file: !3, line: 21, type: !105)
!109 = !DILocalVariable(name: "num_funcs", arg: 2, scope: !102, file: !3, line: 21, type: !22)
!110 = !DILocalVariable(name: "pipeline_name", arg: 1, scope: !102, file: !3, line: 21, type: !37)
!111 = !DILocalVariable(name: "s", scope: !102, file: !3, line: 22, type: !6)
!112 = !DILocalVariable(name: "p", scope: !113, file: !3, line: 24, type: !27)
!113 = distinct !DILexicalBlock(scope: !102, file: !3, line: 24)
!114 = !DILocalVariable(name: "p", scope: !102, file: !3, line: 34, type: !27)
!115 = !DILocalVariable(name: "i", scope: !116, file: !3, line: 57, type: !22)
!116 = distinct !DILexicalBlock(scope: !102, file: !3, line: 57)
!117 = !DILocation(line: 0, scope: !102)
!118 = !DILocation(line: 22, scope: !102)
!119 = !DILocation(line: 24, scope: !113)
!120 = !DILocation(line: 0, scope: !113)
!121 = !{!122, !122, i64 0}
!122 = !{!"any pointer", !123, i64 0}
!123 = !{!"omnipotent char", !124, i64 0}
!124 = !{!"Simple C++ TBAA"}
!125 = !DILocation(line: 28, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !3, line: 25)
!127 = distinct !DILexicalBlock(scope: !113, file: !3, line: 24)
!128 = !{!129, !122, i64 48}
!129 = !{!"?AUhalide_profiler_pipeline_stats@@", !130, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !122, i64 48, !122, i64 56, !122, i64 64, !131, i64 72, !131, i64 76, !131, i64 80, !131, i64 84, !131, i64 88}
!130 = !{!"long long", !123, i64 0}
!131 = !{!"int", !123, i64 0}
!132 = !{!129, !131, i64 72}
!133 = !DILocation(line: 25, scope: !127)
!134 = distinct !{!134, !119, !135, !136}
!135 = !DILocation(line: 32, scope: !113)
!136 = !{!"llvm.loop.mustprogress"}
!137 = !DILocation(line: 34, scope: !102)
!138 = !DILocation(line: 36, scope: !102)
!139 = !DILocation(line: 39, scope: !102)
!140 = !{!141, !122, i64 24}
!141 = !{!"?AUhalide_profiler_state@@", !142, i64 0, !131, i64 8, !131, i64 12, !131, i64 16, !131, i64 20, !122, i64 24, !122, i64 32, !122, i64 40}
!142 = !{!"?AUhalide_mutex@@", !123, i64 0}
!143 = !{!129, !122, i64 64}
!144 = !DILocation(line: 40, scope: !102)
!145 = !DILocation(line: 41, scope: !102)
!146 = !{!141, !131, i64 12}
!147 = !{!129, !131, i64 76}
!148 = !DILocation(line: 42, scope: !102)
!149 = !DILocation(line: 43, scope: !102)
!150 = !{!129, !131, i64 80}
!151 = !DILocation(line: 44, scope: !102)
!152 = !{!129, !130, i64 0}
!153 = !DILocation(line: 45, scope: !102)
!154 = !{!129, !131, i64 84}
!155 = !DILocation(line: 46, scope: !102)
!156 = !{!129, !130, i64 8}
!157 = !DILocation(line: 47, scope: !102)
!158 = !{!129, !130, i64 16}
!159 = !DILocation(line: 48, scope: !102)
!160 = !{!129, !130, i64 24}
!161 = !DILocation(line: 49, scope: !102)
!162 = !{!129, !131, i64 88}
!163 = !DILocation(line: 50, scope: !102)
!164 = !{!129, !130, i64 32}
!165 = !DILocation(line: 51, scope: !102)
!166 = !{!129, !130, i64 40}
!167 = !DILocation(line: 52, scope: !102)
!168 = !{!129, !122, i64 56}
!169 = !DILocation(line: 53, scope: !102)
!170 = !DILocation(line: 0, scope: !116)
!171 = !DILocation(line: 57, scope: !116)
!172 = !DILocation(line: 54, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !3, line: 53)
!174 = distinct !DILexicalBlock(scope: !102, file: !3, line: 53)
!175 = !DILocation(line: 55, scope: !173)
!176 = !DILocation(line: 68, scope: !102)
!177 = !DILocation(line: 69, scope: !102)
!178 = !DILocation(line: 70, scope: !102)
!179 = !DILocation(line: 58, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !3, line: 57)
!181 = distinct !DILexicalBlock(scope: !116, file: !3, line: 57)
!182 = !{!183, !130, i64 0}
!183 = !{!"?AUhalide_profiler_func_stats@@", !130, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !130, i64 48, !122, i64 56, !131, i64 64}
!184 = !DILocation(line: 59, scope: !180)
!185 = !{!130, !130, i64 0}
!186 = !{!183, !122, i64 56}
!187 = !DILocation(line: 60, scope: !180)
!188 = !{!183, !130, i64 8}
!189 = !DILocation(line: 61, scope: !180)
!190 = !{!183, !130, i64 16}
!191 = !DILocation(line: 62, scope: !180)
!192 = !{!183, !130, i64 24}
!193 = !DILocation(line: 63, scope: !180)
!194 = !{!183, !131, i64 64}
!195 = !DILocation(line: 64, scope: !180)
!196 = !{!183, !130, i64 32}
!197 = !DILocation(line: 65, scope: !180)
!198 = !{!183, !130, i64 40}
!199 = !DILocation(line: 66, scope: !180)
!200 = !{!183, !130, i64 48}
!201 = !DILocation(line: 57, scope: !181)
!202 = distinct !{!202, !171, !203, !136}
!203 = !DILocation(line: 67, scope: !116)
!204 = !DILocation(line: 71, scope: !102)
!205 = distinct !DISubprogram(name: "bill_func", linkageName: "?bill_func@Internal@Runtime@Halide@@YAXPEAUhalide_profiler_state@@H_KH@Z", scope: !93, file: !3, line: 73, type: !206, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !208)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !6, !22, !17, !22}
!208 = !{!209, !210, !211, !212, !213, !214, !216}
!209 = !DILocalVariable(name: "active_threads", arg: 4, scope: !205, file: !3, line: 73, type: !22)
!210 = !DILocalVariable(name: "time", arg: 3, scope: !205, file: !3, line: 73, type: !17)
!211 = !DILocalVariable(name: "func_id", arg: 2, scope: !205, file: !3, line: 73, type: !22)
!212 = !DILocalVariable(name: "s", arg: 1, scope: !205, file: !3, line: 73, type: !6)
!213 = !DILocalVariable(name: "p_prev", scope: !205, file: !3, line: 74, type: !27)
!214 = !DILocalVariable(name: "p", scope: !215, file: !3, line: 75, type: !27)
!215 = distinct !DILexicalBlock(scope: !205, file: !3, line: 75)
!216 = !DILocalVariable(name: "f", scope: !217, file: !3, line: 84, type: !41)
!217 = distinct !DILexicalBlock(scope: !218, file: !3, line: 77)
!218 = distinct !DILexicalBlock(scope: !219, file: !3, line: 77)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 76)
!220 = distinct !DILexicalBlock(scope: !215, file: !3, line: 75)
!221 = !DILocation(line: 0, scope: !205)
!222 = !DILocation(line: 75, scope: !215)
!223 = !DILocation(line: 0, scope: !215)
!224 = !DILocation(line: 77, scope: !219)
!225 = !DILocation(line: 78, scope: !217)
!226 = !DILocation(line: 80, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 78)
!228 = distinct !DILexicalBlock(scope: !217, file: !3, line: 78)
!229 = !DILocation(line: 81, scope: !227)
!230 = !DILocation(line: 82, scope: !227)
!231 = !DILocation(line: 83, scope: !227)
!232 = !DILocation(line: 84, scope: !217)
!233 = !DILocation(line: 0, scope: !217)
!234 = !DILocation(line: 85, scope: !217)
!235 = !DILocation(line: 86, scope: !217)
!236 = !DILocation(line: 87, scope: !217)
!237 = !DILocation(line: 88, scope: !217)
!238 = !DILocation(line: 89, scope: !217)
!239 = !DILocation(line: 90, scope: !217)
!240 = !DILocation(line: 91, scope: !217)
!241 = !DILocation(line: 76, scope: !220)
!242 = distinct !{!242, !222, !243, !136}
!243 = !DILocation(line: 95, scope: !215)
!244 = !DILocation(line: 97, scope: !205)
!245 = distinct !DISubprogram(name: "sampling_profiler_thread", linkageName: "?sampling_profiler_thread@Internal@Runtime@Halide@@YAXPEAX@Z", scope: !93, file: !3, line: 99, type: !246, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !248)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !54}
!248 = !{!249, !250, !251, !253, !254, !256, !257, !258}
!249 = !DILocalVariable(arg: 1, scope: !245, file: !3, line: 99, type: !54)
!250 = !DILocalVariable(name: "s", scope: !245, file: !3, line: 100, type: !6)
!251 = !DILocalVariable(name: "t1", scope: !252, file: !3, line: 107, type: !17)
!252 = distinct !DILexicalBlock(scope: !245, file: !3, line: 105)
!253 = !DILocalVariable(name: "t", scope: !252, file: !3, line: 108, type: !17)
!254 = !DILocalVariable(name: "func", scope: !255, file: !3, line: 110, type: !22)
!255 = distinct !DILexicalBlock(scope: !252, file: !3, line: 109)
!256 = !DILocalVariable(name: "active_threads", scope: !255, file: !3, line: 110, type: !22)
!257 = !DILocalVariable(name: "t_now", scope: !255, file: !3, line: 119, type: !17)
!258 = !DILocalVariable(name: "sleep_ms", scope: !255, file: !3, line: 130, type: !22)
!259 = !DILocation(line: 0, scope: !245)
!260 = !DILocation(line: 100, scope: !245)
!261 = !DILocation(line: 103, scope: !245)
!262 = !DILocation(line: 105, scope: !245)
!263 = !{!141, !131, i64 16}
!264 = !DILocation(line: 0, scope: !252)
!265 = !DILocation(line: 134, scope: !255)
!266 = distinct !{!266, !262, !267, !136}
!267 = !DILocation(line: 135, scope: !245)
!268 = !DILocation(line: 107, scope: !252)
!269 = !DILocation(line: 109, scope: !252)
!270 = !DILocation(line: 108, scope: !252)
!271 = !DILocation(line: 110, scope: !255)
!272 = !DILocation(line: 111, scope: !255)
!273 = !{!141, !122, i64 32}
!274 = !DILocation(line: 0, scope: !255)
!275 = !DILocation(line: 114, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 111)
!277 = distinct !DILexicalBlock(scope: !255, file: !3, line: 111)
!278 = !DILocation(line: 115, scope: !276)
!279 = !DILocation(line: 116, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !3, line: 115)
!281 = !{!131, !131, i64 0}
!282 = !DILocation(line: 117, scope: !280)
!283 = !{!141, !131, i64 20}
!284 = !DILocation(line: 118, scope: !280)
!285 = !DILocation(line: 119, scope: !255)
!286 = !DILocation(line: 120, scope: !255)
!287 = !DILocation(line: 122, scope: !288)
!288 = distinct !DILexicalBlock(scope: !255, file: !3, line: 120)
!289 = !DILocation(line: 125, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !3, line: 122)
!291 = distinct !DILexicalBlock(scope: !288, file: !3, line: 122)
!292 = !DILocation(line: 126, scope: !290)
!293 = !DILocation(line: 130, scope: !255)
!294 = !{!141, !131, i64 8}
!295 = !DILocation(line: 131, scope: !255)
!296 = !DILocation(line: 132, scope: !255)
!297 = !DILocation(line: 133, scope: !255)
!298 = !DILocation(line: 137, scope: !245)
!299 = !DILocation(line: 138, scope: !245)
!300 = distinct !DISubprogram(name: "halide_profiler_get_pipeline_state", scope: !3, file: !3, line: 162, type: !301, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{!27, !37}
!303 = !{!304, !305, !306, !319}
!304 = !DILocalVariable(name: "pipeline_name", arg: 1, scope: !300, file: !3, line: 162, type: !37)
!305 = !DILocalVariable(name: "s", scope: !300, file: !3, line: 163, type: !6)
!306 = !DILocalVariable(name: "lock", scope: !300, file: !3, line: 165, type: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !93, file: !308, line: 11, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !309, identifier: ".?AUScopedMutexLock@Internal@Runtime@Halide@@")
!308 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "642ccaf34ebe2e8cca3ae0e35e43768c")
!309 = !{!310, !312, !316}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !307, file: !308, line: 12, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!312 = !DISubprogram(name: "ScopedMutexLock", scope: !307, file: !308, line: 14, type: !313, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !315, !311}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!316 = !DISubprogram(name: "~ScopedMutexLock", scope: !307, file: !308, line: 19, type: !317, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !315}
!319 = !DILocalVariable(name: "p", scope: !320, file: !3, line: 167, type: !27)
!320 = distinct !DILexicalBlock(scope: !300, file: !3, line: 167)
!321 = !DILocation(line: 0, scope: !300)
!322 = !DILocation(line: 163, scope: !300)
!323 = !DILocation(line: 165, scope: !300)
!324 = !DILocalVariable(name: "mutex", arg: 2, scope: !325, file: !308, line: 14, type: !311)
!325 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "??0ScopedMutexLock@Internal@Runtime@Halide@@QEAA@PEAUhalide_mutex@@@Z", scope: !307, file: !308, line: 14, type: !313, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !312, retainedNodes: !326)
!326 = !{!324, !327}
!327 = !DILocalVariable(name: "this", arg: 1, scope: !325, type: !328, flags: DIFlagArtificial | DIFlagObjectPointer)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!329 = !DILocation(line: 0, scope: !325, inlinedAt: !330)
!330 = distinct !DILocation(line: 165, scope: !300)
!331 = !DILocation(line: 16, scope: !332, inlinedAt: !330)
!332 = distinct !DILexicalBlock(scope: !325, file: !308, line: 15)
!333 = !DILocation(line: 167, scope: !320)
!334 = !DILocation(line: 0, scope: !320)
!335 = !DILocation(line: 171, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !3, line: 168)
!337 = distinct !DILexicalBlock(scope: !320, file: !3, line: 167)
!338 = !DILocation(line: 168, scope: !337)
!339 = distinct !{!339, !333, !340, !136}
!340 = !DILocation(line: 174, scope: !320)
!341 = !DILocalVariable(name: "this", arg: 1, scope: !342, type: !328, flags: DIFlagArtificial | DIFlagObjectPointer)
!342 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "??1ScopedMutexLock@Internal@Runtime@Halide@@QEAA@XZ", scope: !307, file: !308, line: 19, type: !317, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !316, retainedNodes: !343)
!343 = !{!341}
!344 = !DILocation(line: 0, scope: !342, inlinedAt: !345)
!345 = distinct !DILocation(line: 176, scope: !300)
!346 = !DILocation(line: 20, scope: !347, inlinedAt: !345)
!347 = distinct !DILexicalBlock(scope: !342, file: !308, line: 19)
!348 = !DILocation(line: 176, scope: !300)
!349 = distinct !DISubprogram(name: "halide_profiler_pipeline_start", scope: !3, file: !3, line: 179, type: !350, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !352)
!350 = !DISubroutineType(types: !351)
!351 = !{!22, !54, !37, !22, !105}
!352 = !{!353, !354, !355, !356, !357, !358, !359}
!353 = !DILocalVariable(name: "func_names", arg: 4, scope: !349, file: !3, line: 182, type: !105)
!354 = !DILocalVariable(name: "num_funcs", arg: 3, scope: !349, file: !3, line: 181, type: !22)
!355 = !DILocalVariable(name: "pipeline_name", arg: 2, scope: !349, file: !3, line: 180, type: !37)
!356 = !DILocalVariable(name: "user_context", arg: 1, scope: !349, file: !3, line: 179, type: !54)
!357 = !DILocalVariable(name: "s", scope: !349, file: !3, line: 183, type: !6)
!358 = !DILocalVariable(name: "lock", scope: !349, file: !3, line: 185, type: !307)
!359 = !DILocalVariable(name: "p", scope: !349, file: !3, line: 192, type: !27)
!360 = !DILocation(line: 0, scope: !349)
!361 = !DILocation(line: 183, scope: !349)
!362 = !DILocation(line: 185, scope: !349)
!363 = !DILocation(line: 0, scope: !325, inlinedAt: !364)
!364 = distinct !DILocation(line: 185, scope: !349)
!365 = !DILocation(line: 16, scope: !332, inlinedAt: !364)
!366 = !DILocation(line: 187, scope: !349)
!367 = !{!141, !122, i64 40}
!368 = !DILocation(line: 188, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !3, line: 187)
!370 = distinct !DILexicalBlock(scope: !349, file: !3, line: 187)
!371 = !DILocation(line: 189, scope: !369)
!372 = !DILocation(line: 190, scope: !369)
!373 = !DILocation(line: 192, scope: !349)
!374 = !DILocation(line: 194, scope: !349)
!375 = !DILocation(line: 196, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !3, line: 194)
!377 = distinct !DILexicalBlock(scope: !349, file: !3, line: 194)
!378 = !DILocation(line: 198, scope: !349)
!379 = !DILocation(line: 200, scope: !349)
!380 = !DILocation(line: 0, scope: !342, inlinedAt: !381)
!381 = distinct !DILocation(line: 201, scope: !349)
!382 = !DILocation(line: 20, scope: !347, inlinedAt: !381)
!383 = !DILocation(line: 201, scope: !349)
!384 = distinct !DISubprogram(name: "halide_profiler_stack_peak_update", scope: !3, file: !3, line: 203, type: !385, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !388)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !54, !54, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!388 = !{!389, !390, !391, !392, !393}
!389 = !DILocalVariable(name: "f_values", arg: 3, scope: !384, file: !3, line: 205, type: !387)
!390 = !DILocalVariable(name: "pipeline_state", arg: 2, scope: !384, file: !3, line: 204, type: !54)
!391 = !DILocalVariable(name: "user_context", arg: 1, scope: !384, file: !3, line: 203, type: !54)
!392 = !DILocalVariable(name: "p_stats", scope: !384, file: !3, line: 206, type: !27)
!393 = !DILocalVariable(name: "i", scope: !394, file: !3, line: 216, type: !22)
!394 = distinct !DILexicalBlock(scope: !384, file: !3, line: 216)
!395 = !DILocation(line: 0, scope: !384)
!396 = !DILocation(line: 207, scope: !397)
!397 = distinct !DILexicalBlock(scope: !384, file: !3, line: 207)
!398 = !DILocation(line: 207, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !3, line: 207)
!400 = distinct !DILexicalBlock(scope: !397, file: !3, line: 207)
!401 = !DILocation(line: 0, scope: !394)
!402 = !DILocation(line: 216, scope: !394)
!403 = !DILocation(line: 221, scope: !384)
!404 = !DILocation(line: 217, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !3, line: 216)
!406 = distinct !DILexicalBlock(scope: !394, file: !3, line: 216)
!407 = !DILocation(line: 218, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 217)
!409 = distinct !DILexicalBlock(scope: !405, file: !3, line: 217)
!410 = !DILocalVariable(name: "val", arg: 2, scope: !411, file: !3, line: 147, type: !18)
!411 = distinct !DISubprogram(name: "sync_compare_max_and_swap<unsigned long long>", linkageName: "??$sync_compare_max_and_swap@_K@?A0x3E95B2E2@@YAXPEA_K_K@Z", scope: !412, file: !3, line: 147, type: !413, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, templateParams: !421, retainedNodes: !416)
!412 = !DINamespace(scope: null)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !415, !18}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!416 = !{!410, !417, !418, !419}
!417 = !DILocalVariable(name: "ptr", arg: 1, scope: !411, file: !3, line: 147, type: !415)
!418 = !DILocalVariable(name: "old_val", scope: !411, file: !3, line: 148, type: !18)
!419 = !DILocalVariable(name: "temp", scope: !420, file: !3, line: 150, type: !18)
!420 = distinct !DILexicalBlock(scope: !411, file: !3, line: 149)
!421 = !{!422}
!422 = !DITemplateTypeParameter(name: "T", type: !18)
!423 = !DILocation(line: 0, scope: !411, inlinedAt: !424)
!424 = distinct !DILocation(line: 218, scope: !408)
!425 = !DILocation(line: 148, scope: !411, inlinedAt: !424)
!426 = !DILocation(line: 149, scope: !411, inlinedAt: !424)
!427 = !DILocation(line: 0, scope: !420, inlinedAt: !424)
!428 = !DILocation(line: 151, scope: !420, inlinedAt: !424)
!429 = !DILocation(line: 152, scope: !420, inlinedAt: !424)
!430 = distinct !{!430, !426, !431, !136}
!431 = !DILocation(line: 155, scope: !411, inlinedAt: !424)
!432 = !DILocation(line: 216, scope: !406)
!433 = distinct !{!433, !402, !434, !136}
!434 = !DILocation(line: 220, scope: !394)
!435 = distinct !DISubprogram(name: "halide_profiler_memory_allocate", scope: !3, file: !3, line: 223, type: !436, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !54, !54, !22, !17}
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446}
!439 = !DILocalVariable(name: "incr", arg: 4, scope: !435, file: !3, line: 226, type: !17)
!440 = !DILocalVariable(name: "func_id", arg: 3, scope: !435, file: !3, line: 225, type: !22)
!441 = !DILocalVariable(name: "pipeline_state", arg: 2, scope: !435, file: !3, line: 224, type: !54)
!442 = !DILocalVariable(name: "user_context", arg: 1, scope: !435, file: !3, line: 223, type: !54)
!443 = !DILocalVariable(name: "p_stats", scope: !435, file: !3, line: 233, type: !27)
!444 = !DILocalVariable(name: "f_stats", scope: !435, file: !3, line: 238, type: !41)
!445 = !DILocalVariable(name: "p_mem_current", scope: !435, file: !3, line: 249, type: !17)
!446 = !DILocalVariable(name: "f_mem_current", scope: !435, file: !3, line: 255, type: !17)
!447 = !DILocation(line: 0, scope: !435)
!448 = !DILocation(line: 229, scope: !435)
!449 = !DILocation(line: 234, scope: !450)
!450 = distinct !DILexicalBlock(scope: !435, file: !3, line: 234)
!451 = !DILocation(line: 234, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !3, line: 234)
!453 = distinct !DILexicalBlock(scope: !450, file: !3, line: 234)
!454 = !DILocation(line: 235, scope: !455)
!455 = distinct !DILexicalBlock(scope: !435, file: !3, line: 235)
!456 = !DILocation(line: 235, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !3, line: 235)
!458 = distinct !DILexicalBlock(scope: !455, file: !3, line: 235)
!459 = !DILocation(line: 236, scope: !460)
!460 = distinct !DILexicalBlock(scope: !435, file: !3, line: 236)
!461 = !DILocation(line: 236, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 236)
!463 = distinct !DILexicalBlock(scope: !460, file: !3, line: 236)
!464 = !DILocation(line: 238, scope: !435)
!465 = !DILocation(line: 247, scope: !435)
!466 = !DILocation(line: 248, scope: !435)
!467 = !DILocation(line: 249, scope: !435)
!468 = !DILocation(line: 250, scope: !435)
!469 = !DILocation(line: 0, scope: !411, inlinedAt: !470)
!470 = distinct !DILocation(line: 250, scope: !435)
!471 = !DILocation(line: 148, scope: !411, inlinedAt: !470)
!472 = !DILocation(line: 149, scope: !411, inlinedAt: !470)
!473 = !DILocation(line: 0, scope: !420, inlinedAt: !470)
!474 = !DILocation(line: 151, scope: !420, inlinedAt: !470)
!475 = !DILocation(line: 152, scope: !420, inlinedAt: !470)
!476 = distinct !{!476, !472, !477, !136}
!477 = !DILocation(line: 155, scope: !411, inlinedAt: !470)
!478 = !DILocation(line: 253, scope: !435)
!479 = !DILocation(line: 254, scope: !435)
!480 = !DILocation(line: 255, scope: !435)
!481 = !DILocation(line: 256, scope: !435)
!482 = !DILocation(line: 0, scope: !411, inlinedAt: !483)
!483 = distinct !DILocation(line: 256, scope: !435)
!484 = !DILocation(line: 148, scope: !411, inlinedAt: !483)
!485 = !DILocation(line: 149, scope: !411, inlinedAt: !483)
!486 = !DILocation(line: 0, scope: !420, inlinedAt: !483)
!487 = !DILocation(line: 151, scope: !420, inlinedAt: !483)
!488 = !DILocation(line: 152, scope: !420, inlinedAt: !483)
!489 = distinct !{!489, !485, !490, !136}
!490 = !DILocation(line: 155, scope: !411, inlinedAt: !483)
!491 = !DILocation(line: 257, scope: !435)
!492 = distinct !DISubprogram(name: "halide_profiler_memory_free", scope: !3, file: !3, line: 259, type: !436, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !493)
!493 = !{!494, !495, !496, !497, !498, !499}
!494 = !DILocalVariable(name: "decr", arg: 4, scope: !492, file: !3, line: 262, type: !17)
!495 = !DILocalVariable(name: "func_id", arg: 3, scope: !492, file: !3, line: 261, type: !22)
!496 = !DILocalVariable(name: "pipeline_state", arg: 2, scope: !492, file: !3, line: 260, type: !54)
!497 = !DILocalVariable(name: "user_context", arg: 1, scope: !492, file: !3, line: 259, type: !54)
!498 = !DILocalVariable(name: "p_stats", scope: !492, file: !3, line: 269, type: !27)
!499 = !DILocalVariable(name: "f_stats", scope: !492, file: !3, line: 274, type: !41)
!500 = !DILocation(line: 0, scope: !492)
!501 = !DILocation(line: 265, scope: !492)
!502 = !DILocation(line: 270, scope: !503)
!503 = distinct !DILexicalBlock(scope: !492, file: !3, line: 270)
!504 = !DILocation(line: 270, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !3, line: 270)
!506 = distinct !DILexicalBlock(scope: !503, file: !3, line: 270)
!507 = !DILocation(line: 271, scope: !508)
!508 = distinct !DILexicalBlock(scope: !492, file: !3, line: 271)
!509 = !DILocation(line: 271, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 271)
!511 = distinct !DILexicalBlock(scope: !508, file: !3, line: 271)
!512 = !DILocation(line: 272, scope: !513)
!513 = distinct !DILexicalBlock(scope: !492, file: !3, line: 272)
!514 = !DILocation(line: 272, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 272)
!516 = distinct !DILexicalBlock(scope: !513, file: !3, line: 272)
!517 = !DILocation(line: 274, scope: !492)
!518 = !DILocation(line: 283, scope: !492)
!519 = !DILocation(line: 286, scope: !492)
!520 = !DILocation(line: 287, scope: !492)
!521 = distinct !DISubprogram(name: "halide_profiler_report_unlocked", scope: !3, file: !3, line: 289, type: !522, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !524)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !54, !6}
!524 = !{!525, !526, !527, !531, !649, !651, !654, !655, !656, !657, !658, !662, !665, !669, !674, !675, !676, !677, !680}
!525 = !DILocalVariable(name: "s", arg: 2, scope: !521, file: !3, line: 289, type: !6)
!526 = !DILocalVariable(name: "user_context", arg: 1, scope: !521, file: !3, line: 289, type: !54)
!527 = !DILocalVariable(name: "line_buf", scope: !521, file: !3, line: 291, type: !528)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8192, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 1024)
!531 = !DILocalVariable(name: "sstr", scope: !521, file: !3, line: 292, type: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<2,1024>", scope: !534, file: !533, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !535, templateParams: !646, identifier: ".?AV?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@")
!533 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "a97d2909b01229a33f8a6f2cb0fa6ab8")
!534 = !DINamespace(scope: !93)
!535 = !{!536, !537, !538, !539, !540, !542, !544, !548, !552, !557, !561, !564, !569, !573, !577, !582, !588, !621, !628, !631, !634, !639, !640, !643, !644, !645}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !532, file: !533, line: 32, baseType: !85, size: 64, flags: DIFlagPublic)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !532, file: !533, line: 32, baseType: !85, size: 64, offset: 64, flags: DIFlagPublic)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !532, file: !533, line: 32, baseType: !85, size: 64, offset: 128, flags: DIFlagPublic)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !532, file: !533, line: 33, baseType: !54, size: 64, offset: 192, flags: DIFlagPublic)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !532, file: !533, line: 34, baseType: !541, size: 8, offset: 256, flags: DIFlagPublic)
!541 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !532, file: !533, line: 35, baseType: !543, size: 8, offset: 264, flags: DIFlagPublic)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8, elements: !19)
!544 = !DISubprogram(name: "Printer", scope: !532, file: !533, line: 37, type: !545, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !547, !54, !85}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!548 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAAEAV0?A0x3E95B2E2@123@PEBD@Z", scope: !532, file: !533, line: 57, type: !549, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!549 = !DISubroutineType(types: !550)
!550 = !{!551, !547, !37}
!551 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !532, size: 64)
!552 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAAEAV0?A0x3E95B2E2@123@_J@Z", scope: !532, file: !533, line: 67, type: !553, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!553 = !DISubroutineType(types: !554)
!554 = !{!551, !547, !555}
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !16, line: 9, baseType: !556)
!556 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!557 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAAEAV0?A0x3E95B2E2@123@H@Z", scope: !532, file: !533, line: 72, type: !558, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!558 = !DISubroutineType(types: !559)
!559 = !{!551, !547, !560}
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !16, line: 11, baseType: !22)
!561 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAAEAV0?A0x3E95B2E2@123@_K@Z", scope: !532, file: !533, line: 77, type: !562, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!562 = !DISubroutineType(types: !563)
!563 = !{!551, !547, !17}
!564 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAAEAV0?A0x3E95B2E2@123@I@Z", scope: !532, file: !533, line: 82, type: !565, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DISubroutineType(types: !566)
!566 = !{!551, !547, !567}
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !16, line: 12, baseType: !568)
!568 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!569 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAAEAV0?A0x3E95B2E2@123@N@Z", scope: !532, file: !533, line: 87, type: !570, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!570 = !DISubroutineType(types: !571)
!571 = !{!551, !547, !572}
!572 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!573 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAAEAV0?A0x3E95B2E2@123@M@Z", scope: !532, file: !533, line: 92, type: !574, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!574 = !DISubroutineType(types: !575)
!575 = !{!551, !547, !576}
!576 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!577 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAAEAV0?A0x3E95B2E2@123@PEBX@Z", scope: !532, file: !533, line: 97, type: !578, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!578 = !DISubroutineType(types: !579)
!579 = !{!551, !547, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!582 = !DISubprogram(name: "write_float16_from_bits", linkageName: "?write_float16_from_bits@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAAEAV1?A0x3E95B2E2@234@G@Z", scope: !532, file: !533, line: 102, type: !583, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!583 = !DISubroutineType(types: !584)
!584 = !{!551, !547, !585}
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !16, line: 14, baseType: !587)
!587 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!588 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAAEAV0?A0x3E95B2E2@123@AEBUhalide_type_t@@@Z", scope: !532, file: !533, line: 108, type: !589, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!589 = !DISubroutineType(types: !590)
!590 = !{!551, !547, !591}
!591 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !8, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !594, identifier: ".?AUhalide_type_t@@")
!594 = !{!595, !597, !598, !599, !603, !606, !610, !613, !614, !615, !618}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !593, file: !8, line: 434, baseType: !596, size: 8, align: 8)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !8, line: 413, baseType: !75)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !593, file: !8, line: 442, baseType: !76, size: 8, align: 8, offset: 8)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !593, file: !8, line: 446, baseType: !586, size: 16, align: 16, offset: 16)
!599 = !DISubprogram(name: "halide_type_t", scope: !593, file: !8, line: 453, type: !600, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !602, !596, !76, !586}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!603 = !DISubprogram(name: "halide_type_t", scope: !593, file: !8, line: 459, type: !604, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !602}
!606 = !DISubprogram(name: "with_lanes", linkageName: "?with_lanes@halide_type_t@@QEBA?AU1@G@Z", scope: !593, file: !8, line: 463, type: !607, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!607 = !DISubroutineType(types: !608)
!608 = !{!593, !609, !586}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!610 = !DISubprogram(name: "operator==", linkageName: "??8halide_type_t@@QEBA_NAEBU0@@Z", scope: !593, file: !8, line: 468, type: !611, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!611 = !DISubroutineType(types: !612)
!612 = !{!541, !609, !591}
!613 = !DISubprogram(name: "operator!=", linkageName: "??9halide_type_t@@QEBA_NAEBU0@@Z", scope: !593, file: !8, line: 472, type: !611, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!614 = !DISubprogram(name: "operator<", linkageName: "??Mhalide_type_t@@QEBA_NAEBU0@@Z", scope: !593, file: !8, line: 476, type: !611, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!615 = !DISubprogram(name: "bytes", linkageName: "?bytes@halide_type_t@@QEBAHXZ", scope: !593, file: !8, line: 481, type: !616, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!616 = !DISubroutineType(types: !617)
!617 = !{!22, !609}
!618 = !DISubprogram(name: "as_u32", linkageName: "?as_u32@halide_type_t@@QEBAIXZ", scope: !593, file: !8, line: 485, type: !619, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!619 = !DISubroutineType(types: !620)
!620 = !{!567, !609}
!621 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAAEAV0?A0x3E95B2E2@123@AEBUhalide_buffer_t@@@Z", scope: !532, file: !533, line: 113, type: !622, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!622 = !DISubroutineType(types: !623)
!623 = !{!551, !547, !624}
!624 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !8, line: 1550, baseType: !627)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !8, line: 1423, size: 448, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AUhalide_buffer_t@@")
!628 = !DISubprogram(name: "str", linkageName: "?str@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAPEBDXZ", scope: !532, file: !533, line: 119, type: !629, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!629 = !DISubroutineType(types: !630)
!630 = !{!37, !547}
!631 = !DISubprogram(name: "clear", linkageName: "?clear@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAXXZ", scope: !532, file: !533, line: 131, type: !632, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !547}
!634 = !DISubprogram(name: "size", linkageName: "?size@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEBA_KXZ", scope: !532, file: !533, line: 139, type: !635, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!635 = !DISubroutineType(types: !636)
!636 = !{!17, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!639 = !DISubprogram(name: "capacity", linkageName: "?capacity@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEBA_KXZ", scope: !532, file: !533, line: 143, type: !635, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!640 = !DISubprogram(name: "erase", linkageName: "?erase@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAXH@Z", scope: !532, file: !533, line: 148, type: !641, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !547, !22}
!643 = !DISubprogram(name: "allocation_error", linkageName: "?allocation_error@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAPEBDXZ", scope: !532, file: !533, line: 158, type: !629, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!644 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "?msan_annotate_is_initialized@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAXXZ", scope: !532, file: !533, line: 162, type: !632, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!645 = !DISubprogram(name: "~Printer", scope: !532, file: !533, line: 166, type: !632, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!646 = !{!647, !648}
!647 = !DITemplateValueParameter(name: "type", type: !22, value: i32 2)
!648 = !DITemplateValueParameter(name: "length", type: !18, value: i64 1024)
!649 = !DILocalVariable(name: "p", scope: !650, file: !3, line: 294, type: !27)
!650 = distinct !DILexicalBlock(scope: !521, file: !3, line: 294)
!651 = !DILocalVariable(name: "t", scope: !652, file: !3, line: 296, type: !576)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 295)
!653 = distinct !DILexicalBlock(scope: !650, file: !3, line: 294)
!654 = !DILocalVariable(name: "alloc_avg", scope: !652, file: !3, line: 301, type: !22)
!655 = !DILocalVariable(name: "serial", scope: !652, file: !3, line: 305, type: !541)
!656 = !DILocalVariable(name: "threads", scope: !652, file: !3, line: 306, type: !576)
!657 = !DILocalVariable(name: "print_f_states", scope: !652, file: !3, line: 319, type: !541)
!658 = !DILocalVariable(name: "i", scope: !659, file: !3, line: 321, type: !22)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 321)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 320)
!661 = distinct !DILexicalBlock(scope: !652, file: !3, line: 320)
!662 = !DILocalVariable(name: "fs", scope: !663, file: !3, line: 322, type: !41)
!663 = distinct !DILexicalBlock(scope: !664, file: !3, line: 321)
!664 = distinct !DILexicalBlock(scope: !659, file: !3, line: 321)
!665 = !DILocalVariable(name: "i", scope: !666, file: !3, line: 331, type: !22)
!666 = distinct !DILexicalBlock(scope: !667, file: !3, line: 331)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 330)
!668 = distinct !DILexicalBlock(scope: !652, file: !3, line: 330)
!669 = !DILocalVariable(name: "cursor", scope: !670, file: !3, line: 332, type: !672)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 331)
!671 = distinct !DILexicalBlock(scope: !666, file: !3, line: 331)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 27, baseType: !673)
!673 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!674 = !DILocalVariable(name: "fs", scope: !670, file: !3, line: 334, type: !41)
!675 = !DILocalVariable(name: "ft", scope: !670, file: !3, line: 348, type: !576)
!676 = !DILocalVariable(name: "percent", scope: !670, file: !3, line: 358, type: !22)
!677 = !DILocalVariable(name: "threads", scope: !678, file: !3, line: 369, type: !576)
!678 = distinct !DILexicalBlock(scope: !679, file: !3, line: 368)
!679 = distinct !DILexicalBlock(scope: !670, file: !3, line: 368)
!680 = !DILocalVariable(name: "alloc_avg", scope: !670, file: !3, line: 378, type: !22)
!681 = !DILocation(line: 0, scope: !521)
!682 = !DILocation(line: 291, scope: !521)
!683 = !DILocation(line: 292, scope: !521)
!684 = !DILocalVariable(name: "mem", arg: 3, scope: !685, file: !533, line: 37, type: !85)
!685 = distinct !DISubprogram(name: "Printer", linkageName: "??0?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAA@PEAXPEAD@Z", scope: !532, file: !533, line: 37, type: !545, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !544, retainedNodes: !686)
!686 = !{!684, !687, !688}
!687 = !DILocalVariable(name: "ctx", arg: 2, scope: !685, file: !533, line: 37, type: !54)
!688 = !DILocalVariable(name: "this", arg: 1, scope: !685, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!690 = !DILocation(line: 0, scope: !685, inlinedAt: !691)
!691 = distinct !DILocation(line: 292, scope: !521)
!692 = !DILocation(line: 38, scope: !685, inlinedAt: !691)
!693 = !{!694, !122, i64 24}
!694 = !{!"?AV?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@", !122, i64 0, !122, i64 8, !122, i64 16, !122, i64 24, !695, i64 32, !123, i64 33}
!695 = !{!"bool", !123, i64 0}
!696 = !{!694, !695, i64 32}
!697 = !DILocation(line: 44, scope: !698, inlinedAt: !691)
!698 = distinct !DILexicalBlock(scope: !699, file: !533, line: 43)
!699 = distinct !DILexicalBlock(scope: !700, file: !533, line: 41)
!700 = distinct !DILexicalBlock(scope: !701, file: !533, line: 39)
!701 = distinct !DILexicalBlock(scope: !685, file: !533, line: 38)
!702 = !DILocation(line: 47, scope: !701, inlinedAt: !691)
!703 = !{!694, !122, i64 8}
!704 = !DILocation(line: 49, scope: !705, inlinedAt: !691)
!705 = distinct !DILexicalBlock(scope: !706, file: !533, line: 48)
!706 = distinct !DILexicalBlock(scope: !701, file: !533, line: 48)
!707 = !{!694, !122, i64 16}
!708 = !DILocation(line: 50, scope: !705, inlinedAt: !691)
!709 = !{!123, !123, i64 0}
!710 = !DILocation(line: 294, scope: !650)
!711 = !DILocation(line: 0, scope: !650)
!712 = !DILocation(line: 167, scope: !713, inlinedAt: !717)
!713 = distinct !DILexicalBlock(scope: !714, file: !533, line: 166)
!714 = distinct !DISubprogram(name: "~Printer", linkageName: "??1?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAA@XZ", scope: !532, file: !533, line: 166, type: !632, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !645, retainedNodes: !715)
!715 = !{!716}
!716 = !DILocalVariable(name: "this", arg: 1, scope: !714, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!717 = distinct !DILocation(line: 405, scope: !521)
!718 = !{!694, !122, i64 0}
!719 = !DILocation(line: 0, scope: !714, inlinedAt: !717)
!720 = !DILocation(line: 168, scope: !721, inlinedAt: !717)
!721 = distinct !DILexicalBlock(scope: !722, file: !533, line: 167)
!722 = distinct !DILexicalBlock(scope: !713, file: !533, line: 167)
!723 = !DILocation(line: 169, scope: !721, inlinedAt: !717)
!724 = !DILocation(line: 170, scope: !725, inlinedAt: !717)
!725 = distinct !DILexicalBlock(scope: !722, file: !533, line: 169)
!726 = !DILocalVariable(name: "this", arg: 1, scope: !727, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!727 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "?msan_annotate_is_initialized@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAXXZ", scope: !532, file: !533, line: 162, type: !632, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !644, retainedNodes: !728)
!728 = !{!726}
!729 = !DILocation(line: 0, scope: !727, inlinedAt: !730)
!730 = distinct !DILocation(line: 170, scope: !725, inlinedAt: !717)
!731 = !DILocation(line: 163, scope: !727, inlinedAt: !730)
!732 = !DILocation(line: 178, scope: !725, inlinedAt: !717)
!733 = !DILocation(line: 180, scope: !713, inlinedAt: !717)
!734 = !{i8 0, i8 2}
!735 = !DILocation(line: 181, scope: !736, inlinedAt: !717)
!736 = distinct !DILexicalBlock(scope: !737, file: !533, line: 180)
!737 = distinct !DILexicalBlock(scope: !713, file: !533, line: 180)
!738 = !DILocation(line: 182, scope: !736, inlinedAt: !717)
!739 = !DILocation(line: 405, scope: !521)
!740 = !DILocation(line: 296, scope: !652)
!741 = !DILocation(line: 0, scope: !652)
!742 = !DILocation(line: 297, scope: !652)
!743 = !DILocalVariable(name: "this", arg: 1, scope: !744, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!744 = distinct !DISubprogram(name: "clear", linkageName: "?clear@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAXXZ", scope: !532, file: !533, line: 131, type: !632, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !631, retainedNodes: !745)
!745 = !{!743}
!746 = !DILocation(line: 0, scope: !744, inlinedAt: !747)
!747 = distinct !DILocation(line: 300, scope: !652)
!748 = !DILocation(line: 132, scope: !744, inlinedAt: !747)
!749 = !DILocation(line: 133, scope: !744, inlinedAt: !747)
!750 = !DILocation(line: 134, scope: !751, inlinedAt: !747)
!751 = distinct !DILexicalBlock(scope: !752, file: !533, line: 133)
!752 = distinct !DILexicalBlock(scope: !744, file: !533, line: 133)
!753 = !DILocation(line: 135, scope: !751, inlinedAt: !747)
!754 = !DILocation(line: 302, scope: !652)
!755 = !DILocation(line: 305, scope: !652)
!756 = !DILocation(line: 307, scope: !652)
!757 = !DILocalVariable(name: "arg", arg: 2, scope: !758, file: !533, line: 57, type: !37)
!758 = distinct !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAAEAV0?A0x3E95B2E2@123@PEBD@Z", scope: !532, file: !533, line: 57, type: !549, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !548, retainedNodes: !759)
!759 = !{!757, !760}
!760 = !DILocalVariable(name: "this", arg: 1, scope: !758, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!761 = !DILocation(line: 0, scope: !758, inlinedAt: !762)
!762 = distinct !DILocation(line: 307, scope: !652)
!763 = !DILocation(line: 59, scope: !758, inlinedAt: !762)
!764 = !DILocation(line: 0, scope: !765, inlinedAt: !762)
!765 = distinct !DILexicalBlock(scope: !758, file: !533, line: 59)
!766 = !DILocation(line: 60, scope: !767, inlinedAt: !762)
!767 = distinct !DILexicalBlock(scope: !765, file: !533, line: 59)
!768 = !DILocation(line: 61, scope: !767, inlinedAt: !762)
!769 = !DILocation(line: 62, scope: !770, inlinedAt: !762)
!770 = distinct !DILexicalBlock(scope: !765, file: !533, line: 61)
!771 = !DILocation(line: 63, scope: !770, inlinedAt: !762)
!772 = !DILocation(line: 0, scope: !758, inlinedAt: !773)
!773 = distinct !DILocation(line: 307, scope: !652)
!774 = !DILocation(line: 62, scope: !770, inlinedAt: !773)
!775 = !DILocation(line: 0, scope: !758, inlinedAt: !776)
!776 = distinct !DILocation(line: 307, scope: !652)
!777 = !DILocation(line: 62, scope: !770, inlinedAt: !776)
!778 = !DILocalVariable(name: "arg", arg: 2, scope: !779, file: !533, line: 92, type: !576)
!779 = distinct !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAAEAV0?A0x3E95B2E2@123@M@Z", scope: !532, file: !533, line: 92, type: !574, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !573, retainedNodes: !780)
!780 = !{!778, !781}
!781 = !DILocalVariable(name: "this", arg: 1, scope: !779, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!782 = !DILocation(line: 0, scope: !779, inlinedAt: !783)
!783 = distinct !DILocation(line: 307, scope: !652)
!784 = !DILocation(line: 93, scope: !779, inlinedAt: !783)
!785 = !DILocation(line: 0, scope: !758, inlinedAt: !786)
!786 = distinct !DILocation(line: 307, scope: !652)
!787 = !DILocation(line: 62, scope: !770, inlinedAt: !786)
!788 = !DILocation(line: 0, scope: !758, inlinedAt: !789)
!789 = distinct !DILocation(line: 307, scope: !652)
!790 = !DILocation(line: 62, scope: !770, inlinedAt: !789)
!791 = !DILocalVariable(name: "arg", arg: 2, scope: !792, file: !533, line: 72, type: !560)
!792 = distinct !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAAEAV0?A0x3E95B2E2@123@H@Z", scope: !532, file: !533, line: 72, type: !558, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !557, retainedNodes: !793)
!793 = !{!791, !794}
!794 = !DILocalVariable(name: "this", arg: 1, scope: !792, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!795 = !DILocation(line: 0, scope: !792, inlinedAt: !796)
!796 = distinct !DILocation(line: 307, scope: !652)
!797 = !DILocation(line: 73, scope: !792, inlinedAt: !796)
!798 = !DILocation(line: 0, scope: !758, inlinedAt: !799)
!799 = distinct !DILocation(line: 307, scope: !652)
!800 = !DILocation(line: 62, scope: !770, inlinedAt: !799)
!801 = !DILocation(line: 0, scope: !792, inlinedAt: !802)
!802 = distinct !DILocation(line: 307, scope: !652)
!803 = !DILocation(line: 73, scope: !792, inlinedAt: !802)
!804 = !DILocation(line: 0, scope: !758, inlinedAt: !805)
!805 = distinct !DILocation(line: 307, scope: !652)
!806 = !DILocation(line: 62, scope: !770, inlinedAt: !805)
!807 = !DILocation(line: 0, scope: !779, inlinedAt: !808)
!808 = distinct !DILocation(line: 307, scope: !652)
!809 = !DILocation(line: 93, scope: !779, inlinedAt: !808)
!810 = !DILocation(line: 0, scope: !758, inlinedAt: !811)
!811 = distinct !DILocation(line: 307, scope: !652)
!812 = !DILocation(line: 62, scope: !770, inlinedAt: !811)
!813 = !DILocation(line: 312, scope: !652)
!814 = !DILocation(line: 306, scope: !652)
!815 = !DILocation(line: 0, scope: !758, inlinedAt: !816)
!816 = distinct !DILocation(line: 313, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 312)
!818 = distinct !DILexicalBlock(scope: !652, file: !3, line: 312)
!819 = !DILocation(line: 62, scope: !770, inlinedAt: !816)
!820 = !DILocation(line: 0, scope: !779, inlinedAt: !821)
!821 = distinct !DILocation(line: 313, scope: !817)
!822 = !DILocation(line: 93, scope: !779, inlinedAt: !821)
!823 = !DILocation(line: 0, scope: !758, inlinedAt: !824)
!824 = distinct !DILocation(line: 313, scope: !817)
!825 = !DILocation(line: 62, scope: !770, inlinedAt: !824)
!826 = !DILocation(line: 314, scope: !817)
!827 = !DILocation(line: 62, scope: !770, inlinedAt: !828)
!828 = distinct !DILocation(line: 315, scope: !652)
!829 = !DILocation(line: 0, scope: !758, inlinedAt: !828)
!830 = !DILocation(line: 315, scope: !652)
!831 = !DILocation(line: 0, scope: !792, inlinedAt: !832)
!832 = distinct !DILocation(line: 315, scope: !652)
!833 = !DILocation(line: 73, scope: !792, inlinedAt: !832)
!834 = !DILocation(line: 0, scope: !758, inlinedAt: !835)
!835 = distinct !DILocation(line: 315, scope: !652)
!836 = !DILocation(line: 62, scope: !770, inlinedAt: !835)
!837 = !DILocalVariable(name: "arg", arg: 2, scope: !838, file: !533, line: 77, type: !17)
!838 = distinct !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAAEAV0?A0x3E95B2E2@123@_K@Z", scope: !532, file: !533, line: 77, type: !562, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !561, retainedNodes: !839)
!839 = !{!837, !840}
!840 = !DILocalVariable(name: "this", arg: 1, scope: !838, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!841 = !DILocation(line: 0, scope: !838, inlinedAt: !842)
!842 = distinct !DILocation(line: 315, scope: !652)
!843 = !DILocation(line: 78, scope: !838, inlinedAt: !842)
!844 = !DILocation(line: 0, scope: !758, inlinedAt: !845)
!845 = distinct !DILocation(line: 315, scope: !652)
!846 = !DILocation(line: 62, scope: !770, inlinedAt: !845)
!847 = !DILocalVariable(name: "this", arg: 1, scope: !848, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!848 = distinct !DISubprogram(name: "str", linkageName: "?str@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAPEBDXZ", scope: !532, file: !533, line: 119, type: !629, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !628, retainedNodes: !849)
!849 = !{!847}
!850 = !DILocation(line: 0, scope: !848, inlinedAt: !851)
!851 = distinct !DILocation(line: 317, scope: !652)
!852 = !DILocation(line: 120, scope: !848, inlinedAt: !851)
!853 = !DILocation(line: 122, scope: !854, inlinedAt: !851)
!854 = distinct !DILexicalBlock(scope: !855, file: !533, line: 121)
!855 = distinct !DILexicalBlock(scope: !856, file: !533, line: 121)
!856 = distinct !DILexicalBlock(scope: !857, file: !533, line: 120)
!857 = distinct !DILexicalBlock(scope: !848, file: !533, line: 120)
!858 = !DILocation(line: 0, scope: !727, inlinedAt: !859)
!859 = distinct !DILocation(line: 122, scope: !854, inlinedAt: !851)
!860 = !DILocation(line: 163, scope: !727, inlinedAt: !859)
!861 = !DILocation(line: 124, scope: !856, inlinedAt: !851)
!862 = !DILocation(line: 0, scope: !857, inlinedAt: !851)
!863 = !DILocation(line: 317, scope: !652)
!864 = !DILocation(line: 319, scope: !652)
!865 = !DILocation(line: 320, scope: !652)
!866 = !DILocation(line: 0, scope: !659)
!867 = !DILocation(line: 321, scope: !659)
!868 = distinct !{!868, !867, !869, !136}
!869 = !DILocation(line: 327, scope: !659)
!870 = !DILocation(line: 0, scope: !663)
!871 = !DILocation(line: 323, scope: !663)
!872 = !DILocation(line: 321, scope: !664)
!873 = !DILocation(line: 0, scope: !666)
!874 = !DILocation(line: 331, scope: !666)
!875 = !DILocation(line: 0, scope: !670)
!876 = !DILocation(line: 0, scope: !744, inlinedAt: !877)
!877 = distinct !DILocation(line: 333, scope: !670)
!878 = !DILocation(line: 132, scope: !744, inlinedAt: !877)
!879 = !DILocation(line: 133, scope: !744, inlinedAt: !877)
!880 = !DILocation(line: 134, scope: !751, inlinedAt: !877)
!881 = !DILocation(line: 135, scope: !751, inlinedAt: !877)
!882 = !DILocation(line: 334, scope: !670)
!883 = !DILocation(line: 338, scope: !670)
!884 = !DILocation(line: 0, scope: !758, inlinedAt: !885)
!885 = distinct !DILocation(line: 342, scope: !670)
!886 = !DILocation(line: 62, scope: !770, inlinedAt: !885)
!887 = !DILocation(line: 342, scope: !670)
!888 = !DILocation(line: 0, scope: !758, inlinedAt: !889)
!889 = distinct !DILocation(line: 342, scope: !670)
!890 = !DILocation(line: 59, scope: !758, inlinedAt: !889)
!891 = !DILocation(line: 0, scope: !765, inlinedAt: !889)
!892 = !DILocation(line: 60, scope: !767, inlinedAt: !889)
!893 = !DILocation(line: 61, scope: !767, inlinedAt: !889)
!894 = !DILocation(line: 62, scope: !770, inlinedAt: !889)
!895 = !DILocation(line: 63, scope: !770, inlinedAt: !889)
!896 = !DILocation(line: 0, scope: !758, inlinedAt: !897)
!897 = distinct !DILocation(line: 342, scope: !670)
!898 = !DILocation(line: 62, scope: !770, inlinedAt: !897)
!899 = !DILocation(line: 344, scope: !670)
!900 = !DILocalVariable(name: "this", arg: 1, scope: !901, type: !903, flags: DIFlagArtificial | DIFlagObjectPointer)
!901 = distinct !DISubprogram(name: "size", linkageName: "?size@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEBA_KXZ", scope: !532, file: !533, line: 139, type: !635, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !634, retainedNodes: !902)
!902 = !{!900}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!904 = !DILocation(line: 0, scope: !901, inlinedAt: !905)
!905 = distinct !DILocation(line: 344, scope: !670)
!906 = !DILocation(line: 140, scope: !901, inlinedAt: !905)
!907 = !DILocation(line: 0, scope: !758, inlinedAt: !908)
!908 = distinct !DILocation(line: 345, scope: !909)
!909 = distinct !DILexicalBlock(scope: !670, file: !3, line: 344)
!910 = !DILocation(line: 62, scope: !770, inlinedAt: !908)
!911 = distinct !{!911, !899, !912, !136}
!912 = !DILocation(line: 346, scope: !670)
!913 = !DILocation(line: 348, scope: !670)
!914 = !DILocation(line: 0, scope: !779, inlinedAt: !915)
!915 = distinct !DILocation(line: 349, scope: !670)
!916 = !DILocation(line: 93, scope: !779, inlinedAt: !915)
!917 = !DILocalVariable(name: "n", arg: 2, scope: !918, file: !533, line: 148, type: !22)
!918 = distinct !DISubprogram(name: "erase", linkageName: "?erase@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QEAAXH@Z", scope: !532, file: !533, line: 148, type: !641, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !640, retainedNodes: !919)
!919 = !{!917, !920}
!920 = !DILocalVariable(name: "this", arg: 1, scope: !918, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!921 = !DILocation(line: 0, scope: !918, inlinedAt: !922)
!922 = distinct !DILocation(line: 351, scope: !670)
!923 = !DILocation(line: 149, scope: !918, inlinedAt: !922)
!924 = !DILocation(line: 150, scope: !925, inlinedAt: !922)
!925 = distinct !DILexicalBlock(scope: !926, file: !533, line: 149)
!926 = distinct !DILexicalBlock(scope: !918, file: !533, line: 149)
!927 = !DILocation(line: 151, scope: !925, inlinedAt: !922)
!928 = !DILocation(line: 0, scope: !925, inlinedAt: !922)
!929 = !DILocation(line: 154, scope: !925, inlinedAt: !922)
!930 = !DILocation(line: 62, scope: !770, inlinedAt: !931)
!931 = distinct !DILocation(line: 352, scope: !670)
!932 = !DILocation(line: 155, scope: !925, inlinedAt: !922)
!933 = !DILocation(line: 0, scope: !758, inlinedAt: !931)
!934 = !DILocation(line: 354, scope: !670)
!935 = !DILocation(line: 0, scope: !901, inlinedAt: !936)
!936 = distinct !DILocation(line: 354, scope: !670)
!937 = !DILocation(line: 140, scope: !901, inlinedAt: !936)
!938 = !DILocation(line: 0, scope: !758, inlinedAt: !939)
!939 = distinct !DILocation(line: 355, scope: !940)
!940 = distinct !DILexicalBlock(scope: !670, file: !3, line: 354)
!941 = !DILocation(line: 62, scope: !770, inlinedAt: !939)
!942 = distinct !{!942, !934, !943, !136}
!943 = !DILocation(line: 356, scope: !670)
!944 = !DILocation(line: 359, scope: !670)
!945 = !DILocation(line: 360, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !3, line: 359)
!947 = distinct !DILexicalBlock(scope: !670, file: !3, line: 359)
!948 = !DILocation(line: 361, scope: !946)
!949 = !DILocation(line: 0, scope: !758, inlinedAt: !950)
!950 = distinct !DILocation(line: 362, scope: !670)
!951 = !DILocation(line: 62, scope: !770, inlinedAt: !950)
!952 = !DILocation(line: 0, scope: !792, inlinedAt: !953)
!953 = distinct !DILocation(line: 362, scope: !670)
!954 = !DILocation(line: 73, scope: !792, inlinedAt: !953)
!955 = !DILocation(line: 0, scope: !758, inlinedAt: !956)
!956 = distinct !DILocation(line: 362, scope: !670)
!957 = !DILocation(line: 62, scope: !770, inlinedAt: !956)
!958 = !DILocation(line: 364, scope: !670)
!959 = !DILocation(line: 0, scope: !901, inlinedAt: !960)
!960 = distinct !DILocation(line: 364, scope: !670)
!961 = !DILocation(line: 140, scope: !901, inlinedAt: !960)
!962 = !DILocation(line: 0, scope: !758, inlinedAt: !963)
!963 = distinct !DILocation(line: 365, scope: !964)
!964 = distinct !DILexicalBlock(scope: !670, file: !3, line: 364)
!965 = !DILocation(line: 62, scope: !770, inlinedAt: !963)
!966 = distinct !{!966, !958, !967, !136}
!967 = !DILocation(line: 366, scope: !670)
!968 = !DILocation(line: 368, scope: !670)
!969 = !DILocation(line: 369, scope: !678)
!970 = !DILocation(line: 0, scope: !678)
!971 = !DILocation(line: 0, scope: !758, inlinedAt: !972)
!972 = distinct !DILocation(line: 370, scope: !678)
!973 = !DILocation(line: 62, scope: !770, inlinedAt: !972)
!974 = !DILocation(line: 0, scope: !779, inlinedAt: !975)
!975 = distinct !DILocation(line: 370, scope: !678)
!976 = !DILocation(line: 93, scope: !779, inlinedAt: !975)
!977 = !DILocation(line: 0, scope: !918, inlinedAt: !978)
!978 = distinct !DILocation(line: 371, scope: !678)
!979 = !DILocation(line: 149, scope: !918, inlinedAt: !978)
!980 = !DILocation(line: 150, scope: !925, inlinedAt: !978)
!981 = !DILocation(line: 151, scope: !925, inlinedAt: !978)
!982 = !DILocation(line: 0, scope: !925, inlinedAt: !978)
!983 = !DILocation(line: 154, scope: !925, inlinedAt: !978)
!984 = !DILocation(line: 373, scope: !678)
!985 = !DILocation(line: 155, scope: !925, inlinedAt: !978)
!986 = !DILocation(line: 0, scope: !901, inlinedAt: !987)
!987 = distinct !DILocation(line: 373, scope: !678)
!988 = !DILocation(line: 140, scope: !901, inlinedAt: !987)
!989 = !DILocation(line: 0, scope: !758, inlinedAt: !990)
!990 = distinct !DILocation(line: 374, scope: !991)
!991 = distinct !DILexicalBlock(scope: !678, file: !3, line: 373)
!992 = !DILocation(line: 62, scope: !770, inlinedAt: !990)
!993 = distinct !{!993, !984, !994, !136}
!994 = !DILocation(line: 375, scope: !678)
!995 = !DILocation(line: 379, scope: !670)
!996 = !DILocation(line: 380, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 379)
!998 = distinct !DILexicalBlock(scope: !670, file: !3, line: 379)
!999 = !DILocation(line: 381, scope: !997)
!1000 = !DILocation(line: 383, scope: !670)
!1001 = !DILocation(line: 0, scope: !758, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 385, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 383)
!1004 = distinct !DILexicalBlock(scope: !670, file: !3, line: 383)
!1005 = !DILocation(line: 62, scope: !770, inlinedAt: !1002)
!1006 = !DILocation(line: 385, scope: !1003)
!1007 = !DILocation(line: 0, scope: !838, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 385, scope: !1003)
!1009 = !DILocation(line: 78, scope: !838, inlinedAt: !1008)
!1010 = !DILocation(line: 0, scope: !1003)
!1011 = !DILocation(line: 386, scope: !1003)
!1012 = !DILocation(line: 0, scope: !901, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 386, scope: !1003)
!1014 = !DILocation(line: 140, scope: !901, inlinedAt: !1013)
!1015 = !DILocation(line: 0, scope: !758, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 387, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 386)
!1018 = !DILocation(line: 62, scope: !770, inlinedAt: !1016)
!1019 = distinct !{!1019, !1011, !1020, !136}
!1020 = !DILocation(line: 388, scope: !1003)
!1021 = !DILocation(line: 0, scope: !758, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 389, scope: !1003)
!1023 = !DILocation(line: 62, scope: !770, inlinedAt: !1022)
!1024 = !DILocation(line: 389, scope: !1003)
!1025 = !DILocation(line: 0, scope: !792, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 389, scope: !1003)
!1027 = !DILocation(line: 73, scope: !792, inlinedAt: !1026)
!1028 = !DILocation(line: 390, scope: !1003)
!1029 = !DILocation(line: 391, scope: !1003)
!1030 = !DILocation(line: 0, scope: !901, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 391, scope: !1003)
!1032 = !DILocation(line: 140, scope: !901, inlinedAt: !1031)
!1033 = !DILocation(line: 0, scope: !758, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 392, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 391)
!1036 = !DILocation(line: 62, scope: !770, inlinedAt: !1034)
!1037 = distinct !{!1037, !1029, !1038, !136}
!1038 = !DILocation(line: 393, scope: !1003)
!1039 = !DILocation(line: 0, scope: !758, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 394, scope: !1003)
!1041 = !DILocation(line: 62, scope: !770, inlinedAt: !1040)
!1042 = !DILocation(line: 0, scope: !792, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 394, scope: !1003)
!1044 = !DILocation(line: 73, scope: !792, inlinedAt: !1043)
!1045 = !DILocation(line: 395, scope: !1003)
!1046 = !DILocation(line: 396, scope: !670)
!1047 = !DILocation(line: 0, scope: !758, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 397, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 396)
!1050 = distinct !DILexicalBlock(scope: !670, file: !3, line: 396)
!1051 = !DILocation(line: 62, scope: !770, inlinedAt: !1048)
!1052 = !DILocation(line: 397, scope: !1049)
!1053 = !DILocation(line: 0, scope: !838, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 397, scope: !1049)
!1055 = !DILocation(line: 78, scope: !838, inlinedAt: !1054)
!1056 = !DILocation(line: 398, scope: !1049)
!1057 = !DILocation(line: 62, scope: !770, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 399, scope: !670)
!1059 = !DILocation(line: 0, scope: !758, inlinedAt: !1058)
!1060 = !DILocation(line: 0, scope: !848, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 401, scope: !670)
!1062 = !DILocation(line: 120, scope: !848, inlinedAt: !1061)
!1063 = !DILocation(line: 122, scope: !854, inlinedAt: !1061)
!1064 = !DILocation(line: 0, scope: !727, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 122, scope: !854, inlinedAt: !1061)
!1066 = !DILocation(line: 163, scope: !727, inlinedAt: !1065)
!1067 = !DILocation(line: 124, scope: !856, inlinedAt: !1061)
!1068 = !DILocation(line: 0, scope: !857, inlinedAt: !1061)
!1069 = !DILocation(line: 401, scope: !670)
!1070 = !DILocation(line: 402, scope: !670)
!1071 = !DILocation(line: 331, scope: !671)
!1072 = distinct !{!1072, !874, !1073, !136}
!1073 = !DILocation(line: 402, scope: !666)
!1074 = !DILocation(line: 295, scope: !653)
!1075 = distinct !{!1075, !710, !1076, !136}
!1076 = !DILocation(line: 404, scope: !650)
!1077 = distinct !DISubprogram(name: "halide_profiler_report", scope: !3, file: !3, line: 407, type: !246, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1078)
!1078 = !{!1079, !1080, !1081}
!1079 = !DILocalVariable(name: "user_context", arg: 1, scope: !1077, file: !3, line: 407, type: !54)
!1080 = !DILocalVariable(name: "s", scope: !1077, file: !3, line: 408, type: !6)
!1081 = !DILocalVariable(name: "lock", scope: !1077, file: !3, line: 409, type: !307)
!1082 = !DILocation(line: 0, scope: !1077)
!1083 = !DILocation(line: 408, scope: !1077)
!1084 = !DILocation(line: 409, scope: !1077)
!1085 = !DILocation(line: 0, scope: !325, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 409, scope: !1077)
!1087 = !DILocation(line: 16, scope: !332, inlinedAt: !1086)
!1088 = !DILocation(line: 410, scope: !1077)
!1089 = !DILocation(line: 0, scope: !342, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 411, scope: !1077)
!1091 = !DILocation(line: 20, scope: !347, inlinedAt: !1090)
!1092 = !DILocation(line: 411, scope: !1077)
!1093 = distinct !DISubprogram(name: "halide_profiler_reset_unlocked", scope: !3, file: !3, line: 413, type: !1094, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1096)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !6}
!1096 = !{!1097, !1098}
!1097 = !DILocalVariable(name: "s", arg: 1, scope: !1093, file: !3, line: 413, type: !6)
!1098 = !DILocalVariable(name: "p", scope: !1099, file: !3, line: 415, type: !27)
!1099 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 414)
!1100 = !DILocation(line: 0, scope: !1093)
!1101 = !DILocation(line: 414, scope: !1093)
!1102 = !DILocation(line: 0, scope: !1099)
!1103 = !DILocation(line: 416, scope: !1099)
!1104 = !DILocation(line: 417, scope: !1099)
!1105 = !DILocation(line: 418, scope: !1099)
!1106 = distinct !{!1106, !1101, !1107, !136}
!1107 = !DILocation(line: 419, scope: !1093)
!1108 = !DILocation(line: 420, scope: !1093)
!1109 = !DILocation(line: 421, scope: !1093)
!1110 = distinct !DISubprogram(name: "halide_profiler_reset", scope: !3, file: !3, line: 423, type: !1111, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null}
!1113 = !{!1114, !1115}
!1114 = !DILocalVariable(name: "s", scope: !1110, file: !3, line: 428, type: !6)
!1115 = !DILocalVariable(name: "lock", scope: !1110, file: !3, line: 429, type: !307)
!1116 = !DILocation(line: 428, scope: !1110)
!1117 = !DILocation(line: 0, scope: !1110)
!1118 = !DILocation(line: 429, scope: !1110)
!1119 = !DILocation(line: 0, scope: !325, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 429, scope: !1110)
!1121 = !DILocation(line: 16, scope: !332, inlinedAt: !1120)
!1122 = !DILocation(line: 430, scope: !1110)
!1123 = !DILocation(line: 0, scope: !342, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 431, scope: !1110)
!1125 = !DILocation(line: 20, scope: !347, inlinedAt: !1124)
!1126 = !DILocation(line: 431, scope: !1110)
!1127 = distinct !DISubprogram(name: "halide_profiler_shutdown", scope: !3, file: !3, line: 437, type: !1111, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1128)
!1128 = !{!1129}
!1129 = !DILocalVariable(name: "s", scope: !1127, file: !3, line: 438, type: !6)
!1130 = !DILocation(line: 438, scope: !1127)
!1131 = !DILocation(line: 0, scope: !1127)
!1132 = !DILocation(line: 439, scope: !1127)
!1133 = !DILocation(line: 443, scope: !1127)
!1134 = !DILocation(line: 444, scope: !1127)
!1135 = !DILocation(line: 445, scope: !1127)
!1136 = !DILocation(line: 446, scope: !1127)
!1137 = !DILocation(line: 450, scope: !1127)
!1138 = !DILocation(line: 452, scope: !1127)
!1139 = !DILocation(line: 453, scope: !1127)
!1140 = distinct !DISubprogram(name: "halide_windows_profiler_shutdown", scope: !412, file: !3, line: 457, type: !1111, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1141)
!1141 = !{!1142}
!1142 = !DILocalVariable(name: "s", scope: !1140, file: !3, line: 458, type: !6)
!1143 = !DILocation(line: 458, scope: !1140)
!1144 = !DILocation(line: 0, scope: !1140)
!1145 = !DILocation(line: 459, scope: !1140)
!1146 = !DILocation(line: 472, scope: !1140)
!1147 = !DILocation(line: 473, scope: !1140)
!1148 = distinct !DISubprogram(name: "halide_profiler_pipeline_end", scope: !3, file: !3, line: 477, type: !1149, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1151)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !54, !54}
!1151 = !{!1152, !1153}
!1152 = !DILocalVariable(name: "state", arg: 2, scope: !1148, file: !3, line: 477, type: !54)
!1153 = !DILocalVariable(name: "user_context", arg: 1, scope: !1148, file: !3, line: 477, type: !54)
!1154 = !DILocation(line: 0, scope: !1148)
!1155 = !DILocation(line: 478, scope: !1148)
!1156 = !DILocation(line: 479, scope: !1148)
