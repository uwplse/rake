; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.halide_profiler_state = type { %struct.halide_mutex, i32, i32, i32, i32, %struct.halide_profiler_pipeline_stats*, void (i32*, i32*)*, %struct.halide_thread* }
%struct.halide_mutex = type { [1 x i32] }
%struct.halide_profiler_pipeline_stats = type { i64, i64, i64, i64, i64, i64, i8*, %struct.halide_profiler_func_stats*, i8*, i32, i32, i32, i32, i32 }
%struct.halide_profiler_func_stats = type { i64, i64, i64, i64, i64, i64, i64, i8*, i32 }
%struct.halide_thread = type opaque
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>

@_ZZ25halide_profiler_get_stateE1s = internal global %struct.halide_profiler_state { %struct.halide_mutex zeroinitializer, i32 1, i32 0, i32 0, i32 0, %struct.halide_profiler_pipeline_stats* null, void (i32*, i32*)* null, %struct.halide_thread* null }, align 4, !dbg !0
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
define weak dso_local %struct.halide_profiler_state* @halide_profiler_get_state() local_unnamed_addr #0 !dbg !2 {
  ret %struct.halide_profiler_state* @_ZZ25halide_profiler_get_stateE1s, !dbg !99
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_profiler_pipeline_stats* @_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy(i8* %0, i32 %1, i64* %2) local_unnamed_addr #1 !dbg !100 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !106, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i32 %1, metadata !107, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i64* %2, metadata !108, metadata !DIExpression()), !dbg !115
  %4 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !116
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %4, metadata !109, metadata !DIExpression()), !dbg !115
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 5, !dbg !117
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !110, metadata !DIExpression()), !dbg !118
  %6 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %5, align 4, !dbg !118, !tbaa !119
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %6, metadata !110, metadata !DIExpression()), !dbg !118
  %7 = icmp eq %struct.halide_profiler_pipeline_stats* %6, null, !dbg !123
  br i1 %7, label %22, label %8, !dbg !125

8:                                                ; preds = %3, %17
  %9 = phi %struct.halide_profiler_pipeline_stats* [ %20, %17 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 6, !dbg !126
  %11 = load i8*, i8** %10, align 8, !dbg !126, !tbaa !129
  %12 = icmp eq i8* %11, %0, !dbg !133
  br i1 %12, label %13, label %17, !dbg !134

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 9, !dbg !135
  %15 = load i32, i32* %14, align 4, !dbg !135, !tbaa !136
  %16 = icmp eq i32 %15, %1, !dbg !137
  br i1 %16, label %85, label %17, !dbg !138

17:                                               ; preds = %8, %13
  %18 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 8, !dbg !139
  %19 = bitcast i8** %18 to %struct.halide_profiler_pipeline_stats**, !dbg !139
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !110, metadata !DIExpression()), !dbg !118
  %20 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %19, align 4, !dbg !118, !tbaa !119
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %20, metadata !110, metadata !DIExpression()), !dbg !118
  %21 = icmp eq %struct.halide_profiler_pipeline_stats* %20, null, !dbg !123
  br i1 %21, label %22, label %8, !dbg !125, !llvm.loop !140

22:                                               ; preds = %17, %3
  %23 = tail call i8* @malloc(i32 80) #7, !dbg !143
  %24 = bitcast i8* %23 to %struct.halide_profiler_pipeline_stats*, !dbg !144
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %24, metadata !112, metadata !DIExpression()), !dbg !115
  %25 = icmp eq i8* %23, null, !dbg !145
  br i1 %25, label %85, label %26, !dbg !147

26:                                               ; preds = %22
  %27 = bitcast %struct.halide_profiler_pipeline_stats** %5 to i8**, !dbg !148
  %28 = load i8*, i8** %27, align 4, !dbg !148, !tbaa !149
  %29 = getelementptr inbounds i8, i8* %23, i32 56, !dbg !152
  %30 = bitcast i8* %29 to i8**, !dbg !152
  store i8* %28, i8** %30, align 8, !dbg !153, !tbaa !154
  %31 = getelementptr inbounds i8, i8* %23, i32 48, !dbg !155
  %32 = bitcast i8* %31 to i8**, !dbg !155
  store i8* %0, i8** %32, align 8, !dbg !156, !tbaa !129
  %33 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 2, !dbg !157
  %34 = load i32, i32* %33, align 4, !dbg !157, !tbaa !158
  %35 = getelementptr inbounds i8, i8* %23, i32 64, !dbg !159
  %36 = bitcast i8* %35 to i32*, !dbg !159
  store i32 %34, i32* %36, align 8, !dbg !160, !tbaa !161
  %37 = getelementptr inbounds i8, i8* %23, i32 60, !dbg !162
  %38 = bitcast i8* %37 to i32*, !dbg !162
  store i32 %1, i32* %38, align 4, !dbg !163, !tbaa !136
  %39 = getelementptr inbounds i8, i8* %23, i32 68, !dbg !164
  %40 = bitcast i8* %39 to i32*, !dbg !164
  store i32 0, i32* %40, align 4, !dbg !165, !tbaa !166
  %41 = bitcast i8* %23 to i64*, !dbg !167
  store i64 0, i64* %41, align 8, !dbg !168, !tbaa !169
  %42 = getelementptr inbounds i8, i8* %23, i32 72, !dbg !170
  %43 = bitcast i8* %42 to i32*, !dbg !170
  store i32 0, i32* %43, align 8, !dbg !171, !tbaa !172
  %44 = getelementptr inbounds i8, i8* %23, i32 8, !dbg !173
  %45 = bitcast i8* %44 to i64*, !dbg !173
  store i64 0, i64* %45, align 8, !dbg !174, !tbaa !175
  %46 = getelementptr inbounds i8, i8* %23, i32 16, !dbg !176
  %47 = bitcast i8* %46 to i64*, !dbg !176
  store i64 0, i64* %47, align 8, !dbg !177, !tbaa !178
  %48 = getelementptr inbounds i8, i8* %23, i32 24, !dbg !179
  %49 = bitcast i8* %48 to i64*, !dbg !179
  store i64 0, i64* %49, align 8, !dbg !180, !tbaa !181
  %50 = getelementptr inbounds i8, i8* %23, i32 76, !dbg !182
  %51 = bitcast i8* %50 to i32*, !dbg !182
  store i32 0, i32* %51, align 4, !dbg !183, !tbaa !184
  %52 = getelementptr inbounds i8, i8* %23, i32 32, !dbg !185
  %53 = bitcast i8* %52 to i64*, !dbg !185
  store i64 0, i64* %53, align 8, !dbg !186, !tbaa !187
  %54 = getelementptr inbounds i8, i8* %23, i32 40, !dbg !188
  %55 = bitcast i8* %54 to i64*, !dbg !188
  store i64 0, i64* %55, align 8, !dbg !189, !tbaa !190
  %56 = shl i32 %1, 6, !dbg !191
  %57 = tail call i8* @malloc(i32 %56) #7, !dbg !192
  %58 = getelementptr inbounds i8, i8* %23, i32 52, !dbg !193
  %59 = bitcast i8* %58 to i8**, !dbg !194
  store i8* %57, i8** %59, align 4, !dbg !194, !tbaa !195
  %60 = icmp eq i8* %57, null, !dbg !196
  %61 = bitcast i8* %57 to %struct.halide_profiler_func_stats*, !dbg !198
  br i1 %60, label %64, label %62, !dbg !198

62:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 0, metadata !113, metadata !DIExpression()), !dbg !199
  %63 = icmp sgt i32 %1, 0, !dbg !200
  br i1 %63, label %68, label %65, !dbg !202

64:                                               ; preds = %26
  tail call void @free(i8* nonnull %23) #7, !dbg !203
  br label %85, !dbg !205

65:                                               ; preds = %68, %62
  %66 = load i32, i32* %33, align 4, !dbg !206, !tbaa !158
  %67 = add nsw i32 %66, %1, !dbg !206
  store i32 %67, i32* %33, align 4, !dbg !206, !tbaa !158
  store i8* %23, i8** %27, align 4, !dbg !207, !tbaa !149
  br label %85, !dbg !208

68:                                               ; preds = %62, %68
  %69 = phi i32 [ %83, %68 ], [ 0, %62 ]
  call void @llvm.dbg.value(metadata i32 %69, metadata !113, metadata !DIExpression()), !dbg !199
  %70 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 0, !dbg !209
  store i64 0, i64* %70, align 8, !dbg !211, !tbaa !212
  %71 = getelementptr inbounds i64, i64* %2, i32 %69, !dbg !214
  %72 = load i64, i64* %71, align 8, !dbg !214, !tbaa !215
  %73 = trunc i64 %72 to i32, !dbg !216
  %74 = inttoptr i32 %73 to i8*, !dbg !216
  %75 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 7, !dbg !217
  store i8* %74, i8** %75, align 8, !dbg !218, !tbaa !219
  %76 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 1, !dbg !220
  store i64 0, i64* %76, align 8, !dbg !221, !tbaa !222
  %77 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 2, !dbg !223
  store i64 0, i64* %77, align 8, !dbg !224, !tbaa !225
  %78 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 3, !dbg !226
  store i64 0, i64* %78, align 8, !dbg !227, !tbaa !228
  %79 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 8, !dbg !229
  store i32 0, i32* %79, align 4, !dbg !230, !tbaa !231
  %80 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 4, !dbg !232
  store i64 0, i64* %80, align 8, !dbg !233, !tbaa !234
  %81 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 5, !dbg !235
  store i64 0, i64* %81, align 8, !dbg !236, !tbaa !237
  %82 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %61, i32 %69, i32 6, !dbg !238
  store i64 0, i64* %82, align 8, !dbg !239, !tbaa !240
  %83 = add nuw nsw i32 %69, 1, !dbg !241
  call void @llvm.dbg.value(metadata i32 %83, metadata !113, metadata !DIExpression()), !dbg !199
  %84 = icmp slt i32 %83, %1, !dbg !200
  br i1 %84, label %68, label %65, !dbg !202, !llvm.loop !242

85:                                               ; preds = %13, %64, %65, %22
  %86 = phi %struct.halide_profiler_pipeline_stats* [ %24, %65 ], [ null, %64 ], [ null, %22 ], [ %9, %13 ], !dbg !115
  ret %struct.halide_profiler_pipeline_stats* %86, !dbg !244
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare !dbg !245 dso_local i8* @malloc(i32) local_unnamed_addr #4

declare !dbg !248 dso_local void @free(i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi(%struct.halide_profiler_state* %0, i32 %1, i64 %2, i32 %3) local_unnamed_addr #1 !dbg !251 {
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %0, metadata !255, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 %1, metadata !256, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i64 %2, metadata !257, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 %3, metadata !258, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* null, metadata !259, metadata !DIExpression()), !dbg !267
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i32 0, i32 5, !dbg !268
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !260, metadata !DIExpression()), !dbg !269
  %6 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %5, align 4, !dbg !269, !tbaa !119
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* null, metadata !259, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %6, metadata !260, metadata !DIExpression()), !dbg !269
  %7 = icmp eq %struct.halide_profiler_pipeline_stats* %6, null, !dbg !270
  br i1 %7, label %59, label %8, !dbg !271

8:                                                ; preds = %4, %54
  %9 = phi %struct.halide_profiler_pipeline_stats* [ %57, %54 ], [ %6, %4 ]
  %10 = phi %struct.halide_profiler_pipeline_stats* [ %9, %54 ], [ null, %4 ]
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %10, metadata !259, metadata !DIExpression()), !dbg !267
  %11 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 10, !dbg !272
  %12 = load i32, i32* %11, align 8, !dbg !272, !tbaa !161
  %13 = icmp sgt i32 %12, %1, !dbg !273
  br i1 %13, label %54, label %14, !dbg !274

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 9, !dbg !275
  %16 = load i32, i32* %15, align 4, !dbg !275, !tbaa !136
  %17 = add nsw i32 %16, %12, !dbg !276
  %18 = icmp sgt i32 %17, %1, !dbg !277
  br i1 %18, label %19, label %54, !dbg !278

19:                                               ; preds = %14
  %20 = icmp eq %struct.halide_profiler_pipeline_stats* %10, null, !dbg !279
  br i1 %20, label %26, label %21, !dbg !281

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 8, !dbg !282
  %23 = load i8*, i8** %22, align 8, !dbg !282, !tbaa !154
  %24 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %10, i32 0, i32 8, !dbg !284
  store i8* %23, i8** %24, align 8, !dbg !285, !tbaa !154
  %25 = bitcast i8** %22 to %struct.halide_profiler_pipeline_stats**, !dbg !286
  store %struct.halide_profiler_pipeline_stats* %6, %struct.halide_profiler_pipeline_stats** %25, align 8, !dbg !286, !tbaa !154
  store %struct.halide_profiler_pipeline_stats* %9, %struct.halide_profiler_pipeline_stats** %5, align 4, !dbg !287, !tbaa !149
  br label %26, !dbg !288

26:                                               ; preds = %21, %19
  %27 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 7, !dbg !289
  %28 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %27, align 4, !dbg !289, !tbaa !195
  %29 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %28, i32 %1, !dbg !290
  %30 = sub i32 0, %12, !dbg !291
  %31 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %29, i32 %30, !dbg !291
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* %31, metadata !262, metadata !DIExpression()), !dbg !292
  %32 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %31, i32 0, i32 0, !dbg !293
  %33 = load i64, i64* %32, align 8, !dbg !294, !tbaa !212
  %34 = add i64 %33, %2, !dbg !294
  store i64 %34, i64* %32, align 8, !dbg !294, !tbaa !212
  %35 = sext i32 %3 to i64, !dbg !295
  %36 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %31, i32 0, i32 5, !dbg !296
  %37 = load i64, i64* %36, align 8, !dbg !297, !tbaa !237
  %38 = add i64 %37, %35, !dbg !297
  store i64 %38, i64* %36, align 8, !dbg !297, !tbaa !237
  %39 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %31, i32 0, i32 6, !dbg !298
  %40 = load i64, i64* %39, align 8, !dbg !299, !tbaa !240
  %41 = add i64 %40, 1, !dbg !299
  store i64 %41, i64* %39, align 8, !dbg !299, !tbaa !240
  %42 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 0, !dbg !300
  %43 = load i64, i64* %42, align 8, !dbg !301, !tbaa !169
  %44 = add i64 %43, %2, !dbg !301
  store i64 %44, i64* %42, align 8, !dbg !301, !tbaa !169
  %45 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 12, !dbg !302
  %46 = load i32, i32* %45, align 8, !dbg !303, !tbaa !172
  %47 = add nsw i32 %46, 1, !dbg !303
  store i32 %47, i32* %45, align 8, !dbg !303, !tbaa !172
  %48 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 4, !dbg !304
  %49 = load i64, i64* %48, align 8, !dbg !305, !tbaa !187
  %50 = add i64 %49, %35, !dbg !305
  store i64 %50, i64* %48, align 8, !dbg !305, !tbaa !187
  %51 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 5, !dbg !306
  %52 = load i64, i64* %51, align 8, !dbg !307, !tbaa !190
  %53 = add i64 %52, 1, !dbg !307
  store i64 %53, i64* %51, align 8, !dbg !307, !tbaa !190
  ret void

54:                                               ; preds = %14, %8
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %9, metadata !259, metadata !DIExpression()), !dbg !267
  %55 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i32 0, i32 8, !dbg !308
  %56 = bitcast i8** %55 to %struct.halide_profiler_pipeline_stats**, !dbg !308
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !260, metadata !DIExpression()), !dbg !269
  %57 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %56, align 4, !dbg !269, !tbaa !119
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %57, metadata !260, metadata !DIExpression()), !dbg !269
  %58 = icmp eq %struct.halide_profiler_pipeline_stats* %57, null, !dbg !270
  br i1 %58, label %59, label %8, !dbg !271, !llvm.loop !309

59:                                               ; preds = %54, %4
  ret void, !dbg !311
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv(i8* %0) #5 !dbg !312 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !314, metadata !DIExpression()), !dbg !324
  %4 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !325
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %4, metadata !315, metadata !DIExpression()), !dbg !324
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 0, !dbg !326
  tail call void @halide_mutex_lock(%struct.halide_mutex* %5) #7, !dbg !327
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 3, !dbg !328
  %7 = load i32, i32* %6, align 4, !dbg !328, !tbaa !329
  %8 = icmp eq i32 %7, -2, !dbg !330
  br i1 %8, label %39, label %9, !dbg !331

9:                                                ; preds = %1
  %10 = bitcast i32* %2 to i8*
  %11 = bitcast i32* %3 to i8*
  %12 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 6
  %13 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 4
  %14 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i32 0, i32 1
  br label %18, !dbg !331

15:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 %29, metadata !318, metadata !DIExpression()), !dbg !332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #8, !dbg !333
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #8, !dbg !333
  %16 = load i32, i32* %6, align 4, !dbg !328, !tbaa !329
  %17 = icmp eq i32 %16, -2, !dbg !330
  br i1 %17, label %39, label %18, !dbg !331, !llvm.loop !334

18:                                               ; preds = %9, %15
  %19 = call i64 @halide_current_time_ns(i8* null) #7, !dbg !336
  call void @llvm.dbg.value(metadata i64 %19, metadata !316, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.value(metadata i64 %19, metadata !318, metadata !DIExpression()), !dbg !332
  br label %20, !dbg !337

20:                                               ; preds = %37, %18
  %21 = phi i64 [ %19, %18 ], [ %29, %37 ], !dbg !338
  call void @llvm.dbg.value(metadata i64 %21, metadata !318, metadata !DIExpression()), !dbg !332
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #8, !dbg !339
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #8, !dbg !339
  %22 = load void (i32*, i32*)*, void (i32*, i32*)** %12, align 4, !dbg !340, !tbaa !342
  %23 = icmp eq void (i32*, i32*)* %22, null, !dbg !343
  br i1 %23, label %25, label %24, !dbg !344

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32* %2, metadata !319, metadata !DIExpression(DW_OP_deref)), !dbg !345
  call void @llvm.dbg.value(metadata i32* %3, metadata !321, metadata !DIExpression(DW_OP_deref)), !dbg !345
  call void %22(i32* nonnull %2, i32* nonnull %3) #7, !dbg !346
  br label %28, !dbg !348

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4, !dbg !349, !tbaa !329
  call void @llvm.dbg.value(metadata i32 %26, metadata !319, metadata !DIExpression()), !dbg !345
  store i32 %26, i32* %2, align 4, !dbg !351, !tbaa !352
  %27 = load i32, i32* %13, align 4, !dbg !353, !tbaa !354
  call void @llvm.dbg.value(metadata i32 %27, metadata !321, metadata !DIExpression()), !dbg !345
  store i32 %27, i32* %3, align 4, !dbg !355, !tbaa !352
  br label %28

28:                                               ; preds = %25, %24
  %29 = call i64 @halide_current_time_ns(i8* null) #7, !dbg !356
  call void @llvm.dbg.value(metadata i64 %29, metadata !322, metadata !DIExpression()), !dbg !345
  %30 = load i32, i32* %2, align 4, !dbg !357, !tbaa !352
  call void @llvm.dbg.value(metadata i32 %30, metadata !319, metadata !DIExpression()), !dbg !345
  %31 = icmp eq i32 %30, -2, !dbg !359
  br i1 %31, label %15, label %32, !dbg !360

32:                                               ; preds = %28
  %33 = icmp sgt i32 %30, -1, !dbg !361
  br i1 %33, label %34, label %37, !dbg !363

34:                                               ; preds = %32
  %35 = sub i64 %29, %21, !dbg !364
  %36 = load i32, i32* %3, align 4, !dbg !366, !tbaa !352
  call void @llvm.dbg.value(metadata i32 %36, metadata !321, metadata !DIExpression()), !dbg !345
  call void @_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi(%struct.halide_profiler_state* nonnull %4, i32 %30, i64 %35, i32 %36) #6, !dbg !367
  br label %37, !dbg !368

37:                                               ; preds = %34, %32
  call void @llvm.dbg.value(metadata i64 %29, metadata !318, metadata !DIExpression()), !dbg !332
  %38 = load i32, i32* %14, align 4, !dbg !369, !tbaa !370
  call void @llvm.dbg.value(metadata i32 %38, metadata !323, metadata !DIExpression()), !dbg !345
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %5) #7, !dbg !371
  call void @halide_sleep_ms(i8* null, i32 %38) #7, !dbg !372
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull %5) #7, !dbg !373
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #8, !dbg !333
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #8, !dbg !333
  br label %20

39:                                               ; preds = %15, %1
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %5) #7, !dbg !374
  ret void, !dbg !375
}

declare !dbg !376 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #4

declare !dbg !380 extern_weak dso_local i64 @halide_current_time_ns(i8*) local_unnamed_addr #4

declare !dbg !384 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #4

declare !dbg !385 extern_weak dso_local void @halide_sleep_ms(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
define weak dso_local %struct.halide_profiler_pipeline_stats* @halide_profiler_get_pipeline_state(i8* %0) local_unnamed_addr #5 !dbg !388 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !392, metadata !DIExpression()), !dbg !408
  %2 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !409
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %2, metadata !393, metadata !DIExpression()), !dbg !408
  %3 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i32 0, i32 0, !dbg !410
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !411, metadata !DIExpression()) #8, !dbg !416
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !414, metadata !DIExpression()) #8, !dbg !416
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !394, metadata !DIExpression()), !dbg !408
  tail call void @halide_mutex_lock(%struct.halide_mutex* %3) #7, !dbg !418
  %4 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i32 0, i32 5, !dbg !420
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !406, metadata !DIExpression()), !dbg !421
  %5 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %4, align 4, !dbg !421, !tbaa !119
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %5, metadata !406, metadata !DIExpression()), !dbg !421
  %6 = icmp eq %struct.halide_profiler_pipeline_stats* %5, null, !dbg !422
  br i1 %6, label %17, label %7, !dbg !424

7:                                                ; preds = %1, %12
  %8 = phi %struct.halide_profiler_pipeline_stats* [ %15, %12 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %8, i32 0, i32 6, !dbg !425
  %10 = load i8*, i8** %9, align 8, !dbg !425, !tbaa !129
  %11 = icmp eq i8* %10, %0, !dbg !428
  br i1 %11, label %17, label %12, !dbg !429

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %8, i32 0, i32 8, !dbg !430
  %14 = bitcast i8** %13 to %struct.halide_profiler_pipeline_stats**, !dbg !430
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !406, metadata !DIExpression()), !dbg !421
  %15 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %14, align 4, !dbg !421, !tbaa !119
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %15, metadata !406, metadata !DIExpression()), !dbg !421
  %16 = icmp eq %struct.halide_profiler_pipeline_stats* %15, null, !dbg !422
  br i1 %16, label %17, label %7, !dbg !424, !llvm.loop !431

17:                                               ; preds = %12, %7, %1
  %18 = phi %struct.halide_profiler_pipeline_stats* [ null, %1 ], [ %8, %7 ], [ null, %12 ], !dbg !421
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !433, metadata !DIExpression()) #8, !dbg !436
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %3) #7, !dbg !438
  ret %struct.halide_profiler_pipeline_stats* %18, !dbg !440
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_profiler_pipeline_start(i8* %0, i8* %1, i32 %2, i64* %3) local_unnamed_addr #5 !dbg !441 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !445, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i8* %1, metadata !446, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i32 %2, metadata !447, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i64* %3, metadata !448, metadata !DIExpression()), !dbg !452
  %5 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !453
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %5, metadata !449, metadata !DIExpression()), !dbg !452
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %5, i32 0, i32 0, !dbg !454
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !411, metadata !DIExpression()) #8, !dbg !455
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %6, metadata !414, metadata !DIExpression()) #8, !dbg !455
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %6, metadata !450, metadata !DIExpression()), !dbg !452
  tail call void @halide_mutex_lock(%struct.halide_mutex* %6) #7, !dbg !457
  %7 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %5, i32 0, i32 7, !dbg !458
  %8 = load %struct.halide_thread*, %struct.halide_thread** %7, align 4, !dbg !458, !tbaa !460
  %9 = icmp eq %struct.halide_thread* %8, null, !dbg !461
  br i1 %9, label %10, label %13, !dbg !462

