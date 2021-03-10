; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/errors.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/errors.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_type_t = type { i8, i8, i16 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>

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
define weak i32 @halide_error_bounds_inference_call_failed(i8* %0, i8* %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call i8* @malloc(i64 1024) #4
  %5 = icmp eq i8* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i64 1023
  store i8 0, i8* %7, align 1, !tbaa !3
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ]
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0)) #4
  %11 = icmp eq i8* %1, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %16

14:                                               ; preds = %8
  %15 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* nonnull %1) #4
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ]
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %9, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #4
  %19 = sext i32 %2 to i64
  %20 = tail call i8* @halide_int64_to_string(i8* %18, i8* %9, i64 %19, i32 1) #4
  br i1 %5, label %21, label %22

21:                                               ; preds = %16
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %28

22:                                               ; preds = %16
  %23 = ptrtoint i8* %20 to i64
  %24 = ptrtoint i8* %4 to i64
  %25 = add i64 %23, 1
  %26 = sub i64 %25, %24
  %27 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %26) #4
  tail call void @halide_error(i8* %0, i8* nonnull %4) #4
  br label %28

28:                                               ; preds = %21, %22
  call void @free(i8* %4) #4
  ret i32 %2
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
define weak i32 @halide_error_extern_stage_failed(i8* %0, i8* %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call i8* @malloc(i64 1024) #4
  %5 = icmp eq i8* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i64 1023
  store i8 0, i8* %7, align 1, !tbaa !3
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ]
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #4
  %11 = icmp eq i8* %1, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %16

14:                                               ; preds = %8
  %15 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* nonnull %1) #4
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ]
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %9, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #4
  %19 = sext i32 %2 to i64
  %20 = tail call i8* @halide_int64_to_string(i8* %18, i8* %9, i64 %19, i32 1) #4
  br i1 %5, label %21, label %22

21:                                               ; preds = %16
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %28

22:                                               ; preds = %16
  %23 = ptrtoint i8* %20 to i64
  %24 = ptrtoint i8* %4 to i64
  %25 = add i64 %23, 1
  %26 = sub i64 %25, %24
  %27 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %26) #4
  tail call void @halide_error(i8* %0, i8* nonnull %4) #4
  br label %28

28:                                               ; preds = %21, %22
  call void @free(i8* %4) #4
  ret i32 %2
}

; Function Attrs: nounwind
define weak i32 @halide_error_explicit_bounds_too_small(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %8 = tail call i8* @malloc(i64 1024) #4
  %9 = icmp eq i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023
  store i8 0, i8* %11, align 1, !tbaa !3
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ null, %7 ]
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)) #4
  %15 = icmp eq i8* %2, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %20

18:                                               ; preds = %12
  %19 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull %2) #4
  br label %20

20:                                               ; preds = %16, %18
  %21 = phi i8* [ %19, %18 ], [ %17, %16 ]
  %22 = tail call i8* @halide_string_to_string(i8* %21, i8* %13, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #4
  %23 = icmp eq i8* %1, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call i8* @halide_string_to_string(i8* %22, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %28

26:                                               ; preds = %20
  %27 = tail call i8* @halide_string_to_string(i8* %22, i8* %13, i8* nonnull %1) #4
  br label %28

28:                                               ; preds = %24, %26
  %29 = phi i8* [ %27, %26 ], [ %25, %24 ]
  %30 = tail call i8* @halide_string_to_string(i8* %29, i8* %13, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #4
  %31 = sext i32 %3 to i64
  %32 = tail call i8* @halide_int64_to_string(i8* %30, i8* %13, i64 %31, i32 1) #4
  %33 = tail call i8* @halide_string_to_string(i8* %32, i8* %13, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #4
  %34 = sext i32 %4 to i64
  %35 = tail call i8* @halide_int64_to_string(i8* %33, i8* %13, i64 %34, i32 1) #4
  %36 = tail call i8* @halide_string_to_string(i8* %35, i8* %13, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0)) #4
  %37 = sext i32 %5 to i64
  %38 = tail call i8* @halide_int64_to_string(i8* %36, i8* %13, i64 %37, i32 1) #4
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %13, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #4
  %40 = sext i32 %6 to i64
  %41 = tail call i8* @halide_int64_to_string(i8* %39, i8* %13, i64 %40, i32 1) #4
  %42 = tail call i8* @halide_string_to_string(i8* %41, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #4
  br i1 %9, label %43, label %44

43:                                               ; preds = %28
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %50

44:                                               ; preds = %28
  %45 = ptrtoint i8* %42 to i64
  %46 = ptrtoint i8* %8 to i64
  %47 = add i64 %45, 1
  %48 = sub i64 %47, %46
  %49 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %48) #4
  tail call void @halide_error(i8* %0, i8* nonnull %8) #4
  br label %50

50:                                               ; preds = %43, %44
  call void @free(i8* %8) #4
  ret i32 -2
}

; Function Attrs: nounwind
define weak i32 @halide_error_bad_type(i8* %0, i8* %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.halide_type_t, align 2
  %8 = alloca %struct.halide_type_t, align 2
  %9 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  store i32 %2, i32* %5, align 4, !tbaa !6
  store i32 %3, i32* %6, align 4, !tbaa !6
  %10 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5
  store i8 0, i8* %10, align 2, !tbaa !8
  %11 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %7, i64 0, i32 1
  store i8 0, i8* %11, align 1, !tbaa !12
  %12 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %7, i64 0, i32 2
  store i16 0, i16* %12, align 2, !tbaa !13
  %13 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5
  store i8 0, i8* %13, align 2, !tbaa !8
  %14 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %8, i64 0, i32 1
  store i8 0, i8* %14, align 1, !tbaa !12
  %15 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %8, i64 0, i32 2
  store i16 0, i16* %15, align 2, !tbaa !13
  %16 = bitcast i32* %6 to i8*
  %17 = call i8* @memcpy(i8* nonnull %10, i8* nonnull %16, i64 4) #4
  %18 = bitcast i32* %5 to i8*
  %19 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %18, i64 4) #4
  %20 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %20) #5
  %21 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 3
  store i8* %0, i8** %21, align 8, !tbaa !14
  %22 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 4
  store i8 1, i8* %22, align 8, !tbaa !18
  %23 = call i8* @malloc(i64 1024) #4
  %24 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 0
  store i8* %23, i8** %24, align 8, !tbaa !19
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 1
  %26 = icmp eq i8* %23, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds i8, i8* %23, i64 1023
  store i8 0, i8* %28, align 1, !tbaa !3
  br label %29

29:                                               ; preds = %4, %27
  %30 = phi i8* [ %28, %27 ], [ null, %4 ]
  %31 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = icmp eq i8* %1, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i8* @halide_string_to_string(i8* %23, i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %37

35:                                               ; preds = %29
  %36 = call i8* @halide_string_to_string(i8* %23, i8* %30, i8* nonnull %1) #4
  br label %37

37:                                               ; preds = %33, %35
  %38 = phi i8* [ %36, %35 ], [ %34, %33 ]
  store i8* %38, i8** %25, align 8, !tbaa !20
  %39 = load i8*, i8** %31, align 8, !tbaa !21
  %40 = call i8* @halide_string_to_string(i8* %38, i8* %39, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #4
  %41 = call i8* @halide_type_to_string(i8* %40, i8* %39, %struct.halide_type_t* nonnull %7) #4
  %42 = call i8* @halide_string_to_string(i8* %41, i8* %39, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0)) #4
  %43 = call i8* @halide_type_to_string(i8* %42, i8* %39, %struct.halide_type_t* nonnull %8) #4
  %44 = load i8*, i8** %24, align 8, !tbaa !19
  %45 = icmp eq i8* %44, null
  %46 = load i8*, i8** %21, align 8, !tbaa !14
  br i1 %45, label %54, label %47

47:                                               ; preds = %37
  %48 = ptrtoint i8* %43 to i64
  %49 = ptrtoint i8* %44 to i64
  %50 = add i64 %48, 1
  %51 = sub i64 %50, %49
  %52 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %46, i8* nonnull %44, i64 %51) #4
  %53 = load i8*, i8** %24, align 8, !tbaa !19
  br label %54

54:                                               ; preds = %37, %47
  %55 = phi i8* [ %53, %47 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0), %37 ]
  call void @halide_error(i8* %46, i8* %55) #4
  %56 = load i8, i8* %22, align 8, !tbaa !18, !range !22
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** %24, align 8, !tbaa !19
  call void @free(i8* %59) #4
  br label %60

