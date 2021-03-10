; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/errors.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/errors.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%struct.halide_type_t = type { i8, i8, i16 }

@.str = private unnamed_addr constant [41 x i8] c"Bounds inference call to external stage \00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c" returned non-zero value: \00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Call to external stage \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Bounds given for \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" (from \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c") do not cover required region (from \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" has type \00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c" but type of the buffer passed in is \00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c" requires a buffer of exactly \00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c" dimensions, but the buffer passed in has \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c" dimensions\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c" is accessed at \00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c", which is before the min (\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c") in dimension \00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c", which is beyond the max (\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Total allocation for buffer \00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c" is \00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c", which exceeds the maximum size of \00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"The extents for buffer \00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c" dimension \00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c" is negative (\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Product of extents for buffer \00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"Applying the constraints on \00", align 1
@.str.26 = private unnamed_addr constant [54 x i8] c" to the required region made it smaller in dimension \00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c". \00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Required size: \00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Constrained size: \00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"Constraint violated: \00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c") == \00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"Parameter \00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c" but must be at least \00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c" but must be at most \00", align 1
@.str.37 = private unnamed_addr constant [47 x i8] c"Out of memory (halide_malloc returned nullptr)\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Buffer argument \00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c" is nullptr\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"Failed to dump function \00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c" to file \00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c" with error \00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"The host pointer of \00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c" is not aligned to a \00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c" bytes boundary.\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"The buffer \00", align 1
@.str.47 = private unnamed_addr constant [53 x i8] c" is dirty on device, but this pipeline was compiled \00", align 1
@.str.48 = private unnamed_addr constant [43 x i8] c"with no support for device to host copies.\00", align 1
@.str.49 = private unnamed_addr constant [55 x i8] c" is null, but the pipeline will access it on the host.\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"The folded storage dimension \00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c" of \00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c" was accessed out of order by loop \00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"Cannot fold dimension \00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c" because an extern stage accesses [\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"],\00", align 1
@.str.57 = private unnamed_addr constant [47 x i8] c" which is outside the range currently valid: [\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"].\00", align 1
@.str.59 = private unnamed_addr constant [47 x i8] c" which wraps around the boundary of the fold, \00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"which occurs at multiples of \00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"The fold factor (\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c") of dimension \00", align 1
@.str.63 = private unnamed_addr constant [61 x i8] c" is too small to store the required region accessed by loop \00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c").\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"Requirement Failed: (\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.67 = private unnamed_addr constant [59 x i8] c"A schedule specialized with specialize_fail() was chosen: \00", align 1
@.str.68 = private unnamed_addr constant [55 x i8] c"Buffer has a non-zero device but no device interface.\0A\00", align 1
@.str.69 = private unnamed_addr constant [57 x i8] c"Buffer has a non-null device_interface but device is 0.\0A\00", align 1
@.str.70 = private unnamed_addr constant [49 x i8] c"Buffer has both host and device dirty bits set.\0A\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"Buffer pointer passed to \00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c" is null.\0A\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_bounds_inference_call_failed(i8* %0, i8* %1, i32 %2) local_unnamed_addr #0 !dbg !199 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !204, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i8* %1, metadata !205, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i32 %2, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !214
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !214
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !214
  %4 = tail call i8* @malloc(i64 1024) #6, !dbg !216
  %5 = icmp eq i8* %4, null, !dbg !221
  br i1 %5, label %8, label %6, !dbg !223

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i64 1023, !dbg !224
  store i8 0, i8* %7, align 1, !dbg !226, !tbaa !227
  br label %8, !dbg !230

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ], !dbg !231
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !236
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !236
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0)) #6, !dbg !238
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !241
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !241
  %11 = icmp eq i8* %1, null, !dbg !243
  br i1 %11, label %12, label %14, !dbg !244

12:                                               ; preds = %8
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !245
  br label %16, !dbg !247

14:                                               ; preds = %8
  %15 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* nonnull %1) #6, !dbg !248
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ], !dbg !249
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !250
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !250
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %9, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !252
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !257
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !257
  %19 = sext i32 %2 to i64, !dbg !259
  %20 = tail call i8* @halide_int64_to_string(i8* %18, i8* %9, i64 %19, i32 1) #6, !dbg !260
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !264
  br i1 %5, label %21, label %22, !dbg !266

21:                                               ; preds = %16
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !268
  br label %28, !dbg !271

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !275
  %23 = ptrtoint i8* %20 to i64, !dbg !278
  %24 = ptrtoint i8* %4 to i64, !dbg !278
  %25 = add i64 %23, 1, !dbg !278
  %26 = sub i64 %25, %24, !dbg !279
  %27 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %26) #6, !dbg !280
  tail call void @halide_error(i8* %0, i8* nonnull %4) #6, !dbg !281
  br label %28

28:                                               ; preds = %21, %22
  call void @free(i8* %4) #6, !dbg !284
  ret i32 %2, !dbg !287
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_extern_stage_failed(i8* %0, i8* %1, i32 %2) local_unnamed_addr #0 !dbg !288 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i8* %1, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %2, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !294
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !294
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !294
  %4 = tail call i8* @malloc(i64 1024) #6, !dbg !296
  %5 = icmp eq i8* %4, null, !dbg !297
  br i1 %5, label %8, label %6, !dbg !298

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i64 1023, !dbg !299
  store i8 0, i8* %7, align 1, !dbg !300, !tbaa !227
  br label %8, !dbg !301

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ], !dbg !302
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !303
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !303
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !305
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !306
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !306
  %11 = icmp eq i8* %1, null, !dbg !308
  br i1 %11, label %12, label %14, !dbg !309

12:                                               ; preds = %8
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !310
  br label %16, !dbg !311

14:                                               ; preds = %8
  %15 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* nonnull %1) #6, !dbg !312
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ], !dbg !313
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !314
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !314
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %9, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !316
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !317
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !317
  %19 = sext i32 %2 to i64, !dbg !319
  %20 = tail call i8* @halide_int64_to_string(i8* %18, i8* %9, i64 %19, i32 1) #6, !dbg !320
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !321
  br i1 %5, label %21, label %22, !dbg !323

21:                                               ; preds = %16
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !324
  br label %28, !dbg !325

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !326
  %23 = ptrtoint i8* %20 to i64, !dbg !328
  %24 = ptrtoint i8* %4 to i64, !dbg !328
  %25 = add i64 %23, 1, !dbg !328
  %26 = sub i64 %25, %24, !dbg !329
  %27 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %26) #6, !dbg !330
  tail call void @halide_error(i8* %0, i8* nonnull %4) #6, !dbg !331
  br label %28

28:                                               ; preds = %21, %22
  call void @free(i8* %4) #6, !dbg !332
  ret i32 %2, !dbg !333
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_explicit_bounds_too_small(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 !dbg !334 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !338, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i8* %1, metadata !339, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i8* %2, metadata !340, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i32 %3, metadata !341, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i32 %4, metadata !342, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i32 %5, metadata !343, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i32 %6, metadata !344, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !346
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !346
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !346
  %8 = tail call i8* @malloc(i64 1024) #6, !dbg !348
  %9 = icmp eq i8* %8, null, !dbg !349
  br i1 %9, label %12, label %10, !dbg !350

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023, !dbg !351
  store i8 0, i8* %11, align 1, !dbg !352, !tbaa !227
  br label %12, !dbg !353

12:                                               ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !354
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !355
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !355
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !358
  call void @llvm.dbg.value(metadata i8* %2, metadata !235, metadata !DIExpression()) #5, !dbg !358
  %15 = icmp eq i8* %2, null, !dbg !360
  br i1 %15, label %16, label %18, !dbg !361

16:                                               ; preds = %12
  %17 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !362
  br label %20, !dbg !363

18:                                               ; preds = %12
  %19 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull %2) #6, !dbg !364
  br label %20

20:                                               ; preds = %16, %18
  %21 = phi i8* [ %19, %18 ], [ %17, %16 ], !dbg !365
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !366
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !366
  %22 = tail call i8* @halide_string_to_string(i8* %21, i8* %13, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !368
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !369
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !369
  %23 = icmp eq i8* %1, null, !dbg !371
  br i1 %23, label %24, label %26, !dbg !372

24:                                               ; preds = %20
  %25 = tail call i8* @halide_string_to_string(i8* %22, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !373
  br label %28, !dbg !374

26:                                               ; preds = %20
  %27 = tail call i8* @halide_string_to_string(i8* %22, i8* %13, i8* nonnull %1) #6, !dbg !375
  br label %28

28:                                               ; preds = %24, %26
  %29 = phi i8* [ %27, %26 ], [ %25, %24 ], !dbg !376
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !377
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !377
  %30 = tail call i8* @halide_string_to_string(i8* %29, i8* %13, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !379
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !380
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !380
  %31 = sext i32 %3 to i64, !dbg !382
  %32 = tail call i8* @halide_int64_to_string(i8* %30, i8* %13, i64 %31, i32 1) #6, !dbg !383
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !384
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !384
  %33 = tail call i8* @halide_string_to_string(i8* %32, i8* %13, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !386
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !387
  call void @llvm.dbg.value(metadata i32 %4, metadata !256, metadata !DIExpression()) #5, !dbg !387
  %34 = sext i32 %4 to i64, !dbg !389
  %35 = tail call i8* @halide_int64_to_string(i8* %33, i8* %13, i64 %34, i32 1) #6, !dbg !390
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !391
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !391
  %36 = tail call i8* @halide_string_to_string(i8* %35, i8* %13, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !393
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !394
  call void @llvm.dbg.value(metadata i32 %5, metadata !256, metadata !DIExpression()) #5, !dbg !394
  %37 = sext i32 %5 to i64, !dbg !396
  %38 = tail call i8* @halide_int64_to_string(i8* %36, i8* %13, i64 %37, i32 1) #6, !dbg !397
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !398
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !398
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %13, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !400
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !401
  call void @llvm.dbg.value(metadata i32 %6, metadata !256, metadata !DIExpression()) #5, !dbg !401
  %40 = sext i32 %6 to i64, !dbg !403
  %41 = tail call i8* @halide_int64_to_string(i8* %39, i8* %13, i64 %40, i32 1) #6, !dbg !404
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !405
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !405
  %42 = tail call i8* @halide_string_to_string(i8* %41, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !407
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !408
  br i1 %9, label %43, label %44, !dbg !410

43:                                               ; preds = %28
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !411
  br label %50, !dbg !412

44:                                               ; preds = %28
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !413
  %45 = ptrtoint i8* %42 to i64, !dbg !415
  %46 = ptrtoint i8* %8 to i64, !dbg !415
  %47 = add i64 %45, 1, !dbg !415
  %48 = sub i64 %47, %46, !dbg !416
  %49 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %48) #6, !dbg !417
  tail call void @halide_error(i8* %0, i8* nonnull %8) #6, !dbg !418
  br label %50

50:                                               ; preds = %43, %44
  call void @free(i8* %8) #6, !dbg !419
  ret i32 -2, !dbg !420
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_bad_type(i8* %0, i8* %1, i32 %2, i32 %3) local_unnamed_addr #0 !dbg !421 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.halide_type_t, align 2
  %8 = alloca %struct.halide_type_t, align 2
  %9 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !425, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i8* %1, metadata !426, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i32 %2, metadata !427, metadata !DIExpression()), !dbg !431
  store i32 %2, i32* %5, align 4, !tbaa !432
  call void @llvm.dbg.value(metadata i32 %3, metadata !428, metadata !DIExpression()), !dbg !431
  store i32 %3, i32* %6, align 4, !tbaa !432
  %10 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %7, i64 0, i32 0, !dbg !434
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5, !dbg !434
  call void @llvm.dbg.declare(metadata %struct.halide_type_t* %7, metadata !429, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %7, metadata !436, metadata !DIExpression()), !dbg !440
  store i8 0, i8* %10, align 2, !dbg !442, !tbaa !443
  %11 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %7, i64 0, i32 1, !dbg !447
  store i8 0, i8* %11, align 1, !dbg !447, !tbaa !448
  %12 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %7, i64 0, i32 2, !dbg !449
  store i16 0, i16* %12, align 2, !dbg !449, !tbaa !450
  %13 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %8, i64 0, i32 0, !dbg !434
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !434
  call void @llvm.dbg.declare(metadata %struct.halide_type_t* %8, metadata !430, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %8, metadata !436, metadata !DIExpression()), !dbg !452
  store i8 0, i8* %13, align 2, !dbg !454, !tbaa !443
  %14 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %8, i64 0, i32 1, !dbg !455
  store i8 0, i8* %14, align 1, !dbg !455, !tbaa !448
  %15 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %8, i64 0, i32 2, !dbg !456
  store i16 0, i16* %15, align 2, !dbg !456, !tbaa !450
  %16 = bitcast i32* %6 to i8*, !dbg !457
  call void @llvm.dbg.value(metadata i32* %6, metadata !428, metadata !DIExpression(DW_OP_deref)), !dbg !431
  %17 = call i8* @memcpy(i8* nonnull %10, i8* nonnull %16, i64 4) #6, !dbg !458
  %18 = bitcast i32* %5 to i8*, !dbg !459
  call void @llvm.dbg.value(metadata i32* %5, metadata !427, metadata !DIExpression(DW_OP_deref)), !dbg !431
  %19 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %18, i64 4) #6, !dbg !460
  %20 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9 to i8*, !dbg !461
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %20) #5, !dbg !461
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !208, metadata !DIExpression()) #5, !dbg !462
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !462
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !462
  %21 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 3, !dbg !464
  store i8* %0, i8** %21, align 8, !dbg !464, !tbaa !465
  %22 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 4, !dbg !469
  store i8 1, i8* %22, align 8, !dbg !469, !tbaa !470
  %23 = call i8* @malloc(i64 1024) #6, !dbg !471
  %24 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 0, !dbg !472
  store i8* %23, i8** %24, align 8, !dbg !473, !tbaa !474
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 1, !dbg !475
  %26 = icmp eq i8* %23, null, !dbg !476
  br i1 %26, label %29, label %27, !dbg !477

27:                                               ; preds = %4
  %28 = getelementptr inbounds i8, i8* %23, i64 1023, !dbg !478
  store i8 0, i8* %28, align 1, !dbg !479, !tbaa !227
  br label %29, !dbg !480

29:                                               ; preds = %4, %27
  %30 = phi i8* [ %28, %27 ], [ null, %4 ], !dbg !481
  %31 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 2, !dbg !482
  store i8* %30, i8** %31, align 8, !dbg !484
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !232, metadata !DIExpression()) #5, !dbg !485
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !485
  %32 = icmp eq i8* %1, null, !dbg !487
  br i1 %32, label %33, label %35, !dbg !488

33:                                               ; preds = %29
  %34 = call i8* @halide_string_to_string(i8* %23, i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !489
  br label %37, !dbg !490

35:                                               ; preds = %29
  %36 = call i8* @halide_string_to_string(i8* %23, i8* %30, i8* nonnull %1) #6, !dbg !491
  br label %37

37:                                               ; preds = %33, %35
  %38 = phi i8* [ %36, %35 ], [ %34, %33 ], !dbg !492
  store i8* %38, i8** %25, align 8, !dbg !492, !tbaa !493
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !232, metadata !DIExpression()) #5, !dbg !494
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !494
  %39 = load i8*, i8** %31, align 8, !dbg !496, !tbaa !497
  %40 = call i8* @halide_string_to_string(i8* %38, i8* %39, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !498
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !499, metadata !DIExpression()) #5, !dbg !503
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %7, metadata !502, metadata !DIExpression()) #5, !dbg !503
  %41 = call i8* @halide_type_to_string(i8* %40, i8* %39, %struct.halide_type_t* nonnull %7) #6, !dbg !505
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !232, metadata !DIExpression()) #5, !dbg !506
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !506
  %42 = call i8* @halide_string_to_string(i8* %41, i8* %39, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !508
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !499, metadata !DIExpression()) #5, !dbg !509
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %8, metadata !502, metadata !DIExpression()) #5, !dbg !509
  %43 = call i8* @halide_type_to_string(i8* %42, i8* %39, %struct.halide_type_t* nonnull %8) #6, !dbg !511
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !261, metadata !DIExpression()) #5, !dbg !512
  %44 = load i8*, i8** %24, align 8, !dbg !514, !tbaa !474
  %45 = icmp eq i8* %44, null, !dbg !514
  %46 = load i8*, i8** %21, align 8, !dbg !515, !tbaa !465
  br i1 %45, label %54, label %47, !dbg !516

47:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !517
  %48 = ptrtoint i8* %43 to i64, !dbg !519
  %49 = ptrtoint i8* %44 to i64, !dbg !519
  %50 = add i64 %48, 1, !dbg !519
  %51 = sub i64 %50, %49, !dbg !520
  %52 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %46, i8* nonnull %44, i64 %51) #6, !dbg !521
  %53 = load i8*, i8** %24, align 8, !dbg !522, !tbaa !474
  br label %54

54:                                               ; preds = %37, %47
  %55 = phi i8* [ %53, %47 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0), %37 ]
  call void @halide_error(i8* %46, i8* %55) #6, !dbg !515
  %56 = load i8, i8* %22, align 8, !dbg !523, !tbaa !470, !range !524
  %57 = icmp eq i8 %56, 0, !dbg !523
  br i1 %57, label %60, label %58, !dbg !525

58:                                               ; preds = %54
  %59 = load i8*, i8** %24, align 8, !dbg !526, !tbaa !474
  call void @free(i8* %59) #6, !dbg !527
  br label %60, !dbg !528

60:                                               ; preds = %54, %58
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %20) #5, !dbg !461
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !529
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5, !dbg !529
  ret i32 -3, !dbg !530
}

declare !dbg !531 dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_bad_dimensions(i8* %0, i8* %1, i32 %2, i32 %3) local_unnamed_addr #0 !dbg !536 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !540, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i8* %1, metadata !541, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i32 %2, metadata !542, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i32 %3, metadata !543, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !545
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !545
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !545
  %5 = tail call i8* @malloc(i64 1024) #6, !dbg !547
  %6 = icmp eq i8* %5, null, !dbg !548
  br i1 %6, label %9, label %7, !dbg !549

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !550
  store i8 0, i8* %8, align 1, !dbg !551, !tbaa !227
  br label %9, !dbg !552

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !553
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !554
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !554
  %11 = icmp eq i8* %1, null, !dbg !556
  br i1 %11, label %12, label %14, !dbg !557

12:                                               ; preds = %9
  %13 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !558
  br label %16, !dbg !559

14:                                               ; preds = %9
  %15 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull %1) #6, !dbg !560
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ], !dbg !561
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !562
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !562
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %10, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !564
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !565
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !565
  %19 = sext i32 %3 to i64, !dbg !567
  %20 = tail call i8* @halide_int64_to_string(i8* %18, i8* %10, i64 %19, i32 1) #6, !dbg !568
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !569
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !569
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !571
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !572
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !572
  %22 = sext i32 %2 to i64, !dbg !574
  %23 = tail call i8* @halide_int64_to_string(i8* %21, i8* %10, i64 %22, i32 1) #6, !dbg !575
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !576
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !576
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %10, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !578
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !579
  br i1 %6, label %25, label %26, !dbg !581

25:                                               ; preds = %16
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !582
  br label %32, !dbg !583

26:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !584
  %27 = ptrtoint i8* %24 to i64, !dbg !586
  %28 = ptrtoint i8* %5 to i64, !dbg !586
  %29 = add i64 %27, 1, !dbg !586
  %30 = sub i64 %29, %28, !dbg !587
  %31 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %30) #6, !dbg !588
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !589
  br label %32

32:                                               ; preds = %25, %26
  call void @free(i8* %5) #6, !dbg !590
  ret i32 -43, !dbg !591
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_access_out_of_bounds(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 !dbg !592 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !596, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata i8* %1, metadata !597, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata i32 %2, metadata !598, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata i32 %3, metadata !599, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata i32 %4, metadata !600, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata i32 %5, metadata !601, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata i32 %6, metadata !602, metadata !DIExpression()), !dbg !603
  %8 = icmp slt i32 %3, %5, !dbg !604
  br i1 %8, label %9, label %39, !dbg !606

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !607
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !607
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !607
  %10 = tail call i8* @malloc(i64 1024) #6, !dbg !610
  %11 = icmp eq i8* %10, null, !dbg !611
  br i1 %11, label %14, label %12, !dbg !612

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, i8* %10, i64 1023, !dbg !613
  store i8 0, i8* %13, align 1, !dbg !614, !tbaa !227
  br label %14, !dbg !615

14:                                               ; preds = %9, %12
  %15 = phi i8* [ %13, %12 ], [ null, %9 ], !dbg !616
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !617
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !617
  %16 = icmp eq i8* %1, null, !dbg !619
  br i1 %16, label %17, label %19, !dbg !620