10:                                               ; preds = %4
  %11 = tail call i32 @halide_start_clock(i8* %0) #7, !dbg !463
  %12 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv, i8* null) #7, !dbg !465
  store %struct.halide_thread* %12, %struct.halide_thread** %7, align 4, !dbg !466, !tbaa !460
  br label %13, !dbg !467

13:                                               ; preds = %10, %4
  %14 = tail call %struct.halide_profiler_pipeline_stats* @_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy(i8* %1, i32 %2, i64* %3) #6, !dbg !468
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %14, metadata !451, metadata !DIExpression()), !dbg !452
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null, !dbg !469
  br i1 %15, label %16, label %18, !dbg !471

16:                                               ; preds = %13
  %17 = tail call i32 @halide_error_out_of_memory(i8* %0) #7, !dbg !472
  br label %24, !dbg !474

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %14, i32 0, i32 11, !dbg !475
  %20 = load i32, i32* %19, align 4, !dbg !476, !tbaa !166
  %21 = add nsw i32 %20, 1, !dbg !476
  store i32 %21, i32* %19, align 4, !dbg !476, !tbaa !166
  %22 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %14, i32 0, i32 10, !dbg !477
  %23 = load i32, i32* %22, align 8, !dbg !477, !tbaa !161
  br label %24, !dbg !478

24:                                               ; preds = %18, %16
  %25 = phi i32 [ %23, %18 ], [ %17, %16 ], !dbg !452
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !433, metadata !DIExpression()) #8, !dbg !479
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %6) #7, !dbg !481
  ret i32 %25, !dbg !482
}

declare !dbg !483 extern_weak dso_local i32 @halide_start_clock(i8*) local_unnamed_addr #4

declare !dbg !486 dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)*, i8*) local_unnamed_addr #4

declare !dbg !490 dso_local i32 @halide_error_out_of_memory(i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_stack_peak_update(i8* %0, i8* %1, i64* %2) local_unnamed_addr #1 !dbg !491 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !496, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i8* %1, metadata !497, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i64* %2, metadata !498, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i8* %1, metadata !499, metadata !DIExpression()), !dbg !502
  %4 = icmp eq i8* %1, null, !dbg !503
  br i1 %4, label %5, label %6, !dbg !506

5:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i32 0, i32 0)) #7, !dbg !507
  tail call void @abort() #7, !dbg !507
  br label %6, !dbg !507

6:                                                ; preds = %5, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !500, metadata !DIExpression()), !dbg !509
  %7 = getelementptr inbounds i8, i8* %1, i32 60, !dbg !510
  %8 = bitcast i8* %7 to i32*, !dbg !510
  %9 = load i32, i32* %8, align 4, !dbg !510, !tbaa !136
  %10 = icmp sgt i32 %9, 0, !dbg !512
  br i1 %10, label %11, label %14, !dbg !513

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %1, i32 52
  %13 = bitcast i8* %12 to %struct.halide_profiler_func_stats**
  br label %15, !dbg !513

14:                                               ; preds = %34, %6
  ret void, !dbg !514

15:                                               ; preds = %11, %34
  %16 = phi i32 [ %9, %11 ], [ %35, %34 ]
  %17 = phi i32 [ 0, %11 ], [ %36, %34 ]
  call void @llvm.dbg.value(metadata i32 %17, metadata !500, metadata !DIExpression()), !dbg !509
  %18 = getelementptr inbounds i64, i64* %2, i32 %17, !dbg !515
  %19 = load i64, i64* %18, align 8, !dbg !515, !tbaa !215
  %20 = icmp eq i64 %19, 0, !dbg !518
  br i1 %20, label %34, label %21, !dbg !519

21:                                               ; preds = %15
  %22 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %13, align 4, !dbg !520, !tbaa !195
  %23 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %22, i32 %17, i32 4, !dbg !522
  call void @llvm.dbg.value(metadata i64* %23, metadata !523, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i64 %19, metadata !530, metadata !DIExpression()), !dbg !536
  %24 = load i64, i64* %23, align 8, !dbg !538, !tbaa !215
  call void @llvm.dbg.value(metadata i64 %24, metadata !531, metadata !DIExpression()), !dbg !536
  br label %25, !dbg !539

25:                                               ; preds = %28, %21
  %26 = phi i64 [ %24, %21 ], [ %30, %28 ], !dbg !536
  call void @llvm.dbg.value(metadata i64 %26, metadata !531, metadata !DIExpression()), !dbg !536
  %27 = icmp ult i64 %26, %19, !dbg !540
  br i1 %27, label %28, label %32, !dbg !539

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %26, metadata !532, metadata !DIExpression()), !dbg !541
  %29 = cmpxchg i64* %23, i64 %26, i64 %19 seq_cst seq_cst, !dbg !542
  %30 = extractvalue { i64, i1 } %29, 0, !dbg !542
  call void @llvm.dbg.value(metadata i64 %30, metadata !531, metadata !DIExpression()), !dbg !536
  %31 = icmp eq i64 %26, %30, !dbg !543
  br i1 %31, label %32, label %25, !llvm.loop !545

32:                                               ; preds = %25, %28
  %33 = load i32, i32* %8, align 4, !dbg !510, !tbaa !136
  br label %34, !dbg !547

34:                                               ; preds = %32, %15
  %35 = phi i32 [ %33, %32 ], [ %16, %15 ], !dbg !510
  %36 = add nuw nsw i32 %17, 1, !dbg !547
  call void @llvm.dbg.value(metadata i32 %36, metadata !500, metadata !DIExpression()), !dbg !509
  %37 = icmp slt i32 %36, %35, !dbg !512
  br i1 %37, label %15, label %14, !dbg !513, !llvm.loop !548
}

declare !dbg !550 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #4

declare !dbg !553 dso_local void @abort() local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_memory_allocate(i8* %0, i8* %1, i32 %2, i64 %3) local_unnamed_addr #1 !dbg !556 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i8* %1, metadata !561, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 %2, metadata !562, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 %3, metadata !563, metadata !DIExpression()), !dbg !568
  %5 = icmp eq i64 %3, 0, !dbg !569
  br i1 %5, label %59, label %6, !dbg !571

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %1, metadata !564, metadata !DIExpression()), !dbg !568
  %7 = icmp eq i8* %1, null, !dbg !572
  br i1 %7, label %8, label %9, !dbg !575

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !576
  tail call void @abort() #7, !dbg !576
  br label %9, !dbg !576

9:                                                ; preds = %6, %8
  %10 = icmp sgt i32 %2, -1, !dbg !578
  br i1 %10, label %12, label %11, !dbg !581

11:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !582
  tail call void @abort() #7, !dbg !582
  br label %12, !dbg !582

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds i8, i8* %1, i32 60, !dbg !584
  %14 = bitcast i8* %13 to i32*, !dbg !584
  %15 = load i32, i32* %14, align 4, !dbg !584, !tbaa !136
  %16 = icmp sgt i32 %15, %2, !dbg !584
  br i1 %16, label %18, label %17, !dbg !587

17:                                               ; preds = %12
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !588
  tail call void @abort() #7, !dbg !588
  br label %18, !dbg !588

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds i8, i8* %1, i32 52, !dbg !590
  %20 = bitcast i8* %19 to %struct.halide_profiler_func_stats**, !dbg !590
  %21 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %20, align 4, !dbg !590, !tbaa !195
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* undef, metadata !565, metadata !DIExpression()), !dbg !568
  %22 = getelementptr inbounds i8, i8* %1, i32 76, !dbg !591
  %23 = bitcast i8* %22 to i32*, !dbg !591
  %24 = atomicrmw add i32* %23, i32 1 seq_cst, !dbg !592
  %25 = getelementptr inbounds i8, i8* %1, i32 24, !dbg !593
  %26 = bitcast i8* %25 to i64*, !dbg !593
  %27 = atomicrmw add i64* %26, i64 %3 seq_cst, !dbg !594
  %28 = getelementptr inbounds i8, i8* %1, i32 8, !dbg !595
  %29 = bitcast i8* %28 to i64*, !dbg !595
  %30 = atomicrmw add i64* %29, i64 %3 seq_cst, !dbg !596
  %31 = add i64 %30, %3, !dbg !596
  call void @llvm.dbg.value(metadata i64 %31, metadata !566, metadata !DIExpression()), !dbg !568
  %32 = getelementptr inbounds i8, i8* %1, i32 16, !dbg !597
  %33 = bitcast i8* %32 to i64*, !dbg !597
  call void @llvm.dbg.value(metadata i64* %33, metadata !523, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i64 %31, metadata !530, metadata !DIExpression()), !dbg !598
  %34 = load i64, i64* %33, align 8, !dbg !600, !tbaa !215
  call void @llvm.dbg.value(metadata i64 %34, metadata !531, metadata !DIExpression()), !dbg !598
  br label %35, !dbg !601

35:                                               ; preds = %38, %18
  %36 = phi i64 [ %34, %18 ], [ %40, %38 ], !dbg !598
  call void @llvm.dbg.value(metadata i64 %36, metadata !531, metadata !DIExpression()), !dbg !598
  %37 = icmp ult i64 %36, %31, !dbg !602
  br i1 %37, label %38, label %42, !dbg !601

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %36, metadata !532, metadata !DIExpression()), !dbg !603
  %39 = cmpxchg i64* %33, i64 %36, i64 %31 seq_cst seq_cst, !dbg !604
  %40 = extractvalue { i64, i1 } %39, 0, !dbg !604
  call void @llvm.dbg.value(metadata i64 %40, metadata !531, metadata !DIExpression()), !dbg !598
  %41 = icmp eq i64 %36, %40, !dbg !605
  br i1 %41, label %42, label %35, !llvm.loop !606

42:                                               ; preds = %35, %38
  %43 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i32 %2, i32 8, !dbg !608
  %44 = atomicrmw add i32* %43, i32 1 seq_cst, !dbg !609
  %45 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i32 %2, i32 3, !dbg !610
  %46 = atomicrmw add i64* %45, i64 %3 seq_cst, !dbg !611
  %47 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i32 %2, i32 1, !dbg !612
  %48 = atomicrmw add i64* %47, i64 %3 seq_cst, !dbg !613
  %49 = add i64 %48, %3, !dbg !613
  call void @llvm.dbg.value(metadata i64 %49, metadata !567, metadata !DIExpression()), !dbg !568
  %50 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i32 %2, i32 2, !dbg !614
  call void @llvm.dbg.value(metadata i64* %50, metadata !523, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i64 %49, metadata !530, metadata !DIExpression()), !dbg !615
  %51 = load i64, i64* %50, align 8, !dbg !617, !tbaa !215
  call void @llvm.dbg.value(metadata i64 %51, metadata !531, metadata !DIExpression()), !dbg !615
  br label %52, !dbg !618

52:                                               ; preds = %55, %42
  %53 = phi i64 [ %51, %42 ], [ %57, %55 ], !dbg !615
  call void @llvm.dbg.value(metadata i64 %53, metadata !531, metadata !DIExpression()), !dbg !615
  %54 = icmp ult i64 %53, %49, !dbg !619
  br i1 %54, label %55, label %59, !dbg !618

55:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i64 %53, metadata !532, metadata !DIExpression()), !dbg !620
  %56 = cmpxchg i64* %50, i64 %53, i64 %49 seq_cst seq_cst, !dbg !621
  %57 = extractvalue { i64, i1 } %56, 0, !dbg !621
  call void @llvm.dbg.value(metadata i64 %57, metadata !531, metadata !DIExpression()), !dbg !615
  %58 = icmp eq i64 %53, %57, !dbg !622
  br i1 %58, label %59, label %52, !llvm.loop !623

59:                                               ; preds = %55, %52, %4
  ret void, !dbg !625
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_memory_free(i8* %0, i8* %1, i32 %2, i64 %3) local_unnamed_addr #1 !dbg !626 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !628, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i8* %1, metadata !629, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i32 %2, metadata !630, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i64 %3, metadata !631, metadata !DIExpression()), !dbg !634
  %5 = icmp eq i64 %3, 0, !dbg !635
  br i1 %5, label %27, label %6, !dbg !637

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %1, metadata !632, metadata !DIExpression()), !dbg !634
  %7 = icmp eq i8* %1, null, !dbg !638
  br i1 %7, label %8, label %9, !dbg !641

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !642
  tail call void @abort() #7, !dbg !642
  br label %9, !dbg !642

9:                                                ; preds = %6, %8
  %10 = icmp sgt i32 %2, -1, !dbg !644
  br i1 %10, label %12, label %11, !dbg !647

11:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !648
  tail call void @abort() #7, !dbg !648
  br label %12, !dbg !648

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds i8, i8* %1, i32 60, !dbg !650
  %14 = bitcast i8* %13 to i32*, !dbg !650
  %15 = load i32, i32* %14, align 4, !dbg !650, !tbaa !136
  %16 = icmp sgt i32 %15, %2, !dbg !650
  br i1 %16, label %18, label %17, !dbg !653

17:                                               ; preds = %12
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !654
  tail call void @abort() #7, !dbg !654
  br label %18, !dbg !654

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds i8, i8* %1, i32 52, !dbg !656
  %20 = bitcast i8* %19 to %struct.halide_profiler_func_stats**, !dbg !656
  %21 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %20, align 4, !dbg !656, !tbaa !195
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* undef, metadata !633, metadata !DIExpression()), !dbg !634
  %22 = getelementptr inbounds i8, i8* %1, i32 8, !dbg !657
  %23 = bitcast i8* %22 to i64*, !dbg !657
  %24 = atomicrmw sub i64* %23, i64 %3 seq_cst, !dbg !658
  %25 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i32 %2, i32 1, !dbg !659
  %26 = atomicrmw sub i64* %25, i64 %3 seq_cst, !dbg !660
  br label %27

27:                                               ; preds = %4, %18
  ret void, !dbg !661
}

; Function Attrs: nounwind
define weak dso_local void @halide_profiler_report_unlocked(i8* %0, %struct.halide_profiler_state* %1) local_unnamed_addr #5 !dbg !662 {
  %3 = alloca [1024 x i8], align 1
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !666, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %1, metadata !667, metadata !DIExpression()), !dbg !818
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i32 0, i32 0, !dbg !819
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %5) #8, !dbg !819
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !668, metadata !DIExpression()), !dbg !820
  %6 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*, !dbg !821
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %6) #8, !dbg !821
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !672, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !823, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i8* %0, metadata !826, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i8* %5, metadata !827, metadata !DIExpression()), !dbg !829
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 3, !dbg !831
  store i8* %0, i8** %7, align 4, !dbg !831, !tbaa !832
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 4, !dbg !835
  store i8 0, i8* %8, align 4, !dbg !835, !tbaa !836
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 0, !dbg !837
  store i8* %5, i8** %9, align 4, !dbg !842
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 1, !dbg !843
  store i8* %5, i8** %10, align 4, !dbg !844, !tbaa !845
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i32 0, i32 1023, !dbg !846
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 2, !dbg !849
  store i8* %11, i8** %12, align 4, !dbg !850, !tbaa !851
  store i8 0, i8* %11, align 1, !dbg !852, !tbaa !853
  %13 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i32 0, i32 5, !dbg !854
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !787, metadata !DIExpression()), !dbg !855
  %14 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %13, align 4, !dbg !855, !tbaa !119
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %14, metadata !787, metadata !DIExpression()), !dbg !855
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null, !dbg !856
  br i1 %15, label %21, label %40, !dbg !857

16:                                               ; preds = %429
  %17 = load i8*, i8** %9, align 4, !dbg !858, !tbaa !865
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !863, metadata !DIExpression()) #8, !dbg !866
  %18 = icmp eq i8* %17, null, !dbg !858
  br i1 %18, label %19, label %21, !dbg !867

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 4, !dbg !868, !tbaa !832
  call void @halide_error(i8* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0)) #7, !dbg !870
  br label %31, !dbg !871

21:                                               ; preds = %2, %16
  %22 = phi i8* [ %17, %16 ], [ %5, %2 ]
  %23 = load i8*, i8** %10, align 4, !dbg !872, !tbaa !845
  %24 = load i8*, i8** %7, align 4, !dbg !872, !tbaa !832
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !874, metadata !DIExpression()) #8, !dbg !877
  %25 = ptrtoint i8* %23 to i32, !dbg !879
  %26 = ptrtoint i8* %22 to i32, !dbg !879
  %27 = sub i32 1, %26, !dbg !879
  %28 = add i32 %27, %25, !dbg !880
  %29 = sext i32 %28 to i64, !dbg !881
  %30 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %24, i8* nonnull %22, i64 %29) #7, !dbg !882
  br label %31

31:                                               ; preds = %21, %19
  %32 = load i8, i8* %8, align 4, !dbg !883, !tbaa !836, !range !885
  %33 = icmp eq i8 %32, 0, !dbg !883
  br i1 %33, label %39, label %34, !dbg !886

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 4, !dbg !887, !tbaa !865
  %36 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 5, i32 0, !dbg !888
  %37 = icmp eq i8* %35, %36, !dbg !889
  br i1 %37, label %39, label %38, !dbg !890

38:                                               ; preds = %34
  call void @free(i8* %35) #7, !dbg !891
  br label %39, !dbg !893

39:                                               ; preds = %31, %34, %38
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %6) #8, !dbg !894
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %5) #8, !dbg !894
  ret void, !dbg !894

40:                                               ; preds = %2, %429
  %41 = phi %struct.halide_profiler_pipeline_stats* [ %432, %429 ], [ %14, %2 ]
  %42 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 0, !dbg !895
  %43 = load i64, i64* %42, align 8, !dbg !895, !tbaa !169
  %44 = uitofp i64 %43 to float, !dbg !896
  %45 = fdiv float %44, 1.000000e+06, !dbg !897
  call void @llvm.dbg.value(metadata float %45, metadata !789, metadata !DIExpression()), !dbg !898
  %46 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 11, !dbg !899
  %47 = load i32, i32* %46, align 4, !dbg !899, !tbaa !166
  %48 = icmp eq i32 %47, 0, !dbg !901
  br i1 %48, label %429, label %49, !dbg !902

49:                                               ; preds = %40
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !903, metadata !DIExpression()), !dbg !906
  %50 = load i8*, i8** %9, align 4, !dbg !908, !tbaa !865
  store i8* %50, i8** %10, align 4, !dbg !909, !tbaa !845
  %51 = icmp eq i8* %50, null, !dbg !910
  br i1 %51, label %53, label %52, !dbg !912

52:                                               ; preds = %49
  store i8 0, i8* %50, align 1, !dbg !913, !tbaa !853
  br label %53, !dbg !915

53:                                               ; preds = %49, %52
  call void @llvm.dbg.value(metadata i32 0, metadata !792, metadata !DIExpression()), !dbg !898
  %54 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 13, !dbg !916
  %55 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 4, !dbg !918
  %56 = load i64, i64* %55, align 8, !dbg !918, !tbaa !187
  %57 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 5, !dbg !919
  %58 = load i64, i64* %57, align 8, !dbg !919, !tbaa !190
  %59 = icmp eq i64 %56, %58, !dbg !920
  call void @llvm.dbg.value(metadata i1 %59, metadata !793, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !898
  call void @llvm.dbg.value(metadata float undef, metadata !794, metadata !DIExpression()), !dbg !898
  %60 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 6, !dbg !921
  %61 = load i8*, i8** %60, align 8, !dbg !921, !tbaa !129
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !926
  call void @llvm.dbg.value(metadata i8* %61, metadata !925, metadata !DIExpression()) #8, !dbg !926
  %62 = icmp eq i8* %61, null, !dbg !928
  %63 = load i8*, i8** %10, align 4, !dbg !930, !tbaa !845
  %64 = load i8*, i8** %12, align 4, !dbg !930, !tbaa !851
  br i1 %62, label %65, label %67, !dbg !931

65:                                               ; preds = %53
  %66 = call i8* @halide_string_to_string(i8* %63, i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0)) #7, !dbg !932
  br label %69, !dbg !934

67:                                               ; preds = %53
  %68 = call i8* @halide_string_to_string(i8* %63, i8* %64, i8* nonnull %61) #7, !dbg !935
  br label %69

