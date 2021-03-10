; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_profiler_state = type { %struct.halide_mutex, i32, i32, i32, i32, %struct.halide_profiler_pipeline_stats*, void (i32*, i32*)*, %struct.halide_thread* }
%struct.halide_mutex = type { [1 x i64] }
%struct.halide_profiler_pipeline_stats = type { i64, i64, i64, i64, i64, i64, i8*, %struct.halide_profiler_func_stats*, i8*, i32, i32, i32, i32, i32, [4 x i8] }
%struct.halide_profiler_func_stats = type { i64, i64, i64, i64, i64, i64, i64, i8*, i32, [4 x i8] }
%struct.halide_thread = type opaque
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>

@_ZZ25halide_profiler_get_stateE1s = internal global %struct.halide_profiler_state { %struct.halide_mutex zeroinitializer, i32 1, i32 0, i32 0, i32 0, %struct.halide_profiler_pipeline_stats* null, void (i32*, i32*)* null, %struct.halide_thread* null }, align 8, !dbg !0
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
  ret %struct.halide_profiler_state* @_ZZ25halide_profiler_get_stateE1s, !dbg !97
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_profiler_pipeline_stats* @_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy(i8* %0, i32 %1, i64* %2) local_unnamed_addr #1 !dbg !98 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !104, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %1, metadata !105, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64* %2, metadata !106, metadata !DIExpression()), !dbg !113
  %4 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !114
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %4, metadata !107, metadata !DIExpression()), !dbg !113
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 5, !dbg !115
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !108, metadata !DIExpression()), !dbg !116
  %6 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %5, align 8, !dbg !116, !tbaa !117
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %6, metadata !108, metadata !DIExpression()), !dbg !116
  %7 = icmp eq %struct.halide_profiler_pipeline_stats* %6, null, !dbg !121
  br i1 %7, label %22, label %8, !dbg !123

8:                                                ; preds = %3, %17
  %9 = phi %struct.halide_profiler_pipeline_stats* [ %20, %17 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 6, !dbg !124
  %11 = load i8*, i8** %10, align 8, !dbg !124, !tbaa !127
  %12 = icmp eq i8* %11, %0, !dbg !131
  br i1 %12, label %13, label %17, !dbg !132

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 9, !dbg !133
  %15 = load i32, i32* %14, align 8, !dbg !133, !tbaa !134
  %16 = icmp eq i32 %15, %1, !dbg !135
  br i1 %16, label %87, label %17, !dbg !136

17:                                               ; preds = %8, %13
  %18 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 8, !dbg !137
  %19 = bitcast i8** %18 to %struct.halide_profiler_pipeline_stats**, !dbg !137
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !108, metadata !DIExpression()), !dbg !116
  %20 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %19, align 8, !dbg !116, !tbaa !117
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %20, metadata !108, metadata !DIExpression()), !dbg !116
  %21 = icmp eq %struct.halide_profiler_pipeline_stats* %20, null, !dbg !121
  br i1 %21, label %22, label %8, !dbg !123, !llvm.loop !138

22:                                               ; preds = %17, %3
  %23 = tail call i8* @malloc(i64 96) #7, !dbg !141
  %24 = bitcast i8* %23 to %struct.halide_profiler_pipeline_stats*, !dbg !142
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %24, metadata !110, metadata !DIExpression()), !dbg !113
  %25 = icmp eq i8* %23, null, !dbg !143
  br i1 %25, label %87, label %26, !dbg !145

26:                                               ; preds = %22
  %27 = bitcast %struct.halide_profiler_pipeline_stats** %5 to i8**, !dbg !146
  %28 = load i8*, i8** %27, align 8, !dbg !146, !tbaa !147
  %29 = getelementptr inbounds i8, i8* %23, i64 64, !dbg !150
  %30 = bitcast i8* %29 to i8**, !dbg !150
  store i8* %28, i8** %30, align 8, !dbg !151, !tbaa !152
  %31 = getelementptr inbounds i8, i8* %23, i64 48, !dbg !153
  %32 = bitcast i8* %31 to i8**, !dbg !153
  store i8* %0, i8** %32, align 8, !dbg !154, !tbaa !127
  %33 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 2, !dbg !155
  %34 = load i32, i32* %33, align 4, !dbg !155, !tbaa !156
  %35 = getelementptr inbounds i8, i8* %23, i64 76, !dbg !157
  %36 = bitcast i8* %35 to i32*, !dbg !157
  store i32 %34, i32* %36, align 4, !dbg !158, !tbaa !159
  %37 = getelementptr inbounds i8, i8* %23, i64 72, !dbg !160
  %38 = bitcast i8* %37 to i32*, !dbg !160
  store i32 %1, i32* %38, align 8, !dbg !161, !tbaa !134
  %39 = getelementptr inbounds i8, i8* %23, i64 80, !dbg !162
  %40 = bitcast i8* %39 to i32*, !dbg !162
  store i32 0, i32* %40, align 8, !dbg !163, !tbaa !164
  %41 = bitcast i8* %23 to i64*, !dbg !165
  store i64 0, i64* %41, align 8, !dbg !166, !tbaa !167
  %42 = getelementptr inbounds i8, i8* %23, i64 84, !dbg !168
  %43 = bitcast i8* %42 to i32*, !dbg !168
  store i32 0, i32* %43, align 4, !dbg !169, !tbaa !170
  %44 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !171
  %45 = bitcast i8* %44 to i64*, !dbg !171
  store i64 0, i64* %45, align 8, !dbg !172, !tbaa !173
  %46 = getelementptr inbounds i8, i8* %23, i64 16, !dbg !174
  %47 = bitcast i8* %46 to i64*, !dbg !174
  store i64 0, i64* %47, align 8, !dbg !175, !tbaa !176
  %48 = getelementptr inbounds i8, i8* %23, i64 24, !dbg !177
  %49 = bitcast i8* %48 to i64*, !dbg !177
  store i64 0, i64* %49, align 8, !dbg !178, !tbaa !179
  %50 = getelementptr inbounds i8, i8* %23, i64 88, !dbg !180
  %51 = bitcast i8* %50 to i32*, !dbg !180
  store i32 0, i32* %51, align 8, !dbg !181, !tbaa !182
  %52 = getelementptr inbounds i8, i8* %23, i64 32, !dbg !183
  %53 = bitcast i8* %52 to i64*, !dbg !183
  store i64 0, i64* %53, align 8, !dbg !184, !tbaa !185
  %54 = getelementptr inbounds i8, i8* %23, i64 40, !dbg !186
  %55 = bitcast i8* %54 to i64*, !dbg !186
  store i64 0, i64* %55, align 8, !dbg !187, !tbaa !188
  %56 = sext i32 %1 to i64, !dbg !189
  %57 = mul nsw i64 %56, 72, !dbg !190
  %58 = tail call i8* @malloc(i64 %57) #7, !dbg !191
  %59 = getelementptr inbounds i8, i8* %23, i64 56, !dbg !192
  %60 = bitcast i8* %59 to i8**, !dbg !193
  store i8* %58, i8** %60, align 8, !dbg !193, !tbaa !194
  %61 = icmp eq i8* %58, null, !dbg !195
  %62 = bitcast i8* %58 to %struct.halide_profiler_func_stats*, !dbg !197
  br i1 %61, label %67, label %63, !dbg !197

63:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 0, metadata !111, metadata !DIExpression()), !dbg !198
  %64 = icmp sgt i32 %1, 0, !dbg !199
  br i1 %64, label %65, label %68, !dbg !201

65:                                               ; preds = %63
  %66 = zext i32 %1 to i64, !dbg !199
  br label %71, !dbg !201

67:                                               ; preds = %26
  tail call void @free(i8* nonnull %23) #7, !dbg !202
  br label %87, !dbg !204

68:                                               ; preds = %71, %63
  %69 = load i32, i32* %33, align 4, !dbg !205, !tbaa !156
  %70 = add nsw i32 %69, %1, !dbg !205
  store i32 %70, i32* %33, align 4, !dbg !205, !tbaa !156
  store i8* %23, i8** %27, align 8, !dbg !206, !tbaa !147
  br label %87, !dbg !207

71:                                               ; preds = %65, %71
  %72 = phi i64 [ 0, %65 ], [ %85, %71 ]
  call void @llvm.dbg.value(metadata i64 %72, metadata !111, metadata !DIExpression()), !dbg !198
  %73 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 0, !dbg !208
  store i64 0, i64* %73, align 8, !dbg !210, !tbaa !211
  %74 = getelementptr inbounds i64, i64* %2, i64 %72, !dbg !213
  %75 = load i64, i64* %74, align 8, !dbg !213, !tbaa !214
  %76 = inttoptr i64 %75 to i8*, !dbg !215
  %77 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 7, !dbg !216
  store i8* %76, i8** %77, align 8, !dbg !217, !tbaa !218
  %78 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 1, !dbg !219
  store i64 0, i64* %78, align 8, !dbg !220, !tbaa !221
  %79 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 2, !dbg !222
  store i64 0, i64* %79, align 8, !dbg !223, !tbaa !224
  %80 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 3, !dbg !225
  store i64 0, i64* %80, align 8, !dbg !226, !tbaa !227
  %81 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 8, !dbg !228
  store i32 0, i32* %81, align 8, !dbg !229, !tbaa !230
  %82 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 4, !dbg !231
  store i64 0, i64* %82, align 8, !dbg !232, !tbaa !233
  %83 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 5, !dbg !234
  store i64 0, i64* %83, align 8, !dbg !235, !tbaa !236
  %84 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %62, i64 %72, i32 6, !dbg !237
  store i64 0, i64* %84, align 8, !dbg !238, !tbaa !239
  %85 = add nuw nsw i64 %72, 1, !dbg !240
  call void @llvm.dbg.value(metadata i64 %85, metadata !111, metadata !DIExpression()), !dbg !198
  %86 = icmp eq i64 %85, %66, !dbg !199
  br i1 %86, label %68, label %71, !dbg !201, !llvm.loop !241

87:                                               ; preds = %13, %67, %68, %22
  %88 = phi %struct.halide_profiler_pipeline_stats* [ %24, %68 ], [ null, %67 ], [ null, %22 ], [ %9, %13 ], !dbg !113
  ret %struct.halide_profiler_pipeline_stats* %88, !dbg !243
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare !dbg !244 dso_local i8* @malloc(i64) local_unnamed_addr #4

declare !dbg !248 dso_local void @free(i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi(%struct.halide_profiler_state* %0, i32 %1, i64 %2, i32 %3) local_unnamed_addr #1 !dbg !251 {
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %0, metadata !255, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 %1, metadata !256, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i64 %2, metadata !257, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 %3, metadata !258, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* null, metadata !259, metadata !DIExpression()), !dbg !267
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i64 0, i32 5, !dbg !268
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !260, metadata !DIExpression()), !dbg !269
  %6 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %5, align 8, !dbg !269, !tbaa !117
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* null, metadata !259, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %6, metadata !260, metadata !DIExpression()), !dbg !269
  %7 = icmp eq %struct.halide_profiler_pipeline_stats* %6, null, !dbg !270
  br i1 %7, label %61, label %8, !dbg !271

8:                                                ; preds = %4, %56
  %9 = phi %struct.halide_profiler_pipeline_stats* [ %59, %56 ], [ %6, %4 ]
  %10 = phi %struct.halide_profiler_pipeline_stats* [ %9, %56 ], [ null, %4 ]
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %10, metadata !259, metadata !DIExpression()), !dbg !267
  %11 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 10, !dbg !272
  %12 = load i32, i32* %11, align 4, !dbg !272, !tbaa !159
  %13 = icmp sgt i32 %12, %1, !dbg !273
  br i1 %13, label %56, label %14, !dbg !274

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 9, !dbg !275
  %16 = load i32, i32* %15, align 8, !dbg !275, !tbaa !134
  %17 = add nsw i32 %16, %12, !dbg !276
  %18 = icmp sgt i32 %17, %1, !dbg !277
  br i1 %18, label %19, label %56, !dbg !278

19:                                               ; preds = %14
  %20 = icmp eq %struct.halide_profiler_pipeline_stats* %10, null, !dbg !279
  br i1 %20, label %26, label %21, !dbg !281

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 8, !dbg !282
  %23 = load i8*, i8** %22, align 8, !dbg !282, !tbaa !152
  %24 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %10, i64 0, i32 8, !dbg !284
  store i8* %23, i8** %24, align 8, !dbg !285, !tbaa !152
  %25 = bitcast i8** %22 to %struct.halide_profiler_pipeline_stats**, !dbg !286
  store %struct.halide_profiler_pipeline_stats* %6, %struct.halide_profiler_pipeline_stats** %25, align 8, !dbg !286, !tbaa !152
  store %struct.halide_profiler_pipeline_stats* %9, %struct.halide_profiler_pipeline_stats** %5, align 8, !dbg !287, !tbaa !147
  br label %26, !dbg !288

26:                                               ; preds = %21, %19
  %27 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 7, !dbg !289
  %28 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %27, align 8, !dbg !289, !tbaa !194
  %29 = sext i32 %1 to i64, !dbg !290
  %30 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %28, i64 %29, !dbg !290
  %31 = sext i32 %12 to i64, !dbg !291
  %32 = sub nsw i64 0, %31, !dbg !291
  %33 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %30, i64 %32, !dbg !291
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* %33, metadata !262, metadata !DIExpression()), !dbg !292
  %34 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %33, i64 0, i32 0, !dbg !293
  %35 = load i64, i64* %34, align 8, !dbg !294, !tbaa !211
  %36 = add i64 %35, %2, !dbg !294
  store i64 %36, i64* %34, align 8, !dbg !294, !tbaa !211
  %37 = sext i32 %3 to i64, !dbg !295
  %38 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %33, i64 0, i32 5, !dbg !296
  %39 = load i64, i64* %38, align 8, !dbg !297, !tbaa !236
  %40 = add i64 %39, %37, !dbg !297
  store i64 %40, i64* %38, align 8, !dbg !297, !tbaa !236
  %41 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %33, i64 0, i32 6, !dbg !298
  %42 = load i64, i64* %41, align 8, !dbg !299, !tbaa !239
  %43 = add i64 %42, 1, !dbg !299
  store i64 %43, i64* %41, align 8, !dbg !299, !tbaa !239
  %44 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 0, !dbg !300
  %45 = load i64, i64* %44, align 8, !dbg !301, !tbaa !167
  %46 = add i64 %45, %2, !dbg !301
  store i64 %46, i64* %44, align 8, !dbg !301, !tbaa !167
  %47 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 12, !dbg !302
  %48 = load i32, i32* %47, align 4, !dbg !303, !tbaa !170
  %49 = add nsw i32 %48, 1, !dbg !303
  store i32 %49, i32* %47, align 4, !dbg !303, !tbaa !170
  %50 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 4, !dbg !304
  %51 = load i64, i64* %50, align 8, !dbg !305, !tbaa !185
  %52 = add i64 %51, %37, !dbg !305
  store i64 %52, i64* %50, align 8, !dbg !305, !tbaa !185
  %53 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 5, !dbg !306
  %54 = load i64, i64* %53, align 8, !dbg !307, !tbaa !188
  %55 = add i64 %54, 1, !dbg !307
  store i64 %55, i64* %53, align 8, !dbg !307, !tbaa !188
  ret void

56:                                               ; preds = %14, %8
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %9, metadata !259, metadata !DIExpression()), !dbg !267
  %57 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %9, i64 0, i32 8, !dbg !308
  %58 = bitcast i8** %57 to %struct.halide_profiler_pipeline_stats**, !dbg !308
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !260, metadata !DIExpression()), !dbg !269
  %59 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %58, align 8, !dbg !269, !tbaa !117
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %59, metadata !260, metadata !DIExpression()), !dbg !269
  %60 = icmp eq %struct.halide_profiler_pipeline_stats* %59, null, !dbg !270
  br i1 %60, label %61, label %8, !dbg !271, !llvm.loop !309

61:                                               ; preds = %56, %4
  ret void, !dbg !311
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv(i8* %0) #5 !dbg !312 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !314, metadata !DIExpression()), !dbg !324
  %4 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !325
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %4, metadata !315, metadata !DIExpression()), !dbg !324
  %5 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 0, !dbg !326
  tail call void @halide_mutex_lock(%struct.halide_mutex* %5) #7, !dbg !327
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 3, !dbg !328
  %7 = load i32, i32* %6, align 8, !dbg !328, !tbaa !329
  %8 = icmp eq i32 %7, -2, !dbg !330
  br i1 %8, label %39, label %9, !dbg !331

9:                                                ; preds = %1
  %10 = bitcast i32* %2 to i8*
  %11 = bitcast i32* %3 to i8*
  %12 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 6
  %13 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 4
  %14 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %4, i64 0, i32 1
  br label %18, !dbg !331

15:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 %29, metadata !318, metadata !DIExpression()), !dbg !332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #8, !dbg !333
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #8, !dbg !333
  %16 = load i32, i32* %6, align 8, !dbg !328, !tbaa !329
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
  %22 = load void (i32*, i32*)*, void (i32*, i32*)** %12, align 8, !dbg !340, !tbaa !342
  %23 = icmp eq void (i32*, i32*)* %22, null, !dbg !343
  br i1 %23, label %25, label %24, !dbg !344

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32* %2, metadata !319, metadata !DIExpression(DW_OP_deref)), !dbg !345
  call void @llvm.dbg.value(metadata i32* %3, metadata !321, metadata !DIExpression(DW_OP_deref)), !dbg !345
  call void %22(i32* nonnull %2, i32* nonnull %3) #7, !dbg !346
  br label %28, !dbg !348

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 8, !dbg !349, !tbaa !329
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
  %38 = load i32, i32* %14, align 8, !dbg !369, !tbaa !370
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
  %3 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i64 0, i32 0, !dbg !410
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !411, metadata !DIExpression()) #8, !dbg !416
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !414, metadata !DIExpression()) #8, !dbg !416
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !394, metadata !DIExpression()), !dbg !408
  tail call void @halide_mutex_lock(%struct.halide_mutex* %3) #7, !dbg !418
  %4 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i64 0, i32 5, !dbg !420
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !406, metadata !DIExpression()), !dbg !421
  %5 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %4, align 8, !dbg !421, !tbaa !117
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %5, metadata !406, metadata !DIExpression()), !dbg !421
  %6 = icmp eq %struct.halide_profiler_pipeline_stats* %5, null, !dbg !422
  br i1 %6, label %17, label %7, !dbg !424

7:                                                ; preds = %1, %12
  %8 = phi %struct.halide_profiler_pipeline_stats* [ %15, %12 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %8, i64 0, i32 6, !dbg !425
  %10 = load i8*, i8** %9, align 8, !dbg !425, !tbaa !127
  %11 = icmp eq i8* %10, %0, !dbg !428
  br i1 %11, label %17, label %12, !dbg !429

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %8, i64 0, i32 8, !dbg !430
  %14 = bitcast i8** %13 to %struct.halide_profiler_pipeline_stats**, !dbg !430
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !406, metadata !DIExpression()), !dbg !421
  %15 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %14, align 8, !dbg !421, !tbaa !117
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
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %5, i64 0, i32 0, !dbg !454
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !411, metadata !DIExpression()) #8, !dbg !455
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %6, metadata !414, metadata !DIExpression()) #8, !dbg !455
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %6, metadata !450, metadata !DIExpression()), !dbg !452
  tail call void @halide_mutex_lock(%struct.halide_mutex* %6) #7, !dbg !457
  %7 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %5, i64 0, i32 7, !dbg !458
  %8 = load %struct.halide_thread*, %struct.halide_thread** %7, align 8, !dbg !458, !tbaa !460
  %9 = icmp eq %struct.halide_thread* %8, null, !dbg !461
  br i1 %9, label %10, label %13, !dbg !462

10:                                               ; preds = %4
  %11 = tail call i32 @halide_start_clock(i8* %0) #7, !dbg !463
  %12 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv, i8* null) #7, !dbg !465
  store %struct.halide_thread* %12, %struct.halide_thread** %7, align 8, !dbg !466, !tbaa !460
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
  %19 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %14, i64 0, i32 11, !dbg !475
  %20 = load i32, i32* %19, align 8, !dbg !476, !tbaa !164
  %21 = add nsw i32 %20, 1, !dbg !476
  store i32 %21, i32* %19, align 8, !dbg !476, !tbaa !164
  %22 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %14, i64 0, i32 10, !dbg !477
  %23 = load i32, i32* %22, align 4, !dbg !477, !tbaa !159
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
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0)) #7, !dbg !507
  tail call void @abort() #7, !dbg !507
  br label %6, !dbg !507

6:                                                ; preds = %5, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !500, metadata !DIExpression()), !dbg !509
  %7 = getelementptr inbounds i8, i8* %1, i64 72, !dbg !510
  %8 = bitcast i8* %7 to i32*, !dbg !510
  %9 = load i32, i32* %8, align 8, !dbg !510, !tbaa !134
  %10 = icmp sgt i32 %9, 0, !dbg !512
  br i1 %10, label %11, label %14, !dbg !513

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %1, i64 56
  %13 = bitcast i8* %12 to %struct.halide_profiler_func_stats**
  br label %15, !dbg !513