60:                                               ; preds = %54, %58
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %20) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5
  ret i32 -3
}

declare i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_error_bad_dimensions(i8* %0, i8* %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = tail call i8* @malloc(i64 1024) #4
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !3
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ]
  %11 = icmp eq i8* %1, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %16

14:                                               ; preds = %9
  %15 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull %1) #4
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ]
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %10, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0)) #4
  %19 = sext i32 %3 to i64
  %20 = tail call i8* @halide_int64_to_string(i8* %18, i8* %10, i64 %19, i32 1) #4
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0)) #4
  %22 = sext i32 %2 to i64
  %23 = tail call i8* @halide_int64_to_string(i8* %21, i8* %10, i64 %22, i32 1) #4
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %10, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0)) #4
  br i1 %6, label %25, label %26

25:                                               ; preds = %16
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %32

26:                                               ; preds = %16
  %27 = ptrtoint i8* %24 to i64
  %28 = ptrtoint i8* %5 to i64
  %29 = add i64 %27, 1
  %30 = sub i64 %29, %28
  %31 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %30) #4
  tail call void @halide_error(i8* %0, i8* nonnull %5) #4
  br label %32

32:                                               ; preds = %25, %26
  call void @free(i8* %5) #4
  ret i32 -43
}

; Function Attrs: nounwind
define weak i32 @halide_error_access_out_of_bounds(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %8 = icmp slt i32 %3, %5
  br i1 %8, label %9, label %39

9:                                                ; preds = %7
  %10 = tail call i8* @malloc(i64 1024) #4
  %11 = icmp eq i8* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, i8* %10, i64 1023
  store i8 0, i8* %13, align 1, !tbaa !3
  br label %14

14:                                               ; preds = %9, %12
  %15 = phi i8* [ %13, %12 ], [ null, %9 ]
  %16 = icmp eq i8* %1, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call i8* @halide_string_to_string(i8* %10, i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %21

19:                                               ; preds = %14
  %20 = tail call i8* @halide_string_to_string(i8* %10, i8* %15, i8* nonnull %1) #4
  br label %21

21:                                               ; preds = %17, %19
  %22 = phi i8* [ %20, %19 ], [ %18, %17 ]
  %23 = tail call i8* @halide_string_to_string(i8* %22, i8* %15, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0)) #4
  %24 = sext i32 %3 to i64
  %25 = tail call i8* @halide_int64_to_string(i8* %23, i8* %15, i64 %24, i32 1) #4
  %26 = tail call i8* @halide_string_to_string(i8* %25, i8* %15, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #4
  %27 = sext i32 %5 to i64
  %28 = tail call i8* @halide_int64_to_string(i8* %26, i8* %15, i64 %27, i32 1) #4
  %29 = tail call i8* @halide_string_to_string(i8* %28, i8* %15, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #4
  %30 = sext i32 %2 to i64
  %31 = tail call i8* @halide_int64_to_string(i8* %29, i8* %15, i64 %30, i32 1) #4
  br i1 %11, label %32, label %33

32:                                               ; preds = %21
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %71

33:                                               ; preds = %21
  %34 = ptrtoint i8* %31 to i64
  %35 = ptrtoint i8* %10 to i64
  %36 = add i64 %34, 1
  %37 = sub i64 %36, %35
  %38 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %10, i64 %37) #4
  tail call void @halide_error(i8* %0, i8* nonnull %10) #4
  br label %71

39:                                               ; preds = %7
  %40 = icmp sgt i32 %4, %6
  br i1 %40, label %41, label %73

41:                                               ; preds = %39
  %42 = tail call i8* @malloc(i64 1024) #4
  %43 = icmp eq i8* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, i8* %42, i64 1023
  store i8 0, i8* %45, align 1, !tbaa !3
  br label %46

46:                                               ; preds = %41, %44
  %47 = phi i8* [ %45, %44 ], [ null, %41 ]
  %48 = icmp eq i8* %1, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = tail call i8* @halide_string_to_string(i8* %42, i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %53

51:                                               ; preds = %46
  %52 = tail call i8* @halide_string_to_string(i8* %42, i8* %47, i8* nonnull %1) #4
  br label %53

53:                                               ; preds = %49, %51
  %54 = phi i8* [ %52, %51 ], [ %50, %49 ]
  %55 = tail call i8* @halide_string_to_string(i8* %54, i8* %47, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0)) #4
  %56 = sext i32 %4 to i64
  %57 = tail call i8* @halide_int64_to_string(i8* %55, i8* %47, i64 %56, i32 1) #4
  %58 = tail call i8* @halide_string_to_string(i8* %57, i8* %47, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0)) #4
  %59 = sext i32 %6 to i64
  %60 = tail call i8* @halide_int64_to_string(i8* %58, i8* %47, i64 %59, i32 1) #4
  %61 = tail call i8* @halide_string_to_string(i8* %60, i8* %47, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #4
  %62 = sext i32 %2 to i64
  %63 = tail call i8* @halide_int64_to_string(i8* %61, i8* %47, i64 %62, i32 1) #4
  br i1 %43, label %64, label %65

64:                                               ; preds = %53
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %71

65:                                               ; preds = %53
  %66 = ptrtoint i8* %63 to i64
  %67 = ptrtoint i8* %42 to i64
  %68 = add i64 %66, 1
  %69 = sub i64 %68, %67
  %70 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %42, i64 %69) #4
  tail call void @halide_error(i8* %0, i8* nonnull %42) #4
  br label %71

71:                                               ; preds = %65, %64, %33, %32
  %72 = phi i8* [ %10, %32 ], [ %10, %33 ], [ %42, %64 ], [ %42, %65 ]
  call void @free(i8* %72) #4
  br label %73

73:                                               ; preds = %71, %39
  ret i32 -4
}

