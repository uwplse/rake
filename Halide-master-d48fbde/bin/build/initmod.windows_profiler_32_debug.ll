; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_profiler.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_profiler.cpp"
target datalayout = "e-m:x-p:32:32-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i386-unknown-windows-msvc19.11.0"

%struct.halide_profiler_state = type { %struct.halide_mutex, i32, i32, i32, i32, %struct.halide_profiler_pipeline_stats*, void (i32*, i32*)*, %struct.halide_thread* }
%struct.halide_mutex = type { [1 x i32] }
%struct.halide_profiler_pipeline_stats = type { i64, i64, i64, i64, i64, i64, i8*, %struct.halide_profiler_func_stats*, i8*, i32, i32, i32, i32, i32 }
%struct.halide_profiler_func_stats = type { i64, i64, i64, i64, i64, i64, i64, i8*, i32 }
%struct.halide_thread = type opaque
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type { i8*, i8*, i8*, i8*, i8, [1 x i8] }

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

@"?s@?1??halide_profiler_get_state@@9@4Uhalide_profiler_state@@A" = internal global %struct.halide_profiler_state { %struct.halide_mutex zeroinitializer, i32 1, i32 0, i32 0, i32 0, %struct.halide_profiler_pipeline_stats* null, void (i32*, i32*)* null, %struct.halide_thread* null }, align 4, !dbg !0
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
  ret %struct.halide_profiler_state* @"?s@?1??halide_profiler_get_state@@9@4Uhalide_profiler_state@@A", !dbg !104
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_profiler_pipeline_stats* @"?find_or_create_pipeline@Internal@Runtime@Halide@@YAPAUhalide_profiler_pipeline_stats@@PBDHPB_K@Z"(i8* %0, i32 %1, i64* %2) local_unnamed_addr #1 !dbg !105 {
  call void @llvm.dbg.value(metadata i64* %2, metadata !111, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32 %1, metadata !112, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i8* %0, metadata !113, metadata !DIExpression()), !dbg !120
  %4 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !121
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %4, metadata !114, metadata !DIExpression()), !dbg !120
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 5, !dbg !122
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !115, metadata !DIExpression()), !dbg !123
  %6 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %5, align 4, !dbg !123, !tbaa !124
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %6, metadata !115, metadata !DIExpression()), !dbg !123
  %7 = icmp eq %struct.halide_profiler_pipeline_stats* %6, null, !dbg !122
  br i1 %7, label %22, label %8, !dbg !122

8:                                                ; preds = %3, %17
  %9 = phi %struct.halide_profiler_pipeline_stats* [ %20, %17 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 6, !dbg !128
  %11 = load i8*, i8** %10, align 8, !dbg !128, !tbaa !131
  %12 = icmp eq i8* %11, %0, !dbg !128
  br i1 %12, label %13, label %17, !dbg !128

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 9, !dbg !128
  %15 = load i32, i32* %14, align 4, !dbg !128, !tbaa !135
  %16 = icmp eq i32 %15, %1, !dbg !128
  br i1 %16, label %85, label %17, !dbg !128

17:                                               ; preds = %8, %13
  %18 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 8, !dbg !136
  %19 = bitcast i8** %18 to %struct.halide_profiler_pipeline_stats**, !dbg !136
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !115, metadata !DIExpression()), !dbg !123
  %20 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %19, align 4, !dbg !123, !tbaa !124
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %20, metadata !115, metadata !DIExpression()), !dbg !123
  %21 = icmp eq %struct.halide_profiler_pipeline_stats* %20, null, !dbg !122
  br i1 %21, label %22, label %8, !dbg !122, !llvm.loop !137

22:                                               ; preds = %17, %3
  %23 = tail call i8* @malloc(i32 80) #7, !dbg !140
  %24 = bitcast i8* %23 to %struct.halide_profiler_pipeline_stats*, !dbg !140
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %24, metadata !117, metadata !DIExpression()), !dbg !120
  %25 = icmp eq i8* %23, null, !dbg !141
  br i1 %25, label %85, label %26, !dbg !141

26:                                               ; preds = %22
  %27 = bitcast %struct.halide_profiler_pipeline_stats** %5 to i8**, !dbg !142
  %28 = load i8*, i8** %27, align 4, !dbg !142, !tbaa !143
  %29 = getelementptr inbounds i8, i8* %23, i32 56, !dbg !142
  %30 = bitcast i8* %29 to i8**, !dbg !142
  store i8* %28, i8** %30, align 8, !dbg !142, !tbaa !146
  %31 = getelementptr inbounds i8, i8* %23, i32 48, !dbg !147
  %32 = bitcast i8* %31 to i8**, !dbg !147
  store i8* %0, i8** %32, align 8, !dbg !147, !tbaa !131
  %33 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 2, !dbg !148
  %34 = load i32, i32* %33, align 4, !dbg !148, !tbaa !149
  %35 = getelementptr inbounds i8, i8* %23, i32 64, !dbg !148
  %36 = bitcast i8* %35 to i32*, !dbg !148
  store i32 %34, i32* %36, align 8, !dbg !148, !tbaa !150
  %37 = getelementptr inbounds i8, i8* %23, i32 60, !dbg !151
  %38 = bitcast i8* %37 to i32*, !dbg !151
  store i32 %1, i32* %38, align 4, !dbg !151, !tbaa !135
  %39 = getelementptr inbounds i8, i8* %23, i32 68, !dbg !152
  %40 = bitcast i8* %39 to i32*, !dbg !152
  store i32 0, i32* %40, align 4, !dbg !152, !tbaa !153
  %41 = bitcast i8* %23 to i64*, !dbg !154
  store i64 0, i64* %41, align 8, !dbg !154, !tbaa !155
  %42 = getelementptr inbounds i8, i8* %23, i32 72, !dbg !156
  %43 = bitcast i8* %42 to i32*, !dbg !156
  store i32 0, i32* %43, align 8, !dbg !156, !tbaa !157
  %44 = getelementptr inbounds i8, i8* %23, i32 8, !dbg !158
  %45 = bitcast i8* %44 to i64*, !dbg !158
  store i64 0, i64* %45, align 8, !dbg !158, !tbaa !159
  %46 = getelementptr inbounds i8, i8* %23, i32 16, !dbg !160
  %47 = bitcast i8* %46 to i64*, !dbg !160
  store i64 0, i64* %47, align 8, !dbg !160, !tbaa !161
  %48 = getelementptr inbounds i8, i8* %23, i32 24, !dbg !162
  %49 = bitcast i8* %48 to i64*, !dbg !162
  store i64 0, i64* %49, align 8, !dbg !162, !tbaa !163
  %50 = getelementptr inbounds i8, i8* %23, i32 76, !dbg !164
  %51 = bitcast i8* %50 to i32*, !dbg !164
  store i32 0, i32* %51, align 4, !dbg !164, !tbaa !165
  %52 = getelementptr inbounds i8, i8* %23, i32 32, !dbg !166
  %53 = bitcast i8* %52 to i64*, !dbg !166
  store i64 0, i64* %53, align 8, !dbg !166, !tbaa !167
  %54 = getelementptr inbounds i8, i8* %23, i32 40, !dbg !168
  %55 = bitcast i8* %54 to i64*, !dbg !168
  store i64 0, i64* %55, align 8, !dbg !168, !tbaa !169
  %56 = shl i32 %1, 6, !dbg !170
  %57 = tail call i8* @malloc(i32 %56) #7, !dbg !170
  %58 = getelementptr inbounds i8, i8* %23, i32 52, !dbg !170
  %59 = bitcast i8* %58 to i8**, !dbg !170
  store i8* %57, i8** %59, align 4, !dbg !170, !tbaa !171
  %60 = icmp eq i8* %57, null, !dbg !172
  %61 = bitcast i8* %57 to %struct.halide_profiler_func_stats*, !dbg !172
  br i1 %60, label %64, label %62, !dbg !172

62:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 0, metadata !118, metadata !DIExpression()), !dbg !173
  %63 = icmp sgt i32 %1, 0, !dbg !174
  br i1 %63, label %68, label %65, !dbg !174

64:                                               ; preds = %26
  tail call void @free(i8* nonnull %23) #7, !dbg !175
  br label %85, !dbg !178

65:                                               ; preds = %68, %62
  %66 = load i32, i32* %33, align 4, !dbg !179, !tbaa !149
  %67 = add nsw i32 %66, %1, !dbg !179
  store i32 %67, i32* %33, align 4, !dbg !179, !tbaa !149
  store i8* %23, i8** %27, align 4, !dbg !180, !tbaa !143
  br label %85, !dbg !181

68:                                               ; preds = %62, %68
  %69 = phi i32 [ %83, %68 ], [ 0, %62 ]
  call void @llvm.dbg.value(metadata i32 %69, metadata !118, metadata !DIExpression()), !dbg !173
  %70 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 0, !dbg !182
  store i64 0, i64* %70, align 8, !dbg !182, !tbaa !185
  %71 = getelementptr inbounds i64, i64* %2, i32 %69, !dbg !187
  %72 = load i64, i64* %71, align 8, !dbg !187, !tbaa !188
  %73 = trunc i64 %72 to i32, !dbg !187
  %74 = inttoptr i32 %73 to i8*, !dbg !187
  %75 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 7, !dbg !187
  store i8* %74, i8** %75, align 8, !dbg !187, !tbaa !189
  %76 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 1, !dbg !190
  store i64 0, i64* %76, align 8, !dbg !190, !tbaa !191
  %77 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 2, !dbg !192
  store i64 0, i64* %77, align 8, !dbg !192, !tbaa !193
  %78 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 3, !dbg !194
  store i64 0, i64* %78, align 8, !dbg !194, !tbaa !195
  %79 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 8, !dbg !196
  store i32 0, i32* %79, align 4, !dbg !196, !tbaa !197
  %80 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 4, !dbg !198
  store i64 0, i64* %80, align 8, !dbg !198, !tbaa !199
  %81 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 5, !dbg !200
  store i64 0, i64* %81, align 8, !dbg !200, !tbaa !201
  %82 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 6, !dbg !202
  store i64 0, i64* %82, align 8, !dbg !202, !tbaa !203
  %83 = add nuw nsw i32 %69, 1, !dbg !204
  call void @llvm.dbg.value(metadata i32 %83, metadata !118, metadata !DIExpression()), !dbg !173
  %84 = icmp eq i32 %83, %1, !dbg !174
  br i1 %84, label %65, label %68, !dbg !174, !llvm.loop !205

85:                                               ; preds = %13, %64, %65, %22
  %86 = phi %struct.halide_profiler_pipeline_stats* [ %24, %65 ], [ null, %64 ], [ null, %22 ], [ %9, %13 ], !dbg !120
  ret %struct.halide_profiler_pipeline_stats* %86, !dbg !207
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i8* @malloc(i32) local_unnamed_addr #4

declare dso_local void @free(i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?bill_func@Internal@Runtime@Halide@@YAXPAUhalide_profiler_state@@H_KH@Z"(%struct.halide_profiler_state* %0, i32 %1, i64 %2, i32 %3) local_unnamed_addr #1 !dbg !208 {
  call void @llvm.dbg.value(metadata i32 %3, metadata !212, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i64 %2, metadata !213, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 %1, metadata !214, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %0, metadata !215, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* null, metadata !216, metadata !DIExpression()), !dbg !224
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i32 0, i32 5, !dbg !225
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !217, metadata !DIExpression()), !dbg !226
  %6 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %5, align 4, !dbg !226, !tbaa !124
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* null, metadata !216, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %6, metadata !217, metadata !DIExpression()), !dbg !226
  %7 = icmp eq %struct.halide_profiler_pipeline_stats* %6, null, !dbg !225
  br i1 %7, label %59, label %8, !dbg !225

8:                                                ; preds = %4, %54
  %9 = phi %struct.halide_profiler_pipeline_stats* [ %57, %54 ], [ %6, %4 ]
  %10 = phi %struct.halide_profiler_pipeline_stats* [ %9, %54 ], [ null, %4 ]
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %10, metadata !216, metadata !DIExpression()), !dbg !224
  %11 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 10, !dbg !227
  %12 = load i32, i32* %11, align 8, !dbg !227, !tbaa !150
  %13 = icmp sgt i32 %12, %1, !dbg !227
  br i1 %13, label %54, label %14, !dbg !227

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 9, !dbg !227
  %16 = load i32, i32* %15, align 4, !dbg !227, !tbaa !135
  %17 = add nsw i32 %16, %12, !dbg !227
  %18 = icmp sgt i32 %17, %1, !dbg !227
  br i1 %18, label %19, label %54, !dbg !227

19:                                               ; preds = %14
  %20 = icmp eq %struct.halide_profiler_pipeline_stats* %10, null, !dbg !228
  br i1 %20, label %26, label %21, !dbg !228

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 8, !dbg !229
  %23 = load i8*, i8** %22, align 8, !dbg !229, !tbaa !146
  %24 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %10, i32 0, i32 8, !dbg !229
  store i8* %23, i8** %24, align 8, !dbg !229, !tbaa !146
  %25 = bitcast i8** %22 to %struct.halide_profiler_pipeline_stats**, !dbg !232
  store %struct.halide_profiler_pipeline_stats* %6, %struct.halide_profiler_pipeline_stats** %25, align 8, !dbg !232, !tbaa !146
  store %struct.halide_profiler_pipeline_stats* %9, %struct.halide_profiler_pipeline_stats** %5, align 4, !dbg !233, !tbaa !143
  br label %26, !dbg !234

26:                                               ; preds = %21, %19
  %27 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 7, !dbg !235
  %28 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %27, align 4, !dbg !235, !tbaa !171
  %29 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %28, i32 %1, !dbg !235
  %30 = sub i32 0, %12, !dbg !235
  %31 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %29, i32 %30, !dbg !235
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* %31, metadata !219, metadata !DIExpression()), !dbg !236
  %32 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %31, i32 0, i32 0, !dbg !237
  %33 = load i64, i64* %32, align 8, !dbg !237, !tbaa !185
  %34 = add i64 %33, %2, !dbg !237
  store i64 %34, i64* %32, align 8, !dbg !237, !tbaa !185
  %35 = sext i32 %3 to i64, !dbg !238
  %36 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %31, i32 0, i32 5, !dbg !238
  %37 = load i64, i64* %36, align 8, !dbg !238, !tbaa !201
  %38 = add i64 %37, %35, !dbg !238
  store i64 %38, i64* %36, align 8, !dbg !238, !tbaa !201
  %39 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %31, i32 0, i32 6, !dbg !239
  %40 = load i64, i64* %39, align 8, !dbg !239, !tbaa !203
  %41 = add i64 %40, 1, !dbg !239
  store i64 %41, i64* %39, align 8, !dbg !239, !tbaa !203
  %42 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 0, !dbg !240
  %43 = load i64, i64* %42, align 8, !dbg !240, !tbaa !155
  %44 = add i64 %43, %2, !dbg !240
  store i64 %44, i64* %42, align 8, !dbg !240, !tbaa !155
  %45 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 12, !dbg !241
  %46 = load i32, i32* %45, align 8, !dbg !241, !tbaa !157
  %47 = add nsw i32 %46, 1, !dbg !241
  store i32 %47, i32* %45, align 8, !dbg !241, !tbaa !157
  %48 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 4, !dbg !242
  %49 = load i64, i64* %48, align 8, !dbg !242, !tbaa !167
  %50 = add i64 %49, %35, !dbg !242
  store i64 %50, i64* %48, align 8, !dbg !242, !tbaa !167
  %51 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 5, !dbg !243
  %52 = load i64, i64* %51, align 8, !dbg !243, !tbaa !169
  %53 = add i64 %52, 1, !dbg !243
  store i64 %53, i64* %51, align 8, !dbg !243, !tbaa !169
  ret void

54:                                               ; preds = %14, %8
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %9, metadata !216, metadata !DIExpression()), !dbg !224
  %55 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 8, !dbg !244
  %56 = bitcast i8** %55 to %struct.halide_profiler_pipeline_stats**, !dbg !244
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !217, metadata !DIExpression()), !dbg !226
  %57 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %56, align 4, !dbg !226, !tbaa !124
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %57, metadata !217, metadata !DIExpression()), !dbg !226
  %58 = icmp eq %struct.halide_profiler_pipeline_stats* %57, null, !dbg !225
  br i1 %58, label %59, label %8, !dbg !225, !llvm.loop !245

59:                                               ; preds = %54, %4
  ret void, !dbg !247
}

; Function Attrs: nounwind
define weak dso_local void @"?sampling_profiler_thread@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #5 !dbg !248 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !252, metadata !DIExpression()), !dbg !262
  %4 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !263
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %4, metadata !253, metadata !DIExpression()), !dbg !262
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 0, !dbg !264
  tail call void @halide_mutex_lock(%struct.halide_mutex* %5) #7, !dbg !264
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 3, !dbg !265
  %7 = load i32, i32* %6, align 4, !dbg !265, !tbaa !266
  %8 = icmp eq i32 %7, -2, !dbg !265
  br i1 %8, label %39, label %9, !dbg !265

9:                                                ; preds = %1
  %10 = bitcast i32* %2 to i8*
  %11 = bitcast i32* %3 to i8*
  %12 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 6
  %13 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 4
  %14 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 1
  br label %18, !dbg !265

15:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 %29, metadata !256, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #8, !dbg !268
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #8, !dbg !268
  %16 = load i32, i32* %6, align 4, !dbg !265, !tbaa !266
  %17 = icmp eq i32 %16, -2, !dbg !265
  br i1 %17, label %39, label %18, !dbg !265, !llvm.loop !269

18:                                               ; preds = %9, %15
  %19 = call i64 @halide_current_time_ns(i8* null) #7, !dbg !271
  call void @llvm.dbg.value(metadata i64 %19, metadata !254, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i64 %19, metadata !256, metadata !DIExpression()), !dbg !267
  br label %20, !dbg !272

20:                                               ; preds = %37, %18
  %21 = phi i64 [ %19, %18 ], [ %29, %37 ], !dbg !273
  call void @llvm.dbg.value(metadata i64 %21, metadata !256, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #8, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #8, !dbg !274
  %22 = load void (i32*, i32*)*, void (i32*, i32*)** %12, align 4, !dbg !275, !tbaa !276
  %23 = icmp eq void (i32*, i32*)* %22, null, !dbg !275
  br i1 %23, label %25, label %24, !dbg !275

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32* %2, metadata !257, metadata !DIExpression(DW_OP_deref)), !dbg !277
  call void @llvm.dbg.value(metadata i32* %3, metadata !259, metadata !DIExpression(DW_OP_deref)), !dbg !277
  call void %22(i32* nonnull %2, i32* nonnull %3) #7, !dbg !278
  br label %28, !dbg !281

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4, !dbg !282, !tbaa !266
  call void @llvm.dbg.value(metadata i32 %26, metadata !257, metadata !DIExpression()), !dbg !277
  store i32 %26, i32* %2, align 4, !dbg !282, !tbaa !284
  %27 = load i32, i32* %13, align 4, !dbg !285, !tbaa !286
  call void @llvm.dbg.value(metadata i32 %27, metadata !259, metadata !DIExpression()), !dbg !277
  store i32 %27, i32* %3, align 4, !dbg !285, !tbaa !284
  br label %28, !dbg !287

28:                                               ; preds = %25, %24
  %29 = call i64 @halide_current_time_ns(i8* null) #7, !dbg !288
  call void @llvm.dbg.value(metadata i64 %29, metadata !260, metadata !DIExpression()), !dbg !277
  %30 = load i32, i32* %2, align 4, !dbg !289, !tbaa !284
  call void @llvm.dbg.value(metadata i32 %30, metadata !257, metadata !DIExpression()), !dbg !277
  %31 = icmp eq i32 %30, -2, !dbg !289
  br i1 %31, label %15, label %32, !dbg !289

32:                                               ; preds = %28
  %33 = icmp sgt i32 %30, -1, !dbg !290
  br i1 %33, label %34, label %37, !dbg !290

34:                                               ; preds = %32
  %35 = load i32, i32* %3, align 4, !dbg !292, !tbaa !284
  call void @llvm.dbg.value(metadata i32 %35, metadata !259, metadata !DIExpression()), !dbg !277
  %36 = sub i64 %29, %21, !dbg !292
  call void @"?bill_func@Internal@Runtime@Halide@@YAXPAUhalide_profiler_state@@H_KH@Z"(%struct.halide_profiler_state* nonnull %4, i32 %30, i64 %36, i32 %35) #6, !dbg !292
  br label %37, !dbg !295

37:                                               ; preds = %34, %32
  call void @llvm.dbg.value(metadata i64 %29, metadata !256, metadata !DIExpression()), !dbg !267
  %38 = load i32, i32* %14, align 4, !dbg !296, !tbaa !297
  call void @llvm.dbg.value(metadata i32 %38, metadata !261, metadata !DIExpression()), !dbg !277
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %5) #7, !dbg !298
  call void @halide_sleep_ms(i8* null, i32 %38) #7, !dbg !299
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull %5) #7, !dbg !300
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #8, !dbg !268
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #8, !dbg !268
  br label %20