14:                                               ; preds = %34, %6
  ret void, !dbg !514

15:                                               ; preds = %11, %34
  %16 = phi i32 [ %9, %11 ], [ %35, %34 ]
  %17 = phi i64 [ 0, %11 ], [ %36, %34 ]
  call void @llvm.dbg.value(metadata i64 %17, metadata !500, metadata !DIExpression()), !dbg !509
  %18 = getelementptr inbounds i64, i64* %2, i64 %17, !dbg !515
  %19 = load i64, i64* %18, align 8, !dbg !515, !tbaa !214
  %20 = icmp eq i64 %19, 0, !dbg !518
  br i1 %20, label %34, label %21, !dbg !519

21:                                               ; preds = %15
  %22 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %13, align 8, !dbg !520, !tbaa !194
  %23 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %22, i64 %17, i32 4, !dbg !522
  call void @llvm.dbg.value(metadata i64* %23, metadata !523, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i64 %19, metadata !530, metadata !DIExpression()), !dbg !536
  %24 = load i64, i64* %23, align 8, !dbg !538, !tbaa !214
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
  %33 = load i32, i32* %8, align 8, !dbg !510, !tbaa !134
  br label %34, !dbg !547

34:                                               ; preds = %32, %15
  %35 = phi i32 [ %33, %32 ], [ %16, %15 ], !dbg !510
  %36 = add nuw nsw i64 %17, 1, !dbg !547
  call void @llvm.dbg.value(metadata i64 %36, metadata !500, metadata !DIExpression()), !dbg !509
  %37 = sext i32 %35 to i64, !dbg !512
  %38 = icmp slt i64 %36, %37, !dbg !512
  br i1 %38, label %15, label %14, !dbg !513, !llvm.loop !548
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
  br i1 %5, label %60, label %6, !dbg !571

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %1, metadata !564, metadata !DIExpression()), !dbg !568
  %7 = icmp eq i8* %1, null, !dbg !572
  br i1 %7, label %8, label %9, !dbg !575

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !576
  tail call void @abort() #7, !dbg !576
  br label %9, !dbg !576

9:                                                ; preds = %6, %8
  %10 = icmp sgt i32 %2, -1, !dbg !578
  br i1 %10, label %12, label %11, !dbg !581

11:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !582
  tail call void @abort() #7, !dbg !582
  br label %12, !dbg !582

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds i8, i8* %1, i64 72, !dbg !584
  %14 = bitcast i8* %13 to i32*, !dbg !584
  %15 = load i32, i32* %14, align 8, !dbg !584, !tbaa !134
  %16 = icmp sgt i32 %15, %2, !dbg !584
  br i1 %16, label %18, label %17, !dbg !587

17:                                               ; preds = %12
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !588
  tail call void @abort() #7, !dbg !588
  br label %18, !dbg !588

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds i8, i8* %1, i64 56, !dbg !590
  %20 = bitcast i8* %19 to %struct.halide_profiler_func_stats**, !dbg !590
  %21 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %20, align 8, !dbg !590, !tbaa !194
  %22 = sext i32 %2 to i64, !dbg !591
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* undef, metadata !565, metadata !DIExpression()), !dbg !568
  %23 = getelementptr inbounds i8, i8* %1, i64 88, !dbg !592
  %24 = bitcast i8* %23 to i32*, !dbg !592
  %25 = atomicrmw add i32* %24, i32 1 seq_cst, !dbg !593
  %26 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !594
  %27 = bitcast i8* %26 to i64*, !dbg !594
  %28 = atomicrmw add i64* %27, i64 %3 seq_cst, !dbg !595
  %29 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !596
  %30 = bitcast i8* %29 to i64*, !dbg !596
  %31 = atomicrmw add i64* %30, i64 %3 seq_cst, !dbg !597
  %32 = add i64 %31, %3, !dbg !597
  call void @llvm.dbg.value(metadata i64 %32, metadata !566, metadata !DIExpression()), !dbg !568
  %33 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !598
  %34 = bitcast i8* %33 to i64*, !dbg !598
  call void @llvm.dbg.value(metadata i64* %34, metadata !523, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i64 %32, metadata !530, metadata !DIExpression()), !dbg !599
  %35 = load i64, i64* %34, align 8, !dbg !601, !tbaa !214
  call void @llvm.dbg.value(metadata i64 %35, metadata !531, metadata !DIExpression()), !dbg !599
  br label %36, !dbg !602

36:                                               ; preds = %39, %18
  %37 = phi i64 [ %35, %18 ], [ %41, %39 ], !dbg !599
  call void @llvm.dbg.value(metadata i64 %37, metadata !531, metadata !DIExpression()), !dbg !599
  %38 = icmp ult i64 %37, %32, !dbg !603
  br i1 %38, label %39, label %43, !dbg !602

39:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i64 %37, metadata !532, metadata !DIExpression()), !dbg !604
  %40 = cmpxchg i64* %34, i64 %37, i64 %32 seq_cst seq_cst, !dbg !605
  %41 = extractvalue { i64, i1 } %40, 0, !dbg !605
  call void @llvm.dbg.value(metadata i64 %41, metadata !531, metadata !DIExpression()), !dbg !599
  %42 = icmp eq i64 %37, %41, !dbg !606
  br i1 %42, label %43, label %36, !llvm.loop !607

43:                                               ; preds = %36, %39
  %44 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 8, !dbg !609
  %45 = atomicrmw add i32* %44, i32 1 seq_cst, !dbg !610
  %46 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 3, !dbg !611
  %47 = atomicrmw add i64* %46, i64 %3 seq_cst, !dbg !612
  %48 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 1, !dbg !613
  %49 = atomicrmw add i64* %48, i64 %3 seq_cst, !dbg !614
  %50 = add i64 %49, %3, !dbg !614
  call void @llvm.dbg.value(metadata i64 %50, metadata !567, metadata !DIExpression()), !dbg !568
  %51 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 2, !dbg !615
  call void @llvm.dbg.value(metadata i64* %51, metadata !523, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.value(metadata i64 %50, metadata !530, metadata !DIExpression()), !dbg !616
  %52 = load i64, i64* %51, align 8, !dbg !618, !tbaa !214
  call void @llvm.dbg.value(metadata i64 %52, metadata !531, metadata !DIExpression()), !dbg !616
  br label %53, !dbg !619

53:                                               ; preds = %56, %43
  %54 = phi i64 [ %52, %43 ], [ %58, %56 ], !dbg !616
  call void @llvm.dbg.value(metadata i64 %54, metadata !531, metadata !DIExpression()), !dbg !616
  %55 = icmp ult i64 %54, %50, !dbg !620
  br i1 %55, label %56, label %60, !dbg !619

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !532, metadata !DIExpression()), !dbg !621
  %57 = cmpxchg i64* %51, i64 %54, i64 %50 seq_cst seq_cst, !dbg !622
  %58 = extractvalue { i64, i1 } %57, 0, !dbg !622
  call void @llvm.dbg.value(metadata i64 %58, metadata !531, metadata !DIExpression()), !dbg !616
  %59 = icmp eq i64 %54, %58, !dbg !623
  br i1 %59, label %60, label %53, !llvm.loop !624

60:                                               ; preds = %56, %53, %4
  ret void, !dbg !626
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_memory_free(i8* %0, i8* %1, i32 %2, i64 %3) local_unnamed_addr #1 !dbg !627 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !629, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i8* %1, metadata !630, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i32 %2, metadata !631, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i64 %3, metadata !632, metadata !DIExpression()), !dbg !635
  %5 = icmp eq i64 %3, 0, !dbg !636
  br i1 %5, label %28, label %6, !dbg !638

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %1, metadata !633, metadata !DIExpression()), !dbg !635
  %7 = icmp eq i8* %1, null, !dbg !639
  br i1 %7, label %8, label %9, !dbg !642

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !643
  tail call void @abort() #7, !dbg !643
  br label %9, !dbg !643

9:                                                ; preds = %6, %8
  %10 = icmp sgt i32 %2, -1, !dbg !645
  br i1 %10, label %12, label %11, !dbg !648

11:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !649
  tail call void @abort() #7, !dbg !649
  br label %12, !dbg !649

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds i8, i8* %1, i64 72, !dbg !651
  %14 = bitcast i8* %13 to i32*, !dbg !651
  %15 = load i32, i32* %14, align 8, !dbg !651, !tbaa !134
  %16 = icmp sgt i32 %15, %2, !dbg !651
  br i1 %16, label %18, label %17, !dbg !654

17:                                               ; preds = %12
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !655
  tail call void @abort() #7, !dbg !655
  br label %18, !dbg !655

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds i8, i8* %1, i64 56, !dbg !657
  %20 = bitcast i8* %19 to %struct.halide_profiler_func_stats**, !dbg !657
  %21 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %20, align 8, !dbg !657, !tbaa !194
  %22 = sext i32 %2 to i64, !dbg !658
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* undef, metadata !634, metadata !DIExpression()), !dbg !635
  %23 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !659
  %24 = bitcast i8* %23 to i64*, !dbg !659
  %25 = atomicrmw sub i64* %24, i64 %3 seq_cst, !dbg !660
  %26 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %21, i64 %22, i32 1, !dbg !661
  %27 = atomicrmw sub i64* %26, i64 %3 seq_cst, !dbg !662
  br label %28

28:                                               ; preds = %4, %18
  ret void, !dbg !663
}

; Function Attrs: nounwind
define weak dso_local void @halide_profiler_report_unlocked(i8* %0, %struct.halide_profiler_state* %1) local_unnamed_addr #5 !dbg !664 {
  %3 = alloca [1024 x i8], align 1
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !668, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %1, metadata !669, metadata !DIExpression()), !dbg !822
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !823
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %5) #8, !dbg !823
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !670, metadata !DIExpression()), !dbg !824
  %6 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*, !dbg !825
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #8, !dbg !825
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !674, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !827, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i8* %0, metadata !830, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i8* %5, metadata !831, metadata !DIExpression()), !dbg !833
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 3, !dbg !835
  store i8* %0, i8** %7, align 8, !dbg !835, !tbaa !836
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 4, !dbg !839
  store i8 0, i8* %8, align 8, !dbg !839, !tbaa !840
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 0, !dbg !841
  store i8* %5, i8** %9, align 8, !dbg !846
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 1, !dbg !847
  store i8* %5, i8** %10, align 8, !dbg !848, !tbaa !849
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 1023, !dbg !850
  %12 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 2, !dbg !853
  store i8* %11, i8** %12, align 8, !dbg !854, !tbaa !855
  store i8 0, i8* %11, align 1, !dbg !856, !tbaa !857
  %13 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 5, !dbg !858
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !791, metadata !DIExpression()), !dbg !859
  %14 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %13, align 8, !dbg !859, !tbaa !117
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %14, metadata !791, metadata !DIExpression()), !dbg !859
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null, !dbg !860
  br i1 %15, label %21, label %39, !dbg !861

16:                                               ; preds = %422
  %17 = load i8*, i8** %9, align 8, !dbg !862, !tbaa !869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !867, metadata !DIExpression()) #8, !dbg !870
  %18 = icmp eq i8* %17, null, !dbg !862
  br i1 %18, label %19, label %21, !dbg !871

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8, !dbg !872, !tbaa !836
  call void @halide_error(i8* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !874
  br label %30, !dbg !875

21:                                               ; preds = %2, %16
  %22 = phi i8* [ %17, %16 ], [ %5, %2 ]
  %23 = load i8*, i8** %10, align 8, !dbg !876, !tbaa !849
  %24 = load i8*, i8** %7, align 8, !dbg !876, !tbaa !836
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !878, metadata !DIExpression()) #8, !dbg !881
  %25 = ptrtoint i8* %23 to i64, !dbg !883
  %26 = ptrtoint i8* %22 to i64, !dbg !883
  %27 = sub i64 1, %26, !dbg !883
  %28 = add i64 %27, %25, !dbg !884
  %29 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %24, i8* nonnull %22, i64 %28) #7, !dbg !885
  br label %30

30:                                               ; preds = %21, %19
  %31 = load i8, i8* %8, align 8, !dbg !886, !tbaa !840, !range !888
  %32 = icmp eq i8 %31, 0, !dbg !886
  br i1 %32, label %38, label %33, !dbg !889

33:                                               ; preds = %30
  %34 = load i8*, i8** %9, align 8, !dbg !890, !tbaa !869
  %35 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 5, i64 0, !dbg !891
  %36 = icmp eq i8* %34, %35, !dbg !892
  br i1 %36, label %38, label %37, !dbg !893

37:                                               ; preds = %33
  call void @free(i8* %34) #7, !dbg !894
  br label %38, !dbg !896

38:                                               ; preds = %30, %33, %37
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #8, !dbg !897
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %5) #8, !dbg !897
  ret void, !dbg !897

39:                                               ; preds = %2, %422
  %40 = phi %struct.halide_profiler_pipeline_stats* [ %425, %422 ], [ %14, %2 ]
  %41 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 0, !dbg !898
  %42 = load i64, i64* %41, align 8, !dbg !898, !tbaa !167
  %43 = uitofp i64 %42 to float, !dbg !899
  %44 = fdiv float %43, 1.000000e+06, !dbg !900
  call void @llvm.dbg.value(metadata float %44, metadata !793, metadata !DIExpression()), !dbg !901
  %45 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 11, !dbg !902
  %46 = load i32, i32* %45, align 8, !dbg !902, !tbaa !164
  %47 = icmp eq i32 %46, 0, !dbg !904
  br i1 %47, label %422, label %48, !dbg !905

48:                                               ; preds = %39
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !906, metadata !DIExpression()), !dbg !909
  %49 = load i8*, i8** %9, align 8, !dbg !911, !tbaa !869
  store i8* %49, i8** %10, align 8, !dbg !912, !tbaa !849
  %50 = icmp eq i8* %49, null, !dbg !913
  br i1 %50, label %52, label %51, !dbg !915

51:                                               ; preds = %48
  store i8 0, i8* %49, align 1, !dbg !916, !tbaa !857
  br label %52, !dbg !918