17:                                               ; preds = %14
  %18 = tail call i8* @halide_string_to_string(i8* %10, i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !621
  br label %21, !dbg !622

19:                                               ; preds = %14
  %20 = tail call i8* @halide_string_to_string(i8* %10, i8* %15, i8* nonnull %1) #6, !dbg !623
  br label %21

21:                                               ; preds = %17, %19
  %22 = phi i8* [ %20, %19 ], [ %18, %17 ], !dbg !624
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !625
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !625
  %23 = tail call i8* @halide_string_to_string(i8* %22, i8* %15, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !627
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !628
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !628
  %24 = sext i32 %3 to i64, !dbg !630
  %25 = tail call i8* @halide_int64_to_string(i8* %23, i8* %15, i64 %24, i32 1) #6, !dbg !631
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !632
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !632
  %26 = tail call i8* @halide_string_to_string(i8* %25, i8* %15, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !634
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !635
  call void @llvm.dbg.value(metadata i32 %5, metadata !256, metadata !DIExpression()) #5, !dbg !635
  %27 = sext i32 %5 to i64, !dbg !637
  %28 = tail call i8* @halide_int64_to_string(i8* %26, i8* %15, i64 %27, i32 1) #6, !dbg !638
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !639
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !639
  %29 = tail call i8* @halide_string_to_string(i8* %28, i8* %15, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !641
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !642
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !642
  %30 = sext i32 %2 to i64, !dbg !644
  %31 = tail call i8* @halide_int64_to_string(i8* %29, i8* %15, i64 %30, i32 1) #6, !dbg !645
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !646
  br i1 %11, label %32, label %33, !dbg !648

32:                                               ; preds = %21
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !649
  br label %71, !dbg !650

33:                                               ; preds = %21
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !651
  %34 = ptrtoint i8* %31 to i64, !dbg !653
  %35 = ptrtoint i8* %10 to i64, !dbg !653
  %36 = add i64 %34, 1, !dbg !653
  %37 = sub i64 %36, %35, !dbg !654
  %38 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %10, i64 %37) #6, !dbg !655
  tail call void @halide_error(i8* %0, i8* nonnull %10) #6, !dbg !656
  br label %71

39:                                               ; preds = %7
  %40 = icmp sgt i32 %4, %6, !dbg !657
  br i1 %40, label %41, label %73, !dbg !659

41:                                               ; preds = %39
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !660
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !660
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !660
  %42 = tail call i8* @malloc(i64 1024) #6, !dbg !663
  %43 = icmp eq i8* %42, null, !dbg !664
  br i1 %43, label %46, label %44, !dbg !665

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, i8* %42, i64 1023, !dbg !666
  store i8 0, i8* %45, align 1, !dbg !667, !tbaa !227
  br label %46, !dbg !668

46:                                               ; preds = %41, %44
  %47 = phi i8* [ %45, %44 ], [ null, %41 ], !dbg !669
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !670
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !670
  %48 = icmp eq i8* %1, null, !dbg !672
  br i1 %48, label %49, label %51, !dbg !673

49:                                               ; preds = %46
  %50 = tail call i8* @halide_string_to_string(i8* %42, i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !674
  br label %53, !dbg !675

51:                                               ; preds = %46
  %52 = tail call i8* @halide_string_to_string(i8* %42, i8* %47, i8* nonnull %1) #6, !dbg !676
  br label %53

53:                                               ; preds = %49, %51
  %54 = phi i8* [ %52, %51 ], [ %50, %49 ], !dbg !677
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !678
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !678
  %55 = tail call i8* @halide_string_to_string(i8* %54, i8* %47, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !680
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !681
  call void @llvm.dbg.value(metadata i32 %4, metadata !256, metadata !DIExpression()) #5, !dbg !681
  %56 = sext i32 %4 to i64, !dbg !683
  %57 = tail call i8* @halide_int64_to_string(i8* %55, i8* %47, i64 %56, i32 1) #6, !dbg !684
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !685
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !685
  %58 = tail call i8* @halide_string_to_string(i8* %57, i8* %47, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !687
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !688
  call void @llvm.dbg.value(metadata i32 %6, metadata !256, metadata !DIExpression()) #5, !dbg !688
  %59 = sext i32 %6 to i64, !dbg !690
  %60 = tail call i8* @halide_int64_to_string(i8* %58, i8* %47, i64 %59, i32 1) #6, !dbg !691
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !692
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !692
  %61 = tail call i8* @halide_string_to_string(i8* %60, i8* %47, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !694
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !695
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !695
  %62 = sext i32 %2 to i64, !dbg !697
  %63 = tail call i8* @halide_int64_to_string(i8* %61, i8* %47, i64 %62, i32 1) #6, !dbg !698
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !699
  br i1 %43, label %64, label %65, !dbg !701

64:                                               ; preds = %53
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !702
  br label %71, !dbg !703

65:                                               ; preds = %53
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !704
  %66 = ptrtoint i8* %63 to i64, !dbg !706
  %67 = ptrtoint i8* %42 to i64, !dbg !706
  %68 = add i64 %66, 1, !dbg !706
  %69 = sub i64 %68, %67, !dbg !707
  %70 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %42, i64 %69) #6, !dbg !708
  tail call void @halide_error(i8* %0, i8* nonnull %42) #6, !dbg !709
  br label %71

71:                                               ; preds = %65, %64, %33, %32
  %72 = phi i8* [ %10, %32 ], [ %10, %33 ], [ %42, %64 ], [ %42, %65 ]
  call void @free(i8* %72) #6, !dbg !710
  br label %73, !dbg !711

73:                                               ; preds = %71, %39
  ret i32 -4, !dbg !711
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_buffer_allocation_too_large(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !712 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !716, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i8* %1, metadata !717, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i64 %2, metadata !718, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i64 %3, metadata !719, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !721
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !721
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !721
  %5 = tail call i8* @malloc(i64 1024) #6, !dbg !723
  %6 = icmp eq i8* %5, null, !dbg !724
  br i1 %6, label %9, label %7, !dbg !725

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !726
  store i8 0, i8* %8, align 1, !dbg !727, !tbaa !227
  br label %9, !dbg !728

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !729
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !730
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !730
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !732
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !733
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !733
  %12 = icmp eq i8* %1, null, !dbg !735
  br i1 %12, label %13, label %15, !dbg !736

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !737
  br label %17, !dbg !738

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !739
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !740
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !741
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !741
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !743
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !744, metadata !DIExpression()) #5, !dbg !748
  call void @llvm.dbg.value(metadata i64 %2, metadata !747, metadata !DIExpression()) #5, !dbg !748
  %20 = tail call i8* @halide_uint64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #6, !dbg !750
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !751
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !751
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !753
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !744, metadata !DIExpression()) #5, !dbg !754
  call void @llvm.dbg.value(metadata i64 %3, metadata !747, metadata !DIExpression()) #5, !dbg !754
  %22 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #6, !dbg !756
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !757
  br i1 %6, label %23, label %24, !dbg !759

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !760
  br label %30, !dbg !761

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !762
  %25 = ptrtoint i8* %22 to i64, !dbg !764
  %26 = ptrtoint i8* %5 to i64, !dbg !764
  %27 = add i64 %25, 1, !dbg !764
  %28 = sub i64 %27, %26, !dbg !765
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #6, !dbg !766
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !767
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !768
  ret i32 -5, !dbg !769
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_buffer_extents_negative(i8* %0, i8* %1, i32 %2, i32 %3) local_unnamed_addr #0 !dbg !770 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !774, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i8* %1, metadata !775, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 %2, metadata !776, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 %3, metadata !777, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !779
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !779
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !779
  %5 = tail call i8* @malloc(i64 1024) #6, !dbg !781
  %6 = icmp eq i8* %5, null, !dbg !782
  br i1 %6, label %9, label %7, !dbg !783

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !784
  store i8 0, i8* %8, align 1, !dbg !785, !tbaa !227
  br label %9, !dbg !786

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !787
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !788
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !788
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !790
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !791
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !791
  %12 = icmp eq i8* %1, null, !dbg !793
  br i1 %12, label %13, label %15, !dbg !794

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !795
  br label %17, !dbg !796

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !797
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !798
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !799
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !799
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !801
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !802
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !802
  %20 = sext i32 %2 to i64, !dbg !804
  %21 = tail call i8* @halide_int64_to_string(i8* %19, i8* %10, i64 %20, i32 1) #6, !dbg !805
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !806
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !806
  %22 = tail call i8* @halide_string_to_string(i8* %21, i8* %10, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !808
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !809
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !809
  %23 = sext i32 %3 to i64, !dbg !811
  %24 = tail call i8* @halide_int64_to_string(i8* %22, i8* %10, i64 %23, i32 1) #6, !dbg !812
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !813
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !813
  %25 = tail call i8* @halide_string_to_string(i8* %24, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !815
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !816
  br i1 %6, label %26, label %27, !dbg !818

26:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !819
  br label %33, !dbg !820

27:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !821
  %28 = ptrtoint i8* %25 to i64, !dbg !823
  %29 = ptrtoint i8* %5 to i64, !dbg !823
  %30 = add i64 %28, 1, !dbg !823
  %31 = sub i64 %30, %29, !dbg !824
  %32 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %31) #6, !dbg !825
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !826
  br label %33

33:                                               ; preds = %26, %27
  call void @free(i8* %5) #6, !dbg !827
  ret i32 -28, !dbg !828
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_buffer_extents_too_large(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !829 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !833, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i8* %1, metadata !834, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i64 %2, metadata !835, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i64 %3, metadata !836, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !838
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !838
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !838
  %5 = tail call i8* @malloc(i64 1024) #6, !dbg !840
  %6 = icmp eq i8* %5, null, !dbg !841
  br i1 %6, label %9, label %7, !dbg !842

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !843
  store i8 0, i8* %8, align 1, !dbg !844, !tbaa !227
  br label %9, !dbg !845

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !846
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !847
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !847
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !850
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !850
  %12 = icmp eq i8* %1, null, !dbg !852
  br i1 %12, label %13, label %15, !dbg !853

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !854
  br label %17, !dbg !855

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !856
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !857
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !858
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !858
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !860
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !861, metadata !DIExpression()) #5, !dbg !865
  call void @llvm.dbg.value(metadata i64 %2, metadata !864, metadata !DIExpression()) #5, !dbg !865
  %20 = tail call i8* @halide_int64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #6, !dbg !867
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !868
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !868
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !870
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !861, metadata !DIExpression()) #5, !dbg !871
  call void @llvm.dbg.value(metadata i64 %3, metadata !864, metadata !DIExpression()) #5, !dbg !871
  %22 = tail call i8* @halide_int64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #6, !dbg !873
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !874
  br i1 %6, label %23, label %24, !dbg !876

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !877
  br label %30, !dbg !878

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !879
  %25 = ptrtoint i8* %22 to i64, !dbg !881
  %26 = ptrtoint i8* %5 to i64, !dbg !881
  %27 = add i64 %25, 1, !dbg !881
  %28 = sub i64 %27, %26, !dbg !882
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #6, !dbg !883
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !884
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !885
  ret i32 -6, !dbg !886
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_constraints_make_required_region_smaller(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 !dbg !887 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !889, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i8* %1, metadata !890, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 %2, metadata !891, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 %3, metadata !892, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 %4, metadata !893, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 %5, metadata !894, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 %6, metadata !895, metadata !DIExpression()), !dbg !898
  %8 = add i32 %5, -1, !dbg !899
  %9 = add i32 %8, %6, !dbg !900
  call void @llvm.dbg.value(metadata i32 %9, metadata !896, metadata !DIExpression()), !dbg !898
  %10 = add i32 %3, -1, !dbg !901
  %11 = add i32 %10, %4, !dbg !902
  call void @llvm.dbg.value(metadata i32 %11, metadata !897, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !903
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !903
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !903
  %12 = tail call i8* @malloc(i64 1024) #6, !dbg !905
  %13 = icmp eq i8* %12, null, !dbg !906
  br i1 %13, label %16, label %14, !dbg !907

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, i8* %12, i64 1023, !dbg !908
  store i8 0, i8* %15, align 1, !dbg !909, !tbaa !227
  br label %16, !dbg !910

16:                                               ; preds = %7, %14
  %17 = phi i8* [ %15, %14 ], [ null, %7 ], !dbg !911
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !912
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !912
  %18 = tail call i8* @halide_string_to_string(i8* %12, i8* %17, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !914
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !915
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !915
  %19 = icmp eq i8* %1, null, !dbg !917
  br i1 %19, label %20, label %22, !dbg !918

20:                                               ; preds = %16
  %21 = tail call i8* @halide_string_to_string(i8* %18, i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !919
  br label %24, !dbg !920

22:                                               ; preds = %16
  %23 = tail call i8* @halide_string_to_string(i8* %18, i8* %17, i8* nonnull %1) #6, !dbg !921
  br label %24

24:                                               ; preds = %20, %22
  %25 = phi i8* [ %23, %22 ], [ %21, %20 ], !dbg !922
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !923
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !923
  %26 = tail call i8* @halide_string_to_string(i8* %25, i8* %17, i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !925
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !926
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !926
  %27 = sext i32 %2 to i64, !dbg !928
  %28 = tail call i8* @halide_int64_to_string(i8* %26, i8* %17, i64 %27, i32 1) #6, !dbg !929
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !930
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !930
  %29 = tail call i8* @halide_string_to_string(i8* %28, i8* %17, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !932
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !933
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !933
  %30 = tail call i8* @halide_string_to_string(i8* %29, i8* %17, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !935
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !936
  call void @llvm.dbg.value(metadata i32 %5, metadata !256, metadata !DIExpression()) #5, !dbg !936
  %31 = sext i32 %5 to i64, !dbg !938
  %32 = tail call i8* @halide_int64_to_string(i8* %30, i8* %17, i64 %31, i32 1) #6, !dbg !939
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !940
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !940
  %33 = tail call i8* @halide_string_to_string(i8* %32, i8* %17, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !942
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !943
  call void @llvm.dbg.value(metadata i32 %9, metadata !256, metadata !DIExpression()) #5, !dbg !943
  %34 = sext i32 %9 to i64, !dbg !945
  %35 = tail call i8* @halide_int64_to_string(i8* %33, i8* %17, i64 %34, i32 1) #6, !dbg !946
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !947
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !947
  %36 = tail call i8* @halide_string_to_string(i8* %35, i8* %17, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !949
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !950
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !950
  %37 = tail call i8* @halide_string_to_string(i8* %36, i8* %17, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !952
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !953
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !953
  %38 = sext i32 %3 to i64, !dbg !955
  %39 = tail call i8* @halide_int64_to_string(i8* %37, i8* %17, i64 %38, i32 1) #6, !dbg !956
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !957
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !957
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %17, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !959
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !960
  call void @llvm.dbg.value(metadata i32 %11, metadata !256, metadata !DIExpression()) #5, !dbg !960
  %41 = sext i32 %11 to i64, !dbg !962
  %42 = tail call i8* @halide_int64_to_string(i8* %40, i8* %17, i64 %41, i32 1) #6, !dbg !963
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !964
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !964
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %17, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !966
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !967
  br i1 %13, label %44, label %45, !dbg !969

44:                                               ; preds = %24
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !970
  br label %51, !dbg !971

45:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !972
  %46 = ptrtoint i8* %43 to i64, !dbg !974
  %47 = ptrtoint i8* %12 to i64, !dbg !974
  %48 = add i64 %46, 1, !dbg !974
  %49 = sub i64 %48, %47, !dbg !975
  %50 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %12, i64 %49) #6, !dbg !976
  tail call void @halide_error(i8* %0, i8* nonnull %12) #6, !dbg !977
  br label %51

51:                                               ; preds = %44, %45
  call void @free(i8* %12) #6, !dbg !978
  ret i32 -7, !dbg !979
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_constraint_violated(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) local_unnamed_addr #0 !dbg !980 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !984, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %1, metadata !985, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 %2, metadata !986, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %3, metadata !987, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 %4, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !990
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !990
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !990
  %6 = tail call i8* @malloc(i64 1024) #6, !dbg !992
  %7 = icmp eq i8* %6, null, !dbg !993
  br i1 %7, label %10, label %8, !dbg !994

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %6, i64 1023, !dbg !995
  store i8 0, i8* %9, align 1, !dbg !996, !tbaa !227
  br label %10, !dbg !997

10:                                               ; preds = %5, %8
  %11 = phi i8* [ %9, %8 ], [ null, %5 ], !dbg !998
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !999
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !999
  %12 = tail call i8* @halide_string_to_string(i8* %6, i8* %11, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !1001
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1002
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1002
  %13 = icmp eq i8* %1, null, !dbg !1004
  br i1 %13, label %14, label %16, !dbg !1005

14:                                               ; preds = %10
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1006
  br label %18, !dbg !1007

16:                                               ; preds = %10
  %17 = tail call i8* @halide_string_to_string(i8* %12, i8* %11, i8* nonnull %1) #6, !dbg !1008
  br label %18

18:                                               ; preds = %14, %16
  %19 = phi i8* [ %17, %16 ], [ %15, %14 ], !dbg !1009
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1010
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1010
  %20 = tail call i8* @halide_string_to_string(i8* %19, i8* %11, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !1012
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1013
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !1013
  %21 = sext i32 %2 to i64, !dbg !1015
  %22 = tail call i8* @halide_int64_to_string(i8* %20, i8* %11, i64 %21, i32 1) #6, !dbg !1016
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1017
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1017
  %23 = tail call i8* @halide_string_to_string(i8* %22, i8* %11, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0)) #6, !dbg !1019
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1020
  call void @llvm.dbg.value(metadata i8* %3, metadata !235, metadata !DIExpression()) #5, !dbg !1020
  %24 = icmp eq i8* %3, null, !dbg !1022
  br i1 %24, label %25, label %27, !dbg !1023

25:                                               ; preds = %18
  %26 = tail call i8* @halide_string_to_string(i8* %23, i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1024
  br label %29, !dbg !1025

27:                                               ; preds = %18
  %28 = tail call i8* @halide_string_to_string(i8* %23, i8* %11, i8* nonnull %3) #6, !dbg !1026
  br label %29

29:                                               ; preds = %25, %27
  %30 = phi i8* [ %28, %27 ], [ %26, %25 ], !dbg !1027
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1028
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1028
  %31 = tail call i8* @halide_string_to_string(i8* %30, i8* %11, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !1030
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1031
  call void @llvm.dbg.value(metadata i32 %4, metadata !256, metadata !DIExpression()) #5, !dbg !1031
  %32 = sext i32 %4 to i64, !dbg !1033
  %33 = tail call i8* @halide_int64_to_string(i8* %31, i8* %11, i64 %32, i32 1) #6, !dbg !1034
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1035
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1035
  %34 = tail call i8* @halide_string_to_string(i8* %33, i8* %11, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1037
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1038
  br i1 %7, label %35, label %36, !dbg !1040

35:                                               ; preds = %29
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1041
  br label %42, !dbg !1042

36:                                               ; preds = %29
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1043
  %37 = ptrtoint i8* %34 to i64, !dbg !1045
  %38 = ptrtoint i8* %6 to i64, !dbg !1045
  %39 = add i64 %37, 1, !dbg !1045
  %40 = sub i64 %39, %38, !dbg !1046
  %41 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %40) #6, !dbg !1047
  tail call void @halide_error(i8* %0, i8* nonnull %6) #6, !dbg !1048
  br label %42

42:                                               ; preds = %35, %36
  call void @free(i8* %6) #6, !dbg !1049
  ret i32 -8, !dbg !1050
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_param_too_small_i64(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !1051 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1053, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %1, metadata !1054, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %2, metadata !1055, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %3, metadata !1056, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1058
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1058
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1058
  %5 = tail call i8* @malloc(i64 1024) #6, !dbg !1060
  %6 = icmp eq i8* %5, null, !dbg !1061
  br i1 %6, label %9, label %7, !dbg !1062

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !1063
  store i8 0, i8* %8, align 1, !dbg !1064, !tbaa !227
  br label %9, !dbg !1065

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1066
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1067
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1067
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !1069
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1070
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1070
  %12 = icmp eq i8* %1, null, !dbg !1072
  br i1 %12, label %13, label %15, !dbg !1073

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1074
  br label %17, !dbg !1075

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !1076
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1077
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1078
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1078
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !1080
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !861, metadata !DIExpression()) #5, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %2, metadata !864, metadata !DIExpression()) #5, !dbg !1081
  %20 = tail call i8* @halide_int64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #6, !dbg !1083
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1084
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1084
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0)) #6, !dbg !1086
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !861, metadata !DIExpression()) #5, !dbg !1087
  call void @llvm.dbg.value(metadata i64 %3, metadata !864, metadata !DIExpression()) #5, !dbg !1087
  %22 = tail call i8* @halide_int64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #6, !dbg !1089
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1090
  br i1 %6, label %23, label %24, !dbg !1092

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1093
  br label %30, !dbg !1094

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1095
  %25 = ptrtoint i8* %22 to i64, !dbg !1097
  %26 = ptrtoint i8* %5 to i64, !dbg !1097
  %27 = add i64 %25, 1, !dbg !1097
  %28 = sub i64 %27, %26, !dbg !1098
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #6, !dbg !1099
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1100
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !1101
  ret i32 -9, !dbg !1102
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_param_too_small_u64(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !1103 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1105, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8* %1, metadata !1106, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %2, metadata !1107, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %3, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1110
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1110
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1110
  %5 = tail call i8* @malloc(i64 1024) #6, !dbg !1112
  %6 = icmp eq i8* %5, null, !dbg !1113
  br i1 %6, label %9, label %7, !dbg !1114

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !1115
  store i8 0, i8* %8, align 1, !dbg !1116, !tbaa !227
  br label %9, !dbg !1117

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1118
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1119
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1119
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !1121
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1122
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1122
  %12 = icmp eq i8* %1, null, !dbg !1124
  br i1 %12, label %13, label %15, !dbg !1125

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1126
  br label %17, !dbg !1127

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !1128
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1129
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1130
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1130
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !1132
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !744, metadata !DIExpression()) #5, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %2, metadata !747, metadata !DIExpression()) #5, !dbg !1133
  %20 = tail call i8* @halide_uint64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #6, !dbg !1135
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1136
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1136
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0)) #6, !dbg !1138
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !744, metadata !DIExpression()) #5, !dbg !1139
  call void @llvm.dbg.value(metadata i64 %3, metadata !747, metadata !DIExpression()) #5, !dbg !1139
  %22 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #6, !dbg !1141
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1142
  br i1 %6, label %23, label %24, !dbg !1144

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1145
  br label %30, !dbg !1146

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1147
  %25 = ptrtoint i8* %22 to i64, !dbg !1149
  %26 = ptrtoint i8* %5 to i64, !dbg !1149
  %27 = add i64 %25, 1, !dbg !1149
  %28 = sub i64 %27, %26, !dbg !1150
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #6, !dbg !1151
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1152
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !1153
  ret i32 -9, !dbg !1154
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_param_too_small_f64(i8* %0, i8* %1, double %2, double %3) local_unnamed_addr #0 !dbg !1155 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1159, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i8* %1, metadata !1160, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata double %2, metadata !1161, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata double %3, metadata !1162, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1164
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1164
  %5 = tail call i8* @malloc(i64 1024) #6, !dbg !1166
  %6 = icmp eq i8* %5, null, !dbg !1167
  br i1 %6, label %9, label %7, !dbg !1168

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !1169
  store i8 0, i8* %8, align 1, !dbg !1170, !tbaa !227
  br label %9, !dbg !1171

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1172
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1173
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1173
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !1175
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1176
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1176
  %12 = icmp eq i8* %1, null, !dbg !1178
  br i1 %12, label %13, label %15, !dbg !1179

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1180
  br label %17, !dbg !1181

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !1182
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1183
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1184
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1184
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !1186
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1187, metadata !DIExpression()) #5, !dbg !1191
  call void @llvm.dbg.value(metadata double %2, metadata !1190, metadata !DIExpression()) #5, !dbg !1191
  %20 = tail call i8* @halide_double_to_string(i8* %19, i8* %10, double %2, i32 1) #6, !dbg !1193
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1194
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1194
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0)) #6, !dbg !1196
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1187, metadata !DIExpression()) #5, !dbg !1197
  call void @llvm.dbg.value(metadata double %3, metadata !1190, metadata !DIExpression()) #5, !dbg !1197
  %22 = tail call i8* @halide_double_to_string(i8* %21, i8* %10, double %3, i32 1) #6, !dbg !1199
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1200
  br i1 %6, label %23, label %24, !dbg !1202

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1203
  br label %30, !dbg !1204

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1205
  %25 = ptrtoint i8* %22 to i64, !dbg !1207
  %26 = ptrtoint i8* %5 to i64, !dbg !1207
  %27 = add i64 %25, 1, !dbg !1207
  %28 = sub i64 %27, %26, !dbg !1208
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #6, !dbg !1209
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1210
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !1211
  ret i32 -9, !dbg !1212
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_param_too_large_i64(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !1213 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1215, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %1, metadata !1216, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64 %2, metadata !1217, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64 %3, metadata !1218, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1220
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1220
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1220
  %5 = tail call i8* @malloc(i64 1024) #6, !dbg !1222
  %6 = icmp eq i8* %5, null, !dbg !1223
  br i1 %6, label %9, label %7, !dbg !1224

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !1225
  store i8 0, i8* %8, align 1, !dbg !1226, !tbaa !227
  br label %9, !dbg !1227

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1228
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1229
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1229
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !1231
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1232
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1232
  %12 = icmp eq i8* %1, null, !dbg !1234
  br i1 %12, label %13, label %15, !dbg !1235

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1236
  br label %17, !dbg !1237

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !1238
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1239
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1240
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1240
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !1242
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !861, metadata !DIExpression()) #5, !dbg !1243
  call void @llvm.dbg.value(metadata i64 %2, metadata !864, metadata !DIExpression()) #5, !dbg !1243
  %20 = tail call i8* @halide_int64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #6, !dbg !1245
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1246
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1246
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0)) #6, !dbg !1248
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !861, metadata !DIExpression()) #5, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %3, metadata !864, metadata !DIExpression()) #5, !dbg !1249
  %22 = tail call i8* @halide_int64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #6, !dbg !1251
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1252
  br i1 %6, label %23, label %24, !dbg !1254

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1255
  br label %30, !dbg !1256

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1257
  %25 = ptrtoint i8* %22 to i64, !dbg !1259
  %26 = ptrtoint i8* %5 to i64, !dbg !1259
  %27 = add i64 %25, 1, !dbg !1259
  %28 = sub i64 %27, %26, !dbg !1260
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #6, !dbg !1261
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1262
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !1263
  ret i32 -10, !dbg !1264
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_param_too_large_u64(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !1265 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1267, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8* %1, metadata !1268, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %2, metadata !1269, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %3, metadata !1270, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1272
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1272
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1272
  %5 = tail call i8* @malloc(i64 1024) #6, !dbg !1274
  %6 = icmp eq i8* %5, null, !dbg !1275
  br i1 %6, label %9, label %7, !dbg !1276

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !1277
  store i8 0, i8* %8, align 1, !dbg !1278, !tbaa !227
  br label %9, !dbg !1279

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1280
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1281
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1281
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !1283
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1284
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1284
  %12 = icmp eq i8* %1, null, !dbg !1286
  br i1 %12, label %13, label %15, !dbg !1287

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1288
  br label %17, !dbg !1289

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !1290
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1291
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1292
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1292
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !1294
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !744, metadata !DIExpression()) #5, !dbg !1295
  call void @llvm.dbg.value(metadata i64 %2, metadata !747, metadata !DIExpression()) #5, !dbg !1295
  %20 = tail call i8* @halide_uint64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #6, !dbg !1297
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1298
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1298
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0)) #6, !dbg !1300
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !744, metadata !DIExpression()) #5, !dbg !1301
  call void @llvm.dbg.value(metadata i64 %3, metadata !747, metadata !DIExpression()) #5, !dbg !1301
  %22 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #6, !dbg !1303
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1304
  br i1 %6, label %23, label %24, !dbg !1306

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1307
  br label %30, !dbg !1308

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1309
  %25 = ptrtoint i8* %22 to i64, !dbg !1311
  %26 = ptrtoint i8* %5 to i64, !dbg !1311
  %27 = add i64 %25, 1, !dbg !1311
  %28 = sub i64 %27, %26, !dbg !1312
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #6, !dbg !1313
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1314
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !1315
  ret i32 -10, !dbg !1316
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_param_too_large_f64(i8* %0, i8* %1, double %2, double %3) local_unnamed_addr #0 !dbg !1317 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1319, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i8* %1, metadata !1320, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata double %2, metadata !1321, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata double %3, metadata !1322, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1324
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1324
  %5 = tail call i8* @malloc(i64 1024) #6, !dbg !1326
  %6 = icmp eq i8* %5, null, !dbg !1327
  br i1 %6, label %9, label %7, !dbg !1328

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !1329
  store i8 0, i8* %8, align 1, !dbg !1330, !tbaa !227
  br label %9, !dbg !1331

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1332
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1333
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1333
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !1335
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1336
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1336
  %12 = icmp eq i8* %1, null, !dbg !1338
  br i1 %12, label %13, label %15, !dbg !1339

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1340
  br label %17, !dbg !1341

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !1342
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1343
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1344
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1344
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !1346
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1187, metadata !DIExpression()) #5, !dbg !1347
  call void @llvm.dbg.value(metadata double %2, metadata !1190, metadata !DIExpression()) #5, !dbg !1347
  %20 = tail call i8* @halide_double_to_string(i8* %19, i8* %10, double %2, i32 1) #6, !dbg !1349
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1350
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1350
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0)) #6, !dbg !1352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1187, metadata !DIExpression()) #5, !dbg !1353
  call void @llvm.dbg.value(metadata double %3, metadata !1190, metadata !DIExpression()) #5, !dbg !1353
  %22 = tail call i8* @halide_double_to_string(i8* %21, i8* %10, double %3, i32 1) #6, !dbg !1355
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1356
  br i1 %6, label %23, label %24, !dbg !1358

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1359
  br label %30, !dbg !1360

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1361
  %25 = ptrtoint i8* %22 to i64, !dbg !1363
  %26 = ptrtoint i8* %5 to i64, !dbg !1363
  %27 = add i64 %25, 1, !dbg !1363
  %28 = sub i64 %27, %26, !dbg !1364
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #6, !dbg !1365
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1366
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !1367
  ret i32 -10, !dbg !1368
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_error_out_of_memory(i8* %0) local_unnamed_addr #4 !dbg !1369 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1373, metadata !DIExpression()), !dbg !1374
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.37, i64 0, i64 0)) #6, !dbg !1375
  ret i32 -11, !dbg !1376
}