39:                                               ; preds = %15, %1
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %5) #7, !dbg !301
  ret void, !dbg !302
}

declare dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #4

declare extern_weak i64 @halide_current_time_ns(i8*) local_unnamed_addr #4

declare dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #4

declare extern_weak void @halide_sleep_ms(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
define weak dso_local %struct.halide_profiler_pipeline_stats* @halide_profiler_get_pipeline_state(i8* %0) local_unnamed_addr #5 !dbg !303 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !307, metadata !DIExpression()), !dbg !324
  %2 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !325
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %2, metadata !308, metadata !DIExpression()), !dbg !324
  %3 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i32 0, i32 0, !dbg !326
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !327, metadata !DIExpression()) #8, !dbg !332
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !330, metadata !DIExpression()) #8, !dbg !332
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !309, metadata !DIExpression()), !dbg !324
  tail call void @halide_mutex_lock(%struct.halide_mutex* %3) #7, !dbg !334
  %4 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i32 0, i32 5, !dbg !336
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !322, metadata !DIExpression()), !dbg !337
  %5 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %4, align 4, !dbg !337, !tbaa !124
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %5, metadata !322, metadata !DIExpression()), !dbg !337
  %6 = icmp eq %struct.halide_profiler_pipeline_stats* %5, null, !dbg !336
  br i1 %6, label %17, label %7, !dbg !336

7:                                                ; preds = %1, %12
  %8 = phi %struct.halide_profiler_pipeline_stats* [ %15, %12 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %8, i32 0, i32 6, !dbg !338
  %10 = load i8*, i8** %9, align 8, !dbg !338, !tbaa !131
  %11 = icmp eq i8* %10, %0, !dbg !338
  br i1 %11, label %17, label %12, !dbg !338

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %8, i32 0, i32 8, !dbg !341
  %14 = bitcast i8** %13 to %struct.halide_profiler_pipeline_stats**, !dbg !341
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !322, metadata !DIExpression()), !dbg !337
  %15 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %14, align 4, !dbg !337, !tbaa !124
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %15, metadata !322, metadata !DIExpression()), !dbg !337
  %16 = icmp eq %struct.halide_profiler_pipeline_stats* %15, null, !dbg !336
  br i1 %16, label %17, label %7, !dbg !336, !llvm.loop !342

17:                                               ; preds = %12, %7, %1
  %18 = phi %struct.halide_profiler_pipeline_stats* [ null, %1 ], [ %8, %7 ], [ null, %12 ], !dbg !337
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !344, metadata !DIExpression()) #8, !dbg !347
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %3) #7, !dbg !349
  ret %struct.halide_profiler_pipeline_stats* %18, !dbg !351
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_profiler_pipeline_start(i8* %0, i8* %1, i32 %2, i64* %3) local_unnamed_addr #5 !dbg !352 {
  call void @llvm.dbg.value(metadata i64* %3, metadata !356, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i32 %2, metadata !357, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i8* %1, metadata !358, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i8* %0, metadata !359, metadata !DIExpression()), !dbg !363
  %5 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !364
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %5, metadata !360, metadata !DIExpression()), !dbg !363
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %5, i32 0, i32 0, !dbg !365
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %6, metadata !327, metadata !DIExpression()) #8, !dbg !366
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !330, metadata !DIExpression()) #8, !dbg !366
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %6, metadata !361, metadata !DIExpression()), !dbg !363
  tail call void @halide_mutex_lock(%struct.halide_mutex* %6) #7, !dbg !368
  %7 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %5, i32 0, i32 7, !dbg !369
  %8 = load %struct.halide_thread*, %struct.halide_thread** %7, align 4, !dbg !369, !tbaa !370
  %9 = icmp eq %struct.halide_thread* %8, null, !dbg !369
  br i1 %9, label %10, label %13, !dbg !369

10:                                               ; preds = %4
  %11 = tail call i32 @halide_start_clock(i8* %0) #7, !dbg !371
  %12 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @"?sampling_profiler_thread@Internal@Runtime@Halide@@YAXPAX@Z", i8* null) #7, !dbg !374
  store %struct.halide_thread* %12, %struct.halide_thread** %7, align 4, !dbg !374, !tbaa !370
  br label %13, !dbg !375

13:                                               ; preds = %10, %4
  %14 = tail call %struct.halide_profiler_pipeline_stats* @"?find_or_create_pipeline@Internal@Runtime@Halide@@YAPAUhalide_profiler_pipeline_stats@@PBDHPB_K@Z"(i8* %1, i32 %2, i64* %3) #6, !dbg !376
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %14, metadata !362, metadata !DIExpression()), !dbg !363
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null, !dbg !377
  br i1 %15, label %16, label %18, !dbg !377

16:                                               ; preds = %13
  %17 = tail call i32 @halide_error_out_of_memory(i8* %0) #7, !dbg !378
  br label %24, !dbg !378

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %14, i32 0, i32 11, !dbg !381
  %20 = load i32, i32* %19, align 4, !dbg !381, !tbaa !153
  %21 = add nsw i32 %20, 1, !dbg !381
  store i32 %21, i32* %19, align 4, !dbg !381, !tbaa !153
  %22 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %14, i32 0, i32 10, !dbg !382
  %23 = load i32, i32* %22, align 8, !dbg !382, !tbaa !150
  br label %24, !dbg !382

24:                                               ; preds = %18, %16
  %25 = phi i32 [ %23, %18 ], [ %17, %16 ], !dbg !363
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !344, metadata !DIExpression()) #8, !dbg !383
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %6) #7, !dbg !385
  ret i32 %25, !dbg !386
}

declare extern_weak i32 @halide_start_clock(i8*) local_unnamed_addr #4

declare dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)*, i8*) local_unnamed_addr #4

declare dso_local i32 @halide_error_out_of_memory(i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_stack_peak_update(i8* %0, i8* %1, i64* %2) local_unnamed_addr #1 !dbg !387 {
  call void @llvm.dbg.value(metadata i64* %2, metadata !392, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i8* %1, metadata !393, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i8* %0, metadata !394, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i8* %1, metadata !395, metadata !DIExpression()), !dbg !398
  %4 = icmp eq i8* %1, null, !dbg !399
  br i1 %4, label %5, label %6, !dbg !399

5:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @"??_C@_0HC@NOIAIGCC@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7, !dbg !401
  tail call void @abort() #7, !dbg !401
  br label %6, !dbg !401

6:                                                ; preds = %5, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !396, metadata !DIExpression()), !dbg !404
  %7 = getelementptr inbounds i8, i8* %1, i32 60, !dbg !405
  %8 = bitcast i8* %7 to i32*, !dbg !405
  %9 = load i32, i32* %8, align 4, !dbg !405, !tbaa !135
  %10 = icmp sgt i32 %9, 0, !dbg !405
  br i1 %10, label %11, label %14, !dbg !405

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %1, i32 52
  %13 = bitcast i8* %12 to %struct.halide_profiler_func_stats**
  br label %15, !dbg !405

14:                                               ; preds = %34, %6
  ret void, !dbg !406

15:                                               ; preds = %11, %34
  %16 = phi i32 [ %9, %11 ], [ %35, %34 ]
  %17 = phi i32 [ 0, %11 ], [ %36, %34 ]
  call void @llvm.dbg.value(metadata i32 %17, metadata !396, metadata !DIExpression()), !dbg !404
  %18 = getelementptr inbounds i64, i64* %2, i32 %17, !dbg !407
  %19 = load i64, i64* %18, align 8, !dbg !407, !tbaa !188
  %20 = icmp eq i64 %19, 0, !dbg !407
  br i1 %20, label %34, label %21, !dbg !407

21:                                               ; preds = %15
  %22 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %13, align 4, !dbg !410, !tbaa !171
  %23 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %22, i32 %17, i32 4, !dbg !410
  call void @llvm.dbg.value(metadata i64 %19, metadata !413, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i64* %23, metadata !420, metadata !DIExpression()), !dbg !426
  %24 = load i64, i64* %23, align 8, !dbg !428, !tbaa !188
  call void @llvm.dbg.value(metadata i64 %24, metadata !421, metadata !DIExpression()), !dbg !426
  br label %25, !dbg !429

25:                                               ; preds = %28, %21
  %26 = phi i64 [ %24, %21 ], [ %30, %28 ], !dbg !426
  call void @llvm.dbg.value(metadata i64 %26, metadata !421, metadata !DIExpression()), !dbg !426
  %27 = icmp ult i64 %26, %19, !dbg !429
  br i1 %27, label %28, label %32, !dbg !429

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %26, metadata !422, metadata !DIExpression()), !dbg !430
  %29 = cmpxchg i64* %23, i64 %26, i64 %19 seq_cst seq_cst, !dbg !431
  %30 = extractvalue { i64, i1 } %29, 0, !dbg !431
  call void @llvm.dbg.value(metadata i64 %30, metadata !421, metadata !DIExpression()), !dbg !426
  %31 = icmp eq i64 %26, %30, !dbg !432
  br i1 %31, label %32, label %25, !llvm.loop !433

32:                                               ; preds = %25, %28
  %33 = load i32, i32* %8, align 4, !dbg !405, !tbaa !135
  br label %34, !dbg !435

34:                                               ; preds = %32, %15
  %35 = phi i32 [ %33, %32 ], [ %16, %15 ], !dbg !405
  %36 = add nuw nsw i32 %17, 1, !dbg !435
  call void @llvm.dbg.value(metadata i32 %36, metadata !396, metadata !DIExpression()), !dbg !404
  %37 = icmp slt i32 %36, %35, !dbg !405
  br i1 %37, label %15, label %14, !dbg !405, !llvm.loop !436
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #4

declare dso_local void @abort() local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_memory_allocate(i8* %0, i8* %1, i32 %2, i64 %3) local_unnamed_addr #1 !dbg !438 {
  call void @llvm.dbg.value(metadata i64 %3, metadata !442, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata i32 %2, metadata !443, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata i8* %1, metadata !444, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata i8* %0, metadata !445, metadata !DIExpression()), !dbg !450
  %5 = icmp eq i64 %3, 0, !dbg !451
  br i1 %5, label %59, label %6, !dbg !451

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %1, metadata !446, metadata !DIExpression()), !dbg !450
  %7 = icmp eq i8* %1, null, !dbg !452
  br i1 %7, label %8, label %9, !dbg !452

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @"??_C@_0HC@MJAJLJCF@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7, !dbg !454
  tail call void @abort() #7, !dbg !454
  br label %9, !dbg !454

9:                                                ; preds = %6, %8
  %10 = icmp sgt i32 %2, -1, !dbg !457
  br i1 %10, label %12, label %11, !dbg !457

11:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@GJMNAOKK@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7, !dbg !459
  tail call void @abort() #7, !dbg !459
  br label %12, !dbg !459

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds i8, i8* %1, i32 60, !dbg !462
  %14 = bitcast i8* %13 to i32*, !dbg !462
  %15 = load i32, i32* %14, align 4, !dbg !462, !tbaa !135
  %16 = icmp sgt i32 %15, %2, !dbg !462
  br i1 %16, label %18, label %17, !dbg !462

17:                                               ; preds = %12
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @"??_C@_0HM@KEKFGDCE@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7, !dbg !464
  tail call void @abort() #7, !dbg !464
  br label %18, !dbg !464

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds i8, i8* %1, i32 52, !dbg !467
  %20 = bitcast i8* %19 to %struct.halide_profiler_func_stats**, !dbg !467
  %21 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %20, align 4, !dbg !467, !tbaa !171
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* undef, metadata !447, metadata !DIExpression()), !dbg !450
  %22 = getelementptr inbounds i8, i8* %1, i32 76, !dbg !468
  %23 = bitcast i8* %22 to i32*, !dbg !468
  %24 = atomicrmw add i32* %23, i32 1 seq_cst, !dbg !468
  %25 = getelementptr inbounds i8, i8* %1, i32 24, !dbg !469
  %26 = bitcast i8* %25 to i64*, !dbg !469
  %27 = atomicrmw add i64* %26, i64 %3 seq_cst, !dbg !469
  %28 = getelementptr inbounds i8, i8* %1, i32 8, !dbg !470
  %29 = bitcast i8* %28 to i64*, !dbg !470
  %30 = atomicrmw add i64* %29, i64 %3 seq_cst, !dbg !470
  %31 = add i64 %30, %3, !dbg !470
  call void @llvm.dbg.value(metadata i64 %31, metadata !448, metadata !DIExpression()), !dbg !450
  %32 = getelementptr inbounds i8, i8* %1, i32 16, !dbg !471
  %33 = bitcast i8* %32 to i64*, !dbg !471
  call void @llvm.dbg.value(metadata i64 %31, metadata !413, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64* %33, metadata !420, metadata !DIExpression()), !dbg !472
  %34 = load i64, i64* %33, align 8, !dbg !474, !tbaa !188
  call void @llvm.dbg.value(metadata i64 %34, metadata !421, metadata !DIExpression()), !dbg !472
  br label %35, !dbg !475

35:                                               ; preds = %38, %18
  %36 = phi i64 [ %34, %18 ], [ %40, %38 ], !dbg !472
  call void @llvm.dbg.value(metadata i64 %36, metadata !421, metadata !DIExpression()), !dbg !472
  %37 = icmp ult i64 %36, %31, !dbg !475
  br i1 %37, label %38, label %42, !dbg !475

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %36, metadata !422, metadata !DIExpression()), !dbg !476
  %39 = cmpxchg i64* %33, i64 %36, i64 %31 seq_cst seq_cst, !dbg !477
  %40 = extractvalue { i64, i1 } %39, 0, !dbg !477
  call void @llvm.dbg.value(metadata i64 %40, metadata !421, metadata !DIExpression()), !dbg !472
  %41 = icmp eq i64 %36, %40, !dbg !478
  br i1 %41, label %42, label %35, !llvm.loop !479

42:                                               ; preds = %35, %38
  %43 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i32 %2, i32 8, !dbg !481
  %44 = atomicrmw add i32* %43, i32 1 seq_cst, !dbg !481
  %45 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i32 %2, i32 3, !dbg !482
  %46 = atomicrmw add i64* %45, i64 %3 seq_cst, !dbg !482
  %47 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i32 %2, i32 1, !dbg !483
  %48 = atomicrmw add i64* %47, i64 %3 seq_cst, !dbg !483
  %49 = add i64 %48, %3, !dbg !483
  call void @llvm.dbg.value(metadata i64 %49, metadata !449, metadata !DIExpression()), !dbg !450
  %50 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i32 %2, i32 2, !dbg !484
  call void @llvm.dbg.value(metadata i64 %49, metadata !413, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.value(metadata i64* %50, metadata !420, metadata !DIExpression()), !dbg !485
  %51 = load i64, i64* %50, align 8, !dbg !487, !tbaa !188
  call void @llvm.dbg.value(metadata i64 %51, metadata !421, metadata !DIExpression()), !dbg !485
  br label %52, !dbg !488

52:                                               ; preds = %55, %42
  %53 = phi i64 [ %51, %42 ], [ %57, %55 ], !dbg !485
  call void @llvm.dbg.value(metadata i64 %53, metadata !421, metadata !DIExpression()), !dbg !485
  %54 = icmp ult i64 %53, %49, !dbg !488
  br i1 %54, label %55, label %59, !dbg !488

55:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i64 %53, metadata !422, metadata !DIExpression()), !dbg !489
  %56 = cmpxchg i64* %50, i64 %53, i64 %49 seq_cst seq_cst, !dbg !490
  %57 = extractvalue { i64, i1 } %56, 0, !dbg !490
  call void @llvm.dbg.value(metadata i64 %57, metadata !421, metadata !DIExpression()), !dbg !485
  %58 = icmp eq i64 %53, %57, !dbg !491
  br i1 %58, label %59, label %52, !llvm.loop !492

59:                                               ; preds = %55, %52, %4
  ret void, !dbg !494
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_memory_free(i8* %0, i8* %1, i32 %2, i64 %3) local_unnamed_addr #1 !dbg !495 {
  call void @llvm.dbg.value(metadata i64 %3, metadata !497, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32 %2, metadata !498, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i8* %1, metadata !499, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i8* %0, metadata !500, metadata !DIExpression()), !dbg !503
  %5 = icmp eq i64 %3, 0, !dbg !504
  br i1 %5, label %27, label %6, !dbg !504

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %1, metadata !501, metadata !DIExpression()), !dbg !503
  %7 = icmp eq i8* %1, null, !dbg !505
  br i1 %7, label %8, label %9, !dbg !505

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @"??_C@_0HC@PMOKBCNB@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7, !dbg !507
  tail call void @abort() #7, !dbg !507
  br label %9, !dbg !507

9:                                                ; preds = %6, %8
  %10 = icmp sgt i32 %2, -1, !dbg !510
  br i1 %10, label %12, label %11, !dbg !510

11:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"??_C@_0GM@CDNILHME@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7, !dbg !512
  tail call void @abort() #7, !dbg !512
  br label %12, !dbg !512

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds i8, i8* %1, i32 60, !dbg !515
  %14 = bitcast i8* %13 to i32*, !dbg !515
  %15 = load i32, i32* %14, align 4, !dbg !515, !tbaa !135
  %16 = icmp sgt i32 %15, %2, !dbg !515
  br i1 %16, label %18, label %17, !dbg !515

17:                                               ; preds = %12
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @"??_C@_0HM@CMPHPLIB@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #7, !dbg !517
  tail call void @abort() #7, !dbg !517
  br label %18, !dbg !517

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds i8, i8* %1, i32 52, !dbg !520
  %20 = bitcast i8* %19 to %struct.halide_profiler_func_stats**, !dbg !520
  %21 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %20, align 4, !dbg !520, !tbaa !171
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* undef, metadata !502, metadata !DIExpression()), !dbg !503
  %22 = getelementptr inbounds i8, i8* %1, i32 8, !dbg !521
  %23 = bitcast i8* %22 to i64*, !dbg !521
  %24 = atomicrmw sub i64* %23, i64 %3 seq_cst, !dbg !521
  %25 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i32 %2, i32 1, !dbg !522
  %26 = atomicrmw sub i64* %25, i64 %3 seq_cst, !dbg !522
  br label %27

27:                                               ; preds = %4, %18
  ret void, !dbg !523
}

; Function Attrs: nounwind
define weak dso_local void @halide_profiler_report_unlocked(i8* %0, %struct.halide_profiler_state* %1) local_unnamed_addr #5 !dbg !524 {
  %3 = alloca [1024 x i8], align 1
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %1, metadata !528, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i8* %0, metadata !529, metadata !DIExpression()), !dbg !681
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i32 0, i32 0, !dbg !682
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %5) #8, !dbg !682
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !530, metadata !DIExpression()), !dbg !682
  %6 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*, !dbg !683
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %6) #8, !dbg !683
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !534, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i8* %5, metadata !684, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8* %0, metadata !687, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !688, metadata !DIExpression()), !dbg !690
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 3, !dbg !692
  store i8* %0, i8** %7, align 4, !dbg !692, !tbaa !693
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 4, !dbg !692
  store i8 0, i8* %8, align 4, !dbg !692, !tbaa !696
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 0, !dbg !697
  store i8* %5, i8** %9, align 4, !dbg !697
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 1, !dbg !702
  store i8* %5, i8** %10, align 4, !dbg !702, !tbaa !703
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i32 0, i32 1023, !dbg !704
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 2, !dbg !704
  store i8* %11, i8** %12, align 4, !dbg !704, !tbaa !707
  store i8 0, i8* %11, align 1, !dbg !708, !tbaa !709
  %13 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i32 0, i32 5, !dbg !710
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !650, metadata !DIExpression()), !dbg !711
  %14 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %13, align 4, !dbg !711, !tbaa !124
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %14, metadata !650, metadata !DIExpression()), !dbg !711
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null, !dbg !710
  br i1 %15, label %21, label %40, !dbg !710

16:                                               ; preds = %429
  %17 = load i8*, i8** %9, align 4, !dbg !712, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !716, metadata !DIExpression()) #8, !dbg !719
  %18 = icmp eq i8* %17, null, !dbg !712
  br i1 %18, label %19, label %21, !dbg !712

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 4, !dbg !720, !tbaa !693
  call void @halide_error(i8* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0)) #7, !dbg !720
  br label %31, !dbg !723

21:                                               ; preds = %2, %16
  %22 = phi i8* [ %17, %16 ], [ %5, %2 ]
  %23 = load i8*, i8** %10, align 4, !dbg !724, !tbaa !703
  %24 = load i8*, i8** %7, align 4, !dbg !724, !tbaa !693
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !726, metadata !DIExpression()) #8, !dbg !729
  %25 = ptrtoint i8* %23 to i32, !dbg !731
  %26 = ptrtoint i8* %22 to i32, !dbg !731
  %27 = sub i32 1, %26, !dbg !731
  %28 = add i32 %27, %25, !dbg !731
  %29 = sext i32 %28 to i64, !dbg !731
  %30 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %24, i8* nonnull %22, i64 %29) #7, !dbg !731
  br label %31, !dbg !732