52:                                               ; preds = %48, %51
  call void @llvm.dbg.value(metadata i32 0, metadata !796, metadata !DIExpression()), !dbg !901
  %53 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 13, !dbg !919
  %54 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 4, !dbg !921
  %55 = load i64, i64* %54, align 8, !dbg !921, !tbaa !185
  %56 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 5, !dbg !922
  %57 = load i64, i64* %56, align 8, !dbg !922, !tbaa !188
  %58 = icmp eq i64 %55, %57, !dbg !923
  call void @llvm.dbg.value(metadata i1 %58, metadata !797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !901
  call void @llvm.dbg.value(metadata float undef, metadata !798, metadata !DIExpression()), !dbg !901
  %59 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 6, !dbg !924
  %60 = load i8*, i8** %59, align 8, !dbg !924, !tbaa !127
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !929
  call void @llvm.dbg.value(metadata i8* %60, metadata !928, metadata !DIExpression()) #8, !dbg !929
  %61 = icmp eq i8* %60, null, !dbg !931
  %62 = load i8*, i8** %10, align 8, !dbg !933, !tbaa !849
  %63 = load i8*, i8** %12, align 8, !dbg !933, !tbaa !855
  br i1 %61, label %64, label %66, !dbg !934

64:                                               ; preds = %52
  %65 = call i8* @halide_string_to_string(i8* %62, i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !935
  br label %68, !dbg !937

66:                                               ; preds = %52
  %67 = call i8* @halide_string_to_string(i8* %62, i8* %63, i8* nonnull %60) #7, !dbg !938
  br label %68

68:                                               ; preds = %64, %66
  %69 = phi i8* [ %67, %66 ], [ %65, %64 ], !dbg !933
  store i8* %69, i8** %10, align 8, !dbg !933, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !940
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !940
  %70 = load i8*, i8** %12, align 8, !dbg !942, !tbaa !855
  %71 = call i8* @halide_string_to_string(i8* %69, i8* %70, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !943
  store i8* %71, i8** %10, align 8, !dbg !944, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !945
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !945
  %72 = load i8*, i8** %12, align 8, !dbg !947, !tbaa !855
  %73 = call i8* @halide_string_to_string(i8* %71, i8* %72, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !948
  store i8* %73, i8** %10, align 8, !dbg !949, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !950, metadata !DIExpression()) #8, !dbg !954
  call void @llvm.dbg.value(metadata float %44, metadata !953, metadata !DIExpression()) #8, !dbg !954
  %74 = load i8*, i8** %12, align 8, !dbg !956, !tbaa !855
  %75 = fpext float %44 to double, !dbg !957
  %76 = call i8* @halide_double_to_string(i8* %73, i8* %74, double %75, i32 0) #7, !dbg !958
  store i8* %76, i8** %10, align 8, !dbg !959, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !960
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !960
  %77 = load i8*, i8** %12, align 8, !dbg !962, !tbaa !855
  %78 = call i8* @halide_string_to_string(i8* %76, i8* %77, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !963
  store i8* %78, i8** %10, align 8, !dbg !964, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !965
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !965
  %79 = load i8*, i8** %12, align 8, !dbg !967, !tbaa !855
  %80 = call i8* @halide_string_to_string(i8* %78, i8* %79, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !968
  store i8* %80, i8** %10, align 8, !dbg !969, !tbaa !849
  %81 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 12, !dbg !970
  %82 = load i32, i32* %81, align 4, !dbg !970, !tbaa !170
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !971, metadata !DIExpression()) #8, !dbg !975
  call void @llvm.dbg.value(metadata i32 %82, metadata !974, metadata !DIExpression()) #8, !dbg !975
  %83 = load i8*, i8** %12, align 8, !dbg !977, !tbaa !855
  %84 = sext i32 %82 to i64, !dbg !978
  %85 = call i8* @halide_int64_to_string(i8* %80, i8* %83, i64 %84, i32 1) #7, !dbg !979
  store i8* %85, i8** %10, align 8, !dbg !980, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !981
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !981
  %86 = load i8*, i8** %12, align 8, !dbg !983, !tbaa !855
  %87 = call i8* @halide_string_to_string(i8* %85, i8* %86, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !984
  store i8* %87, i8** %10, align 8, !dbg !985, !tbaa !849
  %88 = load i32, i32* %45, align 8, !dbg !986, !tbaa !164
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !971, metadata !DIExpression()) #8, !dbg !987
  call void @llvm.dbg.value(metadata i32 %88, metadata !974, metadata !DIExpression()) #8, !dbg !987
  %89 = load i8*, i8** %12, align 8, !dbg !989, !tbaa !855
  %90 = sext i32 %88 to i64, !dbg !990
  %91 = call i8* @halide_int64_to_string(i8* %87, i8* %89, i64 %90, i32 1) #7, !dbg !991
  store i8* %91, i8** %10, align 8, !dbg !992, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !993
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !993
  %92 = load i8*, i8** %12, align 8, !dbg !995, !tbaa !855
  %93 = call i8* @halide_string_to_string(i8* %91, i8* %92, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !996
  store i8* %93, i8** %10, align 8, !dbg !997, !tbaa !849
  %94 = load i32, i32* %45, align 8, !dbg !998, !tbaa !164
  %95 = sitofp i32 %94 to float, !dbg !999
  %96 = fdiv float %44, %95, !dbg !1000
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !950, metadata !DIExpression()) #8, !dbg !1001
  call void @llvm.dbg.value(metadata float %96, metadata !953, metadata !DIExpression()) #8, !dbg !1001
  %97 = load i8*, i8** %12, align 8, !dbg !1003, !tbaa !855
  %98 = fpext float %96 to double, !dbg !1004
  %99 = call i8* @halide_double_to_string(i8* %93, i8* %97, double %98, i32 0) #7, !dbg !1005
  store i8* %99, i8** %10, align 8, !dbg !1006, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1007
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1007
  %100 = load i8*, i8** %12, align 8, !dbg !1009, !tbaa !855
  %101 = call i8* @halide_string_to_string(i8* %99, i8* %100, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !1010
  store i8* %101, i8** %10, align 8, !dbg !1011, !tbaa !849
  br i1 %58, label %115, label %102, !dbg !1012

102:                                              ; preds = %68
  %103 = uitofp i64 %55 to double, !dbg !1013
  %104 = uitofp i64 %57 to double, !dbg !1014
  %105 = fadd double %104, 1.000000e-10, !dbg !1015
  %106 = fdiv double %103, %105, !dbg !1016
  %107 = fptrunc double %106 to float, !dbg !1013
  call void @llvm.dbg.value(metadata float %107, metadata !798, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1017
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1017
  %108 = load i8*, i8** %12, align 8, !dbg !1021, !tbaa !855
  %109 = call i8* @halide_string_to_string(i8* %101, i8* %108, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !1022
  store i8* %109, i8** %10, align 8, !dbg !1023, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !950, metadata !DIExpression()) #8, !dbg !1024
  call void @llvm.dbg.value(metadata float %107, metadata !953, metadata !DIExpression()) #8, !dbg !1024
  %110 = load i8*, i8** %12, align 8, !dbg !1026, !tbaa !855
  %111 = fpext float %107 to double, !dbg !1027
  %112 = call i8* @halide_double_to_string(i8* %109, i8* %110, double %111, i32 0) #7, !dbg !1028
  store i8* %112, i8** %10, align 8, !dbg !1029, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1030
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1030
  %113 = load i8*, i8** %12, align 8, !dbg !1032, !tbaa !855
  %114 = call i8* @halide_string_to_string(i8* %112, i8* %113, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !1033
  store i8* %114, i8** %10, align 8, !dbg !1034, !tbaa !849
  br label %115, !dbg !1035

115:                                              ; preds = %102, %68
  %116 = phi i8* [ %114, %102 ], [ %101, %68 ], !dbg !1036
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1038
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1038
  %117 = load i8*, i8** %12, align 8, !dbg !1039, !tbaa !855
  %118 = call i8* @halide_string_to_string(i8* %116, i8* %117, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !1040
  store i8* %118, i8** %10, align 8, !dbg !1041, !tbaa !849
  %119 = load i32, i32* %53, align 8, !dbg !1042, !tbaa !182
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !971, metadata !DIExpression()) #8, !dbg !1043
  call void @llvm.dbg.value(metadata i32 %119, metadata !974, metadata !DIExpression()) #8, !dbg !1043
  %120 = load i8*, i8** %12, align 8, !dbg !1045, !tbaa !855
  %121 = sext i32 %119 to i64, !dbg !1046
  %122 = call i8* @halide_int64_to_string(i8* %118, i8* %120, i64 %121, i32 1) #7, !dbg !1047
  store i8* %122, i8** %10, align 8, !dbg !1048, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1049
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1049
  %123 = load i8*, i8** %12, align 8, !dbg !1051, !tbaa !855
  %124 = call i8* @halide_string_to_string(i8* %122, i8* %123, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !1052
  store i8* %124, i8** %10, align 8, !dbg !1053, !tbaa !849
  %125 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 2, !dbg !1054
  %126 = load i64, i64* %125, align 8, !dbg !1054, !tbaa !176
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !1055, metadata !DIExpression()) #8, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %126, metadata !1058, metadata !DIExpression()) #8, !dbg !1059
  %127 = load i8*, i8** %12, align 8, !dbg !1061, !tbaa !855
  %128 = call i8* @halide_uint64_to_string(i8* %124, i8* %127, i64 %126, i32 1) #7, !dbg !1062
  store i8* %128, i8** %10, align 8, !dbg !1063, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1064
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1064
  %129 = load i8*, i8** %12, align 8, !dbg !1066, !tbaa !855
  %130 = call i8* @halide_string_to_string(i8* %128, i8* %129, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !1067
  store i8* %130, i8** %10, align 8, !dbg !1068, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !1069, metadata !DIExpression()) #8, !dbg !1072
  %131 = load i8*, i8** %9, align 8, !dbg !1074, !tbaa !869
  %132 = icmp eq i8* %131, null, !dbg !1074
  br i1 %132, label %141, label %133, !dbg !1076

133:                                              ; preds = %115
  %134 = load i8*, i8** %7, align 8, !dbg !1077, !tbaa !836
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !878, metadata !DIExpression()) #8, !dbg !1081
  %135 = ptrtoint i8* %130 to i64, !dbg !1083
  %136 = ptrtoint i8* %131 to i64, !dbg !1083
  %137 = add i64 %135, 1, !dbg !1083
  %138 = sub i64 %137, %136, !dbg !1084
  %139 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %134, i8* nonnull %131, i64 %138) #7, !dbg !1085
  %140 = load i8*, i8** %9, align 8, !dbg !1086, !tbaa !869
  br label %141, !dbg !1087

141:                                              ; preds = %115, %133
  %142 = phi i8* [ %140, %133 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), %115 ], !dbg !1088
  call void @halide_print(i8* %0, i8* %142) #7, !dbg !1089
  %143 = load i64, i64* %41, align 8, !dbg !1090, !tbaa !167
  %144 = icmp eq i64 %143, 0, !dbg !1091
  br i1 %144, label %145, label %165, !dbg !1092

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 3, !dbg !1093
  %147 = load i64, i64* %146, align 8, !dbg !1093, !tbaa !179
  %148 = icmp eq i64 %147, 0, !dbg !1094
  call void @llvm.dbg.value(metadata i1 %148, metadata !799, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !901
  br i1 %148, label %149, label %165, !dbg !1095

149:                                              ; preds = %145
  call void @llvm.dbg.value(metadata i8 0, metadata !799, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i32 0, metadata !800, metadata !DIExpression()), !dbg !1096
  %150 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 9, !dbg !1097
  %151 = load i32, i32* %150, align 8, !dbg !1097, !tbaa !134
  %152 = icmp sgt i32 %151, 0, !dbg !1098
  br i1 %152, label %153, label %422, !dbg !1099

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 7
  %155 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %154, align 8, !tbaa !194
  %156 = sext i32 %151 to i64
  br label %159, !dbg !1099

157:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i8 0, metadata !799, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 %164, metadata !800, metadata !DIExpression()), !dbg !1096
  %158 = icmp slt i64 %164, %156, !dbg !1098
  br i1 %158, label %159, label %422, !dbg !1099, !llvm.loop !1100

159:                                              ; preds = %153, %157
  %160 = phi i64 [ 0, %153 ], [ %164, %157 ]
  call void @llvm.dbg.value(metadata i64 %160, metadata !800, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* undef, metadata !804, metadata !DIExpression()), !dbg !1102
  %161 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %155, i64 %160, i32 4, !dbg !1103
  %162 = load i64, i64* %161, align 8, !dbg !1103, !tbaa !233
  %163 = icmp eq i64 %162, 0, !dbg !1105
  call void @llvm.dbg.value(metadata i8 undef, metadata !799, metadata !DIExpression()), !dbg !901
  %164 = add nuw nsw i64 %160, 1, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %164, metadata !800, metadata !DIExpression()), !dbg !1096
  br i1 %163, label %157, label %165

165:                                              ; preds = %159, %145, %141
  call void @llvm.dbg.value(metadata i32 0, metadata !807, metadata !DIExpression()), !dbg !1107
  %166 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 9, !dbg !1108
  %167 = load i32, i32* %166, align 8, !dbg !1108, !tbaa !134
  %168 = icmp sgt i32 %167, 0, !dbg !1109
  br i1 %168, label %169, label %422, !dbg !1110

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 7
  br label %171, !dbg !1110

171:                                              ; preds = %169, %417
  %172 = phi i64 [ 0, %169 ], [ %418, %417 ]
  call void @llvm.dbg.value(metadata i64 %172, metadata !807, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !906, metadata !DIExpression()), !dbg !1112
  %173 = load i8*, i8** %9, align 8, !dbg !1114, !tbaa !869
  store i8* %173, i8** %10, align 8, !dbg !1115, !tbaa !849
  %174 = icmp eq i8* %173, null, !dbg !1116
  br i1 %174, label %176, label %175, !dbg !1117

175:                                              ; preds = %171
  store i8 0, i8* %173, align 1, !dbg !1118, !tbaa !857
  br label %176, !dbg !1119

176:                                              ; preds = %171, %175
  %177 = load %struct.halide_profiler_func_stats*, %struct.halide_profiler_func_stats** %170, align 8, !dbg !1120, !tbaa !194
  %178 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, !dbg !1121
  call void @llvm.dbg.value(metadata %struct.halide_profiler_func_stats* %178, metadata !815, metadata !DIExpression()), !dbg !1111
  %179 = icmp eq i64 %172, 0, !dbg !1122
  br i1 %179, label %180, label %184, !dbg !1124

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i64 0, i32 0, !dbg !1125
  %182 = load i64, i64* %181, align 8, !dbg !1125, !tbaa !211
  %183 = icmp eq i64 %182, 0, !dbg !1126
  br i1 %183, label %417, label %184, !dbg !1127

184:                                              ; preds = %180, %176
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1128
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1128
  %185 = load i8*, i8** %10, align 8, !dbg !1130, !tbaa !849
  %186 = load i8*, i8** %12, align 8, !dbg !1131, !tbaa !855
  %187 = call i8* @halide_string_to_string(i8* %185, i8* %186, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !1132
  store i8* %187, i8** %10, align 8, !dbg !1133, !tbaa !849
  %188 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 7, !dbg !1134
  %189 = load i8*, i8** %188, align 8, !dbg !1134, !tbaa !218
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1135
  call void @llvm.dbg.value(metadata i8* %189, metadata !928, metadata !DIExpression()) #8, !dbg !1135
  %190 = icmp eq i8* %189, null, !dbg !1137
  %191 = load i8*, i8** %12, align 8, !dbg !1138, !tbaa !855
  br i1 %190, label %192, label %194, !dbg !1139

192:                                              ; preds = %184
  %193 = call i8* @halide_string_to_string(i8* %187, i8* %191, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !1140
  br label %196, !dbg !1141

194:                                              ; preds = %184
  %195 = call i8* @halide_string_to_string(i8* %187, i8* %191, i8* nonnull %189) #7, !dbg !1142
  br label %196

196:                                              ; preds = %192, %194
  %197 = phi i8* [ %195, %194 ], [ %193, %192 ], !dbg !1138
  store i8* %197, i8** %10, align 8, !dbg !1138, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1143
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1143
  %198 = load i8*, i8** %12, align 8, !dbg !1145, !tbaa !855
  %199 = call i8* @halide_string_to_string(i8* %197, i8* %198, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !1146
  call void @llvm.dbg.value(metadata i64 25, metadata !811, metadata !DIExpression()), !dbg !1111
  store i8* %199, i8** %10, align 8, !dbg !1111, !tbaa !849
  %200 = load i8*, i8** %9, align 8, !dbg !1147, !tbaa !869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1148, metadata !DIExpression()), !dbg !1152
  %201 = ptrtoint i8* %199 to i64, !dbg !1154
  %202 = ptrtoint i8* %200 to i64, !dbg !1154
  %203 = sub i64 %201, %202, !dbg !1154
  %204 = icmp ult i64 %203, 25, !dbg !1155
  br i1 %204, label %205, label %214, !dbg !1156

205:                                              ; preds = %196, %205
  %206 = phi i8* [ %208, %205 ], [ %199, %196 ]
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1157
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1157
  %207 = load i8*, i8** %12, align 8, !dbg !1160, !tbaa !855
  %208 = call i8* @halide_string_to_string(i8* %206, i8* %207, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !1161
  store i8* %208, i8** %10, align 8, !dbg !1111, !tbaa !849
  %209 = load i8*, i8** %9, align 8, !dbg !1147, !tbaa !869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1148, metadata !DIExpression()), !dbg !1152
  %210 = ptrtoint i8* %208 to i64, !dbg !1154
  %211 = ptrtoint i8* %209 to i64, !dbg !1154
  %212 = sub i64 %210, %211, !dbg !1154
  %213 = icmp ult i64 %212, 25, !dbg !1155
  br i1 %213, label %205, label %214, !dbg !1156, !llvm.loop !1162

214:                                              ; preds = %205, %196
  %215 = phi i8* [ %199, %196 ], [ %208, %205 ], !dbg !1111
  %216 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %178, i64 0, i32 0, !dbg !1164
  %217 = load i64, i64* %216, align 8, !dbg !1164, !tbaa !211
  %218 = uitofp i64 %217 to float, !dbg !1165
  %219 = load i32, i32* %45, align 8, !dbg !1166, !tbaa !164
  %220 = sitofp i32 %219 to float, !dbg !1167
  %221 = fmul float %220, 1.000000e+06, !dbg !1168
  %222 = fdiv float %218, %221, !dbg !1169
  call void @llvm.dbg.value(metadata float %222, metadata !816, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !950, metadata !DIExpression()) #8, !dbg !1170
  call void @llvm.dbg.value(metadata float %222, metadata !953, metadata !DIExpression()) #8, !dbg !1170
  %223 = load i8*, i8** %12, align 8, !dbg !1172, !tbaa !855
  %224 = fpext float %222 to double, !dbg !1173
  %225 = call i8* @halide_double_to_string(i8* %215, i8* %223, double %224, i32 0) #7, !dbg !1174
  store i8* %225, i8** %10, align 8, !dbg !1175, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !1176, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i32 3, metadata !1179, metadata !DIExpression()), !dbg !1180
  %226 = icmp eq i8* %225, null, !dbg !1182
  br i1 %226, label %233, label %227, !dbg !1184

227:                                              ; preds = %214
  %228 = getelementptr inbounds i8, i8* %225, i64 -3, !dbg !1185
  %229 = load i8*, i8** %9, align 8, !dbg !1187, !tbaa !869
  %230 = icmp ult i8* %228, %229, !dbg !1189
  %231 = select i1 %230, i8* %229, i8* %228, !dbg !1190
  store i8* %231, i8** %10, align 8, !dbg !1191
  store i8 0, i8* %231, align 1, !dbg !1192, !tbaa !857
  %232 = load i8*, i8** %10, align 8, !dbg !1193, !tbaa !849
  br label %233, !dbg !1195

233:                                              ; preds = %214, %227
  %234 = phi i8* [ null, %214 ], [ %232, %227 ], !dbg !1193
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1196
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1196
  %235 = load i8*, i8** %12, align 8, !dbg !1197, !tbaa !855
  %236 = call i8* @halide_string_to_string(i8* %234, i8* %235, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !1198
  call void @llvm.dbg.value(metadata i64 35, metadata !811, metadata !DIExpression()), !dbg !1111
  store i8* %236, i8** %10, align 8, !dbg !1111, !tbaa !849
  %237 = load i8*, i8** %9, align 8, !dbg !1199, !tbaa !869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1148, metadata !DIExpression()), !dbg !1200
  %238 = ptrtoint i8* %236 to i64, !dbg !1202
  %239 = ptrtoint i8* %237 to i64, !dbg !1202
  %240 = sub i64 %238, %239, !dbg !1202
  %241 = icmp ult i64 %240, 35, !dbg !1203
  br i1 %241, label %242, label %251, !dbg !1204

242:                                              ; preds = %233, %242
  %243 = phi i8* [ %245, %242 ], [ %236, %233 ]
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1205
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1205
  %244 = load i8*, i8** %12, align 8, !dbg !1208, !tbaa !855
  %245 = call i8* @halide_string_to_string(i8* %243, i8* %244, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !1209
  store i8* %245, i8** %10, align 8, !dbg !1111, !tbaa !849
  %246 = load i8*, i8** %9, align 8, !dbg !1199, !tbaa !869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1148, metadata !DIExpression()), !dbg !1200
  %247 = ptrtoint i8* %245 to i64, !dbg !1202
  %248 = ptrtoint i8* %246 to i64, !dbg !1202
  %249 = sub i64 %247, %248, !dbg !1202
  %250 = icmp ult i64 %249, 35, !dbg !1203
  br i1 %250, label %242, label %251, !dbg !1204, !llvm.loop !1210

251:                                              ; preds = %242, %233
  %252 = phi i8* [ %236, %233 ], [ %245, %242 ], !dbg !1111
  call void @llvm.dbg.value(metadata i32 0, metadata !817, metadata !DIExpression()), !dbg !1111
  %253 = load i64, i64* %41, align 8, !dbg !1212, !tbaa !167
  %254 = icmp eq i64 %253, 0, !dbg !1214
  br i1 %254, label %259, label %255, !dbg !1215

255:                                              ; preds = %251
  %256 = load i64, i64* %216, align 8, !dbg !1216, !tbaa !211
  %257 = mul i64 %256, 100, !dbg !1218
  %258 = udiv i64 %257, %253, !dbg !1219
  call void @llvm.dbg.value(metadata i64 %258, metadata !817, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1111
  br label %259, !dbg !1220

259:                                              ; preds = %255, %251
  %260 = phi i64 [ %258, %255 ], [ 0, %251 ], !dbg !1111
  call void @llvm.dbg.value(metadata i32 undef, metadata !817, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1221
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1221
  %261 = load i8*, i8** %12, align 8, !dbg !1223, !tbaa !855
  %262 = call i8* @halide_string_to_string(i8* %252, i8* %261, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !1224
  store i8* %262, i8** %10, align 8, !dbg !1225, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !971, metadata !DIExpression()) #8, !dbg !1226
  call void @llvm.dbg.value(metadata i32 undef, metadata !974, metadata !DIExpression()) #8, !dbg !1226
  %263 = load i8*, i8** %12, align 8, !dbg !1228, !tbaa !855
  %264 = shl i64 %260, 32, !dbg !1229
  %265 = ashr exact i64 %264, 32, !dbg !1229
  %266 = call i8* @halide_int64_to_string(i8* %262, i8* %263, i64 %265, i32 1) #7, !dbg !1230
  store i8* %266, i8** %10, align 8, !dbg !1231, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1232
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1232
  %267 = load i8*, i8** %12, align 8, !dbg !1234, !tbaa !855
  %268 = call i8* @halide_string_to_string(i8* %266, i8* %267, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #7, !dbg !1235
  call void @llvm.dbg.value(metadata i64 43, metadata !811, metadata !DIExpression()), !dbg !1111
  store i8* %268, i8** %10, align 8, !dbg !1111, !tbaa !849
  %269 = load i8*, i8** %9, align 8, !dbg !1236, !tbaa !869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1148, metadata !DIExpression()), !dbg !1237
  %270 = ptrtoint i8* %268 to i64, !dbg !1239
  %271 = ptrtoint i8* %269 to i64, !dbg !1239
  %272 = sub i64 %270, %271, !dbg !1239
  %273 = icmp ult i64 %272, 43, !dbg !1240
  br i1 %273, label %274, label %283, !dbg !1241

274:                                              ; preds = %259, %274
  %275 = phi i8* [ %277, %274 ], [ %268, %259 ]
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1242
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1242
  %276 = load i8*, i8** %12, align 8, !dbg !1245, !tbaa !855
  %277 = call i8* @halide_string_to_string(i8* %275, i8* %276, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !1246
  store i8* %277, i8** %10, align 8, !dbg !1111, !tbaa !849
  %278 = load i8*, i8** %9, align 8, !dbg !1236, !tbaa !869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1148, metadata !DIExpression()), !dbg !1237
  %279 = ptrtoint i8* %277 to i64, !dbg !1239
  %280 = ptrtoint i8* %278 to i64, !dbg !1239
  %281 = sub i64 %279, %280, !dbg !1239
  %282 = icmp ult i64 %281, 43, !dbg !1240
  br i1 %282, label %274, label %283, !dbg !1241, !llvm.loop !1247

283:                                              ; preds = %274, %259
  %284 = phi i8* [ %268, %259 ], [ %277, %274 ], !dbg !1111
  br i1 %58, label %323, label %285, !dbg !1249

285:                                              ; preds = %283
  %286 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 5, !dbg !1250
  %287 = load i64, i64* %286, align 8, !dbg !1250, !tbaa !236
  %288 = uitofp i64 %287 to double, !dbg !1251
  %289 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 6, !dbg !1252
  %290 = load i64, i64* %289, align 8, !dbg !1252, !tbaa !239
  %291 = uitofp i64 %290 to double, !dbg !1253
  %292 = fadd double %291, 1.000000e-10, !dbg !1254
  %293 = fdiv double %288, %292, !dbg !1255
  %294 = fptrunc double %293 to float, !dbg !1251
  call void @llvm.dbg.value(metadata float %294, metadata !818, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1257
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1257
  %295 = load i8*, i8** %12, align 8, !dbg !1259, !tbaa !855
  %296 = call i8* @halide_string_to_string(i8* %284, i8* %295, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0)) #7, !dbg !1260
  store i8* %296, i8** %10, align 8, !dbg !1261, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !950, metadata !DIExpression()) #8, !dbg !1262
  call void @llvm.dbg.value(metadata float %294, metadata !953, metadata !DIExpression()) #8, !dbg !1262
  %297 = load i8*, i8** %12, align 8, !dbg !1264, !tbaa !855
  %298 = fpext float %294 to double, !dbg !1265
  %299 = call i8* @halide_double_to_string(i8* %296, i8* %297, double %298, i32 0) #7, !dbg !1266
  store i8* %299, i8** %10, align 8, !dbg !1267, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !1176, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i32 3, metadata !1179, metadata !DIExpression()), !dbg !1268
  %300 = icmp eq i8* %299, null, !dbg !1270
  br i1 %300, label %307, label %301, !dbg !1271

301:                                              ; preds = %285
  %302 = getelementptr inbounds i8, i8* %299, i64 -3, !dbg !1272
  %303 = load i8*, i8** %9, align 8, !dbg !1273, !tbaa !869
  %304 = icmp ult i8* %302, %303, !dbg !1274
  %305 = select i1 %304, i8* %303, i8* %302, !dbg !1275
  store i8* %305, i8** %10, align 8, !dbg !1276
  store i8 0, i8* %305, align 1, !dbg !1277, !tbaa !857
  %306 = load i8*, i8** %10, align 8, !dbg !1278, !tbaa !849
  br label %307, !dbg !1279

307:                                              ; preds = %285, %301
  %308 = phi i8* [ null, %285 ], [ %306, %301 ], !dbg !1278
  call void @llvm.dbg.value(metadata i64 58, metadata !811, metadata !DIExpression()), !dbg !1111
  %309 = load i8*, i8** %9, align 8, !dbg !1278, !tbaa !869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1148, metadata !DIExpression()), !dbg !1280
  %310 = ptrtoint i8* %308 to i64, !dbg !1282
  %311 = ptrtoint i8* %309 to i64, !dbg !1282
  %312 = sub i64 %310, %311, !dbg !1282
  %313 = icmp ult i64 %312, 58, !dbg !1283
  br i1 %313, label %314, label %323, !dbg !1284

314:                                              ; preds = %307, %314
  %315 = phi i8* [ %317, %314 ], [ %308, %307 ]
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1285
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1285
  %316 = load i8*, i8** %12, align 8, !dbg !1288, !tbaa !855
  %317 = call i8* @halide_string_to_string(i8* %315, i8* %316, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !1289
  store i8* %317, i8** %10, align 8, !dbg !1290, !tbaa !849
  %318 = load i8*, i8** %9, align 8, !dbg !1278, !tbaa !869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1148, metadata !DIExpression()), !dbg !1280
  %319 = ptrtoint i8* %317 to i64, !dbg !1282
  %320 = ptrtoint i8* %318 to i64, !dbg !1282
  %321 = sub i64 %319, %320, !dbg !1282
  %322 = icmp ult i64 %321, 58, !dbg !1283
  br i1 %322, label %314, label %323, !dbg !1284, !llvm.loop !1291

323:                                              ; preds = %314, %307, %283
  %324 = phi i8* [ %284, %283 ], [ %308, %307 ], [ %317, %314 ]
  %325 = phi i64 [ 58, %283 ], [ 73, %307 ], [ 73, %314 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !811, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 0, metadata !821, metadata !DIExpression()), !dbg !1111
  %326 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 8, !dbg !1293
  %327 = load i32, i32* %326, align 8, !dbg !1293, !tbaa !230
  %328 = icmp eq i32 %327, 0, !dbg !1295
  br i1 %328, label %334, label %329, !dbg !1296

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 3, !dbg !1297
  %331 = load i64, i64* %330, align 8, !dbg !1297, !tbaa !227
  %332 = sext i32 %327 to i64, !dbg !1299
  %333 = udiv i64 %331, %332, !dbg !1300
  call void @llvm.dbg.value(metadata i64 %333, metadata !821, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1111
  br label %334, !dbg !1301

334:                                              ; preds = %329, %323
  %335 = phi i64 [ %333, %329 ], [ 0, %323 ], !dbg !1111
  call void @llvm.dbg.value(metadata i32 undef, metadata !821, metadata !DIExpression()), !dbg !1111
  %336 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 2, !dbg !1302
  %337 = load i64, i64* %336, align 8, !dbg !1302, !tbaa !224
  %338 = icmp eq i64 %337, 0, !dbg !1304
  br i1 %338, label %390, label %339, !dbg !1305

339:                                              ; preds = %334
  call void @llvm.dbg.value(metadata i64 %325, metadata !811, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1306
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1306
  %340 = load i8*, i8** %12, align 8, !dbg !1309, !tbaa !855
  %341 = call i8* @halide_string_to_string(i8* %324, i8* %340, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !1310
  store i8* %341, i8** %10, align 8, !dbg !1311, !tbaa !849
  %342 = load i64, i64* %336, align 8, !dbg !1312, !tbaa !224
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !1055, metadata !DIExpression()) #8, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %342, metadata !1058, metadata !DIExpression()) #8, !dbg !1313
  %343 = load i8*, i8** %12, align 8, !dbg !1315, !tbaa !855
  %344 = call i8* @halide_uint64_to_string(i8* %341, i8* %343, i64 %342, i32 1) #7, !dbg !1316
  store i8* %344, i8** %10, align 8, !dbg !1317, !tbaa !849
  %345 = load i8*, i8** %9, align 8, !dbg !1318, !tbaa !869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1148, metadata !DIExpression()), !dbg !1319
  %346 = ptrtoint i8* %344 to i64, !dbg !1321
  %347 = ptrtoint i8* %345 to i64, !dbg !1321
  %348 = sub i64 %346, %347, !dbg !1321
  %349 = icmp ult i64 %348, %325, !dbg !1322
  br i1 %349, label %350, label %359, !dbg !1323

350:                                              ; preds = %339, %350
  %351 = phi i8* [ %353, %350 ], [ %344, %339 ]
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1324
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1324
  %352 = load i8*, i8** %12, align 8, !dbg !1327, !tbaa !855
  %353 = call i8* @halide_string_to_string(i8* %351, i8* %352, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !1328
  store i8* %353, i8** %10, align 8, !dbg !1317, !tbaa !849
  %354 = load i8*, i8** %9, align 8, !dbg !1318, !tbaa !869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1148, metadata !DIExpression()), !dbg !1319
  %355 = ptrtoint i8* %353 to i64, !dbg !1321
  %356 = ptrtoint i8* %354 to i64, !dbg !1321
  %357 = sub i64 %355, %356, !dbg !1321
  %358 = icmp ult i64 %357, %325, !dbg !1322
  br i1 %358, label %350, label %359, !dbg !1323, !llvm.loop !1329

359:                                              ; preds = %350, %339
  %360 = phi i8* [ %344, %339 ], [ %353, %350 ], !dbg !1317
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1331
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1331
  %361 = load i8*, i8** %12, align 8, !dbg !1333, !tbaa !855
  %362 = call i8* @halide_string_to_string(i8* %360, i8* %361, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !1334
  store i8* %362, i8** %10, align 8, !dbg !1335, !tbaa !849
  %363 = load i32, i32* %326, align 8, !dbg !1336, !tbaa !230
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !971, metadata !DIExpression()) #8, !dbg !1337
  call void @llvm.dbg.value(metadata i32 %363, metadata !974, metadata !DIExpression()) #8, !dbg !1337
  %364 = load i8*, i8** %12, align 8, !dbg !1339, !tbaa !855
  %365 = sext i32 %363 to i64, !dbg !1340
  %366 = call i8* @halide_int64_to_string(i8* %362, i8* %364, i64 %365, i32 1) #7, !dbg !1341
  store i8* %366, i8** %10, align 8, !dbg !1342, !tbaa !849
  %367 = add nuw nsw i64 %325, 15, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %367, metadata !811, metadata !DIExpression()), !dbg !1111
  %368 = load i8*, i8** %9, align 8, !dbg !1344, !tbaa !869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1148, metadata !DIExpression()), !dbg !1345
  %369 = ptrtoint i8* %366 to i64, !dbg !1347
  %370 = ptrtoint i8* %368 to i64, !dbg !1347
  %371 = sub i64 %369, %370, !dbg !1347
  %372 = icmp ult i64 %371, %367, !dbg !1348
  br i1 %372, label %373, label %382, !dbg !1349

373:                                              ; preds = %359, %373
  %374 = phi i8* [ %376, %373 ], [ %366, %359 ]
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1350
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1350
  %375 = load i8*, i8** %12, align 8, !dbg !1353, !tbaa !855
  %376 = call i8* @halide_string_to_string(i8* %374, i8* %375, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !1354
  store i8* %376, i8** %10, align 8, !dbg !1355, !tbaa !849
  %377 = load i8*, i8** %9, align 8, !dbg !1344, !tbaa !869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1148, metadata !DIExpression()), !dbg !1345
  %378 = ptrtoint i8* %376 to i64, !dbg !1347
  %379 = ptrtoint i8* %377 to i64, !dbg !1347
  %380 = sub i64 %378, %379, !dbg !1347
  %381 = icmp ult i64 %380, %367, !dbg !1348
  br i1 %381, label %373, label %382, !dbg !1349, !llvm.loop !1356

382:                                              ; preds = %373, %359
  %383 = phi i8* [ %366, %359 ], [ %376, %373 ], !dbg !1344
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1358
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1358
  %384 = load i8*, i8** %12, align 8, !dbg !1360, !tbaa !855
  %385 = call i8* @halide_string_to_string(i8* %383, i8* %384, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !1361
  store i8* %385, i8** %10, align 8, !dbg !1362, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !971, metadata !DIExpression()) #8, !dbg !1363
  call void @llvm.dbg.value(metadata i32 undef, metadata !974, metadata !DIExpression()) #8, !dbg !1363
  %386 = load i8*, i8** %12, align 8, !dbg !1365, !tbaa !855
  %387 = shl i64 %335, 32, !dbg !1366
  %388 = ashr exact i64 %387, 32, !dbg !1366
  %389 = call i8* @halide_int64_to_string(i8* %385, i8* %386, i64 %388, i32 1) #7, !dbg !1367
  store i8* %389, i8** %10, align 8, !dbg !1368, !tbaa !849
  br label %390, !dbg !1369

390:                                              ; preds = %382, %334
  %391 = phi i8* [ %389, %382 ], [ %324, %334 ]
  %392 = getelementptr inbounds %struct.halide_profiler_func_stats, %struct.halide_profiler_func_stats* %177, i64 %172, i32 4, !dbg !1370
  %393 = load i64, i64* %392, align 8, !dbg !1370, !tbaa !233
  %394 = icmp eq i64 %393, 0, !dbg !1372
  br i1 %394, label %401, label %395, !dbg !1373

395:                                              ; preds = %390
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1374
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1374
  %396 = load i8*, i8** %12, align 8, !dbg !1377, !tbaa !855
  %397 = call i8* @halide_string_to_string(i8* %391, i8* %396, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !1378
  store i8* %397, i8** %10, align 8, !dbg !1379, !tbaa !849
  %398 = load i64, i64* %392, align 8, !dbg !1380, !tbaa !233
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !1055, metadata !DIExpression()) #8, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %398, metadata !1058, metadata !DIExpression()) #8, !dbg !1381
  %399 = load i8*, i8** %12, align 8, !dbg !1383, !tbaa !855
  %400 = call i8* @halide_uint64_to_string(i8* %397, i8* %399, i64 %398, i32 1) #7, !dbg !1384
  store i8* %400, i8** %10, align 8, !dbg !1385, !tbaa !849
  br label %401, !dbg !1386

401:                                              ; preds = %395, %390
  %402 = phi i8* [ %400, %395 ], [ %391, %390 ], !dbg !1387
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !925, metadata !DIExpression()) #8, !dbg !1389
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), metadata !928, metadata !DIExpression()) #8, !dbg !1389
  %403 = load i8*, i8** %12, align 8, !dbg !1390, !tbaa !855
  %404 = call i8* @halide_string_to_string(i8* %402, i8* %403, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !1391
  store i8* %404, i8** %10, align 8, !dbg !1392, !tbaa !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !1069, metadata !DIExpression()) #8, !dbg !1393
  %405 = load i8*, i8** %9, align 8, !dbg !1395, !tbaa !869
  %406 = icmp eq i8* %405, null, !dbg !1395
  br i1 %406, label %415, label %407, !dbg !1396