69:                                               ; preds = %65, %67
  %70 = phi i8* [ %68, %67 ], [ %66, %65 ], !dbg !930
  store i8* %70, i8** %10, align 4, !dbg !930, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !937
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !937
  %71 = load i8*, i8** %12, align 4, !dbg !939, !tbaa !851
  %72 = call i8* @halide_string_to_string(i8* %70, i8* %71, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !940
  store i8* %72, i8** %10, align 4, !dbg !941, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !942
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !942
  %73 = load i8*, i8** %12, align 4, !dbg !944, !tbaa !851
  %74 = call i8* @halide_string_to_string(i8* %72, i8* %73, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !945
  store i8* %74, i8** %10, align 4, !dbg !946, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !947, metadata !DIExpression()) #8, !dbg !951
  call void @llvm.dbg.value(metadata float %45, metadata !950, metadata !DIExpression()) #8, !dbg !951
  %75 = load i8*, i8** %12, align 4, !dbg !953, !tbaa !851
  %76 = fpext float %45 to double, !dbg !954
  %77 = call i8* @halide_double_to_string(i8* %74, i8* %75, double %76, i32 0) #7, !dbg !955
  store i8* %77, i8** %10, align 4, !dbg !956, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !957
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !957
  %78 = load i8*, i8** %12, align 4, !dbg !959, !tbaa !851
  %79 = call i8* @halide_string_to_string(i8* %77, i8* %78, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)) #7, !dbg !960
  store i8* %79, i8** %10, align 4, !dbg !961, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !962
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !962
  %80 = load i8*, i8** %12, align 4, !dbg !964, !tbaa !851
  %81 = call i8* @halide_string_to_string(i8* %79, i8* %80, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)) #7, !dbg !965
  store i8* %81, i8** %10, align 4, !dbg !966, !tbaa !845
  %82 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 12, !dbg !967
  %83 = load i32, i32* %82, align 8, !dbg !967, !tbaa !172
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !968, metadata !DIExpression()) #8, !dbg !972
  call void @llvm.dbg.value(metadata i32 %83, metadata !971, metadata !DIExpression()) #8, !dbg !972
  %84 = load i8*, i8** %12, align 4, !dbg !974, !tbaa !851
  %85 = sext i32 %83 to i64, !dbg !975
  %86 = call i8* @halide_int64_to_string(i8* %81, i8* %84, i64 %85, i32 1) #7, !dbg !976
  store i8* %86, i8** %10, align 4, !dbg !977, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !978
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !978
  %87 = load i8*, i8** %12, align 4, !dbg !980, !tbaa !851
  %88 = call i8* @halide_string_to_string(i8* %86, i8* %87, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !981
  store i8* %88, i8** %10, align 4, !dbg !982, !tbaa !845
  %89 = load i32, i32* %46, align 4, !dbg !983, !tbaa !166
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !968, metadata !DIExpression()) #8, !dbg !984
  call void @llvm.dbg.value(metadata i32 %89, metadata !971, metadata !DIExpression()) #8, !dbg !984
  %90 = load i8*, i8** %12, align 4, !dbg !986, !tbaa !851
  %91 = sext i32 %89 to i64, !dbg !987
  %92 = call i8* @halide_int64_to_string(i8* %88, i8* %90, i64 %91, i32 1) #7, !dbg !988
  store i8* %92, i8** %10, align 4, !dbg !989, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !990
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !990
  %93 = load i8*, i8** %12, align 4, !dbg !992, !tbaa !851
  %94 = call i8* @halide_string_to_string(i8* %92, i8* %93, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)) #7, !dbg !993
  store i8* %94, i8** %10, align 4, !dbg !994, !tbaa !845
  %95 = load i32, i32* %46, align 4, !dbg !995, !tbaa !166
  %96 = sitofp i32 %95 to float, !dbg !996
  %97 = fdiv float %45, %96, !dbg !997
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !947, metadata !DIExpression()) #8, !dbg !998
  call void @llvm.dbg.value(metadata float %97, metadata !950, metadata !DIExpression()) #8, !dbg !998
  %98 = load i8*, i8** %12, align 4, !dbg !1000, !tbaa !851
  %99 = fpext float %97 to double, !dbg !1001
  %100 = call i8* @halide_double_to_string(i8* %94, i8* %98, double %99, i32 0) #7, !dbg !1002
  store i8* %100, i8** %10, align 4, !dbg !1003, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1004
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1004
  %101 = load i8*, i8** %12, align 4, !dbg !1006, !tbaa !851
  %102 = call i8* @halide_string_to_string(i8* %100, i8* %101, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #7, !dbg !1007
  store i8* %102, i8** %10, align 4, !dbg !1008, !tbaa !845
  br i1 %59, label %116, label %103, !dbg !1009

103:                                              ; preds = %69
  %104 = uitofp i64 %56 to double, !dbg !1010
  %105 = uitofp i64 %58 to double, !dbg !1011
  %106 = fadd double %105, 1.000000e-10, !dbg !1012
  %107 = fdiv double %104, %106, !dbg !1013
  %108 = fptrunc double %107 to float, !dbg !1010
  call void @llvm.dbg.value(metadata float %108, metadata !794, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1014
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1014
  %109 = load i8*, i8** %12, align 4, !dbg !1018, !tbaa !851
  %110 = call i8* @halide_string_to_string(i8* %102, i8* %109, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0)) #7, !dbg !1019
  store i8* %110, i8** %10, align 4, !dbg !1020, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !947, metadata !DIExpression()) #8, !dbg !1021
  call void @llvm.dbg.value(metadata float %108, metadata !950, metadata !DIExpression()) #8, !dbg !1021
  %111 = load i8*, i8** %12, align 4, !dbg !1023, !tbaa !851
  %112 = fpext float %108 to double, !dbg !1024
  %113 = call i8* @halide_double_to_string(i8* %110, i8* %111, double %112, i32 0) #7, !dbg !1025
  store i8* %113, i8** %10, align 4, !dbg !1026, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1027
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1027
  %114 = load i8*, i8** %12, align 4, !dbg !1029, !tbaa !851
  %115 = call i8* @halide_string_to_string(i8* %113, i8* %114, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !1030
  store i8* %115, i8** %10, align 4, !dbg !1031, !tbaa !845
  br label %116, !dbg !1032

116:                                              ; preds = %103, %69
  %117 = phi i8* [ %115, %103 ], [ %102, %69 ], !dbg !1033
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1035
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1035
  %118 = load i8*, i8** %12, align 4, !dbg !1036, !tbaa !851
  %119 = call i8* @halide_string_to_string(i8* %117, i8* %118, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #7, !dbg !1037
  store i8* %119, i8** %10, align 4, !dbg !1038, !tbaa !845
  %120 = load i32, i32* %54, align 4, !dbg !1039, !tbaa !184
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !968, metadata !DIExpression()) #8, !dbg !1040
  call void @llvm.dbg.value(metadata i32 %120, metadata !971, metadata !DIExpression()) #8, !dbg !1040
  %121 = load i8*, i8** %12, align 4, !dbg !1042, !tbaa !851
  %122 = sext i32 %120 to i64, !dbg !1043
  %123 = call i8* @halide_int64_to_string(i8* %119, i8* %121, i64 %122, i32 1) #7, !dbg !1044
  store i8* %123, i8** %10, align 4, !dbg !1045, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1046
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1046
  %124 = load i8*, i8** %12, align 4, !dbg !1048, !tbaa !851
  %125 = call i8* @halide_string_to_string(i8* %123, i8* %124, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0)) #7, !dbg !1049
  store i8* %125, i8** %10, align 4, !dbg !1050, !tbaa !845
  %126 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 2, !dbg !1051
  %127 = load i64, i64* %126, align 8, !dbg !1051, !tbaa !178
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !1052, metadata !DIExpression()) #8, !dbg !1056
  call void @llvm.dbg.value(metadata i64 %127, metadata !1055, metadata !DIExpression()) #8, !dbg !1056
  %128 = load i8*, i8** %12, align 4, !dbg !1058, !tbaa !851
  %129 = call i8* @halide_uint64_to_string(i8* %125, i8* %128, i64 %127, i32 1) #7, !dbg !1059
  store i8* %129, i8** %10, align 4, !dbg !1060, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1061
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1061
  %130 = load i8*, i8** %12, align 4, !dbg !1063, !tbaa !851
  %131 = call i8* @halide_string_to_string(i8* %129, i8* %130, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)) #7, !dbg !1064
  store i8* %131, i8** %10, align 4, !dbg !1065, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !1066, metadata !DIExpression()) #8, !dbg !1069
  %132 = load i8*, i8** %9, align 4, !dbg !1071, !tbaa !865
  %133 = icmp eq i8* %132, null, !dbg !1071
  br i1 %133, label %143, label %134, !dbg !1073

134:                                              ; preds = %116
  %135 = load i8*, i8** %7, align 4, !dbg !1074, !tbaa !832
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !874, metadata !DIExpression()) #8, !dbg !1078
  %136 = ptrtoint i8* %131 to i32, !dbg !1080
  %137 = ptrtoint i8* %132 to i32, !dbg !1080
  %138 = add i32 %136, 1, !dbg !1080
  %139 = sub i32 %138, %137, !dbg !1081
  %140 = sext i32 %139 to i64, !dbg !1082
  %141 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %135, i8* nonnull %132, i64 %140) #7, !dbg !1083
  %142 = load i8*, i8** %9, align 4, !dbg !1084, !tbaa !865
  br label %143, !dbg !1085

143:                                              ; preds = %116, %134
  %144 = phi i8* [ %142, %134 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0), %116 ], !dbg !1086
  call void @halide_print(i8* %0, i8* %144) #7, !dbg !1087
  %145 = load i64, i64* %42, align 8, !dbg !1088, !tbaa !169
  %146 = icmp eq i64 %145, 0, !dbg !1089
  br i1 %146, label %147, label %166, !dbg !1090

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 3, !dbg !1091
  %149 = load i64, i64* %148, align 8, !dbg !1091, !tbaa !181
  %150 = icmp eq i64 %149, 0, !dbg !1092
  call void @llvm.dbg.value(metadata i1 %150, metadata !795, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !898
  br i1 %150, label %151, label %166, !dbg !1093

151:                                              ; preds = %147
  call void @llvm.dbg.value(metadata i8 undef, metadata !795, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 0, metadata !796, metadata !DIExpression()), !dbg !1094
  %152 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 9, !dbg !1095
  %153 = load i32, i32* %152, align 4, !dbg !1095, !tbaa !136
  %154 = icmp sgt i32 %153, 0, !dbg !1096
  br i1 %154, label %155, label %429, !dbg !1097

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 7
  %157 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %156, align 4, !tbaa !195
  br label %160, !dbg !1097

158:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 undef, metadata !795, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 %165, metadata !796, metadata !DIExpression()), !dbg !1094
  %159 = icmp slt i32 %165, %153, !dbg !1096
  br i1 %159, label %160, label %429, !dbg !1097, !llvm.loop !1098

160:                                              ; preds = %155, %158
  %161 = phi i32 [ 0, %155 ], [ %165, %158 ]
  call void @llvm.dbg.value(metadata i32 %161, metadata !796, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* undef, metadata !800, metadata !DIExpression()), !dbg !1100
  %162 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %157, i32 %161, i32 4, !dbg !1101
  %163 = load i64, i64* %162, align 8, !dbg !1101, !tbaa !234
  %164 = icmp eq i64 %163, 0, !dbg !1103
  call void @llvm.dbg.value(metadata i8 undef, metadata !795, metadata !DIExpression()), !dbg !898
  %165 = add nuw nsw i32 %161, 1, !dbg !1104
  call void @llvm.dbg.value(metadata i32 %165, metadata !796, metadata !DIExpression()), !dbg !1094
  br i1 %164, label %158, label %166

166:                                              ; preds = %160, %143, %147
  call void @llvm.dbg.value(metadata i32 0, metadata !803, metadata !DIExpression()), !dbg !1105
  %167 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 9, !dbg !1106
  %168 = load i32, i32* %167, align 4, !dbg !1106, !tbaa !136
  %169 = icmp sgt i32 %168, 0, !dbg !1107
  br i1 %169, label %170, label %429, !dbg !1108

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 7
  br label %172, !dbg !1108

172:                                              ; preds = %170, %425
  %173 = phi i32 [ 0, %170 ], [ %426, %425 ]
  call void @llvm.dbg.value(metadata i32 %173, metadata !803, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i32 0, metadata !807, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !903, metadata !DIExpression()), !dbg !1110
  %174 = load i8*, i8** %9, align 4, !dbg !1112, !tbaa !865
  store i8* %174, i8** %10, align 4, !dbg !1113, !tbaa !845
  %175 = icmp eq i8* %174, null, !dbg !1114
  br i1 %175, label %177, label %176, !dbg !1115

176:                                              ; preds = %172
  store i8 0, i8* %174, align 1, !dbg !1116, !tbaa !853
  br label %177, !dbg !1117

177:                                              ; preds = %172, %176
  %178 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %171, align 4, !dbg !1118, !tbaa !195
  %179 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, !dbg !1119
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* %179, metadata !811, metadata !DIExpression()), !dbg !1109
  %180 = icmp eq i32 %173, 0, !dbg !1120
  br i1 %180, label %181, label %185, !dbg !1122

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %179, i32 0, i32 0, !dbg !1123
  %183 = load i64, i64* %182, align 8, !dbg !1123, !tbaa !212
  %184 = icmp eq i64 %183, 0, !dbg !1124
  br i1 %184, label %425, label %185, !dbg !1125

185:                                              ; preds = %181, %177
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1126
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1126
  %186 = load i8*, i8** %10, align 4, !dbg !1128, !tbaa !845
  %187 = load i8*, i8** %12, align 4, !dbg !1129, !tbaa !851
  %188 = call i8* @halide_string_to_string(i8* %186, i8* %187, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0)) #7, !dbg !1130
  store i8* %188, i8** %10, align 4, !dbg !1131, !tbaa !845
  %189 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 7, !dbg !1132
  %190 = load i8*, i8** %189, align 8, !dbg !1132, !tbaa !219
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1133
  call void @llvm.dbg.value(metadata i8* %190, metadata !925, metadata !DIExpression()) #8, !dbg !1133
  %191 = icmp eq i8* %190, null, !dbg !1135
  %192 = load i8*, i8** %12, align 4, !dbg !1136, !tbaa !851
  br i1 %191, label %193, label %195, !dbg !1137

193:                                              ; preds = %185
  %194 = call i8* @halide_string_to_string(i8* %188, i8* %192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0)) #7, !dbg !1138
  br label %197, !dbg !1139

195:                                              ; preds = %185
  %196 = call i8* @halide_string_to_string(i8* %188, i8* %192, i8* nonnull %190) #7, !dbg !1140
  br label %197

197:                                              ; preds = %193, %195
  %198 = phi i8* [ %196, %195 ], [ %194, %193 ], !dbg !1136
  store i8* %198, i8** %10, align 4, !dbg !1136, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1141
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1141
  %199 = load i8*, i8** %12, align 4, !dbg !1143, !tbaa !851
  %200 = call i8* @halide_string_to_string(i8* %198, i8* %199, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !1144
  call void @llvm.dbg.value(metadata i32 25, metadata !807, metadata !DIExpression()), !dbg !1109
  store i8* %200, i8** %10, align 4, !dbg !1109, !tbaa !845
  %201 = load i8*, i8** %9, align 4, !dbg !1145, !tbaa !865
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1146, metadata !DIExpression()), !dbg !1150
  %202 = ptrtoint i8* %200 to i32, !dbg !1152
  %203 = ptrtoint i8* %201 to i32, !dbg !1152
  %204 = sub i32 %202, %203, !dbg !1152
  %205 = icmp ult i32 %204, 25, !dbg !1153
  br i1 %205, label %206, label %215, !dbg !1154

206:                                              ; preds = %197, %206
  %207 = phi i8* [ %209, %206 ], [ %200, %197 ], !dbg !1155
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1158
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1158
  %208 = load i8*, i8** %12, align 4, !dbg !1159, !tbaa !851
  %209 = call i8* @halide_string_to_string(i8* %207, i8* %208, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #7, !dbg !1160
  store i8* %209, i8** %10, align 4, !dbg !1109, !tbaa !845
  %210 = load i8*, i8** %9, align 4, !dbg !1145, !tbaa !865
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1146, metadata !DIExpression()), !dbg !1150
  %211 = ptrtoint i8* %209 to i32, !dbg !1152
  %212 = ptrtoint i8* %210 to i32, !dbg !1152
  %213 = sub i32 %211, %212, !dbg !1152
  %214 = icmp ult i32 %213, 25, !dbg !1153
  br i1 %214, label %206, label %215, !dbg !1154, !llvm.loop !1161

215:                                              ; preds = %206, %197
  %216 = phi i8* [ %200, %197 ], [ %209, %206 ], !dbg !1163
  %217 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %179, i32 0, i32 0, !dbg !1165
  %218 = load i64, i64* %217, align 8, !dbg !1165, !tbaa !212
  %219 = uitofp i64 %218 to float, !dbg !1166
  %220 = load i32, i32* %46, align 4, !dbg !1167, !tbaa !166
  %221 = sitofp i32 %220 to float, !dbg !1168
  %222 = fmul float %221, 1.000000e+06, !dbg !1169
  %223 = fdiv float %219, %222, !dbg !1170
  call void @llvm.dbg.value(metadata float %223, metadata !812, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !947, metadata !DIExpression()) #8, !dbg !1171
  call void @llvm.dbg.value(metadata float %223, metadata !950, metadata !DIExpression()) #8, !dbg !1171
  %224 = load i8*, i8** %12, align 4, !dbg !1172, !tbaa !851
  %225 = fpext float %223 to double, !dbg !1173
  %226 = call i8* @halide_double_to_string(i8* %216, i8* %224, double %225, i32 0) #7, !dbg !1174
  store i8* %226, i8** %10, align 4, !dbg !1175, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !1176, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i32 3, metadata !1179, metadata !DIExpression()), !dbg !1180
  %227 = icmp eq i8* %226, null, !dbg !1182
  br i1 %227, label %234, label %228, !dbg !1184

228:                                              ; preds = %215
  %229 = getelementptr inbounds i8, i8* %226, i32 -3, !dbg !1185
  %230 = load i8*, i8** %9, align 4, !dbg !1187, !tbaa !865
  %231 = icmp ult i8* %229, %230, !dbg !1189
  %232 = select i1 %231, i8* %230, i8* %229, !dbg !1190
  store i8* %232, i8** %10, align 4, !dbg !1191
  store i8 0, i8* %232, align 1, !dbg !1192, !tbaa !853
  %233 = load i8*, i8** %10, align 4, !dbg !1193, !tbaa !845
  br label %234, !dbg !1195

234:                                              ; preds = %215, %228
  %235 = phi i8* [ null, %215 ], [ %233, %228 ], !dbg !1193
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1196
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1196
  %236 = load i8*, i8** %12, align 4, !dbg !1197, !tbaa !851
  %237 = call i8* @halide_string_to_string(i8* %235, i8* %236, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)) #7, !dbg !1198
  call void @llvm.dbg.value(metadata i32 35, metadata !807, metadata !DIExpression()), !dbg !1109
  store i8* %237, i8** %10, align 4, !dbg !1109, !tbaa !845
  %238 = load i8*, i8** %9, align 4, !dbg !1199, !tbaa !865
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1146, metadata !DIExpression()), !dbg !1200
  %239 = ptrtoint i8* %237 to i32, !dbg !1202
  %240 = ptrtoint i8* %238 to i32, !dbg !1202
  %241 = sub i32 %239, %240, !dbg !1202
  %242 = icmp ult i32 %241, 35, !dbg !1203
  br i1 %242, label %243, label %252, !dbg !1204

243:                                              ; preds = %234, %243
  %244 = phi i8* [ %246, %243 ], [ %237, %234 ], !dbg !1205
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1208
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1208
  %245 = load i8*, i8** %12, align 4, !dbg !1209, !tbaa !851
  %246 = call i8* @halide_string_to_string(i8* %244, i8* %245, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #7, !dbg !1210
  store i8* %246, i8** %10, align 4, !dbg !1109, !tbaa !845
  %247 = load i8*, i8** %9, align 4, !dbg !1199, !tbaa !865
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1146, metadata !DIExpression()), !dbg !1200
  %248 = ptrtoint i8* %246 to i32, !dbg !1202
  %249 = ptrtoint i8* %247 to i32, !dbg !1202
  %250 = sub i32 %248, %249, !dbg !1202
  %251 = icmp ult i32 %250, 35, !dbg !1203
  br i1 %251, label %243, label %252, !dbg !1204, !llvm.loop !1211

252:                                              ; preds = %243, %234
  %253 = phi i8* [ %237, %234 ], [ %246, %243 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !813, metadata !DIExpression()), !dbg !1109
  %254 = load i64, i64* %42, align 8, !dbg !1213, !tbaa !169
  %255 = icmp eq i64 %254, 0, !dbg !1215
  br i1 %255, label %261, label %256, !dbg !1216

256:                                              ; preds = %252
  %257 = load i64, i64* %217, align 8, !dbg !1217, !tbaa !212
  %258 = mul i64 %257, 100, !dbg !1219
  %259 = udiv i64 %258, %254, !dbg !1220
  %260 = trunc i64 %259 to i32, !dbg !1221
  call void @llvm.dbg.value(metadata i32 %260, metadata !813, metadata !DIExpression()), !dbg !1109
  br label %261, !dbg !1222

261:                                              ; preds = %256, %252
  %262 = phi i32 [ %260, %256 ], [ 0, %252 ], !dbg !1109
  call void @llvm.dbg.value(metadata i32 %262, metadata !813, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1223
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1223
  %263 = load i8*, i8** %12, align 4, !dbg !1225, !tbaa !851
  %264 = call i8* @halide_string_to_string(i8* %253, i8* %263, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)) #7, !dbg !1226
  store i8* %264, i8** %10, align 4, !dbg !1227, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !968, metadata !DIExpression()) #8, !dbg !1228
  call void @llvm.dbg.value(metadata i32 %262, metadata !971, metadata !DIExpression()) #8, !dbg !1228
  %265 = load i8*, i8** %12, align 4, !dbg !1230, !tbaa !851
  %266 = sext i32 %262 to i64, !dbg !1231
  %267 = call i8* @halide_int64_to_string(i8* %264, i8* %265, i64 %266, i32 1) #7, !dbg !1232
  store i8* %267, i8** %10, align 4, !dbg !1233, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1234
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1234
  %268 = load i8*, i8** %12, align 4, !dbg !1236, !tbaa !851
  %269 = call i8* @halide_string_to_string(i8* %267, i8* %268, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)) #7, !dbg !1237
  call void @llvm.dbg.value(metadata i32 43, metadata !807, metadata !DIExpression()), !dbg !1109
  store i8* %269, i8** %10, align 4, !dbg !1109, !tbaa !845
  %270 = load i8*, i8** %9, align 4, !dbg !1238, !tbaa !865
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1146, metadata !DIExpression()), !dbg !1239
  %271 = ptrtoint i8* %269 to i32, !dbg !1241
  %272 = ptrtoint i8* %270 to i32, !dbg !1241
  %273 = sub i32 %271, %272, !dbg !1241
  %274 = icmp ult i32 %273, 43, !dbg !1242
  br i1 %274, label %275, label %284, !dbg !1243

275:                                              ; preds = %261, %275
  %276 = phi i8* [ %278, %275 ], [ %269, %261 ], !dbg !1244
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1247
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1247
  %277 = load i8*, i8** %12, align 4, !dbg !1248, !tbaa !851
  %278 = call i8* @halide_string_to_string(i8* %276, i8* %277, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #7, !dbg !1249
  store i8* %278, i8** %10, align 4, !dbg !1109, !tbaa !845
  %279 = load i8*, i8** %9, align 4, !dbg !1238, !tbaa !865
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1146, metadata !DIExpression()), !dbg !1239
  %280 = ptrtoint i8* %278 to i32, !dbg !1241
  %281 = ptrtoint i8* %279 to i32, !dbg !1241
  %282 = sub i32 %280, %281, !dbg !1241
  %283 = icmp ult i32 %282, 43, !dbg !1242
  br i1 %283, label %275, label %284, !dbg !1243, !llvm.loop !1250

284:                                              ; preds = %275, %261
  %285 = phi i8* [ %269, %261 ], [ %278, %275 ]
  br i1 %59, label %324, label %286, !dbg !1252

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 5, !dbg !1253
  %288 = load i64, i64* %287, align 8, !dbg !1253, !tbaa !237
  %289 = uitofp i64 %288 to double, !dbg !1254
  %290 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 6, !dbg !1255
  %291 = load i64, i64* %290, align 8, !dbg !1255, !tbaa !240
  %292 = uitofp i64 %291 to double, !dbg !1256
  %293 = fadd double %292, 1.000000e-10, !dbg !1257
  %294 = fdiv double %289, %293, !dbg !1258
  %295 = fptrunc double %294 to float, !dbg !1254
  call void @llvm.dbg.value(metadata float %295, metadata !814, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1260
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1260
  %296 = load i8*, i8** %12, align 4, !dbg !1262, !tbaa !851
  %297 = call i8* @halide_string_to_string(i8* %285, i8* %296, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0)) #7, !dbg !1263
  store i8* %297, i8** %10, align 4, !dbg !1264, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !947, metadata !DIExpression()) #8, !dbg !1265
  call void @llvm.dbg.value(metadata float %295, metadata !950, metadata !DIExpression()) #8, !dbg !1265
  %298 = load i8*, i8** %12, align 4, !dbg !1267, !tbaa !851
  %299 = fpext float %295 to double, !dbg !1268
  %300 = call i8* @halide_double_to_string(i8* %297, i8* %298, double %299, i32 0) #7, !dbg !1269
  store i8* %300, i8** %10, align 4, !dbg !1270, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !1176, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i32 3, metadata !1179, metadata !DIExpression()), !dbg !1271
  %301 = icmp eq i8* %300, null, !dbg !1273
  br i1 %301, label %308, label %302, !dbg !1274