; Function Attrs: nounwind
define weak i32 @halide_error_buffer_allocation_too_large(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 {
  %5 = tail call i8* @malloc(i64 1024) #4
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !3
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ]
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0)) #4
  %12 = icmp eq i8* %1, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %17

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #4
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ]
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #4
  %20 = tail call i8* @halide_uint64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #4
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0)) #4
  %22 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #4
  br i1 %6, label %23, label %24

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %30

24:                                               ; preds = %17
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %5 to i64
  %27 = add i64 %25, 1
  %28 = sub i64 %27, %26
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #4
  tail call void @halide_error(i8* %0, i8* nonnull %5) #4
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #4
  ret i32 -5
}

; Function Attrs: nounwind
define weak i32 @halide_error_buffer_extents_negative(i8* %0, i8* %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = tail call i8* @malloc(i64 1024) #4
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !3
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ]
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0)) #4
  %12 = icmp eq i8* %1, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %17

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #4
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ]
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #4
  %20 = sext i32 %2 to i64
  %21 = tail call i8* @halide_int64_to_string(i8* %19, i8* %10, i64 %20, i32 1) #4
  %22 = tail call i8* @halide_string_to_string(i8* %21, i8* %10, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0)) #4
  %23 = sext i32 %3 to i64
  %24 = tail call i8* @halide_int64_to_string(i8* %22, i8* %10, i64 %23, i32 1) #4
  %25 = tail call i8* @halide_string_to_string(i8* %24, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #4
  br i1 %6, label %26, label %27

26:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %33

27:                                               ; preds = %17
  %28 = ptrtoint i8* %25 to i64
  %29 = ptrtoint i8* %5 to i64
  %30 = add i64 %28, 1
  %31 = sub i64 %30, %29
  %32 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %31) #4
  tail call void @halide_error(i8* %0, i8* nonnull %5) #4
  br label %33

33:                                               ; preds = %26, %27
  call void @free(i8* %5) #4
  ret i32 -28
}

; Function Attrs: nounwind
define weak i32 @halide_error_buffer_extents_too_large(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 {
  %5 = tail call i8* @malloc(i64 1024) #4
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !3
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ]
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0)) #4
  %12 = icmp eq i8* %1, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %17

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #4
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ]
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #4
  %20 = tail call i8* @halide_int64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #4
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0)) #4
  %22 = tail call i8* @halide_int64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #4
  br i1 %6, label %23, label %24

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %30

24:                                               ; preds = %17
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %5 to i64
  %27 = add i64 %25, 1
  %28 = sub i64 %27, %26
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #4
  tail call void @halide_error(i8* %0, i8* nonnull %5) #4
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #4
  ret i32 -6
}

; Function Attrs: nounwind
define weak i32 @halide_error_constraints_make_required_region_smaller(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %8 = add i32 %5, -1
  %9 = add i32 %8, %6
  %10 = add i32 %3, -1
  %11 = add i32 %10, %4
  %12 = tail call i8* @malloc(i64 1024) #4
  %13 = icmp eq i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, i8* %12, i64 1023
  store i8 0, i8* %15, align 1, !tbaa !3
  br label %16

16:                                               ; preds = %7, %14
  %17 = phi i8* [ %15, %14 ], [ null, %7 ]
  %18 = tail call i8* @halide_string_to_string(i8* %12, i8* %17, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0)) #4
  %19 = icmp eq i8* %1, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call i8* @halide_string_to_string(i8* %18, i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %24

22:                                               ; preds = %16
  %23 = tail call i8* @halide_string_to_string(i8* %18, i8* %17, i8* nonnull %1) #4
  br label %24

24:                                               ; preds = %20, %22
  %25 = phi i8* [ %23, %22 ], [ %21, %20 ]
  %26 = tail call i8* @halide_string_to_string(i8* %25, i8* %17, i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i64 0, i64 0)) #4
  %27 = sext i32 %2 to i64
  %28 = tail call i8* @halide_int64_to_string(i8* %26, i8* %17, i64 %27, i32 1) #4
  %29 = tail call i8* @halide_string_to_string(i8* %28, i8* %17, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)) #4
  %30 = tail call i8* @halide_string_to_string(i8* %29, i8* %17, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0)) #4
  %31 = sext i32 %5 to i64
  %32 = tail call i8* @halide_int64_to_string(i8* %30, i8* %17, i64 %31, i32 1) #4
  %33 = tail call i8* @halide_string_to_string(i8* %32, i8* %17, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #4
  %34 = sext i32 %9 to i64
  %35 = tail call i8* @halide_int64_to_string(i8* %33, i8* %17, i64 %34, i32 1) #4
  %36 = tail call i8* @halide_string_to_string(i8* %35, i8* %17, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)) #4
  %37 = tail call i8* @halide_string_to_string(i8* %36, i8* %17, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #4
  %38 = sext i32 %3 to i64
  %39 = tail call i8* @halide_int64_to_string(i8* %37, i8* %17, i64 %38, i32 1) #4
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %17, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #4
  %41 = sext i32 %11 to i64
  %42 = tail call i8* @halide_int64_to_string(i8* %40, i8* %17, i64 %41, i32 1) #4
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %17, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #4
  br i1 %13, label %44, label %45

44:                                               ; preds = %24
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %51

45:                                               ; preds = %24
  %46 = ptrtoint i8* %43 to i64
  %47 = ptrtoint i8* %12 to i64
  %48 = add i64 %46, 1
  %49 = sub i64 %48, %47
  %50 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %12, i64 %49) #4
  tail call void @halide_error(i8* %0, i8* nonnull %12) #4
  br label %51