407:                                              ; preds = %401
  %408 = load i8*, i8** %7, align 8, !dbg !1397, !tbaa !836
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !878, metadata !DIExpression()) #8, !dbg !1398
  %409 = ptrtoint i8* %404 to i64, !dbg !1400
  %410 = ptrtoint i8* %405 to i64, !dbg !1400
  %411 = add i64 %409, 1, !dbg !1400
  %412 = sub i64 %411, %410, !dbg !1401
  %413 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %408, i8* nonnull %405, i64 %412) #7, !dbg !1402
  %414 = load i8*, i8** %9, align 8, !dbg !1403, !tbaa !869
  br label %415, !dbg !1404

415:                                              ; preds = %401, %407
  %416 = phi i8* [ %414, %407 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), %401 ], !dbg !1405
  call void @halide_print(i8* %0, i8* %416) #7, !dbg !1406
  br label %417, !dbg !1407

417:                                              ; preds = %180, %415
  %418 = add nuw nsw i64 %172, 1, !dbg !1408
  call void @llvm.dbg.value(metadata i64 %418, metadata !807, metadata !DIExpression()), !dbg !1107
  %419 = load i32, i32* %166, align 8, !dbg !1108, !tbaa !134
  %420 = sext i32 %419 to i64, !dbg !1109
  %421 = icmp slt i64 %418, %420, !dbg !1109
  br i1 %421, label %171, label %422, !dbg !1110, !llvm.loop !1409

422:                                              ; preds = %157, %417, %149, %165, %39
  %423 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %40, i64 0, i32 8, !dbg !1411
  %424 = bitcast i8** %423 to %struct.halide_profiler_pipeline_stats**, !dbg !1411
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* undef, metadata !791, metadata !DIExpression()), !dbg !859
  %425 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %424, align 8, !dbg !859, !tbaa !117
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %425, metadata !791, metadata !DIExpression()), !dbg !859
  %426 = icmp eq %struct.halide_profiler_pipeline_stats* %425, null, !dbg !860
  br i1 %426, label %16, label %39, !dbg !861, !llvm.loop !1412
}

; Function Attrs: nounwind
define weak dso_local void @halide_profiler_report(i8* %0) local_unnamed_addr #5 !dbg !1414 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1416, metadata !DIExpression()), !dbg !1419
  %2 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !1420
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %2, metadata !1417, metadata !DIExpression()), !dbg !1419
  %3 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %2, i64 0, i32 0, !dbg !1421
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !411, metadata !DIExpression()) #8, !dbg !1422
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !414, metadata !DIExpression()) #8, !dbg !1422
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %3, metadata !1418, metadata !DIExpression()), !dbg !1419
  tail call void @halide_mutex_lock(%struct.halide_mutex* %3) #7, !dbg !1424
  tail call void @halide_profiler_report_unlocked(i8* %0, %struct.halide_profiler_state* %2) #6, !dbg !1425
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !433, metadata !DIExpression()) #8, !dbg !1426
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %3) #7, !dbg !1428
  ret void, !dbg !1429
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* %0) local_unnamed_addr #1 !dbg !1430 {
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %0, metadata !1434, metadata !DIExpression()), !dbg !1437
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i64 0, i32 5, !dbg !1438
  %3 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %2, align 8, !dbg !1438, !tbaa !147
  %4 = icmp eq %struct.halide_profiler_pipeline_stats* %3, null, !dbg !1439
  br i1 %4, label %16, label %5, !dbg !1440

5:                                                ; preds = %1, %5
  %6 = phi %struct.halide_profiler_pipeline_stats* [ %14, %5 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata %struct.halide_profiler_pipeline_stats* %6, metadata !1435, metadata !DIExpression()), !dbg !1441
  %7 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %6, i64 0, i32 8, !dbg !1442
  %8 = bitcast i8** %7 to %struct.halide_profiler_pipeline_stats**, !dbg !1442
  %9 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %8, align 8, !dbg !1442, !tbaa !152
  store %struct.halide_profiler_pipeline_stats* %9, %struct.halide_profiler_pipeline_stats** %2, align 8, !dbg !1443, !tbaa !147
  %10 = getelementptr inbounds %struct.halide_profiler_pipeline_stats, %struct.halide_profiler_pipeline_stats* %6, i64 0, i32 7, !dbg !1444
  %11 = bitcast %struct.halide_profiler_func_stats** %10 to i8**, !dbg !1444
  %12 = load i8*, i8** %11, align 8, !dbg !1444, !tbaa !194
  tail call void @free(i8* %12) #7, !dbg !1445
  %13 = bitcast %struct.halide_profiler_pipeline_stats* %6 to i8*, !dbg !1446
  tail call void @free(i8* nonnull %13) #7, !dbg !1447
  %14 = load %struct.halide_profiler_pipeline_stats*, %struct.halide_profiler_pipeline_stats** %2, align 8, !dbg !1438, !tbaa !147
  %15 = icmp eq %struct.halide_profiler_pipeline_stats* %14, null, !dbg !1439
  br i1 %15, label %16, label %5, !dbg !1440, !llvm.loop !1448

16:                                               ; preds = %5, %1
  %17 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i64 0, i32 2, !dbg !1450
  store i32 0, i32* %17, align 4, !dbg !1451, !tbaa !156
  ret void, !dbg !1452
}

; Function Attrs: nounwind
define weak dso_local void @halide_profiler_reset() local_unnamed_addr #5 !dbg !1453 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !1457
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %1, metadata !1455, metadata !DIExpression()), !dbg !1458
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 0, !dbg !1459
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !411, metadata !DIExpression()) #8, !dbg !1460
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %2, metadata !414, metadata !DIExpression()) #8, !dbg !1460
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %2, metadata !1456, metadata !DIExpression()), !dbg !1458
  tail call void @halide_mutex_lock(%struct.halide_mutex* %2) #7, !dbg !1462
  tail call void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* %1) #6, !dbg !1463
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !433, metadata !DIExpression()) #8, !dbg !1464
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %2) #7, !dbg !1466
  ret void, !dbg !1467
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_profiler_shutdown() #1 !dbg !1468 {
  %1 = tail call %struct.halide_profiler_state* @halide_profiler_get_state() #6, !dbg !1471
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %1, metadata !1470, metadata !DIExpression()), !dbg !1472
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 7, !dbg !1473
  %3 = load %struct.halide_thread*, %struct.halide_thread** %2, align 8, !dbg !1473, !tbaa !460
  %4 = icmp eq %struct.halide_thread* %3, null, !dbg !1475
  br i1 %4, label %7, label %5, !dbg !1476

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %1, i64 0, i32 3, !dbg !1477
  store i32 -2, i32* %6, align 8, !dbg !1478, !tbaa !329
  tail call void @halide_join_thread(%struct.halide_thread* nonnull %3) #7, !dbg !1479
  store %struct.halide_thread* null, %struct.halide_thread** %2, align 8, !dbg !1480, !tbaa !460
  store i32 -1, i32* %6, align 8, !dbg !1481, !tbaa !329
  tail call void @halide_profiler_report_unlocked(i8* null, %struct.halide_profiler_state* nonnull %1) #6, !dbg !1482
  tail call void @halide_profiler_reset_unlocked(%struct.halide_profiler_state* nonnull %1) #6, !dbg !1483
  br label %7, !dbg !1484

7:                                                ; preds = %0, %5
  ret void, !dbg !1484
}

declare !dbg !1485 dso_local void @halide_join_thread(%struct.halide_thread*) local_unnamed_addr #4

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_profiler_pipeline_end(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1488 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1492, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i8* %1, metadata !1493, metadata !DIExpression()), !dbg !1494
  %3 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1495
  %4 = bitcast i8* %3 to i32*, !dbg !1495
  store i32 -1, i32* %4, align 8, !dbg !1496, !tbaa !329
  ret void, !dbg !1497
}

declare !dbg !1498 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #4

declare !dbg !1499 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #4

declare !dbg !1502 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #4

declare !dbg !1505 extern_weak dso_local i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #4

declare !dbg !1508 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #4

declare !dbg !1511 extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #4

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