31:                                               ; preds = %21, %19
  %32 = load i8, i8* %8, align 4, !dbg !733, !tbaa !696, !range !734
  %33 = icmp eq i8 %32, 0, !dbg !733
  br i1 %33, label %39, label %34, !dbg !733

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 4, !dbg !733, !tbaa !718
  %36 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 5, i32 0, !dbg !733
  %37 = icmp eq i8* %35, %36, !dbg !733
  br i1 %37, label %39, label %38, !dbg !733

38:                                               ; preds = %34
  call void @free(i8* %35) #7, !dbg !735
  br label %39, !dbg !738

39:                                               ; preds = %31, %34, %38
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %6) #8, !dbg !739
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %5) #8, !dbg !739
  ret void, !dbg !739

40:                                               ; preds = %2, %429
  %41 = phi %struct.halide_profiler_pipeline_stats* [ %432, %429 ], [ %14, %2 ]
  %42 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 0, !dbg !740
  %43 = load i64, i64* %42, align 8, !dbg !740, !tbaa !155
  %44 = uitofp i64 %43 to float, !dbg !740
  %45 = fdiv float %44, 1.000000e+06, !dbg !740
  call void @llvm.dbg.value(metadata float %45, metadata !652, metadata !DIExpression()), !dbg !741
  %46 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 11, !dbg !742
  %47 = load i32, i32* %46, align 4, !dbg !742, !tbaa !153
  %48 = icmp eq i32 %47, 0, !dbg !742
  br i1 %48, label %429, label %49, !dbg !742

49:                                               ; preds = %40
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !743, metadata !DIExpression()), !dbg !746
  %50 = load i8*, i8** %9, align 4, !dbg !748, !tbaa !718
  store i8* %50, i8** %10, align 4, !dbg !748, !tbaa !703
  %51 = icmp eq i8* %50, null, !dbg !749
  br i1 %51, label %53, label %52, !dbg !749

52:                                               ; preds = %49
  store i8 0, i8* %50, align 1, !dbg !750, !tbaa !709
  br label %53, !dbg !753

53:                                               ; preds = %49, %52
  call void @llvm.dbg.value(metadata i32 0, metadata !655, metadata !DIExpression()), !dbg !741
  %54 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 13, !dbg !754
  %55 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 4, !dbg !755
  %56 = load i64, i64* %55, align 8, !dbg !755, !tbaa !167
  %57 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 5, !dbg !755
  %58 = load i64, i64* %57, align 8, !dbg !755, !tbaa !169
  %59 = icmp eq i64 %56, %58, !dbg !755
  call void @llvm.dbg.value(metadata i1 %59, metadata !656, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !741
  call void @llvm.dbg.value(metadata float undef, metadata !657, metadata !DIExpression()), !dbg !741
  %60 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 6, !dbg !756
  %61 = load i8*, i8** %60, align 8, !dbg !756, !tbaa !131
  call void @llvm.dbg.value(metadata i8* %61, metadata !757, metadata !DIExpression()) #8, !dbg !761
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !761
  %62 = icmp eq i8* %61, null, !dbg !763
  %63 = load i8*, i8** %12, align 4, !dbg !764, !tbaa !707
  %64 = load i8*, i8** %10, align 4, !dbg !764, !tbaa !703
  br i1 %62, label %65, label %67, !dbg !763

65:                                               ; preds = %53
  %66 = call i8* @halide_string_to_string(i8* %64, i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7, !dbg !766
  br label %69, !dbg !768

67:                                               ; preds = %53
  %68 = call i8* @halide_string_to_string(i8* %64, i8* %63, i8* nonnull %61) #7, !dbg !769
  br label %69, !dbg !771

69:                                               ; preds = %65, %67
  %70 = phi i8* [ %68, %67 ], [ %66, %65 ], !dbg !764
  store i8* %70, i8** %10, align 4, !dbg !764, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !772
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !772
  %71 = load i8*, i8** %12, align 4, !dbg !774, !tbaa !707
  %72 = call i8* @halide_string_to_string(i8* %70, i8* %71, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7, !dbg !774
  store i8* %72, i8** %10, align 4, !dbg !774, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@BGKKBPNB@?5total?5time?3?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !775
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !775
  %73 = load i8*, i8** %12, align 4, !dbg !777, !tbaa !707
  %74 = call i8* @halide_string_to_string(i8* %72, i8* %73, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@BGKKBPNB@?5total?5time?3?5?$AA@", i32 0, i32 0)) #7, !dbg !777
  store i8* %74, i8** %10, align 4, !dbg !777, !tbaa !703
  call void @llvm.dbg.value(metadata float %45, metadata !778, metadata !DIExpression()) #8, !dbg !782
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !781, metadata !DIExpression()) #8, !dbg !782
  %75 = fpext float %45 to double, !dbg !784
  %76 = load i8*, i8** %12, align 4, !dbg !784, !tbaa !707
  %77 = call i8* @halide_double_to_string(i8* %74, i8* %76, double %75, i32 0) #7, !dbg !784
  store i8* %77, i8** %10, align 4, !dbg !784, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"??_C@_03DKJEPNJL@?5ms?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !785
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !785
  %78 = load i8*, i8** %12, align 4, !dbg !787, !tbaa !707
  %79 = call i8* @halide_string_to_string(i8* %77, i8* %78, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @"??_C@_03DKJEPNJL@?5ms?$AA@", i32 0, i32 0)) #7, !dbg !787
  store i8* %79, i8** %10, align 4, !dbg !787, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"??_C@_0M@HBNPAI@?5?5samples?3?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !788
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !788
  %80 = load i8*, i8** %12, align 4, !dbg !790, !tbaa !707
  %81 = call i8* @halide_string_to_string(i8* %79, i8* %80, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @"??_C@_0M@HBNPAI@?5?5samples?3?5?$AA@", i32 0, i32 0)) #7, !dbg !790
  store i8* %81, i8** %10, align 4, !dbg !790, !tbaa !703
  %82 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 12, !dbg !756
  %83 = load i32, i32* %82, align 8, !dbg !756, !tbaa !157
  call void @llvm.dbg.value(metadata i32 %83, metadata !791, metadata !DIExpression()) #8, !dbg !795
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !794, metadata !DIExpression()) #8, !dbg !795
  %84 = sext i32 %83 to i64, !dbg !797
  %85 = load i8*, i8** %12, align 4, !dbg !797, !tbaa !707
  %86 = call i8* @halide_int64_to_string(i8* %81, i8* %85, i64 %84, i32 1) #7, !dbg !797
  store i8* %86, i8** %10, align 4, !dbg !797, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08KBJJNEGO@?5?5runs?3?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !798
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !798
  %87 = load i8*, i8** %12, align 4, !dbg !800, !tbaa !707
  %88 = call i8* @halide_string_to_string(i8* %86, i8* %87, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08KBJJNEGO@?5?5runs?3?5?$AA@", i32 0, i32 0)) #7, !dbg !800
  store i8* %88, i8** %10, align 4, !dbg !800, !tbaa !703
  %89 = load i32, i32* %46, align 4, !dbg !756, !tbaa !153
  call void @llvm.dbg.value(metadata i32 %89, metadata !791, metadata !DIExpression()) #8, !dbg !801
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !794, metadata !DIExpression()) #8, !dbg !801
  %90 = sext i32 %89 to i64, !dbg !803
  %91 = load i8*, i8** %12, align 4, !dbg !803, !tbaa !707
  %92 = call i8* @halide_int64_to_string(i8* %88, i8* %91, i64 %90, i32 1) #7, !dbg !803
  store i8* %92, i8** %10, align 4, !dbg !803, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@CEEGKBED@?5?5time?1run?3?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !804
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !804
  %93 = load i8*, i8** %12, align 4, !dbg !806, !tbaa !707
  %94 = call i8* @halide_string_to_string(i8* %92, i8* %93, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@CEEGKBED@?5?5time?1run?3?5?$AA@", i32 0, i32 0)) #7, !dbg !806
  store i8* %94, i8** %10, align 4, !dbg !806, !tbaa !703
  %95 = load i32, i32* %46, align 4, !dbg !756, !tbaa !153
  %96 = sitofp i32 %95 to float, !dbg !756
  %97 = fdiv float %45, %96, !dbg !756
  call void @llvm.dbg.value(metadata float %97, metadata !778, metadata !DIExpression()) #8, !dbg !807
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !781, metadata !DIExpression()) #8, !dbg !807
  %98 = fpext float %97 to double, !dbg !809
  %99 = load i8*, i8** %12, align 4, !dbg !809, !tbaa !707
  %100 = call i8* @halide_double_to_string(i8* %94, i8* %99, double %98, i32 0) #7, !dbg !809
  store i8* %100, i8** %10, align 4, !dbg !809, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"??_C@_04JNAIDGLL@?5ms?6?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !810
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !810
  %101 = load i8*, i8** %12, align 4, !dbg !812, !tbaa !707
  %102 = call i8* @halide_string_to_string(i8* %100, i8* %101, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @"??_C@_04JNAIDGLL@?5ms?6?$AA@", i32 0, i32 0)) #7, !dbg !812
  store i8* %102, i8** %10, align 4, !dbg !812, !tbaa !703
  br i1 %59, label %116, label %103, !dbg !813

103:                                              ; preds = %69
  %104 = uitofp i64 %56 to double, !dbg !814
  %105 = uitofp i64 %58 to double, !dbg !814
  %106 = fadd double %105, 1.000000e-10, !dbg !814
  %107 = fdiv double %104, %106, !dbg !814
  %108 = fptrunc double %107 to float, !dbg !814
  call void @llvm.dbg.value(metadata float %108, metadata !657, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@CMGBJPNG@?5average?5threads?5used?3?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !815
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !815
  %109 = load i8*, i8** %12, align 4, !dbg !819, !tbaa !707
  %110 = call i8* @halide_string_to_string(i8* %102, i8* %109, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @"??_C@_0BI@CMGBJPNG@?5average?5threads?5used?3?5?$AA@", i32 0, i32 0)) #7, !dbg !819
  store i8* %110, i8** %10, align 4, !dbg !819, !tbaa !703
  call void @llvm.dbg.value(metadata float %108, metadata !778, metadata !DIExpression()) #8, !dbg !820
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !781, metadata !DIExpression()) #8, !dbg !820
  %111 = fpext float %108 to double, !dbg !822
  %112 = load i8*, i8** %12, align 4, !dbg !822, !tbaa !707
  %113 = call i8* @halide_double_to_string(i8* %110, i8* %112, double %111, i32 0) #7, !dbg !822
  store i8* %113, i8** %10, align 4, !dbg !822, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !823
  %114 = load i8*, i8** %12, align 4, !dbg !825, !tbaa !707
  %115 = call i8* @halide_string_to_string(i8* %113, i8* %114, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7, !dbg !825
  store i8* %115, i8** %10, align 4, !dbg !825, !tbaa !703
  br label %116, !dbg !826

116:                                              ; preds = %103, %69
  %117 = phi i8* [ %115, %103 ], [ %102, %69 ], !dbg !827
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@BOGLMGMN@?5heap?5allocations?3?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !829
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !829
  %118 = load i8*, i8** %12, align 4, !dbg !827, !tbaa !707
  %119 = call i8* @halide_string_to_string(i8* %117, i8* %118, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@BOGLMGMN@?5heap?5allocations?3?5?$AA@", i32 0, i32 0)) #7, !dbg !827
  store i8* %119, i8** %10, align 4, !dbg !827, !tbaa !703
  %120 = load i32, i32* %54, align 4, !dbg !830, !tbaa !165
  call void @llvm.dbg.value(metadata i32 %120, metadata !791, metadata !DIExpression()) #8, !dbg !831
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !794, metadata !DIExpression()) #8, !dbg !831
  %121 = sext i32 %120 to i64, !dbg !833
  %122 = load i8*, i8** %12, align 4, !dbg !833, !tbaa !707
  %123 = call i8* @halide_int64_to_string(i8* %119, i8* %122, i64 %121, i32 1) #7, !dbg !833
  store i8* %123, i8** %10, align 4, !dbg !833, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@CEBPNHKJ@?5?5peak?5heap?5usage?3?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !834
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !834
  %124 = load i8*, i8** %12, align 4, !dbg !836, !tbaa !707
  %125 = call i8* @halide_string_to_string(i8* %123, i8* %124, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@CEBPNHKJ@?5?5peak?5heap?5usage?3?5?$AA@", i32 0, i32 0)) #7, !dbg !836
  store i8* %125, i8** %10, align 4, !dbg !836, !tbaa !703
  %126 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 2, !dbg !830
  %127 = load i64, i64* %126, align 8, !dbg !830, !tbaa !161
  call void @llvm.dbg.value(metadata i64 %127, metadata !837, metadata !DIExpression()) #8, !dbg !841
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !840, metadata !DIExpression()) #8, !dbg !841
  %128 = load i8*, i8** %12, align 4, !dbg !843, !tbaa !707
  %129 = call i8* @halide_uint64_to_string(i8* %125, i8* %128, i64 %127, i32 1) #7, !dbg !843
  store i8* %129, i8** %10, align 4, !dbg !843, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07PPFNDMLI@?5bytes?6?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !844
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !844
  %130 = load i8*, i8** %12, align 4, !dbg !846, !tbaa !707
  %131 = call i8* @halide_string_to_string(i8* %129, i8* %130, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07PPFNDMLI@?5bytes?6?$AA@", i32 0, i32 0)) #7, !dbg !846
  store i8* %131, i8** %10, align 4, !dbg !846, !tbaa !703
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !847, metadata !DIExpression()) #8, !dbg !850
  %132 = load i8*, i8** %9, align 4, !dbg !852, !tbaa !718
  %133 = icmp eq i8* %132, null, !dbg !852
  br i1 %133, label %143, label %134, !dbg !852

134:                                              ; preds = %116
  %135 = load i8*, i8** %7, align 4, !dbg !853, !tbaa !693
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !726, metadata !DIExpression()) #8, !dbg !858
  %136 = ptrtoint i8* %131 to i32, !dbg !860
  %137 = ptrtoint i8* %132 to i32, !dbg !860
  %138 = add i32 %136, 1, !dbg !860
  %139 = sub i32 %138, %137, !dbg !860
  %140 = sext i32 %139 to i64, !dbg !860
  %141 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %135, i8* nonnull %132, i64 %140) #7, !dbg !860
  %142 = load i8*, i8** %9, align 4, !dbg !861, !tbaa !718
  br label %143, !dbg !861

143:                                              ; preds = %116, %134
  %144 = phi i8* [ %142, %134 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0), %116 ], !dbg !862
  call void @halide_print(i8* %0, i8* %144) #7, !dbg !863
  %145 = load i64, i64* %42, align 8, !dbg !864, !tbaa !155
  %146 = icmp eq i64 %145, 0, !dbg !864
  br i1 %146, label %147, label %166, !dbg !864

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 3, !dbg !864
  %149 = load i64, i64* %148, align 8, !dbg !864, !tbaa !163
  %150 = icmp eq i64 %149, 0, !dbg !864
  call void @llvm.dbg.value(metadata i1 %150, metadata !658, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !741
  br i1 %150, label %151, label %166, !dbg !865

151:                                              ; preds = %147
  call void @llvm.dbg.value(metadata i8 0, metadata !658, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i32 0, metadata !659, metadata !DIExpression()), !dbg !866
  %152 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 9, !dbg !867
  %153 = load i32, i32* %152, align 4, !dbg !867, !tbaa !135
  %154 = icmp sgt i32 %153, 0, !dbg !867
  br i1 %154, label %155, label %429, !dbg !867

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 7
  %157 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %156, align 4, !tbaa !171
  br label %160, !dbg !867

158:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 0, metadata !658, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i32 %165, metadata !659, metadata !DIExpression()), !dbg !866
  %159 = icmp slt i32 %165, %153, !dbg !867
  br i1 %159, label %160, label %429, !dbg !867, !llvm.loop !868

160:                                              ; preds = %155, %158
  %161 = phi i32 [ 0, %155 ], [ %165, %158 ]
  call void @llvm.dbg.value(metadata i32 %161, metadata !659, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* undef, metadata !663, metadata !DIExpression()), !dbg !870
  %162 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %157, i32 %161, i32 4, !dbg !871
  %163 = load i64, i64* %162, align 8, !dbg !871, !tbaa !199
  %164 = icmp eq i64 %163, 0, !dbg !871
  call void @llvm.dbg.value(metadata i8 undef, metadata !658, metadata !DIExpression()), !dbg !741
  %165 = add nuw nsw i32 %161, 1, !dbg !872
  call void @llvm.dbg.value(metadata i32 %165, metadata !659, metadata !DIExpression()), !dbg !866
  br i1 %164, label %158, label %166

166:                                              ; preds = %160, %147, %143
  call void @llvm.dbg.value(metadata i32 0, metadata !666, metadata !DIExpression()), !dbg !873
  %167 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 9, !dbg !874
  %168 = load i32, i32* %167, align 4, !dbg !874, !tbaa !135
  %169 = icmp sgt i32 %168, 0, !dbg !874
  br i1 %169, label %170, label %429, !dbg !874

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 7
  br label %172, !dbg !874

172:                                              ; preds = %170, %425
  %173 = phi i32 [ 0, %170 ], [ %426, %425 ]
  call void @llvm.dbg.value(metadata i32 %173, metadata !666, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i32 0, metadata !670, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !743, metadata !DIExpression()), !dbg !876
  %174 = load i8*, i8** %9, align 4, !dbg !878, !tbaa !718
  store i8* %174, i8** %10, align 4, !dbg !878, !tbaa !703
  %175 = icmp eq i8* %174, null, !dbg !879
  br i1 %175, label %177, label %176, !dbg !879

176:                                              ; preds = %172
  store i8 0, i8* %174, align 1, !dbg !880, !tbaa !709
  br label %177, !dbg !881

177:                                              ; preds = %172, %176
  %178 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %171, align 4, !dbg !882, !tbaa !171
  %179 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, !dbg !882
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* %179, metadata !674, metadata !DIExpression()), !dbg !875
  %180 = icmp eq i32 %173, 0, !dbg !883
  br i1 %180, label %181, label %185, !dbg !883

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %179, i32 0, i32 0, !dbg !883
  %183 = load i64, i64* %182, align 8, !dbg !883, !tbaa !185
  %184 = icmp eq i64 %183, 0, !dbg !883
  br i1 %184, label %425, label %185, !dbg !883