51:                                               ; preds = %44, %45
  call void @free(i8* %12) #4
  ret i32 -7
}

; Function Attrs: nounwind
define weak i32 @halide_error_constraint_violated(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) local_unnamed_addr #0 {
  %6 = tail call i8* @malloc(i64 1024) #4
  %7 = icmp eq i8* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %6, i64 1023
  store i8 0, i8* %9, align 1, !tbaa !3
  br label %10

10:                                               ; preds = %5, %8
  %11 = phi i8* [ %9, %8 ], [ null, %5 ]
  %12 = tail call i8* @halide_string_to_string(i8* %6, i8* %11, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0)) #4
  %13 = icmp eq i8* %1, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %18

16:                                               ; preds = %10
  %17 = tail call i8* @halide_string_to_string(i8* %12, i8* %11, i8* nonnull %1) #4
  br label %18

18:                                               ; preds = %14, %16
  %19 = phi i8* [ %17, %16 ], [ %15, %14 ]
  %20 = tail call i8* @halide_string_to_string(i8* %19, i8* %11, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0)) #4
  %21 = sext i32 %2 to i64
  %22 = tail call i8* @halide_int64_to_string(i8* %20, i8* %11, i64 %21, i32 1) #4
  %23 = tail call i8* @halide_string_to_string(i8* %22, i8* %11, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0)) #4
  %24 = icmp eq i8* %3, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = tail call i8* @halide_string_to_string(i8* %23, i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %29

27:                                               ; preds = %18
  %28 = tail call i8* @halide_string_to_string(i8* %23, i8* %11, i8* nonnull %3) #4
  br label %29

29:                                               ; preds = %25, %27
  %30 = phi i8* [ %28, %27 ], [ %26, %25 ]
  %31 = tail call i8* @halide_string_to_string(i8* %30, i8* %11, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0)) #4
  %32 = sext i32 %4 to i64
  %33 = tail call i8* @halide_int64_to_string(i8* %31, i8* %11, i64 %32, i32 1) #4
  %34 = tail call i8* @halide_string_to_string(i8* %33, i8* %11, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #4
  br i1 %7, label %35, label %36

35:                                               ; preds = %29
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %42

36:                                               ; preds = %29
  %37 = ptrtoint i8* %34 to i64
  %38 = ptrtoint i8* %6 to i64
  %39 = add i64 %37, 1
  %40 = sub i64 %39, %38
  %41 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %40) #4
  tail call void @halide_error(i8* %0, i8* nonnull %6) #4
  br label %42

42:                                               ; preds = %35, %36
  call void @free(i8* %6) #4
  ret i32 -8
}

; Function Attrs: nounwind
define weak i32 @halide_error_param_too_small_i64(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 {
  %5 = tail call i8* @malloc(i64 1024) #4
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !3
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ]
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0)) #4
  %12 = icmp eq i8* %1, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %17

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #4
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ]
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #4
  %20 = tail call i8* @halide_int64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #4
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0)) #4
  %22 = tail call i8* @halide_int64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #4
  br i1 %6, label %23, label %24

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %30

24:                                               ; preds = %17
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %5 to i64
  %27 = add i64 %25, 1
  %28 = sub i64 %27, %26
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #4
  tail call void @halide_error(i8* %0, i8* nonnull %5) #4
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #4
  ret i32 -9
}

; Function Attrs: nounwind
define weak i32 @halide_error_param_too_small_u64(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 {
  %5 = tail call i8* @malloc(i64 1024) #4
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !3
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ]
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0)) #4
  %12 = icmp eq i8* %1, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %17

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #4
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ]
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #4
  %20 = tail call i8* @halide_uint64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #4
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0)) #4
  %22 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #4
  br i1 %6, label %23, label %24

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %30

24:                                               ; preds = %17
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %5 to i64
  %27 = add i64 %25, 1
  %28 = sub i64 %27, %26
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #4
  tail call void @halide_error(i8* %0, i8* nonnull %5) #4
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #4
  ret i32 -9
}

; Function Attrs: nounwind
define weak i32 @halide_error_param_too_small_f64(i8* %0, i8* %1, double %2, double %3) local_unnamed_addr #0 {
  %5 = tail call i8* @malloc(i64 1024) #4
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !3
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ]
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0)) #4
  %12 = icmp eq i8* %1, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %17

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #4
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ]
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #4
  %20 = tail call i8* @halide_double_to_string(i8* %19, i8* %10, double %2, i32 1) #4
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0)) #4
  %22 = tail call i8* @halide_double_to_string(i8* %21, i8* %10, double %3, i32 1) #4
  br i1 %6, label %23, label %24

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %30

24:                                               ; preds = %17
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %5 to i64
  %27 = add i64 %25, 1
  %28 = sub i64 %27, %26
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #4
  tail call void @halide_error(i8* %0, i8* nonnull %5) #4
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #4
  ret i32 -9
}

; Function Attrs: nounwind
define weak i32 @halide_error_param_too_large_i64(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 {
  %5 = tail call i8* @malloc(i64 1024) #4
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !3
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ]
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0)) #4
  %12 = icmp eq i8* %1, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %17

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #4
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ]
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #4
  %20 = tail call i8* @halide_int64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #4
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0)) #4
  %22 = tail call i8* @halide_int64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #4
  br i1 %6, label %23, label %24

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %30

