; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/errors.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/errors.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
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
  %4 = tail call i8* @malloc(i32 1024) #6, !dbg !216
  %5 = icmp eq i8* %4, null, !dbg !221
  br i1 %5, label %8, label %6, !dbg !223

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i32 1023, !dbg !224
  store i8 0, i8* %7, align 1, !dbg !226, !tbaa !227
  br label %8, !dbg !230

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ], !dbg !231
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !236
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !236
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0)) #6, !dbg !238
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !241
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !241
  %11 = icmp eq i8* %1, null, !dbg !243
  br i1 %11, label %12, label %14, !dbg !244

12:                                               ; preds = %8
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !245
  br label %16, !dbg !247

14:                                               ; preds = %8
  %15 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* nonnull %1) #6, !dbg !248
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ], !dbg !249
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !250
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !250
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %9, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !252
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !257
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !257
  %19 = sext i32 %2 to i64, !dbg !259
  %20 = tail call i8* @halide_int64_to_string(i8* %18, i8* %9, i64 %19, i32 1) #6, !dbg !260
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !264
  br i1 %5, label %21, label %22, !dbg !266

21:                                               ; preds = %16
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !268
  br label %29, !dbg !271

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !275
  %23 = ptrtoint i8* %20 to i32, !dbg !278
  %24 = ptrtoint i8* %4 to i32, !dbg !278
  %25 = add i32 %23, 1, !dbg !278
  %26 = sub i32 %25, %24, !dbg !279
  %27 = sext i32 %26 to i64, !dbg !280
  %28 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %27) #6, !dbg !281
  tail call void @halide_error(i8* %0, i8* nonnull %4) #6, !dbg !282
  br label %29

29:                                               ; preds = %21, %22
  call void @free(i8* %4) #6, !dbg !285
  ret i32 %2, !dbg !288
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_extern_stage_failed(i8* %0, i8* %1, i32 %2) local_unnamed_addr #0 !dbg !289 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !291, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i8* %1, metadata !292, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %2, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !295
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !295
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !295
  %4 = tail call i8* @malloc(i32 1024) #6, !dbg !297
  %5 = icmp eq i8* %4, null, !dbg !298
  br i1 %5, label %8, label %6, !dbg !299

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i32 1023, !dbg !300
  store i8 0, i8* %7, align 1, !dbg !301, !tbaa !227
  br label %8, !dbg !302

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ], !dbg !303
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !304
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !304
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !306
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !307
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !307
  %11 = icmp eq i8* %1, null, !dbg !309
  br i1 %11, label %12, label %14, !dbg !310

12:                                               ; preds = %8
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !311
  br label %16, !dbg !312

14:                                               ; preds = %8
  %15 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* nonnull %1) #6, !dbg !313
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ], !dbg !314
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !315
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !315
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %9, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !317
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !318
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !318
  %19 = sext i32 %2 to i64, !dbg !320
  %20 = tail call i8* @halide_int64_to_string(i8* %18, i8* %9, i64 %19, i32 1) #6, !dbg !321
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !322
  br i1 %5, label %21, label %22, !dbg !324

21:                                               ; preds = %16
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !325
  br label %29, !dbg !326

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !327
  %23 = ptrtoint i8* %20 to i32, !dbg !329
  %24 = ptrtoint i8* %4 to i32, !dbg !329
  %25 = add i32 %23, 1, !dbg !329
  %26 = sub i32 %25, %24, !dbg !330
  %27 = sext i32 %26 to i64, !dbg !331
  %28 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %27) #6, !dbg !332
  tail call void @halide_error(i8* %0, i8* nonnull %4) #6, !dbg !333
  br label %29

29:                                               ; preds = %21, %22
  call void @free(i8* %4) #6, !dbg !334
  ret i32 %2, !dbg !335
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_explicit_bounds_too_small(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 !dbg !336 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !340, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i8* %1, metadata !341, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i8* %2, metadata !342, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32 %3, metadata !343, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32 %4, metadata !344, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32 %5, metadata !345, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32 %6, metadata !346, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !348
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !348
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !348
  %8 = tail call i8* @malloc(i32 1024) #6, !dbg !350
  %9 = icmp eq i8* %8, null, !dbg !351
  br i1 %9, label %12, label %10, !dbg !352

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i32 1023, !dbg !353
  store i8 0, i8* %11, align 1, !dbg !354, !tbaa !227
  br label %12, !dbg !355

12:                                               ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !356
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !357
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !357
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !360
  call void @llvm.dbg.value(metadata i8* %2, metadata !235, metadata !DIExpression()) #5, !dbg !360
  %15 = icmp eq i8* %2, null, !dbg !362
  br i1 %15, label %16, label %18, !dbg !363

16:                                               ; preds = %12
  %17 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !364
  br label %20, !dbg !365

18:                                               ; preds = %12
  %19 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull %2) #6, !dbg !366
  br label %20

20:                                               ; preds = %16, %18
  %21 = phi i8* [ %19, %18 ], [ %17, %16 ], !dbg !367
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !368
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !368
  %22 = tail call i8* @halide_string_to_string(i8* %21, i8* %13, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !370
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !371
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !371
  %23 = icmp eq i8* %1, null, !dbg !373
  br i1 %23, label %24, label %26, !dbg !374

24:                                               ; preds = %20
  %25 = tail call i8* @halide_string_to_string(i8* %22, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !375
  br label %28, !dbg !376

26:                                               ; preds = %20
  %27 = tail call i8* @halide_string_to_string(i8* %22, i8* %13, i8* nonnull %1) #6, !dbg !377
  br label %28

28:                                               ; preds = %24, %26
  %29 = phi i8* [ %27, %26 ], [ %25, %24 ], !dbg !378
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !379
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !379
  %30 = tail call i8* @halide_string_to_string(i8* %29, i8* %13, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !381
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !382
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !382
  %31 = sext i32 %3 to i64, !dbg !384
  %32 = tail call i8* @halide_int64_to_string(i8* %30, i8* %13, i64 %31, i32 1) #6, !dbg !385
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !386
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !386
  %33 = tail call i8* @halide_string_to_string(i8* %32, i8* %13, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #6, !dbg !388
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !389
  call void @llvm.dbg.value(metadata i32 %4, metadata !256, metadata !DIExpression()) #5, !dbg !389
  %34 = sext i32 %4 to i64, !dbg !391
  %35 = tail call i8* @halide_int64_to_string(i8* %33, i8* %13, i64 %34, i32 1) #6, !dbg !392
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !393
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !393
  %36 = tail call i8* @halide_string_to_string(i8* %35, i8* %13, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0)) #6, !dbg !395
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !396
  call void @llvm.dbg.value(metadata i32 %5, metadata !256, metadata !DIExpression()) #5, !dbg !396
  %37 = sext i32 %5 to i64, !dbg !398
  %38 = tail call i8* @halide_int64_to_string(i8* %36, i8* %13, i64 %37, i32 1) #6, !dbg !399
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !400
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !400
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %13, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #6, !dbg !402
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !403
  call void @llvm.dbg.value(metadata i32 %6, metadata !256, metadata !DIExpression()) #5, !dbg !403
  %40 = sext i32 %6 to i64, !dbg !405
  %41 = tail call i8* @halide_int64_to_string(i8* %39, i8* %13, i64 %40, i32 1) #6, !dbg !406
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !407
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !407
  %42 = tail call i8* @halide_string_to_string(i8* %41, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #6, !dbg !409
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !410
  br i1 %9, label %43, label %44, !dbg !412

43:                                               ; preds = %28
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !413
  br label %51, !dbg !414

44:                                               ; preds = %28
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !415
  %45 = ptrtoint i8* %42 to i32, !dbg !417
  %46 = ptrtoint i8* %8 to i32, !dbg !417
  %47 = add i32 %45, 1, !dbg !417
  %48 = sub i32 %47, %46, !dbg !418
  %49 = sext i32 %48 to i64, !dbg !419
  %50 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %49) #6, !dbg !420
  tail call void @halide_error(i8* %0, i8* nonnull %8) #6, !dbg !421
  br label %51

51:                                               ; preds = %43, %44
  call void @free(i8* %8) #6, !dbg !422
  ret i32 -2, !dbg !423
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_bad_type(i8* %0, i8* %1, i32 %2, i32 %3) local_unnamed_addr #0 !dbg !424 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.halide_type_t, align 2
  %8 = alloca %struct.halide_type_t, align 2
  %9 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !428, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i8* %1, metadata !429, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i32 %2, metadata !430, metadata !DIExpression()), !dbg !434
  store i32 %2, i32* %5, align 4, !tbaa !435
  call void @llvm.dbg.value(metadata i32 %3, metadata !431, metadata !DIExpression()), !dbg !434
  store i32 %3, i32* %6, align 4, !tbaa !435
  %10 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %7, i32 0, i32 0, !dbg !437
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5, !dbg !437
  call void @llvm.dbg.declare(metadata %struct.halide_type_t* %7, metadata !432, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %7, metadata !439, metadata !DIExpression()), !dbg !443
  store i8 0, i8* %10, align 2, !dbg !445, !tbaa !446
  %11 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %7, i32 0, i32 1, !dbg !450
  store i8 0, i8* %11, align 1, !dbg !450, !tbaa !451
  %12 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %7, i32 0, i32 2, !dbg !452
  store i16 0, i16* %12, align 2, !dbg !452, !tbaa !453
  %13 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %8, i32 0, i32 0, !dbg !437
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !437
  call void @llvm.dbg.declare(metadata %struct.halide_type_t* %8, metadata !433, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %8, metadata !439, metadata !DIExpression()), !dbg !455
  store i8 0, i8* %13, align 2, !dbg !457, !tbaa !446
  %14 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %8, i32 0, i32 1, !dbg !458
  store i8 0, i8* %14, align 1, !dbg !458, !tbaa !451
  %15 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %8, i32 0, i32 2, !dbg !459
  store i16 0, i16* %15, align 2, !dbg !459, !tbaa !453
  %16 = bitcast i32* %6 to i8*, !dbg !460
  call void @llvm.dbg.value(metadata i32* %6, metadata !431, metadata !DIExpression(DW_OP_deref)), !dbg !434
  %17 = call i8* @memcpy(i8* nonnull %10, i8* nonnull %16, i32 4) #6, !dbg !461
  %18 = bitcast i32* %5 to i8*, !dbg !462
  call void @llvm.dbg.value(metadata i32* %5, metadata !430, metadata !DIExpression(DW_OP_deref)), !dbg !434
  %19 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %18, i32 4) #6, !dbg !463
  %20 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9 to i8*, !dbg !464
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %20) #5, !dbg !464
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !208, metadata !DIExpression()) #5, !dbg !465
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !465
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !465
  %21 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 3, !dbg !467
  store i8* %0, i8** %21, align 4, !dbg !467, !tbaa !468
  %22 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 4, !dbg !472
  store i8 1, i8* %22, align 4, !dbg !472, !tbaa !473
  %23 = call i8* @malloc(i32 1024) #6, !dbg !474
  %24 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 0, !dbg !475
  store i8* %23, i8** %24, align 4, !dbg !476, !tbaa !477
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 1, !dbg !478
  %26 = icmp eq i8* %23, null, !dbg !479
  br i1 %26, label %29, label %27, !dbg !480

27:                                               ; preds = %4
  %28 = getelementptr inbounds i8, i8* %23, i32 1023, !dbg !481
  store i8 0, i8* %28, align 1, !dbg !482, !tbaa !227
  br label %29, !dbg !483

29:                                               ; preds = %4, %27
  %30 = phi i8* [ %28, %27 ], [ null, %4 ], !dbg !484
  %31 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 2, !dbg !485
  store i8* %30, i8** %31, align 4, !dbg !487
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !232, metadata !DIExpression()) #5, !dbg !488
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !488
  %32 = icmp eq i8* %1, null, !dbg !490
  br i1 %32, label %33, label %35, !dbg !491

33:                                               ; preds = %29
  %34 = call i8* @halide_string_to_string(i8* %23, i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !492
  br label %37, !dbg !493

35:                                               ; preds = %29
  %36 = call i8* @halide_string_to_string(i8* %23, i8* %30, i8* nonnull %1) #6, !dbg !494
  br label %37

37:                                               ; preds = %33, %35
  %38 = phi i8* [ %36, %35 ], [ %34, %33 ], !dbg !495
  store i8* %38, i8** %25, align 4, !dbg !495, !tbaa !496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !232, metadata !DIExpression()) #5, !dbg !497
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !497
  %39 = load i8*, i8** %31, align 4, !dbg !499, !tbaa !500
  %40 = call i8* @halide_string_to_string(i8* %38, i8* %39, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0)) #6, !dbg !501
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !502, metadata !DIExpression()) #5, !dbg !506
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %7, metadata !505, metadata !DIExpression()) #5, !dbg !506
  %41 = call i8* @halide_type_to_string(i8* %40, i8* %39, %struct.halide_type_t* nonnull %7) #6, !dbg !508
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !232, metadata !DIExpression()) #5, !dbg !509
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !509
  %42 = call i8* @halide_string_to_string(i8* %41, i8* %39, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0)) #6, !dbg !511
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !502, metadata !DIExpression()) #5, !dbg !512
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %8, metadata !505, metadata !DIExpression()) #5, !dbg !512
  %43 = call i8* @halide_type_to_string(i8* %42, i8* %39, %struct.halide_type_t* nonnull %8) #6, !dbg !514
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !261, metadata !DIExpression()) #5, !dbg !515
  %44 = load i8*, i8** %24, align 4, !dbg !517, !tbaa !477
  %45 = icmp eq i8* %44, null, !dbg !517
  %46 = load i8*, i8** %21, align 4, !dbg !518, !tbaa !468
  br i1 %45, label %47, label %48, !dbg !519

47:                                               ; preds = %37
  call void @halide_error(i8* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !520
  br label %57, !dbg !521

48:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !522
  %49 = ptrtoint i8* %43 to i32, !dbg !524
  %50 = ptrtoint i8* %44 to i32, !dbg !524
  %51 = add i32 %49, 1, !dbg !524
  %52 = sub i32 %51, %50, !dbg !525
  %53 = sext i32 %52 to i64, !dbg !526
  %54 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %46, i8* nonnull %44, i64 %53) #6, !dbg !527
  %55 = load i8*, i8** %21, align 4, !dbg !528, !tbaa !468
  %56 = load i8*, i8** %24, align 4, !dbg !529, !tbaa !477
  call void @halide_error(i8* %55, i8* %56) #6, !dbg !530
  br label %57

57:                                               ; preds = %48, %47
  %58 = load i8, i8* %22, align 4, !dbg !531, !tbaa !473, !range !532
  %59 = icmp eq i8 %58, 0, !dbg !531
  br i1 %59, label %62, label %60, !dbg !533

60:                                               ; preds = %57
  %61 = load i8*, i8** %24, align 4, !dbg !534, !tbaa !477
  call void @free(i8* %61) #6, !dbg !535
  br label %62, !dbg !536

62:                                               ; preds = %57, %60
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %20) #5, !dbg !464
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !537
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5, !dbg !537
  ret i32 -3, !dbg !538
}

declare !dbg !539 dso_local i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_bad_dimensions(i8* %0, i8* %1, i32 %2, i32 %3) local_unnamed_addr #0 !dbg !543 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !547, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i8* %1, metadata !548, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i32 %2, metadata !549, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i32 %3, metadata !550, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !552
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !552
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !552
  %5 = tail call i8* @malloc(i32 1024) #6, !dbg !554
  %6 = icmp eq i8* %5, null, !dbg !555
  br i1 %6, label %9, label %7, !dbg !556

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023, !dbg !557
  store i8 0, i8* %8, align 1, !dbg !558, !tbaa !227
  br label %9, !dbg !559

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !560
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !561
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !561
  %11 = icmp eq i8* %1, null, !dbg !563
  br i1 %11, label %12, label %14, !dbg !564

12:                                               ; preds = %9
  %13 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !565
  br label %16, !dbg !566

14:                                               ; preds = %9
  %15 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull %1) #6, !dbg !567
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ], !dbg !568
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !569
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !569
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %10, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0)) #6, !dbg !571
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !572
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !572
  %19 = sext i32 %3 to i64, !dbg !574
  %20 = tail call i8* @halide_int64_to_string(i8* %18, i8* %10, i64 %19, i32 1) #6, !dbg !575
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !576
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !576
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0)) #6, !dbg !578
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !579
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !579
  %22 = sext i32 %2 to i64, !dbg !581
  %23 = tail call i8* @halide_int64_to_string(i8* %21, i8* %10, i64 %22, i32 1) #6, !dbg !582
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !583
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !583
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %10, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)) #6, !dbg !585
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !586
  br i1 %6, label %25, label %26, !dbg !588

25:                                               ; preds = %16
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !589
  br label %33, !dbg !590

26:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !591
  %27 = ptrtoint i8* %24 to i32, !dbg !593
  %28 = ptrtoint i8* %5 to i32, !dbg !593
  %29 = add i32 %27, 1, !dbg !593
  %30 = sub i32 %29, %28, !dbg !594
  %31 = sext i32 %30 to i64, !dbg !595
  %32 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %31) #6, !dbg !596
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !597
  br label %33

33:                                               ; preds = %25, %26
  call void @free(i8* %5) #6, !dbg !598
  ret i32 -43, !dbg !599
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_access_out_of_bounds(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 !dbg !600 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !604, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i8* %1, metadata !605, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i32 %2, metadata !606, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i32 %3, metadata !607, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i32 %4, metadata !608, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i32 %5, metadata !609, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i32 %6, metadata !610, metadata !DIExpression()), !dbg !611
  %8 = icmp slt i32 %3, %5, !dbg !612
  br i1 %8, label %9, label %40, !dbg !614

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !615
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !615
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !615
  %10 = tail call i8* @malloc(i32 1024) #6, !dbg !618
  %11 = icmp eq i8* %10, null, !dbg !619
  br i1 %11, label %14, label %12, !dbg !620

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, i8* %10, i32 1023, !dbg !621
  store i8 0, i8* %13, align 1, !dbg !622, !tbaa !227
  br label %14, !dbg !623

14:                                               ; preds = %9, %12
  %15 = phi i8* [ %13, %12 ], [ null, %9 ], !dbg !624
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !625
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !625
  %16 = icmp eq i8* %1, null, !dbg !627
  br i1 %16, label %17, label %19, !dbg !628

17:                                               ; preds = %14
  %18 = tail call i8* @halide_string_to_string(i8* %10, i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !629
  br label %21, !dbg !630

19:                                               ; preds = %14
  %20 = tail call i8* @halide_string_to_string(i8* %10, i8* %15, i8* nonnull %1) #6, !dbg !631
  br label %21

21:                                               ; preds = %17, %19
  %22 = phi i8* [ %20, %19 ], [ %18, %17 ], !dbg !632
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !633
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !633
  %23 = tail call i8* @halide_string_to_string(i8* %22, i8* %15, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #6, !dbg !635
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !636
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !636
  %24 = sext i32 %3 to i64, !dbg !638
  %25 = tail call i8* @halide_int64_to_string(i8* %23, i8* %15, i64 %24, i32 1) #6, !dbg !639
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !640
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !640
  %26 = tail call i8* @halide_string_to_string(i8* %25, i8* %15, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0)) #6, !dbg !642
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !643
  call void @llvm.dbg.value(metadata i32 %5, metadata !256, metadata !DIExpression()) #5, !dbg !643
  %27 = sext i32 %5 to i64, !dbg !645
  %28 = tail call i8* @halide_int64_to_string(i8* %26, i8* %15, i64 %27, i32 1) #6, !dbg !646
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !647
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !647
  %29 = tail call i8* @halide_string_to_string(i8* %28, i8* %15, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0)) #6, !dbg !649
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !650
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !650
  %30 = sext i32 %2 to i64, !dbg !652
  %31 = tail call i8* @halide_int64_to_string(i8* %29, i8* %15, i64 %30, i32 1) #6, !dbg !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !654
  br i1 %11, label %32, label %33, !dbg !656

32:                                               ; preds = %21
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !657
  br label %73, !dbg !658

33:                                               ; preds = %21
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !659
  %34 = ptrtoint i8* %31 to i32, !dbg !661
  %35 = ptrtoint i8* %10 to i32, !dbg !661
  %36 = add i32 %34, 1, !dbg !661
  %37 = sub i32 %36, %35, !dbg !662
  %38 = sext i32 %37 to i64, !dbg !663
  %39 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %10, i64 %38) #6, !dbg !664
  tail call void @halide_error(i8* %0, i8* nonnull %10) #6, !dbg !665
  br label %73

40:                                               ; preds = %7
  %41 = icmp sgt i32 %4, %6, !dbg !666
  br i1 %41, label %42, label %75, !dbg !668

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !669
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !669
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !669
  %43 = tail call i8* @malloc(i32 1024) #6, !dbg !672
  %44 = icmp eq i8* %43, null, !dbg !673
  br i1 %44, label %47, label %45, !dbg !674

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, i8* %43, i32 1023, !dbg !675
  store i8 0, i8* %46, align 1, !dbg !676, !tbaa !227
  br label %47, !dbg !677

47:                                               ; preds = %42, %45
  %48 = phi i8* [ %46, %45 ], [ null, %42 ], !dbg !678
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !679
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !679
  %49 = icmp eq i8* %1, null, !dbg !681
  br i1 %49, label %50, label %52, !dbg !682

50:                                               ; preds = %47
  %51 = tail call i8* @halide_string_to_string(i8* %43, i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !683
  br label %54, !dbg !684

52:                                               ; preds = %47
  %53 = tail call i8* @halide_string_to_string(i8* %43, i8* %48, i8* nonnull %1) #6, !dbg !685
  br label %54

54:                                               ; preds = %50, %52
  %55 = phi i8* [ %53, %52 ], [ %51, %50 ], !dbg !686
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !687
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !687
  %56 = tail call i8* @halide_string_to_string(i8* %55, i8* %48, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #6, !dbg !689
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !690
  call void @llvm.dbg.value(metadata i32 %4, metadata !256, metadata !DIExpression()) #5, !dbg !690
  %57 = sext i32 %4 to i64, !dbg !692
  %58 = tail call i8* @halide_int64_to_string(i8* %56, i8* %48, i64 %57, i32 1) #6, !dbg !693
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !694
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !694
  %59 = tail call i8* @halide_string_to_string(i8* %58, i8* %48, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0)) #6, !dbg !696
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !697
  call void @llvm.dbg.value(metadata i32 %6, metadata !256, metadata !DIExpression()) #5, !dbg !697
  %60 = sext i32 %6 to i64, !dbg !699
  %61 = tail call i8* @halide_int64_to_string(i8* %59, i8* %48, i64 %60, i32 1) #6, !dbg !700
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !701
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !701
  %62 = tail call i8* @halide_string_to_string(i8* %61, i8* %48, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0)) #6, !dbg !703
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !704
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !704
  %63 = sext i32 %2 to i64, !dbg !706
  %64 = tail call i8* @halide_int64_to_string(i8* %62, i8* %48, i64 %63, i32 1) #6, !dbg !707
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !708
  br i1 %44, label %65, label %66, !dbg !710

65:                                               ; preds = %54
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !711
  br label %73, !dbg !712