302:                                              ; preds = %286
  %303 = getelementptr inbounds i8, i8* %300, i32 -3, !dbg !1275
  %304 = load i8*, i8** %9, align 4, !dbg !1276, !tbaa !865
  %305 = icmp ult i8* %303, %304, !dbg !1277
  %306 = select i1 %305, i8* %304, i8* %303, !dbg !1278
  store i8* %306, i8** %10, align 4, !dbg !1279
  store i8 0, i8* %306, align 1, !dbg !1280, !tbaa !853
  %307 = load i8*, i8** %10, align 4, !dbg !1281, !tbaa !845
  br label %308, !dbg !1282

308:                                              ; preds = %286, %302
  %309 = phi i8* [ null, %286 ], [ %307, %302 ], !dbg !1281
  call void @llvm.dbg.value(metadata i32 58, metadata !807, metadata !DIExpression()), !dbg !1109
  %310 = load i8*, i8** %9, align 4, !dbg !1281, !tbaa !865
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1146, metadata !DIExpression()), !dbg !1283
  %311 = ptrtoint i8* %309 to i32, !dbg !1285
  %312 = ptrtoint i8* %310 to i32, !dbg !1285
  %313 = sub i32 %311, %312, !dbg !1285
  %314 = icmp ult i32 %313, 58, !dbg !1286
  br i1 %314, label %315, label %324, !dbg !1287

315:                                              ; preds = %308, %315
  %316 = phi i8* [ %318, %315 ], [ %309, %308 ], !dbg !1288
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1291
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1291
  %317 = load i8*, i8** %12, align 4, !dbg !1292, !tbaa !851
  %318 = call i8* @halide_string_to_string(i8* %316, i8* %317, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #7, !dbg !1293
  store i8* %318, i8** %10, align 4, !dbg !1294, !tbaa !845
  %319 = load i8*, i8** %9, align 4, !dbg !1281, !tbaa !865
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1146, metadata !DIExpression()), !dbg !1283
  %320 = ptrtoint i8* %318 to i32, !dbg !1285
  %321 = ptrtoint i8* %319 to i32, !dbg !1285
  %322 = sub i32 %320, %321, !dbg !1285
  %323 = icmp ult i32 %322, 58, !dbg !1286
  br i1 %323, label %315, label %324, !dbg !1287, !llvm.loop !1295

324:                                              ; preds = %315, %308, %284
  %325 = phi i8* [ %285, %284 ], [ %309, %308 ], [ %318, %315 ]
  %326 = phi i32 [ 58, %284 ], [ 73, %308 ], [ 73, %315 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !807, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i32 0, metadata !817, metadata !DIExpression()), !dbg !1109
  %327 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 8, !dbg !1297
  %328 = load i32, i32* %327, align 4, !dbg !1297, !tbaa !231
  %329 = icmp eq i32 %328, 0, !dbg !1299
  br i1 %329, label %336, label %330, !dbg !1300

330:                                              ; preds = %324
  %331 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 3, !dbg !1301
  %332 = load i64, i64* %331, align 8, !dbg !1301, !tbaa !228
  %333 = sext i32 %328 to i64, !dbg !1303
  %334 = udiv i64 %332, %333, !dbg !1304
  %335 = trunc i64 %334 to i32, !dbg !1305
  call void @llvm.dbg.value(metadata i32 %335, metadata !817, metadata !DIExpression()), !dbg !1109
  br label %336, !dbg !1306

336:                                              ; preds = %330, %324
  %337 = phi i32 [ %335, %330 ], [ 0, %324 ], !dbg !1109
  call void @llvm.dbg.value(metadata i32 %337, metadata !817, metadata !DIExpression()), !dbg !1109
  %338 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 2, !dbg !1307
  %339 = load i64, i64* %338, align 8, !dbg !1307, !tbaa !225
  %340 = icmp eq i64 %339, 0, !dbg !1309
  br i1 %340, label %397, label %341, !dbg !1310

341:                                              ; preds = %336
  call void @llvm.dbg.value(metadata i32 %326, metadata !807, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1311
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1311
  %342 = load i8*, i8** %12, align 4, !dbg !1314, !tbaa !851
  %343 = call i8* @halide_string_to_string(i8* %325, i8* %342, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0)) #7, !dbg !1315
  store i8* %343, i8** %10, align 4, !dbg !1316, !tbaa !845
  %344 = load i64, i64* %338, align 8, !dbg !1317, !tbaa !225
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !1052, metadata !DIExpression()) #8, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %344, metadata !1055, metadata !DIExpression()) #8, !dbg !1318
  %345 = load i8*, i8** %12, align 4, !dbg !1320, !tbaa !851
  %346 = call i8* @halide_uint64_to_string(i8* %343, i8* %345, i64 %344, i32 1) #7, !dbg !1321
  store i8* %346, i8** %10, align 4, !dbg !1322, !tbaa !845
  %347 = load i8*, i8** %9, align 4, !dbg !1323, !tbaa !865
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1146, metadata !DIExpression()), !dbg !1324
  %348 = ptrtoint i8* %346 to i32, !dbg !1326
  %349 = ptrtoint i8* %347 to i32, !dbg !1326
  %350 = sub i32 %348, %349, !dbg !1326
  %351 = sext i32 %350 to i64, !dbg !1327
  %352 = zext i32 %326 to i64, !dbg !1328
  %353 = icmp ult i64 %351, %352, !dbg !1329
  br i1 %353, label %354, label %364, !dbg !1330

354:                                              ; preds = %341, %354
  %355 = phi i8* [ %357, %354 ], [ %346, %341 ], !dbg !1331
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1334
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1334
  %356 = load i8*, i8** %12, align 4, !dbg !1335, !tbaa !851
  %357 = call i8* @halide_string_to_string(i8* %355, i8* %356, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #7, !dbg !1336
  store i8* %357, i8** %10, align 4, !dbg !1322, !tbaa !845
  %358 = load i8*, i8** %9, align 4, !dbg !1323, !tbaa !865
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1146, metadata !DIExpression()), !dbg !1324
  %359 = ptrtoint i8* %357 to i32, !dbg !1326
  %360 = ptrtoint i8* %358 to i32, !dbg !1326
  %361 = sub i32 %359, %360, !dbg !1326
  %362 = sext i32 %361 to i64, !dbg !1327
  %363 = icmp ult i64 %362, %352, !dbg !1329
  br i1 %363, label %354, label %364, !dbg !1330, !llvm.loop !1337

364:                                              ; preds = %354, %341
  %365 = phi i8* [ %346, %341 ], [ %357, %354 ], !dbg !1339
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1341
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1341
  %366 = load i8*, i8** %12, align 4, !dbg !1342, !tbaa !851
  %367 = call i8* @halide_string_to_string(i8* %365, i8* %366, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #7, !dbg !1343
  store i8* %367, i8** %10, align 4, !dbg !1344, !tbaa !845
  %368 = load i32, i32* %327, align 4, !dbg !1345, !tbaa !231
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !968, metadata !DIExpression()) #8, !dbg !1346
  call void @llvm.dbg.value(metadata i32 %368, metadata !971, metadata !DIExpression()) #8, !dbg !1346
  %369 = load i8*, i8** %12, align 4, !dbg !1348, !tbaa !851
  %370 = sext i32 %368 to i64, !dbg !1349
  %371 = call i8* @halide_int64_to_string(i8* %367, i8* %369, i64 %370, i32 1) #7, !dbg !1350
  store i8* %371, i8** %10, align 4, !dbg !1351, !tbaa !845
  %372 = add nuw nsw i32 %326, 15, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %372, metadata !807, metadata !DIExpression()), !dbg !1109
  %373 = load i8*, i8** %9, align 4, !dbg !1353, !tbaa !865
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1146, metadata !DIExpression()), !dbg !1354
  %374 = ptrtoint i8* %371 to i32, !dbg !1356
  %375 = ptrtoint i8* %373 to i32, !dbg !1356
  %376 = sub i32 %374, %375, !dbg !1356
  %377 = sext i32 %376 to i64, !dbg !1357
  %378 = zext i32 %372 to i64, !dbg !1358
  %379 = icmp ult i64 %377, %378, !dbg !1359
  br i1 %379, label %380, label %390, !dbg !1360

380:                                              ; preds = %364, %380
  %381 = phi i8* [ %383, %380 ], [ %371, %364 ], !dbg !1361
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1364
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1364
  %382 = load i8*, i8** %12, align 4, !dbg !1365, !tbaa !851
  %383 = call i8* @halide_string_to_string(i8* %381, i8* %382, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #7, !dbg !1366
  store i8* %383, i8** %10, align 4, !dbg !1367, !tbaa !845
  %384 = load i8*, i8** %9, align 4, !dbg !1353, !tbaa !865
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1146, metadata !DIExpression()), !dbg !1354
  %385 = ptrtoint i8* %383 to i32, !dbg !1356
  %386 = ptrtoint i8* %384 to i32, !dbg !1356
  %387 = sub i32 %385, %386, !dbg !1356
  %388 = sext i32 %387 to i64, !dbg !1357
  %389 = icmp ult i64 %388, %378, !dbg !1359
  br i1 %389, label %380, label %390, !dbg !1360, !llvm.loop !1368

390:                                              ; preds = %380, %364
  %391 = phi i8* [ %371, %364 ], [ %383, %380 ], !dbg !1370
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1372
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1372
  %392 = load i8*, i8** %12, align 4, !dbg !1373, !tbaa !851
  %393 = call i8* @halide_string_to_string(i8* %391, i8* %392, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0)) #7, !dbg !1374
  store i8* %393, i8** %10, align 4, !dbg !1375, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !968, metadata !DIExpression()) #8, !dbg !1376
  call void @llvm.dbg.value(metadata i32 %337, metadata !971, metadata !DIExpression()) #8, !dbg !1376
  %394 = load i8*, i8** %12, align 4, !dbg !1378, !tbaa !851
  %395 = sext i32 %337 to i64, !dbg !1379
  %396 = call i8* @halide_int64_to_string(i8* %393, i8* %394, i64 %395, i32 1) #7, !dbg !1380
  store i8* %396, i8** %10, align 4, !dbg !1381, !tbaa !845
  br label %397, !dbg !1382

397:                                              ; preds = %390, %336
  %398 = phi i8* [ %396, %390 ], [ %325, %336 ]
  %399 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i32 %173, i32 4, !dbg !1383
  %400 = load i64, i64* %399, align 8, !dbg !1383, !tbaa !234
  %401 = icmp eq i64 %400, 0, !dbg !1385
  br i1 %401, label %408, label %402, !dbg !1386

402:                                              ; preds = %397
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1387
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1387
  %403 = load i8*, i8** %12, align 4, !dbg !1390, !tbaa !851
  %404 = call i8* @halide_string_to_string(i8* %398, i8* %403, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)) #7, !dbg !1391
  store i8* %404, i8** %10, align 4, !dbg !1392, !tbaa !845
  %405 = load i64, i64* %399, align 8, !dbg !1393, !tbaa !234
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !1052, metadata !DIExpression()) #8, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %405, metadata !1055, metadata !DIExpression()) #8, !dbg !1394
  %406 = load i8*, i8** %12, align 4, !dbg !1396, !tbaa !851
  %407 = call i8* @halide_uint64_to_string(i8* %404, i8* %406, i64 %405, i32 1) #7, !dbg !1397
  store i8* %407, i8** %10, align 4, !dbg !1398, !tbaa !845
  br label %408, !dbg !1399

408:                                              ; preds = %402, %397
  %409 = phi i8* [ %407, %402 ], [ %398, %397 ], !dbg !1400
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !922, metadata !DIExpression()) #8, !dbg !1402
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), metadata !925, metadata !DIExpression()) #8, !dbg !1402
  %410 = load i8*, i8** %12, align 4, !dbg !1403, !tbaa !851
  %411 = call i8* @halide_string_to_string(i8* %409, i8* %410, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !1404
  store i8* %411, i8** %10, align 4, !dbg !1405, !tbaa !845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !1066, metadata !DIExpression()) #8, !dbg !1406
  %412 = load i8*, i8** %9, align 4, !dbg !1408, !tbaa !865
  %413 = icmp eq i8* %412, null, !dbg !1408
  br i1 %413, label %423, label %414, !dbg !1409

414:                                              ; preds = %408
  %415 = load i8*, i8** %7, align 4, !dbg !1410, !tbaa !832
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !874, metadata !DIExpression()) #8, !dbg !1411
  %416 = ptrtoint i8* %411 to i32, !dbg !1413
  %417 = ptrtoint i8* %412 to i32, !dbg !1413
  %418 = add i32 %416, 1, !dbg !1413
  %419 = sub i32 %418, %417, !dbg !1414
  %420 = sext i32 %419 to i64, !dbg !1415
  %421 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %415, i8* nonnull %412, i64 %420) #7, !dbg !1416
  %422 = load i8*, i8** %9, align 4, !dbg !1417, !tbaa !865
  br label %423, !dbg !1418

423:                                              ; preds = %408, %414
  %424 = phi i8* [ %422, %414 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0), %408 ], !dbg !1419
  call void @halide_print(i8* %0, i8* %424) #7, !dbg !1420
  br label %425, !dbg !1421

425:                                              ; preds = %181, %423
  %426 = add nuw nsw i32 %173, 1, !dbg !1422
  call void @llvm.dbg.value(metadata i32 %426, metadata !803, metadata !DIExpression()), !dbg !1105
  %427 = load i32, i32* %167, align 4, !dbg !1106, !tbaa !136
  %428 = icmp slt i32 %426, %427, !dbg !1107
  br i1 %428, label %172, label %429, !dbg !1108, !llvm.loop !1423

429:                                              ; preds = %158, %425, %151, %166, %40
  %430 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %41, i32 0, i32 8, !dbg !1425
  %431 = bitcast i8** %430 to %struct.halide_profiler_pipeline_stats**, !dbg !1425
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !787, metadata !DIExpression()), !dbg !855
  %432 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %431, align 4, !dbg !855, !tbaa !119
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %432, metadata !787, metadata !DIExpression()), !dbg !855
  %433 = icmp eq %struct.halide_profiler_pipeline_stats* %432, null, !dbg !856
  br i1 %433, label %16, label %40, !dbg !857, !llvm.loop !1426
}

; Function Attrs: nounwind
define weak dso_local void @halide_profiler_report(i8* %0) local_unnamed_addr #5 !dbg !1428 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1430, metadata !DIExpression()), !dbg !1433
  %2 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !1434
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %2, metadata !1431, metadata !DIExpression()), !dbg !1433
  %3 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i32 0, i32 0, !dbg !1435
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !411, metadata !DIExpression()) #8, !dbg !1436
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !414, metadata !DIExpression()) #8, !dbg !1436
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !1432, metadata !DIExpression()), !dbg !1433
  tail call void @halide_mutex_lock(%struct.halide_mutex* %3) #7, !dbg !1438
  tail call void @halide_profiler_report_unlocked(i8* %0, %struct.halide_profiler_state* %2) #6, !dbg !1439
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !433, metadata !DIExpression()) #8, !dbg !1440
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %3) #7, !dbg !1442
  ret void, !dbg !1443
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* %0) local_unnamed_addr #1 !dbg !1444 {
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %0, metadata !1448, metadata !DIExpression()), !dbg !1451
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i32 0, i32 5, !dbg !1452
  %3 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %2, align 4, !dbg !1452, !tbaa !149
  %4 = icmp eq %struct.halide_profiler_pipeline_stats* %3, null, !dbg !1453
  br i1 %4, label %16, label %5, !dbg !1454

5:                                                ; preds = %1, %5
  %6 = phi %struct.halide_profiler_pipeline_stats* [ %14, %5 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %6, metadata !1449, metadata !DIExpression()), !dbg !1455
  %7 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %6, i32 0, i32 8, !dbg !1456
  %8 = bitcast i8** %7 to %struct.halide_profiler_pipeline_stats**, !dbg !1456
  %9 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %8, align 8, !dbg !1456, !tbaa !154
  store %struct.halide_profiler_pipeline_stats* %9, %struct.halide_profiler_pipeline_stats** %2, align 4, !dbg !1457, !tbaa !149
  %10 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %6, i32 0, i32 7, !dbg !1458
  %11 = bitcast %struct.halide_profiler_func_stats** %10 to i8**, !dbg !1458
  %12 = load i8*, i8** %11, align 4, !dbg !1458, !tbaa !195
  tail call void @free(i8* %12) #7, !dbg !1459
  %13 = bitcast %struct.halide_profiler_pipeline_stats* %6 to i8*, !dbg !1460
  tail call void @free(i8* nonnull %13) #7, !dbg !1461
  %14 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %2, align 4, !dbg !1452, !tbaa !149
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null, !dbg !1453
  br i1 %15, label %16, label %5, !dbg !1454, !llvm.loop !1462

16:                                               ; preds = %5, %1
  %17 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i32 0, i32 2, !dbg !1464
  store i32 0, i32* %17, align 4, !dbg !1465, !tbaa !158
  ret void, !dbg !1466
}

; Function Attrs: nounwind
define weak dso_local void @halide_profiler_reset() local_unnamed_addr #5 !dbg !1467 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !1471
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %1, metadata !1469, metadata !DIExpression()), !dbg !1472
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i32 0, i32 0, !dbg !1473
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !411, metadata !DIExpression()) #8, !dbg !1474
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %2, metadata !414, metadata !DIExpression()) #8, !dbg !1474
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %2, metadata !1470, metadata !DIExpression()), !dbg !1472
  tail call void @halide_mutex_lock(%struct.halide_mutex* %2) #7, !dbg !1476
  tail call void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* %1) #6, !dbg !1477
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !433, metadata !DIExpression()) #8, !dbg !1478
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %2) #7, !dbg !1480
  ret void, !dbg !1481
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_shutdown() #1 !dbg !1482 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !1485
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %1, metadata !1484, metadata !DIExpression()), !dbg !1486
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i32 0, i32 7, !dbg !1487
  %3 = load %struct.halide_thread*, %struct.halide_thread** %2, align 4, !dbg !1487, !tbaa !460
  %4 = icmp eq %struct.halide_thread* %3, null, !dbg !1489
  br i1 %4, label %7, label %5, !dbg !1490

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i32 0, i32 3, !dbg !1491
  store i32 -2, i32* %6, align 4, !dbg !1492, !tbaa !329
  tail call void @halide_join_thread(%struct.halide_thread* nonnull %3) #7, !dbg !1493
  store %struct.halide_thread* null, %struct.halide_thread** %2, align 4, !dbg !1494, !tbaa !460
  store i32 -1, i32* %6, align 4, !dbg !1495, !tbaa !329
  tail call void @halide_profiler_report_unlocked(i8* null, %struct.halide_profiler_state* nonnull %1) #6, !dbg !1496
  tail call void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* nonnull %1) #6, !dbg !1497
  br label %7, !dbg !1498

7:                                                ; preds = %0, %5
  ret void, !dbg !1498
}

declare !dbg !1499 dso_local void @halide_join_thread(%struct.halide_thread*) local_unnamed_addr #4

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_profiler_pipeline_end(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1502 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1506, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i8* %1, metadata !1507, metadata !DIExpression()), !dbg !1508
  %3 = getelementptr inbounds i8, i8* %1, i32 12, !dbg !1509
  %4 = bitcast i8* %3 to i32*, !dbg !1509
  store i32 -1, i32* %4, align 4, !dbg !1510, !tbaa !329
  ret void, !dbg !1511
}

declare !dbg !1512 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #4

declare !dbg !1513 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #4

declare !dbg !1516 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #4

declare !dbg !1519 extern_weak dso_local i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #4

declare !dbg !1522 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #4