185:                                              ; preds = %181, %177
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02KNHHEEKP@?5?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !884
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !884
  %186 = load i8*, i8** %12, align 4, !dbg !886, !tbaa !707
  %187 = load i8*, i8** %10, align 4, !dbg !886, !tbaa !703
  %188 = call i8* @halide_string_to_string(i8* %187, i8* %186, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02KNHHEEKP@?5?5?$AA@", i32 0, i32 0)) #7, !dbg !886
  store i8* %188, i8** %10, align 4, !dbg !886, !tbaa !703
  %189 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 7, !dbg !887
  %190 = load i8*, i8** %189, align 8, !dbg !887, !tbaa !189
  call void @llvm.dbg.value(metadata i8* %190, metadata !757, metadata !DIExpression()) #8, !dbg !888
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !888
  %191 = icmp eq i8* %190, null, !dbg !890
  %192 = load i8*, i8** %12, align 4, !dbg !891, !tbaa !707
  br i1 %191, label %193, label %195, !dbg !890

193:                                              ; preds = %185
  %194 = call i8* @halide_string_to_string(i8* %188, i8* %192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09CGLEKJAK@?$DMnullptr?$DO?$AA@", i32 0, i32 0)) #7, !dbg !892
  br label %197, !dbg !893

195:                                              ; preds = %185
  %196 = call i8* @halide_string_to_string(i8* %188, i8* %192, i8* nonnull %190) #7, !dbg !894
  br label %197, !dbg !895

197:                                              ; preds = %193, %195
  %198 = phi i8* [ %196, %195 ], [ %194, %193 ], !dbg !891
  store i8* %198, i8** %10, align 4, !dbg !891, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02LMMGGCAJ@?3?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !896
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !896
  %199 = load i8*, i8** %12, align 4, !dbg !898, !tbaa !707
  %200 = call i8* @halide_string_to_string(i8* %198, i8* %199, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02LMMGGCAJ@?3?5?$AA@", i32 0, i32 0)) #7, !dbg !898
  call void @llvm.dbg.value(metadata i32 25, metadata !670, metadata !DIExpression()), !dbg !875
  store i8* %200, i8** %10, align 4, !dbg !875, !tbaa !703
  %201 = load i8*, i8** %9, align 4, !dbg !899, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !904
  %202 = ptrtoint i8* %200 to i32, !dbg !906
  %203 = ptrtoint i8* %201 to i32, !dbg !906
  %204 = sub i32 %202, %203, !dbg !906
  %205 = icmp ult i32 %204, 25, !dbg !899
  br i1 %205, label %206, label %215, !dbg !899

206:                                              ; preds = %197, %206
  %207 = phi i8* [ %209, %206 ], [ %200, %197 ], !dbg !907
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !910
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !910
  %208 = load i8*, i8** %12, align 4, !dbg !907, !tbaa !707
  %209 = call i8* @halide_string_to_string(i8* %207, i8* %208, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i32 0, i32 0)) #7, !dbg !907
  store i8* %209, i8** %10, align 4, !dbg !875, !tbaa !703
  %210 = load i8*, i8** %9, align 4, !dbg !899, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !904
  %211 = ptrtoint i8* %209 to i32, !dbg !906
  %212 = ptrtoint i8* %210 to i32, !dbg !906
  %213 = sub i32 %211, %212, !dbg !906
  %214 = icmp ult i32 %213, 25, !dbg !899
  br i1 %214, label %206, label %215, !dbg !899, !llvm.loop !911

215:                                              ; preds = %206, %197
  %216 = phi i8* [ %200, %197 ], [ %209, %206 ], !dbg !913
  %217 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %179, i32 0, i32 0, !dbg !915
  %218 = load i64, i64* %217, align 8, !dbg !915, !tbaa !185
  %219 = uitofp i64 %218 to float, !dbg !915
  %220 = load i32, i32* %46, align 4, !dbg !915, !tbaa !153
  %221 = sitofp i32 %220 to float, !dbg !915
  %222 = fmul float %221, 1.000000e+06, !dbg !915
  %223 = fdiv float %219, %222, !dbg !915
  call void @llvm.dbg.value(metadata float %223, metadata !675, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata float %223, metadata !778, metadata !DIExpression()) #8, !dbg !916
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !781, metadata !DIExpression()) #8, !dbg !916
  %224 = fpext float %223 to double, !dbg !913
  %225 = load i8*, i8** %12, align 4, !dbg !913, !tbaa !707
  %226 = call i8* @halide_double_to_string(i8* %216, i8* %225, double %224, i32 0) #7, !dbg !913
  store i8* %226, i8** %10, align 4, !dbg !913, !tbaa !703
  call void @llvm.dbg.value(metadata i32 3, metadata !917, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !920, metadata !DIExpression()), !dbg !921
  %227 = icmp eq i8* %226, null, !dbg !923
  br i1 %227, label %234, label %228, !dbg !923

228:                                              ; preds = %215
  %229 = getelementptr inbounds i8, i8* %226, i32 -3, !dbg !924
  %230 = load i8*, i8** %9, align 4, !dbg !927, !tbaa !718
  %231 = icmp ult i8* %229, %230, !dbg !927
  %232 = select i1 %231, i8* %230, i8* %229, !dbg !927
  store i8* %232, i8** %10, align 4, !dbg !928
  store i8 0, i8* %232, align 1, !dbg !929, !tbaa !709
  %233 = load i8*, i8** %10, align 4, !dbg !930, !tbaa !703
  br label %234, !dbg !932

234:                                              ; preds = %215, %228
  %235 = phi i8* [ null, %215 ], [ %233, %228 ], !dbg !930
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02EEKDFEKL@ms?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !933
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !933
  %236 = load i8*, i8** %12, align 4, !dbg !930, !tbaa !707
  %237 = call i8* @halide_string_to_string(i8* %235, i8* %236, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02EEKDFEKL@ms?$AA@", i32 0, i32 0)) #7, !dbg !930
  call void @llvm.dbg.value(metadata i32 35, metadata !670, metadata !DIExpression()), !dbg !875
  store i8* %237, i8** %10, align 4, !dbg !875, !tbaa !703
  %238 = load i8*, i8** %9, align 4, !dbg !934, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !935
  %239 = ptrtoint i8* %237 to i32, !dbg !937
  %240 = ptrtoint i8* %238 to i32, !dbg !937
  %241 = sub i32 %239, %240, !dbg !937
  %242 = icmp ult i32 %241, 35, !dbg !934
  br i1 %242, label %243, label %252, !dbg !934

243:                                              ; preds = %234, %243
  %244 = phi i8* [ %246, %243 ], [ %237, %234 ], !dbg !938
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !941
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !941
  %245 = load i8*, i8** %12, align 4, !dbg !938, !tbaa !707
  %246 = call i8* @halide_string_to_string(i8* %244, i8* %245, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i32 0, i32 0)) #7, !dbg !938
  store i8* %246, i8** %10, align 4, !dbg !875, !tbaa !703
  %247 = load i8*, i8** %9, align 4, !dbg !934, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !935
  %248 = ptrtoint i8* %246 to i32, !dbg !937
  %249 = ptrtoint i8* %247 to i32, !dbg !937
  %250 = sub i32 %248, %249, !dbg !937
  %251 = icmp ult i32 %250, 35, !dbg !934
  br i1 %251, label %243, label %252, !dbg !934, !llvm.loop !942

252:                                              ; preds = %243, %234
  %253 = phi i8* [ %237, %234 ], [ %246, %243 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !676, metadata !DIExpression()), !dbg !875
  %254 = load i64, i64* %42, align 8, !dbg !944, !tbaa !155
  %255 = icmp eq i64 %254, 0, !dbg !944
  br i1 %255, label %261, label %256, !dbg !944

256:                                              ; preds = %252
  %257 = load i64, i64* %217, align 8, !dbg !945, !tbaa !185
  %258 = mul i64 %257, 100, !dbg !945
  %259 = udiv i64 %258, %254, !dbg !945
  %260 = trunc i64 %259 to i32, !dbg !945
  call void @llvm.dbg.value(metadata i32 %260, metadata !676, metadata !DIExpression()), !dbg !875
  br label %261, !dbg !948

261:                                              ; preds = %256, %252
  %262 = phi i32 [ %260, %256 ], [ 0, %252 ], !dbg !875
  call void @llvm.dbg.value(metadata i32 %262, metadata !676, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01ODHLEDKK@?$CI?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !949
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !949
  %263 = load i8*, i8** %12, align 4, !dbg !951, !tbaa !707
  %264 = call i8* @halide_string_to_string(i8* %253, i8* %263, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01ODHLEDKK@?$CI?$AA@", i32 0, i32 0)) #7, !dbg !951
  store i8* %264, i8** %10, align 4, !dbg !951, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %262, metadata !791, metadata !DIExpression()) #8, !dbg !952
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !794, metadata !DIExpression()) #8, !dbg !952
  %265 = sext i32 %262 to i64, !dbg !954
  %266 = load i8*, i8** %12, align 4, !dbg !954, !tbaa !707
  %267 = call i8* @halide_int64_to_string(i8* %264, i8* %266, i64 %265, i32 1) #7, !dbg !954
  store i8* %267, i8** %10, align 4, !dbg !954, !tbaa !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02HKHODNAN@?$CF?$CJ?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !955
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !955
  %268 = load i8*, i8** %12, align 4, !dbg !957, !tbaa !707
  %269 = call i8* @halide_string_to_string(i8* %267, i8* %268, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02HKHODNAN@?$CF?$CJ?$AA@", i32 0, i32 0)) #7, !dbg !957
  call void @llvm.dbg.value(metadata i32 43, metadata !670, metadata !DIExpression()), !dbg !875
  store i8* %269, i8** %10, align 4, !dbg !875, !tbaa !703
  %270 = load i8*, i8** %9, align 4, !dbg !958, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !959
  %271 = ptrtoint i8* %269 to i32, !dbg !961
  %272 = ptrtoint i8* %270 to i32, !dbg !961
  %273 = sub i32 %271, %272, !dbg !961
  %274 = icmp ult i32 %273, 43, !dbg !958
  br i1 %274, label %275, label %284, !dbg !958

275:                                              ; preds = %261, %275
  %276 = phi i8* [ %278, %275 ], [ %269, %261 ], !dbg !962
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !965
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !965
  %277 = load i8*, i8** %12, align 4, !dbg !962, !tbaa !707
  %278 = call i8* @halide_string_to_string(i8* %276, i8* %277, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i32 0, i32 0)) #7, !dbg !962
  store i8* %278, i8** %10, align 4, !dbg !875, !tbaa !703
  %279 = load i8*, i8** %9, align 4, !dbg !958, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !959
  %280 = ptrtoint i8* %278 to i32, !dbg !961
  %281 = ptrtoint i8* %279 to i32, !dbg !961
  %282 = sub i32 %280, %281, !dbg !961
  %283 = icmp ult i32 %282, 43, !dbg !958
  br i1 %283, label %275, label %284, !dbg !958, !llvm.loop !966

284:                                              ; preds = %275, %261
  %285 = phi i8* [ %269, %261 ], [ %278, %275 ]
  br i1 %59, label %324, label %286, !dbg !968

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 5, !dbg !969
  %288 = load i64, i64* %287, align 8, !dbg !969, !tbaa !201
  %289 = uitofp i64 %288 to double, !dbg !969
  %290 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 6, !dbg !969
  %291 = load i64, i64* %290, align 8, !dbg !969, !tbaa !203
  %292 = uitofp i64 %291 to double, !dbg !969
  %293 = fadd double %292, 1.000000e-10, !dbg !969
  %294 = fdiv double %289, %293, !dbg !969
  %295 = fptrunc double %294 to float, !dbg !969
  call void @llvm.dbg.value(metadata float %295, metadata !677, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09FJHPCCJM@threads?3?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !971
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !971
  %296 = load i8*, i8** %12, align 4, !dbg !973, !tbaa !707
  %297 = call i8* @halide_string_to_string(i8* %285, i8* %296, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09FJHPCCJM@threads?3?5?$AA@", i32 0, i32 0)) #7, !dbg !973
  store i8* %297, i8** %10, align 4, !dbg !973, !tbaa !703
  call void @llvm.dbg.value(metadata float %295, metadata !778, metadata !DIExpression()) #8, !dbg !974
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !781, metadata !DIExpression()) #8, !dbg !974
  %298 = fpext float %295 to double, !dbg !976
  %299 = load i8*, i8** %12, align 4, !dbg !976, !tbaa !707
  %300 = call i8* @halide_double_to_string(i8* %297, i8* %299, double %298, i32 0) #7, !dbg !976
  store i8* %300, i8** %10, align 4, !dbg !976, !tbaa !703
  call void @llvm.dbg.value(metadata i32 3, metadata !917, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !920, metadata !DIExpression()), !dbg !977
  %301 = icmp eq i8* %300, null, !dbg !979
  br i1 %301, label %308, label %302, !dbg !979

302:                                              ; preds = %286
  %303 = getelementptr inbounds i8, i8* %300, i32 -3, !dbg !980
  %304 = load i8*, i8** %9, align 4, !dbg !981, !tbaa !718
  %305 = icmp ult i8* %303, %304, !dbg !981
  %306 = select i1 %305, i8* %304, i8* %303, !dbg !981
  store i8* %306, i8** %10, align 4, !dbg !982
  store i8 0, i8* %306, align 1, !dbg !983, !tbaa !709
  %307 = load i8*, i8** %10, align 4, !dbg !984, !tbaa !703
  br label %308, !dbg !985

308:                                              ; preds = %286, %302
  %309 = phi i8* [ null, %286 ], [ %307, %302 ], !dbg !984
  call void @llvm.dbg.value(metadata i32 58, metadata !670, metadata !DIExpression()), !dbg !875
  %310 = load i8*, i8** %9, align 4, !dbg !984, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !986
  %311 = ptrtoint i8* %309 to i32, !dbg !988
  %312 = ptrtoint i8* %310 to i32, !dbg !988
  %313 = sub i32 %311, %312, !dbg !988
  %314 = icmp ult i32 %313, 58, !dbg !984
  br i1 %314, label %315, label %324, !dbg !984

315:                                              ; preds = %308, %315
  %316 = phi i8* [ %318, %315 ], [ %309, %308 ], !dbg !989
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !992
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !992
  %317 = load i8*, i8** %12, align 4, !dbg !989, !tbaa !707
  %318 = call i8* @halide_string_to_string(i8* %316, i8* %317, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i32 0, i32 0)) #7, !dbg !989
  store i8* %318, i8** %10, align 4, !dbg !989, !tbaa !703
  %319 = load i8*, i8** %9, align 4, !dbg !984, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !986
  %320 = ptrtoint i8* %318 to i32, !dbg !988
  %321 = ptrtoint i8* %319 to i32, !dbg !988
  %322 = sub i32 %320, %321, !dbg !988
  %323 = icmp ult i32 %322, 58, !dbg !984
  br i1 %323, label %315, label %324, !dbg !984, !llvm.loop !993

324:                                              ; preds = %315, %308, %284
  %325 = phi i8* [ %285, %284 ], [ %309, %308 ], [ %318, %315 ]
  %326 = phi i32 [ 58, %284 ], [ 73, %308 ], [ 73, %315 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !670, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i32 0, metadata !680, metadata !DIExpression()), !dbg !875
  %327 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 8, !dbg !995
  %328 = load i32, i32* %327, align 4, !dbg !995, !tbaa !197
  %329 = icmp eq i32 %328, 0, !dbg !995
  br i1 %329, label %336, label %330, !dbg !995

330:                                              ; preds = %324
  %331 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 3, !dbg !996
  %332 = load i64, i64* %331, align 8, !dbg !996, !tbaa !195
  %333 = sext i32 %328 to i64, !dbg !996
  %334 = udiv i64 %332, %333, !dbg !996
  %335 = trunc i64 %334 to i32, !dbg !996
  call void @llvm.dbg.value(metadata i32 %335, metadata !680, metadata !DIExpression()), !dbg !875
  br label %336, !dbg !999

336:                                              ; preds = %330, %324
  %337 = phi i32 [ %335, %330 ], [ 0, %324 ], !dbg !875
  call void @llvm.dbg.value(metadata i32 %337, metadata !680, metadata !DIExpression()), !dbg !875
  %338 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 2, !dbg !1000
  %339 = load i64, i64* %338, align 8, !dbg !1000, !tbaa !193
  %340 = icmp eq i64 %339, 0, !dbg !1000
  br i1 %340, label %397, label %341, !dbg !1000

341:                                              ; preds = %336
  call void @llvm.dbg.value(metadata i32 %326, metadata !670, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07CDPHGGBJ@?5peak?3?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !1001
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !1001
  %342 = load i8*, i8** %12, align 4, !dbg !1005, !tbaa !707
  %343 = call i8* @halide_string_to_string(i8* %325, i8* %342, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07CDPHGGBJ@?5peak?3?5?$AA@", i32 0, i32 0)) #7, !dbg !1005
  store i8* %343, i8** %10, align 4, !dbg !1005, !tbaa !703
  %344 = load i64, i64* %338, align 8, !dbg !1006, !tbaa !193
  call void @llvm.dbg.value(metadata i64 %344, metadata !837, metadata !DIExpression()) #8, !dbg !1007
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !840, metadata !DIExpression()) #8, !dbg !1007
  %345 = load i8*, i8** %12, align 4, !dbg !1009, !tbaa !707
  %346 = call i8* @halide_uint64_to_string(i8* %343, i8* %345, i64 %344, i32 1) #7, !dbg !1009
  store i8* %346, i8** %10, align 4, !dbg !1010, !tbaa !703
  %347 = load i8*, i8** %9, align 4, !dbg !1011, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !1012
  %348 = ptrtoint i8* %346 to i32, !dbg !1014
  %349 = ptrtoint i8* %347 to i32, !dbg !1014
  %350 = sub i32 %348, %349, !dbg !1014
  %351 = sext i32 %350 to i64, !dbg !1014
  %352 = zext i32 %326 to i64, !dbg !1011
  %353 = icmp ult i64 %351, %352, !dbg !1011
  br i1 %353, label %354, label %364, !dbg !1011

354:                                              ; preds = %341, %354
  %355 = phi i8* [ %357, %354 ], [ %346, %341 ], !dbg !1015
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !1018
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !1018
  %356 = load i8*, i8** %12, align 4, !dbg !1015, !tbaa !707
  %357 = call i8* @halide_string_to_string(i8* %355, i8* %356, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i32 0, i32 0)) #7, !dbg !1015
  store i8* %357, i8** %10, align 4, !dbg !1010, !tbaa !703
  %358 = load i8*, i8** %9, align 4, !dbg !1011, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !1012
  %359 = ptrtoint i8* %357 to i32, !dbg !1014
  %360 = ptrtoint i8* %358 to i32, !dbg !1014
  %361 = sub i32 %359, %360, !dbg !1014
  %362 = sext i32 %361 to i64, !dbg !1014
  %363 = icmp ult i64 %362, %352, !dbg !1011
  br i1 %363, label %354, label %364, !dbg !1011, !llvm.loop !1019

364:                                              ; preds = %354, %341
  %365 = phi i8* [ %346, %341 ], [ %357, %354 ], !dbg !1021
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06NLNGHDLC@?5num?3?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !1023
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !1023
  %366 = load i8*, i8** %12, align 4, !dbg !1021, !tbaa !707
  %367 = call i8* @halide_string_to_string(i8* %365, i8* %366, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06NLNGHDLC@?5num?3?5?$AA@", i32 0, i32 0)) #7, !dbg !1021
  store i8* %367, i8** %10, align 4, !dbg !1021, !tbaa !703
  %368 = load i32, i32* %327, align 4, !dbg !1024, !tbaa !197
  call void @llvm.dbg.value(metadata i32 %368, metadata !791, metadata !DIExpression()) #8, !dbg !1025
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !794, metadata !DIExpression()) #8, !dbg !1025
  %369 = sext i32 %368 to i64, !dbg !1027
  %370 = load i8*, i8** %12, align 4, !dbg !1027, !tbaa !707
  %371 = call i8* @halide_int64_to_string(i8* %367, i8* %370, i64 %369, i32 1) #7, !dbg !1027
  store i8* %371, i8** %10, align 4, !dbg !1027, !tbaa !703
  %372 = add nuw nsw i32 %326, 15, !dbg !1028
  call void @llvm.dbg.value(metadata i32 %372, metadata !670, metadata !DIExpression()), !dbg !875
  %373 = load i8*, i8** %9, align 4, !dbg !1029, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !1030
  %374 = ptrtoint i8* %371 to i32, !dbg !1032
  %375 = ptrtoint i8* %373 to i32, !dbg !1032
  %376 = sub i32 %374, %375, !dbg !1032
  %377 = sext i32 %376 to i64, !dbg !1032
  %378 = zext i32 %372 to i64, !dbg !1029
  %379 = icmp ult i64 %377, %378, !dbg !1029
  br i1 %379, label %380, label %390, !dbg !1029

380:                                              ; preds = %364, %380
  %381 = phi i8* [ %383, %380 ], [ %371, %364 ], !dbg !1033
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !1036
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !1036
  %382 = load i8*, i8** %12, align 4, !dbg !1033, !tbaa !707
  %383 = call i8* @halide_string_to_string(i8* %381, i8* %382, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01CLKCMJKC@?5?$AA@", i32 0, i32 0)) #7, !dbg !1033
  store i8* %383, i8** %10, align 4, !dbg !1033, !tbaa !703
  %384 = load i8*, i8** %9, align 4, !dbg !1029, !tbaa !718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !900, metadata !DIExpression()), !dbg !1030
  %385 = ptrtoint i8* %383 to i32, !dbg !1032
  %386 = ptrtoint i8* %384 to i32, !dbg !1032
  %387 = sub i32 %385, %386, !dbg !1032
  %388 = sext i32 %387 to i64, !dbg !1032
  %389 = icmp ult i64 %388, %378, !dbg !1029
  br i1 %389, label %380, label %390, !dbg !1029, !llvm.loop !1037

390:                                              ; preds = %380, %364
  %391 = phi i8* [ %371, %364 ], [ %383, %380 ], !dbg !1039
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06CJNFLND@?5avg?3?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !1041
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !1041
  %392 = load i8*, i8** %12, align 4, !dbg !1039, !tbaa !707
  %393 = call i8* @halide_string_to_string(i8* %391, i8* %392, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @"??_C@_06CJNFLND@?5avg?3?5?$AA@", i32 0, i32 0)) #7, !dbg !1039
  store i8* %393, i8** %10, align 4, !dbg !1039, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %337, metadata !791, metadata !DIExpression()) #8, !dbg !1042
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !794, metadata !DIExpression()) #8, !dbg !1042
  %394 = sext i32 %337 to i64, !dbg !1044
  %395 = load i8*, i8** %12, align 4, !dbg !1044, !tbaa !707
  %396 = call i8* @halide_int64_to_string(i8* %393, i8* %395, i64 %394, i32 1) #7, !dbg !1044
  store i8* %396, i8** %10, align 4, !dbg !1044, !tbaa !703
  br label %397, !dbg !1045