66:                                               ; preds = %54
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !713
  %67 = ptrtoint i8* %64 to i32, !dbg !715
  %68 = ptrtoint i8* %43 to i32, !dbg !715
  %69 = add i32 %67, 1, !dbg !715
  %70 = sub i32 %69, %68, !dbg !716
  %71 = sext i32 %70 to i64, !dbg !717
  %72 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %43, i64 %71) #6, !dbg !718
  tail call void @halide_error(i8* %0, i8* nonnull %43) #6, !dbg !719
  br label %73

73:                                               ; preds = %66, %65, %33, %32
  %74 = phi i8* [ %10, %32 ], [ %10, %33 ], [ %43, %65 ], [ %43, %66 ]
  call void @free(i8* %74) #6, !dbg !720
  br label %75, !dbg !721

75:                                               ; preds = %73, %40
  ret i32 -4, !dbg !721
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_buffer_allocation_too_large(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !722 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !726, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i8* %1, metadata !727, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i64 %2, metadata !728, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i64 %3, metadata !729, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !731
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !731
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !731
  %5 = tail call i8* @malloc(i32 1024) #6, !dbg !733
  %6 = icmp eq i8* %5, null, !dbg !734
  br i1 %6, label %9, label %7, !dbg !735

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023, !dbg !736
  store i8 0, i8* %8, align 1, !dbg !737, !tbaa !227
  br label %9, !dbg !738

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !739
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !740
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !740
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0)) #6, !dbg !742
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !743
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !743
  %12 = icmp eq i8* %1, null, !dbg !745
  br i1 %12, label %13, label %15, !dbg !746

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !747
  br label %17, !dbg !748

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !749
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !750
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !751
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !751
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #6, !dbg !753
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !754, metadata !DIExpression()) #5, !dbg !758
  call void @llvm.dbg.value(metadata i64 %2, metadata !757, metadata !DIExpression()) #5, !dbg !758
  %20 = tail call i8* @halide_uint64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #6, !dbg !760
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !761
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !761
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0)) #6, !dbg !763
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !754, metadata !DIExpression()) #5, !dbg !764
  call void @llvm.dbg.value(metadata i64 %3, metadata !757, metadata !DIExpression()) #5, !dbg !764
  %22 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #6, !dbg !766
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !767
  br i1 %6, label %23, label %24, !dbg !769

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !770
  br label %31, !dbg !771

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !772
  %25 = ptrtoint i8* %22 to i32, !dbg !774
  %26 = ptrtoint i8* %5 to i32, !dbg !774
  %27 = add i32 %25, 1, !dbg !774
  %28 = sub i32 %27, %26, !dbg !775
  %29 = sext i32 %28 to i64, !dbg !776
  %30 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %29) #6, !dbg !777
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !778
  br label %31

31:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !779
  ret i32 -5, !dbg !780
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_buffer_extents_negative(i8* %0, i8* %1, i32 %2, i32 %3) local_unnamed_addr #0 !dbg !781 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !785, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i8* %1, metadata !786, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 %2, metadata !787, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 %3, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !790
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !790
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !790
  %5 = tail call i8* @malloc(i32 1024) #6, !dbg !792
  %6 = icmp eq i8* %5, null, !dbg !793
  br i1 %6, label %9, label %7, !dbg !794

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023, !dbg !795
  store i8 0, i8* %8, align 1, !dbg !796, !tbaa !227
  br label %9, !dbg !797

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !798
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !799
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !799
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0)) #6, !dbg !801
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !802
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !802
  %12 = icmp eq i8* %1, null, !dbg !804
  br i1 %12, label %13, label %15, !dbg !805

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !806
  br label %17, !dbg !807

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !808
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !809
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !810
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !810
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0)) #6, !dbg !812
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !813
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !813
  %20 = sext i32 %2 to i64, !dbg !815
  %21 = tail call i8* @halide_int64_to_string(i8* %19, i8* %10, i64 %20, i32 1) #6, !dbg !816
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !817
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !817
  %22 = tail call i8* @halide_string_to_string(i8* %21, i8* %10, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0)) #6, !dbg !819
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !820
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !820
  %23 = sext i32 %3 to i64, !dbg !822
  %24 = tail call i8* @halide_int64_to_string(i8* %22, i8* %10, i64 %23, i32 1) #6, !dbg !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !824
  %25 = tail call i8* @halide_string_to_string(i8* %24, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #6, !dbg !826
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !827
  br i1 %6, label %26, label %27, !dbg !829

26:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !830
  br label %34, !dbg !831

27:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !832
  %28 = ptrtoint i8* %25 to i32, !dbg !834
  %29 = ptrtoint i8* %5 to i32, !dbg !834
  %30 = add i32 %28, 1, !dbg !834
  %31 = sub i32 %30, %29, !dbg !835
  %32 = sext i32 %31 to i64, !dbg !836
  %33 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %32) #6, !dbg !837
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !838
  br label %34

34:                                               ; preds = %26, %27
  call void @free(i8* %5) #6, !dbg !839
  ret i32 -28, !dbg !840
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_buffer_extents_too_large(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !841 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !845, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i8* %1, metadata !846, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i64 %2, metadata !847, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i64 %3, metadata !848, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !850
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !850
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !850
  %5 = tail call i8* @malloc(i32 1024) #6, !dbg !852
  %6 = icmp eq i8* %5, null, !dbg !853
  br i1 %6, label %9, label %7, !dbg !854

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023, !dbg !855
  store i8 0, i8* %8, align 1, !dbg !856, !tbaa !227
  br label %9, !dbg !857

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !858
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !859
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !859
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0)) #6, !dbg !861
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !862
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !862
  %12 = icmp eq i8* %1, null, !dbg !864
  br i1 %12, label %13, label %15, !dbg !865

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !866
  br label %17, !dbg !867

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !868
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !870
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !870
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #6, !dbg !872
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !873, metadata !DIExpression()) #5, !dbg !877
  call void @llvm.dbg.value(metadata i64 %2, metadata !876, metadata !DIExpression()) #5, !dbg !877
  %20 = tail call i8* @halide_int64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #6, !dbg !879
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !880
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !880
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0)) #6, !dbg !882
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !873, metadata !DIExpression()) #5, !dbg !883
  call void @llvm.dbg.value(metadata i64 %3, metadata !876, metadata !DIExpression()) #5, !dbg !883
  %22 = tail call i8* @halide_int64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #6, !dbg !885
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !886
  br i1 %6, label %23, label %24, !dbg !888

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !889
  br label %31, !dbg !890

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !891
  %25 = ptrtoint i8* %22 to i32, !dbg !893
  %26 = ptrtoint i8* %5 to i32, !dbg !893
  %27 = add i32 %25, 1, !dbg !893
  %28 = sub i32 %27, %26, !dbg !894
  %29 = sext i32 %28 to i64, !dbg !895
  %30 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %29) #6, !dbg !896
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !897
  br label %31

31:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !898
  ret i32 -6, !dbg !899
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_constraints_make_required_region_smaller(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 !dbg !900 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !902, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %1, metadata !903, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i32 %2, metadata !904, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i32 %3, metadata !905, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i32 %4, metadata !906, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i32 %5, metadata !907, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i32 %6, metadata !908, metadata !DIExpression()), !dbg !911
  %8 = add i32 %5, -1, !dbg !912
  %9 = add i32 %8, %6, !dbg !913
  call void @llvm.dbg.value(metadata i32 %9, metadata !909, metadata !DIExpression()), !dbg !911
  %10 = add i32 %3, -1, !dbg !914
  %11 = add i32 %10, %4, !dbg !915
  call void @llvm.dbg.value(metadata i32 %11, metadata !910, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !916
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !916
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !916
  %12 = tail call i8* @malloc(i32 1024) #6, !dbg !918
  %13 = icmp eq i8* %12, null, !dbg !919
  br i1 %13, label %16, label %14, !dbg !920

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, i8* %12, i32 1023, !dbg !921
  store i8 0, i8* %15, align 1, !dbg !922, !tbaa !227
  br label %16, !dbg !923

16:                                               ; preds = %7, %14
  %17 = phi i8* [ %15, %14 ], [ null, %7 ], !dbg !924
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !925
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !925
  %18 = tail call i8* @halide_string_to_string(i8* %12, i8* %17, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0)) #6, !dbg !927
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !928
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !928
  %19 = icmp eq i8* %1, null, !dbg !930
  br i1 %19, label %20, label %22, !dbg !931

20:                                               ; preds = %16
  %21 = tail call i8* @halide_string_to_string(i8* %18, i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !932
  br label %24, !dbg !933

22:                                               ; preds = %16
  %23 = tail call i8* @halide_string_to_string(i8* %18, i8* %17, i8* nonnull %1) #6, !dbg !934
  br label %24

24:                                               ; preds = %20, %22
  %25 = phi i8* [ %23, %22 ], [ %21, %20 ], !dbg !935
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !936
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !936
  %26 = tail call i8* @halide_string_to_string(i8* %25, i8* %17, i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i32 0, i32 0)) #6, !dbg !938
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !939
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !939
  %27 = sext i32 %2 to i64, !dbg !941
  %28 = tail call i8* @halide_int64_to_string(i8* %26, i8* %17, i64 %27, i32 1) #6, !dbg !942
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !943
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !943
  %29 = tail call i8* @halide_string_to_string(i8* %28, i8* %17, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0)) #6, !dbg !945
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !946
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !946
  %30 = tail call i8* @halide_string_to_string(i8* %29, i8* %17, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0)) #6, !dbg !948
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !949
  call void @llvm.dbg.value(metadata i32 %5, metadata !256, metadata !DIExpression()) #5, !dbg !949
  %31 = sext i32 %5 to i64, !dbg !951
  %32 = tail call i8* @halide_int64_to_string(i8* %30, i8* %17, i64 %31, i32 1) #6, !dbg !952
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !953
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !953
  %33 = tail call i8* @halide_string_to_string(i8* %32, i8* %17, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #6, !dbg !955
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !956
  call void @llvm.dbg.value(metadata i32 %9, metadata !256, metadata !DIExpression()) #5, !dbg !956
  %34 = sext i32 %9 to i64, !dbg !958
  %35 = tail call i8* @halide_int64_to_string(i8* %33, i8* %17, i64 %34, i32 1) #6, !dbg !959
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !960
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !960
  %36 = tail call i8* @halide_string_to_string(i8* %35, i8* %17, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0)) #6, !dbg !962
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !963
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !963
  %37 = tail call i8* @halide_string_to_string(i8* %36, i8* %17, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0)) #6, !dbg !965
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !966
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !966
  %38 = sext i32 %3 to i64, !dbg !968
  %39 = tail call i8* @halide_int64_to_string(i8* %37, i8* %17, i64 %38, i32 1) #6, !dbg !969
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !970
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !970
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %17, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #6, !dbg !972
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !973
  call void @llvm.dbg.value(metadata i32 %11, metadata !256, metadata !DIExpression()) #5, !dbg !973
  %41 = sext i32 %11 to i64, !dbg !975
  %42 = tail call i8* @halide_int64_to_string(i8* %40, i8* %17, i64 %41, i32 1) #6, !dbg !976
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !977
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !977
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %17, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)) #6, !dbg !979
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !980
  br i1 %13, label %44, label %45, !dbg !982

44:                                               ; preds = %24
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !983
  br label %52, !dbg !984

45:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !985
  %46 = ptrtoint i8* %43 to i32, !dbg !987
  %47 = ptrtoint i8* %12 to i32, !dbg !987
  %48 = add i32 %46, 1, !dbg !987
  %49 = sub i32 %48, %47, !dbg !988
  %50 = sext i32 %49 to i64, !dbg !989
  %51 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %12, i64 %50) #6, !dbg !990
  tail call void @halide_error(i8* %0, i8* nonnull %12) #6, !dbg !991
  br label %52

52:                                               ; preds = %44, %45
  call void @free(i8* %12) #6, !dbg !992
  ret i32 -7, !dbg !993
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_constraint_violated(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) local_unnamed_addr #0 !dbg !994 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !998, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i8* %1, metadata !999, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i32 %2, metadata !1000, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i8* %3, metadata !1001, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i32 %4, metadata !1002, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1004
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1004
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1004
  %6 = tail call i8* @malloc(i32 1024) #6, !dbg !1006
  %7 = icmp eq i8* %6, null, !dbg !1007
  br i1 %7, label %10, label %8, !dbg !1008

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %6, i32 1023, !dbg !1009
  store i8 0, i8* %9, align 1, !dbg !1010, !tbaa !227
  br label %10, !dbg !1011

10:                                               ; preds = %5, %8
  %11 = phi i8* [ %9, %8 ], [ null, %5 ], !dbg !1012
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1013
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1013
  %12 = tail call i8* @halide_string_to_string(i8* %6, i8* %11, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0)) #6, !dbg !1015
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1016
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1016
  %13 = icmp eq i8* %1, null, !dbg !1018
  br i1 %13, label %14, label %16, !dbg !1019

14:                                               ; preds = %10
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1020
  br label %18, !dbg !1021

16:                                               ; preds = %10
  %17 = tail call i8* @halide_string_to_string(i8* %12, i8* %11, i8* nonnull %1) #6, !dbg !1022
  br label %18

18:                                               ; preds = %14, %16
  %19 = phi i8* [ %17, %16 ], [ %15, %14 ], !dbg !1023
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1024
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1024
  %20 = tail call i8* @halide_string_to_string(i8* %19, i8* %11, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0)) #6, !dbg !1026
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !1027
  %21 = sext i32 %2 to i64, !dbg !1029
  %22 = tail call i8* @halide_int64_to_string(i8* %20, i8* %11, i64 %21, i32 1) #6, !dbg !1030
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1031
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1031
  %23 = tail call i8* @halide_string_to_string(i8* %22, i8* %11, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)) #6, !dbg !1033
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1034
  call void @llvm.dbg.value(metadata i8* %3, metadata !235, metadata !DIExpression()) #5, !dbg !1034
  %24 = icmp eq i8* %3, null, !dbg !1036
  br i1 %24, label %25, label %27, !dbg !1037

25:                                               ; preds = %18
  %26 = tail call i8* @halide_string_to_string(i8* %23, i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1038
  br label %29, !dbg !1039

27:                                               ; preds = %18
  %28 = tail call i8* @halide_string_to_string(i8* %23, i8* %11, i8* nonnull %3) #6, !dbg !1040
  br label %29

29:                                               ; preds = %25, %27
  %30 = phi i8* [ %28, %27 ], [ %26, %25 ], !dbg !1041
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1042
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1042
  %31 = tail call i8* @halide_string_to_string(i8* %30, i8* %11, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0)) #6, !dbg !1044
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1045
  call void @llvm.dbg.value(metadata i32 %4, metadata !256, metadata !DIExpression()) #5, !dbg !1045
  %32 = sext i32 %4 to i64, !dbg !1047
  %33 = tail call i8* @halide_int64_to_string(i8* %31, i8* %11, i64 %32, i32 1) #6, !dbg !1048
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1049
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1049
  %34 = tail call i8* @halide_string_to_string(i8* %33, i8* %11, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #6, !dbg !1051
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1052
  br i1 %7, label %35, label %36, !dbg !1054

35:                                               ; preds = %29
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1055
  br label %43, !dbg !1056

36:                                               ; preds = %29
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1057
  %37 = ptrtoint i8* %34 to i32, !dbg !1059
  %38 = ptrtoint i8* %6 to i32, !dbg !1059
  %39 = add i32 %37, 1, !dbg !1059
  %40 = sub i32 %39, %38, !dbg !1060
  %41 = sext i32 %40 to i64, !dbg !1061
  %42 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %41) #6, !dbg !1062
  tail call void @halide_error(i8* %0, i8* nonnull %6) #6, !dbg !1063
  br label %43

43:                                               ; preds = %35, %36
  call void @free(i8* %6) #6, !dbg !1064
  ret i32 -8, !dbg !1065
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_param_too_small_i64(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !1066 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1068, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i8* %1, metadata !1069, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %2, metadata !1070, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %3, metadata !1071, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1073
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1073
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1073
  %5 = tail call i8* @malloc(i32 1024) #6, !dbg !1075
  %6 = icmp eq i8* %5, null, !dbg !1076
  br i1 %6, label %9, label %7, !dbg !1077

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023, !dbg !1078
  store i8 0, i8* %8, align 1, !dbg !1079, !tbaa !227
  br label %9, !dbg !1080

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1081
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1082
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1082
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)) #6, !dbg !1084
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1085
  %12 = icmp eq i8* %1, null, !dbg !1087
  br i1 %12, label %13, label %15, !dbg !1088

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1089
  br label %17, !dbg !1090

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !1091
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1092
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1093
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1093
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #6, !dbg !1095
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !873, metadata !DIExpression()) #5, !dbg !1096
  call void @llvm.dbg.value(metadata i64 %2, metadata !876, metadata !DIExpression()) #5, !dbg !1096
  %20 = tail call i8* @halide_int64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #6, !dbg !1098
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1099
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1099
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0)) #6, !dbg !1101
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !873, metadata !DIExpression()) #5, !dbg !1102
  call void @llvm.dbg.value(metadata i64 %3, metadata !876, metadata !DIExpression()) #5, !dbg !1102
  %22 = tail call i8* @halide_int64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #6, !dbg !1104
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1105
  br i1 %6, label %23, label %24, !dbg !1107

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1108
  br label %31, !dbg !1109

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1110
  %25 = ptrtoint i8* %22 to i32, !dbg !1112
  %26 = ptrtoint i8* %5 to i32, !dbg !1112
  %27 = add i32 %25, 1, !dbg !1112
  %28 = sub i32 %27, %26, !dbg !1113
  %29 = sext i32 %28 to i64, !dbg !1114
  %30 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %29) #6, !dbg !1115
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1116
  br label %31

31:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !1117
  ret i32 -9, !dbg !1118
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_param_too_small_u64(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !1119 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1121, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i8* %1, metadata !1122, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %2, metadata !1123, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %3, metadata !1124, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1126
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1126
  %5 = tail call i8* @malloc(i32 1024) #6, !dbg !1128
  %6 = icmp eq i8* %5, null, !dbg !1129
  br i1 %6, label %9, label %7, !dbg !1130

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023, !dbg !1131
  store i8 0, i8* %8, align 1, !dbg !1132, !tbaa !227
  br label %9, !dbg !1133

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1135
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1135
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)) #6, !dbg !1137
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1138
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1138
  %12 = icmp eq i8* %1, null, !dbg !1140
  br i1 %12, label %13, label %15, !dbg !1141

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1142
  br label %17, !dbg !1143

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !1144
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1145
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1146
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1146
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #6, !dbg !1148
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !754, metadata !DIExpression()) #5, !dbg !1149
  call void @llvm.dbg.value(metadata i64 %2, metadata !757, metadata !DIExpression()) #5, !dbg !1149
  %20 = tail call i8* @halide_uint64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #6, !dbg !1151
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1152
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1152
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0)) #6, !dbg !1154
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !754, metadata !DIExpression()) #5, !dbg !1155
  call void @llvm.dbg.value(metadata i64 %3, metadata !757, metadata !DIExpression()) #5, !dbg !1155
  %22 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #6, !dbg !1157
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1158
  br i1 %6, label %23, label %24, !dbg !1160

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1161
  br label %31, !dbg !1162

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1163
  %25 = ptrtoint i8* %22 to i32, !dbg !1165
  %26 = ptrtoint i8* %5 to i32, !dbg !1165
  %27 = add i32 %25, 1, !dbg !1165
  %28 = sub i32 %27, %26, !dbg !1166
  %29 = sext i32 %28 to i64, !dbg !1167
  %30 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %29) #6, !dbg !1168
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1169
  br label %31

31:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !1170
  ret i32 -9, !dbg !1171
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_param_too_small_f64(i8* %0, i8* %1, double %2, double %3) local_unnamed_addr #0 !dbg !1172 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1176, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %1, metadata !1177, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata double %2, metadata !1178, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata double %3, metadata !1179, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1181
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1181
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1181
  %5 = tail call i8* @malloc(i32 1024) #6, !dbg !1183
  %6 = icmp eq i8* %5, null, !dbg !1184
  br i1 %6, label %9, label %7, !dbg !1185

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023, !dbg !1186
  store i8 0, i8* %8, align 1, !dbg !1187, !tbaa !227
  br label %9, !dbg !1188

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1189
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1190
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1190
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)) #6, !dbg !1192
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1193
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1193
  %12 = icmp eq i8* %1, null, !dbg !1195
  br i1 %12, label %13, label %15, !dbg !1196

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1197
  br label %17, !dbg !1198

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !1199
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1200
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1201
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1201
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #6, !dbg !1203
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1204, metadata !DIExpression()) #5, !dbg !1208
  call void @llvm.dbg.value(metadata double %2, metadata !1207, metadata !DIExpression()) #5, !dbg !1208
  %20 = tail call i8* @halide_double_to_string(i8* %19, i8* %10, double %2, i32 1) #6, !dbg !1210
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1211
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1211
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0)) #6, !dbg !1213
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1204, metadata !DIExpression()) #5, !dbg !1214
  call void @llvm.dbg.value(metadata double %3, metadata !1207, metadata !DIExpression()) #5, !dbg !1214
  %22 = tail call i8* @halide_double_to_string(i8* %21, i8* %10, double %3, i32 1) #6, !dbg !1216
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1217
  br i1 %6, label %23, label %24, !dbg !1219

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1220
  br label %31, !dbg !1221

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1222
  %25 = ptrtoint i8* %22 to i32, !dbg !1224
  %26 = ptrtoint i8* %5 to i32, !dbg !1224
  %27 = add i32 %25, 1, !dbg !1224
  %28 = sub i32 %27, %26, !dbg !1225
  %29 = sext i32 %28 to i64, !dbg !1226
  %30 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %29) #6, !dbg !1227
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1228
  br label %31

31:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !1229
  ret i32 -9, !dbg !1230
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_param_too_large_i64(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !1231 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1233, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %1, metadata !1234, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %2, metadata !1235, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %3, metadata !1236, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1238
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1238
  %5 = tail call i8* @malloc(i32 1024) #6, !dbg !1240
  %6 = icmp eq i8* %5, null, !dbg !1241
  br i1 %6, label %9, label %7, !dbg !1242

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023, !dbg !1243
  store i8 0, i8* %8, align 1, !dbg !1244, !tbaa !227
  br label %9, !dbg !1245

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1246
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1247
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1247
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)) #6, !dbg !1249
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1250
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1250
  %12 = icmp eq i8* %1, null, !dbg !1252
  br i1 %12, label %13, label %15, !dbg !1253

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1254
  br label %17, !dbg !1255

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !1256
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1257
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1258
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1258
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #6, !dbg !1260
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !873, metadata !DIExpression()) #5, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %2, metadata !876, metadata !DIExpression()) #5, !dbg !1261
  %20 = tail call i8* @halide_int64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #6, !dbg !1263
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1264
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1264
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0)) #6, !dbg !1266
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !873, metadata !DIExpression()) #5, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %3, metadata !876, metadata !DIExpression()) #5, !dbg !1267
  %22 = tail call i8* @halide_int64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #6, !dbg !1269
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1270
  br i1 %6, label %23, label %24, !dbg !1272

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1273
  br label %31, !dbg !1274

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1275
  %25 = ptrtoint i8* %22 to i32, !dbg !1277
  %26 = ptrtoint i8* %5 to i32, !dbg !1277
  %27 = add i32 %25, 1, !dbg !1277
  %28 = sub i32 %27, %26, !dbg !1278
  %29 = sext i32 %28 to i64, !dbg !1279
  %30 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %29) #6, !dbg !1280
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1281
  br label %31

31:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !1282
  ret i32 -10, !dbg !1283
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_param_too_large_u64(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !1284 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1286, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8* %1, metadata !1287, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i64 %2, metadata !1288, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i64 %3, metadata !1289, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1291
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1291
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1291
  %5 = tail call i8* @malloc(i32 1024) #6, !dbg !1293
  %6 = icmp eq i8* %5, null, !dbg !1294
  br i1 %6, label %9, label %7, !dbg !1295

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023, !dbg !1296
  store i8 0, i8* %8, align 1, !dbg !1297, !tbaa !227
  br label %9, !dbg !1298

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1299
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1300
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1300
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)) #6, !dbg !1302
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1303
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1303
  %12 = icmp eq i8* %1, null, !dbg !1305
  br i1 %12, label %13, label %15, !dbg !1306

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1307
  br label %17, !dbg !1308

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !1309
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1311
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1311
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #6, !dbg !1313
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !754, metadata !DIExpression()) #5, !dbg !1314
  call void @llvm.dbg.value(metadata i64 %2, metadata !757, metadata !DIExpression()) #5, !dbg !1314
  %20 = tail call i8* @halide_uint64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #6, !dbg !1316
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1317
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1317
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0)) #6, !dbg !1319
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !754, metadata !DIExpression()) #5, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %3, metadata !757, metadata !DIExpression()) #5, !dbg !1320
  %22 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #6, !dbg !1322
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1323
  br i1 %6, label %23, label %24, !dbg !1325

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1326
  br label %31, !dbg !1327

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1328
  %25 = ptrtoint i8* %22 to i32, !dbg !1330
  %26 = ptrtoint i8* %5 to i32, !dbg !1330
  %27 = add i32 %25, 1, !dbg !1330
  %28 = sub i32 %27, %26, !dbg !1331
  %29 = sext i32 %28 to i64, !dbg !1332
  %30 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %29) #6, !dbg !1333
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1334
  br label %31

31:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !1335
  ret i32 -10, !dbg !1336
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_param_too_large_f64(i8* %0, i8* %1, double %2, double %3) local_unnamed_addr #0 !dbg !1337 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1339, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata i8* %1, metadata !1340, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata double %2, metadata !1341, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata double %3, metadata !1342, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1344
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1344
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1344
  %5 = tail call i8* @malloc(i32 1024) #6, !dbg !1346
  %6 = icmp eq i8* %5, null, !dbg !1347
  br i1 %6, label %9, label %7, !dbg !1348

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023, !dbg !1349
  store i8 0, i8* %8, align 1, !dbg !1350, !tbaa !227
  br label %9, !dbg !1351

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1353
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1353
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)) #6, !dbg !1355
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1356
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1356
  %12 = icmp eq i8* %1, null, !dbg !1358
  br i1 %12, label %13, label %15, !dbg !1359

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1360
  br label %17, !dbg !1361

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !1362
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1363
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1364
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1364
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #6, !dbg !1366
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1204, metadata !DIExpression()) #5, !dbg !1367
  call void @llvm.dbg.value(metadata double %2, metadata !1207, metadata !DIExpression()) #5, !dbg !1367
  %20 = tail call i8* @halide_double_to_string(i8* %19, i8* %10, double %2, i32 1) #6, !dbg !1369
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1370
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1370
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0)) #6, !dbg !1372
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1204, metadata !DIExpression()) #5, !dbg !1373
  call void @llvm.dbg.value(metadata double %3, metadata !1207, metadata !DIExpression()) #5, !dbg !1373
  %22 = tail call i8* @halide_double_to_string(i8* %21, i8* %10, double %3, i32 1) #6, !dbg !1375
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1376
  br i1 %6, label %23, label %24, !dbg !1378

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1379
  br label %31, !dbg !1380

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1381
  %25 = ptrtoint i8* %22 to i32, !dbg !1383
  %26 = ptrtoint i8* %5 to i32, !dbg !1383
  %27 = add i32 %25, 1, !dbg !1383
  %28 = sub i32 %27, %26, !dbg !1384
  %29 = sext i32 %28 to i64, !dbg !1385
  %30 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %29) #6, !dbg !1386
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1387
  br label %31

31:                                               ; preds = %23, %24
  call void @free(i8* %5) #6, !dbg !1388
  ret i32 -10, !dbg !1389
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_error_out_of_memory(i8* %0) local_unnamed_addr #4 !dbg !1390 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1394, metadata !DIExpression()), !dbg !1395
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.37, i32 0, i32 0)) #6, !dbg !1396
  ret i32 -11, !dbg !1397
}

declare !dbg !1398 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_buffer_argument_is_null(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1401 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1405, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8* %1, metadata !1406, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1408
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1408
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1408
  %3 = tail call i8* @malloc(i32 1024) #6, !dbg !1410
  %4 = icmp eq i8* %3, null, !dbg !1411
  br i1 %4, label %7, label %5, !dbg !1412

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !1413
  store i8 0, i8* %6, align 1, !dbg !1414, !tbaa !227
  br label %7, !dbg !1415

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1416
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1417
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1417
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0)) #6, !dbg !1419
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1420
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1420
  %10 = icmp eq i8* %1, null, !dbg !1422
  br i1 %10, label %11, label %13, !dbg !1423

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1424
  br label %15, !dbg !1425

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #6, !dbg !1426
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ], !dbg !1427
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1428
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1428
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %8, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0)) #6, !dbg !1430
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1431
  br i1 %4, label %18, label %19, !dbg !1433

18:                                               ; preds = %15
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1434
  br label %26, !dbg !1435

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1436
  %20 = ptrtoint i8* %17 to i32, !dbg !1438
  %21 = ptrtoint i8* %3 to i32, !dbg !1438
  %22 = add i32 %20, 1, !dbg !1438
  %23 = sub i32 %22, %21, !dbg !1439
  %24 = sext i32 %23 to i64, !dbg !1440
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %24) #6, !dbg !1441
  tail call void @halide_error(i8* %0, i8* nonnull %3) #6, !dbg !1442
  br label %26

26:                                               ; preds = %19, %18
  tail call void @free(i8* %3) #6, !dbg !1443
  ret i32 -12, !dbg !1444
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_debug_to_file_failed(i8* %0, i8* %1, i8* %2, i32 %3) local_unnamed_addr #0 !dbg !1445 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1449, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8* %1, metadata !1450, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8* %2, metadata !1451, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i32 %3, metadata !1452, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1454
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1454
  %5 = tail call i8* @malloc(i32 1024) #6, !dbg !1456
  %6 = icmp eq i8* %5, null, !dbg !1457
  br i1 %6, label %9, label %7, !dbg !1458

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023, !dbg !1459
  store i8 0, i8* %8, align 1, !dbg !1460, !tbaa !227
  br label %9, !dbg !1461

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1462
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1463
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1463
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0)) #6, !dbg !1465
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1466
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1466
  %12 = icmp eq i8* %1, null, !dbg !1468
  br i1 %12, label %13, label %15, !dbg !1469

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1470
  br label %17, !dbg !1471

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #6, !dbg !1472
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1473
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1474
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1474
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0)) #6, !dbg !1476
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1477
  call void @llvm.dbg.value(metadata i8* %2, metadata !235, metadata !DIExpression()) #5, !dbg !1477
  %20 = icmp eq i8* %2, null, !dbg !1479
  br i1 %20, label %21, label %23, !dbg !1480

21:                                               ; preds = %17
  %22 = tail call i8* @halide_string_to_string(i8* %19, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1481
  br label %25, !dbg !1482

23:                                               ; preds = %17
  %24 = tail call i8* @halide_string_to_string(i8* %19, i8* %10, i8* nonnull %2) #6, !dbg !1483
  br label %25

25:                                               ; preds = %21, %23
  %26 = phi i8* [ %24, %23 ], [ %22, %21 ], !dbg !1484
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1485
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1485
  %27 = tail call i8* @halide_string_to_string(i8* %26, i8* %10, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0)) #6, !dbg !1487
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1488
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !1488
  %28 = sext i32 %3 to i64, !dbg !1490
  %29 = tail call i8* @halide_int64_to_string(i8* %27, i8* %10, i64 %28, i32 1) #6, !dbg !1491
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1492
  br i1 %6, label %30, label %31, !dbg !1494

30:                                               ; preds = %25
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1495
  br label %38, !dbg !1496

31:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1497
  %32 = ptrtoint i8* %29 to i32, !dbg !1499
  %33 = ptrtoint i8* %5 to i32, !dbg !1499
  %34 = add i32 %32, 1, !dbg !1499
  %35 = sub i32 %34, %33, !dbg !1500
  %36 = sext i32 %35 to i64, !dbg !1501
  %37 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %36) #6, !dbg !1502
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1503
  br label %38

38:                                               ; preds = %30, %31
  call void @free(i8* %5) #6, !dbg !1504
  ret i32 -13, !dbg !1505
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_unaligned_host_ptr(i8* %0, i8* %1, i32 %2) local_unnamed_addr #0 !dbg !1506 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1508, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8* %1, metadata !1509, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32 %2, metadata !1510, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1512
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1512
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1512
  %4 = tail call i8* @malloc(i32 1024) #6, !dbg !1514
  %5 = icmp eq i8* %4, null, !dbg !1515
  br i1 %5, label %8, label %6, !dbg !1516

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i32 1023, !dbg !1517
  store i8 0, i8* %7, align 1, !dbg !1518, !tbaa !227
  br label %8, !dbg !1519

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ], !dbg !1520
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1521
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1521
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0)) #6, !dbg !1523
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1524
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1524
  %11 = icmp eq i8* %1, null, !dbg !1526
  br i1 %11, label %12, label %14, !dbg !1527

12:                                               ; preds = %8
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1528
  br label %16, !dbg !1529

14:                                               ; preds = %8
  %15 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* nonnull %1) #6, !dbg !1530
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ], !dbg !1531
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1532
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1532
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %9, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0)) #6, !dbg !1534
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1535
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !1535
  %19 = sext i32 %2 to i64, !dbg !1537
  %20 = tail call i8* @halide_int64_to_string(i8* %18, i8* %9, i64 %19, i32 1) #6, !dbg !1538
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1539
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1539
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %9, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0)) #6, !dbg !1541
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1542
  br i1 %5, label %22, label %23, !dbg !1544

22:                                               ; preds = %16
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1545
  br label %30, !dbg !1546

23:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1547
  %24 = ptrtoint i8* %21 to i32, !dbg !1549
  %25 = ptrtoint i8* %4 to i32, !dbg !1549
  %26 = add i32 %24, 1, !dbg !1549
  %27 = sub i32 %26, %25, !dbg !1550
  %28 = sext i32 %27 to i64, !dbg !1551
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %28) #6, !dbg !1552
  tail call void @halide_error(i8* %0, i8* nonnull %4) #6, !dbg !1553
  br label %30

30:                                               ; preds = %22, %23
  call void @free(i8* %4) #6, !dbg !1554
  ret i32 -24, !dbg !1555
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_device_dirty_with_no_device_support(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1556 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1558, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i8* %1, metadata !1559, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1561
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1561
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1561
  %3 = tail call i8* @malloc(i32 1024) #6, !dbg !1563
  %4 = icmp eq i8* %3, null, !dbg !1564
  br i1 %4, label %7, label %5, !dbg !1565

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !1566
  store i8 0, i8* %6, align 1, !dbg !1567, !tbaa !227
  br label %7, !dbg !1568

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1569
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1570
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1570
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0)) #6, !dbg !1572
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1573
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1573
  %10 = icmp eq i8* %1, null, !dbg !1575
  br i1 %10, label %11, label %13, !dbg !1576

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1577
  br label %15, !dbg !1578

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #6, !dbg !1579
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ], !dbg !1580
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1581
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.47, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1581
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %8, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.47, i32 0, i32 0)) #6, !dbg !1583
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1584
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.48, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1584
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %8, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.48, i32 0, i32 0)) #6, !dbg !1586
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1587
  br i1 %4, label %19, label %20, !dbg !1589

19:                                               ; preds = %15
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1590
  br label %27, !dbg !1591

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1592
  %21 = ptrtoint i8* %18 to i32, !dbg !1594
  %22 = ptrtoint i8* %3 to i32, !dbg !1594
  %23 = add i32 %21, 1, !dbg !1594
  %24 = sub i32 %23, %22, !dbg !1595
  %25 = sext i32 %24 to i64, !dbg !1596
  %26 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %25) #6, !dbg !1597
  tail call void @halide_error(i8* %0, i8* nonnull %3) #6, !dbg !1598
  br label %27

27:                                               ; preds = %19, %20
  call void @free(i8* %3) #6, !dbg !1599
  ret i32 -44, !dbg !1600
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_host_is_null(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1601 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1603, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8* %1, metadata !1604, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1606
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1606
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1606
  %3 = tail call i8* @malloc(i32 1024) #6, !dbg !1608
  %4 = icmp eq i8* %3, null, !dbg !1609
  br i1 %4, label %7, label %5, !dbg !1610

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !1611
  store i8 0, i8* %6, align 1, !dbg !1612, !tbaa !227
  br label %7, !dbg !1613

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1614
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1615
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1615
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0)) #6, !dbg !1617
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1618
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1618
  %10 = icmp eq i8* %1, null, !dbg !1620
  br i1 %10, label %11, label %13, !dbg !1621

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1622
  br label %15, !dbg !1623

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #6, !dbg !1624
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ], !dbg !1625
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1626
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.49, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1626
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %8, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.49, i32 0, i32 0)) #6, !dbg !1628
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1629
  br i1 %4, label %18, label %19, !dbg !1631

18:                                               ; preds = %15
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1632
  br label %26, !dbg !1633

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1634
  %20 = ptrtoint i8* %17 to i32, !dbg !1636
  %21 = ptrtoint i8* %3 to i32, !dbg !1636
  %22 = add i32 %20, 1, !dbg !1636
  %23 = sub i32 %22, %21, !dbg !1637
  %24 = sext i32 %23 to i64, !dbg !1638
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %24) #6, !dbg !1639
  tail call void @halide_error(i8* %0, i8* nonnull %3) #6, !dbg !1640
  br label %26

26:                                               ; preds = %19, %18
  tail call void @free(i8* %3) #6, !dbg !1641
  ret i32 -34, !dbg !1642
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_bad_fold(i8* %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #0 !dbg !1643 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1647, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8* %1, metadata !1648, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8* %2, metadata !1649, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8* %3, metadata !1650, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1652
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1652
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1652
  %5 = tail call i8* @malloc(i32 1024) #6, !dbg !1654
  %6 = icmp eq i8* %5, null, !dbg !1655
  br i1 %6, label %9, label %7, !dbg !1656

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023, !dbg !1657
  store i8 0, i8* %8, align 1, !dbg !1658, !tbaa !227
  br label %9, !dbg !1659

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1660
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1661
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1661
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i32 0, i32 0)) #6, !dbg !1663
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1664
  call void @llvm.dbg.value(metadata i8* %2, metadata !235, metadata !DIExpression()) #5, !dbg !1664
  %12 = icmp eq i8* %2, null, !dbg !1666
  br i1 %12, label %13, label %15, !dbg !1667

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1668
  br label %17, !dbg !1669

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %2) #6, !dbg !1670
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ], !dbg !1671
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1672
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1672
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0)) #6, !dbg !1674
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1675
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1675
  %20 = icmp eq i8* %1, null, !dbg !1677
  br i1 %20, label %21, label %23, !dbg !1678

21:                                               ; preds = %17
  %22 = tail call i8* @halide_string_to_string(i8* %19, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1679
  br label %25, !dbg !1680

23:                                               ; preds = %17
  %24 = tail call i8* @halide_string_to_string(i8* %19, i8* %10, i8* nonnull %1) #6, !dbg !1681
  br label %25

25:                                               ; preds = %21, %23
  %26 = phi i8* [ %24, %23 ], [ %22, %21 ], !dbg !1682
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1683
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1683
  %27 = tail call i8* @halide_string_to_string(i8* %26, i8* %10, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0)) #6, !dbg !1685
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1686
  call void @llvm.dbg.value(metadata i8* %3, metadata !235, metadata !DIExpression()) #5, !dbg !1686
  %28 = icmp eq i8* %3, null, !dbg !1688
  br i1 %28, label %29, label %31, !dbg !1689

29:                                               ; preds = %25
  %30 = tail call i8* @halide_string_to_string(i8* %27, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1690
  br label %33, !dbg !1691

31:                                               ; preds = %25
  %32 = tail call i8* @halide_string_to_string(i8* %27, i8* %10, i8* nonnull %3) #6, !dbg !1692
  br label %33

33:                                               ; preds = %29, %31
  %34 = phi i8* [ %32, %31 ], [ %30, %29 ], !dbg !1693
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1694
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1694
  %35 = tail call i8* @halide_string_to_string(i8* %34, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)) #6, !dbg !1696
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1697
  br i1 %6, label %36, label %37, !dbg !1699

36:                                               ; preds = %33
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1700
  br label %44, !dbg !1701

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1702
  %38 = ptrtoint i8* %35 to i32, !dbg !1704
  %39 = ptrtoint i8* %5 to i32, !dbg !1704
  %40 = add i32 %38, 1, !dbg !1704
  %41 = sub i32 %40, %39, !dbg !1705
  %42 = sext i32 %41 to i64, !dbg !1706
  %43 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %42) #6, !dbg !1707
  tail call void @halide_error(i8* %0, i8* nonnull %5) #6, !dbg !1708
  br label %44

44:                                               ; preds = %36, %37
  call void @free(i8* %5) #6, !dbg !1709
  ret i32 -25, !dbg !1710
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_bad_extern_fold(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 !dbg !1711 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1713, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i8* %1, metadata !1714, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i32 %2, metadata !1715, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i32 %3, metadata !1716, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i32 %4, metadata !1717, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i32 %5, metadata !1718, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i32 %6, metadata !1719, metadata !DIExpression()), !dbg !1720
  %8 = icmp slt i32 %3, %5, !dbg !1721
  br i1 %8, label %13, label %9, !dbg !1723

9:                                                ; preds = %7
  %10 = add nsw i32 %4, %3, !dbg !1724
  %11 = add nsw i32 %6, %5, !dbg !1725
  %12 = icmp sgt i32 %10, %11, !dbg !1726
  br i1 %12, label %13, label %57, !dbg !1727

13:                                               ; preds = %9, %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1728
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1728
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1728
  %14 = tail call i8* @malloc(i32 1024) #6, !dbg !1731
  %15 = icmp eq i8* %14, null, !dbg !1732
  br i1 %15, label %18, label %16, !dbg !1733

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, i8* %14, i32 1023, !dbg !1734
  store i8 0, i8* %17, align 1, !dbg !1735, !tbaa !227
  br label %18, !dbg !1736

18:                                               ; preds = %13, %16
  %19 = phi i8* [ %17, %16 ], [ null, %13 ], !dbg !1737
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1738
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1738
  %20 = tail call i8* @halide_string_to_string(i8* %14, i8* %19, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i32 0, i32 0)) #6, !dbg !1740
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1741
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !1741
  %21 = sext i32 %2 to i64, !dbg !1743
  %22 = tail call i8* @halide_int64_to_string(i8* %20, i8* %19, i64 %21, i32 1) #6, !dbg !1744
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1745
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1745
  %23 = tail call i8* @halide_string_to_string(i8* %22, i8* %19, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0)) #6, !dbg !1747
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1748
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1748
  %24 = icmp eq i8* %1, null, !dbg !1750
  br i1 %24, label %25, label %27, !dbg !1751

25:                                               ; preds = %18
  %26 = tail call i8* @halide_string_to_string(i8* %23, i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1752
  br label %29, !dbg !1753

27:                                               ; preds = %18
  %28 = tail call i8* @halide_string_to_string(i8* %23, i8* %19, i8* nonnull %1) #6, !dbg !1754
  br label %29

29:                                               ; preds = %25, %27
  %30 = phi i8* [ %28, %27 ], [ %26, %25 ], !dbg !1755
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1756
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1756
  %31 = tail call i8* @halide_string_to_string(i8* %30, i8* %19, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i32 0, i32 0)) #6, !dbg !1758
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1759
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !1759
  %32 = sext i32 %3 to i64, !dbg !1761
  %33 = tail call i8* @halide_int64_to_string(i8* %31, i8* %19, i64 %32, i32 1) #6, !dbg !1762
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1763
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1763
  %34 = tail call i8* @halide_string_to_string(i8* %33, i8* %19, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #6, !dbg !1765
  %35 = add nsw i32 %4, %3, !dbg !1766
  %36 = add nsw i32 %35, -1, !dbg !1767
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1768
  call void @llvm.dbg.value(metadata i32 %36, metadata !256, metadata !DIExpression()) #5, !dbg !1768
  %37 = sext i32 %36 to i64, !dbg !1770
  %38 = tail call i8* @halide_int64_to_string(i8* %34, i8* %19, i64 %37, i32 1) #6, !dbg !1771
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1772
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1772
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %19, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0)) #6, !dbg !1774
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1775
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.57, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1775
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %19, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.57, i32 0, i32 0)) #6, !dbg !1777
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1778
  call void @llvm.dbg.value(metadata i32 %5, metadata !256, metadata !DIExpression()) #5, !dbg !1778
  %41 = sext i32 %5 to i64, !dbg !1780
  %42 = tail call i8* @halide_int64_to_string(i8* %40, i8* %19, i64 %41, i32 1) #6, !dbg !1781
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1782
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1782
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %19, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #6, !dbg !1784
  %44 = add nsw i32 %6, %5, !dbg !1785
  %45 = add nsw i32 %44, -1, !dbg !1786
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1787
  call void @llvm.dbg.value(metadata i32 %45, metadata !256, metadata !DIExpression()) #5, !dbg !1787
  %46 = sext i32 %45 to i64, !dbg !1789
  %47 = tail call i8* @halide_int64_to_string(i8* %43, i8* %19, i64 %46, i32 1) #6, !dbg !1790
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1791
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1791
  %48 = tail call i8* @halide_string_to_string(i8* %47, i8* %19, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0)) #6, !dbg !1793
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1794
  br i1 %15, label %49, label %50, !dbg !1796

49:                                               ; preds = %29
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1797
  br label %96, !dbg !1798

50:                                               ; preds = %29
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1799
  %51 = ptrtoint i8* %48 to i32, !dbg !1801
  %52 = ptrtoint i8* %14 to i32, !dbg !1801
  %53 = add i32 %51, 1, !dbg !1801
  %54 = sub i32 %53, %52, !dbg !1802
  %55 = sext i32 %54 to i64, !dbg !1803
  %56 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %14, i64 %55) #6, !dbg !1804
  tail call void @halide_error(i8* %0, i8* nonnull %14) #6, !dbg !1805
  br label %96