declare !dbg !1525 extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!70}
!llvm.module.flags = !{!95, !96, !97}
!llvm.ident = !{!98}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "s", scope: !2, file: !3, line: 12, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "halide_profiler_get_state", scope: !3, file: !3, line: 11, type: !4, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !94)
!3 = !DIFile(filename: "src/runtime/profiler.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_profiler_state", file: !8, line: 1766, size: 256, flags: DIFlagTypePassByValue, elements: !9, identifier: "_ZTS21halide_profiler_state")
!8 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!9 = !{!10, !21, !23, !24, !25, !26, !62, !67}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !7, file: !8, line: 1770, baseType: !11, size: 32)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !8, line: 120, size: 32, flags: DIFlagTypePassByValue, elements: !12, identifier: "_ZTS12halide_mutex")
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !11, file: !8, line: 121, baseType: !14, size: 32)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32, elements: !19)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !16, line: 68, baseType: !17)
!16 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
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
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_profiler_pipeline_stats", file: !8, line: 1721, size: 640, flags: DIFlagTypePassByValue, elements: !29, identifier: "_ZTS30halide_profiler_pipeline_stats")
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
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_profiler_func_stats", file: !8, line: 1693, size: 512, flags: DIFlagTypePassByValue, elements: !45, identifier: "_ZTS26halide_profiler_func_stats")
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
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_thread", file: !8, line: 312, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS13halide_thread")
!70 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !71, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !86, globals: !88, imports: !89, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!72 = !{!73, !77}
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 1799, baseType: !22, size: 32, elements: !74)
!74 = !{!75, !76}
!75 = !DIEnumerator(name: "halide_profiler_outside_of_halide", value: -1)
!76 = !DIEnumerator(name: "halide_profiler_please_stop", value: -2)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !8, line: 403, baseType: !78, size: 8, elements: !80, identifier: "_ZTS18halide_type_code_t")
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
!88 = !{!0}
!89 = !{!90}
!90 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !70, entity: !91, file: !16, line: 225)
!91 = !DINamespace(name: "Internal", scope: !92)
!92 = !DINamespace(name: "Runtime", scope: !93)
!93 = !DINamespace(name: "Halide", scope: null)
!94 = !{}
!95 = !{i32 7, !"Dwarf Version", i32 4}
!96 = !{i32 2, !"Debug Info Version", i32 3}
!97 = !{i32 1, !"wchar_size", i32 4}
!98 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!99 = !DILocation(line: 13, column: 5, scope: !2)
!100 = distinct !DISubprogram(name: "find_or_create_pipeline", linkageName: "_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy", scope: !91, file: !3, line: 21, type: !101, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !105)
!101 = !DISubroutineType(types: !102)
!102 = !{!27, !39, !22, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!105 = !{!106, !107, !108, !109, !110, !112, !113}
!106 = !DILocalVariable(name: "pipeline_name", arg: 1, scope: !100, file: !3, line: 21, type: !39)
!107 = !DILocalVariable(name: "num_funcs", arg: 2, scope: !100, file: !3, line: 21, type: !22)
!108 = !DILocalVariable(name: "func_names", arg: 3, scope: !100, file: !3, line: 21, type: !103)
!109 = !DILocalVariable(name: "s", scope: !100, file: !3, line: 22, type: !6)
!110 = !DILocalVariable(name: "p", scope: !111, file: !3, line: 24, type: !27)
!111 = distinct !DILexicalBlock(scope: !100, file: !3, line: 24, column: 5)
!112 = !DILocalVariable(name: "p", scope: !100, file: !3, line: 34, type: !27)
!113 = !DILocalVariable(name: "i", scope: !114, file: !3, line: 57, type: !22)
!114 = distinct !DILexicalBlock(scope: !100, file: !3, line: 57, column: 5)
!115 = !DILocation(line: 0, scope: !100)
!116 = !DILocation(line: 22, column: 32, scope: !100)
!117 = !DILocation(line: 24, column: 49, scope: !111)
!118 = !DILocation(line: 0, scope: !111)
!119 = !{!120, !120, i64 0}
!120 = !{!"any pointer", !121, i64 0}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C++ TBAA"}
!123 = !DILocation(line: 24, column: 60, scope: !124)
!124 = distinct !DILexicalBlock(scope: !111, file: !3, line: 24, column: 5)
!125 = !DILocation(line: 24, column: 5, scope: !111)
!126 = !DILocation(line: 28, column: 16, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !3, line: 28, column: 13)
!128 = distinct !DILexicalBlock(scope: !124, file: !3, line: 25, column: 59)
!129 = !{!130, !120, i64 48}
!130 = !{!"_ZTS30halide_profiler_pipeline_stats", !131, i64 0, !131, i64 8, !131, i64 16, !131, i64 24, !131, i64 32, !131, i64 40, !120, i64 48, !120, i64 52, !120, i64 56, !132, i64 60, !132, i64 64, !132, i64 68, !132, i64 72, !132, i64 76}
!131 = !{!"long long", !121, i64 0}
!132 = !{!"int", !121, i64 0}
!133 = !DILocation(line: 28, column: 21, scope: !127)
!134 = !DILocation(line: 28, column: 38, scope: !127)
!135 = !DILocation(line: 29, column: 16, scope: !127)
!136 = !{!130, !132, i64 60}
!137 = !DILocation(line: 29, column: 26, scope: !127)
!138 = !DILocation(line: 28, column: 13, scope: !128)
!139 = !DILocation(line: 25, column: 52, scope: !124)
!140 = distinct !{!140, !125, !141, !142}
!141 = !DILocation(line: 32, column: 5, scope: !111)
!142 = !{!"llvm.loop.mustprogress"}
!143 = !DILocation(line: 35, column: 43, scope: !100)
!144 = !DILocation(line: 35, column: 9, scope: !100)
!145 = !DILocation(line: 36, column: 10, scope: !146)
!146 = distinct !DILexicalBlock(scope: !100, file: !3, line: 36, column: 9)
!147 = !DILocation(line: 36, column: 9, scope: !100)
!148 = !DILocation(line: 39, column: 18, scope: !100)
!149 = !{!150, !120, i64 20}
!150 = !{!"_ZTS21halide_profiler_state", !151, i64 0, !132, i64 4, !132, i64 8, !132, i64 12, !132, i64 16, !120, i64 20, !120, i64 24, !120, i64 28}
!151 = !{!"_ZTS12halide_mutex", !121, i64 0}
!152 = !DILocation(line: 39, column: 8, scope: !100)
!153 = !DILocation(line: 39, column: 13, scope: !100)
!154 = !{!130, !120, i64 56}
!155 = !DILocation(line: 40, column: 8, scope: !100)
!156 = !DILocation(line: 40, column: 13, scope: !100)
!157 = !DILocation(line: 41, column: 27, scope: !100)
!158 = !{!150, !132, i64 8}
!159 = !DILocation(line: 41, column: 8, scope: !100)
!160 = !DILocation(line: 41, column: 22, scope: !100)
!161 = !{!130, !132, i64 64}
!162 = !DILocation(line: 42, column: 8, scope: !100)
!163 = !DILocation(line: 42, column: 18, scope: !100)
!164 = !DILocation(line: 43, column: 8, scope: !100)
!165 = !DILocation(line: 43, column: 13, scope: !100)
!166 = !{!130, !132, i64 68}
!167 = !DILocation(line: 44, column: 8, scope: !100)
!168 = !DILocation(line: 44, column: 13, scope: !100)
!169 = !{!130, !131, i64 0}
!170 = !DILocation(line: 45, column: 8, scope: !100)
!171 = !DILocation(line: 45, column: 16, scope: !100)
!172 = !{!130, !132, i64 72}
!173 = !DILocation(line: 46, column: 8, scope: !100)
!174 = !DILocation(line: 46, column: 23, scope: !100)
!175 = !{!130, !131, i64 8}
!176 = !DILocation(line: 47, column: 8, scope: !100)
!177 = !DILocation(line: 47, column: 20, scope: !100)
!178 = !{!130, !131, i64 16}
!179 = !DILocation(line: 48, column: 8, scope: !100)
!180 = !DILocation(line: 48, column: 21, scope: !100)
!181 = !{!130, !131, i64 24}
!182 = !DILocation(line: 49, column: 8, scope: !100)
!183 = !DILocation(line: 49, column: 19, scope: !100)
!184 = !{!130, !132, i64 76}
!185 = !DILocation(line: 50, column: 8, scope: !100)
!186 = !DILocation(line: 50, column: 33, scope: !100)
!187 = !{!130, !131, i64 32}
!188 = !DILocation(line: 51, column: 8, scope: !100)
!189 = !DILocation(line: 51, column: 35, scope: !100)
!190 = !{!130, !131, i64 40}
!191 = !DILocation(line: 52, column: 63, scope: !100)
!192 = !DILocation(line: 52, column: 46, scope: !100)
!193 = !DILocation(line: 52, column: 8, scope: !100)
!194 = !DILocation(line: 52, column: 14, scope: !100)
!195 = !{!130, !120, i64 52}
!196 = !DILocation(line: 53, column: 10, scope: !197)
!197 = distinct !DILexicalBlock(scope: !100, file: !3, line: 53, column: 9)
!198 = !DILocation(line: 53, column: 9, scope: !100)
!199 = !DILocation(line: 0, scope: !114)
!200 = !DILocation(line: 57, column: 23, scope: !201)
!201 = distinct !DILexicalBlock(scope: !114, file: !3, line: 57, column: 5)
!202 = !DILocation(line: 57, column: 5, scope: !114)
!203 = !DILocation(line: 54, column: 9, scope: !204)
!204 = distinct !DILexicalBlock(scope: !197, file: !3, line: 53, column: 20)
!205 = !DILocation(line: 55, column: 9, scope: !204)
!206 = !DILocation(line: 68, column: 22, scope: !100)
!207 = !DILocation(line: 69, column: 18, scope: !100)
!208 = !DILocation(line: 70, column: 5, scope: !100)
!209 = !DILocation(line: 58, column: 21, scope: !210)
!210 = distinct !DILexicalBlock(scope: !201, file: !3, line: 57, column: 41)
!211 = !DILocation(line: 58, column: 26, scope: !210)
!212 = !{!213, !131, i64 0}
!213 = !{!"_ZTS26halide_profiler_func_stats", !131, i64 0, !131, i64 8, !131, i64 16, !131, i64 24, !131, i64 32, !131, i64 40, !131, i64 48, !120, i64 56, !132, i64 60}
!214 = !DILocation(line: 59, column: 43, scope: !210)
!215 = !{!131, !131, i64 0}
!216 = !DILocation(line: 59, column: 28, scope: !210)
!217 = !DILocation(line: 59, column: 21, scope: !210)
!218 = !DILocation(line: 59, column: 26, scope: !210)
!219 = !{!213, !120, i64 56}
!220 = !DILocation(line: 60, column: 21, scope: !210)
!221 = !DILocation(line: 60, column: 36, scope: !210)
!222 = !{!213, !131, i64 8}
!223 = !DILocation(line: 61, column: 21, scope: !210)
!224 = !DILocation(line: 61, column: 33, scope: !210)
!225 = !{!213, !131, i64 16}
!226 = !DILocation(line: 62, column: 21, scope: !210)
!227 = !DILocation(line: 62, column: 34, scope: !210)
!228 = !{!213, !131, i64 24}
!229 = !DILocation(line: 63, column: 21, scope: !210)
!230 = !DILocation(line: 63, column: 32, scope: !210)
!231 = !{!213, !132, i64 60}
!232 = !DILocation(line: 64, column: 21, scope: !210)
!233 = !DILocation(line: 64, column: 32, scope: !210)
!234 = !{!213, !131, i64 32}
!235 = !DILocation(line: 65, column: 21, scope: !210)
!236 = !DILocation(line: 65, column: 46, scope: !210)
!237 = !{!213, !131, i64 40}
!238 = !DILocation(line: 66, column: 21, scope: !210)
!239 = !DILocation(line: 66, column: 48, scope: !210)
!240 = !{!213, !131, i64 48}
!241 = !DILocation(line: 57, column: 37, scope: !201)
!242 = distinct !{!242, !202, !243, !142}
!243 = !DILocation(line: 67, column: 5, scope: !114)
!244 = !DILocation(line: 71, column: 1, scope: !100)
!245 = !DISubprogram(name: "malloc", scope: !16, file: !16, line: 87, type: !246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!246 = !DISubroutineType(types: !247)
!247 = !{!56, !18}
!248 = !DISubprogram(name: "free", scope: !16, file: !16, line: 86, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !56}
!251 = distinct !DISubprogram(name: "bill_func", linkageName: "_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi", scope: !91, file: !3, line: 73, type: !252, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !6, !22, !31, !22}
!254 = !{!255, !256, !257, !258, !259, !260, !262}
!255 = !DILocalVariable(name: "s", arg: 1, scope: !251, file: !3, line: 73, type: !6)
!256 = !DILocalVariable(name: "func_id", arg: 2, scope: !251, file: !3, line: 73, type: !22)
!257 = !DILocalVariable(name: "time", arg: 3, scope: !251, file: !3, line: 73, type: !31)
!258 = !DILocalVariable(name: "active_threads", arg: 4, scope: !251, file: !3, line: 73, type: !22)
!259 = !DILocalVariable(name: "p_prev", scope: !251, file: !3, line: 74, type: !27)
!260 = !DILocalVariable(name: "p", scope: !261, file: !3, line: 75, type: !27)
!261 = distinct !DILexicalBlock(scope: !251, file: !3, line: 75, column: 5)
!262 = !DILocalVariable(name: "f", scope: !263, file: !3, line: 84, type: !43)
!263 = distinct !DILexicalBlock(scope: !264, file: !3, line: 77, column: 87)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 77, column: 13)
!265 = distinct !DILexicalBlock(scope: !266, file: !3, line: 76, column: 59)
!266 = distinct !DILexicalBlock(scope: !261, file: !3, line: 75, column: 5)
!267 = !DILocation(line: 0, scope: !251)
!268 = !DILocation(line: 75, column: 49, scope: !261)
!269 = !DILocation(line: 0, scope: !261)
!270 = !DILocation(line: 75, column: 60, scope: !266)
!271 = !DILocation(line: 75, column: 5, scope: !261)
!272 = !DILocation(line: 77, column: 27, scope: !264)
!273 = !DILocation(line: 77, column: 21, scope: !264)
!274 = !DILocation(line: 77, column: 41, scope: !264)
!275 = !DILocation(line: 77, column: 76, scope: !264)
!276 = !DILocation(line: 77, column: 71, scope: !264)
!277 = !DILocation(line: 77, column: 52, scope: !264)
!278 = !DILocation(line: 77, column: 13, scope: !265)
!279 = !DILocation(line: 78, column: 17, scope: !280)
!280 = distinct !DILexicalBlock(scope: !263, file: !3, line: 78, column: 17)
!281 = !DILocation(line: 78, column: 17, scope: !263)
!282 = !DILocation(line: 80, column: 70, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !3, line: 78, column: 25)
!284 = !DILocation(line: 80, column: 25, scope: !283)
!285 = !DILocation(line: 80, column: 30, scope: !283)
!286 = !DILocation(line: 81, column: 25, scope: !283)
!287 = !DILocation(line: 82, column: 30, scope: !283)
!288 = !DILocation(line: 83, column: 13, scope: !283)
!289 = !DILocation(line: 84, column: 48, scope: !263)
!290 = !DILocation(line: 84, column: 54, scope: !263)
!291 = !DILocation(line: 84, column: 64, scope: !263)
!292 = !DILocation(line: 0, scope: !263)
!293 = !DILocation(line: 85, column: 16, scope: !263)
!294 = !DILocation(line: 85, column: 21, scope: !263)
!295 = !DILocation(line: 86, column: 44, scope: !263)
!296 = !DILocation(line: 86, column: 16, scope: !263)
!297 = !DILocation(line: 86, column: 41, scope: !263)
!298 = !DILocation(line: 87, column: 16, scope: !263)
!299 = !DILocation(line: 87, column: 43, scope: !263)
!300 = !DILocation(line: 88, column: 16, scope: !263)
!301 = !DILocation(line: 88, column: 21, scope: !263)
!302 = !DILocation(line: 89, column: 16, scope: !263)
!303 = !DILocation(line: 89, column: 23, scope: !263)
!304 = !DILocation(line: 90, column: 16, scope: !263)
!305 = !DILocation(line: 90, column: 41, scope: !263)
!306 = !DILocation(line: 91, column: 16, scope: !263)
!307 = !DILocation(line: 91, column: 43, scope: !263)
!308 = !DILocation(line: 76, column: 52, scope: !266)
!309 = distinct !{!309, !271, !310, !142}
!310 = !DILocation(line: 95, column: 5, scope: !261)
!311 = !DILocation(line: 97, column: 1, scope: !251)
!312 = distinct !DISubprogram(name: "sampling_profiler_thread", linkageName: "_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv", scope: !91, file: !3, line: 99, type: !249, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !313)
!313 = !{!314, !315, !316, !318, !319, !321, !322, !323}
!314 = !DILocalVariable(arg: 1, scope: !312, file: !3, line: 99, type: !56)
!315 = !DILocalVariable(name: "s", scope: !312, file: !3, line: 100, type: !6)
!316 = !DILocalVariable(name: "t1", scope: !317, file: !3, line: 107, type: !31)
!317 = distinct !DILexicalBlock(scope: !312, file: !3, line: 105, column: 60)
!318 = !DILocalVariable(name: "t", scope: !317, file: !3, line: 108, type: !31)
!319 = !DILocalVariable(name: "func", scope: !320, file: !3, line: 110, type: !22)
!320 = distinct !DILexicalBlock(scope: !317, file: !3, line: 109, column: 22)
!321 = !DILocalVariable(name: "active_threads", scope: !320, file: !3, line: 110, type: !22)
!322 = !DILocalVariable(name: "t_now", scope: !320, file: !3, line: 119, type: !31)
!323 = !DILocalVariable(name: "sleep_ms", scope: !320, file: !3, line: 130, type: !22)
!324 = !DILocation(line: 0, scope: !312)
!325 = !DILocation(line: 100, column: 32, scope: !312)
!326 = !DILocation(line: 103, column: 27, scope: !312)
!327 = !DILocation(line: 103, column: 5, scope: !312)
!328 = !DILocation(line: 105, column: 15, scope: !312)
!329 = !{!150, !132, i64 12}
!330 = !DILocation(line: 105, column: 28, scope: !312)
!331 = !DILocation(line: 105, column: 5, scope: !312)
!332 = !DILocation(line: 0, scope: !317)
!333 = !DILocation(line: 134, column: 9, scope: !317)
!334 = distinct !{!334, !331, !335, !142}
!335 = !DILocation(line: 135, column: 5, scope: !312)
!336 = !DILocation(line: 107, column: 23, scope: !317)
!337 = !DILocation(line: 109, column: 9, scope: !317)
!338 = !DILocation(line: 108, column: 18, scope: !317)
!339 = !DILocation(line: 110, column: 13, scope: !320)
!340 = !DILocation(line: 111, column: 20, scope: !341)
!341 = distinct !DILexicalBlock(scope: !320, file: !3, line: 111, column: 17)
!342 = !{!150, !120, i64 24}
!343 = !DILocation(line: 111, column: 17, scope: !341)
!344 = !DILocation(line: 111, column: 17, scope: !320)
!345 = !DILocation(line: 0, scope: !320)
!346 = !DILocation(line: 114, column: 17, scope: !347)
!347 = distinct !DILexicalBlock(scope: !341, file: !3, line: 111, column: 47)
!348 = !DILocation(line: 115, column: 13, scope: !347)
!349 = !DILocation(line: 116, column: 27, scope: !350)
!350 = distinct !DILexicalBlock(scope: !341, file: !3, line: 115, column: 20)
!351 = !DILocation(line: 116, column: 22, scope: !350)
!352 = !{!132, !132, i64 0}
!353 = !DILocation(line: 117, column: 37, scope: !350)
!354 = !{!150, !132, i64 16}
!355 = !DILocation(line: 117, column: 32, scope: !350)
!356 = !DILocation(line: 119, column: 30, scope: !320)
!357 = !DILocation(line: 120, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !320, file: !3, line: 120, column: 17)
!359 = !DILocation(line: 120, column: 22, scope: !358)
!360 = !DILocation(line: 120, column: 17, scope: !320)
!361 = !DILocation(line: 122, column: 29, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !3, line: 122, column: 24)
!363 = !DILocation(line: 122, column: 24, scope: !358)
!364 = !DILocation(line: 125, column: 42, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !3, line: 122, column: 35)
!366 = !DILocation(line: 125, column: 47, scope: !365)
!367 = !DILocation(line: 125, column: 17, scope: !365)
!368 = !DILocation(line: 126, column: 13, scope: !365)
!369 = !DILocation(line: 130, column: 31, scope: !320)
!370 = !{!150, !132, i64 4}
!371 = !DILocation(line: 131, column: 13, scope: !320)
!372 = !DILocation(line: 132, column: 13, scope: !320)
!373 = !DILocation(line: 133, column: 13, scope: !320)
!374 = !DILocation(line: 137, column: 5, scope: !312)
!375 = !DILocation(line: 138, column: 1, scope: !312)
!376 = !DISubprogram(name: "halide_mutex_lock", scope: !8, file: !8, line: 133, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!380 = !DISubprogram(name: "halide_current_time_ns", scope: !16, file: !16, line: 136, type: !381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!381 = !DISubroutineType(types: !382)
!382 = !{!383, !56}
!383 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!384 = !DISubprogram(name: "halide_mutex_unlock", scope: !8, file: !8, line: 134, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!385 = !DISubprogram(name: "halide_sleep_ms", scope: !16, file: !16, line: 137, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !56, !22}
!388 = distinct !DISubprogram(name: "halide_profiler_get_pipeline_state", scope: !3, file: !3, line: 162, type: !389, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{!27, !39}
!391 = !{!392, !393, !394, !406}
!392 = !DILocalVariable(name: "pipeline_name", arg: 1, scope: !388, file: !3, line: 162, type: !39)
!393 = !DILocalVariable(name: "s", scope: !388, file: !3, line: 163, type: !6)
!394 = !DILocalVariable(name: "lock", scope: !388, file: !3, line: 165, type: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !91, file: !396, line: 11, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !397, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!396 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!397 = !{!398, !399, !403}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !395, file: !396, line: 12, baseType: !379, size: 32)
!399 = !DISubprogram(name: "ScopedMutexLock", scope: !395, file: !396, line: 14, type: !400, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402, !379}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!403 = !DISubprogram(name: "~ScopedMutexLock", scope: !395, file: !396, line: 19, type: !404, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !402}
!406 = !DILocalVariable(name: "p", scope: !407, file: !3, line: 167, type: !27)
!407 = distinct !DILexicalBlock(scope: !388, file: !3, line: 167, column: 5)
!408 = !DILocation(line: 0, scope: !388)
!409 = !DILocation(line: 163, column: 32, scope: !388)
!410 = !DILocation(line: 165, column: 30, scope: !388)
!411 = !DILocalVariable(name: "this", arg: 1, scope: !412, type: !415, flags: DIFlagArtificial | DIFlagObjectPointer)
!412 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !395, file: !396, line: 14, type: !400, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !399, retainedNodes: !413)
!413 = !{!411, !414}
!414 = !DILocalVariable(name: "mutex", arg: 2, scope: !412, file: !396, line: 14, type: !379)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 32)
!416 = !DILocation(line: 0, scope: !412, inlinedAt: !417)
!417 = distinct !DILocation(line: 165, column: 21, scope: !388)
!418 = !DILocation(line: 16, column: 9, scope: !419, inlinedAt: !417)
!419 = distinct !DILexicalBlock(scope: !412, file: !396, line: 15, column: 24)
!420 = !DILocation(line: 167, column: 49, scope: !407)
!421 = !DILocation(line: 0, scope: !407)
!422 = !DILocation(line: 167, column: 60, scope: !423)
!423 = distinct !DILexicalBlock(scope: !407, file: !3, line: 167, column: 5)
!424 = !DILocation(line: 167, column: 5, scope: !407)
!425 = !DILocation(line: 171, column: 16, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !3, line: 171, column: 13)
!427 = distinct !DILexicalBlock(scope: !423, file: !3, line: 168, column: 59)
!428 = !DILocation(line: 171, column: 21, scope: !426)
!429 = !DILocation(line: 171, column: 13, scope: !427)
!430 = !DILocation(line: 168, column: 52, scope: !423)
!431 = distinct !{!431, !424, !432, !142}
!432 = !DILocation(line: 174, column: 5, scope: !407)
!433 = !DILocalVariable(name: "this", arg: 1, scope: !434, type: !415, flags: DIFlagArtificial | DIFlagObjectPointer)
!434 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !395, file: !396, line: 19, type: !404, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !403, retainedNodes: !435)
!435 = !{!433}
!436 = !DILocation(line: 0, scope: !434, inlinedAt: !437)
!437 = distinct !DILocation(line: 176, column: 1, scope: !388)
!438 = !DILocation(line: 20, column: 9, scope: !439, inlinedAt: !437)
!439 = distinct !DILexicalBlock(scope: !434, file: !396, line: 19, column: 38)
!440 = !DILocation(line: 176, column: 1, scope: !388)
!441 = distinct !DISubprogram(name: "halide_profiler_pipeline_start", scope: !3, file: !3, line: 179, type: !442, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{!22, !56, !39, !22, !103}
!444 = !{!445, !446, !447, !448, !449, !450, !451}
!445 = !DILocalVariable(name: "user_context", arg: 1, scope: !441, file: !3, line: 179, type: !56)
!446 = !DILocalVariable(name: "pipeline_name", arg: 2, scope: !441, file: !3, line: 180, type: !39)
!447 = !DILocalVariable(name: "num_funcs", arg: 3, scope: !441, file: !3, line: 181, type: !22)
!448 = !DILocalVariable(name: "func_names", arg: 4, scope: !441, file: !3, line: 182, type: !103)
!449 = !DILocalVariable(name: "s", scope: !441, file: !3, line: 183, type: !6)
!450 = !DILocalVariable(name: "lock", scope: !441, file: !3, line: 185, type: !395)
!451 = !DILocalVariable(name: "p", scope: !441, file: !3, line: 192, type: !27)
!452 = !DILocation(line: 0, scope: !441)
!453 = !DILocation(line: 183, column: 32, scope: !441)
!454 = !DILocation(line: 185, column: 30, scope: !441)
!455 = !DILocation(line: 0, scope: !412, inlinedAt: !456)
!456 = distinct !DILocation(line: 185, column: 21, scope: !441)
!457 = !DILocation(line: 16, column: 9, scope: !419, inlinedAt: !456)
!458 = !DILocation(line: 187, column: 13, scope: !459)
!459 = distinct !DILexicalBlock(scope: !441, file: !3, line: 187, column: 9)
!460 = !{!150, !120, i64 28}
!461 = !DILocation(line: 187, column: 10, scope: !459)
!462 = !DILocation(line: 187, column: 9, scope: !441)
!463 = !DILocation(line: 188, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !459, file: !3, line: 187, column: 30)
!465 = !DILocation(line: 189, column: 30, scope: !464)
!466 = !DILocation(line: 189, column: 28, scope: !464)
!467 = !DILocation(line: 190, column: 5, scope: !464)
!468 = !DILocation(line: 193, column: 9, scope: !441)
!469 = !DILocation(line: 194, column: 10, scope: !470)
!470 = distinct !DILexicalBlock(scope: !441, file: !3, line: 194, column: 9)
!471 = !DILocation(line: 194, column: 9, scope: !441)
!472 = !DILocation(line: 196, column: 16, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !3, line: 194, column: 13)
!474 = !DILocation(line: 196, column: 9, scope: !473)
!475 = !DILocation(line: 198, column: 8, scope: !441)
!476 = !DILocation(line: 198, column: 12, scope: !441)
!477 = !DILocation(line: 200, column: 15, scope: !441)
!478 = !DILocation(line: 200, column: 5, scope: !441)
!479 = !DILocation(line: 0, scope: !434, inlinedAt: !480)
!480 = distinct !DILocation(line: 201, column: 1, scope: !441)
!481 = !DILocation(line: 20, column: 9, scope: !439, inlinedAt: !480)
!482 = !DILocation(line: 201, column: 1, scope: !441)
!483 = !DISubprogram(name: "halide_start_clock", scope: !16, file: !16, line: 135, type: !484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!484 = !DISubroutineType(types: !485)
!485 = !{!22, !56}
!486 = !DISubprogram(name: "halide_spawn_thread", scope: !8, file: !8, line: 317, type: !487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!487 = !DISubroutineType(types: !488)
!488 = !{!68, !489, !56}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 32)
!490 = !DISubprogram(name: "halide_error_out_of_memory", scope: !8, file: !8, line: 1227, type: !484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!491 = distinct !DISubprogram(name: "halide_profiler_stack_peak_update", scope: !3, file: !3, line: 203, type: !492, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !495)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !56, !56, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 32)
!495 = !{!496, !497, !498, !499, !500}
!496 = !DILocalVariable(name: "user_context", arg: 1, scope: !491, file: !3, line: 203, type: !56)
!497 = !DILocalVariable(name: "pipeline_state", arg: 2, scope: !491, file: !3, line: 204, type: !56)
!498 = !DILocalVariable(name: "f_values", arg: 3, scope: !491, file: !3, line: 205, type: !494)
!499 = !DILocalVariable(name: "p_stats", scope: !491, file: !3, line: 206, type: !27)
!500 = !DILocalVariable(name: "i", scope: !501, file: !3, line: 216, type: !22)
!501 = distinct !DILexicalBlock(scope: !491, file: !3, line: 216, column: 5)
!502 = !DILocation(line: 0, scope: !491)
!503 = !DILocation(line: 207, column: 5, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !3, line: 207, column: 5)
!505 = distinct !DILexicalBlock(scope: !491, file: !3, line: 207, column: 5)
!506 = !DILocation(line: 207, column: 5, scope: !505)
!507 = !DILocation(line: 207, column: 5, scope: !508)
!508 = distinct !DILexicalBlock(scope: !504, file: !3, line: 207, column: 5)
!509 = !DILocation(line: 0, scope: !501)
!510 = !DILocation(line: 216, column: 34, scope: !511)
!511 = distinct !DILexicalBlock(scope: !501, file: !3, line: 216, column: 5)
!512 = !DILocation(line: 216, column: 23, scope: !511)
!513 = !DILocation(line: 216, column: 5, scope: !501)
!514 = !DILocation(line: 221, column: 1, scope: !491)
!515 = !DILocation(line: 217, column: 13, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 217, column: 13)
!517 = distinct !DILexicalBlock(scope: !511, file: !3, line: 216, column: 50)
!518 = !DILocation(line: 217, column: 25, scope: !516)
!519 = !DILocation(line: 217, column: 13, scope: !517)
!520 = !DILocation(line: 218, column: 50, scope: !521)
!521 = distinct !DILexicalBlock(scope: !516, file: !3, line: 217, column: 31)
!522 = !DILocation(line: 218, column: 60, scope: !521)
!523 = !DILocalVariable(name: "ptr", arg: 1, scope: !524, file: !3, line: 147, type: !528)
!524 = distinct !DISubprogram(name: "sync_compare_max_and_swap<unsigned long long>", linkageName: "_ZN12_GLOBAL__N_125sync_compare_max_and_swapIyEEvPT_S1_", scope: !525, file: !3, line: 147, type: !526, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, templateParams: !534, retainedNodes: !529)
!525 = !DINamespace(scope: null)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !528, !32}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!529 = !{!523, !530, !531, !532}
!530 = !DILocalVariable(name: "val", arg: 2, scope: !524, file: !3, line: 147, type: !32)
!531 = !DILocalVariable(name: "old_val", scope: !524, file: !3, line: 148, type: !32)
!532 = !DILocalVariable(name: "temp", scope: !533, file: !3, line: 150, type: !32)
!533 = distinct !DILexicalBlock(scope: !524, file: !3, line: 149, column: 27)
!534 = !{!535}
!535 = !DITemplateTypeParameter(name: "T", type: !32)
!536 = !DILocation(line: 0, scope: !524, inlinedAt: !537)
!537 = distinct !DILocation(line: 218, column: 13, scope: !521)
!538 = !DILocation(line: 148, column: 17, scope: !524, inlinedAt: !537)
!539 = !DILocation(line: 149, column: 5, scope: !524, inlinedAt: !537)
!540 = !DILocation(line: 149, column: 16, scope: !524, inlinedAt: !537)
!541 = !DILocation(line: 0, scope: !533, inlinedAt: !537)
!542 = !DILocation(line: 151, column: 19, scope: !533, inlinedAt: !537)
!543 = !DILocation(line: 152, column: 18, scope: !544, inlinedAt: !537)
!544 = distinct !DILexicalBlock(scope: !533, file: !3, line: 152, column: 13)
!545 = distinct !{!545, !539, !546, !142}
!546 = !DILocation(line: 155, column: 5, scope: !524, inlinedAt: !537)
!547 = !DILocation(line: 216, column: 45, scope: !511)
!548 = distinct !{!548, !513, !549, !142}
!549 = !DILocation(line: 220, column: 5, scope: !501)
!550 = !DISubprogram(name: "halide_print", scope: !8, file: !8, line: 97, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !56, !39}
!553 = !DISubprogram(name: "abort", scope: !16, file: !16, line: 108, type: !554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!554 = !DISubroutineType(types: !555)
!555 = !{null}
!556 = distinct !DISubprogram(name: "halide_profiler_memory_allocate", scope: !3, file: !3, line: 223, type: !557, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !56, !56, !22, !31}
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567}
!560 = !DILocalVariable(name: "user_context", arg: 1, scope: !556, file: !3, line: 223, type: !56)
!561 = !DILocalVariable(name: "pipeline_state", arg: 2, scope: !556, file: !3, line: 224, type: !56)
!562 = !DILocalVariable(name: "func_id", arg: 3, scope: !556, file: !3, line: 225, type: !22)
!563 = !DILocalVariable(name: "incr", arg: 4, scope: !556, file: !3, line: 226, type: !31)
!564 = !DILocalVariable(name: "p_stats", scope: !556, file: !3, line: 233, type: !27)
!565 = !DILocalVariable(name: "f_stats", scope: !556, file: !3, line: 238, type: !43)
!566 = !DILocalVariable(name: "p_mem_current", scope: !556, file: !3, line: 249, type: !31)
!567 = !DILocalVariable(name: "f_mem_current", scope: !556, file: !3, line: 255, type: !31)
!568 = !DILocation(line: 0, scope: !556)
!569 = !DILocation(line: 229, column: 14, scope: !570)
!570 = distinct !DILexicalBlock(scope: !556, file: !3, line: 229, column: 9)
!571 = !DILocation(line: 229, column: 9, scope: !556)
!572 = !DILocation(line: 234, column: 5, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !3, line: 234, column: 5)
!574 = distinct !DILexicalBlock(scope: !556, file: !3, line: 234, column: 5)
!575 = !DILocation(line: 234, column: 5, scope: !574)
!576 = !DILocation(line: 234, column: 5, scope: !577)
!577 = distinct !DILexicalBlock(scope: !573, file: !3, line: 234, column: 5)
!578 = !DILocation(line: 235, column: 5, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 235, column: 5)
!580 = distinct !DILexicalBlock(scope: !556, file: !3, line: 235, column: 5)
!581 = !DILocation(line: 235, column: 5, scope: !580)
!582 = !DILocation(line: 235, column: 5, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !3, line: 235, column: 5)
!584 = !DILocation(line: 236, column: 5, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !3, line: 236, column: 5)
!586 = distinct !DILexicalBlock(scope: !556, file: !3, line: 236, column: 5)
!587 = !DILocation(line: 236, column: 5, scope: !586)
!588 = !DILocation(line: 236, column: 5, scope: !589)
!589 = distinct !DILexicalBlock(scope: !585, file: !3, line: 236, column: 5)
!590 = !DILocation(line: 238, column: 53, scope: !556)
!591 = !DILocation(line: 247, column: 36, scope: !556)
!592 = !DILocation(line: 247, column: 5, scope: !556)
!593 = !DILocation(line: 248, column: 36, scope: !556)
!594 = !DILocation(line: 248, column: 5, scope: !556)
!595 = !DILocation(line: 249, column: 61, scope: !556)
!596 = !DILocation(line: 249, column: 30, scope: !556)
!597 = !DILocation(line: 250, column: 41, scope: !556)
!598 = !DILocation(line: 0, scope: !524, inlinedAt: !599)
!599 = distinct !DILocation(line: 250, column: 5, scope: !556)
!600 = !DILocation(line: 148, column: 17, scope: !524, inlinedAt: !599)
!601 = !DILocation(line: 149, column: 5, scope: !524, inlinedAt: !599)
!602 = !DILocation(line: 149, column: 16, scope: !524, inlinedAt: !599)
!603 = !DILocation(line: 0, scope: !533, inlinedAt: !599)
!604 = !DILocation(line: 151, column: 19, scope: !533, inlinedAt: !599)
!605 = !DILocation(line: 152, column: 18, scope: !544, inlinedAt: !599)
!606 = distinct !{!606, !601, !607, !142}
!607 = !DILocation(line: 155, column: 5, scope: !524, inlinedAt: !599)
!608 = !DILocation(line: 253, column: 36, scope: !556)
!609 = !DILocation(line: 253, column: 5, scope: !556)
!610 = !DILocation(line: 254, column: 36, scope: !556)
!611 = !DILocation(line: 254, column: 5, scope: !556)
!612 = !DILocation(line: 255, column: 61, scope: !556)
!613 = !DILocation(line: 255, column: 30, scope: !556)
!614 = !DILocation(line: 256, column: 41, scope: !556)
!615 = !DILocation(line: 0, scope: !524, inlinedAt: !616)
!616 = distinct !DILocation(line: 256, column: 5, scope: !556)
!617 = !DILocation(line: 148, column: 17, scope: !524, inlinedAt: !616)
!618 = !DILocation(line: 149, column: 5, scope: !524, inlinedAt: !616)
!619 = !DILocation(line: 149, column: 16, scope: !524, inlinedAt: !616)
!620 = !DILocation(line: 0, scope: !533, inlinedAt: !616)
!621 = !DILocation(line: 151, column: 19, scope: !533, inlinedAt: !616)
!622 = !DILocation(line: 152, column: 18, scope: !544, inlinedAt: !616)
!623 = distinct !{!623, !618, !624, !142}
!624 = !DILocation(line: 155, column: 5, scope: !524, inlinedAt: !616)
!625 = !DILocation(line: 257, column: 1, scope: !556)
!626 = distinct !DISubprogram(name: "halide_profiler_memory_free", scope: !3, file: !3, line: 259, type: !557, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !627)
!627 = !{!628, !629, !630, !631, !632, !633}
!628 = !DILocalVariable(name: "user_context", arg: 1, scope: !626, file: !3, line: 259, type: !56)
!629 = !DILocalVariable(name: "pipeline_state", arg: 2, scope: !626, file: !3, line: 260, type: !56)
!630 = !DILocalVariable(name: "func_id", arg: 3, scope: !626, file: !3, line: 261, type: !22)
!631 = !DILocalVariable(name: "decr", arg: 4, scope: !626, file: !3, line: 262, type: !31)
!632 = !DILocalVariable(name: "p_stats", scope: !626, file: !3, line: 269, type: !27)
!633 = !DILocalVariable(name: "f_stats", scope: !626, file: !3, line: 274, type: !43)
!634 = !DILocation(line: 0, scope: !626)
!635 = !DILocation(line: 265, column: 14, scope: !636)
!636 = distinct !DILexicalBlock(scope: !626, file: !3, line: 265, column: 9)
!637 = !DILocation(line: 265, column: 9, scope: !626)
!638 = !DILocation(line: 270, column: 5, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 270, column: 5)
!640 = distinct !DILexicalBlock(scope: !626, file: !3, line: 270, column: 5)
!641 = !DILocation(line: 270, column: 5, scope: !640)
!642 = !DILocation(line: 270, column: 5, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !3, line: 270, column: 5)
!644 = !DILocation(line: 271, column: 5, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 271, column: 5)
!646 = distinct !DILexicalBlock(scope: !626, file: !3, line: 271, column: 5)
!647 = !DILocation(line: 271, column: 5, scope: !646)
!648 = !DILocation(line: 271, column: 5, scope: !649)
!649 = distinct !DILexicalBlock(scope: !645, file: !3, line: 271, column: 5)
!650 = !DILocation(line: 272, column: 5, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !3, line: 272, column: 5)
!652 = distinct !DILexicalBlock(scope: !626, file: !3, line: 272, column: 5)
!653 = !DILocation(line: 272, column: 5, scope: !652)
!654 = !DILocation(line: 272, column: 5, scope: !655)
!655 = distinct !DILexicalBlock(scope: !651, file: !3, line: 272, column: 5)
!656 = !DILocation(line: 274, column: 53, scope: !626)
!657 = !DILocation(line: 283, column: 36, scope: !626)
!658 = !DILocation(line: 283, column: 5, scope: !626)
!659 = !DILocation(line: 286, column: 36, scope: !626)
!660 = !DILocation(line: 286, column: 5, scope: !626)
!661 = !DILocation(line: 287, column: 1, scope: !626)
!662 = distinct !DISubprogram(name: "halide_profiler_report_unlocked", scope: !3, file: !3, line: 289, type: !663, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !665)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !56, !6}
!665 = !{!666, !667, !668, !672, !787, !789, !792, !793, !794, !795, !796, !800, !803, !807, !811, !812, !813, !814, !817}
!666 = !DILocalVariable(name: "user_context", arg: 1, scope: !662, file: !3, line: 289, type: !56)
!667 = !DILocalVariable(name: "s", arg: 2, scope: !662, file: !3, line: 289, type: !6)
!668 = !DILocalVariable(name: "line_buf", scope: !662, file: !3, line: 291, type: !669)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8192, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 1024)
!672 = !DILocalVariable(name: "sstr", scope: !662, file: !3, line: 292, type: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<2, 1024>", scope: !675, file: !674, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !676, templateParams: !784)
!674 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!675 = !DINamespace(scope: !91)
!676 = !{!677, !678, !679, !680, !681, !683, !685, !689, !693, !697, !701, !704, !707, !711, !715, !720, !726, !759, !766, !769, !772, !777, !778, !781, !782, !783}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !673, file: !674, line: 32, baseType: !87, size: 32, flags: DIFlagPublic)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !673, file: !674, line: 32, baseType: !87, size: 32, offset: 32, flags: DIFlagPublic)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !673, file: !674, line: 32, baseType: !87, size: 32, offset: 64, flags: DIFlagPublic)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !673, file: !674, line: 33, baseType: !56, size: 32, offset: 96, flags: DIFlagPublic)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !673, file: !674, line: 34, baseType: !682, size: 8, offset: 128, flags: DIFlagPublic)
!682 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !673, file: !674, line: 35, baseType: !684, size: 8, offset: 136, flags: DIFlagPublic)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !19)
!685 = !DISubprogram(name: "Printer", scope: !673, file: !674, line: 37, type: !686, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !688, !56, !87}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!689 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEPKc", scope: !673, file: !674, line: 57, type: !690, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!690 = !DISubroutineType(types: !691)
!691 = !{!692, !688, !39}
!692 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !673, size: 32)
!693 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEx", scope: !673, file: !674, line: 67, type: !694, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!694 = !DISubroutineType(types: !695)
!695 = !{!692, !688, !696}
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !16, line: 9, baseType: !383)
!697 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEi", scope: !673, file: !674, line: 72, type: !698, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!698 = !DISubroutineType(types: !699)
!699 = !{!692, !688, !700}
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !16, line: 11, baseType: !22)
!701 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEy", scope: !673, file: !674, line: 77, type: !702, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!702 = !DISubroutineType(types: !703)
!703 = !{!692, !688, !31}
!704 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEj", scope: !673, file: !674, line: 82, type: !705, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!705 = !DISubroutineType(types: !706)
!706 = !{!692, !688, !17}
!707 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEd", scope: !673, file: !674, line: 87, type: !708, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!708 = !DISubroutineType(types: !709)
!709 = !{!692, !688, !710}
!710 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!711 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEf", scope: !673, file: !674, line: 92, type: !712, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = !DISubroutineType(types: !713)
!713 = !{!692, !688, !714}
!714 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!715 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEPKv", scope: !673, file: !674, line: 97, type: !716, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!716 = !DISubroutineType(types: !717)
!717 = !{!692, !688, !718}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!720 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE23write_float16_from_bitsEt", scope: !673, file: !674, line: 102, type: !721, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!721 = !DISubroutineType(types: !722)
!722 = !{!692, !688, !723}
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !16, line: 14, baseType: !725)
!725 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!726 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsERK13halide_type_t", scope: !673, file: !674, line: 108, type: !727, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!727 = !DISubroutineType(types: !728)
!728 = !{!692, !688, !729}
!729 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !730, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !8, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !732, identifier: "_ZTS13halide_type_t")
!732 = !{!733, !735, !736, !737, !741, !744, !748, !751, !752, !753, !756}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !731, file: !8, line: 434, baseType: !734, size: 8, align: 8)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !8, line: 413, baseType: !77)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !731, file: !8, line: 442, baseType: !78, size: 8, align: 8, offset: 8)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !731, file: !8, line: 446, baseType: !724, size: 16, align: 16, offset: 16)
!737 = !DISubprogram(name: "halide_type_t", scope: !731, file: !8, line: 453, type: !738, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !740, !734, !78, !724}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!741 = !DISubprogram(name: "halide_type_t", scope: !731, file: !8, line: 459, type: !742, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !740}
!744 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !731, file: !8, line: 463, type: !745, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!745 = !DISubroutineType(types: !746)
!746 = !{!731, !747, !724}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!748 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !731, file: !8, line: 468, type: !749, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!749 = !DISubroutineType(types: !750)
!750 = !{!682, !747, !729}
!751 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !731, file: !8, line: 472, type: !749, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!752 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !731, file: !8, line: 476, type: !749, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!753 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !731, file: !8, line: 481, type: !754, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!754 = !DISubroutineType(types: !755)
!755 = !{!22, !747}
!756 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !731, file: !8, line: 485, type: !757, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!757 = !DISubroutineType(types: !758)
!758 = !{!17, !747}
!759 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsERK15halide_buffer_t", scope: !673, file: !674, line: 113, type: !760, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!760 = !DISubroutineType(types: !761)
!761 = !{!692, !688, !762}
!762 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !763, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !8, line: 1550, baseType: !765)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !8, line: 1423, size: 320, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!766 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE3strEv", scope: !673, file: !674, line: 119, type: !767, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!767 = !DISubroutineType(types: !768)
!768 = !{!39, !688}
!769 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5clearEv", scope: !673, file: !674, line: 131, type: !770, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !688}
!772 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE4sizeEv", scope: !673, file: !674, line: 139, type: !773, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!773 = !DISubroutineType(types: !774)
!774 = !{!31, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!777 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE8capacityEv", scope: !673, file: !674, line: 143, type: !773, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!778 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5eraseEi", scope: !673, file: !674, line: 148, type: !779, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !688, !22}
!781 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE16allocation_errorEv", scope: !673, file: !674, line: 158, type: !767, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!782 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE28msan_annotate_is_initializedEv", scope: !673, file: !674, line: 162, type: !770, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!783 = !DISubprogram(name: "~Printer", scope: !673, file: !674, line: 166, type: !770, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!784 = !{!785, !786}
!785 = !DITemplateValueParameter(name: "type", type: !22, value: i32 2)
!786 = !DITemplateValueParameter(name: "length", type: !32, value: i64 1024)
!787 = !DILocalVariable(name: "p", scope: !788, file: !3, line: 294, type: !27)
!788 = distinct !DILexicalBlock(scope: !662, file: !3, line: 294, column: 5)
!789 = !DILocalVariable(name: "t", scope: !790, file: !3, line: 296, type: !714)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 295, column: 59)
!791 = distinct !DILexicalBlock(scope: !788, file: !3, line: 294, column: 5)
!792 = !DILocalVariable(name: "alloc_avg", scope: !790, file: !3, line: 301, type: !22)
!793 = !DILocalVariable(name: "serial", scope: !790, file: !3, line: 305, type: !682)
!794 = !DILocalVariable(name: "threads", scope: !790, file: !3, line: 306, type: !714)
!795 = !DILocalVariable(name: "print_f_states", scope: !790, file: !3, line: 319, type: !682)
!796 = !DILocalVariable(name: "i", scope: !797, file: !3, line: 321, type: !22)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 321, column: 13)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 320, column: 30)
!799 = distinct !DILexicalBlock(scope: !790, file: !3, line: 320, column: 13)
!800 = !DILocalVariable(name: "fs", scope: !801, file: !3, line: 322, type: !43)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 321, column: 52)
!802 = distinct !DILexicalBlock(scope: !797, file: !3, line: 321, column: 13)
!803 = !DILocalVariable(name: "i", scope: !804, file: !3, line: 331, type: !22)
!804 = distinct !DILexicalBlock(scope: !805, file: !3, line: 331, column: 13)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 330, column: 29)
!806 = distinct !DILexicalBlock(scope: !790, file: !3, line: 330, column: 13)
!807 = !DILocalVariable(name: "cursor", scope: !808, file: !3, line: 332, type: !810)
!808 = distinct !DILexicalBlock(scope: !809, file: !3, line: 331, column: 52)
!809 = distinct !DILexicalBlock(scope: !804, file: !3, line: 331, column: 13)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 27, baseType: !18)
!811 = !DILocalVariable(name: "fs", scope: !808, file: !3, line: 334, type: !43)
!812 = !DILocalVariable(name: "ft", scope: !808, file: !3, line: 348, type: !714)
!813 = !DILocalVariable(name: "percent", scope: !808, file: !3, line: 358, type: !22)
!814 = !DILocalVariable(name: "threads", scope: !815, file: !3, line: 369, type: !714)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 368, column: 30)
!816 = distinct !DILexicalBlock(scope: !808, file: !3, line: 368, column: 21)
!817 = !DILocalVariable(name: "alloc_avg", scope: !808, file: !3, line: 378, type: !22)
!818 = !DILocation(line: 0, scope: !662)
!819 = !DILocation(line: 291, column: 5, scope: !662)
!820 = !DILocation(line: 291, column: 10, scope: !662)
!821 = !DILocation(line: 292, column: 5, scope: !662)
!822 = !DILocation(line: 292, column: 52, scope: !662)
!823 = !DILocalVariable(name: "this", arg: 1, scope: !824, type: !828, flags: DIFlagArtificial | DIFlagObjectPointer)
!824 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEC2EPvPc", scope: !673, file: !674, line: 37, type: !686, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !685, retainedNodes: !825)
!825 = !{!823, !826, !827}
!826 = !DILocalVariable(name: "ctx", arg: 2, scope: !824, file: !674, line: 37, type: !56)
!827 = !DILocalVariable(name: "mem", arg: 3, scope: !824, file: !674, line: 37, type: !87)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 32)
!829 = !DILocation(line: 0, scope: !824, inlinedAt: !830)
!830 = distinct !DILocation(line: 292, column: 52, scope: !662)
!831 = !DILocation(line: 38, column: 11, scope: !824, inlinedAt: !830)
!832 = !{!833, !120, i64 12}
!833 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEE", !120, i64 0, !120, i64 4, !120, i64 8, !120, i64 12, !834, i64 16, !121, i64 17}
!834 = !{!"bool", !121, i64 0}
!835 = !DILocation(line: 38, column: 30, scope: !824, inlinedAt: !830)
!836 = !{!833, !834, i64 16}
!837 = !DILocation(line: 44, column: 13, scope: !838, inlinedAt: !830)
!838 = distinct !DILexicalBlock(scope: !839, file: !674, line: 43, column: 16)
!839 = distinct !DILexicalBlock(scope: !840, file: !674, line: 41, column: 20)
!840 = distinct !DILexicalBlock(scope: !841, file: !674, line: 39, column: 13)
!841 = distinct !DILexicalBlock(scope: !824, file: !674, line: 38, column: 54)
!842 = !DILocation(line: 44, column: 17, scope: !838, inlinedAt: !830)
!843 = !DILocation(line: 47, column: 9, scope: !841, inlinedAt: !830)
!844 = !DILocation(line: 47, column: 13, scope: !841, inlinedAt: !830)
!845 = !{!833, !120, i64 4}
!846 = !DILocation(line: 49, column: 23, scope: !847, inlinedAt: !830)
!847 = distinct !DILexicalBlock(scope: !848, file: !674, line: 48, column: 18)
!848 = distinct !DILexicalBlock(scope: !841, file: !674, line: 48, column: 13)
!849 = !DILocation(line: 49, column: 13, scope: !847, inlinedAt: !830)
!850 = !DILocation(line: 49, column: 17, scope: !847, inlinedAt: !830)
!851 = !{!833, !120, i64 8}
!852 = !DILocation(line: 50, column: 18, scope: !847, inlinedAt: !830)
!853 = !{!121, !121, i64 0}
!854 = !DILocation(line: 294, column: 49, scope: !788)
!855 = !DILocation(line: 0, scope: !788)
!856 = !DILocation(line: 294, column: 60, scope: !791)
!857 = !DILocation(line: 294, column: 5, scope: !788)
!858 = !DILocation(line: 167, column: 14, scope: !859, inlinedAt: !864)
!859 = distinct !DILexicalBlock(scope: !860, file: !674, line: 167, column: 13)
!860 = distinct !DILexicalBlock(scope: !861, file: !674, line: 166, column: 16)
!861 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EED2Ev", scope: !673, file: !674, line: 166, type: !770, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !783, retainedNodes: !862)
!862 = !{!863}
!863 = !DILocalVariable(name: "this", arg: 1, scope: !861, type: !828, flags: DIFlagArtificial | DIFlagObjectPointer)
!864 = distinct !DILocation(line: 405, column: 1, scope: !662)
!865 = !{!833, !120, i64 0}
!866 = !DILocation(line: 0, scope: !861, inlinedAt: !864)
!867 = !DILocation(line: 167, column: 13, scope: !860, inlinedAt: !864)
!868 = !DILocation(line: 168, column: 26, scope: !869, inlinedAt: !864)
!869 = distinct !DILexicalBlock(scope: !859, file: !674, line: 167, column: 19)
!870 = !DILocation(line: 168, column: 13, scope: !869, inlinedAt: !864)
!871 = !DILocation(line: 169, column: 9, scope: !869, inlinedAt: !864)
!872 = !DILocation(line: 170, column: 13, scope: !873, inlinedAt: !864)
!873 = distinct !DILexicalBlock(scope: !859, file: !674, line: 169, column: 16)
!874 = !DILocalVariable(name: "this", arg: 1, scope: !875, type: !828, flags: DIFlagArtificial | DIFlagObjectPointer)
!875 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE28msan_annotate_is_initializedEv", scope: !673, file: !674, line: 162, type: !770, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !782, retainedNodes: !876)
!876 = !{!874}
!877 = !DILocation(line: 0, scope: !875, inlinedAt: !878)
!878 = distinct !DILocation(line: 170, column: 13, scope: !873, inlinedAt: !864)
!879 = !DILocation(line: 163, column: 81, scope: !875, inlinedAt: !878)
!880 = !DILocation(line: 163, column: 87, scope: !875, inlinedAt: !878)
!881 = !DILocation(line: 163, column: 77, scope: !875, inlinedAt: !878)
!882 = !DILocation(line: 163, column: 15, scope: !875, inlinedAt: !878)
!883 = !DILocation(line: 180, column: 13, scope: !884, inlinedAt: !864)
!884 = distinct !DILexicalBlock(scope: !860, file: !674, line: 180, column: 13)
!885 = !{i8 0, i8 2}
!886 = !DILocation(line: 180, column: 21, scope: !884, inlinedAt: !864)
!887 = !DILocation(line: 180, column: 24, scope: !884, inlinedAt: !864)
!888 = !DILocation(line: 180, column: 31, scope: !884, inlinedAt: !864)
!889 = !DILocation(line: 180, column: 28, scope: !884, inlinedAt: !864)
!890 = !DILocation(line: 180, column: 13, scope: !860, inlinedAt: !864)
!891 = !DILocation(line: 181, column: 13, scope: !892, inlinedAt: !864)
!892 = distinct !DILexicalBlock(scope: !884, file: !674, line: 180, column: 40)
!893 = !DILocation(line: 182, column: 9, scope: !892, inlinedAt: !864)
!894 = !DILocation(line: 405, column: 1, scope: !662)
!895 = !DILocation(line: 296, column: 22, scope: !790)
!896 = !DILocation(line: 296, column: 19, scope: !790)
!897 = !DILocation(line: 296, column: 27, scope: !790)
!898 = !DILocation(line: 0, scope: !790)
!899 = !DILocation(line: 297, column: 17, scope: !900)
!900 = distinct !DILexicalBlock(scope: !790, file: !3, line: 297, column: 13)
!901 = !DILocation(line: 297, column: 14, scope: !900)
!902 = !DILocation(line: 297, column: 13, scope: !790)
!903 = !DILocalVariable(name: "this", arg: 1, scope: !904, type: !828, flags: DIFlagArtificial | DIFlagObjectPointer)
!904 = distinct !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5clearEv", scope: !673, file: !674, line: 131, type: !770, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !769, retainedNodes: !905)
!905 = !{!903}
!906 = !DILocation(line: 0, scope: !904, inlinedAt: !907)
!907 = distinct !DILocation(line: 300, column: 14, scope: !790)
!908 = !DILocation(line: 132, column: 15, scope: !904, inlinedAt: !907)
!909 = !DILocation(line: 132, column: 13, scope: !904, inlinedAt: !907)
!910 = !DILocation(line: 133, column: 13, scope: !911, inlinedAt: !907)
!911 = distinct !DILexicalBlock(scope: !904, file: !674, line: 133, column: 13)
!912 = !DILocation(line: 133, column: 13, scope: !904, inlinedAt: !907)
!913 = !DILocation(line: 134, column: 20, scope: !914, inlinedAt: !907)
!914 = distinct !DILexicalBlock(scope: !911, file: !674, line: 133, column: 18)
!915 = !DILocation(line: 135, column: 9, scope: !914, inlinedAt: !907)
!916 = !DILocation(line: 302, column: 16, scope: !917)
!917 = distinct !DILexicalBlock(scope: !790, file: !3, line: 302, column: 13)
!918 = !DILocation(line: 305, column: 26, scope: !790)
!919 = !DILocation(line: 305, column: 57, scope: !790)
!920 = !DILocation(line: 305, column: 51, scope: !790)
!921 = !DILocation(line: 307, column: 20, scope: !790)
!922 = !DILocalVariable(name: "this", arg: 1, scope: !923, type: !828, flags: DIFlagArtificial | DIFlagObjectPointer)
!923 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEPKc", scope: !673, file: !674, line: 57, type: !690, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !689, retainedNodes: !924)
!924 = !{!922, !925}
!925 = !DILocalVariable(name: "arg", arg: 2, scope: !923, file: !674, line: 57, type: !39)
!926 = !DILocation(line: 0, scope: !923, inlinedAt: !927)
!927 = distinct !DILocation(line: 307, column: 14, scope: !790)
!928 = !DILocation(line: 59, column: 17, scope: !929, inlinedAt: !927)
!929 = distinct !DILexicalBlock(scope: !923, file: !674, line: 59, column: 13)
!930 = !DILocation(line: 0, scope: !929, inlinedAt: !927)
!931 = !DILocation(line: 59, column: 13, scope: !923, inlinedAt: !927)
!932 = !DILocation(line: 60, column: 19, scope: !933, inlinedAt: !927)
!933 = distinct !DILexicalBlock(scope: !929, file: !674, line: 59, column: 29)
!934 = !DILocation(line: 61, column: 9, scope: !933, inlinedAt: !927)
!935 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !927)
!936 = distinct !DILexicalBlock(scope: !929, file: !674, line: 61, column: 16)
!937 = !DILocation(line: 0, scope: !923, inlinedAt: !938)
!938 = distinct !DILocation(line: 307, column: 25, scope: !790)
!939 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !938)
!940 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !938)
!941 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !938)
!942 = !DILocation(line: 0, scope: !923, inlinedAt: !943)
!943 = distinct !DILocation(line: 308, column: 14, scope: !790)
!944 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !943)
!945 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !943)
!946 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !943)
!947 = !DILocalVariable(name: "this", arg: 1, scope: !948, type: !828, flags: DIFlagArtificial | DIFlagObjectPointer)
!948 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEf", scope: !673, file: !674, line: 92, type: !712, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !711, retainedNodes: !949)
!949 = !{!947, !950}
!950 = !DILocalVariable(name: "arg", arg: 2, scope: !948, file: !674, line: 92, type: !714)
!951 = !DILocation(line: 0, scope: !948, inlinedAt: !952)
!952 = distinct !DILocation(line: 308, column: 33, scope: !790)
!953 = !DILocation(line: 93, column: 44, scope: !948, inlinedAt: !952)
!954 = !DILocation(line: 93, column: 49, scope: !948, inlinedAt: !952)
!955 = !DILocation(line: 93, column: 15, scope: !948, inlinedAt: !952)
!956 = !DILocation(line: 93, column: 13, scope: !948, inlinedAt: !952)
!957 = !DILocation(line: 0, scope: !923, inlinedAt: !958)
!958 = distinct !DILocation(line: 308, column: 38, scope: !790)
!959 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !958)
!960 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !958)
!961 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !958)
!962 = !DILocation(line: 0, scope: !923, inlinedAt: !963)
!963 = distinct !DILocation(line: 309, column: 14, scope: !790)
!964 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !963)
!965 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !963)
!966 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !963)
!967 = !DILocation(line: 309, column: 37, scope: !790)
!968 = !DILocalVariable(name: "this", arg: 1, scope: !969, type: !828, flags: DIFlagArtificial | DIFlagObjectPointer)
!969 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEi", scope: !673, file: !674, line: 72, type: !698, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !697, retainedNodes: !970)
!970 = !{!968, !971}
!971 = !DILocalVariable(name: "arg", arg: 2, scope: !969, file: !674, line: 72, type: !700)
!972 = !DILocation(line: 0, scope: !969, inlinedAt: !973)
!973 = distinct !DILocation(line: 309, column: 31, scope: !790)
!974 = !DILocation(line: 73, column: 43, scope: !969, inlinedAt: !973)
!975 = !DILocation(line: 73, column: 48, scope: !969, inlinedAt: !973)
!976 = !DILocation(line: 73, column: 15, scope: !969, inlinedAt: !973)
!977 = !DILocation(line: 73, column: 13, scope: !969, inlinedAt: !973)
!978 = !DILocation(line: 0, scope: !923, inlinedAt: !979)
!979 = distinct !DILocation(line: 310, column: 14, scope: !790)
!980 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !979)
!981 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !979)
!982 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !979)
!983 = !DILocation(line: 310, column: 34, scope: !790)
!984 = !DILocation(line: 0, scope: !969, inlinedAt: !985)
!985 = distinct !DILocation(line: 310, column: 28, scope: !790)
!986 = !DILocation(line: 73, column: 43, scope: !969, inlinedAt: !985)
!987 = !DILocation(line: 73, column: 48, scope: !969, inlinedAt: !985)
!988 = !DILocation(line: 73, column: 15, scope: !969, inlinedAt: !985)
!989 = !DILocation(line: 73, column: 13, scope: !969, inlinedAt: !985)
!990 = !DILocation(line: 0, scope: !923, inlinedAt: !991)
!991 = distinct !DILocation(line: 311, column: 14, scope: !790)
!992 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !991)
!993 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !991)
!994 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !991)
!995 = !DILocation(line: 311, column: 42, scope: !790)
!996 = !DILocation(line: 311, column: 39, scope: !790)
!997 = !DILocation(line: 311, column: 37, scope: !790)
!998 = !DILocation(line: 0, scope: !948, inlinedAt: !999)
!999 = distinct !DILocation(line: 311, column: 32, scope: !790)
!1000 = !DILocation(line: 93, column: 44, scope: !948, inlinedAt: !999)
!1001 = !DILocation(line: 93, column: 49, scope: !948, inlinedAt: !999)
!1002 = !DILocation(line: 93, column: 15, scope: !948, inlinedAt: !999)
!1003 = !DILocation(line: 93, column: 13, scope: !948, inlinedAt: !999)
!1004 = !DILocation(line: 0, scope: !923, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 311, column: 47, scope: !790)
!1006 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1005)
!1007 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1005)
!1008 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1005)
!1009 = !DILocation(line: 312, column: 13, scope: !790)
!1010 = !DILocation(line: 306, column: 25, scope: !790)
!1011 = !DILocation(line: 306, column: 56, scope: !790)
!1012 = !DILocation(line: 306, column: 86, scope: !790)
!1013 = !DILocation(line: 306, column: 53, scope: !790)
!1014 = !DILocation(line: 0, scope: !923, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 313, column: 18, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 312, column: 22)
!1017 = distinct !DILexicalBlock(scope: !790, file: !3, line: 312, column: 13)
!1018 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1015)
!1019 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1015)
!1020 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1015)
!1021 = !DILocation(line: 0, scope: !948, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 313, column: 47, scope: !1016)
!1023 = !DILocation(line: 93, column: 44, scope: !948, inlinedAt: !1022)
!1024 = !DILocation(line: 93, column: 49, scope: !948, inlinedAt: !1022)
!1025 = !DILocation(line: 93, column: 15, scope: !948, inlinedAt: !1022)
!1026 = !DILocation(line: 93, column: 13, scope: !948, inlinedAt: !1022)
!1027 = !DILocation(line: 0, scope: !923, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 313, column: 58, scope: !1016)
!1029 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1028)
!1030 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1028)
!1031 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1028)
!1032 = !DILocation(line: 314, column: 9, scope: !1016)
!1033 = !DILocation(line: 62, column: 43, scope: !936, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 315, column: 14, scope: !790)
!1035 = !DILocation(line: 0, scope: !923, inlinedAt: !1034)
!1036 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1034)
!1037 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1034)
!1038 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1034)
!1039 = !DILocation(line: 315, column: 45, scope: !790)
!1040 = !DILocation(line: 0, scope: !969, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 315, column: 39, scope: !790)
!1042 = !DILocation(line: 73, column: 43, scope: !969, inlinedAt: !1041)
!1043 = !DILocation(line: 73, column: 48, scope: !969, inlinedAt: !1041)
!1044 = !DILocation(line: 73, column: 15, scope: !969, inlinedAt: !1041)
!1045 = !DILocation(line: 73, column: 13, scope: !969, inlinedAt: !1041)
!1046 = !DILocation(line: 0, scope: !923, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 316, column: 14, scope: !790)
!1048 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1047)
!1049 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1047)
!1050 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1047)
!1051 = !DILocation(line: 316, column: 45, scope: !790)
!1052 = !DILocalVariable(name: "this", arg: 1, scope: !1053, type: !828, flags: DIFlagArtificial | DIFlagObjectPointer)
!1053 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEy", scope: !673, file: !674, line: 77, type: !702, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !701, retainedNodes: !1054)
!1054 = !{!1052, !1055}
!1055 = !DILocalVariable(name: "arg", arg: 2, scope: !1053, file: !674, line: 77, type: !31)
!1056 = !DILocation(line: 0, scope: !1053, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 316, column: 39, scope: !790)
!1058 = !DILocation(line: 78, column: 44, scope: !1053, inlinedAt: !1057)
!1059 = !DILocation(line: 78, column: 15, scope: !1053, inlinedAt: !1057)
!1060 = !DILocation(line: 78, column: 13, scope: !1053, inlinedAt: !1057)
!1061 = !DILocation(line: 0, scope: !923, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 316, column: 57, scope: !790)
!1063 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1062)
!1064 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1062)
!1065 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1062)
!1066 = !DILocalVariable(name: "this", arg: 1, scope: !1067, type: !828, flags: DIFlagArtificial | DIFlagObjectPointer)
!1067 = distinct !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE3strEv", scope: !673, file: !674, line: 119, type: !767, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !766, retainedNodes: !1068)
!1068 = !{!1066}
!1069 = !DILocation(line: 0, scope: !1067, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 317, column: 41, scope: !790)
!1071 = !DILocation(line: 120, column: 13, scope: !1072, inlinedAt: !1070)
!1072 = distinct !DILexicalBlock(scope: !1067, file: !674, line: 120, column: 13)
!1073 = !DILocation(line: 120, column: 13, scope: !1067, inlinedAt: !1070)
!1074 = !DILocation(line: 122, column: 17, scope: !1075, inlinedAt: !1070)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !674, line: 121, column: 46)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !674, line: 121, column: 17)
!1077 = distinct !DILexicalBlock(scope: !1072, file: !674, line: 120, column: 18)
!1078 = !DILocation(line: 0, scope: !875, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 122, column: 17, scope: !1075, inlinedAt: !1070)
!1080 = !DILocation(line: 163, column: 81, scope: !875, inlinedAt: !1079)
!1081 = !DILocation(line: 163, column: 87, scope: !875, inlinedAt: !1079)
!1082 = !DILocation(line: 163, column: 77, scope: !875, inlinedAt: !1079)
!1083 = !DILocation(line: 163, column: 15, scope: !875, inlinedAt: !1079)
!1084 = !DILocation(line: 124, column: 20, scope: !1077, inlinedAt: !1070)
!1085 = !DILocation(line: 124, column: 13, scope: !1077, inlinedAt: !1070)
!1086 = !DILocation(line: 0, scope: !1072, inlinedAt: !1070)
!1087 = !DILocation(line: 317, column: 9, scope: !790)
!1088 = !DILocation(line: 319, column: 34, scope: !790)
!1089 = !DILocation(line: 319, column: 31, scope: !790)
!1090 = !DILocation(line: 319, column: 39, scope: !790)
!1091 = !DILocation(line: 319, column: 45, scope: !790)
!1092 = !DILocation(line: 319, column: 42, scope: !790)
!1093 = !DILocation(line: 320, column: 13, scope: !790)
!1094 = !DILocation(line: 0, scope: !797)
!1095 = !DILocation(line: 321, column: 36, scope: !802)
!1096 = !DILocation(line: 321, column: 31, scope: !802)
!1097 = !DILocation(line: 321, column: 13, scope: !797)
!1098 = distinct !{!1098, !1097, !1099, !142}
!1099 = !DILocation(line: 327, column: 13, scope: !797)
!1100 = !DILocation(line: 0, scope: !801)
!1101 = !DILocation(line: 323, column: 25, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !801, file: !3, line: 323, column: 21)
!1103 = !DILocation(line: 323, column: 21, scope: !1102)
!1104 = !DILocation(line: 321, column: 48, scope: !802)
!1105 = !DILocation(line: 0, scope: !804)
!1106 = !DILocation(line: 331, column: 36, scope: !809)
!1107 = !DILocation(line: 331, column: 31, scope: !809)
!1108 = !DILocation(line: 331, column: 13, scope: !804)
!1109 = !DILocation(line: 0, scope: !808)
!1110 = !DILocation(line: 0, scope: !904, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 333, column: 22, scope: !808)
!1112 = !DILocation(line: 132, column: 15, scope: !904, inlinedAt: !1111)
!1113 = !DILocation(line: 132, column: 13, scope: !904, inlinedAt: !1111)
!1114 = !DILocation(line: 133, column: 13, scope: !911, inlinedAt: !1111)
!1115 = !DILocation(line: 133, column: 13, scope: !904, inlinedAt: !1111)
!1116 = !DILocation(line: 134, column: 20, scope: !914, inlinedAt: !1111)
!1117 = !DILocation(line: 135, column: 9, scope: !914, inlinedAt: !1111)
!1118 = !DILocation(line: 334, column: 53, scope: !808)
!1119 = !DILocation(line: 334, column: 59, scope: !808)
!1120 = !DILocation(line: 338, column: 23, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !808, file: !3, line: 338, column: 21)
!1122 = !DILocation(line: 338, column: 28, scope: !1121)
!1123 = !DILocation(line: 338, column: 35, scope: !1121)
!1124 = !DILocation(line: 338, column: 40, scope: !1121)
!1125 = !DILocation(line: 338, column: 21, scope: !808)
!1126 = !DILocation(line: 0, scope: !923, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 342, column: 22, scope: !808)
!1128 = !DILocation(line: 62, column: 43, scope: !936, inlinedAt: !1127)
!1129 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1127)
!1130 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1127)
!1131 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1127)
!1132 = !DILocation(line: 342, column: 37, scope: !808)
!1133 = !DILocation(line: 0, scope: !923, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 342, column: 30, scope: !808)
!1135 = !DILocation(line: 59, column: 17, scope: !929, inlinedAt: !1134)
!1136 = !DILocation(line: 0, scope: !929, inlinedAt: !1134)
!1137 = !DILocation(line: 59, column: 13, scope: !923, inlinedAt: !1134)
!1138 = !DILocation(line: 60, column: 19, scope: !933, inlinedAt: !1134)
!1139 = !DILocation(line: 61, column: 9, scope: !933, inlinedAt: !1134)
!1140 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1134)
!1141 = !DILocation(line: 0, scope: !923, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 342, column: 42, scope: !808)
!1143 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1142)
!1144 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1142)
!1145 = !DILocation(line: 344, column: 29, scope: !808)
!1146 = !DILocalVariable(name: "this", arg: 1, scope: !1147, type: !1149, flags: DIFlagArtificial | DIFlagObjectPointer)
!1147 = distinct !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE4sizeEv", scope: !673, file: !674, line: 139, type: !773, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !772, retainedNodes: !1148)
!1148 = !{!1146}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 32)
!1150 = !DILocation(line: 0, scope: !1147, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 344, column: 29, scope: !808)
!1152 = !DILocation(line: 140, column: 31, scope: !1147, inlinedAt: !1151)
!1153 = !DILocation(line: 344, column: 36, scope: !808)
!1154 = !DILocation(line: 344, column: 17, scope: !808)
!1155 = !DILocation(line: 62, column: 43, scope: !936, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 345, column: 26, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !808, file: !3, line: 344, column: 46)
!1158 = !DILocation(line: 0, scope: !923, inlinedAt: !1156)
!1159 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1156)
!1160 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1156)
!1161 = distinct !{!1161, !1154, !1162, !142}
!1162 = !DILocation(line: 346, column: 17, scope: !808)
!1163 = !DILocation(line: 93, column: 39, scope: !948, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 349, column: 22, scope: !808)
!1165 = !DILocation(line: 348, column: 32, scope: !808)
!1166 = !DILocation(line: 348, column: 28, scope: !808)
!1167 = !DILocation(line: 348, column: 43, scope: !808)
!1168 = !DILocation(line: 348, column: 40, scope: !808)
!1169 = !DILocation(line: 348, column: 48, scope: !808)
!1170 = !DILocation(line: 348, column: 37, scope: !808)
!1171 = !DILocation(line: 0, scope: !948, inlinedAt: !1164)
!1172 = !DILocation(line: 93, column: 44, scope: !948, inlinedAt: !1164)
!1173 = !DILocation(line: 93, column: 49, scope: !948, inlinedAt: !1164)
!1174 = !DILocation(line: 93, column: 15, scope: !948, inlinedAt: !1164)
!1175 = !DILocation(line: 93, column: 13, scope: !948, inlinedAt: !1164)
!1176 = !DILocalVariable(name: "this", arg: 1, scope: !1177, type: !828, flags: DIFlagArtificial | DIFlagObjectPointer)
!1177 = distinct !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5eraseEi", scope: !673, file: !674, line: 148, type: !779, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, declaration: !778, retainedNodes: !1178)
!1178 = !{!1176, !1179}
!1179 = !DILocalVariable(name: "n", arg: 2, scope: !1177, file: !674, line: 148, type: !22)
!1180 = !DILocation(line: 0, scope: !1177, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 351, column: 22, scope: !808)
!1182 = !DILocation(line: 149, column: 13, scope: !1183, inlinedAt: !1181)
!1183 = distinct !DILexicalBlock(scope: !1177, file: !674, line: 149, column: 13)
!1184 = !DILocation(line: 149, column: 13, scope: !1177, inlinedAt: !1181)
!1185 = !DILocation(line: 150, column: 17, scope: !1186, inlinedAt: !1181)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !674, line: 149, column: 18)
!1187 = !DILocation(line: 151, column: 23, scope: !1188, inlinedAt: !1181)
!1188 = distinct !DILexicalBlock(scope: !1186, file: !674, line: 151, column: 17)
!1189 = !DILocation(line: 151, column: 21, scope: !1188, inlinedAt: !1181)
!1190 = !DILocation(line: 151, column: 17, scope: !1186, inlinedAt: !1181)
!1191 = !DILocation(line: 0, scope: !1186, inlinedAt: !1181)
!1192 = !DILocation(line: 154, column: 20, scope: !1186, inlinedAt: !1181)
!1193 = !DILocation(line: 62, column: 43, scope: !936, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 352, column: 22, scope: !808)
!1195 = !DILocation(line: 155, column: 9, scope: !1186, inlinedAt: !1181)
!1196 = !DILocation(line: 0, scope: !923, inlinedAt: !1194)
!1197 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1194)
!1198 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1194)
!1199 = !DILocation(line: 354, column: 29, scope: !808)
!1200 = !DILocation(line: 0, scope: !1147, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 354, column: 29, scope: !808)
!1202 = !DILocation(line: 140, column: 31, scope: !1147, inlinedAt: !1201)
!1203 = !DILocation(line: 354, column: 36, scope: !808)
!1204 = !DILocation(line: 354, column: 17, scope: !808)
!1205 = !DILocation(line: 62, column: 43, scope: !936, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 355, column: 26, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !808, file: !3, line: 354, column: 46)
!1208 = !DILocation(line: 0, scope: !923, inlinedAt: !1206)
!1209 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1206)
!1210 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1206)
!1211 = distinct !{!1211, !1204, !1212, !142}
!1212 = !DILocation(line: 356, column: 17, scope: !808)
!1213 = !DILocation(line: 359, column: 24, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !808, file: !3, line: 359, column: 21)
!1215 = !DILocation(line: 359, column: 29, scope: !1214)
!1216 = !DILocation(line: 359, column: 21, scope: !808)
!1217 = !DILocation(line: 360, column: 42, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 359, column: 35)
!1219 = !DILocation(line: 360, column: 36, scope: !1218)
!1220 = !DILocation(line: 360, column: 48, scope: !1218)
!1221 = !DILocation(line: 360, column: 31, scope: !1218)
!1222 = !DILocation(line: 361, column: 17, scope: !1218)
!1223 = !DILocation(line: 0, scope: !923, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 362, column: 22, scope: !808)
!1225 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1224)
!1226 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1224)
!1227 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1224)
!1228 = !DILocation(line: 0, scope: !969, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 362, column: 29, scope: !808)
!1230 = !DILocation(line: 73, column: 43, scope: !969, inlinedAt: !1229)
!1231 = !DILocation(line: 73, column: 48, scope: !969, inlinedAt: !1229)
!1232 = !DILocation(line: 73, column: 15, scope: !969, inlinedAt: !1229)
!1233 = !DILocation(line: 73, column: 13, scope: !969, inlinedAt: !1229)
!1234 = !DILocation(line: 0, scope: !923, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 362, column: 40, scope: !808)
!1236 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1235)
!1237 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1235)
!1238 = !DILocation(line: 364, column: 29, scope: !808)
!1239 = !DILocation(line: 0, scope: !1147, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 364, column: 29, scope: !808)
!1241 = !DILocation(line: 140, column: 31, scope: !1147, inlinedAt: !1240)
!1242 = !DILocation(line: 364, column: 36, scope: !808)
!1243 = !DILocation(line: 364, column: 17, scope: !808)
!1244 = !DILocation(line: 62, column: 43, scope: !936, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 365, column: 26, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !808, file: !3, line: 364, column: 46)
!1247 = !DILocation(line: 0, scope: !923, inlinedAt: !1245)
!1248 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1245)
!1249 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1245)
!1250 = distinct !{!1250, !1243, !1251, !142}
!1251 = !DILocation(line: 366, column: 17, scope: !808)
!1252 = !DILocation(line: 368, column: 21, scope: !808)
!1253 = !DILocation(line: 369, column: 41, scope: !815)
!1254 = !DILocation(line: 369, column: 37, scope: !815)
!1255 = !DILocation(line: 369, column: 73, scope: !815)
!1256 = !DILocation(line: 369, column: 69, scope: !815)
!1257 = !DILocation(line: 369, column: 100, scope: !815)
!1258 = !DILocation(line: 369, column: 66, scope: !815)
!1259 = !DILocation(line: 0, scope: !815)
!1260 = !DILocation(line: 0, scope: !923, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 370, column: 26, scope: !815)
!1262 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1261)
!1263 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1261)
!1264 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1261)
!1265 = !DILocation(line: 0, scope: !948, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 370, column: 41, scope: !815)
!1267 = !DILocation(line: 93, column: 44, scope: !948, inlinedAt: !1266)
!1268 = !DILocation(line: 93, column: 49, scope: !948, inlinedAt: !1266)
!1269 = !DILocation(line: 93, column: 15, scope: !948, inlinedAt: !1266)
!1270 = !DILocation(line: 93, column: 13, scope: !948, inlinedAt: !1266)
!1271 = !DILocation(line: 0, scope: !1177, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 371, column: 26, scope: !815)
!1273 = !DILocation(line: 149, column: 13, scope: !1183, inlinedAt: !1272)
!1274 = !DILocation(line: 149, column: 13, scope: !1177, inlinedAt: !1272)
!1275 = !DILocation(line: 150, column: 17, scope: !1186, inlinedAt: !1272)
!1276 = !DILocation(line: 151, column: 23, scope: !1188, inlinedAt: !1272)
!1277 = !DILocation(line: 151, column: 21, scope: !1188, inlinedAt: !1272)
!1278 = !DILocation(line: 151, column: 17, scope: !1186, inlinedAt: !1272)
!1279 = !DILocation(line: 0, scope: !1186, inlinedAt: !1272)
!1280 = !DILocation(line: 154, column: 20, scope: !1186, inlinedAt: !1272)
!1281 = !DILocation(line: 373, column: 33, scope: !815)
!1282 = !DILocation(line: 155, column: 9, scope: !1186, inlinedAt: !1272)
!1283 = !DILocation(line: 0, scope: !1147, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 373, column: 33, scope: !815)
!1285 = !DILocation(line: 140, column: 31, scope: !1147, inlinedAt: !1284)
!1286 = !DILocation(line: 373, column: 40, scope: !815)
!1287 = !DILocation(line: 373, column: 21, scope: !815)
!1288 = !DILocation(line: 62, column: 43, scope: !936, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 374, column: 30, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !815, file: !3, line: 373, column: 50)
!1291 = !DILocation(line: 0, scope: !923, inlinedAt: !1289)
!1292 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1289)
!1293 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1289)
!1294 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1289)
!1295 = distinct !{!1295, !1287, !1296, !142}
!1296 = !DILocation(line: 375, column: 21, scope: !815)
!1297 = !DILocation(line: 379, column: 25, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !808, file: !3, line: 379, column: 21)
!1299 = !DILocation(line: 379, column: 36, scope: !1298)
!1300 = !DILocation(line: 379, column: 21, scope: !808)
!1301 = !DILocation(line: 380, column: 37, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 379, column: 42)
!1303 = !DILocation(line: 380, column: 52, scope: !1302)
!1304 = !DILocation(line: 380, column: 50, scope: !1302)
!1305 = !DILocation(line: 380, column: 33, scope: !1302)
!1306 = !DILocation(line: 381, column: 17, scope: !1302)
!1307 = !DILocation(line: 383, column: 25, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !808, file: !3, line: 383, column: 21)
!1309 = !DILocation(line: 383, column: 21, scope: !1308)
!1310 = !DILocation(line: 383, column: 21, scope: !808)
!1311 = !DILocation(line: 0, scope: !923, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 385, column: 26, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 383, column: 38)
!1314 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1312)
!1315 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1312)
!1316 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1312)
!1317 = !DILocation(line: 385, column: 46, scope: !1313)
!1318 = !DILocation(line: 0, scope: !1053, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 385, column: 39, scope: !1313)
!1320 = !DILocation(line: 78, column: 44, scope: !1053, inlinedAt: !1319)
!1321 = !DILocation(line: 78, column: 15, scope: !1053, inlinedAt: !1319)
!1322 = !DILocation(line: 0, scope: !1313)
!1323 = !DILocation(line: 386, column: 33, scope: !1313)
!1324 = !DILocation(line: 0, scope: !1147, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 386, column: 33, scope: !1313)
!1326 = !DILocation(line: 140, column: 31, scope: !1147, inlinedAt: !1325)
!1327 = !DILocation(line: 140, column: 26, scope: !1147, inlinedAt: !1325)
!1328 = !DILocation(line: 386, column: 42, scope: !1313)
!1329 = !DILocation(line: 386, column: 40, scope: !1313)
!1330 = !DILocation(line: 386, column: 21, scope: !1313)
!1331 = !DILocation(line: 62, column: 43, scope: !936, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 387, column: 30, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 386, column: 50)
!1334 = !DILocation(line: 0, scope: !923, inlinedAt: !1332)
!1335 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1332)
!1336 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1332)
!1337 = distinct !{!1337, !1330, !1338, !142}
!1338 = !DILocation(line: 388, column: 21, scope: !1313)
!1339 = !DILocation(line: 62, column: 43, scope: !936, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 389, column: 26, scope: !1313)
!1341 = !DILocation(line: 0, scope: !923, inlinedAt: !1340)
!1342 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1340)
!1343 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1340)
!1344 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1340)
!1345 = !DILocation(line: 389, column: 45, scope: !1313)
!1346 = !DILocation(line: 0, scope: !969, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 389, column: 38, scope: !1313)
!1348 = !DILocation(line: 73, column: 43, scope: !969, inlinedAt: !1347)
!1349 = !DILocation(line: 73, column: 48, scope: !969, inlinedAt: !1347)
!1350 = !DILocation(line: 73, column: 15, scope: !969, inlinedAt: !1347)
!1351 = !DILocation(line: 73, column: 13, scope: !969, inlinedAt: !1347)
!1352 = !DILocation(line: 390, column: 28, scope: !1313)
!1353 = !DILocation(line: 391, column: 33, scope: !1313)
!1354 = !DILocation(line: 0, scope: !1147, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 391, column: 33, scope: !1313)
!1356 = !DILocation(line: 140, column: 31, scope: !1147, inlinedAt: !1355)
!1357 = !DILocation(line: 140, column: 26, scope: !1147, inlinedAt: !1355)
!1358 = !DILocation(line: 391, column: 42, scope: !1313)
!1359 = !DILocation(line: 391, column: 40, scope: !1313)
!1360 = !DILocation(line: 391, column: 21, scope: !1313)
!1361 = !DILocation(line: 62, column: 43, scope: !936, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 392, column: 30, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 391, column: 50)
!1364 = !DILocation(line: 0, scope: !923, inlinedAt: !1362)
!1365 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1362)
!1366 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1362)
!1367 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1362)
!1368 = distinct !{!1368, !1360, !1369, !142}
!1369 = !DILocation(line: 393, column: 21, scope: !1313)
!1370 = !DILocation(line: 62, column: 43, scope: !936, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 394, column: 26, scope: !1313)
!1372 = !DILocation(line: 0, scope: !923, inlinedAt: !1371)
!1373 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1371)
!1374 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1371)
!1375 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1371)
!1376 = !DILocation(line: 0, scope: !969, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 394, column: 38, scope: !1313)
!1378 = !DILocation(line: 73, column: 43, scope: !969, inlinedAt: !1377)
!1379 = !DILocation(line: 73, column: 48, scope: !969, inlinedAt: !1377)
!1380 = !DILocation(line: 73, column: 15, scope: !969, inlinedAt: !1377)
!1381 = !DILocation(line: 73, column: 13, scope: !969, inlinedAt: !1377)
!1382 = !DILocation(line: 395, column: 17, scope: !1313)
!1383 = !DILocation(line: 396, column: 25, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !808, file: !3, line: 396, column: 21)
!1385 = !DILocation(line: 396, column: 36, scope: !1384)
!1386 = !DILocation(line: 396, column: 21, scope: !808)
!1387 = !DILocation(line: 0, scope: !923, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 397, column: 26, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 396, column: 41)
!1390 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1388)
!1391 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1388)
!1392 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1388)
!1393 = !DILocation(line: 397, column: 47, scope: !1389)
!1394 = !DILocation(line: 0, scope: !1053, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 397, column: 40, scope: !1389)
!1396 = !DILocation(line: 78, column: 44, scope: !1053, inlinedAt: !1395)
!1397 = !DILocation(line: 78, column: 15, scope: !1053, inlinedAt: !1395)
!1398 = !DILocation(line: 78, column: 13, scope: !1053, inlinedAt: !1395)
!1399 = !DILocation(line: 398, column: 17, scope: !1389)
!1400 = !DILocation(line: 62, column: 43, scope: !936, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 399, column: 22, scope: !808)
!1402 = !DILocation(line: 0, scope: !923, inlinedAt: !1401)
!1403 = !DILocation(line: 62, column: 48, scope: !936, inlinedAt: !1401)
!1404 = !DILocation(line: 62, column: 19, scope: !936, inlinedAt: !1401)
!1405 = !DILocation(line: 62, column: 17, scope: !936, inlinedAt: !1401)
!1406 = !DILocation(line: 0, scope: !1067, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 401, column: 49, scope: !808)
!1408 = !DILocation(line: 120, column: 13, scope: !1072, inlinedAt: !1407)
!1409 = !DILocation(line: 120, column: 13, scope: !1067, inlinedAt: !1407)
!1410 = !DILocation(line: 122, column: 17, scope: !1075, inlinedAt: !1407)
!1411 = !DILocation(line: 0, scope: !875, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 122, column: 17, scope: !1075, inlinedAt: !1407)
!1413 = !DILocation(line: 163, column: 81, scope: !875, inlinedAt: !1412)
!1414 = !DILocation(line: 163, column: 87, scope: !875, inlinedAt: !1412)
!1415 = !DILocation(line: 163, column: 77, scope: !875, inlinedAt: !1412)
!1416 = !DILocation(line: 163, column: 15, scope: !875, inlinedAt: !1412)
!1417 = !DILocation(line: 124, column: 20, scope: !1077, inlinedAt: !1407)
!1418 = !DILocation(line: 124, column: 13, scope: !1077, inlinedAt: !1407)
!1419 = !DILocation(line: 0, scope: !1072, inlinedAt: !1407)
!1420 = !DILocation(line: 401, column: 17, scope: !808)
!1421 = !DILocation(line: 402, column: 13, scope: !809)
!1422 = !DILocation(line: 331, column: 48, scope: !809)
!1423 = distinct !{!1423, !1108, !1424, !142}
!1424 = !DILocation(line: 402, column: 13, scope: !804)
!1425 = !DILocation(line: 295, column: 52, scope: !791)
!1426 = distinct !{!1426, !857, !1427, !142}
!1427 = !DILocation(line: 404, column: 5, scope: !788)
!1428 = distinct !DISubprogram(name: "halide_profiler_report", scope: !3, file: !3, line: 407, type: !249, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !1429)
!1429 = !{!1430, !1431, !1432}
!1430 = !DILocalVariable(name: "user_context", arg: 1, scope: !1428, file: !3, line: 407, type: !56)
!1431 = !DILocalVariable(name: "s", scope: !1428, file: !3, line: 408, type: !6)
!1432 = !DILocalVariable(name: "lock", scope: !1428, file: !3, line: 409, type: !395)
!1433 = !DILocation(line: 0, scope: !1428)
!1434 = !DILocation(line: 408, column: 32, scope: !1428)
!1435 = !DILocation(line: 409, column: 30, scope: !1428)
!1436 = !DILocation(line: 0, scope: !412, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 409, column: 21, scope: !1428)
!1438 = !DILocation(line: 16, column: 9, scope: !419, inlinedAt: !1437)
!1439 = !DILocation(line: 410, column: 5, scope: !1428)
!1440 = !DILocation(line: 0, scope: !434, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 411, column: 1, scope: !1428)
!1442 = !DILocation(line: 20, column: 9, scope: !439, inlinedAt: !1441)
!1443 = !DILocation(line: 411, column: 1, scope: !1428)
!1444 = distinct !DISubprogram(name: "halide_profiler_reset_unlocked", scope: !3, file: !3, line: 413, type: !1445, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !1447)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{null, !6}
!1447 = !{!1448, !1449}
!1448 = !DILocalVariable(name: "s", arg: 1, scope: !1444, file: !3, line: 413, type: !6)
!1449 = !DILocalVariable(name: "p", scope: !1450, file: !3, line: 415, type: !27)
!1450 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 414, column: 26)
!1451 = !DILocation(line: 0, scope: !1444)
!1452 = !DILocation(line: 414, column: 15, scope: !1444)
!1453 = !DILocation(line: 414, column: 12, scope: !1444)
!1454 = !DILocation(line: 414, column: 5, scope: !1444)
!1455 = !DILocation(line: 0, scope: !1450)
!1456 = !DILocation(line: 416, column: 62, scope: !1450)
!1457 = !DILocation(line: 416, column: 22, scope: !1450)
!1458 = !DILocation(line: 417, column: 17, scope: !1450)
!1459 = !DILocation(line: 417, column: 9, scope: !1450)
!1460 = !DILocation(line: 418, column: 14, scope: !1450)
!1461 = !DILocation(line: 418, column: 9, scope: !1450)
!1462 = distinct !{!1462, !1454, !1463, !142}
!1463 = !DILocation(line: 419, column: 5, scope: !1444)
!1464 = !DILocation(line: 420, column: 8, scope: !1444)
!1465 = !DILocation(line: 420, column: 22, scope: !1444)
!1466 = !DILocation(line: 421, column: 1, scope: !1444)
!1467 = distinct !DISubprogram(name: "halide_profiler_reset", scope: !3, file: !3, line: 423, type: !554, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !1468)
!1468 = !{!1469, !1470}
!1469 = !DILocalVariable(name: "s", scope: !1467, file: !3, line: 428, type: !6)
!1470 = !DILocalVariable(name: "lock", scope: !1467, file: !3, line: 429, type: !395)
!1471 = !DILocation(line: 428, column: 32, scope: !1467)
!1472 = !DILocation(line: 0, scope: !1467)
!1473 = !DILocation(line: 429, column: 30, scope: !1467)
!1474 = !DILocation(line: 0, scope: !412, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 429, column: 21, scope: !1467)
!1476 = !DILocation(line: 16, column: 9, scope: !419, inlinedAt: !1475)
!1477 = !DILocation(line: 430, column: 5, scope: !1467)
!1478 = !DILocation(line: 0, scope: !434, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 431, column: 1, scope: !1467)
!1480 = !DILocation(line: 20, column: 9, scope: !439, inlinedAt: !1479)
!1481 = !DILocation(line: 431, column: 1, scope: !1467)
!1482 = distinct !DISubprogram(name: "halide_profiler_shutdown", scope: !3, file: !3, line: 437, type: !554, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !1483)
!1483 = !{!1484}
!1484 = !DILocalVariable(name: "s", scope: !1482, file: !3, line: 438, type: !6)
!1485 = !DILocation(line: 438, column: 32, scope: !1482)
!1486 = !DILocation(line: 0, scope: !1482)
!1487 = !DILocation(line: 439, column: 13, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 439, column: 9)
!1489 = !DILocation(line: 439, column: 10, scope: !1488)
!1490 = !DILocation(line: 439, column: 9, scope: !1482)
!1491 = !DILocation(line: 443, column: 8, scope: !1482)
!1492 = !DILocation(line: 443, column: 21, scope: !1482)
!1493 = !DILocation(line: 444, column: 5, scope: !1482)
!1494 = !DILocation(line: 445, column: 24, scope: !1482)
!1495 = !DILocation(line: 446, column: 21, scope: !1482)
!1496 = !DILocation(line: 450, column: 5, scope: !1482)
!1497 = !DILocation(line: 452, column: 5, scope: !1482)
!1498 = !DILocation(line: 453, column: 1, scope: !1482)
!1499 = !DISubprogram(name: "halide_join_thread", scope: !8, file: !8, line: 320, type: !1500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{null, !68}
!1502 = distinct !DISubprogram(name: "halide_profiler_pipeline_end", scope: !3, file: !3, line: 477, type: !1503, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !1505)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{null, !56, !56}
!1505 = !{!1506, !1507}
!1506 = !DILocalVariable(name: "user_context", arg: 1, scope: !1502, file: !3, line: 477, type: !56)
!1507 = !DILocalVariable(name: "state", arg: 2, scope: !1502, file: !3, line: 477, type: !56)
!1508 = !DILocation(line: 0, scope: !1502)
!1509 = !DILocation(line: 478, column: 39, scope: !1502)
!1510 = !DILocation(line: 478, column: 52, scope: !1502)
!1511 = !DILocation(line: 479, column: 1, scope: !1502)
!1512 = !DISubprogram(name: "halide_error", scope: !8, file: !8, line: 111, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1513 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !8, file: !8, line: 973, type: !1514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!22, !56, !718, !32}
!1516 = !DISubprogram(name: "halide_string_to_string", scope: !16, file: !16, line: 120, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!87, !87, !87, !39}
!1519 = !DISubprogram(name: "halide_double_to_string", scope: !16, file: !16, line: 121, type: !1520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!87, !87, !87, !710, !22}
!1522 = !DISubprogram(name: "halide_int64_to_string", scope: !16, file: !16, line: 122, type: !1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!87, !87, !87, !383, !22}
!1525 = !DISubprogram(name: "halide_uint64_to_string", scope: !16, file: !16, line: 123, type: !1526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !94)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!87, !87, !87, !32, !22}