24:                                               ; preds = %17
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %5 to i64
  %27 = add i64 %25, 1
  %28 = sub i64 %27, %26
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #4
  tail call void @halide_error(i8* %0, i8* nonnull %5) #4
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #4
  ret i32 -10
}

; Function Attrs: nounwind
define weak i32 @halide_error_param_too_large_u64(i8* %0, i8* %1, i64 %2, i64 %3) local_unnamed_addr #0 {
  %5 = tail call i8* @malloc(i64 1024) #4
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !3
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ]
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0)) #4
  %12 = icmp eq i8* %1, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %17

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #4
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ]
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #4
  %20 = tail call i8* @halide_uint64_to_string(i8* %19, i8* %10, i64 %2, i32 1) #4
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0)) #4
  %22 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %10, i64 %3, i32 1) #4
  br i1 %6, label %23, label %24

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %30

24:                                               ; preds = %17
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %5 to i64
  %27 = add i64 %25, 1
  %28 = sub i64 %27, %26
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #4
  tail call void @halide_error(i8* %0, i8* nonnull %5) #4
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #4
  ret i32 -10
}

; Function Attrs: nounwind
define weak i32 @halide_error_param_too_large_f64(i8* %0, i8* %1, double %2, double %3) local_unnamed_addr #0 {
  %5 = tail call i8* @malloc(i64 1024) #4
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !3
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ]
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0)) #4
  %12 = icmp eq i8* %1, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %17

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #4
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ]
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #4
  %20 = tail call i8* @halide_double_to_string(i8* %19, i8* %10, double %2, i32 1) #4
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0)) #4
  %22 = tail call i8* @halide_double_to_string(i8* %21, i8* %10, double %3, i32 1) #4
  br i1 %6, label %23, label %24

23:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %30

24:                                               ; preds = %17
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %5 to i64
  %27 = add i64 %25, 1
  %28 = sub i64 %27, %26
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #4
  tail call void @halide_error(i8* %0, i8* nonnull %5) #4
  br label %30

30:                                               ; preds = %23, %24
  call void @free(i8* %5) #4
  ret i32 -10
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_error_out_of_memory(i8* %0) local_unnamed_addr #3 {
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.37, i64 0, i64 0)) #4
  ret i32 -11
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_error_buffer_argument_is_null(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = tail call i8* @malloc(i64 1024) #4
  %4 = icmp eq i8* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023
  store i8 0, i8* %6, align 1, !tbaa !3
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ]
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0)) #4
  %10 = icmp eq i8* %1, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %15

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #4
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ]
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %8, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0)) #4
  br i1 %4, label %18, label %19

18:                                               ; preds = %15
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %25

19:                                               ; preds = %15
  %20 = ptrtoint i8* %17 to i64
  %21 = ptrtoint i8* %3 to i64
  %22 = add i64 %20, 1
  %23 = sub i64 %22, %21
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %23) #4
  tail call void @halide_error(i8* %0, i8* nonnull %3) #4
  br label %25

25:                                               ; preds = %19, %18
  tail call void @free(i8* %3) #4
  ret i32 -12
}

; Function Attrs: nounwind
define weak i32 @halide_error_debug_to_file_failed(i8* %0, i8* %1, i8* %2, i32 %3) local_unnamed_addr #0 {
  %5 = tail call i8* @malloc(i64 1024) #4
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !3
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ]
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0)) #4
  %12 = icmp eq i8* %1, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %17

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %1) #4
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ]
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0)) #4
  %20 = icmp eq i8* %2, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i8* @halide_string_to_string(i8* %19, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %25

23:                                               ; preds = %17
  %24 = tail call i8* @halide_string_to_string(i8* %19, i8* %10, i8* nonnull %2) #4
  br label %25

25:                                               ; preds = %21, %23
  %26 = phi i8* [ %24, %23 ], [ %22, %21 ]
  %27 = tail call i8* @halide_string_to_string(i8* %26, i8* %10, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0)) #4
  %28 = sext i32 %3 to i64
  %29 = tail call i8* @halide_int64_to_string(i8* %27, i8* %10, i64 %28, i32 1) #4
  br i1 %6, label %30, label %31

30:                                               ; preds = %25
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %37

31:                                               ; preds = %25
  %32 = ptrtoint i8* %29 to i64
  %33 = ptrtoint i8* %5 to i64
  %34 = add i64 %32, 1
  %35 = sub i64 %34, %33
  %36 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %35) #4
  tail call void @halide_error(i8* %0, i8* nonnull %5) #4
  br label %37

37:                                               ; preds = %30, %31
  call void @free(i8* %5) #4
  ret i32 -13
}

; Function Attrs: nounwind
define weak i32 @halide_error_unaligned_host_ptr(i8* %0, i8* %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call i8* @malloc(i64 1024) #4
  %5 = icmp eq i8* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i64 1023
  store i8 0, i8* %7, align 1, !tbaa !3
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ]
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0)) #4
  %11 = icmp eq i8* %1, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %16

14:                                               ; preds = %8
  %15 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* nonnull %1) #4
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ]
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %9, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0)) #4
  %19 = sext i32 %2 to i64
  %20 = tail call i8* @halide_int64_to_string(i8* %18, i8* %9, i64 %19, i32 1) #4
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %9, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0)) #4
  br i1 %5, label %22, label %23

22:                                               ; preds = %16
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %29

23:                                               ; preds = %16
  %24 = ptrtoint i8* %21 to i64
  %25 = ptrtoint i8* %4 to i64
  %26 = add i64 %24, 1
  %27 = sub i64 %26, %25
  %28 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %27) #4
  tail call void @halide_error(i8* %0, i8* nonnull %4) #4
  br label %29

29:                                               ; preds = %22, %23
  call void @free(i8* %4) #4
  ret i32 -24
}

; Function Attrs: nounwind
define weak i32 @halide_error_device_dirty_with_no_device_support(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = tail call i8* @malloc(i64 1024) #4
  %4 = icmp eq i8* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023
  store i8 0, i8* %6, align 1, !tbaa !3
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ]
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #4
  %10 = icmp eq i8* %1, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %15

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #4
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ]
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %8, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.47, i64 0, i64 0)) #4
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %8, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.48, i64 0, i64 0)) #4
  br i1 %4, label %19, label %20