!llvm.dbg.cu = !{!68}
!llvm.module.flags = !{!93, !94, !95}
!llvm.ident = !{!96}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "s", scope: !2, file: !3, line: 12, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "halide_profiler_get_state", scope: !3, file: !3, line: 11, type: !4, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !92)
!3 = !DIFile(filename: "src/runtime/profiler.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_profiler_state", file: !8, line: 1766, size: 384, flags: DIFlagTypePassByValue, elements: !9, identifier: "_ZTS21halide_profiler_state")
!8 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!9 = !{!10, !21, !23, !24, !25, !26, !60, !65}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !7, file: !8, line: 1770, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !8, line: 120, size: 64, flags: DIFlagTypePassByValue, elements: !12, identifier: "_ZTS12halide_mutex")
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !11, file: !8, line: 121, baseType: !14, size: 64)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !19)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !16, line: 61, baseType: !17)
!16 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
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
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_profiler_pipeline_stats", file: !8, line: 1721, size: 768, flags: DIFlagTypePassByValue, elements: !29, identifier: "_ZTS30halide_profiler_pipeline_stats")
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
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_profiler_func_stats", file: !8, line: 1693, size: 576, flags: DIFlagTypePassByValue, elements: !43, identifier: "_ZTS26halide_profiler_func_stats")
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
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_thread", file: !8, line: 312, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS13halide_thread")
!68 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !69, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !84, globals: !86, imports: !87, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!70 = !{!71, !75}
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 1799, baseType: !22, size: 32, elements: !72)
!72 = !{!73, !74}
!73 = !DIEnumerator(name: "halide_profiler_outside_of_halide", value: -1)
!74 = !DIEnumerator(name: "halide_profiler_please_stop", value: -2)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !8, line: 403, baseType: !76, size: 8, elements: !78, identifier: "_ZTS18halide_type_code_t")
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
!86 = !{!0}
!87 = !{!88}
!88 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !68, entity: !89, file: !16, line: 225)
!89 = !DINamespace(name: "Internal", scope: !90)
!90 = !DINamespace(name: "Runtime", scope: !91)
!91 = !DINamespace(name: "Halide", scope: null)
!92 = !{}
!93 = !{i32 7, !"Dwarf Version", i32 4}
!94 = !{i32 2, !"Debug Info Version", i32 3}
!95 = !{i32 1, !"wchar_size", i32 4}
!96 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!97 = !DILocation(line: 13, column: 5, scope: !2)
!98 = distinct !DISubprogram(name: "find_or_create_pipeline", linkageName: "_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy", scope: !89, file: !3, line: 21, type: !99, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !103)
!99 = !DISubroutineType(types: !100)
!100 = !{!27, !37, !22, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!103 = !{!104, !105, !106, !107, !108, !110, !111}
!104 = !DILocalVariable(name: "pipeline_name", arg: 1, scope: !98, file: !3, line: 21, type: !37)
!105 = !DILocalVariable(name: "num_funcs", arg: 2, scope: !98, file: !3, line: 21, type: !22)
!106 = !DILocalVariable(name: "func_names", arg: 3, scope: !98, file: !3, line: 21, type: !101)
!107 = !DILocalVariable(name: "s", scope: !98, file: !3, line: 22, type: !6)
!108 = !DILocalVariable(name: "p", scope: !109, file: !3, line: 24, type: !27)
!109 = distinct !DILexicalBlock(scope: !98, file: !3, line: 24, column: 5)
!110 = !DILocalVariable(name: "p", scope: !98, file: !3, line: 34, type: !27)
!111 = !DILocalVariable(name: "i", scope: !112, file: !3, line: 57, type: !22)
!112 = distinct !DILexicalBlock(scope: !98, file: !3, line: 57, column: 5)
!113 = !DILocation(line: 0, scope: !98)
!114 = !DILocation(line: 22, column: 32, scope: !98)
!115 = !DILocation(line: 24, column: 49, scope: !109)
!116 = !DILocation(line: 0, scope: !109)
!117 = !{!118, !118, i64 0}
!118 = !{!"any pointer", !119, i64 0}
!119 = !{!"omnipotent char", !120, i64 0}
!120 = !{!"Simple C++ TBAA"}
!121 = !DILocation(line: 24, column: 60, scope: !122)
!122 = distinct !DILexicalBlock(scope: !109, file: !3, line: 24, column: 5)
!123 = !DILocation(line: 24, column: 5, scope: !109)
!124 = !DILocation(line: 28, column: 16, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 28, column: 13)
!126 = distinct !DILexicalBlock(scope: !122, file: !3, line: 25, column: 59)
!127 = !{!128, !118, i64 48}
!128 = !{!"_ZTS30halide_profiler_pipeline_stats", !129, i64 0, !129, i64 8, !129, i64 16, !129, i64 24, !129, i64 32, !129, i64 40, !118, i64 48, !118, i64 56, !118, i64 64, !130, i64 72, !130, i64 76, !130, i64 80, !130, i64 84, !130, i64 88}
!129 = !{!"long long", !119, i64 0}
!130 = !{!"int", !119, i64 0}
!131 = !DILocation(line: 28, column: 21, scope: !125)
!132 = !DILocation(line: 28, column: 38, scope: !125)
!133 = !DILocation(line: 29, column: 16, scope: !125)
!134 = !{!128, !130, i64 72}
!135 = !DILocation(line: 29, column: 26, scope: !125)
!136 = !DILocation(line: 28, column: 13, scope: !126)
!137 = !DILocation(line: 25, column: 52, scope: !122)
!138 = distinct !{!138, !123, !139, !140}
!139 = !DILocation(line: 32, column: 5, scope: !109)
!140 = !{!"llvm.loop.mustprogress"}
!141 = !DILocation(line: 35, column: 43, scope: !98)
!142 = !DILocation(line: 35, column: 9, scope: !98)
!143 = !DILocation(line: 36, column: 10, scope: !144)
!144 = distinct !DILexicalBlock(scope: !98, file: !3, line: 36, column: 9)
!145 = !DILocation(line: 36, column: 9, scope: !98)
!146 = !DILocation(line: 39, column: 18, scope: !98)
!147 = !{!148, !118, i64 24}
!148 = !{!"_ZTS21halide_profiler_state", !149, i64 0, !130, i64 8, !130, i64 12, !130, i64 16, !130, i64 20, !118, i64 24, !118, i64 32, !118, i64 40}
!149 = !{!"_ZTS12halide_mutex", !119, i64 0}
!150 = !DILocation(line: 39, column: 8, scope: !98)
!151 = !DILocation(line: 39, column: 13, scope: !98)
!152 = !{!128, !118, i64 64}
!153 = !DILocation(line: 40, column: 8, scope: !98)
!154 = !DILocation(line: 40, column: 13, scope: !98)
!155 = !DILocation(line: 41, column: 27, scope: !98)
!156 = !{!148, !130, i64 12}
!157 = !DILocation(line: 41, column: 8, scope: !98)
!158 = !DILocation(line: 41, column: 22, scope: !98)
!159 = !{!128, !130, i64 76}
!160 = !DILocation(line: 42, column: 8, scope: !98)
!161 = !DILocation(line: 42, column: 18, scope: !98)
!162 = !DILocation(line: 43, column: 8, scope: !98)
!163 = !DILocation(line: 43, column: 13, scope: !98)
!164 = !{!128, !130, i64 80}
!165 = !DILocation(line: 44, column: 8, scope: !98)
!166 = !DILocation(line: 44, column: 13, scope: !98)
!167 = !{!128, !129, i64 0}
!168 = !DILocation(line: 45, column: 8, scope: !98)
!169 = !DILocation(line: 45, column: 16, scope: !98)
!170 = !{!128, !130, i64 84}
!171 = !DILocation(line: 46, column: 8, scope: !98)
!172 = !DILocation(line: 46, column: 23, scope: !98)
!173 = !{!128, !129, i64 8}
!174 = !DILocation(line: 47, column: 8, scope: !98)
!175 = !DILocation(line: 47, column: 20, scope: !98)
!176 = !{!128, !129, i64 16}
!177 = !DILocation(line: 48, column: 8, scope: !98)
!178 = !DILocation(line: 48, column: 21, scope: !98)
!179 = !{!128, !129, i64 24}
!180 = !DILocation(line: 49, column: 8, scope: !98)
!181 = !DILocation(line: 49, column: 19, scope: !98)
!182 = !{!128, !130, i64 88}
!183 = !DILocation(line: 50, column: 8, scope: !98)
!184 = !DILocation(line: 50, column: 33, scope: !98)
!185 = !{!128, !129, i64 32}
!186 = !DILocation(line: 51, column: 8, scope: !98)
!187 = !DILocation(line: 51, column: 35, scope: !98)
!188 = !{!128, !129, i64 40}
!189 = !DILocation(line: 52, column: 53, scope: !98)
!190 = !DILocation(line: 52, column: 63, scope: !98)
!191 = !DILocation(line: 52, column: 46, scope: !98)
!192 = !DILocation(line: 52, column: 8, scope: !98)
!193 = !DILocation(line: 52, column: 14, scope: !98)
!194 = !{!128, !118, i64 56}
!195 = !DILocation(line: 53, column: 10, scope: !196)
!196 = distinct !DILexicalBlock(scope: !98, file: !3, line: 53, column: 9)
!197 = !DILocation(line: 53, column: 9, scope: !98)
!198 = !DILocation(line: 0, scope: !112)
!199 = !DILocation(line: 57, column: 23, scope: !200)
!200 = distinct !DILexicalBlock(scope: !112, file: !3, line: 57, column: 5)
!201 = !DILocation(line: 57, column: 5, scope: !112)
!202 = !DILocation(line: 54, column: 9, scope: !203)
!203 = distinct !DILexicalBlock(scope: !196, file: !3, line: 53, column: 20)
!204 = !DILocation(line: 55, column: 9, scope: !203)
!205 = !DILocation(line: 68, column: 22, scope: !98)
!206 = !DILocation(line: 69, column: 18, scope: !98)
!207 = !DILocation(line: 70, column: 5, scope: !98)
!208 = !DILocation(line: 58, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !200, file: !3, line: 57, column: 41)
!210 = !DILocation(line: 58, column: 26, scope: !209)
!211 = !{!212, !129, i64 0}
!212 = !{!"_ZTS26halide_profiler_func_stats", !129, i64 0, !129, i64 8, !129, i64 16, !129, i64 24, !129, i64 32, !129, i64 40, !129, i64 48, !118, i64 56, !130, i64 64}
!213 = !DILocation(line: 59, column: 43, scope: !209)
!214 = !{!129, !129, i64 0}
!215 = !DILocation(line: 59, column: 28, scope: !209)
!216 = !DILocation(line: 59, column: 21, scope: !209)
!217 = !DILocation(line: 59, column: 26, scope: !209)
!218 = !{!212, !118, i64 56}
!219 = !DILocation(line: 60, column: 21, scope: !209)
!220 = !DILocation(line: 60, column: 36, scope: !209)
!221 = !{!212, !129, i64 8}
!222 = !DILocation(line: 61, column: 21, scope: !209)
!223 = !DILocation(line: 61, column: 33, scope: !209)
!224 = !{!212, !129, i64 16}
!225 = !DILocation(line: 62, column: 21, scope: !209)
!226 = !DILocation(line: 62, column: 34, scope: !209)
!227 = !{!212, !129, i64 24}
!228 = !DILocation(line: 63, column: 21, scope: !209)
!229 = !DILocation(line: 63, column: 32, scope: !209)
!230 = !{!212, !130, i64 64}
!231 = !DILocation(line: 64, column: 21, scope: !209)
!232 = !DILocation(line: 64, column: 32, scope: !209)
!233 = !{!212, !129, i64 32}
!234 = !DILocation(line: 65, column: 21, scope: !209)
!235 = !DILocation(line: 65, column: 46, scope: !209)
!236 = !{!212, !129, i64 40}
!237 = !DILocation(line: 66, column: 21, scope: !209)
!238 = !DILocation(line: 66, column: 48, scope: !209)
!239 = !{!212, !129, i64 48}
!240 = !DILocation(line: 57, column: 37, scope: !200)
!241 = distinct !{!241, !201, !242, !140}
!242 = !DILocation(line: 67, column: 5, scope: !112)
!243 = !DILocation(line: 71, column: 1, scope: !98)
!244 = !DISubprogram(name: "malloc", scope: !16, file: !16, line: 87, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!245 = !DISubroutineType(types: !246)
!246 = !{!54, !247}
!247 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!248 = !DISubprogram(name: "free", scope: !16, file: !16, line: 86, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !54}
!251 = distinct !DISubprogram(name: "bill_func", linkageName: "_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi", scope: !89, file: !3, line: 73, type: !252, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !6, !22, !17, !22}
!254 = !{!255, !256, !257, !258, !259, !260, !262}
!255 = !DILocalVariable(name: "s", arg: 1, scope: !251, file: !3, line: 73, type: !6)
!256 = !DILocalVariable(name: "func_id", arg: 2, scope: !251, file: !3, line: 73, type: !22)
!257 = !DILocalVariable(name: "time", arg: 3, scope: !251, file: !3, line: 73, type: !17)
!258 = !DILocalVariable(name: "active_threads", arg: 4, scope: !251, file: !3, line: 73, type: !22)
!259 = !DILocalVariable(name: "p_prev", scope: !251, file: !3, line: 74, type: !27)
!260 = !DILocalVariable(name: "p", scope: !261, file: !3, line: 75, type: !27)
!261 = distinct !DILexicalBlock(scope: !251, file: !3, line: 75, column: 5)
!262 = !DILocalVariable(name: "f", scope: !263, file: !3, line: 84, type: !41)
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
!309 = distinct !{!309, !271, !310, !140}
!310 = !DILocation(line: 95, column: 5, scope: !261)
!311 = !DILocation(line: 97, column: 1, scope: !251)
!312 = distinct !DISubprogram(name: "sampling_profiler_thread", linkageName: "_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv", scope: !89, file: !3, line: 99, type: !249, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !313)
!313 = !{!314, !315, !316, !318, !319, !321, !322, !323}
!314 = !DILocalVariable(arg: 1, scope: !312, file: !3, line: 99, type: !54)
!315 = !DILocalVariable(name: "s", scope: !312, file: !3, line: 100, type: !6)
!316 = !DILocalVariable(name: "t1", scope: !317, file: !3, line: 107, type: !17)
!317 = distinct !DILexicalBlock(scope: !312, file: !3, line: 105, column: 60)
!318 = !DILocalVariable(name: "t", scope: !317, file: !3, line: 108, type: !17)
!319 = !DILocalVariable(name: "func", scope: !320, file: !3, line: 110, type: !22)
!320 = distinct !DILexicalBlock(scope: !317, file: !3, line: 109, column: 22)
!321 = !DILocalVariable(name: "active_threads", scope: !320, file: !3, line: 110, type: !22)
!322 = !DILocalVariable(name: "t_now", scope: !320, file: !3, line: 119, type: !17)
!323 = !DILocalVariable(name: "sleep_ms", scope: !320, file: !3, line: 130, type: !22)
!324 = !DILocation(line: 0, scope: !312)
!325 = !DILocation(line: 100, column: 32, scope: !312)
!326 = !DILocation(line: 103, column: 27, scope: !312)
!327 = !DILocation(line: 103, column: 5, scope: !312)
!328 = !DILocation(line: 105, column: 15, scope: !312)
!329 = !{!148, !130, i64 16}
!330 = !DILocation(line: 105, column: 28, scope: !312)
!331 = !DILocation(line: 105, column: 5, scope: !312)
!332 = !DILocation(line: 0, scope: !317)
!333 = !DILocation(line: 134, column: 9, scope: !317)
!334 = distinct !{!334, !331, !335, !140}
!335 = !DILocation(line: 135, column: 5, scope: !312)
!336 = !DILocation(line: 107, column: 23, scope: !317)
!337 = !DILocation(line: 109, column: 9, scope: !317)
!338 = !DILocation(line: 108, column: 18, scope: !317)
!339 = !DILocation(line: 110, column: 13, scope: !320)
!340 = !DILocation(line: 111, column: 20, scope: !341)
!341 = distinct !DILexicalBlock(scope: !320, file: !3, line: 111, column: 17)
!342 = !{!148, !118, i64 32}
!343 = !DILocation(line: 111, column: 17, scope: !341)
!344 = !DILocation(line: 111, column: 17, scope: !320)
!345 = !DILocation(line: 0, scope: !320)
!346 = !DILocation(line: 114, column: 17, scope: !347)
!347 = distinct !DILexicalBlock(scope: !341, file: !3, line: 111, column: 47)
!348 = !DILocation(line: 115, column: 13, scope: !347)
!349 = !DILocation(line: 116, column: 27, scope: !350)
!350 = distinct !DILexicalBlock(scope: !341, file: !3, line: 115, column: 20)
!351 = !DILocation(line: 116, column: 22, scope: !350)
!352 = !{!130, !130, i64 0}
!353 = !DILocation(line: 117, column: 37, scope: !350)
!354 = !{!148, !130, i64 20}
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
!370 = !{!148, !130, i64 8}
!371 = !DILocation(line: 131, column: 13, scope: !320)
!372 = !DILocation(line: 132, column: 13, scope: !320)
!373 = !DILocation(line: 133, column: 13, scope: !320)
!374 = !DILocation(line: 137, column: 5, scope: !312)
!375 = !DILocation(line: 138, column: 1, scope: !312)
!376 = !DISubprogram(name: "halide_mutex_lock", scope: !8, file: !8, line: 133, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!380 = !DISubprogram(name: "halide_current_time_ns", scope: !16, file: !16, line: 136, type: !381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!381 = !DISubroutineType(types: !382)
!382 = !{!383, !54}
!383 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!384 = !DISubprogram(name: "halide_mutex_unlock", scope: !8, file: !8, line: 134, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!385 = !DISubprogram(name: "halide_sleep_ms", scope: !16, file: !16, line: 137, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !54, !22}
!388 = distinct !DISubprogram(name: "halide_profiler_get_pipeline_state", scope: !3, file: !3, line: 162, type: !389, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{!27, !37}
!391 = !{!392, !393, !394, !406}
!392 = !DILocalVariable(name: "pipeline_name", arg: 1, scope: !388, file: !3, line: 162, type: !37)
!393 = !DILocalVariable(name: "s", scope: !388, file: !3, line: 163, type: !6)
!394 = !DILocalVariable(name: "lock", scope: !388, file: !3, line: 165, type: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !89, file: !396, line: 11, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !397, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!396 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!397 = !{!398, !399, !403}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !395, file: !396, line: 12, baseType: !379, size: 64)
!399 = !DISubprogram(name: "ScopedMutexLock", scope: !395, file: !396, line: 14, type: !400, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402, !379}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!403 = !DISubprogram(name: "~ScopedMutexLock", scope: !395, file: !396, line: 19, type: !404, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !402}
!406 = !DILocalVariable(name: "p", scope: !407, file: !3, line: 167, type: !27)
!407 = distinct !DILexicalBlock(scope: !388, file: !3, line: 167, column: 5)
!408 = !DILocation(line: 0, scope: !388)
!409 = !DILocation(line: 163, column: 32, scope: !388)
!410 = !DILocation(line: 165, column: 30, scope: !388)
!411 = !DILocalVariable(name: "this", arg: 1, scope: !412, type: !415, flags: DIFlagArtificial | DIFlagObjectPointer)
!412 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !395, file: !396, line: 14, type: !400, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !399, retainedNodes: !413)
!413 = !{!411, !414}
!414 = !DILocalVariable(name: "mutex", arg: 2, scope: !412, file: !396, line: 14, type: !379)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
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
!431 = distinct !{!431, !424, !432, !140}
!432 = !DILocation(line: 174, column: 5, scope: !407)
!433 = !DILocalVariable(name: "this", arg: 1, scope: !434, type: !415, flags: DIFlagArtificial | DIFlagObjectPointer)
!434 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !395, file: !396, line: 19, type: !404, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !403, retainedNodes: !435)
!435 = !{!433}
!436 = !DILocation(line: 0, scope: !434, inlinedAt: !437)
!437 = distinct !DILocation(line: 176, column: 1, scope: !388)
!438 = !DILocation(line: 20, column: 9, scope: !439, inlinedAt: !437)
!439 = distinct !DILexicalBlock(scope: !434, file: !396, line: 19, column: 38)
!440 = !DILocation(line: 176, column: 1, scope: !388)
!441 = distinct !DISubprogram(name: "halide_profiler_pipeline_start", scope: !3, file: !3, line: 179, type: !442, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{!22, !54, !37, !22, !101}
!444 = !{!445, !446, !447, !448, !449, !450, !451}
!445 = !DILocalVariable(name: "user_context", arg: 1, scope: !441, file: !3, line: 179, type: !54)
!446 = !DILocalVariable(name: "pipeline_name", arg: 2, scope: !441, file: !3, line: 180, type: !37)
!447 = !DILocalVariable(name: "num_funcs", arg: 3, scope: !441, file: !3, line: 181, type: !22)
!448 = !DILocalVariable(name: "func_names", arg: 4, scope: !441, file: !3, line: 182, type: !101)
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
!460 = !{!148, !118, i64 40}
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
!483 = !DISubprogram(name: "halide_start_clock", scope: !16, file: !16, line: 135, type: !484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!484 = !DISubroutineType(types: !485)
!485 = !{!22, !54}
!486 = !DISubprogram(name: "halide_spawn_thread", scope: !8, file: !8, line: 317, type: !487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!487 = !DISubroutineType(types: !488)
!488 = !{!66, !489, !54}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!490 = !DISubprogram(name: "halide_error_out_of_memory", scope: !8, file: !8, line: 1227, type: !484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!491 = distinct !DISubprogram(name: "halide_profiler_stack_peak_update", scope: !3, file: !3, line: 203, type: !492, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !495)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !54, !54, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!495 = !{!496, !497, !498, !499, !500}
!496 = !DILocalVariable(name: "user_context", arg: 1, scope: !491, file: !3, line: 203, type: !54)
!497 = !DILocalVariable(name: "pipeline_state", arg: 2, scope: !491, file: !3, line: 204, type: !54)
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
!524 = distinct !DISubprogram(name: "sync_compare_max_and_swap<unsigned long long>", linkageName: "_ZN12_GLOBAL__N_125sync_compare_max_and_swapIyEEvPT_S1_", scope: !525, file: !3, line: 147, type: !526, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, templateParams: !534, retainedNodes: !529)
!525 = !DINamespace(scope: null)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !528, !18}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!529 = !{!523, !530, !531, !532}
!530 = !DILocalVariable(name: "val", arg: 2, scope: !524, file: !3, line: 147, type: !18)
!531 = !DILocalVariable(name: "old_val", scope: !524, file: !3, line: 148, type: !18)
!532 = !DILocalVariable(name: "temp", scope: !533, file: !3, line: 150, type: !18)
!533 = distinct !DILexicalBlock(scope: !524, file: !3, line: 149, column: 27)
!534 = !{!535}
!535 = !DITemplateTypeParameter(name: "T", type: !18)
!536 = !DILocation(line: 0, scope: !524, inlinedAt: !537)
!537 = distinct !DILocation(line: 218, column: 13, scope: !521)
!538 = !DILocation(line: 148, column: 17, scope: !524, inlinedAt: !537)
!539 = !DILocation(line: 149, column: 5, scope: !524, inlinedAt: !537)
!540 = !DILocation(line: 149, column: 16, scope: !524, inlinedAt: !537)
!541 = !DILocation(line: 0, scope: !533, inlinedAt: !537)
!542 = !DILocation(line: 151, column: 19, scope: !533, inlinedAt: !537)
!543 = !DILocation(line: 152, column: 18, scope: !544, inlinedAt: !537)
!544 = distinct !DILexicalBlock(scope: !533, file: !3, line: 152, column: 13)
!545 = distinct !{!545, !539, !546, !140}
!546 = !DILocation(line: 155, column: 5, scope: !524, inlinedAt: !537)
!547 = !DILocation(line: 216, column: 45, scope: !511)
!548 = distinct !{!548, !513, !549, !140}
!549 = !DILocation(line: 220, column: 5, scope: !501)
!550 = !DISubprogram(name: "halide_print", scope: !8, file: !8, line: 97, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !54, !37}
!553 = !DISubprogram(name: "abort", scope: !16, file: !16, line: 108, type: !554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!554 = !DISubroutineType(types: !555)
!555 = !{null}
!556 = distinct !DISubprogram(name: "halide_profiler_memory_allocate", scope: !3, file: !3, line: 223, type: !557, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !54, !54, !22, !17}
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567}
!560 = !DILocalVariable(name: "user_context", arg: 1, scope: !556, file: !3, line: 223, type: !54)
!561 = !DILocalVariable(name: "pipeline_state", arg: 2, scope: !556, file: !3, line: 224, type: !54)
!562 = !DILocalVariable(name: "func_id", arg: 3, scope: !556, file: !3, line: 225, type: !22)
!563 = !DILocalVariable(name: "incr", arg: 4, scope: !556, file: !3, line: 226, type: !17)
!564 = !DILocalVariable(name: "p_stats", scope: !556, file: !3, line: 233, type: !27)
!565 = !DILocalVariable(name: "f_stats", scope: !556, file: !3, line: 238, type: !41)
!566 = !DILocalVariable(name: "p_mem_current", scope: !556, file: !3, line: 249, type: !17)
!567 = !DILocalVariable(name: "f_mem_current", scope: !556, file: !3, line: 255, type: !17)
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
!591 = !DILocation(line: 238, column: 44, scope: !556)
!592 = !DILocation(line: 247, column: 36, scope: !556)
!593 = !DILocation(line: 247, column: 5, scope: !556)
!594 = !DILocation(line: 248, column: 36, scope: !556)
!595 = !DILocation(line: 248, column: 5, scope: !556)
!596 = !DILocation(line: 249, column: 61, scope: !556)
!597 = !DILocation(line: 249, column: 30, scope: !556)
!598 = !DILocation(line: 250, column: 41, scope: !556)
!599 = !DILocation(line: 0, scope: !524, inlinedAt: !600)
!600 = distinct !DILocation(line: 250, column: 5, scope: !556)
!601 = !DILocation(line: 148, column: 17, scope: !524, inlinedAt: !600)
!602 = !DILocation(line: 149, column: 5, scope: !524, inlinedAt: !600)
!603 = !DILocation(line: 149, column: 16, scope: !524, inlinedAt: !600)
!604 = !DILocation(line: 0, scope: !533, inlinedAt: !600)
!605 = !DILocation(line: 151, column: 19, scope: !533, inlinedAt: !600)
!606 = !DILocation(line: 152, column: 18, scope: !544, inlinedAt: !600)
!607 = distinct !{!607, !602, !608, !140}
!608 = !DILocation(line: 155, column: 5, scope: !524, inlinedAt: !600)
!609 = !DILocation(line: 253, column: 36, scope: !556)
!610 = !DILocation(line: 253, column: 5, scope: !556)
!611 = !DILocation(line: 254, column: 36, scope: !556)
!612 = !DILocation(line: 254, column: 5, scope: !556)
!613 = !DILocation(line: 255, column: 61, scope: !556)
!614 = !DILocation(line: 255, column: 30, scope: !556)
!615 = !DILocation(line: 256, column: 41, scope: !556)
!616 = !DILocation(line: 0, scope: !524, inlinedAt: !617)
!617 = distinct !DILocation(line: 256, column: 5, scope: !556)
!618 = !DILocation(line: 148, column: 17, scope: !524, inlinedAt: !617)
!619 = !DILocation(line: 149, column: 5, scope: !524, inlinedAt: !617)
!620 = !DILocation(line: 149, column: 16, scope: !524, inlinedAt: !617)
!621 = !DILocation(line: 0, scope: !533, inlinedAt: !617)
!622 = !DILocation(line: 151, column: 19, scope: !533, inlinedAt: !617)
!623 = !DILocation(line: 152, column: 18, scope: !544, inlinedAt: !617)
!624 = distinct !{!624, !619, !625, !140}
!625 = !DILocation(line: 155, column: 5, scope: !524, inlinedAt: !617)
!626 = !DILocation(line: 257, column: 1, scope: !556)
!627 = distinct !DISubprogram(name: "halide_profiler_memory_free", scope: !3, file: !3, line: 259, type: !557, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !628)
!628 = !{!629, !630, !631, !632, !633, !634}
!629 = !DILocalVariable(name: "user_context", arg: 1, scope: !627, file: !3, line: 259, type: !54)
!630 = !DILocalVariable(name: "pipeline_state", arg: 2, scope: !627, file: !3, line: 260, type: !54)
!631 = !DILocalVariable(name: "func_id", arg: 3, scope: !627, file: !3, line: 261, type: !22)
!632 = !DILocalVariable(name: "decr", arg: 4, scope: !627, file: !3, line: 262, type: !17)
!633 = !DILocalVariable(name: "p_stats", scope: !627, file: !3, line: 269, type: !27)
!634 = !DILocalVariable(name: "f_stats", scope: !627, file: !3, line: 274, type: !41)
!635 = !DILocation(line: 0, scope: !627)
!636 = !DILocation(line: 265, column: 14, scope: !637)
!637 = distinct !DILexicalBlock(scope: !627, file: !3, line: 265, column: 9)
!638 = !DILocation(line: 265, column: 9, scope: !627)
!639 = !DILocation(line: 270, column: 5, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !3, line: 270, column: 5)
!641 = distinct !DILexicalBlock(scope: !627, file: !3, line: 270, column: 5)
!642 = !DILocation(line: 270, column: 5, scope: !641)
!643 = !DILocation(line: 270, column: 5, scope: !644)
!644 = distinct !DILexicalBlock(scope: !640, file: !3, line: 270, column: 5)
!645 = !DILocation(line: 271, column: 5, scope: !646)
!646 = distinct !DILexicalBlock(scope: !647, file: !3, line: 271, column: 5)
!647 = distinct !DILexicalBlock(scope: !627, file: !3, line: 271, column: 5)
!648 = !DILocation(line: 271, column: 5, scope: !647)
!649 = !DILocation(line: 271, column: 5, scope: !650)
!650 = distinct !DILexicalBlock(scope: !646, file: !3, line: 271, column: 5)
!651 = !DILocation(line: 272, column: 5, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 272, column: 5)
!653 = distinct !DILexicalBlock(scope: !627, file: !3, line: 272, column: 5)
!654 = !DILocation(line: 272, column: 5, scope: !653)
!655 = !DILocation(line: 272, column: 5, scope: !656)
!656 = distinct !DILexicalBlock(scope: !652, file: !3, line: 272, column: 5)
!657 = !DILocation(line: 274, column: 53, scope: !627)
!658 = !DILocation(line: 274, column: 44, scope: !627)
!659 = !DILocation(line: 283, column: 36, scope: !627)
!660 = !DILocation(line: 283, column: 5, scope: !627)
!661 = !DILocation(line: 286, column: 36, scope: !627)
!662 = !DILocation(line: 286, column: 5, scope: !627)
!663 = !DILocation(line: 287, column: 1, scope: !627)
!664 = distinct !DISubprogram(name: "halide_profiler_report_unlocked", scope: !3, file: !3, line: 289, type: !665, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !667)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !54, !6}
!667 = !{!668, !669, !670, !674, !791, !793, !796, !797, !798, !799, !800, !804, !807, !811, !815, !816, !817, !818, !821}
!668 = !DILocalVariable(name: "user_context", arg: 1, scope: !664, file: !3, line: 289, type: !54)
!669 = !DILocalVariable(name: "s", arg: 2, scope: !664, file: !3, line: 289, type: !6)
!670 = !DILocalVariable(name: "line_buf", scope: !664, file: !3, line: 291, type: !671)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8192, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 1024)
!674 = !DILocalVariable(name: "sstr", scope: !664, file: !3, line: 292, type: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<2, 1024>", scope: !677, file: !676, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !678, templateParams: !788)
!676 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!677 = !DINamespace(scope: !89)
!678 = !{!679, !680, !681, !682, !683, !685, !687, !691, !695, !699, !703, !706, !711, !715, !719, !724, !730, !763, !770, !773, !776, !781, !782, !785, !786, !787}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !675, file: !676, line: 32, baseType: !85, size: 64, flags: DIFlagPublic)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !675, file: !676, line: 32, baseType: !85, size: 64, offset: 64, flags: DIFlagPublic)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !675, file: !676, line: 32, baseType: !85, size: 64, offset: 128, flags: DIFlagPublic)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !675, file: !676, line: 33, baseType: !54, size: 64, offset: 192, flags: DIFlagPublic)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !675, file: !676, line: 34, baseType: !684, size: 8, offset: 256, flags: DIFlagPublic)
!684 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !675, file: !676, line: 35, baseType: !686, size: 8, offset: 264, flags: DIFlagPublic)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8, elements: !19)
!687 = !DISubprogram(name: "Printer", scope: !675, file: !676, line: 37, type: !688, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !690, !54, !85}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!691 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEPKc", scope: !675, file: !676, line: 57, type: !692, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!692 = !DISubroutineType(types: !693)
!693 = !{!694, !690, !37}
!694 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !675, size: 64)
!695 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEx", scope: !675, file: !676, line: 67, type: !696, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!696 = !DISubroutineType(types: !697)
!697 = !{!694, !690, !698}
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !16, line: 9, baseType: !383)
!699 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEi", scope: !675, file: !676, line: 72, type: !700, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!700 = !DISubroutineType(types: !701)
!701 = !{!694, !690, !702}
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !16, line: 11, baseType: !22)
!703 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEy", scope: !675, file: !676, line: 77, type: !704, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!704 = !DISubroutineType(types: !705)
!705 = !{!694, !690, !17}
!706 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEj", scope: !675, file: !676, line: 82, type: !707, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!707 = !DISubroutineType(types: !708)
!708 = !{!694, !690, !709}
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !16, line: 12, baseType: !710)
!710 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!711 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEd", scope: !675, file: !676, line: 87, type: !712, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = !DISubroutineType(types: !713)
!713 = !{!694, !690, !714}
!714 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!715 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEf", scope: !675, file: !676, line: 92, type: !716, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!716 = !DISubroutineType(types: !717)
!717 = !{!694, !690, !718}
!718 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!719 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEPKv", scope: !675, file: !676, line: 97, type: !720, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!720 = !DISubroutineType(types: !721)
!721 = !{!694, !690, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!724 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE23write_float16_from_bitsEt", scope: !675, file: !676, line: 102, type: !725, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!725 = !DISubroutineType(types: !726)
!726 = !{!694, !690, !727}
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !16, line: 14, baseType: !729)
!729 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!730 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsERK13halide_type_t", scope: !675, file: !676, line: 108, type: !731, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!731 = !DISubroutineType(types: !732)
!732 = !{!694, !690, !733}
!733 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !8, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !736, identifier: "_ZTS13halide_type_t")
!736 = !{!737, !739, !740, !741, !745, !748, !752, !755, !756, !757, !760}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !735, file: !8, line: 434, baseType: !738, size: 8, align: 8)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !8, line: 413, baseType: !75)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !735, file: !8, line: 442, baseType: !76, size: 8, align: 8, offset: 8)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !735, file: !8, line: 446, baseType: !728, size: 16, align: 16, offset: 16)
!741 = !DISubprogram(name: "halide_type_t", scope: !735, file: !8, line: 453, type: !742, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !744, !738, !76, !728}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!745 = !DISubprogram(name: "halide_type_t", scope: !735, file: !8, line: 459, type: !746, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !744}
!748 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !735, file: !8, line: 463, type: !749, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!749 = !DISubroutineType(types: !750)
!750 = !{!735, !751, !728}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!752 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !735, file: !8, line: 468, type: !753, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!753 = !DISubroutineType(types: !754)
!754 = !{!684, !751, !733}
!755 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !735, file: !8, line: 472, type: !753, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!756 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !735, file: !8, line: 476, type: !753, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!757 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !735, file: !8, line: 481, type: !758, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!758 = !DISubroutineType(types: !759)
!759 = !{!22, !751}
!760 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !735, file: !8, line: 485, type: !761, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!761 = !DISubroutineType(types: !762)
!762 = !{!709, !751}
!763 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsERK15halide_buffer_t", scope: !675, file: !676, line: 113, type: !764, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!764 = !DISubroutineType(types: !765)
!765 = !{!694, !690, !766}
!766 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !8, line: 1550, baseType: !769)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !8, line: 1423, size: 448, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!770 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE3strEv", scope: !675, file: !676, line: 119, type: !771, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!771 = !DISubroutineType(types: !772)
!772 = !{!37, !690}
!773 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5clearEv", scope: !675, file: !676, line: 131, type: !774, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !690}
!776 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE4sizeEv", scope: !675, file: !676, line: 139, type: !777, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!777 = !DISubroutineType(types: !778)
!778 = !{!17, !779}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!781 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE8capacityEv", scope: !675, file: !676, line: 143, type: !777, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!782 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5eraseEi", scope: !675, file: !676, line: 148, type: !783, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !690, !22}
!785 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE16allocation_errorEv", scope: !675, file: !676, line: 158, type: !771, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!786 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE28msan_annotate_is_initializedEv", scope: !675, file: !676, line: 162, type: !774, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!787 = !DISubprogram(name: "~Printer", scope: !675, file: !676, line: 166, type: !774, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!788 = !{!789, !790}
!789 = !DITemplateValueParameter(name: "type", type: !22, value: i32 2)
!790 = !DITemplateValueParameter(name: "length", type: !18, value: i64 1024)
!791 = !DILocalVariable(name: "p", scope: !792, file: !3, line: 294, type: !27)
!792 = distinct !DILexicalBlock(scope: !664, file: !3, line: 294, column: 5)
!793 = !DILocalVariable(name: "t", scope: !794, file: !3, line: 296, type: !718)
!794 = distinct !DILexicalBlock(scope: !795, file: !3, line: 295, column: 59)
!795 = distinct !DILexicalBlock(scope: !792, file: !3, line: 294, column: 5)
!796 = !DILocalVariable(name: "alloc_avg", scope: !794, file: !3, line: 301, type: !22)
!797 = !DILocalVariable(name: "serial", scope: !794, file: !3, line: 305, type: !684)
!798 = !DILocalVariable(name: "threads", scope: !794, file: !3, line: 306, type: !718)
!799 = !DILocalVariable(name: "print_f_states", scope: !794, file: !3, line: 319, type: !684)
!800 = !DILocalVariable(name: "i", scope: !801, file: !3, line: 321, type: !22)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 321, column: 13)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 320, column: 30)
!803 = distinct !DILexicalBlock(scope: !794, file: !3, line: 320, column: 13)
!804 = !DILocalVariable(name: "fs", scope: !805, file: !3, line: 322, type: !41)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 321, column: 52)
!806 = distinct !DILexicalBlock(scope: !801, file: !3, line: 321, column: 13)
!807 = !DILocalVariable(name: "i", scope: !808, file: !3, line: 331, type: !22)
!808 = distinct !DILexicalBlock(scope: !809, file: !3, line: 331, column: 13)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 330, column: 29)
!810 = distinct !DILexicalBlock(scope: !794, file: !3, line: 330, column: 13)
!811 = !DILocalVariable(name: "cursor", scope: !812, file: !3, line: 332, type: !814)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 331, column: 52)
!813 = distinct !DILexicalBlock(scope: !808, file: !3, line: 331, column: 13)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 27, baseType: !247)
!815 = !DILocalVariable(name: "fs", scope: !812, file: !3, line: 334, type: !41)
!816 = !DILocalVariable(name: "ft", scope: !812, file: !3, line: 348, type: !718)
!817 = !DILocalVariable(name: "percent", scope: !812, file: !3, line: 358, type: !22)
!818 = !DILocalVariable(name: "threads", scope: !819, file: !3, line: 369, type: !718)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 368, column: 30)
!820 = distinct !DILexicalBlock(scope: !812, file: !3, line: 368, column: 21)
!821 = !DILocalVariable(name: "alloc_avg", scope: !812, file: !3, line: 378, type: !22)
!822 = !DILocation(line: 0, scope: !664)
!823 = !DILocation(line: 291, column: 5, scope: !664)
!824 = !DILocation(line: 291, column: 10, scope: !664)
!825 = !DILocation(line: 292, column: 5, scope: !664)
!826 = !DILocation(line: 292, column: 52, scope: !664)
!827 = !DILocalVariable(name: "this", arg: 1, scope: !828, type: !832, flags: DIFlagArtificial | DIFlagObjectPointer)
!828 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEC2EPvPc", scope: !675, file: !676, line: 37, type: !688, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !687, retainedNodes: !829)
!829 = !{!827, !830, !831}
!830 = !DILocalVariable(name: "ctx", arg: 2, scope: !828, file: !676, line: 37, type: !54)
!831 = !DILocalVariable(name: "mem", arg: 3, scope: !828, file: !676, line: 37, type: !85)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!833 = !DILocation(line: 0, scope: !828, inlinedAt: !834)
!834 = distinct !DILocation(line: 292, column: 52, scope: !664)
!835 = !DILocation(line: 38, column: 11, scope: !828, inlinedAt: !834)
!836 = !{!837, !118, i64 24}
!837 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEE", !118, i64 0, !118, i64 8, !118, i64 16, !118, i64 24, !838, i64 32, !119, i64 33}
!838 = !{!"bool", !119, i64 0}
!839 = !DILocation(line: 38, column: 30, scope: !828, inlinedAt: !834)
!840 = !{!837, !838, i64 32}
!841 = !DILocation(line: 44, column: 13, scope: !842, inlinedAt: !834)
!842 = distinct !DILexicalBlock(scope: !843, file: !676, line: 43, column: 16)
!843 = distinct !DILexicalBlock(scope: !844, file: !676, line: 41, column: 20)
!844 = distinct !DILexicalBlock(scope: !845, file: !676, line: 39, column: 13)
!845 = distinct !DILexicalBlock(scope: !828, file: !676, line: 38, column: 54)
!846 = !DILocation(line: 44, column: 17, scope: !842, inlinedAt: !834)
!847 = !DILocation(line: 47, column: 9, scope: !845, inlinedAt: !834)
!848 = !DILocation(line: 47, column: 13, scope: !845, inlinedAt: !834)
!849 = !{!837, !118, i64 8}
!850 = !DILocation(line: 49, column: 23, scope: !851, inlinedAt: !834)
!851 = distinct !DILexicalBlock(scope: !852, file: !676, line: 48, column: 18)
!852 = distinct !DILexicalBlock(scope: !845, file: !676, line: 48, column: 13)
!853 = !DILocation(line: 49, column: 13, scope: !851, inlinedAt: !834)
!854 = !DILocation(line: 49, column: 17, scope: !851, inlinedAt: !834)
!855 = !{!837, !118, i64 16}
!856 = !DILocation(line: 50, column: 18, scope: !851, inlinedAt: !834)
!857 = !{!119, !119, i64 0}
!858 = !DILocation(line: 294, column: 49, scope: !792)
!859 = !DILocation(line: 0, scope: !792)
!860 = !DILocation(line: 294, column: 60, scope: !795)
!861 = !DILocation(line: 294, column: 5, scope: !792)
!862 = !DILocation(line: 167, column: 14, scope: !863, inlinedAt: !868)
!863 = distinct !DILexicalBlock(scope: !864, file: !676, line: 167, column: 13)
!864 = distinct !DILexicalBlock(scope: !865, file: !676, line: 166, column: 16)
!865 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EED2Ev", scope: !675, file: !676, line: 166, type: !774, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !787, retainedNodes: !866)
!866 = !{!867}
!867 = !DILocalVariable(name: "this", arg: 1, scope: !865, type: !832, flags: DIFlagArtificial | DIFlagObjectPointer)
!868 = distinct !DILocation(line: 405, column: 1, scope: !664)
!869 = !{!837, !118, i64 0}
!870 = !DILocation(line: 0, scope: !865, inlinedAt: !868)
!871 = !DILocation(line: 167, column: 13, scope: !864, inlinedAt: !868)
!872 = !DILocation(line: 168, column: 26, scope: !873, inlinedAt: !868)
!873 = distinct !DILexicalBlock(scope: !863, file: !676, line: 167, column: 19)
!874 = !DILocation(line: 168, column: 13, scope: !873, inlinedAt: !868)
!875 = !DILocation(line: 169, column: 9, scope: !873, inlinedAt: !868)
!876 = !DILocation(line: 170, column: 13, scope: !877, inlinedAt: !868)
!877 = distinct !DILexicalBlock(scope: !863, file: !676, line: 169, column: 16)
!878 = !DILocalVariable(name: "this", arg: 1, scope: !879, type: !832, flags: DIFlagArtificial | DIFlagObjectPointer)
!879 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE28msan_annotate_is_initializedEv", scope: !675, file: !676, line: 162, type: !774, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !786, retainedNodes: !880)
!880 = !{!878}
!881 = !DILocation(line: 0, scope: !879, inlinedAt: !882)
!882 = distinct !DILocation(line: 170, column: 13, scope: !877, inlinedAt: !868)
!883 = !DILocation(line: 163, column: 81, scope: !879, inlinedAt: !882)
!884 = !DILocation(line: 163, column: 87, scope: !879, inlinedAt: !882)
!885 = !DILocation(line: 163, column: 15, scope: !879, inlinedAt: !882)
!886 = !DILocation(line: 180, column: 13, scope: !887, inlinedAt: !868)
!887 = distinct !DILexicalBlock(scope: !864, file: !676, line: 180, column: 13)
!888 = !{i8 0, i8 2}
!889 = !DILocation(line: 180, column: 21, scope: !887, inlinedAt: !868)
!890 = !DILocation(line: 180, column: 24, scope: !887, inlinedAt: !868)
!891 = !DILocation(line: 180, column: 31, scope: !887, inlinedAt: !868)
!892 = !DILocation(line: 180, column: 28, scope: !887, inlinedAt: !868)
!893 = !DILocation(line: 180, column: 13, scope: !864, inlinedAt: !868)
!894 = !DILocation(line: 181, column: 13, scope: !895, inlinedAt: !868)
!895 = distinct !DILexicalBlock(scope: !887, file: !676, line: 180, column: 40)
!896 = !DILocation(line: 182, column: 9, scope: !895, inlinedAt: !868)
!897 = !DILocation(line: 405, column: 1, scope: !664)
!898 = !DILocation(line: 296, column: 22, scope: !794)
!899 = !DILocation(line: 296, column: 19, scope: !794)
!900 = !DILocation(line: 296, column: 27, scope: !794)
!901 = !DILocation(line: 0, scope: !794)
!902 = !DILocation(line: 297, column: 17, scope: !903)
!903 = distinct !DILexicalBlock(scope: !794, file: !3, line: 297, column: 13)
!904 = !DILocation(line: 297, column: 14, scope: !903)
!905 = !DILocation(line: 297, column: 13, scope: !794)
!906 = !DILocalVariable(name: "this", arg: 1, scope: !907, type: !832, flags: DIFlagArtificial | DIFlagObjectPointer)
!907 = distinct !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5clearEv", scope: !675, file: !676, line: 131, type: !774, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !773, retainedNodes: !908)
!908 = !{!906}
!909 = !DILocation(line: 0, scope: !907, inlinedAt: !910)
!910 = distinct !DILocation(line: 300, column: 14, scope: !794)
!911 = !DILocation(line: 132, column: 15, scope: !907, inlinedAt: !910)
!912 = !DILocation(line: 132, column: 13, scope: !907, inlinedAt: !910)
!913 = !DILocation(line: 133, column: 13, scope: !914, inlinedAt: !910)
!914 = distinct !DILexicalBlock(scope: !907, file: !676, line: 133, column: 13)
!915 = !DILocation(line: 133, column: 13, scope: !907, inlinedAt: !910)
!916 = !DILocation(line: 134, column: 20, scope: !917, inlinedAt: !910)
!917 = distinct !DILexicalBlock(scope: !914, file: !676, line: 133, column: 18)
!918 = !DILocation(line: 135, column: 9, scope: !917, inlinedAt: !910)
!919 = !DILocation(line: 302, column: 16, scope: !920)
!920 = distinct !DILexicalBlock(scope: !794, file: !3, line: 302, column: 13)
!921 = !DILocation(line: 305, column: 26, scope: !794)
!922 = !DILocation(line: 305, column: 57, scope: !794)
!923 = !DILocation(line: 305, column: 51, scope: !794)
!924 = !DILocation(line: 307, column: 20, scope: !794)
!925 = !DILocalVariable(name: "this", arg: 1, scope: !926, type: !832, flags: DIFlagArtificial | DIFlagObjectPointer)
!926 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEPKc", scope: !675, file: !676, line: 57, type: !692, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !691, retainedNodes: !927)
!927 = !{!925, !928}
!928 = !DILocalVariable(name: "arg", arg: 2, scope: !926, file: !676, line: 57, type: !37)
!929 = !DILocation(line: 0, scope: !926, inlinedAt: !930)
!930 = distinct !DILocation(line: 307, column: 14, scope: !794)
!931 = !DILocation(line: 59, column: 17, scope: !932, inlinedAt: !930)
!932 = distinct !DILexicalBlock(scope: !926, file: !676, line: 59, column: 13)
!933 = !DILocation(line: 0, scope: !932, inlinedAt: !930)
!934 = !DILocation(line: 59, column: 13, scope: !926, inlinedAt: !930)
!935 = !DILocation(line: 60, column: 19, scope: !936, inlinedAt: !930)
!936 = distinct !DILexicalBlock(scope: !932, file: !676, line: 59, column: 29)
!937 = !DILocation(line: 61, column: 9, scope: !936, inlinedAt: !930)
!938 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !930)
!939 = distinct !DILexicalBlock(scope: !932, file: !676, line: 61, column: 16)
!940 = !DILocation(line: 0, scope: !926, inlinedAt: !941)
!941 = distinct !DILocation(line: 307, column: 25, scope: !794)
!942 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !941)
!943 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !941)
!944 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !941)
!945 = !DILocation(line: 0, scope: !926, inlinedAt: !946)
!946 = distinct !DILocation(line: 308, column: 14, scope: !794)
!947 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !946)
!948 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !946)
!949 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !946)
!950 = !DILocalVariable(name: "this", arg: 1, scope: !951, type: !832, flags: DIFlagArtificial | DIFlagObjectPointer)
!951 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEf", scope: !675, file: !676, line: 92, type: !716, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !715, retainedNodes: !952)
!952 = !{!950, !953}
!953 = !DILocalVariable(name: "arg", arg: 2, scope: !951, file: !676, line: 92, type: !718)
!954 = !DILocation(line: 0, scope: !951, inlinedAt: !955)
!955 = distinct !DILocation(line: 308, column: 33, scope: !794)
!956 = !DILocation(line: 93, column: 44, scope: !951, inlinedAt: !955)
!957 = !DILocation(line: 93, column: 49, scope: !951, inlinedAt: !955)
!958 = !DILocation(line: 93, column: 15, scope: !951, inlinedAt: !955)
!959 = !DILocation(line: 93, column: 13, scope: !951, inlinedAt: !955)
!960 = !DILocation(line: 0, scope: !926, inlinedAt: !961)
!961 = distinct !DILocation(line: 308, column: 38, scope: !794)
!962 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !961)
!963 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !961)
!964 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !961)
!965 = !DILocation(line: 0, scope: !926, inlinedAt: !966)
!966 = distinct !DILocation(line: 309, column: 14, scope: !794)
!967 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !966)
!968 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !966)
!969 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !966)
!970 = !DILocation(line: 309, column: 37, scope: !794)
!971 = !DILocalVariable(name: "this", arg: 1, scope: !972, type: !832, flags: DIFlagArtificial | DIFlagObjectPointer)
!972 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEi", scope: !675, file: !676, line: 72, type: !700, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !699, retainedNodes: !973)
!973 = !{!971, !974}
!974 = !DILocalVariable(name: "arg", arg: 2, scope: !972, file: !676, line: 72, type: !702)
!975 = !DILocation(line: 0, scope: !972, inlinedAt: !976)
!976 = distinct !DILocation(line: 309, column: 31, scope: !794)
!977 = !DILocation(line: 73, column: 43, scope: !972, inlinedAt: !976)
!978 = !DILocation(line: 73, column: 48, scope: !972, inlinedAt: !976)
!979 = !DILocation(line: 73, column: 15, scope: !972, inlinedAt: !976)
!980 = !DILocation(line: 73, column: 13, scope: !972, inlinedAt: !976)
!981 = !DILocation(line: 0, scope: !926, inlinedAt: !982)
!982 = distinct !DILocation(line: 310, column: 14, scope: !794)
!983 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !982)
!984 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !982)
!985 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !982)
!986 = !DILocation(line: 310, column: 34, scope: !794)
!987 = !DILocation(line: 0, scope: !972, inlinedAt: !988)
!988 = distinct !DILocation(line: 310, column: 28, scope: !794)
!989 = !DILocation(line: 73, column: 43, scope: !972, inlinedAt: !988)
!990 = !DILocation(line: 73, column: 48, scope: !972, inlinedAt: !988)
!991 = !DILocation(line: 73, column: 15, scope: !972, inlinedAt: !988)
!992 = !DILocation(line: 73, column: 13, scope: !972, inlinedAt: !988)
!993 = !DILocation(line: 0, scope: !926, inlinedAt: !994)
!994 = distinct !DILocation(line: 311, column: 14, scope: !794)
!995 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !994)
!996 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !994)
!997 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !994)
!998 = !DILocation(line: 311, column: 42, scope: !794)
!999 = !DILocation(line: 311, column: 39, scope: !794)
!1000 = !DILocation(line: 311, column: 37, scope: !794)
!1001 = !DILocation(line: 0, scope: !951, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 311, column: 32, scope: !794)
!1003 = !DILocation(line: 93, column: 44, scope: !951, inlinedAt: !1002)
!1004 = !DILocation(line: 93, column: 49, scope: !951, inlinedAt: !1002)
!1005 = !DILocation(line: 93, column: 15, scope: !951, inlinedAt: !1002)
!1006 = !DILocation(line: 93, column: 13, scope: !951, inlinedAt: !1002)
!1007 = !DILocation(line: 0, scope: !926, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 311, column: 47, scope: !794)
!1009 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1008)
!1010 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1008)
!1011 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1008)
!1012 = !DILocation(line: 312, column: 13, scope: !794)
!1013 = !DILocation(line: 306, column: 25, scope: !794)
!1014 = !DILocation(line: 306, column: 56, scope: !794)
!1015 = !DILocation(line: 306, column: 86, scope: !794)
!1016 = !DILocation(line: 306, column: 53, scope: !794)
!1017 = !DILocation(line: 0, scope: !926, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 313, column: 18, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 312, column: 22)
!1020 = distinct !DILexicalBlock(scope: !794, file: !3, line: 312, column: 13)
!1021 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1018)
!1022 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1018)
!1023 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1018)
!1024 = !DILocation(line: 0, scope: !951, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 313, column: 47, scope: !1019)
!1026 = !DILocation(line: 93, column: 44, scope: !951, inlinedAt: !1025)
!1027 = !DILocation(line: 93, column: 49, scope: !951, inlinedAt: !1025)
!1028 = !DILocation(line: 93, column: 15, scope: !951, inlinedAt: !1025)
!1029 = !DILocation(line: 93, column: 13, scope: !951, inlinedAt: !1025)
!1030 = !DILocation(line: 0, scope: !926, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 313, column: 58, scope: !1019)
!1032 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1031)
!1033 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1031)
!1034 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1031)
!1035 = !DILocation(line: 314, column: 9, scope: !1019)
!1036 = !DILocation(line: 62, column: 43, scope: !939, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 315, column: 14, scope: !794)
!1038 = !DILocation(line: 0, scope: !926, inlinedAt: !1037)
!1039 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1037)
!1040 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1037)
!1041 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1037)
!1042 = !DILocation(line: 315, column: 45, scope: !794)
!1043 = !DILocation(line: 0, scope: !972, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 315, column: 39, scope: !794)
!1045 = !DILocation(line: 73, column: 43, scope: !972, inlinedAt: !1044)
!1046 = !DILocation(line: 73, column: 48, scope: !972, inlinedAt: !1044)
!1047 = !DILocation(line: 73, column: 15, scope: !972, inlinedAt: !1044)
!1048 = !DILocation(line: 73, column: 13, scope: !972, inlinedAt: !1044)
!1049 = !DILocation(line: 0, scope: !926, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 316, column: 14, scope: !794)
!1051 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1050)
!1052 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1050)
!1053 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1050)
!1054 = !DILocation(line: 316, column: 45, scope: !794)
!1055 = !DILocalVariable(name: "this", arg: 1, scope: !1056, type: !832, flags: DIFlagArtificial | DIFlagObjectPointer)
!1056 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEy", scope: !675, file: !676, line: 77, type: !704, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !703, retainedNodes: !1057)
!1057 = !{!1055, !1058}
!1058 = !DILocalVariable(name: "arg", arg: 2, scope: !1056, file: !676, line: 77, type: !17)
!1059 = !DILocation(line: 0, scope: !1056, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 316, column: 39, scope: !794)
!1061 = !DILocation(line: 78, column: 44, scope: !1056, inlinedAt: !1060)
!1062 = !DILocation(line: 78, column: 15, scope: !1056, inlinedAt: !1060)
!1063 = !DILocation(line: 78, column: 13, scope: !1056, inlinedAt: !1060)
!1064 = !DILocation(line: 0, scope: !926, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 316, column: 57, scope: !794)
!1066 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1065)
!1067 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1065)
!1068 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1065)
!1069 = !DILocalVariable(name: "this", arg: 1, scope: !1070, type: !832, flags: DIFlagArtificial | DIFlagObjectPointer)
!1070 = distinct !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE3strEv", scope: !675, file: !676, line: 119, type: !771, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !770, retainedNodes: !1071)
!1071 = !{!1069}
!1072 = !DILocation(line: 0, scope: !1070, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 317, column: 41, scope: !794)
!1074 = !DILocation(line: 120, column: 13, scope: !1075, inlinedAt: !1073)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !676, line: 120, column: 13)
!1076 = !DILocation(line: 120, column: 13, scope: !1070, inlinedAt: !1073)
!1077 = !DILocation(line: 122, column: 17, scope: !1078, inlinedAt: !1073)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !676, line: 121, column: 46)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !676, line: 121, column: 17)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !676, line: 120, column: 18)
!1081 = !DILocation(line: 0, scope: !879, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 122, column: 17, scope: !1078, inlinedAt: !1073)
!1083 = !DILocation(line: 163, column: 81, scope: !879, inlinedAt: !1082)
!1084 = !DILocation(line: 163, column: 87, scope: !879, inlinedAt: !1082)
!1085 = !DILocation(line: 163, column: 15, scope: !879, inlinedAt: !1082)
!1086 = !DILocation(line: 124, column: 20, scope: !1080, inlinedAt: !1073)
!1087 = !DILocation(line: 124, column: 13, scope: !1080, inlinedAt: !1073)
!1088 = !DILocation(line: 0, scope: !1075, inlinedAt: !1073)
!1089 = !DILocation(line: 317, column: 9, scope: !794)
!1090 = !DILocation(line: 319, column: 34, scope: !794)
!1091 = !DILocation(line: 319, column: 31, scope: !794)
!1092 = !DILocation(line: 319, column: 39, scope: !794)
!1093 = !DILocation(line: 319, column: 45, scope: !794)
!1094 = !DILocation(line: 319, column: 42, scope: !794)
!1095 = !DILocation(line: 320, column: 13, scope: !794)
!1096 = !DILocation(line: 0, scope: !801)
!1097 = !DILocation(line: 321, column: 36, scope: !806)
!1098 = !DILocation(line: 321, column: 31, scope: !806)
!1099 = !DILocation(line: 321, column: 13, scope: !801)
!1100 = distinct !{!1100, !1099, !1101, !140}
!1101 = !DILocation(line: 327, column: 13, scope: !801)
!1102 = !DILocation(line: 0, scope: !805)
!1103 = !DILocation(line: 323, column: 25, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !805, file: !3, line: 323, column: 21)
!1105 = !DILocation(line: 323, column: 21, scope: !1104)
!1106 = !DILocation(line: 321, column: 48, scope: !806)
!1107 = !DILocation(line: 0, scope: !808)
!1108 = !DILocation(line: 331, column: 36, scope: !813)
!1109 = !DILocation(line: 331, column: 31, scope: !813)
!1110 = !DILocation(line: 331, column: 13, scope: !808)
!1111 = !DILocation(line: 0, scope: !812)
!1112 = !DILocation(line: 0, scope: !907, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 333, column: 22, scope: !812)
!1114 = !DILocation(line: 132, column: 15, scope: !907, inlinedAt: !1113)
!1115 = !DILocation(line: 132, column: 13, scope: !907, inlinedAt: !1113)
!1116 = !DILocation(line: 133, column: 13, scope: !914, inlinedAt: !1113)
!1117 = !DILocation(line: 133, column: 13, scope: !907, inlinedAt: !1113)
!1118 = !DILocation(line: 134, column: 20, scope: !917, inlinedAt: !1113)
!1119 = !DILocation(line: 135, column: 9, scope: !917, inlinedAt: !1113)
!1120 = !DILocation(line: 334, column: 53, scope: !812)
!1121 = !DILocation(line: 334, column: 59, scope: !812)
!1122 = !DILocation(line: 338, column: 23, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !812, file: !3, line: 338, column: 21)
!1124 = !DILocation(line: 338, column: 28, scope: !1123)
!1125 = !DILocation(line: 338, column: 35, scope: !1123)
!1126 = !DILocation(line: 338, column: 40, scope: !1123)
!1127 = !DILocation(line: 338, column: 21, scope: !812)
!1128 = !DILocation(line: 0, scope: !926, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 342, column: 22, scope: !812)
!1130 = !DILocation(line: 62, column: 43, scope: !939, inlinedAt: !1129)
!1131 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1129)
!1132 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1129)
!1133 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1129)
!1134 = !DILocation(line: 342, column: 37, scope: !812)
!1135 = !DILocation(line: 0, scope: !926, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 342, column: 30, scope: !812)
!1137 = !DILocation(line: 59, column: 17, scope: !932, inlinedAt: !1136)
!1138 = !DILocation(line: 0, scope: !932, inlinedAt: !1136)
!1139 = !DILocation(line: 59, column: 13, scope: !926, inlinedAt: !1136)
!1140 = !DILocation(line: 60, column: 19, scope: !936, inlinedAt: !1136)
!1141 = !DILocation(line: 61, column: 9, scope: !936, inlinedAt: !1136)
!1142 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1136)
!1143 = !DILocation(line: 0, scope: !926, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 342, column: 42, scope: !812)
!1145 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1144)
!1146 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1144)
!1147 = !DILocation(line: 344, column: 29, scope: !812)
!1148 = !DILocalVariable(name: "this", arg: 1, scope: !1149, type: !1151, flags: DIFlagArtificial | DIFlagObjectPointer)
!1149 = distinct !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE4sizeEv", scope: !675, file: !676, line: 139, type: !777, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !776, retainedNodes: !1150)
!1150 = !{!1148}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!1152 = !DILocation(line: 0, scope: !1149, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 344, column: 29, scope: !812)
!1154 = !DILocation(line: 140, column: 31, scope: !1149, inlinedAt: !1153)
!1155 = !DILocation(line: 344, column: 36, scope: !812)
!1156 = !DILocation(line: 344, column: 17, scope: !812)
!1157 = !DILocation(line: 0, scope: !926, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 345, column: 26, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !812, file: !3, line: 344, column: 46)
!1160 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1158)
!1161 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1158)
!1162 = distinct !{!1162, !1156, !1163, !140}
!1163 = !DILocation(line: 346, column: 17, scope: !812)
!1164 = !DILocation(line: 348, column: 32, scope: !812)
!1165 = !DILocation(line: 348, column: 28, scope: !812)
!1166 = !DILocation(line: 348, column: 43, scope: !812)
!1167 = !DILocation(line: 348, column: 40, scope: !812)
!1168 = !DILocation(line: 348, column: 48, scope: !812)
!1169 = !DILocation(line: 348, column: 37, scope: !812)
!1170 = !DILocation(line: 0, scope: !951, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 349, column: 22, scope: !812)
!1172 = !DILocation(line: 93, column: 44, scope: !951, inlinedAt: !1171)
!1173 = !DILocation(line: 93, column: 49, scope: !951, inlinedAt: !1171)
!1174 = !DILocation(line: 93, column: 15, scope: !951, inlinedAt: !1171)
!1175 = !DILocation(line: 93, column: 13, scope: !951, inlinedAt: !1171)
!1176 = !DILocalVariable(name: "this", arg: 1, scope: !1177, type: !832, flags: DIFlagArtificial | DIFlagObjectPointer)
!1177 = distinct !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5eraseEi", scope: !675, file: !676, line: 148, type: !783, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, declaration: !782, retainedNodes: !1178)
!1178 = !{!1176, !1179}
!1179 = !DILocalVariable(name: "n", arg: 2, scope: !1177, file: !676, line: 148, type: !22)
!1180 = !DILocation(line: 0, scope: !1177, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 351, column: 22, scope: !812)
!1182 = !DILocation(line: 149, column: 13, scope: !1183, inlinedAt: !1181)
!1183 = distinct !DILexicalBlock(scope: !1177, file: !676, line: 149, column: 13)
!1184 = !DILocation(line: 149, column: 13, scope: !1177, inlinedAt: !1181)
!1185 = !DILocation(line: 150, column: 17, scope: !1186, inlinedAt: !1181)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !676, line: 149, column: 18)
!1187 = !DILocation(line: 151, column: 23, scope: !1188, inlinedAt: !1181)
!1188 = distinct !DILexicalBlock(scope: !1186, file: !676, line: 151, column: 17)
!1189 = !DILocation(line: 151, column: 21, scope: !1188, inlinedAt: !1181)
!1190 = !DILocation(line: 151, column: 17, scope: !1186, inlinedAt: !1181)
!1191 = !DILocation(line: 0, scope: !1186, inlinedAt: !1181)
!1192 = !DILocation(line: 154, column: 20, scope: !1186, inlinedAt: !1181)
!1193 = !DILocation(line: 62, column: 43, scope: !939, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 352, column: 22, scope: !812)
!1195 = !DILocation(line: 155, column: 9, scope: !1186, inlinedAt: !1181)
!1196 = !DILocation(line: 0, scope: !926, inlinedAt: !1194)
!1197 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1194)
!1198 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1194)
!1199 = !DILocation(line: 354, column: 29, scope: !812)
!1200 = !DILocation(line: 0, scope: !1149, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 354, column: 29, scope: !812)
!1202 = !DILocation(line: 140, column: 31, scope: !1149, inlinedAt: !1201)
!1203 = !DILocation(line: 354, column: 36, scope: !812)
!1204 = !DILocation(line: 354, column: 17, scope: !812)
!1205 = !DILocation(line: 0, scope: !926, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 355, column: 26, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !812, file: !3, line: 354, column: 46)
!1208 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1206)
!1209 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1206)
!1210 = distinct !{!1210, !1204, !1211, !140}
!1211 = !DILocation(line: 356, column: 17, scope: !812)
!1212 = !DILocation(line: 359, column: 24, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !812, file: !3, line: 359, column: 21)
!1214 = !DILocation(line: 359, column: 29, scope: !1213)
!1215 = !DILocation(line: 359, column: 21, scope: !812)
!1216 = !DILocation(line: 360, column: 42, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 359, column: 35)
!1218 = !DILocation(line: 360, column: 36, scope: !1217)
!1219 = !DILocation(line: 360, column: 48, scope: !1217)
!1220 = !DILocation(line: 361, column: 17, scope: !1217)
!1221 = !DILocation(line: 0, scope: !926, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 362, column: 22, scope: !812)
!1223 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1222)
!1224 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1222)
!1225 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1222)
!1226 = !DILocation(line: 0, scope: !972, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 362, column: 29, scope: !812)
!1228 = !DILocation(line: 73, column: 43, scope: !972, inlinedAt: !1227)
!1229 = !DILocation(line: 73, column: 48, scope: !972, inlinedAt: !1227)
!1230 = !DILocation(line: 73, column: 15, scope: !972, inlinedAt: !1227)
!1231 = !DILocation(line: 73, column: 13, scope: !972, inlinedAt: !1227)
!1232 = !DILocation(line: 0, scope: !926, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 362, column: 40, scope: !812)
!1234 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1233)
!1235 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1233)
!1236 = !DILocation(line: 364, column: 29, scope: !812)
!1237 = !DILocation(line: 0, scope: !1149, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 364, column: 29, scope: !812)
!1239 = !DILocation(line: 140, column: 31, scope: !1149, inlinedAt: !1238)
!1240 = !DILocation(line: 364, column: 36, scope: !812)
!1241 = !DILocation(line: 364, column: 17, scope: !812)
!1242 = !DILocation(line: 0, scope: !926, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 365, column: 26, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !812, file: !3, line: 364, column: 46)
!1245 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1243)
!1246 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1243)
!1247 = distinct !{!1247, !1241, !1248, !140}
!1248 = !DILocation(line: 366, column: 17, scope: !812)
!1249 = !DILocation(line: 368, column: 21, scope: !812)
!1250 = !DILocation(line: 369, column: 41, scope: !819)
!1251 = !DILocation(line: 369, column: 37, scope: !819)
!1252 = !DILocation(line: 369, column: 73, scope: !819)
!1253 = !DILocation(line: 369, column: 69, scope: !819)
!1254 = !DILocation(line: 369, column: 100, scope: !819)
!1255 = !DILocation(line: 369, column: 66, scope: !819)
!1256 = !DILocation(line: 0, scope: !819)
!1257 = !DILocation(line: 0, scope: !926, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 370, column: 26, scope: !819)
!1259 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1258)
!1260 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1258)
!1261 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1258)
!1262 = !DILocation(line: 0, scope: !951, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 370, column: 41, scope: !819)
!1264 = !DILocation(line: 93, column: 44, scope: !951, inlinedAt: !1263)
!1265 = !DILocation(line: 93, column: 49, scope: !951, inlinedAt: !1263)
!1266 = !DILocation(line: 93, column: 15, scope: !951, inlinedAt: !1263)
!1267 = !DILocation(line: 93, column: 13, scope: !951, inlinedAt: !1263)
!1268 = !DILocation(line: 0, scope: !1177, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 371, column: 26, scope: !819)
!1270 = !DILocation(line: 149, column: 13, scope: !1183, inlinedAt: !1269)
!1271 = !DILocation(line: 149, column: 13, scope: !1177, inlinedAt: !1269)
!1272 = !DILocation(line: 150, column: 17, scope: !1186, inlinedAt: !1269)
!1273 = !DILocation(line: 151, column: 23, scope: !1188, inlinedAt: !1269)
!1274 = !DILocation(line: 151, column: 21, scope: !1188, inlinedAt: !1269)
!1275 = !DILocation(line: 151, column: 17, scope: !1186, inlinedAt: !1269)
!1276 = !DILocation(line: 0, scope: !1186, inlinedAt: !1269)
!1277 = !DILocation(line: 154, column: 20, scope: !1186, inlinedAt: !1269)
!1278 = !DILocation(line: 373, column: 33, scope: !819)
!1279 = !DILocation(line: 155, column: 9, scope: !1186, inlinedAt: !1269)
!1280 = !DILocation(line: 0, scope: !1149, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 373, column: 33, scope: !819)
!1282 = !DILocation(line: 140, column: 31, scope: !1149, inlinedAt: !1281)
!1283 = !DILocation(line: 373, column: 40, scope: !819)
!1284 = !DILocation(line: 373, column: 21, scope: !819)
!1285 = !DILocation(line: 0, scope: !926, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 374, column: 30, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !819, file: !3, line: 373, column: 50)
!1288 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1286)
!1289 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1286)
!1290 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1286)
!1291 = distinct !{!1291, !1284, !1292, !140}
!1292 = !DILocation(line: 375, column: 21, scope: !819)
!1293 = !DILocation(line: 379, column: 25, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !812, file: !3, line: 379, column: 21)
!1295 = !DILocation(line: 379, column: 36, scope: !1294)
!1296 = !DILocation(line: 379, column: 21, scope: !812)
!1297 = !DILocation(line: 380, column: 37, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 379, column: 42)
!1299 = !DILocation(line: 380, column: 52, scope: !1298)
!1300 = !DILocation(line: 380, column: 50, scope: !1298)
!1301 = !DILocation(line: 381, column: 17, scope: !1298)
!1302 = !DILocation(line: 383, column: 25, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !812, file: !3, line: 383, column: 21)
!1304 = !DILocation(line: 383, column: 21, scope: !1303)
!1305 = !DILocation(line: 383, column: 21, scope: !812)
!1306 = !DILocation(line: 0, scope: !926, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 385, column: 26, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 383, column: 38)
!1309 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1307)
!1310 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1307)
!1311 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1307)
!1312 = !DILocation(line: 385, column: 46, scope: !1308)
!1313 = !DILocation(line: 0, scope: !1056, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 385, column: 39, scope: !1308)
!1315 = !DILocation(line: 78, column: 44, scope: !1056, inlinedAt: !1314)
!1316 = !DILocation(line: 78, column: 15, scope: !1056, inlinedAt: !1314)
!1317 = !DILocation(line: 0, scope: !1308)
!1318 = !DILocation(line: 386, column: 33, scope: !1308)
!1319 = !DILocation(line: 0, scope: !1149, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 386, column: 33, scope: !1308)
!1321 = !DILocation(line: 140, column: 31, scope: !1149, inlinedAt: !1320)
!1322 = !DILocation(line: 386, column: 40, scope: !1308)
!1323 = !DILocation(line: 386, column: 21, scope: !1308)
!1324 = !DILocation(line: 0, scope: !926, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 387, column: 30, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 386, column: 50)
!1327 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1325)
!1328 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1325)
!1329 = distinct !{!1329, !1323, !1330, !140}
!1330 = !DILocation(line: 388, column: 21, scope: !1308)
!1331 = !DILocation(line: 0, scope: !926, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 389, column: 26, scope: !1308)
!1333 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1332)
!1334 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1332)
!1335 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1332)
!1336 = !DILocation(line: 389, column: 45, scope: !1308)
!1337 = !DILocation(line: 0, scope: !972, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 389, column: 38, scope: !1308)
!1339 = !DILocation(line: 73, column: 43, scope: !972, inlinedAt: !1338)
!1340 = !DILocation(line: 73, column: 48, scope: !972, inlinedAt: !1338)
!1341 = !DILocation(line: 73, column: 15, scope: !972, inlinedAt: !1338)
!1342 = !DILocation(line: 73, column: 13, scope: !972, inlinedAt: !1338)
!1343 = !DILocation(line: 390, column: 28, scope: !1308)
!1344 = !DILocation(line: 391, column: 33, scope: !1308)
!1345 = !DILocation(line: 0, scope: !1149, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 391, column: 33, scope: !1308)
!1347 = !DILocation(line: 140, column: 31, scope: !1149, inlinedAt: !1346)
!1348 = !DILocation(line: 391, column: 40, scope: !1308)
!1349 = !DILocation(line: 391, column: 21, scope: !1308)
!1350 = !DILocation(line: 0, scope: !926, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 392, column: 30, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 391, column: 50)
!1353 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1351)
!1354 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1351)
!1355 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1351)
!1356 = distinct !{!1356, !1349, !1357, !140}
!1357 = !DILocation(line: 393, column: 21, scope: !1308)
!1358 = !DILocation(line: 0, scope: !926, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 394, column: 26, scope: !1308)
!1360 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1359)
!1361 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1359)
!1362 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1359)
!1363 = !DILocation(line: 0, scope: !972, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 394, column: 38, scope: !1308)
!1365 = !DILocation(line: 73, column: 43, scope: !972, inlinedAt: !1364)
!1366 = !DILocation(line: 73, column: 48, scope: !972, inlinedAt: !1364)
!1367 = !DILocation(line: 73, column: 15, scope: !972, inlinedAt: !1364)
!1368 = !DILocation(line: 73, column: 13, scope: !972, inlinedAt: !1364)
!1369 = !DILocation(line: 395, column: 17, scope: !1308)
!1370 = !DILocation(line: 396, column: 25, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !812, file: !3, line: 396, column: 21)
!1372 = !DILocation(line: 396, column: 36, scope: !1371)
!1373 = !DILocation(line: 396, column: 21, scope: !812)
!1374 = !DILocation(line: 0, scope: !926, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 397, column: 26, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 396, column: 41)
!1377 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1375)
!1378 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1375)
!1379 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1375)
!1380 = !DILocation(line: 397, column: 47, scope: !1376)
!1381 = !DILocation(line: 0, scope: !1056, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 397, column: 40, scope: !1376)
!1383 = !DILocation(line: 78, column: 44, scope: !1056, inlinedAt: !1382)
!1384 = !DILocation(line: 78, column: 15, scope: !1056, inlinedAt: !1382)
!1385 = !DILocation(line: 78, column: 13, scope: !1056, inlinedAt: !1382)
!1386 = !DILocation(line: 398, column: 17, scope: !1376)
!1387 = !DILocation(line: 62, column: 43, scope: !939, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 399, column: 22, scope: !812)
!1389 = !DILocation(line: 0, scope: !926, inlinedAt: !1388)
!1390 = !DILocation(line: 62, column: 48, scope: !939, inlinedAt: !1388)
!1391 = !DILocation(line: 62, column: 19, scope: !939, inlinedAt: !1388)
!1392 = !DILocation(line: 62, column: 17, scope: !939, inlinedAt: !1388)
!1393 = !DILocation(line: 0, scope: !1070, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 401, column: 49, scope: !812)
!1395 = !DILocation(line: 120, column: 13, scope: !1075, inlinedAt: !1394)
!1396 = !DILocation(line: 120, column: 13, scope: !1070, inlinedAt: !1394)
!1397 = !DILocation(line: 122, column: 17, scope: !1078, inlinedAt: !1394)
!1398 = !DILocation(line: 0, scope: !879, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 122, column: 17, scope: !1078, inlinedAt: !1394)
!1400 = !DILocation(line: 163, column: 81, scope: !879, inlinedAt: !1399)
!1401 = !DILocation(line: 163, column: 87, scope: !879, inlinedAt: !1399)
!1402 = !DILocation(line: 163, column: 15, scope: !879, inlinedAt: !1399)
!1403 = !DILocation(line: 124, column: 20, scope: !1080, inlinedAt: !1394)
!1404 = !DILocation(line: 124, column: 13, scope: !1080, inlinedAt: !1394)
!1405 = !DILocation(line: 0, scope: !1075, inlinedAt: !1394)
!1406 = !DILocation(line: 401, column: 17, scope: !812)
!1407 = !DILocation(line: 402, column: 13, scope: !813)
!1408 = !DILocation(line: 331, column: 48, scope: !813)
!1409 = distinct !{!1409, !1110, !1410, !140}
!1410 = !DILocation(line: 402, column: 13, scope: !808)
!1411 = !DILocation(line: 295, column: 52, scope: !795)
!1412 = distinct !{!1412, !861, !1413, !140}
!1413 = !DILocation(line: 404, column: 5, scope: !792)
!1414 = distinct !DISubprogram(name: "halide_profiler_report", scope: !3, file: !3, line: 407, type: !249, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1415)
!1415 = !{!1416, !1417, !1418}
!1416 = !DILocalVariable(name: "user_context", arg: 1, scope: !1414, file: !3, line: 407, type: !54)
!1417 = !DILocalVariable(name: "s", scope: !1414, file: !3, line: 408, type: !6)
!1418 = !DILocalVariable(name: "lock", scope: !1414, file: !3, line: 409, type: !395)
!1419 = !DILocation(line: 0, scope: !1414)
!1420 = !DILocation(line: 408, column: 32, scope: !1414)
!1421 = !DILocation(line: 409, column: 30, scope: !1414)
!1422 = !DILocation(line: 0, scope: !412, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 409, column: 21, scope: !1414)
!1424 = !DILocation(line: 16, column: 9, scope: !419, inlinedAt: !1423)
!1425 = !DILocation(line: 410, column: 5, scope: !1414)
!1426 = !DILocation(line: 0, scope: !434, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 411, column: 1, scope: !1414)
!1428 = !DILocation(line: 20, column: 9, scope: !439, inlinedAt: !1427)
!1429 = !DILocation(line: 411, column: 1, scope: !1414)
!1430 = distinct !DISubprogram(name: "halide_profiler_reset_unlocked", scope: !3, file: !3, line: 413, type: !1431, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !6}
!1433 = !{!1434, !1435}
!1434 = !DILocalVariable(name: "s", arg: 1, scope: !1430, file: !3, line: 413, type: !6)
!1435 = !DILocalVariable(name: "p", scope: !1436, file: !3, line: 415, type: !27)
!1436 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 414, column: 26)
!1437 = !DILocation(line: 0, scope: !1430)
!1438 = !DILocation(line: 414, column: 15, scope: !1430)
!1439 = !DILocation(line: 414, column: 12, scope: !1430)
!1440 = !DILocation(line: 414, column: 5, scope: !1430)
!1441 = !DILocation(line: 0, scope: !1436)
!1442 = !DILocation(line: 416, column: 62, scope: !1436)
!1443 = !DILocation(line: 416, column: 22, scope: !1436)
!1444 = !DILocation(line: 417, column: 17, scope: !1436)
!1445 = !DILocation(line: 417, column: 9, scope: !1436)
!1446 = !DILocation(line: 418, column: 14, scope: !1436)
!1447 = !DILocation(line: 418, column: 9, scope: !1436)
!1448 = distinct !{!1448, !1440, !1449, !140}
!1449 = !DILocation(line: 419, column: 5, scope: !1430)
!1450 = !DILocation(line: 420, column: 8, scope: !1430)
!1451 = !DILocation(line: 420, column: 22, scope: !1430)
!1452 = !DILocation(line: 421, column: 1, scope: !1430)
!1453 = distinct !DISubprogram(name: "halide_profiler_reset", scope: !3, file: !3, line: 423, type: !554, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1454)
!1454 = !{!1455, !1456}
!1455 = !DILocalVariable(name: "s", scope: !1453, file: !3, line: 428, type: !6)
!1456 = !DILocalVariable(name: "lock", scope: !1453, file: !3, line: 429, type: !395)
!1457 = !DILocation(line: 428, column: 32, scope: !1453)
!1458 = !DILocation(line: 0, scope: !1453)
!1459 = !DILocation(line: 429, column: 30, scope: !1453)
!1460 = !DILocation(line: 0, scope: !412, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 429, column: 21, scope: !1453)
!1462 = !DILocation(line: 16, column: 9, scope: !419, inlinedAt: !1461)
!1463 = !DILocation(line: 430, column: 5, scope: !1453)
!1464 = !DILocation(line: 0, scope: !434, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 431, column: 1, scope: !1453)
!1466 = !DILocation(line: 20, column: 9, scope: !439, inlinedAt: !1465)
!1467 = !DILocation(line: 431, column: 1, scope: !1453)
!1468 = distinct !DISubprogram(name: "halide_profiler_shutdown", scope: !3, file: !3, line: 437, type: !554, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1469)
!1469 = !{!1470}
!1470 = !DILocalVariable(name: "s", scope: !1468, file: !3, line: 438, type: !6)
!1471 = !DILocation(line: 438, column: 32, scope: !1468)
!1472 = !DILocation(line: 0, scope: !1468)
!1473 = !DILocation(line: 439, column: 13, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 439, column: 9)
!1475 = !DILocation(line: 439, column: 10, scope: !1474)
!1476 = !DILocation(line: 439, column: 9, scope: !1468)
!1477 = !DILocation(line: 443, column: 8, scope: !1468)
!1478 = !DILocation(line: 443, column: 21, scope: !1468)
!1479 = !DILocation(line: 444, column: 5, scope: !1468)
!1480 = !DILocation(line: 445, column: 24, scope: !1468)
!1481 = !DILocation(line: 446, column: 21, scope: !1468)
!1482 = !DILocation(line: 450, column: 5, scope: !1468)
!1483 = !DILocation(line: 452, column: 5, scope: !1468)
!1484 = !DILocation(line: 453, column: 1, scope: !1468)
!1485 = !DISubprogram(name: "halide_join_thread", scope: !8, file: !8, line: 320, type: !1486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null, !66}
!1488 = distinct !DISubprogram(name: "halide_profiler_pipeline_end", scope: !3, file: !3, line: 477, type: !1489, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{null, !54, !54}
!1491 = !{!1492, !1493}
!1492 = !DILocalVariable(name: "user_context", arg: 1, scope: !1488, file: !3, line: 477, type: !54)
!1493 = !DILocalVariable(name: "state", arg: 2, scope: !1488, file: !3, line: 477, type: !54)
!1494 = !DILocation(line: 0, scope: !1488)
!1495 = !DILocation(line: 478, column: 39, scope: !1488)
!1496 = !DILocation(line: 478, column: 52, scope: !1488)
!1497 = !DILocation(line: 479, column: 1, scope: !1488)
!1498 = !DISubprogram(name: "halide_error", scope: !8, file: !8, line: 111, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1499 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !8, file: !8, line: 973, type: !1500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!22, !54, !722, !18}
!1502 = !DISubprogram(name: "halide_string_to_string", scope: !16, file: !16, line: 120, type: !1503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!85, !85, !85, !37}
!1505 = !DISubprogram(name: "halide_double_to_string", scope: !16, file: !16, line: 121, type: !1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!85, !85, !85, !714, !22}
!1508 = !DISubprogram(name: "halide_int64_to_string", scope: !16, file: !16, line: 122, type: !1509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!85, !85, !85, !383, !22}
!1511 = !DISubprogram(name: "halide_uint64_to_string", scope: !16, file: !16, line: 123, type: !1512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!85, !85, !85, !18, !22}