declare !dbg !1377 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_buffer_argument_is_null(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1380 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1384, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %1, metadata !1385, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1387
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1387
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1387
  %3 = tail call i8* @malloc(i64 1024) #6, !dbg !1389
  %4 = icmp eq i8* %3, null, !dbg !1390
  br i1 %4, label %7, label %5, !dbg !1391

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !1392
  store i8 0, i8* %6, align 1, !dbg !1393, !tbaa !227
  br label %7, !dbg !1394

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1395
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1396
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1396
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0)) #6, !dbg !1398
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1399
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1399
  %10 = icmp eq i8* %1, null, !dbg !1401
  br i1 %10, label %11, label %13, !dbg !1402

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1403
  br label %15, !dbg !1404

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #6, !dbg !1405
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ], !dbg !1406
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1407
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1407
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %8, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0)) #6, !dbg !1409
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1410
  br i1 %4, label %18, label %19, !dbg !1412

18:                                               ; preds = %15
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1413
  br label %25, !dbg !1414

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1415
  %20 = ptrtoint i8* %17 to i64, !dbg !1417
  %21 = ptrtoint i8* %3 to i64, !dbg !1417
  %22 = add i64 %20, 1, !dbg !1417
  %23 = sub i64 %22, %21, !dbg !1418
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %23) #6, !dbg !1419
  tail call void @halide_error(i8* %0, i8* nonnull %3) #6, !dbg !1420
  br label %25

25:                                               ; preds = %19, %18
  tail call void @free(i8* %3) #6, !dbg !1421
  ret i32 -12, !dbg !1422
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_debug_to_file_failed(i8* %0, i8* %1, i8* %2, i32 %3) local_unnamed_addr #0 !dbg !1423 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1427, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i8* %1, metadata !1428, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i8* %2, metadata !1429, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i32 %3, metadata !1430, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1432
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1432
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1432
  %5 = tail call i8* @malloc(i64 1024) #6, !dbg !1434
  %6 = icmp eq i8* %5, null, !dbg !1435
  br i1 %6, label %9, label %7, !dbg !1436

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !1437
  store i8 0, i8* %8, align 1, !dbg !1438, !tbaa !227
  br label %9, !dbg !1439

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1440
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1441
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1441
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0)) #6, !dbg !1443
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1444
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1444
  %12 = icmp eq i8* %1, null, !dbg !1446
  br i1 %12, label %13, label %15, !dbg !1447

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1448
  br label %17, !dbg !1449

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !1450
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1451
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1452
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1452
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !1454
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1455
  call void @llvm.dbg.value(metadata i8* %2, metadata !235, metadata !DIExpression()) #5, !dbg !1455
  %20 = icmp eq i8* %2, null, !dbg !1457
  br i1 %20, label %21, label %23, !dbg !1458

21:                                               ; preds = %17
  %22 = tail call i8* @halide_string_to_string(i8* %19, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1459
  br label %25, !dbg !1460

23:                                               ; preds = %17
  %24 = tail call i8* @halide_string_to_string(i8* %19, i8* %10, i8* nonnull %2) #6, !dbg !1461
  br label %25

25:                                               ; preds = %21, %23
  %26 = phi i8* [ %24, %23 ], [ %22, %21 ], !dbg !1462
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1463
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1463
  %27 = tail call i8* @halide_string_to_string(i8* %26, i8* %10, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0)) #6, !dbg !1465
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1466
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !1466
  %28 = sext i32 %3 to i64, !dbg !1468
  %29 = tail call i8* @halide_int64_to_string(i8* %27, i8* %10, i64 %28, i32 1) #6, !dbg !1469
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1470
  br i1 %6, label %30, label %31, !dbg !1472

30:                                               ; preds = %25
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1473
  br label %37, !dbg !1474

31:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1475
  %32 = ptrtoint i8* %29 to i64, !dbg !1477
  %33 = ptrtoint i8* %5 to i64, !dbg !1477
  %34 = add i64 %32, 1, !dbg !1477
  %35 = sub i64 %34, %33, !dbg !1478
  %36 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %35) #6, !dbg !1479
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1480
  br label %37

37:                                               ; preds = %30, %31
  call void @free(i8* %5) #6, !dbg !1481
  ret i32 -13, !dbg !1482
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_unaligned_host_ptr(i8* %0, i8* %1, i32 %2) local_unnamed_addr #0 !dbg !1483 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1485, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8* %1, metadata !1486, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i32 %2, metadata !1487, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1489
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1489
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1489
  %4 = tail call i8* @malloc(i64 1024) #6, !dbg !1491
  %5 = icmp eq i8* %4, null, !dbg !1492
  br i1 %5, label %8, label %6, !dbg !1493

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i64 1023, !dbg !1494
  store i8 0, i8* %7, align 1, !dbg !1495, !tbaa !227
  br label %8, !dbg !1496

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ], !dbg !1497
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1498
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1498
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0)) #6, !dbg !1500
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1501
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1501
  %11 = icmp eq i8* %1, null, !dbg !1503
  br i1 %11, label %12, label %14, !dbg !1504

12:                                               ; preds = %8
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1505
  br label %16, !dbg !1506

14:                                               ; preds = %8
  %15 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* nonnull %1) #6, !dbg !1507
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ], !dbg !1508
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1509
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1509
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %9, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0)) #6, !dbg !1511
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1512
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !1512
  %19 = sext i32 %2 to i64, !dbg !1514
  %20 = tail call i8* @halide_int64_to_string(i8* %18, i8* %9, i64 %19, i32 1) #6, !dbg !1515
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1516
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1516
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %9, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0)) #6, !dbg !1518
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1519
  br i1 %5, label %22, label %23, !dbg !1521

22:                                               ; preds = %16
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1522
  br label %29, !dbg !1523

23:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1524
  %24 = ptrtoint i8* %21 to i64, !dbg !1526
  %25 = ptrtoint i8* %4 to i64, !dbg !1526
  %26 = add i64 %24, 1, !dbg !1526
  %27 = sub i64 %26, %25, !dbg !1527
  %28 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %27) #6, !dbg !1528
  tail call void @halide_error(i8* %0, i8* nonnull %4) #6, !dbg !1529
  br label %29

29:                                               ; preds = %22, %23
  call void @free(i8* %4) #6, !dbg !1530
  ret i32 -24, !dbg !1531
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_device_dirty_with_no_device_support(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1532 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1534, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8* %1, metadata !1535, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1537
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1537
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1537
  %3 = tail call i8* @malloc(i64 1024) #6, !dbg !1539
  %4 = icmp eq i8* %3, null, !dbg !1540
  br i1 %4, label %7, label %5, !dbg !1541

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !1542
  store i8 0, i8* %6, align 1, !dbg !1543, !tbaa !227
  br label %7, !dbg !1544

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1545
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1546
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1546
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #6, !dbg !1548
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1549
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1549
  %10 = icmp eq i8* %1, null, !dbg !1551
  br i1 %10, label %11, label %13, !dbg !1552

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1553
  br label %15, !dbg !1554

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #6, !dbg !1555
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ], !dbg !1556
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1557
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.47, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1557
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %8, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.47, i64 0, i64 0)) #6, !dbg !1559
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1560
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.48, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1560
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %8, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.48, i64 0, i64 0)) #6, !dbg !1562
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1563
  br i1 %4, label %19, label %20, !dbg !1565

19:                                               ; preds = %15
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1566
  br label %26, !dbg !1567

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1568
  %21 = ptrtoint i8* %18 to i64, !dbg !1570
  %22 = ptrtoint i8* %3 to i64, !dbg !1570
  %23 = add i64 %21, 1, !dbg !1570
  %24 = sub i64 %23, %22, !dbg !1571
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %24) #6, !dbg !1572
  tail call void @halide_error(i8* %0, i8* nonnull %3) #6, !dbg !1573
  br label %26

26:                                               ; preds = %19, %20
  call void @free(i8* %3) #6, !dbg !1574
  ret i32 -44, !dbg !1575
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_host_is_null(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1576 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1578, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata i8* %1, metadata !1579, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1581
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1581
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1581
  %3 = tail call i8* @malloc(i64 1024) #6, !dbg !1583
  %4 = icmp eq i8* %3, null, !dbg !1584
  br i1 %4, label %7, label %5, !dbg !1585

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !1586
  store i8 0, i8* %6, align 1, !dbg !1587, !tbaa !227
  br label %7, !dbg !1588

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1589
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1590
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1590
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0)) #6, !dbg !1592
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1593
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1593
  %10 = icmp eq i8* %1, null, !dbg !1595
  br i1 %10, label %11, label %13, !dbg !1596

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1597
  br label %15, !dbg !1598

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #6, !dbg !1599
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ], !dbg !1600
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1601
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.49, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1601
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %8, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.49, i64 0, i64 0)) #6, !dbg !1603
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1604
  br i1 %4, label %18, label %19, !dbg !1606

18:                                               ; preds = %15
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1607
  br label %25, !dbg !1608

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1609
  %20 = ptrtoint i8* %17 to i64, !dbg !1611
  %21 = ptrtoint i8* %3 to i64, !dbg !1611
  %22 = add i64 %20, 1, !dbg !1611
  %23 = sub i64 %22, %21, !dbg !1612
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %23) #6, !dbg !1613
  tail call void @halide_error(i8* %0, i8* nonnull %3) #6, !dbg !1614
  br label %25

25:                                               ; preds = %19, %18
  tail call void @free(i8* %3) #6, !dbg !1615
  ret i32 -34, !dbg !1616
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_bad_fold(i8* %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #0 !dbg !1617 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1621, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8* %1, metadata !1622, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8* %2, metadata !1623, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8* %3, metadata !1624, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1626
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1626
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1626
  %5 = tail call i8* @malloc(i64 1024) #6, !dbg !1628
  %6 = icmp eq i8* %5, null, !dbg !1629
  br i1 %6, label %9, label %7, !dbg !1630

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !1631
  store i8 0, i8* %8, align 1, !dbg !1632, !tbaa !227
  br label %9, !dbg !1633

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1634
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1635
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1635
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0)) #6, !dbg !1637
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1638
  call void @llvm.dbg.value(metadata i8* %2, metadata !235, metadata !DIExpression()) #5, !dbg !1638
  %12 = icmp eq i8* %2, null, !dbg !1640
  br i1 %12, label %13, label %15, !dbg !1641

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1642
  br label %17, !dbg !1643

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %2) #6, !dbg !1644
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1645
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1646
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1646
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0)) #6, !dbg !1648
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1649
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1649
  %20 = icmp eq i8* %1, null, !dbg !1651
  br i1 %20, label %21, label %23, !dbg !1652

21:                                               ; preds = %17
  %22 = tail call i8* @halide_string_to_string(i8* %19, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1653
  br label %25, !dbg !1654

23:                                               ; preds = %17
  %24 = tail call i8* @halide_string_to_string(i8* %19, i8* %10, i8* nonnull %1) #6, !dbg !1655
  br label %25

25:                                               ; preds = %21, %23
  %26 = phi i8* [ %24, %23 ], [ %22, %21 ], !dbg !1656
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1657
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1657
  %27 = tail call i8* @halide_string_to_string(i8* %26, i8* %10, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0)) #6, !dbg !1659
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1660
  call void @llvm.dbg.value(metadata i8* %3, metadata !235, metadata !DIExpression()) #5, !dbg !1660
  %28 = icmp eq i8* %3, null, !dbg !1662
  br i1 %28, label %29, label %31, !dbg !1663

29:                                               ; preds = %25
  %30 = tail call i8* @halide_string_to_string(i8* %27, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1664
  br label %33, !dbg !1665

31:                                               ; preds = %25
  %32 = tail call i8* @halide_string_to_string(i8* %27, i8* %10, i8* nonnull %3) #6, !dbg !1666
  br label %33

33:                                               ; preds = %29, %31
  %34 = phi i8* [ %32, %31 ], [ %30, %29 ], !dbg !1667
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1668
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1668
  %35 = tail call i8* @halide_string_to_string(i8* %34, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !1670
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1671
  br i1 %6, label %36, label %37, !dbg !1673

36:                                               ; preds = %33
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1674
  br label %43, !dbg !1675

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1676
  %38 = ptrtoint i8* %35 to i64, !dbg !1678
  %39 = ptrtoint i8* %5 to i64, !dbg !1678
  %40 = add i64 %38, 1, !dbg !1678
  %41 = sub i64 %40, %39, !dbg !1679
  %42 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %41) #6, !dbg !1680
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1681
  br label %43

43:                                               ; preds = %36, %37
  call void @free(i8* %5) #6, !dbg !1682
  ret i32 -25, !dbg !1683
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_bad_extern_fold(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 !dbg !1684 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8* %1, metadata !1687, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i32 %2, metadata !1688, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i32 %3, metadata !1689, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i32 %4, metadata !1690, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i32 %5, metadata !1691, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i32 %6, metadata !1692, metadata !DIExpression()), !dbg !1693
  %8 = icmp slt i32 %3, %5, !dbg !1694
  br i1 %8, label %13, label %9, !dbg !1696

9:                                                ; preds = %7
  %10 = add nsw i32 %4, %3, !dbg !1697
  %11 = add nsw i32 %6, %5, !dbg !1698
  %12 = icmp sgt i32 %10, %11, !dbg !1699
  br i1 %12, label %13, label %56, !dbg !1700

13:                                               ; preds = %9, %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1701
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1701
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1701
  %14 = tail call i8* @malloc(i64 1024) #6, !dbg !1704
  %15 = icmp eq i8* %14, null, !dbg !1705
  br i1 %15, label %18, label %16, !dbg !1706

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, i8* %14, i64 1023, !dbg !1707
  store i8 0, i8* %17, align 1, !dbg !1708, !tbaa !227
  br label %18, !dbg !1709

18:                                               ; preds = %13, %16
  %19 = phi i8* [ %17, %16 ], [ null, %13 ], !dbg !1710
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1711
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1711
  %20 = tail call i8* @halide_string_to_string(i8* %14, i8* %19, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i64 0, i64 0)) #6, !dbg !1713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1714
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !1714
  %21 = sext i32 %2 to i64, !dbg !1716
  %22 = tail call i8* @halide_int64_to_string(i8* %20, i8* %19, i64 %21, i32 1) #6, !dbg !1717
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1718
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1718
  %23 = tail call i8* @halide_string_to_string(i8* %22, i8* %19, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0)) #6, !dbg !1720
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1721
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1721
  %24 = icmp eq i8* %1, null, !dbg !1723
  br i1 %24, label %25, label %27, !dbg !1724

25:                                               ; preds = %18
  %26 = tail call i8* @halide_string_to_string(i8* %23, i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1725
  br label %29, !dbg !1726

27:                                               ; preds = %18
  %28 = tail call i8* @halide_string_to_string(i8* %23, i8* %19, i8* nonnull %1) #6, !dbg !1727
  br label %29

29:                                               ; preds = %25, %27
  %30 = phi i8* [ %28, %27 ], [ %26, %25 ], !dbg !1728
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1729
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1729
  %31 = tail call i8* @halide_string_to_string(i8* %30, i8* %19, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0)) #6, !dbg !1731
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1732
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !1732
  %32 = sext i32 %3 to i64, !dbg !1734
  %33 = tail call i8* @halide_int64_to_string(i8* %31, i8* %19, i64 %32, i32 1) #6, !dbg !1735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1736
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1736
  %34 = tail call i8* @halide_string_to_string(i8* %33, i8* %19, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #6, !dbg !1738
  %35 = add nsw i32 %4, %3, !dbg !1739
  %36 = add nsw i32 %35, -1, !dbg !1740
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1741
  call void @llvm.dbg.value(metadata i32 %36, metadata !256, metadata !DIExpression()) #5, !dbg !1741
  %37 = sext i32 %36 to i64, !dbg !1743
  %38 = tail call i8* @halide_int64_to_string(i8* %34, i8* %19, i64 %37, i32 1) #6, !dbg !1744
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1745
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1745
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %19, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #6, !dbg !1747
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1748
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.57, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1748
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %19, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.57, i64 0, i64 0)) #6, !dbg !1750
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1751
  call void @llvm.dbg.value(metadata i32 %5, metadata !256, metadata !DIExpression()) #5, !dbg !1751
  %41 = sext i32 %5 to i64, !dbg !1753
  %42 = tail call i8* @halide_int64_to_string(i8* %40, i8* %19, i64 %41, i32 1) #6, !dbg !1754
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1755
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1755
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %19, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #6, !dbg !1757
  %44 = add nsw i32 %6, %5, !dbg !1758
  %45 = add nsw i32 %44, -1, !dbg !1759
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1760
  call void @llvm.dbg.value(metadata i32 %45, metadata !256, metadata !DIExpression()) #5, !dbg !1760
  %46 = sext i32 %45 to i64, !dbg !1762
  %47 = tail call i8* @halide_int64_to_string(i8* %43, i8* %19, i64 %46, i32 1) #6, !dbg !1763
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1764
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1764
  %48 = tail call i8* @halide_string_to_string(i8* %47, i8* %19, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0)) #6, !dbg !1766
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1767
  br i1 %15, label %49, label %50, !dbg !1769

49:                                               ; preds = %29
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1770
  br label %94, !dbg !1771

50:                                               ; preds = %29
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1772
  %51 = ptrtoint i8* %48 to i64, !dbg !1774
  %52 = ptrtoint i8* %14 to i64, !dbg !1774
  %53 = add i64 %51, 1, !dbg !1774
  %54 = sub i64 %53, %52, !dbg !1775
  %55 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %14, i64 %54) #6, !dbg !1776
  tail call void @halide_error(i8* %0, i8* nonnull %14) #6, !dbg !1777
  br label %94

56:                                               ; preds = %9
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1778
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1778
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1778
  %57 = tail call i8* @malloc(i64 1024) #6, !dbg !1781
  %58 = icmp eq i8* %57, null, !dbg !1782
  br i1 %58, label %61, label %59, !dbg !1783

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, i8* %57, i64 1023, !dbg !1784
  store i8 0, i8* %60, align 1, !dbg !1785, !tbaa !227
  br label %61, !dbg !1786

61:                                               ; preds = %56, %59
  %62 = phi i8* [ %60, %59 ], [ null, %56 ], !dbg !1787
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1788
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1788
  %63 = tail call i8* @halide_string_to_string(i8* %57, i8* %62, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i64 0, i64 0)) #6, !dbg !1790
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1791
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !1791
  %64 = sext i32 %2 to i64, !dbg !1793
  %65 = tail call i8* @halide_int64_to_string(i8* %63, i8* %62, i64 %64, i32 1) #6, !dbg !1794
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1795
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1795
  %66 = tail call i8* @halide_string_to_string(i8* %65, i8* %62, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0)) #6, !dbg !1797
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1798
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1798
  %67 = icmp eq i8* %1, null, !dbg !1800
  br i1 %67, label %68, label %70, !dbg !1801

68:                                               ; preds = %61
  %69 = tail call i8* @halide_string_to_string(i8* %66, i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1802
  br label %72, !dbg !1803

70:                                               ; preds = %61
  %71 = tail call i8* @halide_string_to_string(i8* %66, i8* %62, i8* nonnull %1) #6, !dbg !1804
  br label %72

72:                                               ; preds = %68, %70
  %73 = phi i8* [ %71, %70 ], [ %69, %68 ], !dbg !1805
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1806
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1806
  %74 = tail call i8* @halide_string_to_string(i8* %73, i8* %62, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0)) #6, !dbg !1808
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1809
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !1809
  %75 = sext i32 %3 to i64, !dbg !1811
  %76 = tail call i8* @halide_int64_to_string(i8* %74, i8* %62, i64 %75, i32 1) #6, !dbg !1812
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1813
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1813
  %77 = tail call i8* @halide_string_to_string(i8* %76, i8* %62, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #6, !dbg !1815
  %78 = add nsw i32 %10, -1, !dbg !1816
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1817
  call void @llvm.dbg.value(metadata i32 %78, metadata !256, metadata !DIExpression()) #5, !dbg !1817
  %79 = sext i32 %78 to i64, !dbg !1819
  %80 = tail call i8* @halide_int64_to_string(i8* %77, i8* %62, i64 %79, i32 1) #6, !dbg !1820
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1821
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1821
  %81 = tail call i8* @halide_string_to_string(i8* %80, i8* %62, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #6, !dbg !1823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1824
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.59, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1824
  %82 = tail call i8* @halide_string_to_string(i8* %81, i8* %62, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.59, i64 0, i64 0)) #6, !dbg !1826
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1827
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1827
  %83 = tail call i8* @halide_string_to_string(i8* %82, i8* %62, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i64 0, i64 0)) #6, !dbg !1829
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1830
  call void @llvm.dbg.value(metadata i32 %6, metadata !256, metadata !DIExpression()) #5, !dbg !1830
  %84 = sext i32 %6 to i64, !dbg !1832
  %85 = tail call i8* @halide_int64_to_string(i8* %83, i8* %62, i64 %84, i32 1) #6, !dbg !1833
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1834
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1834
  %86 = tail call i8* @halide_string_to_string(i8* %85, i8* %62, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !1836
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1837
  br i1 %58, label %87, label %88, !dbg !1839

87:                                               ; preds = %72
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1840
  br label %94, !dbg !1841

88:                                               ; preds = %72
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1842
  %89 = ptrtoint i8* %86 to i64, !dbg !1844
  %90 = ptrtoint i8* %57 to i64, !dbg !1844
  %91 = add i64 %89, 1, !dbg !1844
  %92 = sub i64 %91, %90, !dbg !1845
  %93 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %57, i64 %92) #6, !dbg !1846
  tail call void @halide_error(i8* %0, i8* nonnull %57) #6, !dbg !1847
  br label %94