19:                                               ; preds = %15
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %26

20:                                               ; preds = %15
  %21 = ptrtoint i8* %18 to i64
  %22 = ptrtoint i8* %3 to i64
  %23 = add i64 %21, 1
  %24 = sub i64 %23, %22
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %24) #4
  tail call void @halide_error(i8* %0, i8* nonnull %3) #4
  br label %26

26:                                               ; preds = %19, %20
  call void @free(i8* %3) #4
  ret i32 -44
}

; Function Attrs: nounwind
define weak i32 @halide_error_host_is_null(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = tail call i8* @malloc(i64 1024) #4
  %4 = icmp eq i8* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023
  store i8 0, i8* %6, align 1, !tbaa !3
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ]
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0)) #4
  %10 = icmp eq i8* %1, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %15

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #4
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ]
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %8, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.49, i64 0, i64 0)) #4
  br i1 %4, label %18, label %19

18:                                               ; preds = %15
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %25

19:                                               ; preds = %15
  %20 = ptrtoint i8* %17 to i64
  %21 = ptrtoint i8* %3 to i64
  %22 = add i64 %20, 1
  %23 = sub i64 %22, %21
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %23) #4
  tail call void @halide_error(i8* %0, i8* nonnull %3) #4
  br label %25

25:                                               ; preds = %19, %18
  tail call void @free(i8* %3) #4
  ret i32 -34
}

; Function Attrs: nounwind
define weak i32 @halide_error_bad_fold(i8* %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #0 {
  %5 = tail call i8* @malloc(i64 1024) #4
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !3
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ]
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0)) #4
  %12 = icmp eq i8* %2, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %17

15:                                               ; preds = %9
  %16 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %2) #4
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi i8* [ %16, %15 ], [ %14, %13 ]
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0)) #4
  %20 = icmp eq i8* %1, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i8* @halide_string_to_string(i8* %19, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %25

23:                                               ; preds = %17
  %24 = tail call i8* @halide_string_to_string(i8* %19, i8* %10, i8* nonnull %1) #4
  br label %25

25:                                               ; preds = %21, %23
  %26 = phi i8* [ %24, %23 ], [ %22, %21 ]
  %27 = tail call i8* @halide_string_to_string(i8* %26, i8* %10, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0)) #4
  %28 = icmp eq i8* %3, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = tail call i8* @halide_string_to_string(i8* %27, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %33

31:                                               ; preds = %25
  %32 = tail call i8* @halide_string_to_string(i8* %27, i8* %10, i8* nonnull %3) #4
  br label %33

33:                                               ; preds = %29, %31
  %34 = phi i8* [ %32, %31 ], [ %30, %29 ]
  %35 = tail call i8* @halide_string_to_string(i8* %34, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #4
  br i1 %6, label %36, label %37

36:                                               ; preds = %33
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %43

37:                                               ; preds = %33
  %38 = ptrtoint i8* %35 to i64
  %39 = ptrtoint i8* %5 to i64
  %40 = add i64 %38, 1
  %41 = sub i64 %40, %39
  %42 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %41) #4
  tail call void @halide_error(i8* %0, i8* nonnull %5) #4
  br label %43

43:                                               ; preds = %36, %37
  call void @free(i8* %5) #4
  ret i32 -25
}

; Function Attrs: nounwind
define weak i32 @halide_error_bad_extern_fold(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %8 = icmp slt i32 %3, %5
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = add nsw i32 %4, %3
  %11 = add nsw i32 %6, %5
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %9, %7
  %14 = tail call i8* @malloc(i64 1024) #4
  %15 = icmp eq i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, i8* %14, i64 1023
  store i8 0, i8* %17, align 1, !tbaa !3
  br label %18

18:                                               ; preds = %13, %16
  %19 = phi i8* [ %17, %16 ], [ null, %13 ]
  %20 = tail call i8* @halide_string_to_string(i8* %14, i8* %19, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i64 0, i64 0)) #4
  %21 = sext i32 %2 to i64
  %22 = tail call i8* @halide_int64_to_string(i8* %20, i8* %19, i64 %21, i32 1) #4
  %23 = tail call i8* @halide_string_to_string(i8* %22, i8* %19, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0)) #4
  %24 = icmp eq i8* %1, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = tail call i8* @halide_string_to_string(i8* %23, i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %29

27:                                               ; preds = %18
  %28 = tail call i8* @halide_string_to_string(i8* %23, i8* %19, i8* nonnull %1) #4
  br label %29

29:                                               ; preds = %25, %27
  %30 = phi i8* [ %28, %27 ], [ %26, %25 ]
  %31 = tail call i8* @halide_string_to_string(i8* %30, i8* %19, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0)) #4
  %32 = sext i32 %3 to i64
  %33 = tail call i8* @halide_int64_to_string(i8* %31, i8* %19, i64 %32, i32 1) #4
  %34 = tail call i8* @halide_string_to_string(i8* %33, i8* %19, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #4
  %35 = add nsw i32 %4, %3
  %36 = add nsw i32 %35, -1
  %37 = sext i32 %36 to i64
  %38 = tail call i8* @halide_int64_to_string(i8* %34, i8* %19, i64 %37, i32 1) #4
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %19, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #4
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %19, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.57, i64 0, i64 0)) #4
  %41 = sext i32 %5 to i64
  %42 = tail call i8* @halide_int64_to_string(i8* %40, i8* %19, i64 %41, i32 1) #4
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %19, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #4
  %44 = add nsw i32 %6, %5
  %45 = add nsw i32 %44, -1
  %46 = sext i32 %45 to i64
  %47 = tail call i8* @halide_int64_to_string(i8* %43, i8* %19, i64 %46, i32 1) #4
  %48 = tail call i8* @halide_string_to_string(i8* %47, i8* %19, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0)) #4
  br i1 %15, label %49, label %50

49:                                               ; preds = %29
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %94

50:                                               ; preds = %29
  %51 = ptrtoint i8* %48 to i64
  %52 = ptrtoint i8* %14 to i64
  %53 = add i64 %51, 1
  %54 = sub i64 %53, %52
  %55 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %14, i64 %54) #4
  tail call void @halide_error(i8* %0, i8* nonnull %14) #4
  br label %94