397:                                              ; preds = %390, %336
  %398 = phi i8* [ %396, %390 ], [ %325, %336 ]
  %399 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 4, !dbg !1046
  %400 = load i64, i64* %399, align 8, !dbg !1046, !tbaa !199
  %401 = icmp eq i64 %400, 0, !dbg !1046
  br i1 %401, label %408, label %402, !dbg !1046

402:                                              ; preds = %397
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08OMJKOODN@?5stack?3?5?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !1047
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !1047
  %403 = load i8*, i8** %12, align 4, !dbg !1051, !tbaa !707
  %404 = call i8* @halide_string_to_string(i8* %398, i8* %403, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08OMJKOODN@?5stack?3?5?$AA@", i32 0, i32 0)) #7, !dbg !1051
  store i8* %404, i8** %10, align 4, !dbg !1051, !tbaa !703
  %405 = load i64, i64* %399, align 8, !dbg !1052, !tbaa !199
  call void @llvm.dbg.value(metadata i64 %405, metadata !837, metadata !DIExpression()) #8, !dbg !1053
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !840, metadata !DIExpression()) #8, !dbg !1053
  %406 = load i8*, i8** %12, align 4, !dbg !1055, !tbaa !707
  %407 = call i8* @halide_uint64_to_string(i8* %404, i8* %406, i64 %405, i32 1) #7, !dbg !1055
  store i8* %407, i8** %10, align 4, !dbg !1055, !tbaa !703
  br label %408, !dbg !1056

408:                                              ; preds = %402, %397
  %409 = phi i8* [ %407, %402 ], [ %398, %397 ], !dbg !1057
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0), metadata !757, metadata !DIExpression()) #8, !dbg !1059
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !760, metadata !DIExpression()) #8, !dbg !1059
  %410 = load i8*, i8** %12, align 4, !dbg !1057, !tbaa !707
  %411 = call i8* @halide_string_to_string(i8* %409, i8* %410, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @"??_C@_01EEMJAFIK@?6?$AA@", i32 0, i32 0)) #7, !dbg !1057
  store i8* %411, i8** %10, align 4, !dbg !1057, !tbaa !703
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !847, metadata !DIExpression()) #8, !dbg !1060
  %412 = load i8*, i8** %9, align 4, !dbg !1062, !tbaa !718
  %413 = icmp eq i8* %412, null, !dbg !1062
  br i1 %413, label %423, label %414, !dbg !1062

414:                                              ; preds = %408
  %415 = load i8*, i8** %7, align 4, !dbg !1063, !tbaa !693
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !726, metadata !DIExpression()) #8, !dbg !1064
  %416 = ptrtoint i8* %411 to i32, !dbg !1066
  %417 = ptrtoint i8* %412 to i32, !dbg !1066
  %418 = add i32 %416, 1, !dbg !1066
  %419 = sub i32 %418, %417, !dbg !1066
  %420 = sext i32 %419 to i64, !dbg !1066
  %421 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %415, i8* nonnull %412, i64 %420) #7, !dbg !1066
  %422 = load i8*, i8** %9, align 4, !dbg !1067, !tbaa !718
  br label %423, !dbg !1067

423:                                              ; preds = %408, %414
  %424 = phi i8* [ %422, %414 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @"??_C@_0CD@IKIJNBLF@Printer?5buffer?5allocation?5failed@", i32 0, i32 0), %408 ], !dbg !1068
  call void @halide_print(i8* %0, i8* %424) #7, !dbg !1069
  br label %425, !dbg !1070

425:                                              ; preds = %181, %423
  %426 = add nuw nsw i32 %173, 1, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %426, metadata !666, metadata !DIExpression()), !dbg !873
  %427 = load i32, i32* %167, align 4, !dbg !874, !tbaa !135
  %428 = icmp slt i32 %426, %427, !dbg !874
  br i1 %428, label %172, label %429, !dbg !874, !llvm.loop !1072

429:                                              ; preds = %158, %425, %151, %166, %40
  %430 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 8, !dbg !1074
  %431 = bitcast i8** %430 to %struct.halide_profiler_pipeline_stats**, !dbg !1074
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !650, metadata !DIExpression()), !dbg !711
  %432 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %431, align 4, !dbg !711, !tbaa !124
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %432, metadata !650, metadata !DIExpression()), !dbg !711
  %433 = icmp eq %struct.halide_profiler_pipeline_stats* %432, null, !dbg !710
  br i1 %433, label %16, label %40, !dbg !710, !llvm.loop !1075
}

; Function Attrs: nounwind
define weak dso_local void @halide_profiler_report(i8* %0) local_unnamed_addr #5 !dbg !1077 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1079, metadata !DIExpression()), !dbg !1082
  %2 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !1083
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %2, metadata !1080, metadata !DIExpression()), !dbg !1082
  %3 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i32 0, i32 0, !dbg !1084
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !327, metadata !DIExpression()) #8, !dbg !1085
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !330, metadata !DIExpression()) #8, !dbg !1085
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !1081, metadata !DIExpression()), !dbg !1082
  tail call void @halide_mutex_lock(%struct.halide_mutex* %3) #7, !dbg !1087
  tail call void @halide_profiler_report_unlocked(i8* %0, %struct.halide_profiler_state* %2) #6, !dbg !1088
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !344, metadata !DIExpression()) #8, !dbg !1089
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %3) #7, !dbg !1091
  ret void, !dbg !1092
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* %0) local_unnamed_addr #1 !dbg !1093 {
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %0, metadata !1097, metadata !DIExpression()), !dbg !1100
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i32 0, i32 5, !dbg !1101
  %3 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %2, align 4, !dbg !1101, !tbaa !143
  %4 = icmp eq %struct.halide_profiler_pipeline_stats* %3, null, !dbg !1101
  br i1 %4, label %16, label %5, !dbg !1101

5:                                                ; preds = %1, %5
  %6 = phi %struct.halide_profiler_pipeline_stats* [ %14, %5 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %6, metadata !1098, metadata !DIExpression()), !dbg !1102
  %7 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %6, i32 0, i32 8, !dbg !1103
  %8 = bitcast i8** %7 to %struct.halide_profiler_pipeline_stats**, !dbg !1103
  %9 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %8, align 8, !dbg !1103, !tbaa !146
  store %struct.halide_profiler_pipeline_stats* %9, %struct.halide_profiler_pipeline_stats** %2, align 4, !dbg !1103, !tbaa !143
  %10 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %6, i32 0, i32 7, !dbg !1104
  %11 = bitcast %struct.halide_profiler_func_stats** %10 to i8**, !dbg !1104
  %12 = load i8*, i8** %11, align 4, !dbg !1104, !tbaa !171
  tail call void @free(i8* %12) #7, !dbg !1104
  %13 = bitcast %struct.halide_profiler_pipeline_stats* %6 to i8*, !dbg !1105
  tail call void @free(i8* nonnull %13) #7, !dbg !1105
  %14 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %2, align 4, !dbg !1101, !tbaa !143
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null, !dbg !1101
  br i1 %15, label %16, label %5, !dbg !1101, !llvm.loop !1106

16:                                               ; preds = %5, %1
  %17 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i32 0, i32 2, !dbg !1108
  store i32 0, i32* %17, align 4, !dbg !1108, !tbaa !149
  ret void, !dbg !1109
}

; Function Attrs: nounwind
define weak dso_local void @halide_profiler_reset() local_unnamed_addr #5 !dbg !1110 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !1116
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %1, metadata !1114, metadata !DIExpression()), !dbg !1117
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i32 0, i32 0, !dbg !1118
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %2, metadata !327, metadata !DIExpression()) #8, !dbg !1119
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !330, metadata !DIExpression()) #8, !dbg !1119
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %2, metadata !1115, metadata !DIExpression()), !dbg !1117
  tail call void @halide_mutex_lock(%struct.halide_mutex* %2) #7, !dbg !1121
  tail call void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* %1) #6, !dbg !1122
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !344, metadata !DIExpression()) #8, !dbg !1123
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %2) #7, !dbg !1125
  ret void, !dbg !1126
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_shutdown() local_unnamed_addr #1 !dbg !1127 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !1130
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %1, metadata !1129, metadata !DIExpression()), !dbg !1131
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i32 0, i32 7, !dbg !1132
  %3 = load %struct.halide_thread*, %struct.halide_thread** %2, align 4, !dbg !1132, !tbaa !370
  %4 = icmp eq %struct.halide_thread* %3, null, !dbg !1132
  br i1 %4, label %7, label %5, !dbg !1132

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i32 0, i32 3, !dbg !1133
  store i32 -2, i32* %6, align 4, !dbg !1133, !tbaa !266
  tail call void @halide_join_thread(%struct.halide_thread* nonnull %3) #7, !dbg !1134
  store %struct.halide_thread* null, %struct.halide_thread** %2, align 4, !dbg !1135, !tbaa !370
  store i32 -1, i32* %6, align 4, !dbg !1136, !tbaa !266
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
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i32 0, i32 7, !dbg !1145
  %3 = load %struct.halide_thread*, %struct.halide_thread** %2, align 4, !dbg !1145, !tbaa !370
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
  %3 = getelementptr inbounds i8, i8* %1, i32 12, !dbg !1155
  %4 = bitcast i8* %3 to i32*, !dbg !1155
  store i32 -1, i32* %4, align 4, !dbg !1155, !tbaa !266
  ret void, !dbg !1156
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #4

declare dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #4

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #4

declare extern_weak i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #4

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #4