57:                                               ; preds = %9
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1806
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1806
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1806
  %58 = tail call i8* @malloc(i32 1024) #6, !dbg !1809
  %59 = icmp eq i8* %58, null, !dbg !1810
  br i1 %59, label %62, label %60, !dbg !1811

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, i8* %58, i32 1023, !dbg !1812
  store i8 0, i8* %61, align 1, !dbg !1813, !tbaa !227
  br label %62, !dbg !1814

62:                                               ; preds = %57, %60
  %63 = phi i8* [ %61, %60 ], [ null, %57 ], !dbg !1815
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1816
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1816
  %64 = tail call i8* @halide_string_to_string(i8* %58, i8* %63, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i32 0, i32 0)) #6, !dbg !1818
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1819
  call void @llvm.dbg.value(metadata i32 %2, metadata !256, metadata !DIExpression()) #5, !dbg !1819
  %65 = sext i32 %2 to i64, !dbg !1821
  %66 = tail call i8* @halide_int64_to_string(i8* %64, i8* %63, i64 %65, i32 1) #6, !dbg !1822
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1823
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1823
  %67 = tail call i8* @halide_string_to_string(i8* %66, i8* %63, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0)) #6, !dbg !1825
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1826
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1826
  %68 = icmp eq i8* %1, null, !dbg !1828
  br i1 %68, label %69, label %71, !dbg !1829

69:                                               ; preds = %62
  %70 = tail call i8* @halide_string_to_string(i8* %67, i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1830
  br label %73, !dbg !1831

71:                                               ; preds = %62
  %72 = tail call i8* @halide_string_to_string(i8* %67, i8* %63, i8* nonnull %1) #6, !dbg !1832
  br label %73

73:                                               ; preds = %69, %71
  %74 = phi i8* [ %72, %71 ], [ %70, %69 ], !dbg !1833
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1834
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1834
  %75 = tail call i8* @halide_string_to_string(i8* %74, i8* %63, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i32 0, i32 0)) #6, !dbg !1836
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !1837
  %76 = sext i32 %3 to i64, !dbg !1839
  %77 = tail call i8* @halide_int64_to_string(i8* %75, i8* %63, i64 %76, i32 1) #6, !dbg !1840
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1841
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1841
  %78 = tail call i8* @halide_string_to_string(i8* %77, i8* %63, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #6, !dbg !1843
  %79 = add nsw i32 %10, -1, !dbg !1844
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1845
  call void @llvm.dbg.value(metadata i32 %79, metadata !256, metadata !DIExpression()) #5, !dbg !1845
  %80 = sext i32 %79 to i64, !dbg !1847
  %81 = tail call i8* @halide_int64_to_string(i8* %78, i8* %63, i64 %80, i32 1) #6, !dbg !1848
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1849
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1849
  %82 = tail call i8* @halide_string_to_string(i8* %81, i8* %63, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0)) #6, !dbg !1851
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1852
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.59, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1852
  %83 = tail call i8* @halide_string_to_string(i8* %82, i8* %63, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.59, i32 0, i32 0)) #6, !dbg !1854
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1855
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1855
  %84 = tail call i8* @halide_string_to_string(i8* %83, i8* %63, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i32 0, i32 0)) #6, !dbg !1857
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %6, metadata !256, metadata !DIExpression()) #5, !dbg !1858
  %85 = sext i32 %6 to i64, !dbg !1860
  %86 = tail call i8* @halide_int64_to_string(i8* %84, i8* %63, i64 %85, i32 1) #6, !dbg !1861
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1862
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1862
  %87 = tail call i8* @halide_string_to_string(i8* %86, i8* %63, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)) #6, !dbg !1864
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1865
  br i1 %59, label %88, label %89, !dbg !1867

88:                                               ; preds = %73
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1868
  br label %96, !dbg !1869

89:                                               ; preds = %73
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1870
  %90 = ptrtoint i8* %87 to i32, !dbg !1872
  %91 = ptrtoint i8* %58 to i32, !dbg !1872
  %92 = add i32 %90, 1, !dbg !1872
  %93 = sub i32 %92, %91, !dbg !1873
  %94 = sext i32 %93 to i64, !dbg !1874
  %95 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %58, i64 %94) #6, !dbg !1875
  tail call void @halide_error(i8* %0, i8* nonnull %58) #6, !dbg !1876
  br label %96

96:                                               ; preds = %89, %88, %50, %49
  %97 = phi i8* [ %14, %49 ], [ %14, %50 ], [ %58, %88 ], [ %58, %89 ]
  call void @free(i8* %97) #6, !dbg !1877
  ret i32 -35, !dbg !1878
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_fold_factor_too_small(i8* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5) local_unnamed_addr #0 !dbg !1879 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1883, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8* %1, metadata !1884, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8* %2, metadata !1885, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 %3, metadata !1886, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8* %4, metadata !1887, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 %5, metadata !1888, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1890
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1890
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1890
  %7 = tail call i8* @malloc(i32 1024) #6, !dbg !1892
  %8 = icmp eq i8* %7, null, !dbg !1893
  br i1 %8, label %11, label %9, !dbg !1894

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i32 1023, !dbg !1895
  store i8 0, i8* %10, align 1, !dbg !1896, !tbaa !227
  br label %11, !dbg !1897

11:                                               ; preds = %6, %9
  %12 = phi i8* [ %10, %9 ], [ null, %6 ], !dbg !1898
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1899
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1899
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %12, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0)) #6, !dbg !1901
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1902
  call void @llvm.dbg.value(metadata i32 %3, metadata !256, metadata !DIExpression()) #5, !dbg !1902
  %14 = sext i32 %3 to i64, !dbg !1904
  %15 = tail call i8* @halide_int64_to_string(i8* %13, i8* %12, i64 %14, i32 1) #6, !dbg !1905
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1906
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1906
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %12, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0)) #6, !dbg !1908
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1909
  call void @llvm.dbg.value(metadata i8* %2, metadata !235, metadata !DIExpression()) #5, !dbg !1909
  %17 = icmp eq i8* %2, null, !dbg !1911
  br i1 %17, label %18, label %20, !dbg !1912

18:                                               ; preds = %11
  %19 = tail call i8* @halide_string_to_string(i8* %16, i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1913
  br label %22, !dbg !1914

20:                                               ; preds = %11
  %21 = tail call i8* @halide_string_to_string(i8* %16, i8* %12, i8* nonnull %2) #6, !dbg !1915
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i8* [ %21, %20 ], [ %19, %18 ], !dbg !1916
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1917
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1917
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %12, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0)) #6, !dbg !1919
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1920
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1920
  %25 = icmp eq i8* %1, null, !dbg !1922
  br i1 %25, label %26, label %28, !dbg !1923

26:                                               ; preds = %22
  %27 = tail call i8* @halide_string_to_string(i8* %24, i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1924
  br label %30, !dbg !1925

28:                                               ; preds = %22
  %29 = tail call i8* @halide_string_to_string(i8* %24, i8* %12, i8* nonnull %1) #6, !dbg !1926
  br label %30

30:                                               ; preds = %26, %28
  %31 = phi i8* [ %29, %28 ], [ %27, %26 ], !dbg !1927
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1928
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.63, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1928
  %32 = tail call i8* @halide_string_to_string(i8* %31, i8* %12, i8* nonnull getelementptr inbounds ([61 x i8], [61 x i8]* @.str.63, i32 0, i32 0)) #6, !dbg !1930
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1931
  call void @llvm.dbg.value(metadata i8* %4, metadata !235, metadata !DIExpression()) #5, !dbg !1931
  %33 = icmp eq i8* %4, null, !dbg !1933
  br i1 %33, label %34, label %36, !dbg !1934

34:                                               ; preds = %30
  %35 = tail call i8* @halide_string_to_string(i8* %32, i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1935
  br label %38, !dbg !1936

36:                                               ; preds = %30
  %37 = tail call i8* @halide_string_to_string(i8* %32, i8* %12, i8* nonnull %4) #6, !dbg !1937
  br label %38

38:                                               ; preds = %34, %36
  %39 = phi i8* [ %37, %36 ], [ %35, %34 ], !dbg !1938
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1939
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1939
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %12, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0)) #6, !dbg !1941
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !253, metadata !DIExpression()) #5, !dbg !1942
  call void @llvm.dbg.value(metadata i32 %5, metadata !256, metadata !DIExpression()) #5, !dbg !1942
  %41 = sext i32 %5 to i64, !dbg !1944
  %42 = tail call i8* @halide_int64_to_string(i8* %40, i8* %12, i64 %41, i32 1) #6, !dbg !1945
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1946
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1946
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %12, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0)) #6, !dbg !1948
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !1949
  br i1 %8, label %44, label %45, !dbg !1951

44:                                               ; preds = %38
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !1952
  br label %52, !dbg !1953

45:                                               ; preds = %38
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !1954
  %46 = ptrtoint i8* %43 to i32, !dbg !1956
  %47 = ptrtoint i8* %7 to i32, !dbg !1956
  %48 = add i32 %46, 1, !dbg !1956
  %49 = sub i32 %48, %47, !dbg !1957
  %50 = sext i32 %49 to i64, !dbg !1958
  %51 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %50) #6, !dbg !1959
  tail call void @halide_error(i8* %0, i8* nonnull %7) #6, !dbg !1960
  br label %52

52:                                               ; preds = %44, %45
  call void @free(i8* %7) #6, !dbg !1961
  ret i32 -26, !dbg !1962
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_requirement_failed(i8* %0, i8* %1, i8* %2) local_unnamed_addr #0 !dbg !1963 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1967, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8* %1, metadata !1968, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8* %2, metadata !1969, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !1971
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !1971
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !1971
  %4 = tail call i8* @malloc(i32 1024) #6, !dbg !1973
  %5 = icmp eq i8* %4, null, !dbg !1974
  br i1 %5, label %8, label %6, !dbg !1975

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i32 1023, !dbg !1976
  store i8 0, i8* %7, align 1, !dbg !1977, !tbaa !227
  br label %8, !dbg !1978

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ], !dbg !1979
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1980
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1980
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i32 0, i32 0)) #6, !dbg !1982
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1983
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !1983
  %11 = icmp eq i8* %1, null, !dbg !1985
  br i1 %11, label %12, label %14, !dbg !1986

12:                                               ; preds = %8
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1987
  br label %16, !dbg !1988

14:                                               ; preds = %8
  %15 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* nonnull %1) #6, !dbg !1989
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ], !dbg !1990
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1991
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !1991
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %9, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0)) #6, !dbg !1993
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !1994
  call void @llvm.dbg.value(metadata i8* %2, metadata !235, metadata !DIExpression()) #5, !dbg !1994
  %19 = icmp eq i8* %2, null, !dbg !1996
  br i1 %19, label %20, label %22, !dbg !1997

20:                                               ; preds = %16
  %21 = tail call i8* @halide_string_to_string(i8* %18, i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !1998
  br label %24, !dbg !1999

22:                                               ; preds = %16
  %23 = tail call i8* @halide_string_to_string(i8* %18, i8* %9, i8* nonnull %2) #6, !dbg !2000
  br label %24

24:                                               ; preds = %20, %22
  %25 = phi i8* [ %23, %22 ], [ %21, %20 ], !dbg !2001
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2002
  br i1 %5, label %26, label %27, !dbg !2004

26:                                               ; preds = %24
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !2005
  br label %34, !dbg !2006

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !2007
  %28 = ptrtoint i8* %25 to i32, !dbg !2009
  %29 = ptrtoint i8* %4 to i32, !dbg !2009
  %30 = sub i32 1, %29, !dbg !2009
  %31 = add i32 %30, %28, !dbg !2010
  %32 = sext i32 %31 to i64, !dbg !2011
  %33 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %32) #6, !dbg !2012
  tail call void @halide_error(i8* %0, i8* nonnull %4) #6, !dbg !2013
  br label %34

34:                                               ; preds = %26, %27
  call void @free(i8* %4) #6, !dbg !2014
  ret i32 -27, !dbg !2015
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_specialize_fail(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !2016 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2018, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8* %1, metadata !2019, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !2021
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !2021
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !2021
  %3 = tail call i8* @malloc(i32 1024) #6, !dbg !2023
  %4 = icmp eq i8* %3, null, !dbg !2024
  br i1 %4, label %7, label %5, !dbg !2025

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !2026
  store i8 0, i8* %6, align 1, !dbg !2027, !tbaa !227
  br label %7, !dbg !2028

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !2029
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2030
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.67, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !2030
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.67, i32 0, i32 0)) #6, !dbg !2032
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2033
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !2033
  %10 = icmp eq i8* %1, null, !dbg !2035
  br i1 %10, label %11, label %13, !dbg !2036

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !2037
  br label %15, !dbg !2038

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #6, !dbg !2039
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ], !dbg !2040
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2041
  br i1 %4, label %17, label %18, !dbg !2043

17:                                               ; preds = %15
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !2044
  br label %25, !dbg !2045

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !2046
  %19 = ptrtoint i8* %16 to i32, !dbg !2048
  %20 = ptrtoint i8* %3 to i32, !dbg !2048
  %21 = sub i32 1, %20, !dbg !2048
  %22 = add i32 %21, %19, !dbg !2049
  %23 = sext i32 %22 to i64, !dbg !2050
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %23) #6, !dbg !2051
  tail call void @halide_error(i8* %0, i8* nonnull %3) #6, !dbg !2052
  br label %25

25:                                               ; preds = %18, %17
  tail call void @free(i8* %3) #6, !dbg !2053
  ret i32 -31, !dbg !2054
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_no_device_interface(i8* %0) local_unnamed_addr #0 !dbg !2055 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2057, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !2059
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !2059
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !2059
  %2 = tail call i8* @malloc(i32 1024) #6, !dbg !2061
  %3 = icmp eq i8* %2, null, !dbg !2062
  br i1 %3, label %4, label %6, !dbg !2063

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2064
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.68, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !2064
  %5 = tail call i8* @halide_string_to_string(i8* %2, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.68, i32 0, i32 0)) #6, !dbg !2066
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2067
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !2069
  br label %15, !dbg !2070

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %2, i32 1023, !dbg !2071
  store i8 0, i8* %7, align 1, !dbg !2072, !tbaa !227
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2064
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.68, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !2064
  %8 = tail call i8* @halide_string_to_string(i8* nonnull %2, i8* nonnull %7, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.68, i32 0, i32 0)) #6, !dbg !2066
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2067
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !2073
  %9 = ptrtoint i8* %8 to i32, !dbg !2075
  %10 = ptrtoint i8* %2 to i32, !dbg !2075
  %11 = add i32 %9, 1, !dbg !2075
  %12 = sub i32 %11, %10, !dbg !2076
  %13 = sext i32 %12 to i64, !dbg !2077
  %14 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %13) #6, !dbg !2078
  tail call void @halide_error(i8* %0, i8* nonnull %2) #6, !dbg !2079
  br label %15

15:                                               ; preds = %6, %4
  tail call void @free(i8* %2) #6, !dbg !2080
  ret i32 -19, !dbg !2081
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_device_interface_no_device(i8* %0) local_unnamed_addr #0 !dbg !2082 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2084, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !2086
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !2086
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !2086
  %2 = tail call i8* @malloc(i32 1024) #6, !dbg !2088
  %3 = icmp eq i8* %2, null, !dbg !2089
  br i1 %3, label %4, label %6, !dbg !2090

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2091
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.69, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !2091
  %5 = tail call i8* @halide_string_to_string(i8* %2, i8* null, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.69, i32 0, i32 0)) #6, !dbg !2093
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2094
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !2096
  br label %15, !dbg !2097

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %2, i32 1023, !dbg !2098
  store i8 0, i8* %7, align 1, !dbg !2099, !tbaa !227
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2091
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.69, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !2091
  %8 = tail call i8* @halide_string_to_string(i8* nonnull %2, i8* nonnull %7, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.69, i32 0, i32 0)) #6, !dbg !2093
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2094
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !2100
  %9 = ptrtoint i8* %8 to i32, !dbg !2102
  %10 = ptrtoint i8* %2 to i32, !dbg !2102
  %11 = add i32 %9, 1, !dbg !2102
  %12 = sub i32 %11, %10, !dbg !2103
  %13 = sext i32 %12 to i64, !dbg !2104
  %14 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %13) #6, !dbg !2105
  tail call void @halide_error(i8* %0, i8* nonnull %2) #6, !dbg !2106
  br label %15

15:                                               ; preds = %6, %4
  tail call void @free(i8* %2) #6, !dbg !2107
  ret i32 -36, !dbg !2108
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_host_and_device_dirty(i8* %0) local_unnamed_addr #0 !dbg !2109 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2111, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !2113
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !2113
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !2113
  %2 = tail call i8* @malloc(i32 1024) #6, !dbg !2115
  %3 = icmp eq i8* %2, null, !dbg !2116
  br i1 %3, label %4, label %6, !dbg !2117

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.70, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !2118
  %5 = tail call i8* @halide_string_to_string(i8* %2, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.70, i32 0, i32 0)) #6, !dbg !2120
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2121
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !2123
  br label %15, !dbg !2124

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %2, i32 1023, !dbg !2125
  store i8 0, i8* %7, align 1, !dbg !2126, !tbaa !227
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2118
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.70, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !2118
  %8 = tail call i8* @halide_string_to_string(i8* nonnull %2, i8* nonnull %7, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.70, i32 0, i32 0)) #6, !dbg !2120
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2121
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !2127
  %9 = ptrtoint i8* %8 to i32, !dbg !2129
  %10 = ptrtoint i8* %2 to i32, !dbg !2129
  %11 = add i32 %9, 1, !dbg !2129
  %12 = sub i32 %11, %10, !dbg !2130
  %13 = sext i32 %12 to i64, !dbg !2131
  %14 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %13) #6, !dbg !2132
  tail call void @halide_error(i8* %0, i8* nonnull %2) #6, !dbg !2133
  br label %15

15:                                               ; preds = %6, %4
  tail call void @free(i8* %2) #6, !dbg !2134
  ret i32 -37, !dbg !2135
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_error_buffer_is_null(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !2136 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2138, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8* %1, metadata !2139, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !208, metadata !DIExpression()) #5, !dbg !2141
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #5, !dbg !2141
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #5, !dbg !2141
  %3 = tail call i8* @malloc(i32 1024) #6, !dbg !2143
  %4 = icmp eq i8* %3, null, !dbg !2144
  br i1 %4, label %7, label %5, !dbg !2145

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !2146
  store i8 0, i8* %6, align 1, !dbg !2147, !tbaa !227
  br label %7, !dbg !2148

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !2149
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2150
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !2150
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i32 0, i32 0)) #6, !dbg !2152
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2153
  call void @llvm.dbg.value(metadata i8* %1, metadata !235, metadata !DIExpression()) #5, !dbg !2153
  %10 = icmp eq i8* %1, null, !dbg !2155
  br i1 %10, label %11, label %13, !dbg !2156

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)) #6, !dbg !2157
  br label %15, !dbg !2158

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #6, !dbg !2159
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ], !dbg !2160
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !232, metadata !DIExpression()) #5, !dbg !2161
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), metadata !235, metadata !DIExpression()) #5, !dbg !2161
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %8, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0)) #6, !dbg !2163
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !261, metadata !DIExpression()) #5, !dbg !2164
  br i1 %4, label %18, label %19, !dbg !2166

18:                                               ; preds = %15
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #6, !dbg !2167
  br label %26, !dbg !2168

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !272, metadata !DIExpression()) #5, !dbg !2169
  %20 = ptrtoint i8* %17 to i32, !dbg !2171
  %21 = ptrtoint i8* %3 to i32, !dbg !2171
  %22 = add i32 %20, 1, !dbg !2171
  %23 = sub i32 %22, %21, !dbg !2172
  %24 = sext i32 %23 to i64, !dbg !2173
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %24) #6, !dbg !2174
  tail call void @halide_error(i8* %0, i8* nonnull %3) #6, !dbg !2175
  br label %26

26:                                               ; preds = %19, %18
  tail call void @free(i8* %3) #6, !dbg !2176
  ret i32 -38, !dbg !2177
}

declare !dbg !2178 dso_local i8* @malloc(i32) local_unnamed_addr #3

declare !dbg !2181 dso_local void @free(i8*) local_unnamed_addr #3

declare !dbg !2184 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !2187 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !2190 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !2193 extern_weak dso_local i8* @halide_type_to_string(i8*, i8*, %struct.halide_type_t*) local_unnamed_addr #3