56:                                               ; preds = %9
  %57 = tail call i8* @malloc(i64 1024) #4
  %58 = icmp eq i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, i8* %57, i64 1023
  store i8 0, i8* %60, align 1, !tbaa !3
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi i8* [ %60, %59 ], [ null, %56 ]
  %63 = tail call i8* @halide_string_to_string(i8* %57, i8* %62, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i64 0, i64 0)) #4
  %64 = sext i32 %2 to i64
  %65 = tail call i8* @halide_int64_to_string(i8* %63, i8* %62, i64 %64, i32 1) #4
  %66 = tail call i8* @halide_string_to_string(i8* %65, i8* %62, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0)) #4
  %67 = icmp eq i8* %1, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = tail call i8* @halide_string_to_string(i8* %66, i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %72

70:                                               ; preds = %61
  %71 = tail call i8* @halide_string_to_string(i8* %66, i8* %62, i8* nonnull %1) #4
  br label %72

72:                                               ; preds = %68, %70
  %73 = phi i8* [ %71, %70 ], [ %69, %68 ]
  %74 = tail call i8* @halide_string_to_string(i8* %73, i8* %62, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0)) #4
  %75 = sext i32 %3 to i64
  %76 = tail call i8* @halide_int64_to_string(i8* %74, i8* %62, i64 %75, i32 1) #4
  %77 = tail call i8* @halide_string_to_string(i8* %76, i8* %62, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #4
  %78 = add nsw i32 %10, -1
  %79 = sext i32 %78 to i64
  %80 = tail call i8* @halide_int64_to_string(i8* %77, i8* %62, i64 %79, i32 1) #4
  %81 = tail call i8* @halide_string_to_string(i8* %80, i8* %62, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #4
  %82 = tail call i8* @halide_string_to_string(i8* %81, i8* %62, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.59, i64 0, i64 0)) #4
  %83 = tail call i8* @halide_string_to_string(i8* %82, i8* %62, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i64 0, i64 0)) #4
  %84 = sext i32 %6 to i64
  %85 = tail call i8* @halide_int64_to_string(i8* %83, i8* %62, i64 %84, i32 1) #4
  %86 = tail call i8* @halide_string_to_string(i8* %85, i8* %62, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #4
  br i1 %58, label %87, label %88

87:                                               ; preds = %72
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %94

88:                                               ; preds = %72
  %89 = ptrtoint i8* %86 to i64
  %90 = ptrtoint i8* %57 to i64
  %91 = add i64 %89, 1
  %92 = sub i64 %91, %90
  %93 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %57, i64 %92) #4
  tail call void @halide_error(i8* %0, i8* nonnull %57) #4
  br label %94

94:                                               ; preds = %88, %87, %50, %49
  %95 = phi i8* [ %14, %49 ], [ %14, %50 ], [ %57, %87 ], [ %57, %88 ]
  call void @free(i8* %95) #4
  ret i32 -35
}

; Function Attrs: nounwind
define weak i32 @halide_error_fold_factor_too_small(i8* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5) local_unnamed_addr #0 {
  %7 = tail call i8* @malloc(i64 1024) #4
  %8 = icmp eq i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i64 1023
  store i8 0, i8* %10, align 1, !tbaa !3
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i8* [ %10, %9 ], [ null, %6 ]
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %12, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i64 0, i64 0)) #4
  %14 = sext i32 %3 to i64
  %15 = tail call i8* @halide_int64_to_string(i8* %13, i8* %12, i64 %14, i32 1) #4
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %12, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i64 0, i64 0)) #4
  %17 = icmp eq i8* %2, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = tail call i8* @halide_string_to_string(i8* %16, i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %22

20:                                               ; preds = %11
  %21 = tail call i8* @halide_string_to_string(i8* %16, i8* %12, i8* nonnull %2) #4
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i8* [ %21, %20 ], [ %19, %18 ]
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %12, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0)) #4
  %25 = icmp eq i8* %1, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call i8* @halide_string_to_string(i8* %24, i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %30

28:                                               ; preds = %22
  %29 = tail call i8* @halide_string_to_string(i8* %24, i8* %12, i8* nonnull %1) #4
  br label %30

30:                                               ; preds = %26, %28
  %31 = phi i8* [ %29, %28 ], [ %27, %26 ]
  %32 = tail call i8* @halide_string_to_string(i8* %31, i8* %12, i8* nonnull getelementptr inbounds ([61 x i8], [61 x i8]* @.str.63, i64 0, i64 0)) #4
  %33 = icmp eq i8* %4, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call i8* @halide_string_to_string(i8* %32, i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %38

36:                                               ; preds = %30
  %37 = tail call i8* @halide_string_to_string(i8* %32, i8* %12, i8* nonnull %4) #4
  br label %38

38:                                               ; preds = %34, %36
  %39 = phi i8* [ %37, %36 ], [ %35, %34 ]
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %12, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0)) #4
  %41 = sext i32 %5 to i64
  %42 = tail call i8* @halide_int64_to_string(i8* %40, i8* %12, i64 %41, i32 1) #4
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %12, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0)) #4
  br i1 %8, label %44, label %45

44:                                               ; preds = %38
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %51

45:                                               ; preds = %38
  %46 = ptrtoint i8* %43 to i64
  %47 = ptrtoint i8* %7 to i64
  %48 = add i64 %46, 1
  %49 = sub i64 %48, %47
  %50 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %49) #4
  tail call void @halide_error(i8* %0, i8* nonnull %7) #4
  br label %51

51:                                               ; preds = %44, %45
  call void @free(i8* %7) #4
  ret i32 -26
}

; Function Attrs: nounwind
define weak i32 @halide_error_requirement_failed(i8* %0, i8* %1, i8* %2) local_unnamed_addr #0 {
  %4 = tail call i8* @malloc(i64 1024) #4
  %5 = icmp eq i8* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i64 1023
  store i8 0, i8* %7, align 1, !tbaa !3
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ]
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0)) #4
  %11 = icmp eq i8* %1, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %16