94:                                               ; preds = %88, %87, %50, %49
  %95 = phi i8* [ %14, %49 ], [ %14, %50 ], [ %57, %87 ], [ %57, %88 ]
  call void @free(i8* %95) #6, !dbg !1848
  ret i32 -35, !dbg !1849
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_fold_factor_too_small(i8* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5) local_unnamed_addr #0 !dbg !1850 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1854, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* %1, metadata !1855, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* %2, metadata !1856, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 %3, metadata !1857, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* %4, metadata !1858, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 %5, metadata !1859, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1861
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1861
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1861
  %7 = tail call i8* @malloc(i64 1024) #6, !dbg !1863
  %8 = icmp eq i8* %7, null, !dbg !1864
  br i1 %8, label %11, label %9, !dbg !1865

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i64 1023, !dbg !1866
  store i8 0, i8* %10, align 1, !dbg !1867, !tbaa !227
  br label %11, !dbg !1868

11:                                               ; preds = %6, %9
  %12 = phi i8* [ %10, %9 ], [ null, %6 ], !dbg !1869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1870
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1870
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %12, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i64 0, i64 0)) #6, !dbg !1872
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1873
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !1873
  %14 = sext i32 %3 to i64, !dbg !1875
  %15 = tail call i8* @halide_int64_to_string(i8* %13, i8* %12, i64 %14, i32 1) #6, !dbg !1876
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1877
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1877
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %12, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i64 0, i64 0)) #6, !dbg !1879
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1880
  call void @llvm.dbg.value(metadata i8* %2, metadata !235, metadata !DIExpression()) #5, !dbg !1880
  %17 = icmp eq i8* %2, null, !dbg !1882
  br i1 %17, label %18, label %20, !dbg !1883

18:                                               ; preds = %11
  %19 = tail call i8* @halide_string_to_string(i8* %16, i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1884
  br label %22, !dbg !1885

20:                                               ; preds = %11
  %21 = tail call i8* @halide_string_to_string(i8* %16, i8* %12, i8* nonnull %2) #6, !dbg !1886
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i8* [ %21, %20 ], [ %19, %18 ], !dbg !1887
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1888
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1888
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %12, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0)) #6, !dbg !1890
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1891
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1891
  %25 = icmp eq i8* %1, null, !dbg !1893
  br i1 %25, label %26, label %28, !dbg !1894

26:                                               ; preds = %22
  %27 = tail call i8* @halide_string_to_string(i8* %24, i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1895
  br label %30, !dbg !1896

28:                                               ; preds = %22
  %29 = tail call i8* @halide_string_to_string(i8* %24, i8* %12, i8* nonnull %1) #6, !dbg !1897
  br label %30

30:                                               ; preds = %26, %28
  %31 = phi i8* [ %29, %28 ], [ %27, %26 ], !dbg !1898
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1899
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.63, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1899
  %32 = tail call i8* @halide_string_to_string(i8* %31, i8* %12, i8* nonnull getelementptr inbounds ([61 x i8], [61 x i8]* @.str.63, i64 0, i64 0)) #6, !dbg !1901
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1902
  call void @llvm.dbg.value(metadata i8* %4, metadata !235, metadata !DIExpression()) #5, !dbg !1902
  %33 = icmp eq i8* %4, null, !dbg !1904
  br i1 %33, label %34, label %36, !dbg !1905

34:                                               ; preds = %30
  %35 = tail call i8* @halide_string_to_string(i8* %32, i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1906
  br label %38, !dbg !1907

36:                                               ; preds = %30
  %37 = tail call i8* @halide_string_to_string(i8* %32, i8* %12, i8* nonnull %4) #6, !dbg !1908
  br label %38

38:                                               ; preds = %34, %36
  %39 = phi i8* [ %37, %36 ], [ %35, %34 ], !dbg !1909
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1910
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1910
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %12, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !1912
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1913
  call void @llvm.dbg.value(metadata i32 %5, metadata !256, metadata !DIExpression()) #5, !dbg !1913
  %41 = sext i32 %5 to i64, !dbg !1915
  %42 = tail call i8* @halide_int64_to_string(i8* %40, i8* %12, i64 %41, i32 1) #6, !dbg !1916
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1917
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1917
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %12, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0)) #6, !dbg !1919
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1920
  br i1 %8, label %44, label %45, !dbg !1922

44:                                               ; preds = %38
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1923
  br label %51, !dbg !1924

45:                                               ; preds = %38
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1925
  %46 = ptrtoint i8* %43 to i64, !dbg !1927
  %47 = ptrtoint i8* %7 to i64, !dbg !1927
  %48 = add i64 %46, 1, !dbg !1927
  %49 = sub i64 %48, %47, !dbg !1928
  %50 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %49) #6, !dbg !1929
  tail call void @halide_error(i8* %0, i8* nonnull %7) #6, !dbg !1930
  br label %51

51:                                               ; preds = %44, %45
  call void @free(i8* %7) #6, !dbg !1931
  ret i32 -26, !dbg !1932
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_requirement_failed(i8* %0, i8* %1, i8* %2) local_unnamed_addr #0 !dbg !1933 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1937, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i8* %1, metadata !1938, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i8* %2, metadata !1939, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1941
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1941
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1941
  %4 = tail call i8* @malloc(i64 1024) #6, !dbg !1943
  %5 = icmp eq i8* %4, null, !dbg !1944
  br i1 %5, label %8, label %6, !dbg !1945

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i64 1023, !dbg !1946
  store i8 0, i8* %7, align 1, !dbg !1947, !tbaa !227
  br label %8, !dbg !1948

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ], !dbg !1949
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1950
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1950
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0)) #6, !dbg !1952
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1953
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1953
  %11 = icmp eq i8* %1, null, !dbg !1955
  br i1 %11, label %12, label %14, !dbg !1956

12:                                               ; preds = %8
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1957
  br label %16, !dbg !1958

14:                                               ; preds = %8
  %15 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* nonnull %1) #6, !dbg !1959
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ], !dbg !1960
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1961
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1961
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %9, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #6, !dbg !1963
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1964
  call void @llvm.dbg.value(metadata i8* %2, metadata !235, metadata !DIExpression()) #5, !dbg !1964
  %19 = icmp eq i8* %2, null, !dbg !1966
  br i1 %19, label %20, label %22, !dbg !1967

20:                                               ; preds = %16
  %21 = tail call i8* @halide_string_to_string(i8* %18, i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !1968
  br label %24, !dbg !1969

22:                                               ; preds = %16
  %23 = tail call i8* @halide_string_to_string(i8* %18, i8* %9, i8* nonnull %2) #6, !dbg !1970
  br label %24

24:                                               ; preds = %20, %22
  %25 = phi i8* [ %23, %22 ], [ %21, %20 ], !dbg !1971
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1972
  br i1 %5, label %26, label %27, !dbg !1974

26:                                               ; preds = %24
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !1975
  br label %33, !dbg !1976

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1977
  %28 = ptrtoint i8* %25 to i64, !dbg !1979
  %29 = ptrtoint i8* %4 to i64, !dbg !1979
  %30 = sub i64 1, %29, !dbg !1979
  %31 = add i64 %30, %28, !dbg !1980
  %32 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %31) #6, !dbg !1981
  tail call void @halide_error(i8* %0, i8* nonnull %4) #6, !dbg !1982
  br label %33

33:                                               ; preds = %26, %27
  call void @free(i8* %4) #6, !dbg !1983
  ret i32 -27, !dbg !1984
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_specialize_fail(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1985 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1987, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8* %1, metadata !1988, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1990
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1990
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1990
  %3 = tail call i8* @malloc(i64 1024) #6, !dbg !1992
  %4 = icmp eq i8* %3, null, !dbg !1993
  br i1 %4, label %7, label %5, !dbg !1994

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !1995
  store i8 0, i8* %6, align 1, !dbg !1996, !tbaa !227
  br label %7, !dbg !1997

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1998
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1999
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.67, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !1999
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.67, i64 0, i64 0)) #6, !dbg !2001
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2002
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !2002
  %10 = icmp eq i8* %1, null, !dbg !2004
  br i1 %10, label %11, label %13, !dbg !2005

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !2006
  br label %15, !dbg !2007

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #6, !dbg !2008
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ], !dbg !2009
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2010
  br i1 %4, label %17, label %18, !dbg !2012

17:                                               ; preds = %15
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !2013
  br label %24, !dbg !2014

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !2015
  %19 = ptrtoint i8* %16 to i64, !dbg !2017
  %20 = ptrtoint i8* %3 to i64, !dbg !2017
  %21 = sub i64 1, %20, !dbg !2017
  %22 = add i64 %21, %19, !dbg !2018
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %22) #6, !dbg !2019
  tail call void @halide_error(i8* %0, i8* nonnull %3) #6, !dbg !2020
  br label %24

24:                                               ; preds = %18, %17
  tail call void @free(i8* %3) #6, !dbg !2021
  ret i32 -31, !dbg !2022
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_no_device_interface(i8* %0) local_unnamed_addr #0 !dbg !2023 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2025, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !2027
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !2027
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !2027
  %2 = tail call i8* @malloc(i64 1024) #6, !dbg !2029
  %3 = icmp eq i8* %2, null, !dbg !2030
  br i1 %3, label %4, label %6, !dbg !2031

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2032
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.68, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !2032
  %5 = tail call i8* @halide_string_to_string(i8* %2, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.68, i64 0, i64 0)) #6, !dbg !2034
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2035
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !2037
  br label %14, !dbg !2038

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %2, i64 1023, !dbg !2039
  store i8 0, i8* %7, align 1, !dbg !2040, !tbaa !227
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2032
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.68, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !2032
  %8 = tail call i8* @halide_string_to_string(i8* nonnull %2, i8* nonnull %7, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.68, i64 0, i64 0)) #6, !dbg !2034
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2035
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !2041
  %9 = ptrtoint i8* %8 to i64, !dbg !2043
  %10 = ptrtoint i8* %2 to i64, !dbg !2043
  %11 = add i64 %9, 1, !dbg !2043
  %12 = sub i64 %11, %10, !dbg !2044
  %13 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %12) #6, !dbg !2045
  tail call void @halide_error(i8* %0, i8* nonnull %2) #6, !dbg !2046
  br label %14

14:                                               ; preds = %6, %4
  tail call void @free(i8* %2) #6, !dbg !2047
  ret i32 -19, !dbg !2048
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_device_interface_no_device(i8* %0) local_unnamed_addr #0 !dbg !2049 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2051, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !2053
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !2053
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !2053
  %2 = tail call i8* @malloc(i64 1024) #6, !dbg !2055
  %3 = icmp eq i8* %2, null, !dbg !2056
  br i1 %3, label %4, label %6, !dbg !2057

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2058
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.69, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !2058
  %5 = tail call i8* @halide_string_to_string(i8* %2, i8* null, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.69, i64 0, i64 0)) #6, !dbg !2060
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2061
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !2063
  br label %14, !dbg !2064

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %2, i64 1023, !dbg !2065
  store i8 0, i8* %7, align 1, !dbg !2066, !tbaa !227
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2058
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.69, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !2058
  %8 = tail call i8* @halide_string_to_string(i8* nonnull %2, i8* nonnull %7, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.69, i64 0, i64 0)) #6, !dbg !2060
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2061
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !2067
  %9 = ptrtoint i8* %8 to i64, !dbg !2069
  %10 = ptrtoint i8* %2 to i64, !dbg !2069
  %11 = add i64 %9, 1, !dbg !2069
  %12 = sub i64 %11, %10, !dbg !2070
  %13 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %12) #6, !dbg !2071
  tail call void @halide_error(i8* %0, i8* nonnull %2) #6, !dbg !2072
  br label %14

14:                                               ; preds = %6, %4
  tail call void @free(i8* %2) #6, !dbg !2073
  ret i32 -36, !dbg !2074
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_host_and_device_dirty(i8* %0) local_unnamed_addr #0 !dbg !2075 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2077, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !2079
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !2079
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !2079
  %2 = tail call i8* @malloc(i64 1024) #6, !dbg !2081
  %3 = icmp eq i8* %2, null, !dbg !2082
  br i1 %3, label %4, label %6, !dbg !2083

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2084
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.70, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !2084
  %5 = tail call i8* @halide_string_to_string(i8* %2, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.70, i64 0, i64 0)) #6, !dbg !2086
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2087
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !2089
  br label %14, !dbg !2090

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %2, i64 1023, !dbg !2091
  store i8 0, i8* %7, align 1, !dbg !2092, !tbaa !227
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2084
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.70, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !2084
  %8 = tail call i8* @halide_string_to_string(i8* nonnull %2, i8* nonnull %7, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.70, i64 0, i64 0)) #6, !dbg !2086
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2087
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !2093
  %9 = ptrtoint i8* %8 to i64, !dbg !2095
  %10 = ptrtoint i8* %2 to i64, !dbg !2095
  %11 = add i64 %9, 1, !dbg !2095
  %12 = sub i64 %11, %10, !dbg !2096
  %13 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %12) #6, !dbg !2097
  tail call void @halide_error(i8* %0, i8* nonnull %2) #6, !dbg !2098
  br label %14

14:                                               ; preds = %6, %4
  tail call void @free(i8* %2) #6, !dbg !2099
  ret i32 -37, !dbg !2100
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_buffer_is_null(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !2101 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2103, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %1, metadata !2104, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !2106
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !2106
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !2106
  %3 = tail call i8* @malloc(i64 1024) #6, !dbg !2108
  %4 = icmp eq i8* %3, null, !dbg !2109
  br i1 %4, label %7, label %5, !dbg !2110

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !2111
  store i8 0, i8* %6, align 1, !dbg !2112, !tbaa !227
  br label %7, !dbg !2113

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !2114
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2115
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !2115
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i64 0, i64 0)) #6, !dbg !2117
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !2118
  %10 = icmp eq i8* %1, null, !dbg !2120
  br i1 %10, label %11, label %13, !dbg !2121

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !2122
  br label %15, !dbg !2123

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #6, !dbg !2124
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ], !dbg !2125
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2126
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0), metadata !235, metadata !DIExpression()) #5, !dbg !2126
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %8, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0)) #6, !dbg !2128
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2129
  br i1 %4, label %18, label %19, !dbg !2131

18:                                               ; preds = %15
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !2132
  br label %25, !dbg !2133

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !2134
  %20 = ptrtoint i8* %17 to i64, !dbg !2136
  %21 = ptrtoint i8* %3 to i64, !dbg !2136
  %22 = add i64 %20, 1, !dbg !2136
  %23 = sub i64 %22, %21, !dbg !2137
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %23) #6, !dbg !2138
  tail call void @halide_error(i8* %0, i8* nonnull %3) #6, !dbg !2139
  br label %25

25:                                               ; preds = %19, %18
  tail call void @free(i8* %3) #6, !dbg !2140
  ret i32 -38, !dbg !2141
}

declare !dbg !2142 dso_local i8* @malloc(i64) local_unnamed_addr #3

declare !dbg !2145 dso_local void @free(i8*) local_unnamed_addr #3

declare !dbg !2148 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !2151 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !2154 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !2157 extern_weak dso_local i8* @halide_type_to_string(i8*, i8*, %struct.halide_type_t*) local_unnamed_addr #3