declare extern_weak i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!70}
!llvm.module.flags = !{!99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "s", scope: !2, file: !3, line: 12, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "halide_profiler_get_state", scope: !3, file: !3, line: 11, type: !4, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !98)
!3 = !DIFile(filename: "src/runtime/profiler.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "900600451b4b8bae854b3e4a030fb5c9")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_profiler_state", file: !8, line: 1766, size: 256, flags: DIFlagTypePassByValue, elements: !9, identifier: ".?AUhalide_profiler_state@@")
!8 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "b7ab0d29491f0813a909553a9435c0e2")
!9 = !{!10, !21, !23, !24, !25, !26, !62, !67}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !7, file: !8, line: 1770, baseType: !11, size: 32)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !8, line: 120, size: 32, flags: DIFlagTypePassByValue, elements: !12, identifier: ".?AUhalide_mutex@@")
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !11, file: !8, line: 121, baseType: !14, size: 32)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32, elements: !19)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !16, line: 68, baseType: !17)
!16 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "0c7b3d8a4f3a5581b3edea53998e0f01")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !16, line: 12, baseType: !18)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20}
!20 = !DISubrange(count: 1)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_time", scope: !7, file: !8, line: 1774, baseType: !22, size: 32, offset: 32)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "first_free_id", scope: !7, file: !8, line: 1777, baseType: !22, size: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "current_func", scope: !7, file: !8, line: 1781, baseType: !22, size: 32, offset: 96)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "active_threads", scope: !7, file: !8, line: 1784, baseType: !22, size: 32, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "pipelines", scope: !7, file: !8, line: 1787, baseType: !27, size: 32, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 32)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_profiler_pipeline_stats", file: !8, line: 1721, size: 640, flags: DIFlagTypePassByValue, elements: !29, identifier: ".?AUhalide_profiler_pipeline_stats@@")
!29 = !{!30, !33, !34, !35, !36, !37, !38, !42, !55, !57, !58, !59, !60, !61}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !28, file: !8, line: 1723, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !16, line: 10, baseType: !32)
!32 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "memory_current", scope: !28, file: !8, line: 1726, baseType: !31, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "memory_peak", scope: !28, file: !8, line: 1729, baseType: !31, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "memory_total", scope: !28, file: !8, line: 1732, baseType: !31, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "active_threads_numerator", scope: !28, file: !8, line: 1736, baseType: !31, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "active_threads_denominator", scope: !28, file: !8, line: 1736, baseType: !31, size: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !28, file: !8, line: 1739, baseType: !39, size: 32, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !28, file: !8, line: 1742, baseType: !43, size: 32, offset: 416)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 32)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_profiler_func_stats", file: !8, line: 1693, size: 512, flags: DIFlagTypePassByValue, elements: !45, identifier: ".?AUhalide_profiler_func_stats@@")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !44, file: !8, line: 1695, baseType: !31, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "memory_current", scope: !44, file: !8, line: 1698, baseType: !31, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "memory_peak", scope: !44, file: !8, line: 1701, baseType: !31, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "memory_total", scope: !44, file: !8, line: 1704, baseType: !31, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "stack_peak", scope: !44, file: !8, line: 1707, baseType: !31, size: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "active_threads_numerator", scope: !44, file: !8, line: 1710, baseType: !31, size: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "active_threads_denominator", scope: !44, file: !8, line: 1710, baseType: !31, size: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !44, file: !8, line: 1713, baseType: !39, size: 32, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "num_allocs", scope: !44, file: !8, line: 1716, baseType: !22, size: 32, offset: 480)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !28, file: !8, line: 1746, baseType: !56, size: 32, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "num_funcs", scope: !28, file: !8, line: 1749, baseType: !22, size: 32, offset: 480)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "first_func_id", scope: !28, file: !8, line: 1752, baseType: !22, size: 32, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "runs", scope: !28, file: !8, line: 1755, baseType: !22, size: 32, offset: 544)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "samples", scope: !28, file: !8, line: 1758, baseType: !22, size: 32, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "num_allocs", scope: !28, file: !8, line: 1761, baseType: !22, size: 32, offset: 608)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "get_remote_profiler_state", scope: !7, file: !8, line: 1792, baseType: !63, size: 32, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 32)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_thread", scope: !7, file: !8, line: 1795, baseType: !68, size: 32, offset: 224)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_thread", file: !8, line: 312, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AUhalide_thread@@")
!70 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !71, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !86, globals: !88, imports: !93, nameTableKind: None)
!71 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_profiler.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "3382dfd7821992c2e028aabed8bd4d40")
!72 = !{!73, !77}
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 1799, baseType: !22, size: 32, elements: !74, identifier: ".?AW4<unnamed-enum-halide_profiler_outside_of_halide>@@")
!74 = !{!75, !76}
!75 = !DIEnumerator(name: "halide_profiler_outside_of_halide", value: -1)
!76 = !DIEnumerator(name: "halide_profiler_please_stop", value: -2)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !8, line: 403, baseType: !78, size: 8, elements: !80, identifier: ".?AW4halide_type_code_t@@")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !16, line: 16, baseType: !79)
!79 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!80 = !{!81, !82, !83, !84, !85}
!81 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!84 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!85 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!86 = !{!27, !43, !39, !6, !87, !31}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!88 = !{!0, !89, !91}
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_stack_value))
!90 = distinct !DIGlobalVariable(name: "halide_profiler_please_stop", scope: !70, file: !8, line: 1805, type: !73, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_stack_value))
!92 = distinct !DIGlobalVariable(name: "halide_profiler_outside_of_halide", scope: !70, file: !8, line: 1801, type: !73, isLocal: true, isDefinition: true)
!93 = !{!94}
!94 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !70, entity: !95, file: !16, line: 225)
!95 = !DINamespace(name: "Internal", scope: !96)
!96 = !DINamespace(name: "Runtime", scope: !97)
!97 = !DINamespace(name: "Halide", scope: null)
!98 = !{}
!99 = !{i32 1, !"NumRegisterParameters", i32 0}
!100 = !{i32 2, !"CodeView", i32 1}
!101 = !{i32 2, !"Debug Info Version", i32 3}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!104 = !DILocation(line: 13, scope: !2)
!105 = distinct !DISubprogram(name: "find_or_create_pipeline", linkageName: "?find_or_create_pipeline@Internal@Runtime@Halide@@YAPAUhalide_profiler_pipeline_stats@@PBDHPB_K@Z", scope: !95, file: !3, line: 21, type: !106, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !110)
!106 = !DISubroutineType(types: !107)
!107 = !{!27, !39, !22, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!110 = !{!111, !112, !113, !114, !115, !117, !118}
!111 = !DILocalVariable(name: "func_names", arg: 3, scope: !105, file: !3, line: 21, type: !108)
!112 = !DILocalVariable(name: "num_funcs", arg: 2, scope: !105, file: !3, line: 21, type: !22)
!113 = !DILocalVariable(name: "pipeline_name", arg: 1, scope: !105, file: !3, line: 21, type: !39)
!114 = !DILocalVariable(name: "s", scope: !105, file: !3, line: 22, type: !6)
!115 = !DILocalVariable(name: "p", scope: !116, file: !3, line: 24, type: !27)
!116 = distinct !DILexicalBlock(scope: !105, file: !3, line: 24)
!117 = !DILocalVariable(name: "p", scope: !105, file: !3, line: 34, type: !27)
!118 = !DILocalVariable(name: "i", scope: !119, file: !3, line: 57, type: !22)
!119 = distinct !DILexicalBlock(scope: !105, file: !3, line: 57)
!120 = !DILocation(line: 0, scope: !105)
!121 = !DILocation(line: 22, scope: !105)
!122 = !DILocation(line: 24, scope: !116)
!123 = !DILocation(line: 0, scope: !116)
!124 = !{!125, !125, i64 0}
!125 = !{!"any pointer", !126, i64 0}
!126 = !{!"omnipotent char", !127, i64 0}
!127 = !{!"Simple C++ TBAA"}
!128 = !DILocation(line: 28, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !3, line: 25)
!130 = distinct !DILexicalBlock(scope: !116, file: !3, line: 24)
!131 = !{!132, !125, i64 48}
!132 = !{!"?AUhalide_profiler_pipeline_stats@@", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !125, i64 48, !125, i64 52, !125, i64 56, !134, i64 60, !134, i64 64, !134, i64 68, !134, i64 72, !134, i64 76}
!133 = !{!"long long", !126, i64 0}
!134 = !{!"int", !126, i64 0}
!135 = !{!132, !134, i64 60}
!136 = !DILocation(line: 25, scope: !130)
!137 = distinct !{!137, !122, !138, !139}
!138 = !DILocation(line: 32, scope: !116)
!139 = !{!"llvm.loop.mustprogress"}
!140 = !DILocation(line: 34, scope: !105)
!141 = !DILocation(line: 36, scope: !105)
!142 = !DILocation(line: 39, scope: !105)
!143 = !{!144, !125, i64 20}
!144 = !{!"?AUhalide_profiler_state@@", !145, i64 0, !134, i64 4, !134, i64 8, !134, i64 12, !134, i64 16, !125, i64 20, !125, i64 24, !125, i64 28}
!145 = !{!"?AUhalide_mutex@@", !126, i64 0}
!146 = !{!132, !125, i64 56}
!147 = !DILocation(line: 40, scope: !105)
!148 = !DILocation(line: 41, scope: !105)
!149 = !{!144, !134, i64 8}
!150 = !{!132, !134, i64 64}
!151 = !DILocation(line: 42, scope: !105)
!152 = !DILocation(line: 43, scope: !105)
!153 = !{!132, !134, i64 68}
!154 = !DILocation(line: 44, scope: !105)
!155 = !{!132, !133, i64 0}
!156 = !DILocation(line: 45, scope: !105)
!157 = !{!132, !134, i64 72}
!158 = !DILocation(line: 46, scope: !105)
!159 = !{!132, !133, i64 8}
!160 = !DILocation(line: 47, scope: !105)
!161 = !{!132, !133, i64 16}
!162 = !DILocation(line: 48, scope: !105)
!163 = !{!132, !133, i64 24}
!164 = !DILocation(line: 49, scope: !105)
!165 = !{!132, !134, i64 76}
!166 = !DILocation(line: 50, scope: !105)
!167 = !{!132, !133, i64 32}
!168 = !DILocation(line: 51, scope: !105)
!169 = !{!132, !133, i64 40}
!170 = !DILocation(line: 52, scope: !105)
!171 = !{!132, !125, i64 52}
!172 = !DILocation(line: 53, scope: !105)
!173 = !DILocation(line: 0, scope: !119)
!174 = !DILocation(line: 57, scope: !119)
!175 = !DILocation(line: 54, scope: !176)
!176 = distinct !DILexicalBlock(scope: !177, file: !3, line: 53)
!177 = distinct !DILexicalBlock(scope: !105, file: !3, line: 53)
!178 = !DILocation(line: 55, scope: !176)
!179 = !DILocation(line: 68, scope: !105)
!180 = !DILocation(line: 69, scope: !105)
!181 = !DILocation(line: 70, scope: !105)
!182 = !DILocation(line: 58, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 57)
!184 = distinct !DILexicalBlock(scope: !119, file: !3, line: 57)
!185 = !{!186, !133, i64 0}
!186 = !{!"?AUhalide_profiler_func_stats@@", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !125, i64 56, !134, i64 60}
!187 = !DILocation(line: 59, scope: !183)
!188 = !{!133, !133, i64 0}
!189 = !{!186, !125, i64 56}
!190 = !DILocation(line: 60, scope: !183)
!191 = !{!186, !133, i64 8}
!192 = !DILocation(line: 61, scope: !183)
!193 = !{!186, !133, i64 16}
!194 = !DILocation(line: 62, scope: !183)
!195 = !{!186, !133, i64 24}
!196 = !DILocation(line: 63, scope: !183)
!197 = !{!186, !134, i64 60}
!198 = !DILocation(line: 64, scope: !183)
!199 = !{!186, !133, i64 32}
!200 = !DILocation(line: 65, scope: !183)
!201 = !{!186, !133, i64 40}
!202 = !DILocation(line: 66, scope: !183)
!203 = !{!186, !133, i64 48}
!204 = !DILocation(line: 57, scope: !184)
!205 = distinct !{!205, !174, !206, !139}
!206 = !DILocation(line: 67, scope: !119)
!207 = !DILocation(line: 71, scope: !105)
!208 = distinct !DISubprogram(name: "bill_func", linkageName: "?bill_func@Internal@Runtime@Halide@@YAXPAUhalide_profiler_state@@H_KH@Z", scope: !95, file: !3, line: 73, type: !209, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !211)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !6, !22, !31, !22}
!211 = !{!212, !213, !214, !215, !216, !217, !219}
!212 = !DILocalVariable(name: "active_threads", arg: 4, scope: !208, file: !3, line: 73, type: !22)
!213 = !DILocalVariable(name: "time", arg: 3, scope: !208, file: !3, line: 73, type: !31)
!214 = !DILocalVariable(name: "func_id", arg: 2, scope: !208, file: !3, line: 73, type: !22)
!215 = !DILocalVariable(name: "s", arg: 1, scope: !208, file: !3, line: 73, type: !6)
!216 = !DILocalVariable(name: "p_prev", scope: !208, file: !3, line: 74, type: !27)
!217 = !DILocalVariable(name: "p", scope: !218, file: !3, line: 75, type: !27)
!218 = distinct !DILexicalBlock(scope: !208, file: !3, line: 75)
!219 = !DILocalVariable(name: "f", scope: !220, file: !3, line: 84, type: !43)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 77)
!221 = distinct !DILexicalBlock(scope: !222, file: !3, line: 77)
!222 = distinct !DILexicalBlock(scope: !223, file: !3, line: 76)
!223 = distinct !DILexicalBlock(scope: !218, file: !3, line: 75)
!224 = !DILocation(line: 0, scope: !208)
!225 = !DILocation(line: 75, scope: !218)
!226 = !DILocation(line: 0, scope: !218)
!227 = !DILocation(line: 77, scope: !222)
!228 = !DILocation(line: 78, scope: !220)
!229 = !DILocation(line: 80, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !3, line: 78)
!231 = distinct !DILexicalBlock(scope: !220, file: !3, line: 78)
!232 = !DILocation(line: 81, scope: !230)
!233 = !DILocation(line: 82, scope: !230)
!234 = !DILocation(line: 83, scope: !230)
!235 = !DILocation(line: 84, scope: !220)
!236 = !DILocation(line: 0, scope: !220)
!237 = !DILocation(line: 85, scope: !220)
!238 = !DILocation(line: 86, scope: !220)
!239 = !DILocation(line: 87, scope: !220)
!240 = !DILocation(line: 88, scope: !220)
!241 = !DILocation(line: 89, scope: !220)
!242 = !DILocation(line: 90, scope: !220)
!243 = !DILocation(line: 91, scope: !220)
!244 = !DILocation(line: 76, scope: !223)
!245 = distinct !{!245, !225, !246, !139}
!246 = !DILocation(line: 95, scope: !218)
!247 = !DILocation(line: 97, scope: !208)
!248 = distinct !DISubprogram(name: "sampling_profiler_thread", linkageName: "?sampling_profiler_thread@Internal@Runtime@Halide@@YAXPAX@Z", scope: !95, file: !3, line: 99, type: !249, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !251)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !56}
!251 = !{!252, !253, !254, !256, !257, !259, !260, !261}
!252 = !DILocalVariable(arg: 1, scope: !248, file: !3, line: 99, type: !56)
!253 = !DILocalVariable(name: "s", scope: !248, file: !3, line: 100, type: !6)
!254 = !DILocalVariable(name: "t1", scope: !255, file: !3, line: 107, type: !31)
!255 = distinct !DILexicalBlock(scope: !248, file: !3, line: 105)
!256 = !DILocalVariable(name: "t", scope: !255, file: !3, line: 108, type: !31)
!257 = !DILocalVariable(name: "func", scope: !258, file: !3, line: 110, type: !22)
!258 = distinct !DILexicalBlock(scope: !255, file: !3, line: 109)
!259 = !DILocalVariable(name: "active_threads", scope: !258, file: !3, line: 110, type: !22)
!260 = !DILocalVariable(name: "t_now", scope: !258, file: !3, line: 119, type: !31)
!261 = !DILocalVariable(name: "sleep_ms", scope: !258, file: !3, line: 130, type: !22)
!262 = !DILocation(line: 0, scope: !248)
!263 = !DILocation(line: 100, scope: !248)
!264 = !DILocation(line: 103, scope: !248)
!265 = !DILocation(line: 105, scope: !248)
!266 = !{!144, !134, i64 12}
!267 = !DILocation(line: 0, scope: !255)
!268 = !DILocation(line: 134, scope: !258)
!269 = distinct !{!269, !265, !270, !139}
!270 = !DILocation(line: 135, scope: !248)
!271 = !DILocation(line: 107, scope: !255)
!272 = !DILocation(line: 109, scope: !255)
!273 = !DILocation(line: 108, scope: !255)
!274 = !DILocation(line: 110, scope: !258)
!275 = !DILocation(line: 111, scope: !258)
!276 = !{!144, !125, i64 24}
!277 = !DILocation(line: 0, scope: !258)
!278 = !DILocation(line: 114, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 111)
!280 = distinct !DILexicalBlock(scope: !258, file: !3, line: 111)
!281 = !DILocation(line: 115, scope: !279)
!282 = !DILocation(line: 116, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !3, line: 115)
!284 = !{!134, !134, i64 0}
!285 = !DILocation(line: 117, scope: !283)
!286 = !{!144, !134, i64 16}
!287 = !DILocation(line: 118, scope: !283)
!288 = !DILocation(line: 119, scope: !258)
!289 = !DILocation(line: 120, scope: !258)
!290 = !DILocation(line: 122, scope: !291)
!291 = distinct !DILexicalBlock(scope: !258, file: !3, line: 120)
!292 = !DILocation(line: 125, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !3, line: 122)
!294 = distinct !DILexicalBlock(scope: !291, file: !3, line: 122)
!295 = !DILocation(line: 126, scope: !293)
!296 = !DILocation(line: 130, scope: !258)
!297 = !{!144, !134, i64 4}
!298 = !DILocation(line: 131, scope: !258)
!299 = !DILocation(line: 132, scope: !258)
!300 = !DILocation(line: 133, scope: !258)
!301 = !DILocation(line: 137, scope: !248)
!302 = !DILocation(line: 138, scope: !248)
!303 = distinct !DISubprogram(name: "halide_profiler_get_pipeline_state", scope: !3, file: !3, line: 162, type: !304, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !306)
!304 = !DISubroutineType(types: !305)
!305 = !{!27, !39}
!306 = !{!307, !308, !309, !322}
!307 = !DILocalVariable(name: "pipeline_name", arg: 1, scope: !303, file: !3, line: 162, type: !39)
!308 = !DILocalVariable(name: "s", scope: !303, file: !3, line: 163, type: !6)
!309 = !DILocalVariable(name: "lock", scope: !303, file: !3, line: 165, type: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !95, file: !311, line: 11, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !312, identifier: ".?AUScopedMutexLock@Internal@Runtime@Halide@@")
!311 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "642ccaf34ebe2e8cca3ae0e35e43768c")
!312 = !{!313, !315, !319}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !310, file: !311, line: 12, baseType: !314, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!315 = !DISubprogram(name: "ScopedMutexLock", scope: !310, file: !311, line: 14, type: !316, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !317)
!317 = !{null, !318, !314}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!319 = !DISubprogram(name: "~ScopedMutexLock", scope: !310, file: !311, line: 19, type: !320, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!320 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !321)
!321 = !{null, !318}
!322 = !DILocalVariable(name: "p", scope: !323, file: !3, line: 167, type: !27)
!323 = distinct !DILexicalBlock(scope: !303, file: !3, line: 167)
!324 = !DILocation(line: 0, scope: !303)
!325 = !DILocation(line: 163, scope: !303)
!326 = !DILocation(line: 165, scope: !303)
!327 = !DILocalVariable(name: "mutex", arg: 2, scope: !328, file: !311, line: 14, type: !314)
!328 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "??0ScopedMutexLock@Internal@Runtime@Halide@@QAE@PAUhalide_mutex@@@Z", scope: !310, file: !311, line: 14, type: !316, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !315, retainedNodes: !329)
!329 = !{!327, !330}
!330 = !DILocalVariable(name: "this", arg: 1, scope: !328, type: !331, flags: DIFlagArtificial | DIFlagObjectPointer)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 32)
!332 = !DILocation(line: 0, scope: !328, inlinedAt: !333)
!333 = distinct !DILocation(line: 165, scope: !303)
!334 = !DILocation(line: 16, scope: !335, inlinedAt: !333)
!335 = distinct !DILexicalBlock(scope: !328, file: !311, line: 15)
!336 = !DILocation(line: 167, scope: !323)
!337 = !DILocation(line: 0, scope: !323)
!338 = !DILocation(line: 171, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !3, line: 168)
!340 = distinct !DILexicalBlock(scope: !323, file: !3, line: 167)
!341 = !DILocation(line: 168, scope: !340)
!342 = distinct !{!342, !336, !343, !139}
!343 = !DILocation(line: 174, scope: !323)
!344 = !DILocalVariable(name: "this", arg: 1, scope: !345, type: !331, flags: DIFlagArtificial | DIFlagObjectPointer)
!345 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "??1ScopedMutexLock@Internal@Runtime@Halide@@QAE@XZ", scope: !310, file: !311, line: 19, type: !320, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !319, retainedNodes: !346)
!346 = !{!344}
!347 = !DILocation(line: 0, scope: !345, inlinedAt: !348)
!348 = distinct !DILocation(line: 176, scope: !303)
!349 = !DILocation(line: 20, scope: !350, inlinedAt: !348)
!350 = distinct !DILexicalBlock(scope: !345, file: !311, line: 19)
!351 = !DILocation(line: 176, scope: !303)
!352 = distinct !DISubprogram(name: "halide_profiler_pipeline_start", scope: !3, file: !3, line: 179, type: !353, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !355)
!353 = !DISubroutineType(types: !354)
!354 = !{!22, !56, !39, !22, !108}
!355 = !{!356, !357, !358, !359, !360, !361, !362}
!356 = !DILocalVariable(name: "func_names", arg: 4, scope: !352, file: !3, line: 182, type: !108)
!357 = !DILocalVariable(name: "num_funcs", arg: 3, scope: !352, file: !3, line: 181, type: !22)
!358 = !DILocalVariable(name: "pipeline_name", arg: 2, scope: !352, file: !3, line: 180, type: !39)
!359 = !DILocalVariable(name: "user_context", arg: 1, scope: !352, file: !3, line: 179, type: !56)
!360 = !DILocalVariable(name: "s", scope: !352, file: !3, line: 183, type: !6)
!361 = !DILocalVariable(name: "lock", scope: !352, file: !3, line: 185, type: !310)
!362 = !DILocalVariable(name: "p", scope: !352, file: !3, line: 192, type: !27)
!363 = !DILocation(line: 0, scope: !352)
!364 = !DILocation(line: 183, scope: !352)
!365 = !DILocation(line: 185, scope: !352)
!366 = !DILocation(line: 0, scope: !328, inlinedAt: !367)
!367 = distinct !DILocation(line: 185, scope: !352)
!368 = !DILocation(line: 16, scope: !335, inlinedAt: !367)
!369 = !DILocation(line: 187, scope: !352)
!370 = !{!144, !125, i64 28}
!371 = !DILocation(line: 188, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !3, line: 187)
!373 = distinct !DILexicalBlock(scope: !352, file: !3, line: 187)
!374 = !DILocation(line: 189, scope: !372)
!375 = !DILocation(line: 190, scope: !372)
!376 = !DILocation(line: 192, scope: !352)
!377 = !DILocation(line: 194, scope: !352)
!378 = !DILocation(line: 196, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !3, line: 194)
!380 = distinct !DILexicalBlock(scope: !352, file: !3, line: 194)
!381 = !DILocation(line: 198, scope: !352)
!382 = !DILocation(line: 200, scope: !352)
!383 = !DILocation(line: 0, scope: !345, inlinedAt: !384)
!384 = distinct !DILocation(line: 201, scope: !352)
!385 = !DILocation(line: 20, scope: !350, inlinedAt: !384)
!386 = !DILocation(line: 201, scope: !352)
!387 = distinct !DISubprogram(name: "halide_profiler_stack_peak_update", scope: !3, file: !3, line: 203, type: !388, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !391)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !56, !56, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 32)
!391 = !{!392, !393, !394, !395, !396}
!392 = !DILocalVariable(name: "f_values", arg: 3, scope: !387, file: !3, line: 205, type: !390)
!393 = !DILocalVariable(name: "pipeline_state", arg: 2, scope: !387, file: !3, line: 204, type: !56)
!394 = !DILocalVariable(name: "user_context", arg: 1, scope: !387, file: !3, line: 203, type: !56)
!395 = !DILocalVariable(name: "p_stats", scope: !387, file: !3, line: 206, type: !27)
!396 = !DILocalVariable(name: "i", scope: !397, file: !3, line: 216, type: !22)
!397 = distinct !DILexicalBlock(scope: !387, file: !3, line: 216)
!398 = !DILocation(line: 0, scope: !387)
!399 = !DILocation(line: 207, scope: !400)
!400 = distinct !DILexicalBlock(scope: !387, file: !3, line: 207)
!401 = !DILocation(line: 207, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !3, line: 207)
!403 = distinct !DILexicalBlock(scope: !400, file: !3, line: 207)
!404 = !DILocation(line: 0, scope: !397)
!405 = !DILocation(line: 216, scope: !397)
!406 = !DILocation(line: 221, scope: !387)
!407 = !DILocation(line: 217, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 216)
!409 = distinct !DILexicalBlock(scope: !397, file: !3, line: 216)
!410 = !DILocation(line: 218, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !3, line: 217)
!412 = distinct !DILexicalBlock(scope: !408, file: !3, line: 217)
!413 = !DILocalVariable(name: "val", arg: 2, scope: !414, file: !3, line: 147, type: !32)
!414 = distinct !DISubprogram(name: "sync_compare_max_and_swap<unsigned long long>", linkageName: "??$sync_compare_max_and_swap@_K@?A0x3E95B2E2@@YAXPA_K_K@Z", scope: !415, file: !3, line: 147, type: !416, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, templateParams: !424, retainedNodes: !419)
!415 = !DINamespace(scope: null)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !418, !32}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!419 = !{!413, !420, !421, !422}
!420 = !DILocalVariable(name: "ptr", arg: 1, scope: !414, file: !3, line: 147, type: !418)
!421 = !DILocalVariable(name: "old_val", scope: !414, file: !3, line: 148, type: !32)
!422 = !DILocalVariable(name: "temp", scope: !423, file: !3, line: 150, type: !32)
!423 = distinct !DILexicalBlock(scope: !414, file: !3, line: 149)
!424 = !{!425}
!425 = !DITemplateTypeParameter(name: "T", type: !32)
!426 = !DILocation(line: 0, scope: !414, inlinedAt: !427)
!427 = distinct !DILocation(line: 218, scope: !411)
!428 = !DILocation(line: 148, scope: !414, inlinedAt: !427)
!429 = !DILocation(line: 149, scope: !414, inlinedAt: !427)
!430 = !DILocation(line: 0, scope: !423, inlinedAt: !427)
!431 = !DILocation(line: 151, scope: !423, inlinedAt: !427)
!432 = !DILocation(line: 152, scope: !423, inlinedAt: !427)
!433 = distinct !{!433, !429, !434, !139}
!434 = !DILocation(line: 155, scope: !414, inlinedAt: !427)
!435 = !DILocation(line: 216, scope: !409)
!436 = distinct !{!436, !405, !437, !139}
!437 = !DILocation(line: 220, scope: !397)
!438 = distinct !DISubprogram(name: "halide_profiler_memory_allocate", scope: !3, file: !3, line: 223, type: !439, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !56, !56, !22, !31}
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449}
!442 = !DILocalVariable(name: "incr", arg: 4, scope: !438, file: !3, line: 226, type: !31)
!443 = !DILocalVariable(name: "func_id", arg: 3, scope: !438, file: !3, line: 225, type: !22)
!444 = !DILocalVariable(name: "pipeline_state", arg: 2, scope: !438, file: !3, line: 224, type: !56)
!445 = !DILocalVariable(name: "user_context", arg: 1, scope: !438, file: !3, line: 223, type: !56)
!446 = !DILocalVariable(name: "p_stats", scope: !438, file: !3, line: 233, type: !27)
!447 = !DILocalVariable(name: "f_stats", scope: !438, file: !3, line: 238, type: !43)
!448 = !DILocalVariable(name: "p_mem_current", scope: !438, file: !3, line: 249, type: !31)
!449 = !DILocalVariable(name: "f_mem_current", scope: !438, file: !3, line: 255, type: !31)
!450 = !DILocation(line: 0, scope: !438)
!451 = !DILocation(line: 229, scope: !438)
!452 = !DILocation(line: 234, scope: !453)
!453 = distinct !DILexicalBlock(scope: !438, file: !3, line: 234)
!454 = !DILocation(line: 234, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 234)
!456 = distinct !DILexicalBlock(scope: !453, file: !3, line: 234)
!457 = !DILocation(line: 235, scope: !458)
!458 = distinct !DILexicalBlock(scope: !438, file: !3, line: 235)
!459 = !DILocation(line: 235, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !3, line: 235)
!461 = distinct !DILexicalBlock(scope: !458, file: !3, line: 235)
!462 = !DILocation(line: 236, scope: !463)
!463 = distinct !DILexicalBlock(scope: !438, file: !3, line: 236)
!464 = !DILocation(line: 236, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !3, line: 236)
!466 = distinct !DILexicalBlock(scope: !463, file: !3, line: 236)
!467 = !DILocation(line: 238, scope: !438)
!468 = !DILocation(line: 247, scope: !438)
!469 = !DILocation(line: 248, scope: !438)
!470 = !DILocation(line: 249, scope: !438)
!471 = !DILocation(line: 250, scope: !438)
!472 = !DILocation(line: 0, scope: !414, inlinedAt: !473)
!473 = distinct !DILocation(line: 250, scope: !438)
!474 = !DILocation(line: 148, scope: !414, inlinedAt: !473)
!475 = !DILocation(line: 149, scope: !414, inlinedAt: !473)
!476 = !DILocation(line: 0, scope: !423, inlinedAt: !473)
!477 = !DILocation(line: 151, scope: !423, inlinedAt: !473)
!478 = !DILocation(line: 152, scope: !423, inlinedAt: !473)
!479 = distinct !{!479, !475, !480, !139}
!480 = !DILocation(line: 155, scope: !414, inlinedAt: !473)
!481 = !DILocation(line: 253, scope: !438)
!482 = !DILocation(line: 254, scope: !438)
!483 = !DILocation(line: 255, scope: !438)
!484 = !DILocation(line: 256, scope: !438)
!485 = !DILocation(line: 0, scope: !414, inlinedAt: !486)
!486 = distinct !DILocation(line: 256, scope: !438)
!487 = !DILocation(line: 148, scope: !414, inlinedAt: !486)
!488 = !DILocation(line: 149, scope: !414, inlinedAt: !486)
!489 = !DILocation(line: 0, scope: !423, inlinedAt: !486)
!490 = !DILocation(line: 151, scope: !423, inlinedAt: !486)
!491 = !DILocation(line: 152, scope: !423, inlinedAt: !486)
!492 = distinct !{!492, !488, !493, !139}
!493 = !DILocation(line: 155, scope: !414, inlinedAt: !486)
!494 = !DILocation(line: 257, scope: !438)
!495 = distinct !DISubprogram(name: "halide_profiler_memory_free", scope: !3, file: !3, line: 259, type: !439, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !496)
!496 = !{!497, !498, !499, !500, !501, !502}
!497 = !DILocalVariable(name: "decr", arg: 4, scope: !495, file: !3, line: 262, type: !31)
!498 = !DILocalVariable(name: "func_id", arg: 3, scope: !495, file: !3, line: 261, type: !22)
!499 = !DILocalVariable(name: "pipeline_state", arg: 2, scope: !495, file: !3, line: 260, type: !56)
!500 = !DILocalVariable(name: "user_context", arg: 1, scope: !495, file: !3, line: 259, type: !56)
!501 = !DILocalVariable(name: "p_stats", scope: !495, file: !3, line: 269, type: !27)
!502 = !DILocalVariable(name: "f_stats", scope: !495, file: !3, line: 274, type: !43)
!503 = !DILocation(line: 0, scope: !495)
!504 = !DILocation(line: 265, scope: !495)
!505 = !DILocation(line: 270, scope: !506)
!506 = distinct !DILexicalBlock(scope: !495, file: !3, line: 270)
!507 = !DILocation(line: 270, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !3, line: 270)
!509 = distinct !DILexicalBlock(scope: !506, file: !3, line: 270)
!510 = !DILocation(line: 271, scope: !511)
!511 = distinct !DILexicalBlock(scope: !495, file: !3, line: 271)
!512 = !DILocation(line: 271, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !3, line: 271)
!514 = distinct !DILexicalBlock(scope: !511, file: !3, line: 271)
!515 = !DILocation(line: 272, scope: !516)
!516 = distinct !DILexicalBlock(scope: !495, file: !3, line: 272)
!517 = !DILocation(line: 272, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !3, line: 272)
!519 = distinct !DILexicalBlock(scope: !516, file: !3, line: 272)
!520 = !DILocation(line: 274, scope: !495)
!521 = !DILocation(line: 283, scope: !495)
!522 = !DILocation(line: 286, scope: !495)
!523 = !DILocation(line: 287, scope: !495)
!524 = distinct !DISubprogram(name: "halide_profiler_report_unlocked", scope: !3, file: !3, line: 289, type: !525, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !527)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !56, !6}
!527 = !{!528, !529, !530, !534, !650, !652, !655, !656, !657, !658, !659, !663, !666, !670, !674, !675, !676, !677, !680}
!528 = !DILocalVariable(name: "s", arg: 2, scope: !524, file: !3, line: 289, type: !6)
!529 = !DILocalVariable(name: "user_context", arg: 1, scope: !524, file: !3, line: 289, type: !56)
!530 = !DILocalVariable(name: "line_buf", scope: !524, file: !3, line: 291, type: !531)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8192, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 1024)
!534 = !DILocalVariable(name: "sstr", scope: !524, file: !3, line: 292, type: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<2,1024>", scope: !537, file: !536, line: 30, size: 160, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !538, templateParams: !647, identifier: ".?AV?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@")
!536 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "a97d2909b01229a33f8a6f2cb0fa6ab8")
!537 = !DINamespace(scope: !95)
!538 = !{!539, !540, !541, !542, !543, !545, !547, !551, !555, !560, !564, !567, !570, !574, !578, !583, !589, !622, !629, !632, !635, !640, !641, !644, !645, !646}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !535, file: !536, line: 32, baseType: !87, size: 32, flags: DIFlagPublic)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !535, file: !536, line: 32, baseType: !87, size: 32, offset: 32, flags: DIFlagPublic)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !535, file: !536, line: 32, baseType: !87, size: 32, offset: 64, flags: DIFlagPublic)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !535, file: !536, line: 33, baseType: !56, size: 32, offset: 96, flags: DIFlagPublic)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !535, file: !536, line: 34, baseType: !544, size: 8, offset: 128, flags: DIFlagPublic)
!544 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !535, file: !536, line: 35, baseType: !546, size: 8, offset: 136, flags: DIFlagPublic)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !19)
!547 = !DISubprogram(name: "Printer", scope: !535, file: !536, line: 37, type: !548, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!548 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !549)
!549 = !{null, !550, !56, !87}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!551 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEAAV0?A0x3E95B2E2@123@PBD@Z", scope: !535, file: !536, line: 57, type: !552, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!552 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !553)
!553 = !{!554, !550, !39}
!554 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !535, size: 32)
!555 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEAAV0?A0x3E95B2E2@123@_J@Z", scope: !535, file: !536, line: 67, type: !556, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!556 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !557)
!557 = !{!554, !550, !558}
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !16, line: 9, baseType: !559)
!559 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!560 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEAAV0?A0x3E95B2E2@123@H@Z", scope: !535, file: !536, line: 72, type: !561, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !562)
!562 = !{!554, !550, !563}
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !16, line: 11, baseType: !22)
!564 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEAAV0?A0x3E95B2E2@123@_K@Z", scope: !535, file: !536, line: 77, type: !565, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !566)
!566 = !{!554, !550, !31}
!567 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEAAV0?A0x3E95B2E2@123@I@Z", scope: !535, file: !536, line: 82, type: !568, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!568 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !569)
!569 = !{!554, !550, !17}
!570 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEAAV0?A0x3E95B2E2@123@N@Z", scope: !535, file: !536, line: 87, type: !571, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!571 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !572)
!572 = !{!554, !550, !573}
!573 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!574 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEAAV0?A0x3E95B2E2@123@M@Z", scope: !535, file: !536, line: 92, type: !575, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!575 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !576)
!576 = !{!554, !550, !577}
!577 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!578 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEAAV0?A0x3E95B2E2@123@PBX@Z", scope: !535, file: !536, line: 97, type: !579, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!579 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !580)
!580 = !{!554, !550, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!583 = !DISubprogram(name: "write_float16_from_bits", linkageName: "?write_float16_from_bits@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEAAV1?A0x3E95B2E2@234@G@Z", scope: !535, file: !536, line: 102, type: !584, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!584 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !585)
!585 = !{!554, !550, !586}
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !16, line: 14, baseType: !588)
!588 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!589 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEAAV0?A0x3E95B2E2@123@ABUhalide_type_t@@@Z", scope: !535, file: !536, line: 108, type: !590, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!590 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !591)
!591 = !{!554, !550, !592}
!592 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !593, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !8, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !595, identifier: ".?AUhalide_type_t@@")
!595 = !{!596, !598, !599, !600, !604, !607, !611, !614, !615, !616, !619}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !594, file: !8, line: 434, baseType: !597, size: 8, align: 8)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !8, line: 413, baseType: !77)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !594, file: !8, line: 442, baseType: !78, size: 8, align: 8, offset: 8)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !594, file: !8, line: 446, baseType: !587, size: 16, align: 16, offset: 16)
!600 = !DISubprogram(name: "halide_type_t", scope: !594, file: !8, line: 453, type: !601, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!601 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !602)
!602 = !{null, !603, !597, !78, !587}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!604 = !DISubprogram(name: "halide_type_t", scope: !594, file: !8, line: 459, type: !605, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!605 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !606)
!606 = !{null, !603}
!607 = !DISubprogram(name: "with_lanes", linkageName: "?with_lanes@halide_type_t@@QBE?AU1@G@Z", scope: !594, file: !8, line: 463, type: !608, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!608 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !609)
!609 = !{!594, !610, !587}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!611 = !DISubprogram(name: "operator==", linkageName: "??8halide_type_t@@QBE_NABU0@@Z", scope: !594, file: !8, line: 468, type: !612, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!612 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !613)
!613 = !{!544, !610, !592}
!614 = !DISubprogram(name: "operator!=", linkageName: "??9halide_type_t@@QBE_NABU0@@Z", scope: !594, file: !8, line: 472, type: !612, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!615 = !DISubprogram(name: "operator<", linkageName: "??Mhalide_type_t@@QBE_NABU0@@Z", scope: !594, file: !8, line: 476, type: !612, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!616 = !DISubprogram(name: "bytes", linkageName: "?bytes@halide_type_t@@QBEHXZ", scope: !594, file: !8, line: 481, type: !617, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!617 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !618)
!618 = !{!22, !610}
!619 = !DISubprogram(name: "as_u32", linkageName: "?as_u32@halide_type_t@@QBEIXZ", scope: !594, file: !8, line: 485, type: !620, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!620 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !621)
!621 = !{!17, !610}
!622 = !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEAAV0?A0x3E95B2E2@123@ABUhalide_buffer_t@@@Z", scope: !535, file: !536, line: 113, type: !623, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!623 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !624)
!624 = !{!554, !550, !625}
!625 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !626, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !8, line: 1550, baseType: !628)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !8, line: 1423, size: 320, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AUhalide_buffer_t@@")
!629 = !DISubprogram(name: "str", linkageName: "?str@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEPBDXZ", scope: !535, file: !536, line: 119, type: !630, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!630 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !631)
!631 = !{!39, !550}
!632 = !DISubprogram(name: "clear", linkageName: "?clear@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEXXZ", scope: !535, file: !536, line: 131, type: !633, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!633 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !634)
!634 = !{null, !550}
!635 = !DISubprogram(name: "size", linkageName: "?size@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QBE_KXZ", scope: !535, file: !536, line: 139, type: !636, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!636 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !637)
!637 = !{!31, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!640 = !DISubprogram(name: "capacity", linkageName: "?capacity@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QBE_KXZ", scope: !535, file: !536, line: 143, type: !636, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!641 = !DISubprogram(name: "erase", linkageName: "?erase@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEXH@Z", scope: !535, file: !536, line: 148, type: !642, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!642 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !643)
!643 = !{null, !550, !22}
!644 = !DISubprogram(name: "allocation_error", linkageName: "?allocation_error@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEPBDXZ", scope: !535, file: !536, line: 158, type: !630, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!645 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "?msan_annotate_is_initialized@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEXXZ", scope: !535, file: !536, line: 162, type: !633, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!646 = !DISubprogram(name: "~Printer", scope: !535, file: !536, line: 166, type: !633, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!647 = !{!648, !649}
!648 = !DITemplateValueParameter(name: "type", type: !22, value: i32 2)
!649 = !DITemplateValueParameter(name: "length", type: !32, value: i64 1024)
!650 = !DILocalVariable(name: "p", scope: !651, file: !3, line: 294, type: !27)
!651 = distinct !DILexicalBlock(scope: !524, file: !3, line: 294)
!652 = !DILocalVariable(name: "t", scope: !653, file: !3, line: 296, type: !577)
!653 = distinct !DILexicalBlock(scope: !654, file: !3, line: 295)
!654 = distinct !DILexicalBlock(scope: !651, file: !3, line: 294)
!655 = !DILocalVariable(name: "alloc_avg", scope: !653, file: !3, line: 301, type: !22)
!656 = !DILocalVariable(name: "serial", scope: !653, file: !3, line: 305, type: !544)
!657 = !DILocalVariable(name: "threads", scope: !653, file: !3, line: 306, type: !577)
!658 = !DILocalVariable(name: "print_f_states", scope: !653, file: !3, line: 319, type: !544)
!659 = !DILocalVariable(name: "i", scope: !660, file: !3, line: 321, type: !22)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 321)
!661 = distinct !DILexicalBlock(scope: !662, file: !3, line: 320)
!662 = distinct !DILexicalBlock(scope: !653, file: !3, line: 320)
!663 = !DILocalVariable(name: "fs", scope: !664, file: !3, line: 322, type: !43)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 321)
!665 = distinct !DILexicalBlock(scope: !660, file: !3, line: 321)
!666 = !DILocalVariable(name: "i", scope: !667, file: !3, line: 331, type: !22)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 331)
!668 = distinct !DILexicalBlock(scope: !669, file: !3, line: 330)
!669 = distinct !DILexicalBlock(scope: !653, file: !3, line: 330)
!670 = !DILocalVariable(name: "cursor", scope: !671, file: !3, line: 332, type: !673)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 331)
!672 = distinct !DILexicalBlock(scope: !667, file: !3, line: 331)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 27, baseType: !18)
!674 = !DILocalVariable(name: "fs", scope: !671, file: !3, line: 334, type: !43)
!675 = !DILocalVariable(name: "ft", scope: !671, file: !3, line: 348, type: !577)
!676 = !DILocalVariable(name: "percent", scope: !671, file: !3, line: 358, type: !22)
!677 = !DILocalVariable(name: "threads", scope: !678, file: !3, line: 369, type: !577)
!678 = distinct !DILexicalBlock(scope: !679, file: !3, line: 368)
!679 = distinct !DILexicalBlock(scope: !671, file: !3, line: 368)
!680 = !DILocalVariable(name: "alloc_avg", scope: !671, file: !3, line: 378, type: !22)
!681 = !DILocation(line: 0, scope: !524)
!682 = !DILocation(line: 291, scope: !524)
!683 = !DILocation(line: 292, scope: !524)
!684 = !DILocalVariable(name: "mem", arg: 3, scope: !685, file: !536, line: 37, type: !87)
!685 = distinct !DISubprogram(name: "Printer", linkageName: "??0?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAE@PAXPAD@Z", scope: !535, file: !536, line: 37, type: !548, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !547, retainedNodes: !686)
!686 = !{!684, !687, !688}
!687 = !DILocalVariable(name: "ctx", arg: 2, scope: !685, file: !536, line: 37, type: !56)
!688 = !DILocalVariable(name: "this", arg: 1, scope: !685, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 32)
!690 = !DILocation(line: 0, scope: !685, inlinedAt: !691)
!691 = distinct !DILocation(line: 292, scope: !524)
!692 = !DILocation(line: 38, scope: !685, inlinedAt: !691)
!693 = !{!694, !125, i64 12}
!694 = !{!"?AV?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@", !125, i64 0, !125, i64 4, !125, i64 8, !125, i64 12, !695, i64 16, !126, i64 17}
!695 = !{!"bool", !126, i64 0}
!696 = !{!694, !695, i64 16}
!697 = !DILocation(line: 44, scope: !698, inlinedAt: !691)
!698 = distinct !DILexicalBlock(scope: !699, file: !536, line: 43)
!699 = distinct !DILexicalBlock(scope: !700, file: !536, line: 41)
!700 = distinct !DILexicalBlock(scope: !701, file: !536, line: 39)
!701 = distinct !DILexicalBlock(scope: !685, file: !536, line: 38)
!702 = !DILocation(line: 47, scope: !701, inlinedAt: !691)
!703 = !{!694, !125, i64 4}
!704 = !DILocation(line: 49, scope: !705, inlinedAt: !691)
!705 = distinct !DILexicalBlock(scope: !706, file: !536, line: 48)
!706 = distinct !DILexicalBlock(scope: !701, file: !536, line: 48)
!707 = !{!694, !125, i64 8}
!708 = !DILocation(line: 50, scope: !705, inlinedAt: !691)
!709 = !{!126, !126, i64 0}
!710 = !DILocation(line: 294, scope: !651)
!711 = !DILocation(line: 0, scope: !651)
!712 = !DILocation(line: 167, scope: !713, inlinedAt: !717)
!713 = distinct !DILexicalBlock(scope: !714, file: !536, line: 166)
!714 = distinct !DISubprogram(name: "~Printer", linkageName: "??1?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAE@XZ", scope: !535, file: !536, line: 166, type: !633, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !646, retainedNodes: !715)
!715 = !{!716}
!716 = !DILocalVariable(name: "this", arg: 1, scope: !714, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!717 = distinct !DILocation(line: 405, scope: !524)
!718 = !{!694, !125, i64 0}
!719 = !DILocation(line: 0, scope: !714, inlinedAt: !717)
!720 = !DILocation(line: 168, scope: !721, inlinedAt: !717)
!721 = distinct !DILexicalBlock(scope: !722, file: !536, line: 167)
!722 = distinct !DILexicalBlock(scope: !713, file: !536, line: 167)
!723 = !DILocation(line: 169, scope: !721, inlinedAt: !717)
!724 = !DILocation(line: 170, scope: !725, inlinedAt: !717)
!725 = distinct !DILexicalBlock(scope: !722, file: !536, line: 169)
!726 = !DILocalVariable(name: "this", arg: 1, scope: !727, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!727 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "?msan_annotate_is_initialized@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEXXZ", scope: !535, file: !536, line: 162, type: !633, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !645, retainedNodes: !728)
!728 = !{!726}
!729 = !DILocation(line: 0, scope: !727, inlinedAt: !730)
!730 = distinct !DILocation(line: 170, scope: !725, inlinedAt: !717)
!731 = !DILocation(line: 163, scope: !727, inlinedAt: !730)
!732 = !DILocation(line: 178, scope: !725, inlinedAt: !717)
!733 = !DILocation(line: 180, scope: !713, inlinedAt: !717)
!734 = !{i8 0, i8 2}
!735 = !DILocation(line: 181, scope: !736, inlinedAt: !717)
!736 = distinct !DILexicalBlock(scope: !737, file: !536, line: 180)
!737 = distinct !DILexicalBlock(scope: !713, file: !536, line: 180)
!738 = !DILocation(line: 182, scope: !736, inlinedAt: !717)
!739 = !DILocation(line: 405, scope: !524)
!740 = !DILocation(line: 296, scope: !653)
!741 = !DILocation(line: 0, scope: !653)
!742 = !DILocation(line: 297, scope: !653)
!743 = !DILocalVariable(name: "this", arg: 1, scope: !744, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!744 = distinct !DISubprogram(name: "clear", linkageName: "?clear@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEXXZ", scope: !535, file: !536, line: 131, type: !633, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !632, retainedNodes: !745)
!745 = !{!743}
!746 = !DILocation(line: 0, scope: !744, inlinedAt: !747)
!747 = distinct !DILocation(line: 300, scope: !653)
!748 = !DILocation(line: 132, scope: !744, inlinedAt: !747)
!749 = !DILocation(line: 133, scope: !744, inlinedAt: !747)
!750 = !DILocation(line: 134, scope: !751, inlinedAt: !747)
!751 = distinct !DILexicalBlock(scope: !752, file: !536, line: 133)
!752 = distinct !DILexicalBlock(scope: !744, file: !536, line: 133)
!753 = !DILocation(line: 135, scope: !751, inlinedAt: !747)
!754 = !DILocation(line: 302, scope: !653)
!755 = !DILocation(line: 305, scope: !653)
!756 = !DILocation(line: 307, scope: !653)
!757 = !DILocalVariable(name: "arg", arg: 2, scope: !758, file: !536, line: 57, type: !39)
!758 = distinct !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEAAV0?A0x3E95B2E2@123@PBD@Z", scope: !535, file: !536, line: 57, type: !552, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !551, retainedNodes: !759)
!759 = !{!757, !760}
!760 = !DILocalVariable(name: "this", arg: 1, scope: !758, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!761 = !DILocation(line: 0, scope: !758, inlinedAt: !762)
!762 = distinct !DILocation(line: 307, scope: !653)
!763 = !DILocation(line: 59, scope: !758, inlinedAt: !762)
!764 = !DILocation(line: 0, scope: !765, inlinedAt: !762)
!765 = distinct !DILexicalBlock(scope: !758, file: !536, line: 59)
!766 = !DILocation(line: 60, scope: !767, inlinedAt: !762)
!767 = distinct !DILexicalBlock(scope: !765, file: !536, line: 59)
!768 = !DILocation(line: 61, scope: !767, inlinedAt: !762)
!769 = !DILocation(line: 62, scope: !770, inlinedAt: !762)
!770 = distinct !DILexicalBlock(scope: !765, file: !536, line: 61)
!771 = !DILocation(line: 63, scope: !770, inlinedAt: !762)
!772 = !DILocation(line: 0, scope: !758, inlinedAt: !773)
!773 = distinct !DILocation(line: 307, scope: !653)
!774 = !DILocation(line: 62, scope: !770, inlinedAt: !773)
!775 = !DILocation(line: 0, scope: !758, inlinedAt: !776)
!776 = distinct !DILocation(line: 307, scope: !653)
!777 = !DILocation(line: 62, scope: !770, inlinedAt: !776)
!778 = !DILocalVariable(name: "arg", arg: 2, scope: !779, file: !536, line: 92, type: !577)
!779 = distinct !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEAAV0?A0x3E95B2E2@123@M@Z", scope: !535, file: !536, line: 92, type: !575, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !574, retainedNodes: !780)
!780 = !{!778, !781}
!781 = !DILocalVariable(name: "this", arg: 1, scope: !779, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!782 = !DILocation(line: 0, scope: !779, inlinedAt: !783)
!783 = distinct !DILocation(line: 307, scope: !653)
!784 = !DILocation(line: 93, scope: !779, inlinedAt: !783)
!785 = !DILocation(line: 0, scope: !758, inlinedAt: !786)
!786 = distinct !DILocation(line: 307, scope: !653)
!787 = !DILocation(line: 62, scope: !770, inlinedAt: !786)
!788 = !DILocation(line: 0, scope: !758, inlinedAt: !789)
!789 = distinct !DILocation(line: 307, scope: !653)
!790 = !DILocation(line: 62, scope: !770, inlinedAt: !789)
!791 = !DILocalVariable(name: "arg", arg: 2, scope: !792, file: !536, line: 72, type: !563)
!792 = distinct !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEAAV0?A0x3E95B2E2@123@H@Z", scope: !535, file: !536, line: 72, type: !561, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !560, retainedNodes: !793)
!793 = !{!791, !794}
!794 = !DILocalVariable(name: "this", arg: 1, scope: !792, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!795 = !DILocation(line: 0, scope: !792, inlinedAt: !796)
!796 = distinct !DILocation(line: 307, scope: !653)
!797 = !DILocation(line: 73, scope: !792, inlinedAt: !796)
!798 = !DILocation(line: 0, scope: !758, inlinedAt: !799)
!799 = distinct !DILocation(line: 307, scope: !653)
!800 = !DILocation(line: 62, scope: !770, inlinedAt: !799)
!801 = !DILocation(line: 0, scope: !792, inlinedAt: !802)
!802 = distinct !DILocation(line: 307, scope: !653)
!803 = !DILocation(line: 73, scope: !792, inlinedAt: !802)
!804 = !DILocation(line: 0, scope: !758, inlinedAt: !805)
!805 = distinct !DILocation(line: 307, scope: !653)
!806 = !DILocation(line: 62, scope: !770, inlinedAt: !805)
!807 = !DILocation(line: 0, scope: !779, inlinedAt: !808)
!808 = distinct !DILocation(line: 307, scope: !653)
!809 = !DILocation(line: 93, scope: !779, inlinedAt: !808)
!810 = !DILocation(line: 0, scope: !758, inlinedAt: !811)
!811 = distinct !DILocation(line: 307, scope: !653)
!812 = !DILocation(line: 62, scope: !770, inlinedAt: !811)
!813 = !DILocation(line: 312, scope: !653)
!814 = !DILocation(line: 306, scope: !653)
!815 = !DILocation(line: 0, scope: !758, inlinedAt: !816)
!816 = distinct !DILocation(line: 313, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 312)
!818 = distinct !DILexicalBlock(scope: !653, file: !3, line: 312)
!819 = !DILocation(line: 62, scope: !770, inlinedAt: !816)
!820 = !DILocation(line: 0, scope: !779, inlinedAt: !821)
!821 = distinct !DILocation(line: 313, scope: !817)
!822 = !DILocation(line: 93, scope: !779, inlinedAt: !821)
!823 = !DILocation(line: 0, scope: !758, inlinedAt: !824)
!824 = distinct !DILocation(line: 313, scope: !817)
!825 = !DILocation(line: 62, scope: !770, inlinedAt: !824)
!826 = !DILocation(line: 314, scope: !817)
!827 = !DILocation(line: 62, scope: !770, inlinedAt: !828)
!828 = distinct !DILocation(line: 315, scope: !653)
!829 = !DILocation(line: 0, scope: !758, inlinedAt: !828)
!830 = !DILocation(line: 315, scope: !653)
!831 = !DILocation(line: 0, scope: !792, inlinedAt: !832)
!832 = distinct !DILocation(line: 315, scope: !653)
!833 = !DILocation(line: 73, scope: !792, inlinedAt: !832)
!834 = !DILocation(line: 0, scope: !758, inlinedAt: !835)
!835 = distinct !DILocation(line: 315, scope: !653)
!836 = !DILocation(line: 62, scope: !770, inlinedAt: !835)
!837 = !DILocalVariable(name: "arg", arg: 2, scope: !838, file: !536, line: 77, type: !31)
!838 = distinct !DISubprogram(name: "operator<<", linkageName: "??6?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEAAV0?A0x3E95B2E2@123@_K@Z", scope: !535, file: !536, line: 77, type: !565, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !564, retainedNodes: !839)
!839 = !{!837, !840}
!840 = !DILocalVariable(name: "this", arg: 1, scope: !838, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!841 = !DILocation(line: 0, scope: !838, inlinedAt: !842)
!842 = distinct !DILocation(line: 315, scope: !653)
!843 = !DILocation(line: 78, scope: !838, inlinedAt: !842)
!844 = !DILocation(line: 0, scope: !758, inlinedAt: !845)
!845 = distinct !DILocation(line: 315, scope: !653)
!846 = !DILocation(line: 62, scope: !770, inlinedAt: !845)
!847 = !DILocalVariable(name: "this", arg: 1, scope: !848, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!848 = distinct !DISubprogram(name: "str", linkageName: "?str@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEPBDXZ", scope: !535, file: !536, line: 119, type: !630, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !629, retainedNodes: !849)
!849 = !{!847}
!850 = !DILocation(line: 0, scope: !848, inlinedAt: !851)
!851 = distinct !DILocation(line: 317, scope: !653)
!852 = !DILocation(line: 120, scope: !848, inlinedAt: !851)
!853 = !DILocation(line: 122, scope: !854, inlinedAt: !851)
!854 = distinct !DILexicalBlock(scope: !855, file: !536, line: 121)
!855 = distinct !DILexicalBlock(scope: !856, file: !536, line: 121)
!856 = distinct !DILexicalBlock(scope: !857, file: !536, line: 120)
!857 = distinct !DILexicalBlock(scope: !848, file: !536, line: 120)
!858 = !DILocation(line: 0, scope: !727, inlinedAt: !859)
!859 = distinct !DILocation(line: 122, scope: !854, inlinedAt: !851)
!860 = !DILocation(line: 163, scope: !727, inlinedAt: !859)
!861 = !DILocation(line: 124, scope: !856, inlinedAt: !851)
!862 = !DILocation(line: 0, scope: !857, inlinedAt: !851)
!863 = !DILocation(line: 317, scope: !653)
!864 = !DILocation(line: 319, scope: !653)
!865 = !DILocation(line: 320, scope: !653)
!866 = !DILocation(line: 0, scope: !660)
!867 = !DILocation(line: 321, scope: !660)
!868 = distinct !{!868, !867, !869, !139}
!869 = !DILocation(line: 327, scope: !660)
!870 = !DILocation(line: 0, scope: !664)
!871 = !DILocation(line: 323, scope: !664)
!872 = !DILocation(line: 321, scope: !665)
!873 = !DILocation(line: 0, scope: !667)
!874 = !DILocation(line: 331, scope: !667)
!875 = !DILocation(line: 0, scope: !671)
!876 = !DILocation(line: 0, scope: !744, inlinedAt: !877)
!877 = distinct !DILocation(line: 333, scope: !671)
!878 = !DILocation(line: 132, scope: !744, inlinedAt: !877)
!879 = !DILocation(line: 133, scope: !744, inlinedAt: !877)
!880 = !DILocation(line: 134, scope: !751, inlinedAt: !877)
!881 = !DILocation(line: 135, scope: !751, inlinedAt: !877)
!882 = !DILocation(line: 334, scope: !671)
!883 = !DILocation(line: 338, scope: !671)
!884 = !DILocation(line: 0, scope: !758, inlinedAt: !885)
!885 = distinct !DILocation(line: 342, scope: !671)
!886 = !DILocation(line: 62, scope: !770, inlinedAt: !885)
!887 = !DILocation(line: 342, scope: !671)
!888 = !DILocation(line: 0, scope: !758, inlinedAt: !889)
!889 = distinct !DILocation(line: 342, scope: !671)
!890 = !DILocation(line: 59, scope: !758, inlinedAt: !889)
!891 = !DILocation(line: 0, scope: !765, inlinedAt: !889)
!892 = !DILocation(line: 60, scope: !767, inlinedAt: !889)
!893 = !DILocation(line: 61, scope: !767, inlinedAt: !889)
!894 = !DILocation(line: 62, scope: !770, inlinedAt: !889)
!895 = !DILocation(line: 63, scope: !770, inlinedAt: !889)
!896 = !DILocation(line: 0, scope: !758, inlinedAt: !897)
!897 = distinct !DILocation(line: 342, scope: !671)
!898 = !DILocation(line: 62, scope: !770, inlinedAt: !897)
!899 = !DILocation(line: 344, scope: !671)
!900 = !DILocalVariable(name: "this", arg: 1, scope: !901, type: !903, flags: DIFlagArtificial | DIFlagObjectPointer)
!901 = distinct !DISubprogram(name: "size", linkageName: "?size@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QBE_KXZ", scope: !535, file: !536, line: 139, type: !636, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !635, retainedNodes: !902)
!902 = !{!900}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 32)
!904 = !DILocation(line: 0, scope: !901, inlinedAt: !905)
!905 = distinct !DILocation(line: 344, scope: !671)
!906 = !DILocation(line: 140, scope: !901, inlinedAt: !905)
!907 = !DILocation(line: 62, scope: !770, inlinedAt: !908)
!908 = distinct !DILocation(line: 345, scope: !909)
!909 = distinct !DILexicalBlock(scope: !671, file: !3, line: 344)
!910 = !DILocation(line: 0, scope: !758, inlinedAt: !908)
!911 = distinct !{!911, !899, !912, !139}
!912 = !DILocation(line: 346, scope: !671)
!913 = !DILocation(line: 93, scope: !779, inlinedAt: !914)
!914 = distinct !DILocation(line: 349, scope: !671)
!915 = !DILocation(line: 348, scope: !671)
!916 = !DILocation(line: 0, scope: !779, inlinedAt: !914)
!917 = !DILocalVariable(name: "n", arg: 2, scope: !918, file: !536, line: 148, type: !22)
!918 = distinct !DISubprogram(name: "erase", linkageName: "?erase@?$Printer@$01$0EAA@@?A0x3E95B2E2@Internal@Runtime@Halide@@QAEXH@Z", scope: !535, file: !536, line: 148, type: !642, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !641, retainedNodes: !919)
!919 = !{!917, !920}
!920 = !DILocalVariable(name: "this", arg: 1, scope: !918, type: !689, flags: DIFlagArtificial | DIFlagObjectPointer)
!921 = !DILocation(line: 0, scope: !918, inlinedAt: !922)
!922 = distinct !DILocation(line: 351, scope: !671)
!923 = !DILocation(line: 149, scope: !918, inlinedAt: !922)
!924 = !DILocation(line: 150, scope: !925, inlinedAt: !922)
!925 = distinct !DILexicalBlock(scope: !926, file: !536, line: 149)
!926 = distinct !DILexicalBlock(scope: !918, file: !536, line: 149)
!927 = !DILocation(line: 151, scope: !925, inlinedAt: !922)
!928 = !DILocation(line: 0, scope: !925, inlinedAt: !922)
!929 = !DILocation(line: 154, scope: !925, inlinedAt: !922)
!930 = !DILocation(line: 62, scope: !770, inlinedAt: !931)
!931 = distinct !DILocation(line: 352, scope: !671)
!932 = !DILocation(line: 155, scope: !925, inlinedAt: !922)
!933 = !DILocation(line: 0, scope: !758, inlinedAt: !931)
!934 = !DILocation(line: 354, scope: !671)
!935 = !DILocation(line: 0, scope: !901, inlinedAt: !936)
!936 = distinct !DILocation(line: 354, scope: !671)
!937 = !DILocation(line: 140, scope: !901, inlinedAt: !936)
!938 = !DILocation(line: 62, scope: !770, inlinedAt: !939)
!939 = distinct !DILocation(line: 355, scope: !940)
!940 = distinct !DILexicalBlock(scope: !671, file: !3, line: 354)
!941 = !DILocation(line: 0, scope: !758, inlinedAt: !939)
!942 = distinct !{!942, !934, !943, !139}
!943 = !DILocation(line: 356, scope: !671)
!944 = !DILocation(line: 359, scope: !671)
!945 = !DILocation(line: 360, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !3, line: 359)
!947 = distinct !DILexicalBlock(scope: !671, file: !3, line: 359)
!948 = !DILocation(line: 361, scope: !946)
!949 = !DILocation(line: 0, scope: !758, inlinedAt: !950)
!950 = distinct !DILocation(line: 362, scope: !671)
!951 = !DILocation(line: 62, scope: !770, inlinedAt: !950)
!952 = !DILocation(line: 0, scope: !792, inlinedAt: !953)
!953 = distinct !DILocation(line: 362, scope: !671)
!954 = !DILocation(line: 73, scope: !792, inlinedAt: !953)
!955 = !DILocation(line: 0, scope: !758, inlinedAt: !956)
!956 = distinct !DILocation(line: 362, scope: !671)
!957 = !DILocation(line: 62, scope: !770, inlinedAt: !956)
!958 = !DILocation(line: 364, scope: !671)
!959 = !DILocation(line: 0, scope: !901, inlinedAt: !960)
!960 = distinct !DILocation(line: 364, scope: !671)
!961 = !DILocation(line: 140, scope: !901, inlinedAt: !960)
!962 = !DILocation(line: 62, scope: !770, inlinedAt: !963)
!963 = distinct !DILocation(line: 365, scope: !964)
!964 = distinct !DILexicalBlock(scope: !671, file: !3, line: 364)
!965 = !DILocation(line: 0, scope: !758, inlinedAt: !963)
!966 = distinct !{!966, !958, !967, !139}
!967 = !DILocation(line: 366, scope: !671)
!968 = !DILocation(line: 368, scope: !671)
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
!989 = !DILocation(line: 62, scope: !770, inlinedAt: !990)
!990 = distinct !DILocation(line: 374, scope: !991)
!991 = distinct !DILexicalBlock(scope: !678, file: !3, line: 373)
!992 = !DILocation(line: 0, scope: !758, inlinedAt: !990)
!993 = distinct !{!993, !984, !994, !139}
!994 = !DILocation(line: 375, scope: !678)
!995 = !DILocation(line: 379, scope: !671)
!996 = !DILocation(line: 380, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 379)
!998 = distinct !DILexicalBlock(scope: !671, file: !3, line: 379)
!999 = !DILocation(line: 381, scope: !997)
!1000 = !DILocation(line: 383, scope: !671)
!1001 = !DILocation(line: 0, scope: !758, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 385, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 383)
!1004 = distinct !DILexicalBlock(scope: !671, file: !3, line: 383)
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
!1015 = !DILocation(line: 62, scope: !770, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 387, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 386)
!1018 = !DILocation(line: 0, scope: !758, inlinedAt: !1016)
!1019 = distinct !{!1019, !1011, !1020, !139}
!1020 = !DILocation(line: 388, scope: !1003)
!1021 = !DILocation(line: 62, scope: !770, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 389, scope: !1003)
!1023 = !DILocation(line: 0, scope: !758, inlinedAt: !1022)
!1024 = !DILocation(line: 389, scope: !1003)
!1025 = !DILocation(line: 0, scope: !792, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 389, scope: !1003)
!1027 = !DILocation(line: 73, scope: !792, inlinedAt: !1026)
!1028 = !DILocation(line: 390, scope: !1003)
!1029 = !DILocation(line: 391, scope: !1003)
!1030 = !DILocation(line: 0, scope: !901, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 391, scope: !1003)
!1032 = !DILocation(line: 140, scope: !901, inlinedAt: !1031)
!1033 = !DILocation(line: 62, scope: !770, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 392, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 391)
!1036 = !DILocation(line: 0, scope: !758, inlinedAt: !1034)
!1037 = distinct !{!1037, !1029, !1038, !139}
!1038 = !DILocation(line: 393, scope: !1003)
!1039 = !DILocation(line: 62, scope: !770, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 394, scope: !1003)
!1041 = !DILocation(line: 0, scope: !758, inlinedAt: !1040)
!1042 = !DILocation(line: 0, scope: !792, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 394, scope: !1003)
!1044 = !DILocation(line: 73, scope: !792, inlinedAt: !1043)
!1045 = !DILocation(line: 395, scope: !1003)
!1046 = !DILocation(line: 396, scope: !671)
!1047 = !DILocation(line: 0, scope: !758, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 397, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 396)
!1050 = distinct !DILexicalBlock(scope: !671, file: !3, line: 396)
!1051 = !DILocation(line: 62, scope: !770, inlinedAt: !1048)
!1052 = !DILocation(line: 397, scope: !1049)
!1053 = !DILocation(line: 0, scope: !838, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 397, scope: !1049)
!1055 = !DILocation(line: 78, scope: !838, inlinedAt: !1054)
!1056 = !DILocation(line: 398, scope: !1049)
!1057 = !DILocation(line: 62, scope: !770, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 399, scope: !671)
!1059 = !DILocation(line: 0, scope: !758, inlinedAt: !1058)
!1060 = !DILocation(line: 0, scope: !848, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 401, scope: !671)
!1062 = !DILocation(line: 120, scope: !848, inlinedAt: !1061)
!1063 = !DILocation(line: 122, scope: !854, inlinedAt: !1061)
!1064 = !DILocation(line: 0, scope: !727, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 122, scope: !854, inlinedAt: !1061)
!1066 = !DILocation(line: 163, scope: !727, inlinedAt: !1065)
!1067 = !DILocation(line: 124, scope: !856, inlinedAt: !1061)
!1068 = !DILocation(line: 0, scope: !857, inlinedAt: !1061)
!1069 = !DILocation(line: 401, scope: !671)
!1070 = !DILocation(line: 402, scope: !671)
!1071 = !DILocation(line: 331, scope: !672)
!1072 = distinct !{!1072, !874, !1073, !139}
!1073 = !DILocation(line: 402, scope: !667)
!1074 = !DILocation(line: 295, scope: !654)
!1075 = distinct !{!1075, !710, !1076, !139}
!1076 = !DILocation(line: 404, scope: !651)
!1077 = distinct !DISubprogram(name: "halide_profiler_report", scope: !3, file: !3, line: 407, type: !249, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !1078)
!1078 = !{!1079, !1080, !1081}
!1079 = !DILocalVariable(name: "user_context", arg: 1, scope: !1077, file: !3, line: 407, type: !56)
!1080 = !DILocalVariable(name: "s", scope: !1077, file: !3, line: 408, type: !6)
!1081 = !DILocalVariable(name: "lock", scope: !1077, file: !3, line: 409, type: !310)
!1082 = !DILocation(line: 0, scope: !1077)
!1083 = !DILocation(line: 408, scope: !1077)
!1084 = !DILocation(line: 409, scope: !1077)
!1085 = !DILocation(line: 0, scope: !328, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 409, scope: !1077)
!1087 = !DILocation(line: 16, scope: !335, inlinedAt: !1086)
!1088 = !DILocation(line: 410, scope: !1077)
!1089 = !DILocation(line: 0, scope: !345, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 411, scope: !1077)
!1091 = !DILocation(line: 20, scope: !350, inlinedAt: !1090)
!1092 = !DILocation(line: 411, scope: !1077)
!1093 = distinct !DISubprogram(name: "halide_profiler_reset_unlocked", scope: !3, file: !3, line: 413, type: !1094, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !1096)
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
!1106 = distinct !{!1106, !1101, !1107, !139}
!1107 = !DILocation(line: 419, scope: !1093)
!1108 = !DILocation(line: 420, scope: !1093)
!1109 = !DILocation(line: 421, scope: !1093)
!1110 = distinct !DISubprogram(name: "halide_profiler_reset", scope: !3, file: !3, line: 423, type: !1111, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null}
!1113 = !{!1114, !1115}
!1114 = !DILocalVariable(name: "s", scope: !1110, file: !3, line: 428, type: !6)
!1115 = !DILocalVariable(name: "lock", scope: !1110, file: !3, line: 429, type: !310)
!1116 = !DILocation(line: 428, scope: !1110)
!1117 = !DILocation(line: 0, scope: !1110)
!1118 = !DILocation(line: 429, scope: !1110)
!1119 = !DILocation(line: 0, scope: !328, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 429, scope: !1110)
!1121 = !DILocation(line: 16, scope: !335, inlinedAt: !1120)
!1122 = !DILocation(line: 430, scope: !1110)
!1123 = !DILocation(line: 0, scope: !345, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 431, scope: !1110)
!1125 = !DILocation(line: 20, scope: !350, inlinedAt: !1124)
!1126 = !DILocation(line: 431, scope: !1110)
!1127 = distinct !DISubprogram(name: "halide_profiler_shutdown", scope: !3, file: !3, line: 437, type: !1111, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !1128)
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
!1140 = distinct !DISubprogram(name: "halide_windows_profiler_shutdown", scope: !415, file: !3, line: 457, type: !1111, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !1141)
!1141 = !{!1142}
!1142 = !DILocalVariable(name: "s", scope: !1140, file: !3, line: 458, type: !6)
!1143 = !DILocation(line: 458, scope: !1140)
!1144 = !DILocation(line: 0, scope: !1140)
!1145 = !DILocation(line: 459, scope: !1140)
!1146 = !DILocation(line: 472, scope: !1140)
!1147 = !DILocation(line: 473, scope: !1140)
!1148 = distinct !DISubprogram(name: "halide_profiler_pipeline_end", scope: !3, file: !3, line: 477, type: !1149, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !1151)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !56, !56}
!1151 = !{!1152, !1153}
!1152 = !DILocalVariable(name: "state", arg: 2, scope: !1148, file: !3, line: 477, type: !56)
!1153 = !DILocalVariable(name: "user_context", arg: 1, scope: !1148, file: !3, line: 477, type: !56)
!1154 = !DILocation(line: 0, scope: !1148)
!1155 = !DILocation(line: 478, scope: !1148)
!1156 = !DILocation(line: 479, scope: !1148)