14:                                               ; preds = %8
  %15 = tail call i8* @halide_string_to_string(i8* %10, i8* %9, i8* nonnull %1) #4
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ]
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %9, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #4
  %19 = icmp eq i8* %2, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call i8* @halide_string_to_string(i8* %18, i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %24

22:                                               ; preds = %16
  %23 = tail call i8* @halide_string_to_string(i8* %18, i8* %9, i8* nonnull %2) #4
  br label %24

24:                                               ; preds = %20, %22
  %25 = phi i8* [ %23, %22 ], [ %21, %20 ]
  br i1 %5, label %26, label %27

26:                                               ; preds = %24
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %33

27:                                               ; preds = %24
  %28 = ptrtoint i8* %25 to i64
  %29 = ptrtoint i8* %4 to i64
  %30 = sub i64 1, %29
  %31 = add i64 %30, %28
  %32 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %31) #4
  tail call void @halide_error(i8* %0, i8* nonnull %4) #4
  br label %33

33:                                               ; preds = %26, %27
  call void @free(i8* %4) #4
  ret i32 -27
}

; Function Attrs: nounwind
define weak i32 @halide_error_specialize_fail(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = tail call i8* @malloc(i64 1024) #4
  %4 = icmp eq i8* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023
  store i8 0, i8* %6, align 1, !tbaa !3
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ]
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.67, i64 0, i64 0)) #4
  %10 = icmp eq i8* %1, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %15

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #4
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ]
  br i1 %4, label %17, label %18

17:                                               ; preds = %15
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %24

18:                                               ; preds = %15
  %19 = ptrtoint i8* %16 to i64
  %20 = ptrtoint i8* %3 to i64
  %21 = sub i64 1, %20
  %22 = add i64 %21, %19
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %22) #4
  tail call void @halide_error(i8* %0, i8* nonnull %3) #4
  br label %24

24:                                               ; preds = %18, %17
  tail call void @free(i8* %3) #4
  ret i32 -31
}

; Function Attrs: nounwind
define weak i32 @halide_error_no_device_interface(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @malloc(i64 1024) #4
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i8* @halide_string_to_string(i8* %2, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.68, i64 0, i64 0)) #4
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %2, i64 1023
  store i8 0, i8* %7, align 1, !tbaa !3
  %8 = tail call i8* @halide_string_to_string(i8* nonnull %2, i8* nonnull %7, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.68, i64 0, i64 0)) #4
  %9 = ptrtoint i8* %8 to i64
  %10 = ptrtoint i8* %2 to i64
  %11 = add i64 %9, 1
  %12 = sub i64 %11, %10
  %13 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %12) #4
  tail call void @halide_error(i8* %0, i8* nonnull %2) #4
  br label %14

14:                                               ; preds = %6, %4
  tail call void @free(i8* %2) #4
  ret i32 -19
}

; Function Attrs: nounwind
define weak i32 @halide_error_device_interface_no_device(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @malloc(i64 1024) #4
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i8* @halide_string_to_string(i8* %2, i8* null, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.69, i64 0, i64 0)) #4
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %2, i64 1023
  store i8 0, i8* %7, align 1, !tbaa !3
  %8 = tail call i8* @halide_string_to_string(i8* nonnull %2, i8* nonnull %7, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.69, i64 0, i64 0)) #4
  %9 = ptrtoint i8* %8 to i64
  %10 = ptrtoint i8* %2 to i64
  %11 = add i64 %9, 1
  %12 = sub i64 %11, %10
  %13 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %12) #4
  tail call void @halide_error(i8* %0, i8* nonnull %2) #4
  br label %14

14:                                               ; preds = %6, %4
  tail call void @free(i8* %2) #4
  ret i32 -36
}

; Function Attrs: nounwind
define weak i32 @halide_error_host_and_device_dirty(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @malloc(i64 1024) #4
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i8* @halide_string_to_string(i8* %2, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.70, i64 0, i64 0)) #4
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %2, i64 1023
  store i8 0, i8* %7, align 1, !tbaa !3
  %8 = tail call i8* @halide_string_to_string(i8* nonnull %2, i8* nonnull %7, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.70, i64 0, i64 0)) #4
  %9 = ptrtoint i8* %8 to i64
  %10 = ptrtoint i8* %2 to i64
  %11 = add i64 %9, 1
  %12 = sub i64 %11, %10
  %13 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %12) #4
  tail call void @halide_error(i8* %0, i8* nonnull %2) #4
  br label %14

14:                                               ; preds = %6, %4
  tail call void @free(i8* %2) #4
  ret i32 -37
}

; Function Attrs: nounwind
define weak i32 @halide_error_buffer_is_null(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = tail call i8* @malloc(i64 1024) #4
  %4 = icmp eq i8* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023
  store i8 0, i8* %6, align 1, !tbaa !3
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ]
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i64 0, i64 0)) #4
  %10 = icmp eq i8* %1, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #4
  br label %15

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #4
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ]
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %8, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0)) #4
  br i1 %4, label %18, label %19

18:                                               ; preds = %15
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #4
  br label %25

19:                                               ; preds = %15
  %20 = ptrtoint i8* %17 to i64
  %21 = ptrtoint i8* %3 to i64
  %22 = add i64 %20, 1
  %23 = sub i64 %22, %21
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %23) #4
  tail call void @halide_error(i8* %0, i8* nonnull %3) #4
  br label %25

25:                                               ; preds = %19, %18
  tail call void @free(i8* %3) #4
  ret i32 -38
}

declare i8* @malloc(i64) local_unnamed_addr #2

declare void @free(i8*) local_unnamed_addr #2

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

declare extern_weak i8* @halide_type_to_string(i8*, i8*, %struct.halide_type_t*) local_unnamed_addr #2

declare extern_weak i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

declare extern_weak i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #2

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS13halide_type_t", !10, i64 0, !4, i64 1, !11, i64 2}
!10 = !{!"_ZTS18halide_type_code_t", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!9, !4, i64 1}
!13 = !{!9, !11, i64 2}
!14 = !{!15, !16, i64 24}
!15 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEE", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !17, i64 32, !4, i64 33}
!16 = !{!"any pointer", !4, i64 0}
!17 = !{!"bool", !4, i64 0}
!18 = !{!15, !17, i64 32}
!19 = !{!15, !16, i64 0}
!20 = !{!15, !16, i64 8}
!21 = !{!15, !16, i64 16}
!22 = !{i8 0, i8 2}