declare !dbg !2161 extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !2164 extern_weak dso_local i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!195, !196, !197}
!llvm.ident = !{!198}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !62, imports: !193, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/errors.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{!3, !14}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !4, line: 403, baseType: !5, size: 8, elements: !8, identifier: "_ZTS18halide_type_code_t")
!4 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 16, baseType: !7)
!6 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_error_code_t", file: !4, line: 990, baseType: !15, size: 32, elements: !16, identifier: "_ZTS19halide_error_code_t")
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!17 = !DIEnumerator(name: "halide_error_code_success", value: 0)
!18 = !DIEnumerator(name: "halide_error_code_generic_error", value: -1)
!19 = !DIEnumerator(name: "halide_error_code_explicit_bounds_too_small", value: -2)
!20 = !DIEnumerator(name: "halide_error_code_bad_type", value: -3)
!21 = !DIEnumerator(name: "halide_error_code_access_out_of_bounds", value: -4)
!22 = !DIEnumerator(name: "halide_error_code_buffer_allocation_too_large", value: -5)
!23 = !DIEnumerator(name: "halide_error_code_buffer_extents_too_large", value: -6)
!24 = !DIEnumerator(name: "halide_error_code_constraints_make_required_region_smaller", value: -7)
!25 = !DIEnumerator(name: "halide_error_code_constraint_violated", value: -8)
!26 = !DIEnumerator(name: "halide_error_code_param_too_small", value: -9)
!27 = !DIEnumerator(name: "halide_error_code_param_too_large", value: -10)
!28 = !DIEnumerator(name: "halide_error_code_out_of_memory", value: -11)
!29 = !DIEnumerator(name: "halide_error_code_buffer_argument_is_null", value: -12)
!30 = !DIEnumerator(name: "halide_error_code_debug_to_file_failed", value: -13)
!31 = !DIEnumerator(name: "halide_error_code_copy_to_host_failed", value: -14)
!32 = !DIEnumerator(name: "halide_error_code_copy_to_device_failed", value: -15)
!33 = !DIEnumerator(name: "halide_error_code_device_malloc_failed", value: -16)
!34 = !DIEnumerator(name: "halide_error_code_device_sync_failed", value: -17)
!35 = !DIEnumerator(name: "halide_error_code_device_free_failed", value: -18)
!36 = !DIEnumerator(name: "halide_error_code_no_device_interface", value: -19)
!37 = !DIEnumerator(name: "halide_error_code_matlab_init_failed", value: -20)
!38 = !DIEnumerator(name: "halide_error_code_matlab_bad_param_type", value: -21)
!39 = !DIEnumerator(name: "halide_error_code_internal_error", value: -22)
!40 = !DIEnumerator(name: "halide_error_code_device_run_failed", value: -23)
!41 = !DIEnumerator(name: "halide_error_code_unaligned_host_ptr", value: -24)
!42 = !DIEnumerator(name: "halide_error_code_bad_fold", value: -25)
!43 = !DIEnumerator(name: "halide_error_code_fold_factor_too_small", value: -26)
!44 = !DIEnumerator(name: "halide_error_code_requirement_failed", value: -27)
!45 = !DIEnumerator(name: "halide_error_code_buffer_extents_negative", value: -28)
!46 = !DIEnumerator(name: "halide_error_code_unused_29", value: -29)
!47 = !DIEnumerator(name: "halide_error_code_unused_30", value: -30)
!48 = !DIEnumerator(name: "halide_error_code_specialize_fail", value: -31)
!49 = !DIEnumerator(name: "halide_error_code_device_wrap_native_failed", value: -32)
!50 = !DIEnumerator(name: "halide_error_code_device_detach_native_failed", value: -33)
!51 = !DIEnumerator(name: "halide_error_code_host_is_null", value: -34)
!52 = !DIEnumerator(name: "halide_error_code_bad_extern_fold", value: -35)
!53 = !DIEnumerator(name: "halide_error_code_device_interface_no_device", value: -36)
!54 = !DIEnumerator(name: "halide_error_code_host_and_device_dirty", value: -37)
!55 = !DIEnumerator(name: "halide_error_code_buffer_is_null", value: -38)
!56 = !DIEnumerator(name: "halide_error_code_device_buffer_copy_failed", value: -39)
!57 = !DIEnumerator(name: "halide_error_code_device_crop_unsupported", value: -40)
!58 = !DIEnumerator(name: "halide_error_code_device_crop_failed", value: -41)
!59 = !DIEnumerator(name: "halide_error_code_incompatible_device_interface", value: -42)
!60 = !DIEnumerator(name: "halide_error_code_bad_dimensions", value: -43)
!61 = !DIEnumerator(name: "halide_error_code_device_dirty_with_no_device_support", value: -44)
!62 = !{!63, !140, !72}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !65, file: !64, line: 199, baseType: !69)
!64 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!65 = !DINamespace(scope: !66)
!66 = !DINamespace(name: "Internal", scope: !67)
!67 = !DINamespace(name: "Runtime", scope: !68)
!68 = !DINamespace(name: "Halide", scope: null)
!69 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !65, file: !64, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !70, templateParams: !190)
!70 = !{!71, !74, !75, !76, !78, !80, !84, !88, !94, !99, !103, !108, !113, !117, !121, !126, !132, !165, !172, !175, !178, !183, !184, !187, !188, !189}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !69, file: !64, line: 32, baseType: !72, size: 64, flags: DIFlagPublic)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !69, file: !64, line: 32, baseType: !72, size: 64, offset: 64, flags: DIFlagPublic)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !69, file: !64, line: 32, baseType: !72, size: 64, offset: 128, flags: DIFlagPublic)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !69, file: !64, line: 33, baseType: !77, size: 64, offset: 192, flags: DIFlagPublic)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !69, file: !64, line: 34, baseType: !79, size: 8, offset: 256, flags: DIFlagPublic)
!79 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !69, file: !64, line: 35, baseType: !81, size: 8, offset: 264, flags: DIFlagPublic)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DISubprogram(name: "Printer", scope: !69, file: !64, line: 37, type: !85, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87, !77, !72}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!88 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !69, file: !64, line: 57, type: !89, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!89 = !DISubroutineType(types: !90)
!90 = !{!91, !87, !92}
!91 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !69, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!94 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !69, file: !64, line: 67, type: !95, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!95 = !DISubroutineType(types: !96)
!96 = !{!91, !87, !97}
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !6, line: 9, baseType: !98)
!98 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!99 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !69, file: !64, line: 72, type: !100, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!100 = !DISubroutineType(types: !101)
!101 = !{!91, !87, !102}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !6, line: 11, baseType: !15)
!103 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !69, file: !64, line: 77, type: !104, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!104 = !DISubroutineType(types: !105)
!105 = !{!91, !87, !106}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 10, baseType: !107)
!107 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!108 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEj", scope: !69, file: !64, line: 82, type: !109, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!109 = !DISubroutineType(types: !110)
!110 = !{!91, !87, !111}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 12, baseType: !112)
!112 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!113 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !69, file: !64, line: 87, type: !114, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!114 = !DISubroutineType(types: !115)
!115 = !{!91, !87, !116}
!116 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!117 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEf", scope: !69, file: !64, line: 92, type: !118, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!118 = !DISubroutineType(types: !119)
!119 = !{!91, !87, !120}
!120 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!121 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !69, file: !64, line: 97, type: !122, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!122 = !DISubroutineType(types: !123)
!123 = !{!91, !87, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!126 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE23write_float16_from_bitsEt", scope: !69, file: !64, line: 102, type: !127, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!127 = !DISubroutineType(types: !128)
!128 = !{!91, !87, !129}
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !6, line: 14, baseType: !131)
!131 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!132 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !69, file: !64, line: 108, type: !133, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!133 = !DISubroutineType(types: !134)
!134 = !{!91, !87, !135}
!135 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !4, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !138, identifier: "_ZTS13halide_type_t")
!138 = !{!139, !141, !142, !143, !147, !150, !154, !157, !158, !159, !162}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !137, file: !4, line: 434, baseType: !140, size: 8, align: 8)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !4, line: 413, baseType: !3)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !137, file: !4, line: 442, baseType: !5, size: 8, align: 8, offset: 8)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !137, file: !4, line: 446, baseType: !130, size: 16, align: 16, offset: 16)
!143 = !DISubprogram(name: "halide_type_t", scope: !137, file: !4, line: 453, type: !144, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !146, !140, !5, !130}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!147 = !DISubprogram(name: "halide_type_t", scope: !137, file: !4, line: 459, type: !148, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !146}
!150 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !137, file: !4, line: 463, type: !151, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!151 = !DISubroutineType(types: !152)
!152 = !{!137, !153, !130}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!154 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !137, file: !4, line: 468, type: !155, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!155 = !DISubroutineType(types: !156)
!156 = !{!79, !153, !135}
!157 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !137, file: !4, line: 472, type: !155, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!158 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !137, file: !4, line: 476, type: !155, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!159 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !137, file: !4, line: 481, type: !160, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DISubroutineType(types: !161)
!161 = !{!15, !153}
!162 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !137, file: !4, line: 485, type: !163, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !DISubroutineType(types: !164)
!164 = !{!111, !153}
!165 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK15halide_buffer_t", scope: !69, file: !64, line: 113, type: !166, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DISubroutineType(types: !167)
!167 = !{!91, !87, !168}
!168 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !4, line: 1550, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !4, line: 1423, size: 448, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!172 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !69, file: !64, line: 119, type: !173, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!173 = !DISubroutineType(types: !174)
!174 = !{!92, !87}
!175 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !69, file: !64, line: 131, type: !176, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !87}
!178 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !69, file: !64, line: 139, type: !179, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DISubroutineType(types: !180)
!180 = !{!106, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!183 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE8capacityEv", scope: !69, file: !64, line: 143, type: !179, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!184 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5eraseEi", scope: !69, file: !64, line: 148, type: !185, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !87, !15}
!187 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE16allocation_errorEv", scope: !69, file: !64, line: 158, type: !173, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !69, file: !64, line: 162, type: !176, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DISubprogram(name: "~Printer", scope: !69, file: !64, line: 166, type: !176, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!190 = !{!191, !192}
!191 = !DITemplateValueParameter(name: "type", type: !15, value: i32 1)
!192 = !DITemplateValueParameter(name: "length", type: !107, value: i64 1024)
!193 = !{!194}
!194 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !66, file: !6, line: 225)
!195 = !{i32 7, !"Dwarf Version", i32 4}
!196 = !{i32 2, !"Debug Info Version", i32 3}
!197 = !{i32 1, !"wchar_size", i32 4}
!198 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!199 = distinct !DISubprogram(name: "halide_error_bounds_inference_call_failed", scope: !200, file: !200, line: 6, type: !201, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !203)
!200 = !DIFile(filename: "src/runtime/errors.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!201 = !DISubroutineType(types: !202)
!202 = !{!15, !77, !92, !15}
!203 = !{!204, !205, !206}
!204 = !DILocalVariable(name: "user_context", arg: 1, scope: !199, file: !200, line: 6, type: !77)
!205 = !DILocalVariable(name: "extern_stage_name", arg: 2, scope: !199, file: !200, line: 6, type: !92)
!206 = !DILocalVariable(name: "result", arg: 3, scope: !199, file: !200, line: 6, type: !15)
!207 = !DILocation(line: 0, scope: !199)
!208 = !DILocalVariable(name: "this", arg: 1, scope: !209, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!209 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !69, file: !64, line: 37, type: !85, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !84, retainedNodes: !210)
!210 = !{!208, !211, !212}
!211 = !DILocalVariable(name: "ctx", arg: 2, scope: !209, file: !64, line: 37, type: !77)
!212 = !DILocalVariable(name: "mem", arg: 3, scope: !209, file: !64, line: 37, type: !72)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!214 = !DILocation(line: 0, scope: !209, inlinedAt: !215)
!215 = distinct !DILocation(line: 7, column: 5, scope: !199)
!216 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !215)
!217 = distinct !DILexicalBlock(scope: !218, file: !64, line: 43, column: 16)
!218 = distinct !DILexicalBlock(scope: !219, file: !64, line: 41, column: 20)
!219 = distinct !DILexicalBlock(scope: !220, file: !64, line: 39, column: 13)
!220 = distinct !DILexicalBlock(scope: !209, file: !64, line: 38, column: 54)
!221 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !215)
!222 = distinct !DILexicalBlock(scope: !220, file: !64, line: 48, column: 13)
!223 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !215)
!224 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !215)
!225 = distinct !DILexicalBlock(scope: !222, file: !64, line: 48, column: 18)
!226 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !215)
!227 = !{!228, !228, i64 0}
!228 = !{!"omnipotent char", !229, i64 0}
!229 = !{!"Simple C++ TBAA"}
!230 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !215)
!231 = !DILocation(line: 0, scope: !222, inlinedAt: !215)
!232 = !DILocalVariable(name: "this", arg: 1, scope: !233, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!233 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !69, file: !64, line: 57, type: !89, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !88, retainedNodes: !234)
!234 = !{!232, !235}
!235 = !DILocalVariable(name: "arg", arg: 2, scope: !233, file: !64, line: 57, type: !92)
!236 = !DILocation(line: 0, scope: !233, inlinedAt: !237)
!237 = distinct !DILocation(line: 8, column: 9, scope: !199)
!238 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !237)
!239 = distinct !DILexicalBlock(scope: !240, file: !64, line: 61, column: 16)
!240 = distinct !DILexicalBlock(scope: !233, file: !64, line: 59, column: 13)
!241 = !DILocation(line: 0, scope: !233, inlinedAt: !242)
!242 = distinct !DILocation(line: 8, column: 55, scope: !199)
!243 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !242)
!244 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !242)
!245 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !242)
!246 = distinct !DILexicalBlock(scope: !240, file: !64, line: 59, column: 29)
!247 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !242)
!248 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !242)
!249 = !DILocation(line: 0, scope: !240, inlinedAt: !242)
!250 = !DILocation(line: 0, scope: !233, inlinedAt: !251)
!251 = distinct !DILocation(line: 9, column: 9, scope: !199)
!252 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !251)
!253 = !DILocalVariable(name: "this", arg: 1, scope: !254, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!254 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !69, file: !64, line: 72, type: !100, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !99, retainedNodes: !255)
!255 = !{!253, !256}
!256 = !DILocalVariable(name: "arg", arg: 2, scope: !254, file: !64, line: 72, type: !102)
!257 = !DILocation(line: 0, scope: !254, inlinedAt: !258)
!258 = distinct !DILocation(line: 9, column: 41, scope: !199)
!259 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !258)
!260 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !258)
!261 = !DILocalVariable(name: "this", arg: 1, scope: !262, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!262 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !69, file: !64, line: 166, type: !176, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !189, retainedNodes: !263)
!263 = !{!261}
!264 = !DILocation(line: 0, scope: !262, inlinedAt: !265)
!265 = distinct !DILocation(line: 7, column: 5, scope: !199)
!266 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !265)
!267 = distinct !DILexicalBlock(scope: !262, file: !64, line: 166, column: 16)
!268 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !265)
!269 = distinct !DILexicalBlock(scope: !270, file: !64, line: 167, column: 19)
!270 = distinct !DILexicalBlock(scope: !267, file: !64, line: 167, column: 13)
!271 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !265)
!272 = !DILocalVariable(name: "this", arg: 1, scope: !273, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!273 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !69, file: !64, line: 162, type: !176, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !188, retainedNodes: !274)
!274 = !{!272}
!275 = !DILocation(line: 0, scope: !273, inlinedAt: !276)
!276 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !265)
!277 = distinct !DILexicalBlock(scope: !270, file: !64, line: 169, column: 16)
!278 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !276)
!279 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !276)
!280 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !276)
!281 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !265)
!282 = distinct !DILexicalBlock(scope: !283, file: !64, line: 171, column: 39)
!283 = distinct !DILexicalBlock(scope: !277, file: !64, line: 171, column: 17)
!284 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !265)
!285 = distinct !DILexicalBlock(scope: !286, file: !64, line: 180, column: 40)
!286 = distinct !DILexicalBlock(scope: !267, file: !64, line: 180, column: 13)
!287 = !DILocation(line: 10, column: 5, scope: !199)
!288 = distinct !DISubprogram(name: "halide_error_extern_stage_failed", scope: !200, file: !200, line: 13, type: !201, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !289)
!289 = !{!290, !291, !292}
!290 = !DILocalVariable(name: "user_context", arg: 1, scope: !288, file: !200, line: 13, type: !77)
!291 = !DILocalVariable(name: "extern_stage_name", arg: 2, scope: !288, file: !200, line: 13, type: !92)
!292 = !DILocalVariable(name: "result", arg: 3, scope: !288, file: !200, line: 13, type: !15)
!293 = !DILocation(line: 0, scope: !288)
!294 = !DILocation(line: 0, scope: !209, inlinedAt: !295)
!295 = distinct !DILocation(line: 14, column: 5, scope: !288)
!296 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !295)
!297 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !295)
!298 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !295)
!299 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !295)
!300 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !295)
!301 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !295)
!302 = !DILocation(line: 0, scope: !222, inlinedAt: !295)
!303 = !DILocation(line: 0, scope: !233, inlinedAt: !304)
!304 = distinct !DILocation(line: 15, column: 9, scope: !288)
!305 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !304)
!306 = !DILocation(line: 0, scope: !233, inlinedAt: !307)
!307 = distinct !DILocation(line: 15, column: 38, scope: !288)
!308 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !307)
!309 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !307)
!310 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !307)
!311 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !307)
!312 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !307)
!313 = !DILocation(line: 0, scope: !240, inlinedAt: !307)
!314 = !DILocation(line: 0, scope: !233, inlinedAt: !315)
!315 = distinct !DILocation(line: 16, column: 9, scope: !288)
!316 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !315)
!317 = !DILocation(line: 0, scope: !254, inlinedAt: !318)
!318 = distinct !DILocation(line: 16, column: 41, scope: !288)
!319 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !318)
!320 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !318)
!321 = !DILocation(line: 0, scope: !262, inlinedAt: !322)
!322 = distinct !DILocation(line: 14, column: 5, scope: !288)
!323 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !322)
!324 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !322)
!325 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !322)
!326 = !DILocation(line: 0, scope: !273, inlinedAt: !327)
!327 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !322)
!328 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !327)
!329 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !327)
!330 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !327)
!331 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !322)
!332 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !322)
!333 = !DILocation(line: 17, column: 5, scope: !288)
!334 = distinct !DISubprogram(name: "halide_error_explicit_bounds_too_small", scope: !200, file: !200, line: 20, type: !335, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{!15, !77, !92, !92, !15, !15, !15, !15}
!337 = !{!338, !339, !340, !341, !342, !343, !344}
!338 = !DILocalVariable(name: "user_context", arg: 1, scope: !334, file: !200, line: 20, type: !77)
!339 = !DILocalVariable(name: "func_name", arg: 2, scope: !334, file: !200, line: 20, type: !92)
!340 = !DILocalVariable(name: "var_name", arg: 3, scope: !334, file: !200, line: 20, type: !92)
!341 = !DILocalVariable(name: "min_bound", arg: 4, scope: !334, file: !200, line: 21, type: !15)
!342 = !DILocalVariable(name: "max_bound", arg: 5, scope: !334, file: !200, line: 21, type: !15)
!343 = !DILocalVariable(name: "min_required", arg: 6, scope: !334, file: !200, line: 21, type: !15)
!344 = !DILocalVariable(name: "max_required", arg: 7, scope: !334, file: !200, line: 21, type: !15)
!345 = !DILocation(line: 0, scope: !334)
!346 = !DILocation(line: 0, scope: !209, inlinedAt: !347)
!347 = distinct !DILocation(line: 22, column: 5, scope: !334)
!348 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !347)
!349 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !347)
!350 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !347)
!351 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !347)
!352 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !347)
!353 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !347)
!354 = !DILocation(line: 0, scope: !222, inlinedAt: !347)
!355 = !DILocation(line: 0, scope: !233, inlinedAt: !356)
!356 = distinct !DILocation(line: 23, column: 9, scope: !334)
!357 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !356)
!358 = !DILocation(line: 0, scope: !233, inlinedAt: !359)
!359 = distinct !DILocation(line: 23, column: 32, scope: !334)
!360 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !359)
!361 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !359)
!362 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !359)
!363 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !359)
!364 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !359)
!365 = !DILocation(line: 0, scope: !240, inlinedAt: !359)
!366 = !DILocation(line: 0, scope: !233, inlinedAt: !367)
!367 = distinct !DILocation(line: 23, column: 44, scope: !334)
!368 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !367)
!369 = !DILocation(line: 0, scope: !233, inlinedAt: !370)
!370 = distinct !DILocation(line: 23, column: 54, scope: !334)
!371 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !370)
!372 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !370)
!373 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !370)
!374 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !370)
!375 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !370)
!376 = !DILocation(line: 0, scope: !240, inlinedAt: !370)
!377 = !DILocation(line: 0, scope: !233, inlinedAt: !378)
!378 = distinct !DILocation(line: 24, column: 9, scope: !334)
!379 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !378)
!380 = !DILocation(line: 0, scope: !254, inlinedAt: !381)
!381 = distinct !DILocation(line: 24, column: 22, scope: !334)
!382 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !381)
!383 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !381)
!384 = !DILocation(line: 0, scope: !233, inlinedAt: !385)
!385 = distinct !DILocation(line: 24, column: 35, scope: !334)
!386 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !385)
!387 = !DILocation(line: 0, scope: !254, inlinedAt: !388)
!388 = distinct !DILocation(line: 24, column: 45, scope: !334)
!389 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !388)
!390 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !388)
!391 = !DILocation(line: 0, scope: !233, inlinedAt: !392)
!392 = distinct !DILocation(line: 25, column: 9, scope: !334)
!393 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !392)
!394 = !DILocation(line: 0, scope: !254, inlinedAt: !395)
!395 = distinct !DILocation(line: 25, column: 52, scope: !334)
!396 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !395)
!397 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !395)
!398 = !DILocation(line: 0, scope: !233, inlinedAt: !399)
!399 = distinct !DILocation(line: 26, column: 9, scope: !334)
!400 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !399)
!401 = !DILocation(line: 0, scope: !254, inlinedAt: !402)
!402 = distinct !DILocation(line: 26, column: 19, scope: !334)
!403 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !402)
!404 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !402)
!405 = !DILocation(line: 0, scope: !233, inlinedAt: !406)
!406 = distinct !DILocation(line: 26, column: 35, scope: !334)
!407 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !406)
!408 = !DILocation(line: 0, scope: !262, inlinedAt: !409)
!409 = distinct !DILocation(line: 22, column: 5, scope: !334)
!410 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !409)
!411 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !409)
!412 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !409)
!413 = !DILocation(line: 0, scope: !273, inlinedAt: !414)
!414 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !409)
!415 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !414)
!416 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !414)
!417 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !414)
!418 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !409)
!419 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !409)
!420 = !DILocation(line: 27, column: 5, scope: !334)
!421 = distinct !DISubprogram(name: "halide_error_bad_type", scope: !200, file: !200, line: 30, type: !422, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !424)
!422 = !DISubroutineType(types: !423)
!423 = !{!15, !77, !92, !111, !111}
!424 = !{!425, !426, !427, !428, !429, !430}
!425 = !DILocalVariable(name: "user_context", arg: 1, scope: !421, file: !200, line: 30, type: !77)
!426 = !DILocalVariable(name: "func_name", arg: 2, scope: !421, file: !200, line: 30, type: !92)
!427 = !DILocalVariable(name: "type_given_bits", arg: 3, scope: !421, file: !200, line: 31, type: !111)
!428 = !DILocalVariable(name: "correct_type_bits", arg: 4, scope: !421, file: !200, line: 31, type: !111)
!429 = !DILocalVariable(name: "correct_type", scope: !421, file: !200, line: 32, type: !137)
!430 = !DILocalVariable(name: "type_given", scope: !421, file: !200, line: 32, type: !137)
!431 = !DILocation(line: 0, scope: !421)
!432 = !{!433, !433, i64 0}
!433 = !{!"int", !228, i64 0}
!434 = !DILocation(line: 32, column: 5, scope: !421)
!435 = !DILocation(line: 32, column: 19, scope: !421)
!436 = !DILocalVariable(name: "this", arg: 1, scope: !437, type: !439, flags: DIFlagArtificial | DIFlagObjectPointer)
!437 = distinct !DISubprogram(name: "halide_type_t", linkageName: "_ZN13halide_type_tC2Ev", scope: !137, file: !4, line: 459, type: !148, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !147, retainedNodes: !438)
!438 = !{!436}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!440 = !DILocation(line: 0, scope: !437, inlinedAt: !441)
!441 = distinct !DILocation(line: 32, column: 19, scope: !421)
!442 = !DILocation(line: 460, column: 11, scope: !437, inlinedAt: !441)
!443 = !{!444, !445, i64 0}
!444 = !{!"_ZTS13halide_type_t", !445, i64 0, !228, i64 1, !446, i64 2}
!445 = !{!"_ZTS18halide_type_code_t", !228, i64 0}
!446 = !{!"short", !228, i64 0}
!447 = !DILocation(line: 460, column: 40, scope: !437, inlinedAt: !441)
!448 = !{!444, !228, i64 1}
!449 = !DILocation(line: 460, column: 49, scope: !437, inlinedAt: !441)
!450 = !{!444, !446, i64 2}
!451 = !DILocation(line: 32, column: 33, scope: !421)
!452 = !DILocation(line: 0, scope: !437, inlinedAt: !453)
!453 = distinct !DILocation(line: 32, column: 33, scope: !421)
!454 = !DILocation(line: 460, column: 11, scope: !437, inlinedAt: !453)
!455 = !DILocation(line: 460, column: 40, scope: !437, inlinedAt: !453)
!456 = !DILocation(line: 460, column: 49, scope: !437, inlinedAt: !453)
!457 = !DILocation(line: 33, column: 27, scope: !421)
!458 = !DILocation(line: 33, column: 5, scope: !421)
!459 = !DILocation(line: 34, column: 25, scope: !421)
!460 = !DILocation(line: 34, column: 5, scope: !421)
!461 = !DILocation(line: 35, column: 5, scope: !421)
!462 = !DILocation(line: 0, scope: !209, inlinedAt: !463)
!463 = distinct !DILocation(line: 35, column: 5, scope: !421)
!464 = !DILocation(line: 38, column: 11, scope: !209, inlinedAt: !463)
!465 = !{!466, !467, i64 24}
!466 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEE", !467, i64 0, !467, i64 8, !467, i64 16, !467, i64 24, !468, i64 32, !228, i64 33}
!467 = !{!"any pointer", !228, i64 0}
!468 = !{!"bool", !228, i64 0}
!469 = !DILocation(line: 38, column: 30, scope: !209, inlinedAt: !463)
!470 = !{!466, !468, i64 32}
!471 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !463)
!472 = !DILocation(line: 44, column: 13, scope: !217, inlinedAt: !463)
!473 = !DILocation(line: 44, column: 17, scope: !217, inlinedAt: !463)
!474 = !{!466, !467, i64 0}
!475 = !DILocation(line: 47, column: 9, scope: !220, inlinedAt: !463)
!476 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !463)
!477 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !463)
!478 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !463)
!479 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !463)
!480 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !463)
!481 = !DILocation(line: 0, scope: !222, inlinedAt: !463)
!482 = !DILocation(line: 53, column: 13, scope: !483, inlinedAt: !463)
!483 = distinct !DILexicalBlock(scope: !222, file: !64, line: 51, column: 16)
!484 = !DILocation(line: 53, column: 17, scope: !483, inlinedAt: !463)
!485 = !DILocation(line: 0, scope: !233, inlinedAt: !486)
!486 = distinct !DILocation(line: 36, column: 9, scope: !421)
!487 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !486)
!488 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !486)
!489 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !486)
!490 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !486)
!491 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !486)
!492 = !DILocation(line: 0, scope: !240, inlinedAt: !486)
!493 = !{!466, !467, i64 8}
!494 = !DILocation(line: 0, scope: !233, inlinedAt: !495)
!495 = distinct !DILocation(line: 36, column: 22, scope: !421)
!496 = !DILocation(line: 62, column: 48, scope: !239, inlinedAt: !495)
!497 = !{!466, !467, i64 16}
!498 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !495)
!499 = !DILocalVariable(name: "this", arg: 1, scope: !500, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!500 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !69, file: !64, line: 108, type: !133, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !132, retainedNodes: !501)
!501 = !{!499, !502}
!502 = !DILocalVariable(name: "t", arg: 2, scope: !500, file: !64, line: 108, type: !135)
!503 = !DILocation(line: 0, scope: !500, inlinedAt: !504)
!504 = distinct !DILocation(line: 36, column: 38, scope: !421)
!505 = !DILocation(line: 109, column: 15, scope: !500, inlinedAt: !504)
!506 = !DILocation(line: 0, scope: !233, inlinedAt: !507)
!507 = distinct !DILocation(line: 37, column: 9, scope: !421)
!508 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !507)
!509 = !DILocation(line: 0, scope: !500, inlinedAt: !510)
!510 = distinct !DILocation(line: 37, column: 52, scope: !421)
!511 = !DILocation(line: 109, column: 15, scope: !500, inlinedAt: !510)
!512 = !DILocation(line: 0, scope: !262, inlinedAt: !513)
!513 = distinct !DILocation(line: 35, column: 5, scope: !421)
!514 = !DILocation(line: 167, column: 14, scope: !270, inlinedAt: !513)
!515 = !DILocation(line: 0, scope: !270, inlinedAt: !513)
!516 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !513)
!517 = !DILocation(line: 0, scope: !273, inlinedAt: !518)
!518 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !513)
!519 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !518)
!520 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !518)
!521 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !518)
!522 = !DILocation(line: 172, column: 44, scope: !282, inlinedAt: !513)
!523 = !DILocation(line: 180, column: 13, scope: !286, inlinedAt: !513)
!524 = !{i8 0, i8 2}
!525 = !DILocation(line: 180, column: 21, scope: !286, inlinedAt: !513)
!526 = !DILocation(line: 180, column: 24, scope: !286, inlinedAt: !513)
!527 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !513)
!528 = !DILocation(line: 182, column: 9, scope: !285, inlinedAt: !513)
!529 = !DILocation(line: 39, column: 1, scope: !421)
!530 = !DILocation(line: 38, column: 5, scope: !421)
!531 = !DISubprogram(name: "memcpy", scope: !6, file: !6, line: 94, type: !532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!532 = !DISubroutineType(types: !533)
!533 = !{!77, !77, !124, !534}
!534 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!535 = !{}
!536 = distinct !DISubprogram(name: "halide_error_bad_dimensions", scope: !200, file: !200, line: 41, type: !537, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{!15, !77, !92, !102, !102}
!539 = !{!540, !541, !542, !543}
!540 = !DILocalVariable(name: "user_context", arg: 1, scope: !536, file: !200, line: 41, type: !77)
!541 = !DILocalVariable(name: "func_name", arg: 2, scope: !536, file: !200, line: 41, type: !92)
!542 = !DILocalVariable(name: "dimensions_given", arg: 3, scope: !536, file: !200, line: 42, type: !102)
!543 = !DILocalVariable(name: "correct_dimensions", arg: 4, scope: !536, file: !200, line: 42, type: !102)
!544 = !DILocation(line: 0, scope: !536)
!545 = !DILocation(line: 0, scope: !209, inlinedAt: !546)
!546 = distinct !DILocation(line: 43, column: 5, scope: !536)
!547 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !546)
!548 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !546)
!549 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !546)
!550 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !546)
!551 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !546)
!552 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !546)
!553 = !DILocation(line: 0, scope: !222, inlinedAt: !546)
!554 = !DILocation(line: 0, scope: !233, inlinedAt: !555)
!555 = distinct !DILocation(line: 44, column: 9, scope: !536)
!556 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !555)
!557 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !555)
!558 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !555)
!559 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !555)
!560 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !555)
!561 = !DILocation(line: 0, scope: !240, inlinedAt: !555)
!562 = !DILocation(line: 0, scope: !233, inlinedAt: !563)
!563 = distinct !DILocation(line: 44, column: 22, scope: !536)
!564 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !563)
!565 = !DILocation(line: 0, scope: !254, inlinedAt: !566)
!566 = distinct !DILocation(line: 44, column: 58, scope: !536)
!567 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !566)
!568 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !566)
!569 = !DILocation(line: 0, scope: !233, inlinedAt: !570)
!570 = distinct !DILocation(line: 45, column: 9, scope: !536)
!571 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !570)
!572 = !DILocation(line: 0, scope: !254, inlinedAt: !573)
!573 = distinct !DILocation(line: 45, column: 57, scope: !536)
!574 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !573)
!575 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !573)
!576 = !DILocation(line: 0, scope: !233, inlinedAt: !577)
!577 = distinct !DILocation(line: 45, column: 77, scope: !536)
!578 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !577)
!579 = !DILocation(line: 0, scope: !262, inlinedAt: !580)
!580 = distinct !DILocation(line: 43, column: 5, scope: !536)
!581 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !580)
!582 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !580)
!583 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !580)
!584 = !DILocation(line: 0, scope: !273, inlinedAt: !585)
!585 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !580)
!586 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !585)
!587 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !585)
!588 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !585)
!589 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !580)
!590 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !580)
!591 = !DILocation(line: 46, column: 5, scope: !536)
!592 = distinct !DISubprogram(name: "halide_error_access_out_of_bounds", scope: !200, file: !200, line: 49, type: !593, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !595)
!593 = !DISubroutineType(types: !594)
!594 = !{!15, !77, !92, !15, !15, !15, !15, !15}
!595 = !{!596, !597, !598, !599, !600, !601, !602}
!596 = !DILocalVariable(name: "user_context", arg: 1, scope: !592, file: !200, line: 49, type: !77)
!597 = !DILocalVariable(name: "func_name", arg: 2, scope: !592, file: !200, line: 49, type: !92)
!598 = !DILocalVariable(name: "dimension", arg: 3, scope: !592, file: !200, line: 50, type: !15)
!599 = !DILocalVariable(name: "min_touched", arg: 4, scope: !592, file: !200, line: 50, type: !15)
!600 = !DILocalVariable(name: "max_touched", arg: 5, scope: !592, file: !200, line: 50, type: !15)
!601 = !DILocalVariable(name: "min_valid", arg: 6, scope: !592, file: !200, line: 51, type: !15)
!602 = !DILocalVariable(name: "max_valid", arg: 7, scope: !592, file: !200, line: 51, type: !15)
!603 = !DILocation(line: 0, scope: !592)
!604 = !DILocation(line: 52, column: 21, scope: !605)
!605 = distinct !DILexicalBlock(scope: !592, file: !200, line: 52, column: 9)
!606 = !DILocation(line: 52, column: 9, scope: !592)
!607 = !DILocation(line: 0, scope: !209, inlinedAt: !608)
!608 = distinct !DILocation(line: 53, column: 9, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !200, line: 52, column: 34)
!610 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !608)
!611 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !608)
!612 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !608)
!613 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !608)
!614 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !608)
!615 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !608)
!616 = !DILocation(line: 0, scope: !222, inlinedAt: !608)
!617 = !DILocation(line: 0, scope: !233, inlinedAt: !618)
!618 = distinct !DILocation(line: 54, column: 13, scope: !609)
!619 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !618)
!620 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !618)
!621 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !618)
!622 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !618)
!623 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !618)
!624 = !DILocation(line: 0, scope: !240, inlinedAt: !618)
!625 = !DILocation(line: 0, scope: !233, inlinedAt: !626)
!626 = distinct !DILocation(line: 54, column: 26, scope: !609)
!627 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !626)
!628 = !DILocation(line: 0, scope: !254, inlinedAt: !629)
!629 = distinct !DILocation(line: 54, column: 48, scope: !609)
!630 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !629)
!631 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !629)
!632 = !DILocation(line: 0, scope: !233, inlinedAt: !633)
!633 = distinct !DILocation(line: 55, column: 13, scope: !609)
!634 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !633)
!635 = !DILocation(line: 0, scope: !254, inlinedAt: !636)
!636 = distinct !DILocation(line: 55, column: 46, scope: !609)
!637 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !636)
!638 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !636)
!639 = !DILocation(line: 0, scope: !233, inlinedAt: !640)
!640 = distinct !DILocation(line: 56, column: 13, scope: !609)
!641 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !640)
!642 = !DILocation(line: 0, scope: !254, inlinedAt: !643)
!643 = distinct !DILocation(line: 56, column: 34, scope: !609)
!644 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !643)
!645 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !643)
!646 = !DILocation(line: 0, scope: !262, inlinedAt: !647)
!647 = distinct !DILocation(line: 53, column: 9, scope: !609)
!648 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !647)
!649 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !647)
!650 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !647)
!651 = !DILocation(line: 0, scope: !273, inlinedAt: !652)
!652 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !647)
!653 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !652)
!654 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !652)
!655 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !652)
!656 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !647)
!657 = !DILocation(line: 57, column: 28, scope: !658)
!658 = distinct !DILexicalBlock(scope: !605, file: !200, line: 57, column: 16)
!659 = !DILocation(line: 57, column: 16, scope: !605)
!660 = !DILocation(line: 0, scope: !209, inlinedAt: !661)
!661 = distinct !DILocation(line: 58, column: 9, scope: !662)
!662 = distinct !DILexicalBlock(scope: !658, file: !200, line: 57, column: 41)
!663 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !661)
!664 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !661)
!665 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !661)
!666 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !661)
!667 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !661)
!668 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !661)
!669 = !DILocation(line: 0, scope: !222, inlinedAt: !661)
!670 = !DILocation(line: 0, scope: !233, inlinedAt: !671)
!671 = distinct !DILocation(line: 59, column: 13, scope: !662)
!672 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !671)
!673 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !671)
!674 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !671)
!675 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !671)
!676 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !671)
!677 = !DILocation(line: 0, scope: !240, inlinedAt: !671)
!678 = !DILocation(line: 0, scope: !233, inlinedAt: !679)
!679 = distinct !DILocation(line: 59, column: 26, scope: !662)
!680 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !679)
!681 = !DILocation(line: 0, scope: !254, inlinedAt: !682)
!682 = distinct !DILocation(line: 59, column: 48, scope: !662)
!683 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !682)
!684 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !682)
!685 = !DILocation(line: 0, scope: !233, inlinedAt: !686)
!686 = distinct !DILocation(line: 60, column: 13, scope: !662)
!687 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !686)
!688 = !DILocation(line: 0, scope: !254, inlinedAt: !689)
!689 = distinct !DILocation(line: 60, column: 46, scope: !662)
!690 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !689)
!691 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !689)
!692 = !DILocation(line: 0, scope: !233, inlinedAt: !693)
!693 = distinct !DILocation(line: 61, column: 13, scope: !662)
!694 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !693)
!695 = !DILocation(line: 0, scope: !254, inlinedAt: !696)
!696 = distinct !DILocation(line: 61, column: 34, scope: !662)
!697 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !696)
!698 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !696)
!699 = !DILocation(line: 0, scope: !262, inlinedAt: !700)
!700 = distinct !DILocation(line: 58, column: 9, scope: !662)
!701 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !700)
!702 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !700)
!703 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !700)
!704 = !DILocation(line: 0, scope: !273, inlinedAt: !705)
!705 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !700)
!706 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !705)
!707 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !705)
!708 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !705)
!709 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !700)
!710 = !DILocation(line: 0, scope: !605)
!711 = !DILocation(line: 63, column: 5, scope: !592)
!712 = distinct !DISubprogram(name: "halide_error_buffer_allocation_too_large", scope: !200, file: !200, line: 66, type: !713, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !715)
!713 = !DISubroutineType(types: !714)
!714 = !{!15, !77, !92, !106, !106}
!715 = !{!716, !717, !718, !719}
!716 = !DILocalVariable(name: "user_context", arg: 1, scope: !712, file: !200, line: 66, type: !77)
!717 = !DILocalVariable(name: "buffer_name", arg: 2, scope: !712, file: !200, line: 66, type: !92)
!718 = !DILocalVariable(name: "allocation_size", arg: 3, scope: !712, file: !200, line: 66, type: !106)
!719 = !DILocalVariable(name: "max_size", arg: 4, scope: !712, file: !200, line: 66, type: !106)
!720 = !DILocation(line: 0, scope: !712)
!721 = !DILocation(line: 0, scope: !209, inlinedAt: !722)
!722 = distinct !DILocation(line: 67, column: 5, scope: !712)
!723 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !722)
!724 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !722)
!725 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !722)
!726 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !722)
!727 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !722)
!728 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !722)
!729 = !DILocation(line: 0, scope: !222, inlinedAt: !722)
!730 = !DILocation(line: 0, scope: !233, inlinedAt: !731)
!731 = distinct !DILocation(line: 68, column: 9, scope: !712)
!732 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !731)
!733 = !DILocation(line: 0, scope: !233, inlinedAt: !734)
!734 = distinct !DILocation(line: 68, column: 43, scope: !712)
!735 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !734)
!736 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !734)
!737 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !734)
!738 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !734)
!739 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !734)
!740 = !DILocation(line: 0, scope: !240, inlinedAt: !734)
!741 = !DILocation(line: 0, scope: !233, inlinedAt: !742)
!742 = distinct !DILocation(line: 69, column: 9, scope: !712)
!743 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !742)
!744 = !DILocalVariable(name: "this", arg: 1, scope: !745, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!745 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !69, file: !64, line: 77, type: !104, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !103, retainedNodes: !746)
!746 = !{!744, !747}
!747 = !DILocalVariable(name: "arg", arg: 2, scope: !745, file: !64, line: 77, type: !106)
!748 = !DILocation(line: 0, scope: !745, inlinedAt: !749)
!749 = distinct !DILocation(line: 69, column: 19, scope: !712)
!750 = !DILocation(line: 78, column: 15, scope: !745, inlinedAt: !749)
!751 = !DILocation(line: 0, scope: !233, inlinedAt: !752)
!752 = distinct !DILocation(line: 70, column: 9, scope: !712)
!753 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !752)
!754 = !DILocation(line: 0, scope: !745, inlinedAt: !755)
!755 = distinct !DILocation(line: 70, column: 51, scope: !712)
!756 = !DILocation(line: 78, column: 15, scope: !745, inlinedAt: !755)
!757 = !DILocation(line: 0, scope: !262, inlinedAt: !758)
!758 = distinct !DILocation(line: 67, column: 5, scope: !712)
!759 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !758)
!760 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !758)
!761 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !758)
!762 = !DILocation(line: 0, scope: !273, inlinedAt: !763)
!763 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !758)
!764 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !763)
!765 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !763)
!766 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !763)
!767 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !758)
!768 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !758)
!769 = !DILocation(line: 71, column: 5, scope: !712)
!770 = distinct !DISubprogram(name: "halide_error_buffer_extents_negative", scope: !200, file: !200, line: 74, type: !771, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{!15, !77, !92, !15, !15}
!773 = !{!774, !775, !776, !777}
!774 = !DILocalVariable(name: "user_context", arg: 1, scope: !770, file: !200, line: 74, type: !77)
!775 = !DILocalVariable(name: "buffer_name", arg: 2, scope: !770, file: !200, line: 74, type: !92)
!776 = !DILocalVariable(name: "dimension", arg: 3, scope: !770, file: !200, line: 74, type: !15)
!777 = !DILocalVariable(name: "extent", arg: 4, scope: !770, file: !200, line: 74, type: !15)
!778 = !DILocation(line: 0, scope: !770)
!779 = !DILocation(line: 0, scope: !209, inlinedAt: !780)
!780 = distinct !DILocation(line: 75, column: 5, scope: !770)
!781 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !780)
!782 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !780)
!783 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !780)
!784 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !780)
!785 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !780)
!786 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !780)
!787 = !DILocation(line: 0, scope: !222, inlinedAt: !780)
!788 = !DILocation(line: 0, scope: !233, inlinedAt: !789)
!789 = distinct !DILocation(line: 76, column: 9, scope: !770)
!790 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !789)
!791 = !DILocation(line: 0, scope: !233, inlinedAt: !792)
!792 = distinct !DILocation(line: 76, column: 38, scope: !770)
!793 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !792)
!794 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !792)
!795 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !792)
!796 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !792)
!797 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !792)
!798 = !DILocation(line: 0, scope: !240, inlinedAt: !792)
!799 = !DILocation(line: 0, scope: !233, inlinedAt: !800)
!800 = distinct !DILocation(line: 77, column: 9, scope: !770)
!801 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !800)
!802 = !DILocation(line: 0, scope: !254, inlinedAt: !803)
!803 = distinct !DILocation(line: 77, column: 26, scope: !770)
!804 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !803)
!805 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !803)
!806 = !DILocation(line: 0, scope: !233, inlinedAt: !807)
!807 = distinct !DILocation(line: 78, column: 9, scope: !770)
!808 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !807)
!809 = !DILocation(line: 0, scope: !254, inlinedAt: !810)
!810 = distinct !DILocation(line: 78, column: 29, scope: !770)
!811 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !810)
!812 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !810)
!813 = !DILocation(line: 0, scope: !233, inlinedAt: !814)
!814 = distinct !DILocation(line: 78, column: 39, scope: !770)
!815 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !814)
!816 = !DILocation(line: 0, scope: !262, inlinedAt: !817)
!817 = distinct !DILocation(line: 75, column: 5, scope: !770)
!818 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !817)
!819 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !817)
!820 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !817)
!821 = !DILocation(line: 0, scope: !273, inlinedAt: !822)
!822 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !817)
!823 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !822)
!824 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !822)
!825 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !822)
!826 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !817)
!827 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !817)
!828 = !DILocation(line: 79, column: 5, scope: !770)
!829 = distinct !DISubprogram(name: "halide_error_buffer_extents_too_large", scope: !200, file: !200, line: 82, type: !830, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{!15, !77, !92, !97, !97}
!832 = !{!833, !834, !835, !836}
!833 = !DILocalVariable(name: "user_context", arg: 1, scope: !829, file: !200, line: 82, type: !77)
!834 = !DILocalVariable(name: "buffer_name", arg: 2, scope: !829, file: !200, line: 82, type: !92)
!835 = !DILocalVariable(name: "actual_size", arg: 3, scope: !829, file: !200, line: 82, type: !97)
!836 = !DILocalVariable(name: "max_size", arg: 4, scope: !829, file: !200, line: 82, type: !97)
!837 = !DILocation(line: 0, scope: !829)
!838 = !DILocation(line: 0, scope: !209, inlinedAt: !839)
!839 = distinct !DILocation(line: 83, column: 5, scope: !829)
!840 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !839)
!841 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !839)
!842 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !839)
!843 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !839)
!844 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !839)
!845 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !839)
!846 = !DILocation(line: 0, scope: !222, inlinedAt: !839)
!847 = !DILocation(line: 0, scope: !233, inlinedAt: !848)
!848 = distinct !DILocation(line: 84, column: 9, scope: !829)
!849 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !848)
!850 = !DILocation(line: 0, scope: !233, inlinedAt: !851)
!851 = distinct !DILocation(line: 84, column: 45, scope: !829)
!852 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !851)
!853 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !851)
!854 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !851)
!855 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !851)
!856 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !851)
!857 = !DILocation(line: 0, scope: !240, inlinedAt: !851)
!858 = !DILocation(line: 0, scope: !233, inlinedAt: !859)
!859 = distinct !DILocation(line: 85, column: 9, scope: !829)
!860 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !859)
!861 = !DILocalVariable(name: "this", arg: 1, scope: !862, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!862 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !69, file: !64, line: 67, type: !95, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !94, retainedNodes: !863)
!863 = !{!861, !864}
!864 = !DILocalVariable(name: "arg", arg: 2, scope: !862, file: !64, line: 67, type: !97)
!865 = !DILocation(line: 0, scope: !862, inlinedAt: !866)
!866 = distinct !DILocation(line: 85, column: 19, scope: !829)
!867 = !DILocation(line: 68, column: 15, scope: !862, inlinedAt: !866)
!868 = !DILocation(line: 0, scope: !233, inlinedAt: !869)
!869 = distinct !DILocation(line: 86, column: 9, scope: !829)
!870 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !869)
!871 = !DILocation(line: 0, scope: !862, inlinedAt: !872)
!872 = distinct !DILocation(line: 86, column: 51, scope: !829)
!873 = !DILocation(line: 68, column: 15, scope: !862, inlinedAt: !872)
!874 = !DILocation(line: 0, scope: !262, inlinedAt: !875)
!875 = distinct !DILocation(line: 83, column: 5, scope: !829)
!876 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !875)
!877 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !875)
!878 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !875)
!879 = !DILocation(line: 0, scope: !273, inlinedAt: !880)
!880 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !875)
!881 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !880)
!882 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !880)
!883 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !880)
!884 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !875)
!885 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !875)
!886 = !DILocation(line: 87, column: 5, scope: !829)
!887 = distinct !DISubprogram(name: "halide_error_constraints_make_required_region_smaller", scope: !200, file: !200, line: 90, type: !593, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !888)
!888 = !{!889, !890, !891, !892, !893, !894, !895, !896, !897}
!889 = !DILocalVariable(name: "user_context", arg: 1, scope: !887, file: !200, line: 90, type: !77)
!890 = !DILocalVariable(name: "buffer_name", arg: 2, scope: !887, file: !200, line: 90, type: !92)
!891 = !DILocalVariable(name: "dimension", arg: 3, scope: !887, file: !200, line: 91, type: !15)
!892 = !DILocalVariable(name: "constrained_min", arg: 4, scope: !887, file: !200, line: 92, type: !15)
!893 = !DILocalVariable(name: "constrained_extent", arg: 5, scope: !887, file: !200, line: 92, type: !15)
!894 = !DILocalVariable(name: "required_min", arg: 6, scope: !887, file: !200, line: 93, type: !15)
!895 = !DILocalVariable(name: "required_extent", arg: 7, scope: !887, file: !200, line: 93, type: !15)
!896 = !DILocalVariable(name: "required_max", scope: !887, file: !200, line: 94, type: !15)
!897 = !DILocalVariable(name: "constrained_max", scope: !887, file: !200, line: 95, type: !15)
!898 = !DILocation(line: 0, scope: !887)
!899 = !DILocation(line: 94, column: 37, scope: !887)
!900 = !DILocation(line: 94, column: 55, scope: !887)
!901 = !DILocation(line: 95, column: 43, scope: !887)
!902 = !DILocation(line: 95, column: 64, scope: !887)
!903 = !DILocation(line: 0, scope: !209, inlinedAt: !904)
!904 = distinct !DILocation(line: 96, column: 5, scope: !887)
!905 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !904)
!906 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !904)
!907 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !904)
!908 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !904)
!909 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !904)
!910 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !904)
!911 = !DILocation(line: 0, scope: !222, inlinedAt: !904)
!912 = !DILocation(line: 0, scope: !233, inlinedAt: !913)
!913 = distinct !DILocation(line: 97, column: 9, scope: !887)
!914 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !913)
!915 = !DILocation(line: 0, scope: !233, inlinedAt: !916)
!916 = distinct !DILocation(line: 97, column: 43, scope: !887)
!917 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !916)
!918 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !916)
!919 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !916)
!920 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !916)
!921 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !916)
!922 = !DILocation(line: 0, scope: !240, inlinedAt: !916)
!923 = !DILocation(line: 0, scope: !233, inlinedAt: !924)
!924 = distinct !DILocation(line: 98, column: 9, scope: !887)
!925 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !924)
!926 = !DILocation(line: 0, scope: !254, inlinedAt: !927)
!927 = distinct !DILocation(line: 98, column: 68, scope: !887)
!928 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !927)
!929 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !927)
!930 = !DILocation(line: 0, scope: !233, inlinedAt: !931)
!931 = distinct !DILocation(line: 98, column: 81, scope: !887)
!932 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !931)
!933 = !DILocation(line: 0, scope: !233, inlinedAt: !934)
!934 = distinct !DILocation(line: 99, column: 9, scope: !887)
!935 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !934)
!936 = !DILocation(line: 0, scope: !254, inlinedAt: !937)
!937 = distinct !DILocation(line: 99, column: 30, scope: !887)
!938 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !937)
!939 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !937)
!940 = !DILocation(line: 0, scope: !233, inlinedAt: !941)
!941 = distinct !DILocation(line: 99, column: 46, scope: !887)
!942 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !941)
!943 = !DILocation(line: 0, scope: !254, inlinedAt: !944)
!944 = distinct !DILocation(line: 99, column: 56, scope: !887)
!945 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !944)
!946 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !944)
!947 = !DILocation(line: 0, scope: !233, inlinedAt: !948)
!948 = distinct !DILocation(line: 99, column: 72, scope: !887)
!949 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !948)
!950 = !DILocation(line: 0, scope: !233, inlinedAt: !951)
!951 = distinct !DILocation(line: 100, column: 9, scope: !887)
!952 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !951)
!953 = !DILocation(line: 0, scope: !254, inlinedAt: !954)
!954 = distinct !DILocation(line: 100, column: 33, scope: !887)
!955 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !954)
!956 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !954)
!957 = !DILocation(line: 0, scope: !233, inlinedAt: !958)
!958 = distinct !DILocation(line: 100, column: 52, scope: !887)
!959 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !958)
!960 = !DILocation(line: 0, scope: !254, inlinedAt: !961)
!961 = distinct !DILocation(line: 100, column: 62, scope: !887)
!962 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !961)
!963 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !961)
!964 = !DILocation(line: 0, scope: !233, inlinedAt: !965)
!965 = distinct !DILocation(line: 100, column: 81, scope: !887)
!966 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !965)
!967 = !DILocation(line: 0, scope: !262, inlinedAt: !968)
!968 = distinct !DILocation(line: 96, column: 5, scope: !887)
!969 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !968)
!970 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !968)
!971 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !968)
!972 = !DILocation(line: 0, scope: !273, inlinedAt: !973)
!973 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !968)
!974 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !973)
!975 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !973)
!976 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !973)
!977 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !968)
!978 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !968)
!979 = !DILocation(line: 101, column: 5, scope: !887)
!980 = distinct !DISubprogram(name: "halide_error_constraint_violated", scope: !200, file: !200, line: 104, type: !981, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{!15, !77, !92, !15, !92, !15}
!983 = !{!984, !985, !986, !987, !988}
!984 = !DILocalVariable(name: "user_context", arg: 1, scope: !980, file: !200, line: 104, type: !77)
!985 = !DILocalVariable(name: "var", arg: 2, scope: !980, file: !200, line: 104, type: !92)
!986 = !DILocalVariable(name: "val", arg: 3, scope: !980, file: !200, line: 104, type: !15)
!987 = !DILocalVariable(name: "constrained_var", arg: 4, scope: !980, file: !200, line: 105, type: !92)
!988 = !DILocalVariable(name: "constrained_val", arg: 5, scope: !980, file: !200, line: 105, type: !15)
!989 = !DILocation(line: 0, scope: !980)
!990 = !DILocation(line: 0, scope: !209, inlinedAt: !991)
!991 = distinct !DILocation(line: 106, column: 5, scope: !980)
!992 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !991)
!993 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !991)
!994 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !991)
!995 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !991)
!996 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !991)
!997 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !991)
!998 = !DILocation(line: 0, scope: !222, inlinedAt: !991)
!999 = !DILocation(line: 0, scope: !233, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 107, column: 9, scope: !980)
!1001 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1000)
!1002 = !DILocation(line: 0, scope: !233, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 107, column: 36, scope: !980)
!1004 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1003)
!1005 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1003)
!1006 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1003)
!1007 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1003)
!1008 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1003)
!1009 = !DILocation(line: 0, scope: !240, inlinedAt: !1003)
!1010 = !DILocation(line: 0, scope: !233, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 107, column: 43, scope: !980)
!1012 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1011)
!1013 = !DILocation(line: 0, scope: !254, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 107, column: 51, scope: !980)
!1015 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1014)
!1016 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1014)
!1017 = !DILocation(line: 0, scope: !233, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 108, column: 9, scope: !980)
!1019 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1018)
!1020 = !DILocation(line: 0, scope: !233, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 108, column: 20, scope: !980)
!1022 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1021)
!1023 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1021)
!1024 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1021)
!1025 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1021)
!1026 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1021)
!1027 = !DILocation(line: 0, scope: !240, inlinedAt: !1021)
!1028 = !DILocation(line: 0, scope: !233, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 108, column: 39, scope: !980)
!1030 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1029)
!1031 = !DILocation(line: 0, scope: !254, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 108, column: 47, scope: !980)
!1033 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1032)
!1034 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1032)
!1035 = !DILocation(line: 0, scope: !233, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 108, column: 66, scope: !980)
!1037 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1036)
!1038 = !DILocation(line: 0, scope: !262, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 106, column: 5, scope: !980)
!1040 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1039)
!1041 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1039)
!1042 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1039)
!1043 = !DILocation(line: 0, scope: !273, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1039)
!1045 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1044)
!1046 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1044)
!1047 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1044)
!1048 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1039)
!1049 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !1039)
!1050 = !DILocation(line: 109, column: 5, scope: !980)
!1051 = distinct !DISubprogram(name: "halide_error_param_too_small_i64", scope: !200, file: !200, line: 112, type: !830, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1052)
!1052 = !{!1053, !1054, !1055, !1056}
!1053 = !DILocalVariable(name: "user_context", arg: 1, scope: !1051, file: !200, line: 112, type: !77)
!1054 = !DILocalVariable(name: "param_name", arg: 2, scope: !1051, file: !200, line: 112, type: !92)
!1055 = !DILocalVariable(name: "val", arg: 3, scope: !1051, file: !200, line: 113, type: !97)
!1056 = !DILocalVariable(name: "min_val", arg: 4, scope: !1051, file: !200, line: 113, type: !97)
!1057 = !DILocation(line: 0, scope: !1051)
!1058 = !DILocation(line: 0, scope: !209, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 114, column: 5, scope: !1051)
!1060 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1059)
!1061 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1059)
!1062 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1059)
!1063 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1059)
!1064 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1059)
!1065 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1059)
!1066 = !DILocation(line: 0, scope: !222, inlinedAt: !1059)
!1067 = !DILocation(line: 0, scope: !233, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 115, column: 9, scope: !1051)
!1069 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1068)
!1070 = !DILocation(line: 0, scope: !233, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 115, column: 25, scope: !1051)
!1072 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1071)
!1073 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1071)
!1074 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1071)
!1075 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1071)
!1076 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1071)
!1077 = !DILocation(line: 0, scope: !240, inlinedAt: !1071)
!1078 = !DILocation(line: 0, scope: !233, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 116, column: 9, scope: !1051)
!1080 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1079)
!1081 = !DILocation(line: 0, scope: !862, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 116, column: 19, scope: !1051)
!1083 = !DILocation(line: 68, column: 15, scope: !862, inlinedAt: !1082)
!1084 = !DILocation(line: 0, scope: !233, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 117, column: 9, scope: !1051)
!1086 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1085)
!1087 = !DILocation(line: 0, scope: !862, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 117, column: 37, scope: !1051)
!1089 = !DILocation(line: 68, column: 15, scope: !862, inlinedAt: !1088)
!1090 = !DILocation(line: 0, scope: !262, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 114, column: 5, scope: !1051)
!1092 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1091)
!1093 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1091)
!1094 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1091)
!1095 = !DILocation(line: 0, scope: !273, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1091)
!1097 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1096)
!1098 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1096)
!1099 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1096)
!1100 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1091)
!1101 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !1091)
!1102 = !DILocation(line: 118, column: 5, scope: !1051)
!1103 = distinct !DISubprogram(name: "halide_error_param_too_small_u64", scope: !200, file: !200, line: 121, type: !713, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1104)
!1104 = !{!1105, !1106, !1107, !1108}
!1105 = !DILocalVariable(name: "user_context", arg: 1, scope: !1103, file: !200, line: 121, type: !77)
!1106 = !DILocalVariable(name: "param_name", arg: 2, scope: !1103, file: !200, line: 121, type: !92)
!1107 = !DILocalVariable(name: "val", arg: 3, scope: !1103, file: !200, line: 122, type: !106)
!1108 = !DILocalVariable(name: "min_val", arg: 4, scope: !1103, file: !200, line: 122, type: !106)
!1109 = !DILocation(line: 0, scope: !1103)
!1110 = !DILocation(line: 0, scope: !209, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 123, column: 5, scope: !1103)
!1112 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1111)
!1113 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1111)
!1114 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1111)
!1115 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1111)
!1116 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1111)
!1117 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1111)
!1118 = !DILocation(line: 0, scope: !222, inlinedAt: !1111)
!1119 = !DILocation(line: 0, scope: !233, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 124, column: 9, scope: !1103)
!1121 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1120)
!1122 = !DILocation(line: 0, scope: !233, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 124, column: 25, scope: !1103)
!1124 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1123)
!1125 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1123)
!1126 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1123)
!1127 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1123)
!1128 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1123)
!1129 = !DILocation(line: 0, scope: !240, inlinedAt: !1123)
!1130 = !DILocation(line: 0, scope: !233, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 125, column: 9, scope: !1103)
!1132 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1131)
!1133 = !DILocation(line: 0, scope: !745, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 125, column: 19, scope: !1103)
!1135 = !DILocation(line: 78, column: 15, scope: !745, inlinedAt: !1134)
!1136 = !DILocation(line: 0, scope: !233, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 126, column: 9, scope: !1103)
!1138 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1137)
!1139 = !DILocation(line: 0, scope: !745, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 126, column: 37, scope: !1103)
!1141 = !DILocation(line: 78, column: 15, scope: !745, inlinedAt: !1140)
!1142 = !DILocation(line: 0, scope: !262, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 123, column: 5, scope: !1103)
!1144 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1143)
!1145 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1143)
!1146 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1143)
!1147 = !DILocation(line: 0, scope: !273, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1143)
!1149 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1148)
!1150 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1148)
!1151 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1148)
!1152 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1143)
!1153 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !1143)
!1154 = !DILocation(line: 127, column: 5, scope: !1103)
!1155 = distinct !DISubprogram(name: "halide_error_param_too_small_f64", scope: !200, file: !200, line: 130, type: !1156, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1158)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!15, !77, !92, !116, !116}
!1158 = !{!1159, !1160, !1161, !1162}
!1159 = !DILocalVariable(name: "user_context", arg: 1, scope: !1155, file: !200, line: 130, type: !77)
!1160 = !DILocalVariable(name: "param_name", arg: 2, scope: !1155, file: !200, line: 130, type: !92)
!1161 = !DILocalVariable(name: "val", arg: 3, scope: !1155, file: !200, line: 131, type: !116)
!1162 = !DILocalVariable(name: "min_val", arg: 4, scope: !1155, file: !200, line: 131, type: !116)
!1163 = !DILocation(line: 0, scope: !1155)
!1164 = !DILocation(line: 0, scope: !209, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 132, column: 5, scope: !1155)
!1166 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1165)
!1167 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1165)
!1168 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1165)
!1169 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1165)
!1170 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1165)
!1171 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1165)
!1172 = !DILocation(line: 0, scope: !222, inlinedAt: !1165)
!1173 = !DILocation(line: 0, scope: !233, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 133, column: 9, scope: !1155)
!1175 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1174)
!1176 = !DILocation(line: 0, scope: !233, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 133, column: 25, scope: !1155)
!1178 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1177)
!1179 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1177)
!1180 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1177)
!1181 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1177)
!1182 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1177)
!1183 = !DILocation(line: 0, scope: !240, inlinedAt: !1177)
!1184 = !DILocation(line: 0, scope: !233, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 134, column: 9, scope: !1155)
!1186 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1185)
!1187 = !DILocalVariable(name: "this", arg: 1, scope: !1188, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!1188 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !69, file: !64, line: 87, type: !114, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !113, retainedNodes: !1189)
!1189 = !{!1187, !1190}
!1190 = !DILocalVariable(name: "arg", arg: 2, scope: !1188, file: !64, line: 87, type: !116)
!1191 = !DILocation(line: 0, scope: !1188, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 134, column: 19, scope: !1155)
!1193 = !DILocation(line: 88, column: 15, scope: !1188, inlinedAt: !1192)
!1194 = !DILocation(line: 0, scope: !233, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 135, column: 9, scope: !1155)
!1196 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1195)
!1197 = !DILocation(line: 0, scope: !1188, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 135, column: 37, scope: !1155)
!1199 = !DILocation(line: 88, column: 15, scope: !1188, inlinedAt: !1198)
!1200 = !DILocation(line: 0, scope: !262, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 132, column: 5, scope: !1155)
!1202 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1201)
!1203 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1201)
!1204 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1201)
!1205 = !DILocation(line: 0, scope: !273, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1201)
!1207 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1206)
!1208 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1206)
!1209 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1206)
!1210 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1201)
!1211 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !1201)
!1212 = !DILocation(line: 136, column: 5, scope: !1155)
!1213 = distinct !DISubprogram(name: "halide_error_param_too_large_i64", scope: !200, file: !200, line: 139, type: !830, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1214)
!1214 = !{!1215, !1216, !1217, !1218}
!1215 = !DILocalVariable(name: "user_context", arg: 1, scope: !1213, file: !200, line: 139, type: !77)
!1216 = !DILocalVariable(name: "param_name", arg: 2, scope: !1213, file: !200, line: 139, type: !92)
!1217 = !DILocalVariable(name: "val", arg: 3, scope: !1213, file: !200, line: 140, type: !97)
!1218 = !DILocalVariable(name: "max_val", arg: 4, scope: !1213, file: !200, line: 140, type: !97)
!1219 = !DILocation(line: 0, scope: !1213)
!1220 = !DILocation(line: 0, scope: !209, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 141, column: 5, scope: !1213)
!1222 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1221)
!1223 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1221)
!1224 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1221)
!1225 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1221)
!1226 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1221)
!1227 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1221)
!1228 = !DILocation(line: 0, scope: !222, inlinedAt: !1221)
!1229 = !DILocation(line: 0, scope: !233, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 142, column: 9, scope: !1213)
!1231 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1230)
!1232 = !DILocation(line: 0, scope: !233, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 142, column: 25, scope: !1213)
!1234 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1233)
!1235 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1233)
!1236 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1233)
!1237 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1233)
!1238 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1233)
!1239 = !DILocation(line: 0, scope: !240, inlinedAt: !1233)
!1240 = !DILocation(line: 0, scope: !233, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 143, column: 9, scope: !1213)
!1242 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1241)
!1243 = !DILocation(line: 0, scope: !862, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 143, column: 19, scope: !1213)
!1245 = !DILocation(line: 68, column: 15, scope: !862, inlinedAt: !1244)
!1246 = !DILocation(line: 0, scope: !233, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 144, column: 9, scope: !1213)
!1248 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1247)
!1249 = !DILocation(line: 0, scope: !862, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 144, column: 36, scope: !1213)
!1251 = !DILocation(line: 68, column: 15, scope: !862, inlinedAt: !1250)
!1252 = !DILocation(line: 0, scope: !262, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 141, column: 5, scope: !1213)
!1254 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1253)
!1255 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1253)
!1256 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1253)
!1257 = !DILocation(line: 0, scope: !273, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1253)
!1259 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1258)
!1260 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1258)
!1261 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1258)
!1262 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1253)
!1263 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !1253)
!1264 = !DILocation(line: 145, column: 5, scope: !1213)
!1265 = distinct !DISubprogram(name: "halide_error_param_too_large_u64", scope: !200, file: !200, line: 148, type: !713, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1266)
!1266 = !{!1267, !1268, !1269, !1270}
!1267 = !DILocalVariable(name: "user_context", arg: 1, scope: !1265, file: !200, line: 148, type: !77)
!1268 = !DILocalVariable(name: "param_name", arg: 2, scope: !1265, file: !200, line: 148, type: !92)
!1269 = !DILocalVariable(name: "val", arg: 3, scope: !1265, file: !200, line: 149, type: !106)
!1270 = !DILocalVariable(name: "max_val", arg: 4, scope: !1265, file: !200, line: 149, type: !106)
!1271 = !DILocation(line: 0, scope: !1265)
!1272 = !DILocation(line: 0, scope: !209, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 150, column: 5, scope: !1265)
!1274 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1273)
!1275 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1273)
!1276 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1273)
!1277 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1273)
!1278 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1273)
!1279 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1273)
!1280 = !DILocation(line: 0, scope: !222, inlinedAt: !1273)
!1281 = !DILocation(line: 0, scope: !233, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 151, column: 9, scope: !1265)
!1283 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1282)
!1284 = !DILocation(line: 0, scope: !233, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 151, column: 25, scope: !1265)
!1286 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1285)
!1287 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1285)
!1288 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1285)
!1289 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1285)
!1290 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1285)
!1291 = !DILocation(line: 0, scope: !240, inlinedAt: !1285)
!1292 = !DILocation(line: 0, scope: !233, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 152, column: 9, scope: !1265)
!1294 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1293)
!1295 = !DILocation(line: 0, scope: !745, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 152, column: 19, scope: !1265)
!1297 = !DILocation(line: 78, column: 15, scope: !745, inlinedAt: !1296)
!1298 = !DILocation(line: 0, scope: !233, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 153, column: 9, scope: !1265)
!1300 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1299)
!1301 = !DILocation(line: 0, scope: !745, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 153, column: 36, scope: !1265)
!1303 = !DILocation(line: 78, column: 15, scope: !745, inlinedAt: !1302)
!1304 = !DILocation(line: 0, scope: !262, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 150, column: 5, scope: !1265)
!1306 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1305)
!1307 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1305)
!1308 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1305)
!1309 = !DILocation(line: 0, scope: !273, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1305)
!1311 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1310)
!1312 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1310)
!1313 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1310)
!1314 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1305)
!1315 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !1305)
!1316 = !DILocation(line: 154, column: 5, scope: !1265)
!1317 = distinct !DISubprogram(name: "halide_error_param_too_large_f64", scope: !200, file: !200, line: 157, type: !1156, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1318)
!1318 = !{!1319, !1320, !1321, !1322}
!1319 = !DILocalVariable(name: "user_context", arg: 1, scope: !1317, file: !200, line: 157, type: !77)
!1320 = !DILocalVariable(name: "param_name", arg: 2, scope: !1317, file: !200, line: 157, type: !92)
!1321 = !DILocalVariable(name: "val", arg: 3, scope: !1317, file: !200, line: 158, type: !116)
!1322 = !DILocalVariable(name: "max_val", arg: 4, scope: !1317, file: !200, line: 158, type: !116)
!1323 = !DILocation(line: 0, scope: !1317)
!1324 = !DILocation(line: 0, scope: !209, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 159, column: 5, scope: !1317)
!1326 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1325)
!1327 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1325)
!1328 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1325)
!1329 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1325)
!1330 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1325)
!1331 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1325)
!1332 = !DILocation(line: 0, scope: !222, inlinedAt: !1325)
!1333 = !DILocation(line: 0, scope: !233, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 160, column: 9, scope: !1317)
!1335 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1334)
!1336 = !DILocation(line: 0, scope: !233, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 160, column: 25, scope: !1317)
!1338 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1337)
!1339 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1337)
!1340 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1337)
!1341 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1337)
!1342 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1337)
!1343 = !DILocation(line: 0, scope: !240, inlinedAt: !1337)
!1344 = !DILocation(line: 0, scope: !233, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 161, column: 9, scope: !1317)
!1346 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1345)
!1347 = !DILocation(line: 0, scope: !1188, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 161, column: 19, scope: !1317)
!1349 = !DILocation(line: 88, column: 15, scope: !1188, inlinedAt: !1348)
!1350 = !DILocation(line: 0, scope: !233, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 162, column: 9, scope: !1317)
!1352 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1351)
!1353 = !DILocation(line: 0, scope: !1188, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 162, column: 36, scope: !1317)
!1355 = !DILocation(line: 88, column: 15, scope: !1188, inlinedAt: !1354)
!1356 = !DILocation(line: 0, scope: !262, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 159, column: 5, scope: !1317)
!1358 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1357)
!1359 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1357)
!1360 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1357)
!1361 = !DILocation(line: 0, scope: !273, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1357)
!1363 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1362)
!1364 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1362)
!1365 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1362)
!1366 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1357)
!1367 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !1357)
!1368 = !DILocation(line: 163, column: 5, scope: !1317)
!1369 = distinct !DISubprogram(name: "halide_error_out_of_memory", scope: !200, file: !200, line: 166, type: !1370, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1372)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!15, !77}
!1372 = !{!1373}
!1373 = !DILocalVariable(name: "user_context", arg: 1, scope: !1369, file: !200, line: 166, type: !77)
!1374 = !DILocation(line: 0, scope: !1369)
!1375 = !DILocation(line: 168, column: 5, scope: !1369)
!1376 = !DILocation(line: 169, column: 5, scope: !1369)
!1377 = !DISubprogram(name: "halide_error", scope: !4, file: !4, line: 111, type: !1378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null, !77, !92}
!1380 = distinct !DISubprogram(name: "halide_error_buffer_argument_is_null", scope: !200, file: !200, line: 172, type: !1381, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1383)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!15, !77, !92}
!1383 = !{!1384, !1385}
!1384 = !DILocalVariable(name: "user_context", arg: 1, scope: !1380, file: !200, line: 172, type: !77)
!1385 = !DILocalVariable(name: "buffer_name", arg: 2, scope: !1380, file: !200, line: 172, type: !92)
!1386 = !DILocation(line: 0, scope: !1380)
!1387 = !DILocation(line: 0, scope: !209, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 173, column: 5, scope: !1380)
!1389 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1388)
!1390 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1388)
!1391 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1388)
!1392 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1388)
!1393 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1388)
!1394 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1388)
!1395 = !DILocation(line: 0, scope: !222, inlinedAt: !1388)
!1396 = !DILocation(line: 0, scope: !233, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 174, column: 9, scope: !1380)
!1398 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1397)
!1399 = !DILocation(line: 0, scope: !233, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 174, column: 31, scope: !1380)
!1401 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1400)
!1402 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1400)
!1403 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1400)
!1404 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1400)
!1405 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1400)
!1406 = !DILocation(line: 0, scope: !240, inlinedAt: !1400)
!1407 = !DILocation(line: 0, scope: !233, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 174, column: 46, scope: !1380)
!1409 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1408)
!1410 = !DILocation(line: 0, scope: !262, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 173, column: 5, scope: !1380)
!1412 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1411)
!1413 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1411)
!1414 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1411)
!1415 = !DILocation(line: 0, scope: !273, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1411)
!1417 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1416)
!1418 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1416)
!1419 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1416)
!1420 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1411)
!1421 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !1411)
!1422 = !DILocation(line: 175, column: 5, scope: !1380)
!1423 = distinct !DISubprogram(name: "halide_error_debug_to_file_failed", scope: !200, file: !200, line: 178, type: !1424, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1426)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!15, !77, !92, !92, !15}
!1426 = !{!1427, !1428, !1429, !1430}
!1427 = !DILocalVariable(name: "user_context", arg: 1, scope: !1423, file: !200, line: 178, type: !77)
!1428 = !DILocalVariable(name: "func", arg: 2, scope: !1423, file: !200, line: 178, type: !92)
!1429 = !DILocalVariable(name: "filename", arg: 3, scope: !1423, file: !200, line: 179, type: !92)
!1430 = !DILocalVariable(name: "error_code", arg: 4, scope: !1423, file: !200, line: 179, type: !15)
!1431 = !DILocation(line: 0, scope: !1423)
!1432 = !DILocation(line: 0, scope: !209, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 180, column: 5, scope: !1423)
!1434 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1433)
!1435 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1433)
!1436 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1433)
!1437 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1433)
!1438 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1433)
!1439 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1433)
!1440 = !DILocation(line: 0, scope: !222, inlinedAt: !1433)
!1441 = !DILocation(line: 0, scope: !233, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 181, column: 9, scope: !1423)
!1443 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1442)
!1444 = !DILocation(line: 0, scope: !233, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 181, column: 39, scope: !1423)
!1446 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1445)
!1447 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1445)
!1448 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1445)
!1449 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1445)
!1450 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1445)
!1451 = !DILocation(line: 0, scope: !240, inlinedAt: !1445)
!1452 = !DILocation(line: 0, scope: !233, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 182, column: 9, scope: !1423)
!1454 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1453)
!1455 = !DILocation(line: 0, scope: !233, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 182, column: 24, scope: !1423)
!1457 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1456)
!1458 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1456)
!1459 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1456)
!1460 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1456)
!1461 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1456)
!1462 = !DILocation(line: 0, scope: !240, inlinedAt: !1456)
!1463 = !DILocation(line: 0, scope: !233, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 183, column: 9, scope: !1423)
!1465 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1464)
!1466 = !DILocation(line: 0, scope: !254, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 183, column: 27, scope: !1423)
!1468 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1467)
!1469 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1467)
!1470 = !DILocation(line: 0, scope: !262, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 180, column: 5, scope: !1423)
!1472 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1471)
!1473 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1471)
!1474 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1471)
!1475 = !DILocation(line: 0, scope: !273, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1471)
!1477 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1476)
!1478 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1476)
!1479 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1476)
!1480 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1471)
!1481 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !1471)
!1482 = !DILocation(line: 184, column: 5, scope: !1423)
!1483 = distinct !DISubprogram(name: "halide_error_unaligned_host_ptr", scope: !200, file: !200, line: 187, type: !201, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1484)
!1484 = !{!1485, !1486, !1487}
!1485 = !DILocalVariable(name: "user_context", arg: 1, scope: !1483, file: !200, line: 187, type: !77)
!1486 = !DILocalVariable(name: "func", arg: 2, scope: !1483, file: !200, line: 187, type: !92)
!1487 = !DILocalVariable(name: "alignment", arg: 3, scope: !1483, file: !200, line: 188, type: !15)
!1488 = !DILocation(line: 0, scope: !1483)
!1489 = !DILocation(line: 0, scope: !209, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 189, column: 5, scope: !1483)
!1491 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1490)
!1492 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1490)
!1493 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1490)
!1494 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1490)
!1495 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1490)
!1496 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1490)
!1497 = !DILocation(line: 0, scope: !222, inlinedAt: !1490)
!1498 = !DILocation(line: 0, scope: !233, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 190, column: 9, scope: !1483)
!1500 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1499)
!1501 = !DILocation(line: 0, scope: !233, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 190, column: 35, scope: !1483)
!1503 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1502)
!1504 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1502)
!1505 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1502)
!1506 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1502)
!1507 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1502)
!1508 = !DILocation(line: 0, scope: !240, inlinedAt: !1502)
!1509 = !DILocation(line: 0, scope: !233, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 191, column: 9, scope: !1483)
!1511 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1510)
!1512 = !DILocation(line: 0, scope: !254, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 191, column: 36, scope: !1483)
!1514 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1513)
!1515 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1513)
!1516 = !DILocation(line: 0, scope: !233, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 192, column: 9, scope: !1483)
!1518 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1517)
!1519 = !DILocation(line: 0, scope: !262, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 189, column: 5, scope: !1483)
!1521 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1520)
!1522 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1520)
!1523 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1520)
!1524 = !DILocation(line: 0, scope: !273, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1520)
!1526 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1525)
!1527 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1525)
!1528 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1525)
!1529 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1520)
!1530 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !1520)
!1531 = !DILocation(line: 193, column: 5, scope: !1483)
!1532 = distinct !DISubprogram(name: "halide_error_device_dirty_with_no_device_support", scope: !200, file: !200, line: 196, type: !1381, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1533)
!1533 = !{!1534, !1535}
!1534 = !DILocalVariable(name: "user_context", arg: 1, scope: !1532, file: !200, line: 196, type: !77)
!1535 = !DILocalVariable(name: "func", arg: 2, scope: !1532, file: !200, line: 196, type: !92)
!1536 = !DILocation(line: 0, scope: !1532)
!1537 = !DILocation(line: 0, scope: !209, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 197, column: 5, scope: !1532)
!1539 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1538)
!1540 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1538)
!1541 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1538)
!1542 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1538)
!1543 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1538)
!1544 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1538)
!1545 = !DILocation(line: 0, scope: !222, inlinedAt: !1538)
!1546 = !DILocation(line: 0, scope: !233, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 198, column: 9, scope: !1532)
!1548 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1547)
!1549 = !DILocation(line: 0, scope: !233, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 198, column: 26, scope: !1532)
!1551 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1550)
!1552 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1550)
!1553 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1550)
!1554 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1550)
!1555 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1550)
!1556 = !DILocation(line: 0, scope: !240, inlinedAt: !1550)
!1557 = !DILocation(line: 0, scope: !233, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 199, column: 9, scope: !1532)
!1559 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1558)
!1560 = !DILocation(line: 0, scope: !233, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 200, column: 9, scope: !1532)
!1562 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1561)
!1563 = !DILocation(line: 0, scope: !262, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 197, column: 5, scope: !1532)
!1565 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1564)
!1566 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1564)
!1567 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1564)
!1568 = !DILocation(line: 0, scope: !273, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1564)
!1570 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1569)
!1571 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1569)
!1572 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1569)
!1573 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1564)
!1574 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !1564)
!1575 = !DILocation(line: 201, column: 5, scope: !1532)
!1576 = distinct !DISubprogram(name: "halide_error_host_is_null", scope: !200, file: !200, line: 204, type: !1381, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1577)
!1577 = !{!1578, !1579}
!1578 = !DILocalVariable(name: "user_context", arg: 1, scope: !1576, file: !200, line: 204, type: !77)
!1579 = !DILocalVariable(name: "func", arg: 2, scope: !1576, file: !200, line: 204, type: !92)
!1580 = !DILocation(line: 0, scope: !1576)
!1581 = !DILocation(line: 0, scope: !209, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 205, column: 5, scope: !1576)
!1583 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1582)
!1584 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1582)
!1585 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1582)
!1586 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1582)
!1587 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1582)
!1588 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1582)
!1589 = !DILocation(line: 0, scope: !222, inlinedAt: !1582)
!1590 = !DILocation(line: 0, scope: !233, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 206, column: 9, scope: !1576)
!1592 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1591)
!1593 = !DILocation(line: 0, scope: !233, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 206, column: 35, scope: !1576)
!1595 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1594)
!1596 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1594)
!1597 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1594)
!1598 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1594)
!1599 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1594)
!1600 = !DILocation(line: 0, scope: !240, inlinedAt: !1594)
!1601 = !DILocation(line: 0, scope: !233, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 207, column: 9, scope: !1576)
!1603 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1602)
!1604 = !DILocation(line: 0, scope: !262, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 205, column: 5, scope: !1576)
!1606 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1605)
!1607 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1605)
!1608 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1605)
!1609 = !DILocation(line: 0, scope: !273, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1605)
!1611 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1610)
!1612 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1610)
!1613 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1610)
!1614 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1605)
!1615 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !1605)
!1616 = !DILocation(line: 208, column: 5, scope: !1576)
!1617 = distinct !DISubprogram(name: "halide_error_bad_fold", scope: !200, file: !200, line: 211, type: !1618, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1620)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!15, !77, !92, !92, !92}
!1620 = !{!1621, !1622, !1623, !1624}
!1621 = !DILocalVariable(name: "user_context", arg: 1, scope: !1617, file: !200, line: 211, type: !77)
!1622 = !DILocalVariable(name: "func_name", arg: 2, scope: !1617, file: !200, line: 211, type: !92)
!1623 = !DILocalVariable(name: "var_name", arg: 3, scope: !1617, file: !200, line: 211, type: !92)
!1624 = !DILocalVariable(name: "loop_name", arg: 4, scope: !1617, file: !200, line: 212, type: !92)
!1625 = !DILocation(line: 0, scope: !1617)
!1626 = !DILocation(line: 0, scope: !209, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 213, column: 5, scope: !1617)
!1628 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1627)
!1629 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1627)
!1630 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1627)
!1631 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1627)
!1632 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1627)
!1633 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1627)
!1634 = !DILocation(line: 0, scope: !222, inlinedAt: !1627)
!1635 = !DILocation(line: 0, scope: !233, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 214, column: 9, scope: !1617)
!1637 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1636)
!1638 = !DILocation(line: 0, scope: !233, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 214, column: 44, scope: !1617)
!1640 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1639)
!1641 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1639)
!1642 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1639)
!1643 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1639)
!1644 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1639)
!1645 = !DILocation(line: 0, scope: !240, inlinedAt: !1639)
!1646 = !DILocation(line: 0, scope: !233, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 214, column: 56, scope: !1617)
!1648 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1647)
!1649 = !DILocation(line: 0, scope: !233, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 214, column: 66, scope: !1617)
!1651 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1650)
!1652 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1650)
!1653 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1650)
!1654 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1650)
!1655 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1650)
!1656 = !DILocation(line: 0, scope: !240, inlinedAt: !1650)
!1657 = !DILocation(line: 0, scope: !233, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 215, column: 9, scope: !1617)
!1659 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1658)
!1660 = !DILocation(line: 0, scope: !233, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 215, column: 50, scope: !1617)
!1662 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1661)
!1663 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1661)
!1664 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1661)
!1665 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1661)
!1666 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1661)
!1667 = !DILocation(line: 0, scope: !240, inlinedAt: !1661)
!1668 = !DILocation(line: 0, scope: !233, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 215, column: 63, scope: !1617)
!1670 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1669)
!1671 = !DILocation(line: 0, scope: !262, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 213, column: 5, scope: !1617)
!1673 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1672)
!1674 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1672)
!1675 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1672)
!1676 = !DILocation(line: 0, scope: !273, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1672)
!1678 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1677)
!1679 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1677)
!1680 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1677)
!1681 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1672)
!1682 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !1672)
!1683 = !DILocation(line: 216, column: 5, scope: !1617)
!1684 = distinct !DISubprogram(name: "halide_error_bad_extern_fold", scope: !200, file: !200, line: 219, type: !593, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1685)
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692}
!1686 = !DILocalVariable(name: "user_context", arg: 1, scope: !1684, file: !200, line: 219, type: !77)
!1687 = !DILocalVariable(name: "func_name", arg: 2, scope: !1684, file: !200, line: 219, type: !92)
!1688 = !DILocalVariable(name: "dim", arg: 3, scope: !1684, file: !200, line: 220, type: !15)
!1689 = !DILocalVariable(name: "min", arg: 4, scope: !1684, file: !200, line: 220, type: !15)
!1690 = !DILocalVariable(name: "extent", arg: 5, scope: !1684, file: !200, line: 220, type: !15)
!1691 = !DILocalVariable(name: "valid_min", arg: 6, scope: !1684, file: !200, line: 220, type: !15)
!1692 = !DILocalVariable(name: "fold_factor", arg: 7, scope: !1684, file: !200, line: 220, type: !15)
!1693 = !DILocation(line: 0, scope: !1684)
!1694 = !DILocation(line: 221, column: 13, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1684, file: !200, line: 221, column: 9)
!1696 = !DILocation(line: 221, column: 25, scope: !1695)
!1697 = !DILocation(line: 221, column: 32, scope: !1695)
!1698 = !DILocation(line: 221, column: 53, scope: !1695)
!1699 = !DILocation(line: 221, column: 41, scope: !1695)
!1700 = !DILocation(line: 221, column: 9, scope: !1684)
!1701 = !DILocation(line: 0, scope: !209, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 222, column: 9, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1695, file: !200, line: 221, column: 68)
!1704 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1702)
!1705 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1702)
!1706 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1702)
!1707 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1702)
!1708 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1702)
!1709 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1702)
!1710 = !DILocation(line: 0, scope: !222, inlinedAt: !1702)
!1711 = !DILocation(line: 0, scope: !233, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 223, column: 13, scope: !1703)
!1713 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1712)
!1714 = !DILocation(line: 0, scope: !254, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 223, column: 41, scope: !1703)
!1716 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1715)
!1717 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1715)
!1718 = !DILocation(line: 0, scope: !233, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 223, column: 48, scope: !1703)
!1720 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1719)
!1721 = !DILocation(line: 0, scope: !233, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 223, column: 58, scope: !1703)
!1723 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1722)
!1724 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1722)
!1725 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1722)
!1726 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1722)
!1727 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1722)
!1728 = !DILocation(line: 0, scope: !240, inlinedAt: !1722)
!1729 = !DILocation(line: 0, scope: !233, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 224, column: 13, scope: !1703)
!1731 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1730)
!1732 = !DILocation(line: 0, scope: !254, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 224, column: 54, scope: !1703)
!1734 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1733)
!1735 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1733)
!1736 = !DILocation(line: 0, scope: !233, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 224, column: 61, scope: !1703)
!1738 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1737)
!1739 = !DILocation(line: 224, column: 77, scope: !1703)
!1740 = !DILocation(line: 224, column: 86, scope: !1703)
!1741 = !DILocation(line: 0, scope: !254, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 224, column: 69, scope: !1703)
!1743 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1742)
!1744 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1742)
!1745 = !DILocation(line: 0, scope: !233, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 224, column: 91, scope: !1703)
!1747 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1746)
!1748 = !DILocation(line: 0, scope: !233, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 225, column: 13, scope: !1703)
!1750 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1749)
!1751 = !DILocation(line: 0, scope: !254, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 226, column: 13, scope: !1703)
!1753 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1752)
!1754 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1752)
!1755 = !DILocation(line: 0, scope: !233, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 226, column: 26, scope: !1703)
!1757 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1756)
!1758 = !DILocation(line: 226, column: 48, scope: !1703)
!1759 = !DILocation(line: 226, column: 62, scope: !1703)
!1760 = !DILocation(line: 0, scope: !254, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 226, column: 34, scope: !1703)
!1762 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1761)
!1763 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1761)
!1764 = !DILocation(line: 0, scope: !233, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 226, column: 67, scope: !1703)
!1766 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1765)
!1767 = !DILocation(line: 0, scope: !262, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 222, column: 9, scope: !1703)
!1769 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1768)
!1770 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1768)
!1771 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1768)
!1772 = !DILocation(line: 0, scope: !273, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1768)
!1774 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1773)
!1775 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1773)
!1776 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1773)
!1777 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1768)
!1778 = !DILocation(line: 0, scope: !209, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 228, column: 9, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1695, file: !200, line: 227, column: 12)
!1781 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1779)
!1782 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1779)
!1783 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1779)
!1784 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1779)
!1785 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1779)
!1786 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1779)
!1787 = !DILocation(line: 0, scope: !222, inlinedAt: !1779)
!1788 = !DILocation(line: 0, scope: !233, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 229, column: 13, scope: !1780)
!1790 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1789)
!1791 = !DILocation(line: 0, scope: !254, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 229, column: 41, scope: !1780)
!1793 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1792)
!1794 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1792)
!1795 = !DILocation(line: 0, scope: !233, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 229, column: 48, scope: !1780)
!1797 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1796)
!1798 = !DILocation(line: 0, scope: !233, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 229, column: 58, scope: !1780)
!1800 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1799)
!1801 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1799)
!1802 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1799)
!1803 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1799)
!1804 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1799)
!1805 = !DILocation(line: 0, scope: !240, inlinedAt: !1799)
!1806 = !DILocation(line: 0, scope: !233, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 230, column: 13, scope: !1780)
!1808 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1807)
!1809 = !DILocation(line: 0, scope: !254, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 230, column: 54, scope: !1780)
!1811 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1810)
!1812 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1810)
!1813 = !DILocation(line: 0, scope: !233, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 230, column: 61, scope: !1780)
!1815 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1814)
!1816 = !DILocation(line: 230, column: 86, scope: !1780)
!1817 = !DILocation(line: 0, scope: !254, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 230, column: 69, scope: !1780)
!1819 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1818)
!1820 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1818)
!1821 = !DILocation(line: 0, scope: !233, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 230, column: 91, scope: !1780)
!1823 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1822)
!1824 = !DILocation(line: 0, scope: !233, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 231, column: 13, scope: !1780)
!1826 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1825)
!1827 = !DILocation(line: 0, scope: !233, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 232, column: 13, scope: !1780)
!1829 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1828)
!1830 = !DILocation(line: 0, scope: !254, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 232, column: 48, scope: !1780)
!1832 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1831)
!1833 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1831)
!1834 = !DILocation(line: 0, scope: !233, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 232, column: 63, scope: !1780)
!1836 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1835)
!1837 = !DILocation(line: 0, scope: !262, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 228, column: 9, scope: !1780)
!1839 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1838)
!1840 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1838)
!1841 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1838)
!1842 = !DILocation(line: 0, scope: !273, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1838)
!1844 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1843)
!1845 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1843)
!1846 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1843)
!1847 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1838)
!1848 = !DILocation(line: 0, scope: !1695)
!1849 = !DILocation(line: 234, column: 5, scope: !1684)
!1850 = distinct !DISubprogram(name: "halide_error_fold_factor_too_small", scope: !200, file: !200, line: 237, type: !1851, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1853)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!15, !77, !92, !92, !15, !92, !15}
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859}
!1854 = !DILocalVariable(name: "user_context", arg: 1, scope: !1850, file: !200, line: 237, type: !77)
!1855 = !DILocalVariable(name: "func_name", arg: 2, scope: !1850, file: !200, line: 237, type: !92)
!1856 = !DILocalVariable(name: "var_name", arg: 3, scope: !1850, file: !200, line: 237, type: !92)
!1857 = !DILocalVariable(name: "fold_factor", arg: 4, scope: !1850, file: !200, line: 238, type: !15)
!1858 = !DILocalVariable(name: "loop_name", arg: 5, scope: !1850, file: !200, line: 238, type: !92)
!1859 = !DILocalVariable(name: "required_extent", arg: 6, scope: !1850, file: !200, line: 238, type: !15)
!1860 = !DILocation(line: 0, scope: !1850)
!1861 = !DILocation(line: 0, scope: !209, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 239, column: 5, scope: !1850)
!1863 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1862)
!1864 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1862)
!1865 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1862)
!1866 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1862)
!1867 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1862)
!1868 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1862)
!1869 = !DILocation(line: 0, scope: !222, inlinedAt: !1862)
!1870 = !DILocation(line: 0, scope: !233, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 240, column: 9, scope: !1850)
!1872 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1871)
!1873 = !DILocation(line: 0, scope: !254, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 240, column: 32, scope: !1850)
!1875 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1874)
!1876 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1874)
!1877 = !DILocation(line: 0, scope: !233, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 241, column: 9, scope: !1850)
!1879 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1878)
!1880 = !DILocation(line: 0, scope: !233, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 241, column: 30, scope: !1850)
!1882 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1881)
!1883 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1881)
!1884 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1881)
!1885 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1881)
!1886 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1881)
!1887 = !DILocation(line: 0, scope: !240, inlinedAt: !1881)
!1888 = !DILocation(line: 0, scope: !233, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 241, column: 42, scope: !1850)
!1890 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1889)
!1891 = !DILocation(line: 0, scope: !233, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 241, column: 52, scope: !1850)
!1893 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1892)
!1894 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1892)
!1895 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1892)
!1896 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1892)
!1897 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1892)
!1898 = !DILocation(line: 0, scope: !240, inlinedAt: !1892)
!1899 = !DILocation(line: 0, scope: !233, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 242, column: 9, scope: !1850)
!1901 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1900)
!1902 = !DILocation(line: 0, scope: !233, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 243, column: 9, scope: !1850)
!1904 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1903)
!1905 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1903)
!1906 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1903)
!1907 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1903)
!1908 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1903)
!1909 = !DILocation(line: 0, scope: !240, inlinedAt: !1903)
!1910 = !DILocation(line: 0, scope: !233, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 243, column: 22, scope: !1850)
!1912 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1911)
!1913 = !DILocation(line: 0, scope: !254, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 243, column: 30, scope: !1850)
!1915 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1914)
!1916 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1914)
!1917 = !DILocation(line: 0, scope: !233, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 243, column: 49, scope: !1850)
!1919 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1918)
!1920 = !DILocation(line: 0, scope: !262, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 239, column: 5, scope: !1850)
!1922 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1921)
!1923 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1921)
!1924 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1921)
!1925 = !DILocation(line: 0, scope: !273, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1921)
!1927 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1926)
!1928 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1926)
!1929 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1926)
!1930 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1921)
!1931 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !1921)
!1932 = !DILocation(line: 244, column: 5, scope: !1850)
!1933 = distinct !DISubprogram(name: "halide_error_requirement_failed", scope: !200, file: !200, line: 247, type: !1934, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1936)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!15, !77, !92, !92}
!1936 = !{!1937, !1938, !1939}
!1937 = !DILocalVariable(name: "user_context", arg: 1, scope: !1933, file: !200, line: 247, type: !77)
!1938 = !DILocalVariable(name: "condition", arg: 2, scope: !1933, file: !200, line: 247, type: !92)
!1939 = !DILocalVariable(name: "message", arg: 3, scope: !1933, file: !200, line: 247, type: !92)
!1940 = !DILocation(line: 0, scope: !1933)
!1941 = !DILocation(line: 0, scope: !209, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 248, column: 5, scope: !1933)
!1943 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1942)
!1944 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1942)
!1945 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1942)
!1946 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1942)
!1947 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1942)
!1948 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1942)
!1949 = !DILocation(line: 0, scope: !222, inlinedAt: !1942)
!1950 = !DILocation(line: 0, scope: !233, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 249, column: 9, scope: !1933)
!1952 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1951)
!1953 = !DILocation(line: 0, scope: !233, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 249, column: 36, scope: !1933)
!1955 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1954)
!1956 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1954)
!1957 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1954)
!1958 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1954)
!1959 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1954)
!1960 = !DILocation(line: 0, scope: !240, inlinedAt: !1954)
!1961 = !DILocation(line: 0, scope: !233, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 249, column: 49, scope: !1933)
!1963 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1962)
!1964 = !DILocation(line: 0, scope: !233, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 249, column: 57, scope: !1933)
!1966 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1965)
!1967 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1965)
!1968 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1965)
!1969 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1965)
!1970 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1965)
!1971 = !DILocation(line: 0, scope: !240, inlinedAt: !1965)
!1972 = !DILocation(line: 0, scope: !262, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 248, column: 5, scope: !1933)
!1974 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1973)
!1975 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1973)
!1976 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1973)
!1977 = !DILocation(line: 0, scope: !273, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1973)
!1979 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1978)
!1980 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1978)
!1981 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1978)
!1982 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !1973)
!1983 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !1973)
!1984 = !DILocation(line: 250, column: 5, scope: !1933)
!1985 = distinct !DISubprogram(name: "halide_error_specialize_fail", scope: !200, file: !200, line: 253, type: !1381, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1986)
!1986 = !{!1987, !1988}
!1987 = !DILocalVariable(name: "user_context", arg: 1, scope: !1985, file: !200, line: 253, type: !77)
!1988 = !DILocalVariable(name: "message", arg: 2, scope: !1985, file: !200, line: 253, type: !92)
!1989 = !DILocation(line: 0, scope: !1985)
!1990 = !DILocation(line: 0, scope: !209, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 254, column: 5, scope: !1985)
!1992 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1991)
!1993 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1991)
!1994 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1991)
!1995 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1991)
!1996 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1991)
!1997 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1991)
!1998 = !DILocation(line: 0, scope: !222, inlinedAt: !1991)
!1999 = !DILocation(line: 0, scope: !233, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 255, column: 9, scope: !1985)
!2001 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2000)
!2002 = !DILocation(line: 0, scope: !233, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 255, column: 73, scope: !1985)
!2004 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !2003)
!2005 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !2003)
!2006 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !2003)
!2007 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !2003)
!2008 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2003)
!2009 = !DILocation(line: 0, scope: !240, inlinedAt: !2003)
!2010 = !DILocation(line: 0, scope: !262, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 254, column: 5, scope: !1985)
!2012 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !2011)
!2013 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !2011)
!2014 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !2011)
!2015 = !DILocation(line: 0, scope: !273, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !2011)
!2017 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !2016)
!2018 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !2016)
!2019 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !2016)
!2020 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !2011)
!2021 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !2011)
!2022 = !DILocation(line: 256, column: 5, scope: !1985)
!2023 = distinct !DISubprogram(name: "halide_error_no_device_interface", scope: !200, file: !200, line: 259, type: !1370, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2024)
!2024 = !{!2025}
!2025 = !DILocalVariable(name: "user_context", arg: 1, scope: !2023, file: !200, line: 259, type: !77)
!2026 = !DILocation(line: 0, scope: !2023)
!2027 = !DILocation(line: 0, scope: !209, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 260, column: 5, scope: !2023)
!2029 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !2028)
!2030 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !2028)
!2031 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !2028)
!2032 = !DILocation(line: 0, scope: !233, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 260, column: 25, scope: !2023)
!2034 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2033)
!2035 = !DILocation(line: 0, scope: !262, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 260, column: 5, scope: !2023)
!2037 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !2036)
!2038 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !2036)
!2039 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !2028)
!2040 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !2028)
!2041 = !DILocation(line: 0, scope: !273, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !2036)
!2043 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !2042)
!2044 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !2042)
!2045 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !2042)
!2046 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !2036)
!2047 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !2036)
!2048 = !DILocation(line: 261, column: 5, scope: !2023)
!2049 = distinct !DISubprogram(name: "halide_error_device_interface_no_device", scope: !200, file: !200, line: 264, type: !1370, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2050)
!2050 = !{!2051}
!2051 = !DILocalVariable(name: "user_context", arg: 1, scope: !2049, file: !200, line: 264, type: !77)
!2052 = !DILocation(line: 0, scope: !2049)
!2053 = !DILocation(line: 0, scope: !209, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 265, column: 5, scope: !2049)
!2055 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !2054)
!2056 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !2054)
!2057 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !2054)
!2058 = !DILocation(line: 0, scope: !233, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 265, column: 25, scope: !2049)
!2060 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2059)
!2061 = !DILocation(line: 0, scope: !262, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 265, column: 5, scope: !2049)
!2063 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !2062)
!2064 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !2062)
!2065 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !2054)
!2066 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !2054)
!2067 = !DILocation(line: 0, scope: !273, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !2062)
!2069 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !2068)
!2070 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !2068)
!2071 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !2068)
!2072 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !2062)
!2073 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !2062)
!2074 = !DILocation(line: 266, column: 5, scope: !2049)
!2075 = distinct !DISubprogram(name: "halide_error_host_and_device_dirty", scope: !200, file: !200, line: 269, type: !1370, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2076)
!2076 = !{!2077}
!2077 = !DILocalVariable(name: "user_context", arg: 1, scope: !2075, file: !200, line: 269, type: !77)
!2078 = !DILocation(line: 0, scope: !2075)
!2079 = !DILocation(line: 0, scope: !209, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 270, column: 5, scope: !2075)
!2081 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !2080)
!2082 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !2080)
!2083 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !2080)
!2084 = !DILocation(line: 0, scope: !233, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 270, column: 25, scope: !2075)
!2086 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2085)
!2087 = !DILocation(line: 0, scope: !262, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 270, column: 5, scope: !2075)
!2089 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !2088)
!2090 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !2088)
!2091 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !2080)
!2092 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !2080)
!2093 = !DILocation(line: 0, scope: !273, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !2088)
!2095 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !2094)
!2096 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !2094)
!2097 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !2094)
!2098 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !2088)
!2099 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !2088)
!2100 = !DILocation(line: 271, column: 5, scope: !2075)
!2101 = distinct !DISubprogram(name: "halide_error_buffer_is_null", scope: !200, file: !200, line: 274, type: !1381, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2102)
!2102 = !{!2103, !2104}
!2103 = !DILocalVariable(name: "user_context", arg: 1, scope: !2101, file: !200, line: 274, type: !77)
!2104 = !DILocalVariable(name: "routine", arg: 2, scope: !2101, file: !200, line: 274, type: !92)
!2105 = !DILocation(line: 0, scope: !2101)
!2106 = !DILocation(line: 0, scope: !209, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 275, column: 5, scope: !2101)
!2108 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !2107)
!2109 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !2107)
!2110 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !2107)
!2111 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !2107)
!2112 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !2107)
!2113 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !2107)
!2114 = !DILocation(line: 0, scope: !222, inlinedAt: !2107)
!2115 = !DILocation(line: 0, scope: !233, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 275, column: 25, scope: !2101)
!2117 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2116)
!2118 = !DILocation(line: 0, scope: !233, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 275, column: 56, scope: !2101)
!2120 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !2119)
!2121 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !2119)
!2122 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !2119)
!2123 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !2119)
!2124 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2119)
!2125 = !DILocation(line: 0, scope: !240, inlinedAt: !2119)
!2126 = !DILocation(line: 0, scope: !233, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 275, column: 67, scope: !2101)
!2128 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2127)
!2129 = !DILocation(line: 0, scope: !262, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 275, column: 5, scope: !2101)
!2131 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !2130)
!2132 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !2130)
!2133 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !2130)
!2134 = !DILocation(line: 0, scope: !273, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !2130)
!2136 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !2135)
!2137 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !2135)
!2138 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !2135)
!2139 = !DILocation(line: 172, column: 17, scope: !282, inlinedAt: !2130)
!2140 = !DILocation(line: 181, column: 13, scope: !285, inlinedAt: !2130)
!2141 = !DILocation(line: 276, column: 5, scope: !2101)
!2142 = !DISubprogram(name: "malloc", scope: !6, file: !6, line: 87, type: !2143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!77, !534}
!2145 = !DISubprogram(name: "free", scope: !6, file: !6, line: 86, type: !2146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{null, !77}
!2148 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !4, file: !4, line: 973, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!15, !77, !124, !107}
!2151 = !DISubprogram(name: "halide_string_to_string", scope: !6, file: !6, line: 120, type: !2152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!72, !72, !72, !92}
!2154 = !DISubprogram(name: "halide_int64_to_string", scope: !6, file: !6, line: 122, type: !2155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!72, !72, !72, !98, !15}
!2157 = !DISubprogram(name: "halide_type_to_string", scope: !6, file: !6, line: 126, type: !2158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!72, !72, !72, !2160}
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!2161 = !DISubprogram(name: "halide_uint64_to_string", scope: !6, file: !6, line: 123, type: !2162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!72, !72, !72, !107, !15}
!2164 = !DISubprogram(name: "halide_double_to_string", scope: !6, file: !6, line: 121, type: !2165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!72, !72, !72, !116, !15}