declare !dbg !2197 extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !2200 extern_weak dso_local i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #3

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
!69 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !65, file: !64, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !70, templateParams: !190)
!70 = !{!71, !74, !75, !76, !78, !80, !84, !88, !94, !99, !103, !108, !113, !117, !121, !126, !132, !165, !172, !175, !178, !183, !184, !187, !188, !189}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !69, file: !64, line: 32, baseType: !72, size: 32, flags: DIFlagPublic)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 32)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !69, file: !64, line: 32, baseType: !72, size: 32, offset: 32, flags: DIFlagPublic)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !69, file: !64, line: 32, baseType: !72, size: 32, offset: 64, flags: DIFlagPublic)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !69, file: !64, line: 33, baseType: !77, size: 32, offset: 96, flags: DIFlagPublic)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !69, file: !64, line: 34, baseType: !79, size: 8, offset: 128, flags: DIFlagPublic)
!79 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !69, file: !64, line: 35, baseType: !81, size: 8, offset: 136, flags: DIFlagPublic)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DISubprogram(name: "Printer", scope: !69, file: !64, line: 37, type: !85, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87, !77, !72}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!88 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !69, file: !64, line: 57, type: !89, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!89 = !DISubroutineType(types: !90)
!90 = !{!91, !87, !92}
!91 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !69, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
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
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
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
!135 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !136, size: 32)
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
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!147 = !DISubprogram(name: "halide_type_t", scope: !137, file: !4, line: 459, type: !148, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !146}
!150 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !137, file: !4, line: 463, type: !151, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!151 = !DISubroutineType(types: !152)
!152 = !{!137, !153, !130}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!168 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !169, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !4, line: 1550, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !4, line: 1423, size: 320, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!172 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !69, file: !64, line: 119, type: !173, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!173 = !DISubroutineType(types: !174)
!174 = !{!92, !87}
!175 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !69, file: !64, line: 131, type: !176, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !87}
!178 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !69, file: !64, line: 139, type: !179, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DISubroutineType(types: !180)
!180 = !{!106, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32)
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
!280 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !276)
!281 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !276)
!282 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !265)
!283 = distinct !DILexicalBlock(scope: !284, file: !64, line: 171, column: 39)
!284 = distinct !DILexicalBlock(scope: !277, file: !64, line: 171, column: 17)
!285 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !265)
!286 = distinct !DILexicalBlock(scope: !287, file: !64, line: 180, column: 40)
!287 = distinct !DILexicalBlock(scope: !267, file: !64, line: 180, column: 13)
!288 = !DILocation(line: 10, column: 5, scope: !199)
!289 = distinct !DISubprogram(name: "halide_error_extern_stage_failed", scope: !200, file: !200, line: 13, type: !201, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !290)
!290 = !{!291, !292, !293}
!291 = !DILocalVariable(name: "user_context", arg: 1, scope: !289, file: !200, line: 13, type: !77)
!292 = !DILocalVariable(name: "extern_stage_name", arg: 2, scope: !289, file: !200, line: 13, type: !92)
!293 = !DILocalVariable(name: "result", arg: 3, scope: !289, file: !200, line: 13, type: !15)
!294 = !DILocation(line: 0, scope: !289)
!295 = !DILocation(line: 0, scope: !209, inlinedAt: !296)
!296 = distinct !DILocation(line: 14, column: 5, scope: !289)
!297 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !296)
!298 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !296)
!299 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !296)
!300 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !296)
!301 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !296)
!302 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !296)
!303 = !DILocation(line: 0, scope: !222, inlinedAt: !296)
!304 = !DILocation(line: 0, scope: !233, inlinedAt: !305)
!305 = distinct !DILocation(line: 15, column: 9, scope: !289)
!306 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !305)
!307 = !DILocation(line: 0, scope: !233, inlinedAt: !308)
!308 = distinct !DILocation(line: 15, column: 38, scope: !289)
!309 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !308)
!310 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !308)
!311 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !308)
!312 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !308)
!313 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !308)
!314 = !DILocation(line: 0, scope: !240, inlinedAt: !308)
!315 = !DILocation(line: 0, scope: !233, inlinedAt: !316)
!316 = distinct !DILocation(line: 16, column: 9, scope: !289)
!317 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !316)
!318 = !DILocation(line: 0, scope: !254, inlinedAt: !319)
!319 = distinct !DILocation(line: 16, column: 41, scope: !289)
!320 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !319)
!321 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !319)
!322 = !DILocation(line: 0, scope: !262, inlinedAt: !323)
!323 = distinct !DILocation(line: 14, column: 5, scope: !289)
!324 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !323)
!325 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !323)
!326 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !323)
!327 = !DILocation(line: 0, scope: !273, inlinedAt: !328)
!328 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !323)
!329 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !328)
!330 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !328)
!331 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !328)
!332 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !328)
!333 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !323)
!334 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !323)
!335 = !DILocation(line: 17, column: 5, scope: !289)
!336 = distinct !DISubprogram(name: "halide_error_explicit_bounds_too_small", scope: !200, file: !200, line: 20, type: !337, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !339)
!337 = !DISubroutineType(types: !338)
!338 = !{!15, !77, !92, !92, !15, !15, !15, !15}
!339 = !{!340, !341, !342, !343, !344, !345, !346}
!340 = !DILocalVariable(name: "user_context", arg: 1, scope: !336, file: !200, line: 20, type: !77)
!341 = !DILocalVariable(name: "func_name", arg: 2, scope: !336, file: !200, line: 20, type: !92)
!342 = !DILocalVariable(name: "var_name", arg: 3, scope: !336, file: !200, line: 20, type: !92)
!343 = !DILocalVariable(name: "min_bound", arg: 4, scope: !336, file: !200, line: 21, type: !15)
!344 = !DILocalVariable(name: "max_bound", arg: 5, scope: !336, file: !200, line: 21, type: !15)
!345 = !DILocalVariable(name: "min_required", arg: 6, scope: !336, file: !200, line: 21, type: !15)
!346 = !DILocalVariable(name: "max_required", arg: 7, scope: !336, file: !200, line: 21, type: !15)
!347 = !DILocation(line: 0, scope: !336)
!348 = !DILocation(line: 0, scope: !209, inlinedAt: !349)
!349 = distinct !DILocation(line: 22, column: 5, scope: !336)
!350 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !349)
!351 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !349)
!352 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !349)
!353 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !349)
!354 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !349)
!355 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !349)
!356 = !DILocation(line: 0, scope: !222, inlinedAt: !349)
!357 = !DILocation(line: 0, scope: !233, inlinedAt: !358)
!358 = distinct !DILocation(line: 23, column: 9, scope: !336)
!359 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !358)
!360 = !DILocation(line: 0, scope: !233, inlinedAt: !361)
!361 = distinct !DILocation(line: 23, column: 32, scope: !336)
!362 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !361)
!363 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !361)
!364 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !361)
!365 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !361)
!366 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !361)
!367 = !DILocation(line: 0, scope: !240, inlinedAt: !361)
!368 = !DILocation(line: 0, scope: !233, inlinedAt: !369)
!369 = distinct !DILocation(line: 23, column: 44, scope: !336)
!370 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !369)
!371 = !DILocation(line: 0, scope: !233, inlinedAt: !372)
!372 = distinct !DILocation(line: 23, column: 54, scope: !336)
!373 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !372)
!374 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !372)
!375 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !372)
!376 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !372)
!377 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !372)
!378 = !DILocation(line: 0, scope: !240, inlinedAt: !372)
!379 = !DILocation(line: 0, scope: !233, inlinedAt: !380)
!380 = distinct !DILocation(line: 24, column: 9, scope: !336)
!381 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !380)
!382 = !DILocation(line: 0, scope: !254, inlinedAt: !383)
!383 = distinct !DILocation(line: 24, column: 22, scope: !336)
!384 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !383)
!385 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !383)
!386 = !DILocation(line: 0, scope: !233, inlinedAt: !387)
!387 = distinct !DILocation(line: 24, column: 35, scope: !336)
!388 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !387)
!389 = !DILocation(line: 0, scope: !254, inlinedAt: !390)
!390 = distinct !DILocation(line: 24, column: 45, scope: !336)
!391 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !390)
!392 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !390)
!393 = !DILocation(line: 0, scope: !233, inlinedAt: !394)
!394 = distinct !DILocation(line: 25, column: 9, scope: !336)
!395 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !394)
!396 = !DILocation(line: 0, scope: !254, inlinedAt: !397)
!397 = distinct !DILocation(line: 25, column: 52, scope: !336)
!398 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !397)
!399 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !397)
!400 = !DILocation(line: 0, scope: !233, inlinedAt: !401)
!401 = distinct !DILocation(line: 26, column: 9, scope: !336)
!402 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !401)
!403 = !DILocation(line: 0, scope: !254, inlinedAt: !404)
!404 = distinct !DILocation(line: 26, column: 19, scope: !336)
!405 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !404)
!406 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !404)
!407 = !DILocation(line: 0, scope: !233, inlinedAt: !408)
!408 = distinct !DILocation(line: 26, column: 35, scope: !336)
!409 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !408)
!410 = !DILocation(line: 0, scope: !262, inlinedAt: !411)
!411 = distinct !DILocation(line: 22, column: 5, scope: !336)
!412 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !411)
!413 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !411)
!414 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !411)
!415 = !DILocation(line: 0, scope: !273, inlinedAt: !416)
!416 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !411)
!417 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !416)
!418 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !416)
!419 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !416)
!420 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !416)
!421 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !411)
!422 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !411)
!423 = !DILocation(line: 27, column: 5, scope: !336)
!424 = distinct !DISubprogram(name: "halide_error_bad_type", scope: !200, file: !200, line: 30, type: !425, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{!15, !77, !92, !111, !111}
!427 = !{!428, !429, !430, !431, !432, !433}
!428 = !DILocalVariable(name: "user_context", arg: 1, scope: !424, file: !200, line: 30, type: !77)
!429 = !DILocalVariable(name: "func_name", arg: 2, scope: !424, file: !200, line: 30, type: !92)
!430 = !DILocalVariable(name: "type_given_bits", arg: 3, scope: !424, file: !200, line: 31, type: !111)
!431 = !DILocalVariable(name: "correct_type_bits", arg: 4, scope: !424, file: !200, line: 31, type: !111)
!432 = !DILocalVariable(name: "correct_type", scope: !424, file: !200, line: 32, type: !137)
!433 = !DILocalVariable(name: "type_given", scope: !424, file: !200, line: 32, type: !137)
!434 = !DILocation(line: 0, scope: !424)
!435 = !{!436, !436, i64 0}
!436 = !{!"int", !228, i64 0}
!437 = !DILocation(line: 32, column: 5, scope: !424)
!438 = !DILocation(line: 32, column: 19, scope: !424)
!439 = !DILocalVariable(name: "this", arg: 1, scope: !440, type: !442, flags: DIFlagArtificial | DIFlagObjectPointer)
!440 = distinct !DISubprogram(name: "halide_type_t", linkageName: "_ZN13halide_type_tC2Ev", scope: !137, file: !4, line: 459, type: !148, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !147, retainedNodes: !441)
!441 = !{!439}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32)
!443 = !DILocation(line: 0, scope: !440, inlinedAt: !444)
!444 = distinct !DILocation(line: 32, column: 19, scope: !424)
!445 = !DILocation(line: 460, column: 11, scope: !440, inlinedAt: !444)
!446 = !{!447, !448, i64 0}
!447 = !{!"_ZTS13halide_type_t", !448, i64 0, !228, i64 1, !449, i64 2}
!448 = !{!"_ZTS18halide_type_code_t", !228, i64 0}
!449 = !{!"short", !228, i64 0}
!450 = !DILocation(line: 460, column: 40, scope: !440, inlinedAt: !444)
!451 = !{!447, !228, i64 1}
!452 = !DILocation(line: 460, column: 49, scope: !440, inlinedAt: !444)
!453 = !{!447, !449, i64 2}
!454 = !DILocation(line: 32, column: 33, scope: !424)
!455 = !DILocation(line: 0, scope: !440, inlinedAt: !456)
!456 = distinct !DILocation(line: 32, column: 33, scope: !424)
!457 = !DILocation(line: 460, column: 11, scope: !440, inlinedAt: !456)
!458 = !DILocation(line: 460, column: 40, scope: !440, inlinedAt: !456)
!459 = !DILocation(line: 460, column: 49, scope: !440, inlinedAt: !456)
!460 = !DILocation(line: 33, column: 27, scope: !424)
!461 = !DILocation(line: 33, column: 5, scope: !424)
!462 = !DILocation(line: 34, column: 25, scope: !424)
!463 = !DILocation(line: 34, column: 5, scope: !424)
!464 = !DILocation(line: 35, column: 5, scope: !424)
!465 = !DILocation(line: 0, scope: !209, inlinedAt: !466)
!466 = distinct !DILocation(line: 35, column: 5, scope: !424)
!467 = !DILocation(line: 38, column: 11, scope: !209, inlinedAt: !466)
!468 = !{!469, !470, i64 12}
!469 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEE", !470, i64 0, !470, i64 4, !470, i64 8, !470, i64 12, !471, i64 16, !228, i64 17}
!470 = !{!"any pointer", !228, i64 0}
!471 = !{!"bool", !228, i64 0}
!472 = !DILocation(line: 38, column: 30, scope: !209, inlinedAt: !466)
!473 = !{!469, !471, i64 16}
!474 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !466)
!475 = !DILocation(line: 44, column: 13, scope: !217, inlinedAt: !466)
!476 = !DILocation(line: 44, column: 17, scope: !217, inlinedAt: !466)
!477 = !{!469, !470, i64 0}
!478 = !DILocation(line: 47, column: 9, scope: !220, inlinedAt: !466)
!479 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !466)
!480 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !466)
!481 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !466)
!482 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !466)
!483 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !466)
!484 = !DILocation(line: 0, scope: !222, inlinedAt: !466)
!485 = !DILocation(line: 53, column: 13, scope: !486, inlinedAt: !466)
!486 = distinct !DILexicalBlock(scope: !222, file: !64, line: 51, column: 16)
!487 = !DILocation(line: 53, column: 17, scope: !486, inlinedAt: !466)
!488 = !DILocation(line: 0, scope: !233, inlinedAt: !489)
!489 = distinct !DILocation(line: 36, column: 9, scope: !424)
!490 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !489)
!491 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !489)
!492 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !489)
!493 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !489)
!494 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !489)
!495 = !DILocation(line: 0, scope: !240, inlinedAt: !489)
!496 = !{!469, !470, i64 4}
!497 = !DILocation(line: 0, scope: !233, inlinedAt: !498)
!498 = distinct !DILocation(line: 36, column: 22, scope: !424)
!499 = !DILocation(line: 62, column: 48, scope: !239, inlinedAt: !498)
!500 = !{!469, !470, i64 8}
!501 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !498)
!502 = !DILocalVariable(name: "this", arg: 1, scope: !503, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!503 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !69, file: !64, line: 108, type: !133, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !132, retainedNodes: !504)
!504 = !{!502, !505}
!505 = !DILocalVariable(name: "t", arg: 2, scope: !503, file: !64, line: 108, type: !135)
!506 = !DILocation(line: 0, scope: !503, inlinedAt: !507)
!507 = distinct !DILocation(line: 36, column: 38, scope: !424)
!508 = !DILocation(line: 109, column: 15, scope: !503, inlinedAt: !507)
!509 = !DILocation(line: 0, scope: !233, inlinedAt: !510)
!510 = distinct !DILocation(line: 37, column: 9, scope: !424)
!511 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !510)
!512 = !DILocation(line: 0, scope: !503, inlinedAt: !513)
!513 = distinct !DILocation(line: 37, column: 52, scope: !424)
!514 = !DILocation(line: 109, column: 15, scope: !503, inlinedAt: !513)
!515 = !DILocation(line: 0, scope: !262, inlinedAt: !516)
!516 = distinct !DILocation(line: 35, column: 5, scope: !424)
!517 = !DILocation(line: 167, column: 14, scope: !270, inlinedAt: !516)
!518 = !DILocation(line: 0, scope: !270, inlinedAt: !516)
!519 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !516)
!520 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !516)
!521 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !516)
!522 = !DILocation(line: 0, scope: !273, inlinedAt: !523)
!523 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !516)
!524 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !523)
!525 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !523)
!526 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !523)
!527 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !523)
!528 = !DILocation(line: 172, column: 30, scope: !283, inlinedAt: !516)
!529 = !DILocation(line: 172, column: 44, scope: !283, inlinedAt: !516)
!530 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !516)
!531 = !DILocation(line: 180, column: 13, scope: !287, inlinedAt: !516)
!532 = !{i8 0, i8 2}
!533 = !DILocation(line: 180, column: 21, scope: !287, inlinedAt: !516)
!534 = !DILocation(line: 180, column: 24, scope: !287, inlinedAt: !516)
!535 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !516)
!536 = !DILocation(line: 182, column: 9, scope: !286, inlinedAt: !516)
!537 = !DILocation(line: 39, column: 1, scope: !424)
!538 = !DILocation(line: 38, column: 5, scope: !424)
!539 = !DISubprogram(name: "memcpy", scope: !6, file: !6, line: 94, type: !540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !542)
!540 = !DISubroutineType(types: !541)
!541 = !{!77, !77, !124, !112}
!542 = !{}
!543 = distinct !DISubprogram(name: "halide_error_bad_dimensions", scope: !200, file: !200, line: 41, type: !544, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !546)
!544 = !DISubroutineType(types: !545)
!545 = !{!15, !77, !92, !102, !102}
!546 = !{!547, !548, !549, !550}
!547 = !DILocalVariable(name: "user_context", arg: 1, scope: !543, file: !200, line: 41, type: !77)
!548 = !DILocalVariable(name: "func_name", arg: 2, scope: !543, file: !200, line: 41, type: !92)
!549 = !DILocalVariable(name: "dimensions_given", arg: 3, scope: !543, file: !200, line: 42, type: !102)
!550 = !DILocalVariable(name: "correct_dimensions", arg: 4, scope: !543, file: !200, line: 42, type: !102)
!551 = !DILocation(line: 0, scope: !543)
!552 = !DILocation(line: 0, scope: !209, inlinedAt: !553)
!553 = distinct !DILocation(line: 43, column: 5, scope: !543)
!554 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !553)
!555 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !553)
!556 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !553)
!557 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !553)
!558 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !553)
!559 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !553)
!560 = !DILocation(line: 0, scope: !222, inlinedAt: !553)
!561 = !DILocation(line: 0, scope: !233, inlinedAt: !562)
!562 = distinct !DILocation(line: 44, column: 9, scope: !543)
!563 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !562)
!564 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !562)
!565 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !562)
!566 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !562)
!567 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !562)
!568 = !DILocation(line: 0, scope: !240, inlinedAt: !562)
!569 = !DILocation(line: 0, scope: !233, inlinedAt: !570)
!570 = distinct !DILocation(line: 44, column: 22, scope: !543)
!571 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !570)
!572 = !DILocation(line: 0, scope: !254, inlinedAt: !573)
!573 = distinct !DILocation(line: 44, column: 58, scope: !543)
!574 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !573)
!575 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !573)
!576 = !DILocation(line: 0, scope: !233, inlinedAt: !577)
!577 = distinct !DILocation(line: 45, column: 9, scope: !543)
!578 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !577)
!579 = !DILocation(line: 0, scope: !254, inlinedAt: !580)
!580 = distinct !DILocation(line: 45, column: 57, scope: !543)
!581 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !580)
!582 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !580)
!583 = !DILocation(line: 0, scope: !233, inlinedAt: !584)
!584 = distinct !DILocation(line: 45, column: 77, scope: !543)
!585 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !584)
!586 = !DILocation(line: 0, scope: !262, inlinedAt: !587)
!587 = distinct !DILocation(line: 43, column: 5, scope: !543)
!588 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !587)
!589 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !587)
!590 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !587)
!591 = !DILocation(line: 0, scope: !273, inlinedAt: !592)
!592 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !587)
!593 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !592)
!594 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !592)
!595 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !592)
!596 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !592)
!597 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !587)
!598 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !587)
!599 = !DILocation(line: 46, column: 5, scope: !543)
!600 = distinct !DISubprogram(name: "halide_error_access_out_of_bounds", scope: !200, file: !200, line: 49, type: !601, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{!15, !77, !92, !15, !15, !15, !15, !15}
!603 = !{!604, !605, !606, !607, !608, !609, !610}
!604 = !DILocalVariable(name: "user_context", arg: 1, scope: !600, file: !200, line: 49, type: !77)
!605 = !DILocalVariable(name: "func_name", arg: 2, scope: !600, file: !200, line: 49, type: !92)
!606 = !DILocalVariable(name: "dimension", arg: 3, scope: !600, file: !200, line: 50, type: !15)
!607 = !DILocalVariable(name: "min_touched", arg: 4, scope: !600, file: !200, line: 50, type: !15)
!608 = !DILocalVariable(name: "max_touched", arg: 5, scope: !600, file: !200, line: 50, type: !15)
!609 = !DILocalVariable(name: "min_valid", arg: 6, scope: !600, file: !200, line: 51, type: !15)
!610 = !DILocalVariable(name: "max_valid", arg: 7, scope: !600, file: !200, line: 51, type: !15)
!611 = !DILocation(line: 0, scope: !600)
!612 = !DILocation(line: 52, column: 21, scope: !613)
!613 = distinct !DILexicalBlock(scope: !600, file: !200, line: 52, column: 9)
!614 = !DILocation(line: 52, column: 9, scope: !600)
!615 = !DILocation(line: 0, scope: !209, inlinedAt: !616)
!616 = distinct !DILocation(line: 53, column: 9, scope: !617)
!617 = distinct !DILexicalBlock(scope: !613, file: !200, line: 52, column: 34)
!618 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !616)
!619 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !616)
!620 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !616)
!621 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !616)
!622 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !616)
!623 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !616)
!624 = !DILocation(line: 0, scope: !222, inlinedAt: !616)
!625 = !DILocation(line: 0, scope: !233, inlinedAt: !626)
!626 = distinct !DILocation(line: 54, column: 13, scope: !617)
!627 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !626)
!628 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !626)
!629 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !626)
!630 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !626)
!631 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !626)
!632 = !DILocation(line: 0, scope: !240, inlinedAt: !626)
!633 = !DILocation(line: 0, scope: !233, inlinedAt: !634)
!634 = distinct !DILocation(line: 54, column: 26, scope: !617)
!635 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !634)
!636 = !DILocation(line: 0, scope: !254, inlinedAt: !637)
!637 = distinct !DILocation(line: 54, column: 48, scope: !617)
!638 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !637)
!639 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !637)
!640 = !DILocation(line: 0, scope: !233, inlinedAt: !641)
!641 = distinct !DILocation(line: 55, column: 13, scope: !617)
!642 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !641)
!643 = !DILocation(line: 0, scope: !254, inlinedAt: !644)
!644 = distinct !DILocation(line: 55, column: 46, scope: !617)
!645 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !644)
!646 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !644)
!647 = !DILocation(line: 0, scope: !233, inlinedAt: !648)
!648 = distinct !DILocation(line: 56, column: 13, scope: !617)
!649 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !648)
!650 = !DILocation(line: 0, scope: !254, inlinedAt: !651)
!651 = distinct !DILocation(line: 56, column: 34, scope: !617)
!652 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !651)
!653 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !651)
!654 = !DILocation(line: 0, scope: !262, inlinedAt: !655)
!655 = distinct !DILocation(line: 53, column: 9, scope: !617)
!656 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !655)
!657 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !655)
!658 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !655)
!659 = !DILocation(line: 0, scope: !273, inlinedAt: !660)
!660 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !655)
!661 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !660)
!662 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !660)
!663 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !660)
!664 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !660)
!665 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !655)
!666 = !DILocation(line: 57, column: 28, scope: !667)
!667 = distinct !DILexicalBlock(scope: !613, file: !200, line: 57, column: 16)
!668 = !DILocation(line: 57, column: 16, scope: !613)
!669 = !DILocation(line: 0, scope: !209, inlinedAt: !670)
!670 = distinct !DILocation(line: 58, column: 9, scope: !671)
!671 = distinct !DILexicalBlock(scope: !667, file: !200, line: 57, column: 41)
!672 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !670)
!673 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !670)
!674 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !670)
!675 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !670)
!676 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !670)
!677 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !670)
!678 = !DILocation(line: 0, scope: !222, inlinedAt: !670)
!679 = !DILocation(line: 0, scope: !233, inlinedAt: !680)
!680 = distinct !DILocation(line: 59, column: 13, scope: !671)
!681 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !680)
!682 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !680)
!683 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !680)
!684 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !680)
!685 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !680)
!686 = !DILocation(line: 0, scope: !240, inlinedAt: !680)
!687 = !DILocation(line: 0, scope: !233, inlinedAt: !688)
!688 = distinct !DILocation(line: 59, column: 26, scope: !671)
!689 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !688)
!690 = !DILocation(line: 0, scope: !254, inlinedAt: !691)
!691 = distinct !DILocation(line: 59, column: 48, scope: !671)
!692 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !691)
!693 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !691)
!694 = !DILocation(line: 0, scope: !233, inlinedAt: !695)
!695 = distinct !DILocation(line: 60, column: 13, scope: !671)
!696 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !695)
!697 = !DILocation(line: 0, scope: !254, inlinedAt: !698)
!698 = distinct !DILocation(line: 60, column: 46, scope: !671)
!699 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !698)
!700 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !698)
!701 = !DILocation(line: 0, scope: !233, inlinedAt: !702)
!702 = distinct !DILocation(line: 61, column: 13, scope: !671)
!703 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !702)
!704 = !DILocation(line: 0, scope: !254, inlinedAt: !705)
!705 = distinct !DILocation(line: 61, column: 34, scope: !671)
!706 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !705)
!707 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !705)
!708 = !DILocation(line: 0, scope: !262, inlinedAt: !709)
!709 = distinct !DILocation(line: 58, column: 9, scope: !671)
!710 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !709)
!711 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !709)
!712 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !709)
!713 = !DILocation(line: 0, scope: !273, inlinedAt: !714)
!714 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !709)
!715 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !714)
!716 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !714)
!717 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !714)
!718 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !714)
!719 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !709)
!720 = !DILocation(line: 0, scope: !613)
!721 = !DILocation(line: 63, column: 5, scope: !600)
!722 = distinct !DISubprogram(name: "halide_error_buffer_allocation_too_large", scope: !200, file: !200, line: 66, type: !723, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{!15, !77, !92, !106, !106}
!725 = !{!726, !727, !728, !729}
!726 = !DILocalVariable(name: "user_context", arg: 1, scope: !722, file: !200, line: 66, type: !77)
!727 = !DILocalVariable(name: "buffer_name", arg: 2, scope: !722, file: !200, line: 66, type: !92)
!728 = !DILocalVariable(name: "allocation_size", arg: 3, scope: !722, file: !200, line: 66, type: !106)
!729 = !DILocalVariable(name: "max_size", arg: 4, scope: !722, file: !200, line: 66, type: !106)
!730 = !DILocation(line: 0, scope: !722)
!731 = !DILocation(line: 0, scope: !209, inlinedAt: !732)
!732 = distinct !DILocation(line: 67, column: 5, scope: !722)
!733 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !732)
!734 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !732)
!735 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !732)
!736 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !732)
!737 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !732)
!738 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !732)
!739 = !DILocation(line: 0, scope: !222, inlinedAt: !732)
!740 = !DILocation(line: 0, scope: !233, inlinedAt: !741)
!741 = distinct !DILocation(line: 68, column: 9, scope: !722)
!742 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !741)
!743 = !DILocation(line: 0, scope: !233, inlinedAt: !744)
!744 = distinct !DILocation(line: 68, column: 43, scope: !722)
!745 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !744)
!746 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !744)
!747 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !744)
!748 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !744)
!749 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !744)
!750 = !DILocation(line: 0, scope: !240, inlinedAt: !744)
!751 = !DILocation(line: 0, scope: !233, inlinedAt: !752)
!752 = distinct !DILocation(line: 69, column: 9, scope: !722)
!753 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !752)
!754 = !DILocalVariable(name: "this", arg: 1, scope: !755, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!755 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !69, file: !64, line: 77, type: !104, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !103, retainedNodes: !756)
!756 = !{!754, !757}
!757 = !DILocalVariable(name: "arg", arg: 2, scope: !755, file: !64, line: 77, type: !106)
!758 = !DILocation(line: 0, scope: !755, inlinedAt: !759)
!759 = distinct !DILocation(line: 69, column: 19, scope: !722)
!760 = !DILocation(line: 78, column: 15, scope: !755, inlinedAt: !759)
!761 = !DILocation(line: 0, scope: !233, inlinedAt: !762)
!762 = distinct !DILocation(line: 70, column: 9, scope: !722)
!763 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !762)
!764 = !DILocation(line: 0, scope: !755, inlinedAt: !765)
!765 = distinct !DILocation(line: 70, column: 51, scope: !722)
!766 = !DILocation(line: 78, column: 15, scope: !755, inlinedAt: !765)
!767 = !DILocation(line: 0, scope: !262, inlinedAt: !768)
!768 = distinct !DILocation(line: 67, column: 5, scope: !722)
!769 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !768)
!770 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !768)
!771 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !768)
!772 = !DILocation(line: 0, scope: !273, inlinedAt: !773)
!773 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !768)
!774 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !773)
!775 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !773)
!776 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !773)
!777 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !773)
!778 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !768)
!779 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !768)
!780 = !DILocation(line: 71, column: 5, scope: !722)
!781 = distinct !DISubprogram(name: "halide_error_buffer_extents_negative", scope: !200, file: !200, line: 74, type: !782, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !784)
!782 = !DISubroutineType(types: !783)
!783 = !{!15, !77, !92, !15, !15}
!784 = !{!785, !786, !787, !788}
!785 = !DILocalVariable(name: "user_context", arg: 1, scope: !781, file: !200, line: 74, type: !77)
!786 = !DILocalVariable(name: "buffer_name", arg: 2, scope: !781, file: !200, line: 74, type: !92)
!787 = !DILocalVariable(name: "dimension", arg: 3, scope: !781, file: !200, line: 74, type: !15)
!788 = !DILocalVariable(name: "extent", arg: 4, scope: !781, file: !200, line: 74, type: !15)
!789 = !DILocation(line: 0, scope: !781)
!790 = !DILocation(line: 0, scope: !209, inlinedAt: !791)
!791 = distinct !DILocation(line: 75, column: 5, scope: !781)
!792 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !791)
!793 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !791)
!794 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !791)
!795 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !791)
!796 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !791)
!797 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !791)
!798 = !DILocation(line: 0, scope: !222, inlinedAt: !791)
!799 = !DILocation(line: 0, scope: !233, inlinedAt: !800)
!800 = distinct !DILocation(line: 76, column: 9, scope: !781)
!801 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !800)
!802 = !DILocation(line: 0, scope: !233, inlinedAt: !803)
!803 = distinct !DILocation(line: 76, column: 38, scope: !781)
!804 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !803)
!805 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !803)
!806 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !803)
!807 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !803)
!808 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !803)
!809 = !DILocation(line: 0, scope: !240, inlinedAt: !803)
!810 = !DILocation(line: 0, scope: !233, inlinedAt: !811)
!811 = distinct !DILocation(line: 77, column: 9, scope: !781)
!812 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !811)
!813 = !DILocation(line: 0, scope: !254, inlinedAt: !814)
!814 = distinct !DILocation(line: 77, column: 26, scope: !781)
!815 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !814)
!816 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !814)
!817 = !DILocation(line: 0, scope: !233, inlinedAt: !818)
!818 = distinct !DILocation(line: 78, column: 9, scope: !781)
!819 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !818)
!820 = !DILocation(line: 0, scope: !254, inlinedAt: !821)
!821 = distinct !DILocation(line: 78, column: 29, scope: !781)
!822 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !821)
!823 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !821)
!824 = !DILocation(line: 0, scope: !233, inlinedAt: !825)
!825 = distinct !DILocation(line: 78, column: 39, scope: !781)
!826 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !825)
!827 = !DILocation(line: 0, scope: !262, inlinedAt: !828)
!828 = distinct !DILocation(line: 75, column: 5, scope: !781)
!829 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !828)
!830 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !828)
!831 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !828)
!832 = !DILocation(line: 0, scope: !273, inlinedAt: !833)
!833 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !828)
!834 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !833)
!835 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !833)
!836 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !833)
!837 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !833)
!838 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !828)
!839 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !828)
!840 = !DILocation(line: 79, column: 5, scope: !781)
!841 = distinct !DISubprogram(name: "halide_error_buffer_extents_too_large", scope: !200, file: !200, line: 82, type: !842, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{!15, !77, !92, !97, !97}
!844 = !{!845, !846, !847, !848}
!845 = !DILocalVariable(name: "user_context", arg: 1, scope: !841, file: !200, line: 82, type: !77)
!846 = !DILocalVariable(name: "buffer_name", arg: 2, scope: !841, file: !200, line: 82, type: !92)
!847 = !DILocalVariable(name: "actual_size", arg: 3, scope: !841, file: !200, line: 82, type: !97)
!848 = !DILocalVariable(name: "max_size", arg: 4, scope: !841, file: !200, line: 82, type: !97)
!849 = !DILocation(line: 0, scope: !841)
!850 = !DILocation(line: 0, scope: !209, inlinedAt: !851)
!851 = distinct !DILocation(line: 83, column: 5, scope: !841)
!852 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !851)
!853 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !851)
!854 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !851)
!855 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !851)
!856 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !851)
!857 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !851)
!858 = !DILocation(line: 0, scope: !222, inlinedAt: !851)
!859 = !DILocation(line: 0, scope: !233, inlinedAt: !860)
!860 = distinct !DILocation(line: 84, column: 9, scope: !841)
!861 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !860)
!862 = !DILocation(line: 0, scope: !233, inlinedAt: !863)
!863 = distinct !DILocation(line: 84, column: 45, scope: !841)
!864 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !863)
!865 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !863)
!866 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !863)
!867 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !863)
!868 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !863)
!869 = !DILocation(line: 0, scope: !240, inlinedAt: !863)
!870 = !DILocation(line: 0, scope: !233, inlinedAt: !871)
!871 = distinct !DILocation(line: 85, column: 9, scope: !841)
!872 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !871)
!873 = !DILocalVariable(name: "this", arg: 1, scope: !874, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!874 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !69, file: !64, line: 67, type: !95, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !94, retainedNodes: !875)
!875 = !{!873, !876}
!876 = !DILocalVariable(name: "arg", arg: 2, scope: !874, file: !64, line: 67, type: !97)
!877 = !DILocation(line: 0, scope: !874, inlinedAt: !878)
!878 = distinct !DILocation(line: 85, column: 19, scope: !841)
!879 = !DILocation(line: 68, column: 15, scope: !874, inlinedAt: !878)
!880 = !DILocation(line: 0, scope: !233, inlinedAt: !881)
!881 = distinct !DILocation(line: 86, column: 9, scope: !841)
!882 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !881)
!883 = !DILocation(line: 0, scope: !874, inlinedAt: !884)
!884 = distinct !DILocation(line: 86, column: 51, scope: !841)
!885 = !DILocation(line: 68, column: 15, scope: !874, inlinedAt: !884)
!886 = !DILocation(line: 0, scope: !262, inlinedAt: !887)
!887 = distinct !DILocation(line: 83, column: 5, scope: !841)
!888 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !887)
!889 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !887)
!890 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !887)
!891 = !DILocation(line: 0, scope: !273, inlinedAt: !892)
!892 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !887)
!893 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !892)
!894 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !892)
!895 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !892)
!896 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !892)
!897 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !887)
!898 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !887)
!899 = !DILocation(line: 87, column: 5, scope: !841)
!900 = distinct !DISubprogram(name: "halide_error_constraints_make_required_region_smaller", scope: !200, file: !200, line: 90, type: !601, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !901)
!901 = !{!902, !903, !904, !905, !906, !907, !908, !909, !910}
!902 = !DILocalVariable(name: "user_context", arg: 1, scope: !900, file: !200, line: 90, type: !77)
!903 = !DILocalVariable(name: "buffer_name", arg: 2, scope: !900, file: !200, line: 90, type: !92)
!904 = !DILocalVariable(name: "dimension", arg: 3, scope: !900, file: !200, line: 91, type: !15)
!905 = !DILocalVariable(name: "constrained_min", arg: 4, scope: !900, file: !200, line: 92, type: !15)
!906 = !DILocalVariable(name: "constrained_extent", arg: 5, scope: !900, file: !200, line: 92, type: !15)
!907 = !DILocalVariable(name: "required_min", arg: 6, scope: !900, file: !200, line: 93, type: !15)
!908 = !DILocalVariable(name: "required_extent", arg: 7, scope: !900, file: !200, line: 93, type: !15)
!909 = !DILocalVariable(name: "required_max", scope: !900, file: !200, line: 94, type: !15)
!910 = !DILocalVariable(name: "constrained_max", scope: !900, file: !200, line: 95, type: !15)
!911 = !DILocation(line: 0, scope: !900)
!912 = !DILocation(line: 94, column: 37, scope: !900)
!913 = !DILocation(line: 94, column: 55, scope: !900)
!914 = !DILocation(line: 95, column: 43, scope: !900)
!915 = !DILocation(line: 95, column: 64, scope: !900)
!916 = !DILocation(line: 0, scope: !209, inlinedAt: !917)
!917 = distinct !DILocation(line: 96, column: 5, scope: !900)
!918 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !917)
!919 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !917)
!920 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !917)
!921 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !917)
!922 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !917)
!923 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !917)
!924 = !DILocation(line: 0, scope: !222, inlinedAt: !917)
!925 = !DILocation(line: 0, scope: !233, inlinedAt: !926)
!926 = distinct !DILocation(line: 97, column: 9, scope: !900)
!927 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !926)
!928 = !DILocation(line: 0, scope: !233, inlinedAt: !929)
!929 = distinct !DILocation(line: 97, column: 43, scope: !900)
!930 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !929)
!931 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !929)
!932 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !929)
!933 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !929)
!934 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !929)
!935 = !DILocation(line: 0, scope: !240, inlinedAt: !929)
!936 = !DILocation(line: 0, scope: !233, inlinedAt: !937)
!937 = distinct !DILocation(line: 98, column: 9, scope: !900)
!938 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !937)
!939 = !DILocation(line: 0, scope: !254, inlinedAt: !940)
!940 = distinct !DILocation(line: 98, column: 68, scope: !900)
!941 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !940)
!942 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !940)
!943 = !DILocation(line: 0, scope: !233, inlinedAt: !944)
!944 = distinct !DILocation(line: 98, column: 81, scope: !900)
!945 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !944)
!946 = !DILocation(line: 0, scope: !233, inlinedAt: !947)
!947 = distinct !DILocation(line: 99, column: 9, scope: !900)
!948 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !947)
!949 = !DILocation(line: 0, scope: !254, inlinedAt: !950)
!950 = distinct !DILocation(line: 99, column: 30, scope: !900)
!951 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !950)
!952 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !950)
!953 = !DILocation(line: 0, scope: !233, inlinedAt: !954)
!954 = distinct !DILocation(line: 99, column: 46, scope: !900)
!955 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !954)
!956 = !DILocation(line: 0, scope: !254, inlinedAt: !957)
!957 = distinct !DILocation(line: 99, column: 56, scope: !900)
!958 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !957)
!959 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !957)
!960 = !DILocation(line: 0, scope: !233, inlinedAt: !961)
!961 = distinct !DILocation(line: 99, column: 72, scope: !900)
!962 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !961)
!963 = !DILocation(line: 0, scope: !233, inlinedAt: !964)
!964 = distinct !DILocation(line: 100, column: 9, scope: !900)
!965 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !964)
!966 = !DILocation(line: 0, scope: !254, inlinedAt: !967)
!967 = distinct !DILocation(line: 100, column: 33, scope: !900)
!968 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !967)
!969 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !967)
!970 = !DILocation(line: 0, scope: !233, inlinedAt: !971)
!971 = distinct !DILocation(line: 100, column: 52, scope: !900)
!972 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !971)
!973 = !DILocation(line: 0, scope: !254, inlinedAt: !974)
!974 = distinct !DILocation(line: 100, column: 62, scope: !900)
!975 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !974)
!976 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !974)
!977 = !DILocation(line: 0, scope: !233, inlinedAt: !978)
!978 = distinct !DILocation(line: 100, column: 81, scope: !900)
!979 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !978)
!980 = !DILocation(line: 0, scope: !262, inlinedAt: !981)
!981 = distinct !DILocation(line: 96, column: 5, scope: !900)
!982 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !981)
!983 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !981)
!984 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !981)
!985 = !DILocation(line: 0, scope: !273, inlinedAt: !986)
!986 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !981)
!987 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !986)
!988 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !986)
!989 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !986)
!990 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !986)
!991 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !981)
!992 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !981)
!993 = !DILocation(line: 101, column: 5, scope: !900)
!994 = distinct !DISubprogram(name: "halide_error_constraint_violated", scope: !200, file: !200, line: 104, type: !995, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !997)
!995 = !DISubroutineType(types: !996)
!996 = !{!15, !77, !92, !15, !92, !15}
!997 = !{!998, !999, !1000, !1001, !1002}
!998 = !DILocalVariable(name: "user_context", arg: 1, scope: !994, file: !200, line: 104, type: !77)
!999 = !DILocalVariable(name: "var", arg: 2, scope: !994, file: !200, line: 104, type: !92)
!1000 = !DILocalVariable(name: "val", arg: 3, scope: !994, file: !200, line: 104, type: !15)
!1001 = !DILocalVariable(name: "constrained_var", arg: 4, scope: !994, file: !200, line: 105, type: !92)
!1002 = !DILocalVariable(name: "constrained_val", arg: 5, scope: !994, file: !200, line: 105, type: !15)
!1003 = !DILocation(line: 0, scope: !994)
!1004 = !DILocation(line: 0, scope: !209, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 106, column: 5, scope: !994)
!1006 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1005)
!1007 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1005)
!1008 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1005)
!1009 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1005)
!1010 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1005)
!1011 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1005)
!1012 = !DILocation(line: 0, scope: !222, inlinedAt: !1005)
!1013 = !DILocation(line: 0, scope: !233, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 107, column: 9, scope: !994)
!1015 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1014)
!1016 = !DILocation(line: 0, scope: !233, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 107, column: 36, scope: !994)
!1018 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1017)
!1019 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1017)
!1020 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1017)
!1021 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1017)
!1022 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1017)
!1023 = !DILocation(line: 0, scope: !240, inlinedAt: !1017)
!1024 = !DILocation(line: 0, scope: !233, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 107, column: 43, scope: !994)
!1026 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1025)
!1027 = !DILocation(line: 0, scope: !254, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 107, column: 51, scope: !994)
!1029 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1028)
!1030 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1028)
!1031 = !DILocation(line: 0, scope: !233, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 108, column: 9, scope: !994)
!1033 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1032)
!1034 = !DILocation(line: 0, scope: !233, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 108, column: 20, scope: !994)
!1036 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1035)
!1037 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1035)
!1038 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1035)
!1039 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1035)
!1040 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1035)
!1041 = !DILocation(line: 0, scope: !240, inlinedAt: !1035)
!1042 = !DILocation(line: 0, scope: !233, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 108, column: 39, scope: !994)
!1044 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1043)
!1045 = !DILocation(line: 0, scope: !254, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 108, column: 47, scope: !994)
!1047 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1046)
!1048 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1046)
!1049 = !DILocation(line: 0, scope: !233, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 108, column: 66, scope: !994)
!1051 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1050)
!1052 = !DILocation(line: 0, scope: !262, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 106, column: 5, scope: !994)
!1054 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1053)
!1055 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1053)
!1056 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1053)
!1057 = !DILocation(line: 0, scope: !273, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1053)
!1059 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1058)
!1060 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1058)
!1061 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1058)
!1062 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1058)
!1063 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1053)
!1064 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !1053)
!1065 = !DILocation(line: 109, column: 5, scope: !994)
!1066 = distinct !DISubprogram(name: "halide_error_param_too_small_i64", scope: !200, file: !200, line: 112, type: !842, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1067)
!1067 = !{!1068, !1069, !1070, !1071}
!1068 = !DILocalVariable(name: "user_context", arg: 1, scope: !1066, file: !200, line: 112, type: !77)
!1069 = !DILocalVariable(name: "param_name", arg: 2, scope: !1066, file: !200, line: 112, type: !92)
!1070 = !DILocalVariable(name: "val", arg: 3, scope: !1066, file: !200, line: 113, type: !97)
!1071 = !DILocalVariable(name: "min_val", arg: 4, scope: !1066, file: !200, line: 113, type: !97)
!1072 = !DILocation(line: 0, scope: !1066)
!1073 = !DILocation(line: 0, scope: !209, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 114, column: 5, scope: !1066)
!1075 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1074)
!1076 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1074)
!1077 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1074)
!1078 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1074)
!1079 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1074)
!1080 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1074)
!1081 = !DILocation(line: 0, scope: !222, inlinedAt: !1074)
!1082 = !DILocation(line: 0, scope: !233, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 115, column: 9, scope: !1066)
!1084 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1083)
!1085 = !DILocation(line: 0, scope: !233, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 115, column: 25, scope: !1066)
!1087 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1086)
!1088 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1086)
!1089 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1086)
!1090 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1086)
!1091 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1086)
!1092 = !DILocation(line: 0, scope: !240, inlinedAt: !1086)
!1093 = !DILocation(line: 0, scope: !233, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 116, column: 9, scope: !1066)
!1095 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1094)
!1096 = !DILocation(line: 0, scope: !874, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 116, column: 19, scope: !1066)
!1098 = !DILocation(line: 68, column: 15, scope: !874, inlinedAt: !1097)
!1099 = !DILocation(line: 0, scope: !233, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 117, column: 9, scope: !1066)
!1101 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1100)
!1102 = !DILocation(line: 0, scope: !874, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 117, column: 37, scope: !1066)
!1104 = !DILocation(line: 68, column: 15, scope: !874, inlinedAt: !1103)
!1105 = !DILocation(line: 0, scope: !262, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 114, column: 5, scope: !1066)
!1107 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1106)
!1108 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1106)
!1109 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1106)
!1110 = !DILocation(line: 0, scope: !273, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1106)
!1112 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1111)
!1113 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1111)
!1114 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1111)
!1115 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1111)
!1116 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1106)
!1117 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !1106)
!1118 = !DILocation(line: 118, column: 5, scope: !1066)
!1119 = distinct !DISubprogram(name: "halide_error_param_too_small_u64", scope: !200, file: !200, line: 121, type: !723, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1120)
!1120 = !{!1121, !1122, !1123, !1124}
!1121 = !DILocalVariable(name: "user_context", arg: 1, scope: !1119, file: !200, line: 121, type: !77)
!1122 = !DILocalVariable(name: "param_name", arg: 2, scope: !1119, file: !200, line: 121, type: !92)
!1123 = !DILocalVariable(name: "val", arg: 3, scope: !1119, file: !200, line: 122, type: !106)
!1124 = !DILocalVariable(name: "min_val", arg: 4, scope: !1119, file: !200, line: 122, type: !106)
!1125 = !DILocation(line: 0, scope: !1119)
!1126 = !DILocation(line: 0, scope: !209, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 123, column: 5, scope: !1119)
!1128 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1127)
!1129 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1127)
!1130 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1127)
!1131 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1127)
!1132 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1127)
!1133 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1127)
!1134 = !DILocation(line: 0, scope: !222, inlinedAt: !1127)
!1135 = !DILocation(line: 0, scope: !233, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 124, column: 9, scope: !1119)
!1137 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1136)
!1138 = !DILocation(line: 0, scope: !233, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 124, column: 25, scope: !1119)
!1140 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1139)
!1141 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1139)
!1142 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1139)
!1143 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1139)
!1144 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1139)
!1145 = !DILocation(line: 0, scope: !240, inlinedAt: !1139)
!1146 = !DILocation(line: 0, scope: !233, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 125, column: 9, scope: !1119)
!1148 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1147)
!1149 = !DILocation(line: 0, scope: !755, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 125, column: 19, scope: !1119)
!1151 = !DILocation(line: 78, column: 15, scope: !755, inlinedAt: !1150)
!1152 = !DILocation(line: 0, scope: !233, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 126, column: 9, scope: !1119)
!1154 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1153)
!1155 = !DILocation(line: 0, scope: !755, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 126, column: 37, scope: !1119)
!1157 = !DILocation(line: 78, column: 15, scope: !755, inlinedAt: !1156)
!1158 = !DILocation(line: 0, scope: !262, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 123, column: 5, scope: !1119)
!1160 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1159)
!1161 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1159)
!1162 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1159)
!1163 = !DILocation(line: 0, scope: !273, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1159)
!1165 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1164)
!1166 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1164)
!1167 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1164)
!1168 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1164)
!1169 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1159)
!1170 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !1159)
!1171 = !DILocation(line: 127, column: 5, scope: !1119)
!1172 = distinct !DISubprogram(name: "halide_error_param_too_small_f64", scope: !200, file: !200, line: 130, type: !1173, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1175)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!15, !77, !92, !116, !116}
!1175 = !{!1176, !1177, !1178, !1179}
!1176 = !DILocalVariable(name: "user_context", arg: 1, scope: !1172, file: !200, line: 130, type: !77)
!1177 = !DILocalVariable(name: "param_name", arg: 2, scope: !1172, file: !200, line: 130, type: !92)
!1178 = !DILocalVariable(name: "val", arg: 3, scope: !1172, file: !200, line: 131, type: !116)
!1179 = !DILocalVariable(name: "min_val", arg: 4, scope: !1172, file: !200, line: 131, type: !116)
!1180 = !DILocation(line: 0, scope: !1172)
!1181 = !DILocation(line: 0, scope: !209, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 132, column: 5, scope: !1172)
!1183 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1182)
!1184 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1182)
!1185 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1182)
!1186 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1182)
!1187 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1182)
!1188 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1182)
!1189 = !DILocation(line: 0, scope: !222, inlinedAt: !1182)
!1190 = !DILocation(line: 0, scope: !233, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 133, column: 9, scope: !1172)
!1192 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1191)
!1193 = !DILocation(line: 0, scope: !233, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 133, column: 25, scope: !1172)
!1195 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1194)
!1196 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1194)
!1197 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1194)
!1198 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1194)
!1199 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1194)
!1200 = !DILocation(line: 0, scope: !240, inlinedAt: !1194)
!1201 = !DILocation(line: 0, scope: !233, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 134, column: 9, scope: !1172)
!1203 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1202)
!1204 = !DILocalVariable(name: "this", arg: 1, scope: !1205, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!1205 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !69, file: !64, line: 87, type: !114, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !113, retainedNodes: !1206)
!1206 = !{!1204, !1207}
!1207 = !DILocalVariable(name: "arg", arg: 2, scope: !1205, file: !64, line: 87, type: !116)
!1208 = !DILocation(line: 0, scope: !1205, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 134, column: 19, scope: !1172)
!1210 = !DILocation(line: 88, column: 15, scope: !1205, inlinedAt: !1209)
!1211 = !DILocation(line: 0, scope: !233, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 135, column: 9, scope: !1172)
!1213 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1212)
!1214 = !DILocation(line: 0, scope: !1205, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 135, column: 37, scope: !1172)
!1216 = !DILocation(line: 88, column: 15, scope: !1205, inlinedAt: !1215)
!1217 = !DILocation(line: 0, scope: !262, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 132, column: 5, scope: !1172)
!1219 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1218)
!1220 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1218)
!1221 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1218)
!1222 = !DILocation(line: 0, scope: !273, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1218)
!1224 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1223)
!1225 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1223)
!1226 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1223)
!1227 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1223)
!1228 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1218)
!1229 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !1218)
!1230 = !DILocation(line: 136, column: 5, scope: !1172)
!1231 = distinct !DISubprogram(name: "halide_error_param_too_large_i64", scope: !200, file: !200, line: 139, type: !842, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1232)
!1232 = !{!1233, !1234, !1235, !1236}
!1233 = !DILocalVariable(name: "user_context", arg: 1, scope: !1231, file: !200, line: 139, type: !77)
!1234 = !DILocalVariable(name: "param_name", arg: 2, scope: !1231, file: !200, line: 139, type: !92)
!1235 = !DILocalVariable(name: "val", arg: 3, scope: !1231, file: !200, line: 140, type: !97)
!1236 = !DILocalVariable(name: "max_val", arg: 4, scope: !1231, file: !200, line: 140, type: !97)
!1237 = !DILocation(line: 0, scope: !1231)
!1238 = !DILocation(line: 0, scope: !209, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 141, column: 5, scope: !1231)
!1240 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1239)
!1241 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1239)
!1242 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1239)
!1243 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1239)
!1244 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1239)
!1245 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1239)
!1246 = !DILocation(line: 0, scope: !222, inlinedAt: !1239)
!1247 = !DILocation(line: 0, scope: !233, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 142, column: 9, scope: !1231)
!1249 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1248)
!1250 = !DILocation(line: 0, scope: !233, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 142, column: 25, scope: !1231)
!1252 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1251)
!1253 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1251)
!1254 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1251)
!1255 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1251)
!1256 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1251)
!1257 = !DILocation(line: 0, scope: !240, inlinedAt: !1251)
!1258 = !DILocation(line: 0, scope: !233, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 143, column: 9, scope: !1231)
!1260 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1259)
!1261 = !DILocation(line: 0, scope: !874, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 143, column: 19, scope: !1231)
!1263 = !DILocation(line: 68, column: 15, scope: !874, inlinedAt: !1262)
!1264 = !DILocation(line: 0, scope: !233, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 144, column: 9, scope: !1231)
!1266 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1265)
!1267 = !DILocation(line: 0, scope: !874, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 144, column: 36, scope: !1231)
!1269 = !DILocation(line: 68, column: 15, scope: !874, inlinedAt: !1268)
!1270 = !DILocation(line: 0, scope: !262, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 141, column: 5, scope: !1231)
!1272 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1271)
!1273 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1271)
!1274 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1271)
!1275 = !DILocation(line: 0, scope: !273, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1271)
!1277 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1276)
!1278 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1276)
!1279 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1276)
!1280 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1276)
!1281 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1271)
!1282 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !1271)
!1283 = !DILocation(line: 145, column: 5, scope: !1231)
!1284 = distinct !DISubprogram(name: "halide_error_param_too_large_u64", scope: !200, file: !200, line: 148, type: !723, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1285)
!1285 = !{!1286, !1287, !1288, !1289}
!1286 = !DILocalVariable(name: "user_context", arg: 1, scope: !1284, file: !200, line: 148, type: !77)
!1287 = !DILocalVariable(name: "param_name", arg: 2, scope: !1284, file: !200, line: 148, type: !92)
!1288 = !DILocalVariable(name: "val", arg: 3, scope: !1284, file: !200, line: 149, type: !106)
!1289 = !DILocalVariable(name: "max_val", arg: 4, scope: !1284, file: !200, line: 149, type: !106)
!1290 = !DILocation(line: 0, scope: !1284)
!1291 = !DILocation(line: 0, scope: !209, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 150, column: 5, scope: !1284)
!1293 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1292)
!1294 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1292)
!1295 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1292)
!1296 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1292)
!1297 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1292)
!1298 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1292)
!1299 = !DILocation(line: 0, scope: !222, inlinedAt: !1292)
!1300 = !DILocation(line: 0, scope: !233, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 151, column: 9, scope: !1284)
!1302 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1301)
!1303 = !DILocation(line: 0, scope: !233, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 151, column: 25, scope: !1284)
!1305 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1304)
!1306 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1304)
!1307 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1304)
!1308 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1304)
!1309 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1304)
!1310 = !DILocation(line: 0, scope: !240, inlinedAt: !1304)
!1311 = !DILocation(line: 0, scope: !233, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 152, column: 9, scope: !1284)
!1313 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1312)
!1314 = !DILocation(line: 0, scope: !755, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 152, column: 19, scope: !1284)
!1316 = !DILocation(line: 78, column: 15, scope: !755, inlinedAt: !1315)
!1317 = !DILocation(line: 0, scope: !233, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 153, column: 9, scope: !1284)
!1319 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1318)
!1320 = !DILocation(line: 0, scope: !755, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 153, column: 36, scope: !1284)
!1322 = !DILocation(line: 78, column: 15, scope: !755, inlinedAt: !1321)
!1323 = !DILocation(line: 0, scope: !262, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 150, column: 5, scope: !1284)
!1325 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1324)
!1326 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1324)
!1327 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1324)
!1328 = !DILocation(line: 0, scope: !273, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1324)
!1330 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1329)
!1331 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1329)
!1332 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1329)
!1333 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1329)
!1334 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1324)
!1335 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !1324)
!1336 = !DILocation(line: 154, column: 5, scope: !1284)
!1337 = distinct !DISubprogram(name: "halide_error_param_too_large_f64", scope: !200, file: !200, line: 157, type: !1173, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1338)
!1338 = !{!1339, !1340, !1341, !1342}
!1339 = !DILocalVariable(name: "user_context", arg: 1, scope: !1337, file: !200, line: 157, type: !77)
!1340 = !DILocalVariable(name: "param_name", arg: 2, scope: !1337, file: !200, line: 157, type: !92)
!1341 = !DILocalVariable(name: "val", arg: 3, scope: !1337, file: !200, line: 158, type: !116)
!1342 = !DILocalVariable(name: "max_val", arg: 4, scope: !1337, file: !200, line: 158, type: !116)
!1343 = !DILocation(line: 0, scope: !1337)
!1344 = !DILocation(line: 0, scope: !209, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 159, column: 5, scope: !1337)
!1346 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1345)
!1347 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1345)
!1348 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1345)
!1349 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1345)
!1350 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1345)
!1351 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1345)
!1352 = !DILocation(line: 0, scope: !222, inlinedAt: !1345)
!1353 = !DILocation(line: 0, scope: !233, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 160, column: 9, scope: !1337)
!1355 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1354)
!1356 = !DILocation(line: 0, scope: !233, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 160, column: 25, scope: !1337)
!1358 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1357)
!1359 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1357)
!1360 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1357)
!1361 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1357)
!1362 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1357)
!1363 = !DILocation(line: 0, scope: !240, inlinedAt: !1357)
!1364 = !DILocation(line: 0, scope: !233, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 161, column: 9, scope: !1337)
!1366 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1365)
!1367 = !DILocation(line: 0, scope: !1205, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 161, column: 19, scope: !1337)
!1369 = !DILocation(line: 88, column: 15, scope: !1205, inlinedAt: !1368)
!1370 = !DILocation(line: 0, scope: !233, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 162, column: 9, scope: !1337)
!1372 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1371)
!1373 = !DILocation(line: 0, scope: !1205, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 162, column: 36, scope: !1337)
!1375 = !DILocation(line: 88, column: 15, scope: !1205, inlinedAt: !1374)
!1376 = !DILocation(line: 0, scope: !262, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 159, column: 5, scope: !1337)
!1378 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1377)
!1379 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1377)
!1380 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1377)
!1381 = !DILocation(line: 0, scope: !273, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1377)
!1383 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1382)
!1384 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1382)
!1385 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1382)
!1386 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1382)
!1387 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1377)
!1388 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !1377)
!1389 = !DILocation(line: 163, column: 5, scope: !1337)
!1390 = distinct !DISubprogram(name: "halide_error_out_of_memory", scope: !200, file: !200, line: 166, type: !1391, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!15, !77}
!1393 = !{!1394}
!1394 = !DILocalVariable(name: "user_context", arg: 1, scope: !1390, file: !200, line: 166, type: !77)
!1395 = !DILocation(line: 0, scope: !1390)
!1396 = !DILocation(line: 168, column: 5, scope: !1390)
!1397 = !DILocation(line: 169, column: 5, scope: !1390)
!1398 = !DISubprogram(name: "halide_error", scope: !4, file: !4, line: 111, type: !1399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !542)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{null, !77, !92}
!1401 = distinct !DISubprogram(name: "halide_error_buffer_argument_is_null", scope: !200, file: !200, line: 172, type: !1402, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1404)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!15, !77, !92}
!1404 = !{!1405, !1406}
!1405 = !DILocalVariable(name: "user_context", arg: 1, scope: !1401, file: !200, line: 172, type: !77)
!1406 = !DILocalVariable(name: "buffer_name", arg: 2, scope: !1401, file: !200, line: 172, type: !92)
!1407 = !DILocation(line: 0, scope: !1401)
!1408 = !DILocation(line: 0, scope: !209, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 173, column: 5, scope: !1401)
!1410 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1409)
!1411 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1409)
!1412 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1409)
!1413 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1409)
!1414 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1409)
!1415 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1409)
!1416 = !DILocation(line: 0, scope: !222, inlinedAt: !1409)
!1417 = !DILocation(line: 0, scope: !233, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 174, column: 9, scope: !1401)
!1419 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1418)
!1420 = !DILocation(line: 0, scope: !233, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 174, column: 31, scope: !1401)
!1422 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1421)
!1423 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1421)
!1424 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1421)
!1425 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1421)
!1426 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1421)
!1427 = !DILocation(line: 0, scope: !240, inlinedAt: !1421)
!1428 = !DILocation(line: 0, scope: !233, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 174, column: 46, scope: !1401)
!1430 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1429)
!1431 = !DILocation(line: 0, scope: !262, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 173, column: 5, scope: !1401)
!1433 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1432)
!1434 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1432)
!1435 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1432)
!1436 = !DILocation(line: 0, scope: !273, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1432)
!1438 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1437)
!1439 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1437)
!1440 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1437)
!1441 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1437)
!1442 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1432)
!1443 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !1432)
!1444 = !DILocation(line: 175, column: 5, scope: !1401)
!1445 = distinct !DISubprogram(name: "halide_error_debug_to_file_failed", scope: !200, file: !200, line: 178, type: !1446, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1448)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!15, !77, !92, !92, !15}
!1448 = !{!1449, !1450, !1451, !1452}
!1449 = !DILocalVariable(name: "user_context", arg: 1, scope: !1445, file: !200, line: 178, type: !77)
!1450 = !DILocalVariable(name: "func", arg: 2, scope: !1445, file: !200, line: 178, type: !92)
!1451 = !DILocalVariable(name: "filename", arg: 3, scope: !1445, file: !200, line: 179, type: !92)
!1452 = !DILocalVariable(name: "error_code", arg: 4, scope: !1445, file: !200, line: 179, type: !15)
!1453 = !DILocation(line: 0, scope: !1445)
!1454 = !DILocation(line: 0, scope: !209, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 180, column: 5, scope: !1445)
!1456 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1455)
!1457 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1455)
!1458 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1455)
!1459 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1455)
!1460 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1455)
!1461 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1455)
!1462 = !DILocation(line: 0, scope: !222, inlinedAt: !1455)
!1463 = !DILocation(line: 0, scope: !233, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 181, column: 9, scope: !1445)
!1465 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1464)
!1466 = !DILocation(line: 0, scope: !233, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 181, column: 39, scope: !1445)
!1468 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1467)
!1469 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1467)
!1470 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1467)
!1471 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1467)
!1472 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1467)
!1473 = !DILocation(line: 0, scope: !240, inlinedAt: !1467)
!1474 = !DILocation(line: 0, scope: !233, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 182, column: 9, scope: !1445)
!1476 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1475)
!1477 = !DILocation(line: 0, scope: !233, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 182, column: 24, scope: !1445)
!1479 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1478)
!1480 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1478)
!1481 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1478)
!1482 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1478)
!1483 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1478)
!1484 = !DILocation(line: 0, scope: !240, inlinedAt: !1478)
!1485 = !DILocation(line: 0, scope: !233, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 183, column: 9, scope: !1445)
!1487 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1486)
!1488 = !DILocation(line: 0, scope: !254, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 183, column: 27, scope: !1445)
!1490 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1489)
!1491 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1489)
!1492 = !DILocation(line: 0, scope: !262, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 180, column: 5, scope: !1445)
!1494 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1493)
!1495 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1493)
!1496 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1493)
!1497 = !DILocation(line: 0, scope: !273, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1493)
!1499 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1498)
!1500 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1498)
!1501 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1498)
!1502 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1498)
!1503 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1493)
!1504 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !1493)
!1505 = !DILocation(line: 184, column: 5, scope: !1445)
!1506 = distinct !DISubprogram(name: "halide_error_unaligned_host_ptr", scope: !200, file: !200, line: 187, type: !201, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1507)
!1507 = !{!1508, !1509, !1510}
!1508 = !DILocalVariable(name: "user_context", arg: 1, scope: !1506, file: !200, line: 187, type: !77)
!1509 = !DILocalVariable(name: "func", arg: 2, scope: !1506, file: !200, line: 187, type: !92)
!1510 = !DILocalVariable(name: "alignment", arg: 3, scope: !1506, file: !200, line: 188, type: !15)
!1511 = !DILocation(line: 0, scope: !1506)
!1512 = !DILocation(line: 0, scope: !209, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 189, column: 5, scope: !1506)
!1514 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1513)
!1515 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1513)
!1516 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1513)
!1517 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1513)
!1518 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1513)
!1519 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1513)
!1520 = !DILocation(line: 0, scope: !222, inlinedAt: !1513)
!1521 = !DILocation(line: 0, scope: !233, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 190, column: 9, scope: !1506)
!1523 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1522)
!1524 = !DILocation(line: 0, scope: !233, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 190, column: 35, scope: !1506)
!1526 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1525)
!1527 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1525)
!1528 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1525)
!1529 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1525)
!1530 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1525)
!1531 = !DILocation(line: 0, scope: !240, inlinedAt: !1525)
!1532 = !DILocation(line: 0, scope: !233, inlinedAt: !1533)
!1533 = distinct !DILocation(line: 191, column: 9, scope: !1506)
!1534 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1533)
!1535 = !DILocation(line: 0, scope: !254, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 191, column: 36, scope: !1506)
!1537 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1536)
!1538 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1536)
!1539 = !DILocation(line: 0, scope: !233, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 192, column: 9, scope: !1506)
!1541 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1540)
!1542 = !DILocation(line: 0, scope: !262, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 189, column: 5, scope: !1506)
!1544 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1543)
!1545 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1543)
!1546 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1543)
!1547 = !DILocation(line: 0, scope: !273, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1543)
!1549 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1548)
!1550 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1548)
!1551 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1548)
!1552 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1548)
!1553 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1543)
!1554 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !1543)
!1555 = !DILocation(line: 193, column: 5, scope: !1506)
!1556 = distinct !DISubprogram(name: "halide_error_device_dirty_with_no_device_support", scope: !200, file: !200, line: 196, type: !1402, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1557)
!1557 = !{!1558, !1559}
!1558 = !DILocalVariable(name: "user_context", arg: 1, scope: !1556, file: !200, line: 196, type: !77)
!1559 = !DILocalVariable(name: "func", arg: 2, scope: !1556, file: !200, line: 196, type: !92)
!1560 = !DILocation(line: 0, scope: !1556)
!1561 = !DILocation(line: 0, scope: !209, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 197, column: 5, scope: !1556)
!1563 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1562)
!1564 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1562)
!1565 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1562)
!1566 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1562)
!1567 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1562)
!1568 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1562)
!1569 = !DILocation(line: 0, scope: !222, inlinedAt: !1562)
!1570 = !DILocation(line: 0, scope: !233, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 198, column: 9, scope: !1556)
!1572 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1571)
!1573 = !DILocation(line: 0, scope: !233, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 198, column: 26, scope: !1556)
!1575 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1574)
!1576 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1574)
!1577 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1574)
!1578 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1574)
!1579 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1574)
!1580 = !DILocation(line: 0, scope: !240, inlinedAt: !1574)
!1581 = !DILocation(line: 0, scope: !233, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 199, column: 9, scope: !1556)
!1583 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1582)
!1584 = !DILocation(line: 0, scope: !233, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 200, column: 9, scope: !1556)
!1586 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1585)
!1587 = !DILocation(line: 0, scope: !262, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 197, column: 5, scope: !1556)
!1589 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1588)
!1590 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1588)
!1591 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1588)
!1592 = !DILocation(line: 0, scope: !273, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1588)
!1594 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1593)
!1595 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1593)
!1596 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1593)
!1597 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1593)
!1598 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1588)
!1599 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !1588)
!1600 = !DILocation(line: 201, column: 5, scope: !1556)
!1601 = distinct !DISubprogram(name: "halide_error_host_is_null", scope: !200, file: !200, line: 204, type: !1402, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1602)
!1602 = !{!1603, !1604}
!1603 = !DILocalVariable(name: "user_context", arg: 1, scope: !1601, file: !200, line: 204, type: !77)
!1604 = !DILocalVariable(name: "func", arg: 2, scope: !1601, file: !200, line: 204, type: !92)
!1605 = !DILocation(line: 0, scope: !1601)
!1606 = !DILocation(line: 0, scope: !209, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 205, column: 5, scope: !1601)
!1608 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1607)
!1609 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1607)
!1610 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1607)
!1611 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1607)
!1612 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1607)
!1613 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1607)
!1614 = !DILocation(line: 0, scope: !222, inlinedAt: !1607)
!1615 = !DILocation(line: 0, scope: !233, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 206, column: 9, scope: !1601)
!1617 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1616)
!1618 = !DILocation(line: 0, scope: !233, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 206, column: 35, scope: !1601)
!1620 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1619)
!1621 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1619)
!1622 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1619)
!1623 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1619)
!1624 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1619)
!1625 = !DILocation(line: 0, scope: !240, inlinedAt: !1619)
!1626 = !DILocation(line: 0, scope: !233, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 207, column: 9, scope: !1601)
!1628 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1627)
!1629 = !DILocation(line: 0, scope: !262, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 205, column: 5, scope: !1601)
!1631 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1630)
!1632 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1630)
!1633 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1630)
!1634 = !DILocation(line: 0, scope: !273, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1630)
!1636 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1635)
!1637 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1635)
!1638 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1635)
!1639 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1635)
!1640 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1630)
!1641 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !1630)
!1642 = !DILocation(line: 208, column: 5, scope: !1601)
!1643 = distinct !DISubprogram(name: "halide_error_bad_fold", scope: !200, file: !200, line: 211, type: !1644, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1646)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!15, !77, !92, !92, !92}
!1646 = !{!1647, !1648, !1649, !1650}
!1647 = !DILocalVariable(name: "user_context", arg: 1, scope: !1643, file: !200, line: 211, type: !77)
!1648 = !DILocalVariable(name: "func_name", arg: 2, scope: !1643, file: !200, line: 211, type: !92)
!1649 = !DILocalVariable(name: "var_name", arg: 3, scope: !1643, file: !200, line: 211, type: !92)
!1650 = !DILocalVariable(name: "loop_name", arg: 4, scope: !1643, file: !200, line: 212, type: !92)
!1651 = !DILocation(line: 0, scope: !1643)
!1652 = !DILocation(line: 0, scope: !209, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 213, column: 5, scope: !1643)
!1654 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1653)
!1655 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1653)
!1656 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1653)
!1657 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1653)
!1658 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1653)
!1659 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1653)
!1660 = !DILocation(line: 0, scope: !222, inlinedAt: !1653)
!1661 = !DILocation(line: 0, scope: !233, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 214, column: 9, scope: !1643)
!1663 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1662)
!1664 = !DILocation(line: 0, scope: !233, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 214, column: 44, scope: !1643)
!1666 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1665)
!1667 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1665)
!1668 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1665)
!1669 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1665)
!1670 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1665)
!1671 = !DILocation(line: 0, scope: !240, inlinedAt: !1665)
!1672 = !DILocation(line: 0, scope: !233, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 214, column: 56, scope: !1643)
!1674 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1673)
!1675 = !DILocation(line: 0, scope: !233, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 214, column: 66, scope: !1643)
!1677 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1676)
!1678 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1676)
!1679 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1676)
!1680 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1676)
!1681 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1676)
!1682 = !DILocation(line: 0, scope: !240, inlinedAt: !1676)
!1683 = !DILocation(line: 0, scope: !233, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 215, column: 9, scope: !1643)
!1685 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1684)
!1686 = !DILocation(line: 0, scope: !233, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 215, column: 50, scope: !1643)
!1688 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1687)
!1689 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1687)
!1690 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1687)
!1691 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1687)
!1692 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1687)
!1693 = !DILocation(line: 0, scope: !240, inlinedAt: !1687)
!1694 = !DILocation(line: 0, scope: !233, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 215, column: 63, scope: !1643)
!1696 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1695)
!1697 = !DILocation(line: 0, scope: !262, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 213, column: 5, scope: !1643)
!1699 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1698)
!1700 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1698)
!1701 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1698)
!1702 = !DILocation(line: 0, scope: !273, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1698)
!1704 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1703)
!1705 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1703)
!1706 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1703)
!1707 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1703)
!1708 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1698)
!1709 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !1698)
!1710 = !DILocation(line: 216, column: 5, scope: !1643)
!1711 = distinct !DISubprogram(name: "halide_error_bad_extern_fold", scope: !200, file: !200, line: 219, type: !601, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1712)
!1712 = !{!1713, !1714, !1715, !1716, !1717, !1718, !1719}
!1713 = !DILocalVariable(name: "user_context", arg: 1, scope: !1711, file: !200, line: 219, type: !77)
!1714 = !DILocalVariable(name: "func_name", arg: 2, scope: !1711, file: !200, line: 219, type: !92)
!1715 = !DILocalVariable(name: "dim", arg: 3, scope: !1711, file: !200, line: 220, type: !15)
!1716 = !DILocalVariable(name: "min", arg: 4, scope: !1711, file: !200, line: 220, type: !15)
!1717 = !DILocalVariable(name: "extent", arg: 5, scope: !1711, file: !200, line: 220, type: !15)
!1718 = !DILocalVariable(name: "valid_min", arg: 6, scope: !1711, file: !200, line: 220, type: !15)
!1719 = !DILocalVariable(name: "fold_factor", arg: 7, scope: !1711, file: !200, line: 220, type: !15)
!1720 = !DILocation(line: 0, scope: !1711)
!1721 = !DILocation(line: 221, column: 13, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1711, file: !200, line: 221, column: 9)
!1723 = !DILocation(line: 221, column: 25, scope: !1722)
!1724 = !DILocation(line: 221, column: 32, scope: !1722)
!1725 = !DILocation(line: 221, column: 53, scope: !1722)
!1726 = !DILocation(line: 221, column: 41, scope: !1722)
!1727 = !DILocation(line: 221, column: 9, scope: !1711)
!1728 = !DILocation(line: 0, scope: !209, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 222, column: 9, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1722, file: !200, line: 221, column: 68)
!1731 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1729)
!1732 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1729)
!1733 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1729)
!1734 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1729)
!1735 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1729)
!1736 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1729)
!1737 = !DILocation(line: 0, scope: !222, inlinedAt: !1729)
!1738 = !DILocation(line: 0, scope: !233, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 223, column: 13, scope: !1730)
!1740 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1739)
!1741 = !DILocation(line: 0, scope: !254, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 223, column: 41, scope: !1730)
!1743 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1742)
!1744 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1742)
!1745 = !DILocation(line: 0, scope: !233, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 223, column: 48, scope: !1730)
!1747 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1746)
!1748 = !DILocation(line: 0, scope: !233, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 223, column: 58, scope: !1730)
!1750 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1749)
!1751 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1749)
!1752 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1749)
!1753 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1749)
!1754 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1749)
!1755 = !DILocation(line: 0, scope: !240, inlinedAt: !1749)
!1756 = !DILocation(line: 0, scope: !233, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 224, column: 13, scope: !1730)
!1758 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1757)
!1759 = !DILocation(line: 0, scope: !254, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 224, column: 54, scope: !1730)
!1761 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1760)
!1762 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1760)
!1763 = !DILocation(line: 0, scope: !233, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 224, column: 61, scope: !1730)
!1765 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1764)
!1766 = !DILocation(line: 224, column: 77, scope: !1730)
!1767 = !DILocation(line: 224, column: 86, scope: !1730)
!1768 = !DILocation(line: 0, scope: !254, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 224, column: 69, scope: !1730)
!1770 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1769)
!1771 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1769)
!1772 = !DILocation(line: 0, scope: !233, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 224, column: 91, scope: !1730)
!1774 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1773)
!1775 = !DILocation(line: 0, scope: !233, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 225, column: 13, scope: !1730)
!1777 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1776)
!1778 = !DILocation(line: 0, scope: !254, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 226, column: 13, scope: !1730)
!1780 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1779)
!1781 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1779)
!1782 = !DILocation(line: 0, scope: !233, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 226, column: 26, scope: !1730)
!1784 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1783)
!1785 = !DILocation(line: 226, column: 48, scope: !1730)
!1786 = !DILocation(line: 226, column: 62, scope: !1730)
!1787 = !DILocation(line: 0, scope: !254, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 226, column: 34, scope: !1730)
!1789 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1788)
!1790 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1788)
!1791 = !DILocation(line: 0, scope: !233, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 226, column: 67, scope: !1730)
!1793 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1792)
!1794 = !DILocation(line: 0, scope: !262, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 222, column: 9, scope: !1730)
!1796 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1795)
!1797 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1795)
!1798 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1795)
!1799 = !DILocation(line: 0, scope: !273, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1795)
!1801 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1800)
!1802 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1800)
!1803 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1800)
!1804 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1800)
!1805 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1795)
!1806 = !DILocation(line: 0, scope: !209, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 228, column: 9, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1722, file: !200, line: 227, column: 12)
!1809 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1807)
!1810 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1807)
!1811 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1807)
!1812 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1807)
!1813 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1807)
!1814 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1807)
!1815 = !DILocation(line: 0, scope: !222, inlinedAt: !1807)
!1816 = !DILocation(line: 0, scope: !233, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 229, column: 13, scope: !1808)
!1818 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1817)
!1819 = !DILocation(line: 0, scope: !254, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 229, column: 41, scope: !1808)
!1821 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1820)
!1822 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1820)
!1823 = !DILocation(line: 0, scope: !233, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 229, column: 48, scope: !1808)
!1825 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1824)
!1826 = !DILocation(line: 0, scope: !233, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 229, column: 58, scope: !1808)
!1828 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1827)
!1829 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1827)
!1830 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1827)
!1831 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1827)
!1832 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1827)
!1833 = !DILocation(line: 0, scope: !240, inlinedAt: !1827)
!1834 = !DILocation(line: 0, scope: !233, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 230, column: 13, scope: !1808)
!1836 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1835)
!1837 = !DILocation(line: 0, scope: !254, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 230, column: 54, scope: !1808)
!1839 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1838)
!1840 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1838)
!1841 = !DILocation(line: 0, scope: !233, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 230, column: 61, scope: !1808)
!1843 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1842)
!1844 = !DILocation(line: 230, column: 86, scope: !1808)
!1845 = !DILocation(line: 0, scope: !254, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 230, column: 69, scope: !1808)
!1847 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1846)
!1848 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1846)
!1849 = !DILocation(line: 0, scope: !233, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 230, column: 91, scope: !1808)
!1851 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1850)
!1852 = !DILocation(line: 0, scope: !233, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 231, column: 13, scope: !1808)
!1854 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1853)
!1855 = !DILocation(line: 0, scope: !233, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 232, column: 13, scope: !1808)
!1857 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1856)
!1858 = !DILocation(line: 0, scope: !254, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 232, column: 48, scope: !1808)
!1860 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1859)
!1861 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1859)
!1862 = !DILocation(line: 0, scope: !233, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 232, column: 63, scope: !1808)
!1864 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1863)
!1865 = !DILocation(line: 0, scope: !262, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 228, column: 9, scope: !1808)
!1867 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1866)
!1868 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1866)
!1869 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1866)
!1870 = !DILocation(line: 0, scope: !273, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1866)
!1872 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1871)
!1873 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1871)
!1874 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1871)
!1875 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1871)
!1876 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1866)
!1877 = !DILocation(line: 0, scope: !1722)
!1878 = !DILocation(line: 234, column: 5, scope: !1711)
!1879 = distinct !DISubprogram(name: "halide_error_fold_factor_too_small", scope: !200, file: !200, line: 237, type: !1880, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1882)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!15, !77, !92, !92, !15, !92, !15}
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888}
!1883 = !DILocalVariable(name: "user_context", arg: 1, scope: !1879, file: !200, line: 237, type: !77)
!1884 = !DILocalVariable(name: "func_name", arg: 2, scope: !1879, file: !200, line: 237, type: !92)
!1885 = !DILocalVariable(name: "var_name", arg: 3, scope: !1879, file: !200, line: 237, type: !92)
!1886 = !DILocalVariable(name: "fold_factor", arg: 4, scope: !1879, file: !200, line: 238, type: !15)
!1887 = !DILocalVariable(name: "loop_name", arg: 5, scope: !1879, file: !200, line: 238, type: !92)
!1888 = !DILocalVariable(name: "required_extent", arg: 6, scope: !1879, file: !200, line: 238, type: !15)
!1889 = !DILocation(line: 0, scope: !1879)
!1890 = !DILocation(line: 0, scope: !209, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 239, column: 5, scope: !1879)
!1892 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1891)
!1893 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1891)
!1894 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1891)
!1895 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1891)
!1896 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1891)
!1897 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1891)
!1898 = !DILocation(line: 0, scope: !222, inlinedAt: !1891)
!1899 = !DILocation(line: 0, scope: !233, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 240, column: 9, scope: !1879)
!1901 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1900)
!1902 = !DILocation(line: 0, scope: !254, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 240, column: 32, scope: !1879)
!1904 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1903)
!1905 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1903)
!1906 = !DILocation(line: 0, scope: !233, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 241, column: 9, scope: !1879)
!1908 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1907)
!1909 = !DILocation(line: 0, scope: !233, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 241, column: 30, scope: !1879)
!1911 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1910)
!1912 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1910)
!1913 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1910)
!1914 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1910)
!1915 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1910)
!1916 = !DILocation(line: 0, scope: !240, inlinedAt: !1910)
!1917 = !DILocation(line: 0, scope: !233, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 241, column: 42, scope: !1879)
!1919 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1918)
!1920 = !DILocation(line: 0, scope: !233, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 241, column: 52, scope: !1879)
!1922 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1921)
!1923 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1921)
!1924 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1921)
!1925 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1921)
!1926 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1921)
!1927 = !DILocation(line: 0, scope: !240, inlinedAt: !1921)
!1928 = !DILocation(line: 0, scope: !233, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 242, column: 9, scope: !1879)
!1930 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1929)
!1931 = !DILocation(line: 0, scope: !233, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 243, column: 9, scope: !1879)
!1933 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1932)
!1934 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1932)
!1935 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1932)
!1936 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1932)
!1937 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1932)
!1938 = !DILocation(line: 0, scope: !240, inlinedAt: !1932)
!1939 = !DILocation(line: 0, scope: !233, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 243, column: 22, scope: !1879)
!1941 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1940)
!1942 = !DILocation(line: 0, scope: !254, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 243, column: 30, scope: !1879)
!1944 = !DILocation(line: 73, column: 48, scope: !254, inlinedAt: !1943)
!1945 = !DILocation(line: 73, column: 15, scope: !254, inlinedAt: !1943)
!1946 = !DILocation(line: 0, scope: !233, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 243, column: 49, scope: !1879)
!1948 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1947)
!1949 = !DILocation(line: 0, scope: !262, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 239, column: 5, scope: !1879)
!1951 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !1950)
!1952 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !1950)
!1953 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !1950)
!1954 = !DILocation(line: 0, scope: !273, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !1950)
!1956 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !1955)
!1957 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !1955)
!1958 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !1955)
!1959 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !1955)
!1960 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !1950)
!1961 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !1950)
!1962 = !DILocation(line: 244, column: 5, scope: !1879)
!1963 = distinct !DISubprogram(name: "halide_error_requirement_failed", scope: !200, file: !200, line: 247, type: !1964, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1966)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!15, !77, !92, !92}
!1966 = !{!1967, !1968, !1969}
!1967 = !DILocalVariable(name: "user_context", arg: 1, scope: !1963, file: !200, line: 247, type: !77)
!1968 = !DILocalVariable(name: "condition", arg: 2, scope: !1963, file: !200, line: 247, type: !92)
!1969 = !DILocalVariable(name: "message", arg: 3, scope: !1963, file: !200, line: 247, type: !92)
!1970 = !DILocation(line: 0, scope: !1963)
!1971 = !DILocation(line: 0, scope: !209, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 248, column: 5, scope: !1963)
!1973 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !1972)
!1974 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !1972)
!1975 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !1972)
!1976 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !1972)
!1977 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !1972)
!1978 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !1972)
!1979 = !DILocation(line: 0, scope: !222, inlinedAt: !1972)
!1980 = !DILocation(line: 0, scope: !233, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 249, column: 9, scope: !1963)
!1982 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1981)
!1983 = !DILocation(line: 0, scope: !233, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 249, column: 36, scope: !1963)
!1985 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1984)
!1986 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1984)
!1987 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1984)
!1988 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1984)
!1989 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1984)
!1990 = !DILocation(line: 0, scope: !240, inlinedAt: !1984)
!1991 = !DILocation(line: 0, scope: !233, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 249, column: 49, scope: !1963)
!1993 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1992)
!1994 = !DILocation(line: 0, scope: !233, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 249, column: 57, scope: !1963)
!1996 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !1995)
!1997 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !1995)
!1998 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !1995)
!1999 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !1995)
!2000 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !1995)
!2001 = !DILocation(line: 0, scope: !240, inlinedAt: !1995)
!2002 = !DILocation(line: 0, scope: !262, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 248, column: 5, scope: !1963)
!2004 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !2003)
!2005 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !2003)
!2006 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !2003)
!2007 = !DILocation(line: 0, scope: !273, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !2003)
!2009 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !2008)
!2010 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !2008)
!2011 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !2008)
!2012 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !2008)
!2013 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !2003)
!2014 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !2003)
!2015 = !DILocation(line: 250, column: 5, scope: !1963)
!2016 = distinct !DISubprogram(name: "halide_error_specialize_fail", scope: !200, file: !200, line: 253, type: !1402, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2017)
!2017 = !{!2018, !2019}
!2018 = !DILocalVariable(name: "user_context", arg: 1, scope: !2016, file: !200, line: 253, type: !77)
!2019 = !DILocalVariable(name: "message", arg: 2, scope: !2016, file: !200, line: 253, type: !92)
!2020 = !DILocation(line: 0, scope: !2016)
!2021 = !DILocation(line: 0, scope: !209, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 254, column: 5, scope: !2016)
!2023 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !2022)
!2024 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !2022)
!2025 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !2022)
!2026 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !2022)
!2027 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !2022)
!2028 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !2022)
!2029 = !DILocation(line: 0, scope: !222, inlinedAt: !2022)
!2030 = !DILocation(line: 0, scope: !233, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 255, column: 9, scope: !2016)
!2032 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2031)
!2033 = !DILocation(line: 0, scope: !233, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 255, column: 73, scope: !2016)
!2035 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !2034)
!2036 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !2034)
!2037 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !2034)
!2038 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !2034)
!2039 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2034)
!2040 = !DILocation(line: 0, scope: !240, inlinedAt: !2034)
!2041 = !DILocation(line: 0, scope: !262, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 254, column: 5, scope: !2016)
!2043 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !2042)
!2044 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !2042)
!2045 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !2042)
!2046 = !DILocation(line: 0, scope: !273, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !2042)
!2048 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !2047)
!2049 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !2047)
!2050 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !2047)
!2051 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !2047)
!2052 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !2042)
!2053 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !2042)
!2054 = !DILocation(line: 256, column: 5, scope: !2016)
!2055 = distinct !DISubprogram(name: "halide_error_no_device_interface", scope: !200, file: !200, line: 259, type: !1391, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2056)
!2056 = !{!2057}
!2057 = !DILocalVariable(name: "user_context", arg: 1, scope: !2055, file: !200, line: 259, type: !77)
!2058 = !DILocation(line: 0, scope: !2055)
!2059 = !DILocation(line: 0, scope: !209, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 260, column: 5, scope: !2055)
!2061 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !2060)
!2062 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !2060)
!2063 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !2060)
!2064 = !DILocation(line: 0, scope: !233, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 260, column: 25, scope: !2055)
!2066 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2065)
!2067 = !DILocation(line: 0, scope: !262, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 260, column: 5, scope: !2055)
!2069 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !2068)
!2070 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !2068)
!2071 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !2060)
!2072 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !2060)
!2073 = !DILocation(line: 0, scope: !273, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !2068)
!2075 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !2074)
!2076 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !2074)
!2077 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !2074)
!2078 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !2074)
!2079 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !2068)
!2080 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !2068)
!2081 = !DILocation(line: 261, column: 5, scope: !2055)
!2082 = distinct !DISubprogram(name: "halide_error_device_interface_no_device", scope: !200, file: !200, line: 264, type: !1391, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2083)
!2083 = !{!2084}
!2084 = !DILocalVariable(name: "user_context", arg: 1, scope: !2082, file: !200, line: 264, type: !77)
!2085 = !DILocation(line: 0, scope: !2082)
!2086 = !DILocation(line: 0, scope: !209, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 265, column: 5, scope: !2082)
!2088 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !2087)
!2089 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !2087)
!2090 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !2087)
!2091 = !DILocation(line: 0, scope: !233, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 265, column: 25, scope: !2082)
!2093 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2092)
!2094 = !DILocation(line: 0, scope: !262, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 265, column: 5, scope: !2082)
!2096 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !2095)
!2097 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !2095)
!2098 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !2087)
!2099 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !2087)
!2100 = !DILocation(line: 0, scope: !273, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !2095)
!2102 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !2101)
!2103 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !2101)
!2104 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !2101)
!2105 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !2101)
!2106 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !2095)
!2107 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !2095)
!2108 = !DILocation(line: 266, column: 5, scope: !2082)
!2109 = distinct !DISubprogram(name: "halide_error_host_and_device_dirty", scope: !200, file: !200, line: 269, type: !1391, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2110)
!2110 = !{!2111}
!2111 = !DILocalVariable(name: "user_context", arg: 1, scope: !2109, file: !200, line: 269, type: !77)
!2112 = !DILocation(line: 0, scope: !2109)
!2113 = !DILocation(line: 0, scope: !209, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 270, column: 5, scope: !2109)
!2115 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !2114)
!2116 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !2114)
!2117 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !2114)
!2118 = !DILocation(line: 0, scope: !233, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 270, column: 25, scope: !2109)
!2120 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2119)
!2121 = !DILocation(line: 0, scope: !262, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 270, column: 5, scope: !2109)
!2123 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !2122)
!2124 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !2122)
!2125 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !2114)
!2126 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !2114)
!2127 = !DILocation(line: 0, scope: !273, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !2122)
!2129 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !2128)
!2130 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !2128)
!2131 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !2128)
!2132 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !2128)
!2133 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !2122)
!2134 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !2122)
!2135 = !DILocation(line: 271, column: 5, scope: !2109)
!2136 = distinct !DISubprogram(name: "halide_error_buffer_is_null", scope: !200, file: !200, line: 274, type: !1402, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2137)
!2137 = !{!2138, !2139}
!2138 = !DILocalVariable(name: "user_context", arg: 1, scope: !2136, file: !200, line: 274, type: !77)
!2139 = !DILocalVariable(name: "routine", arg: 2, scope: !2136, file: !200, line: 274, type: !92)
!2140 = !DILocation(line: 0, scope: !2136)
!2141 = !DILocation(line: 0, scope: !209, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 275, column: 5, scope: !2136)
!2143 = !DILocation(line: 44, column: 27, scope: !217, inlinedAt: !2142)
!2144 = !DILocation(line: 48, column: 13, scope: !222, inlinedAt: !2142)
!2145 = !DILocation(line: 48, column: 13, scope: !220, inlinedAt: !2142)
!2146 = !DILocation(line: 49, column: 23, scope: !225, inlinedAt: !2142)
!2147 = !DILocation(line: 50, column: 18, scope: !225, inlinedAt: !2142)
!2148 = !DILocation(line: 51, column: 9, scope: !225, inlinedAt: !2142)
!2149 = !DILocation(line: 0, scope: !222, inlinedAt: !2142)
!2150 = !DILocation(line: 0, scope: !233, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 275, column: 25, scope: !2136)
!2152 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2151)
!2153 = !DILocation(line: 0, scope: !233, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 275, column: 56, scope: !2136)
!2155 = !DILocation(line: 59, column: 17, scope: !240, inlinedAt: !2154)
!2156 = !DILocation(line: 59, column: 13, scope: !233, inlinedAt: !2154)
!2157 = !DILocation(line: 60, column: 19, scope: !246, inlinedAt: !2154)
!2158 = !DILocation(line: 61, column: 9, scope: !246, inlinedAt: !2154)
!2159 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2154)
!2160 = !DILocation(line: 0, scope: !240, inlinedAt: !2154)
!2161 = !DILocation(line: 0, scope: !233, inlinedAt: !2162)
!2162 = distinct !DILocation(line: 275, column: 67, scope: !2136)
!2163 = !DILocation(line: 62, column: 19, scope: !239, inlinedAt: !2162)
!2164 = !DILocation(line: 0, scope: !262, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 275, column: 5, scope: !2136)
!2166 = !DILocation(line: 167, column: 13, scope: !267, inlinedAt: !2165)
!2167 = !DILocation(line: 168, column: 13, scope: !269, inlinedAt: !2165)
!2168 = !DILocation(line: 169, column: 9, scope: !269, inlinedAt: !2165)
!2169 = !DILocation(line: 0, scope: !273, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 170, column: 13, scope: !277, inlinedAt: !2165)
!2171 = !DILocation(line: 163, column: 81, scope: !273, inlinedAt: !2170)
!2172 = !DILocation(line: 163, column: 87, scope: !273, inlinedAt: !2170)
!2173 = !DILocation(line: 163, column: 77, scope: !273, inlinedAt: !2170)
!2174 = !DILocation(line: 163, column: 15, scope: !273, inlinedAt: !2170)
!2175 = !DILocation(line: 172, column: 17, scope: !283, inlinedAt: !2165)
!2176 = !DILocation(line: 181, column: 13, scope: !286, inlinedAt: !2165)
!2177 = !DILocation(line: 276, column: 5, scope: !2136)
!2178 = !DISubprogram(name: "malloc", scope: !6, file: !6, line: 87, type: !2179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !542)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!77, !112}
!2181 = !DISubprogram(name: "free", scope: !6, file: !6, line: 86, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !542)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{null, !77}
!2184 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !4, file: !4, line: 973, type: !2185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !542)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!15, !77, !124, !107}
!2187 = !DISubprogram(name: "halide_string_to_string", scope: !6, file: !6, line: 120, type: !2188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !542)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!72, !72, !72, !92}
!2190 = !DISubprogram(name: "halide_int64_to_string", scope: !6, file: !6, line: 122, type: !2191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !542)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!72, !72, !72, !98, !15}
!2193 = !DISubprogram(name: "halide_type_to_string", scope: !6, file: !6, line: 126, type: !2194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !542)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!72, !72, !72, !2196}
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 32)
!2197 = !DISubprogram(name: "halide_uint64_to_string", scope: !6, file: !6, line: 123, type: !2198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !542)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!72, !72, !72, !107, !15}
!2200 = !DISubprogram(name: "halide_double_to_string", scope: !6, file: !6, line: 121, type: !2201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !542)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!72, !72, !72, !116, !15}
