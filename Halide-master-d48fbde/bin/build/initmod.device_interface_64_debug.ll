; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/device_interface.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/device_interface.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }

@.str = private unnamed_addr constant [55 x i8] c"copy_memory: no copy needed as pointers are the same.\0A\00", align 1
@_ZN6Halide7Runtime8Internal17device_copy_mutexE = weak dso_local global %struct.halide_mutex zeroinitializer, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [29 x i8] c"copy_to_host_already_locked \00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c" dev_dirty is true\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c" dev_dirty and host_dirty are true\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c" interface is nullptr\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c" device copy_to_host returned an error\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"halide_copy_to_host\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"halide_copy_to_device\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"halide_copy_to_device \00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"halide_copy_to_device does not support switching interfaces\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c" halide_copy_to_device call to halide_device_malloc failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c" host is dirty\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c" dev_dirty is true error\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c" calling copy_to_device()\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"device copy_to_device returned an error\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c" skipped (host is not dirty)\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"halide_device_sync\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"halide_device_malloc\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"halide_device_malloc: target device interface \00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"halide_device_malloc doesn't support switching interfaces\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"halide_device_free\00", align 1
@.str.22 = private unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/device_interface.cpp:252 Assert failed: buf->device == 0\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"halide_device_and_host_malloc\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"halide_device_and_host_malloc: target device interface \00", align 1
@.str.25 = private unnamed_addr constant [68 x i8] c"halide_device_and_host_malloc doesn't support switching interfaces\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"allocating host and device memory failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"halide_device_and_host_free\00", align 1
@.str.28 = private unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/device_interface.cpp:317 Assert failed: buf->device == 0\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"halide_default_device_and_host_malloc\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"halide_default_device_and_host_free\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"halide_device_wrap_native\00", align 1
@.str.32 = private unnamed_addr constant [64 x i8] c"halide_device_wrap_native doesn't support switching interfaces\0A\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"halide_device_detach_native\00", align 1
@.str.34 = private unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/device_interface.cpp:403 Assert failed: buf->device == 0\0A\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"halide_default_device_wrap_native\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"halide_default_device_detach_native\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"halide_default_buffer_copy\0A\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c" source: \00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c" dst_device_interface: \00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c" dst: \00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"halide_buffer_copy_already_locked called.\0A\00", align 1
@.str.42 = private unnamed_addr constant [64 x i8] c"halide_buffer_copy does not support switching device interfaces\00", align 1
@.str.43 = private unnamed_addr constant [66 x i8] c"halide_buffer_copy_already_locked: calling halide_device_malloc.\0A\00", align 1
@.str.44 = private unnamed_addr constant [59 x i8] c"halide_buffer_copy_already_locked: device to device case.\0A\00", align 1
@.str.45 = private unnamed_addr constant [73 x i8] c"halide_buffer_copy_already_locked: failing due to need for temp buffer.\0A\00", align 1
@.str.46 = private unnamed_addr constant [50 x i8] c"halide_buffer_copy_already_locked: to host case.\0A\00", align 1
@.str.47 = private unnamed_addr constant [78 x i8] c"halide_buffer_copy_already_locked: from_device_valid && to_host_exists case.\0A\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c" device -> device via dst host memory\0A\00", align 1
@.str.49 = private unnamed_addr constant [68 x i8] c"halide_buffer_copy_already_locked: dev -> dev via src host memory.\0A\00", align 1
@.str.50 = private unnamed_addr constant [46 x i8] c"halide_buffer_copy_already_locked: got error \00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.52 = private unnamed_addr constant [58 x i8] c"halide_buffer_copy_already_locked: setting device dirty.\0A\00", align 1
@.str.53 = private unnamed_addr constant [56 x i8] c"halide_buffer_copy_already_locked: setting host dirty.\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"halide_buffer_copy:\0A\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c" src \00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c" interface \00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c" dst \00", align 1
@.str.58 = private unnamed_addr constant [44 x i8] c"device_interface does not support cropping\0A\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"device_interface does not support slicing\0A\00", align 1
@.str.60 = private unnamed_addr constant [52 x i8] c"destination buffer already has a device allocation\0A\00", align 1
@.str.61 = private unnamed_addr constant [48 x i8] c"src and dst must have identical dimensionality\0A\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"halide_device_crop \00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c" src: \00", align 1
@.str.64 = private unnamed_addr constant [52 x i8] c"dst must have exactly one fewer dimension than src\0A\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c" validating input buffer: \00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !360 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !379, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i32 %1, metadata !380, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i64 %2, metadata !381, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i64 %3, metadata !382, metadata !DIExpression()), !dbg !390
  %5 = icmp sgt i32 %1, -1, !dbg !391
  br i1 %5, label %6, label %15, !dbg !392

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !380, metadata !DIExpression()), !dbg !390
  %8 = zext i32 %7 to i64, !dbg !393
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8, !dbg !393
  %10 = load i64, i64* %9, align 8, !dbg !393, !tbaa !394
  %11 = icmp eq i64 %10, 1, !dbg !398
  br i1 %11, label %12, label %15, !dbg !399

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1, !dbg !400
  call void @llvm.dbg.value(metadata i32 %13, metadata !380, metadata !DIExpression()), !dbg !390
  %14 = icmp sgt i32 %7, 0, !dbg !391
  br i1 %14, label %6, label %27, !dbg !392, !llvm.loop !402

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1, !dbg !405
  br i1 %17, label %27, label %18, !dbg !406

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !387, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %2, metadata !381, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i64 %3, metadata !382, metadata !DIExpression()), !dbg !390
  %19 = sext i32 %16 to i64, !dbg !408
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19, !dbg !408
  %21 = load i64, i64* %20, align 8, !dbg !408, !tbaa !394
  %22 = icmp eq i64 %21, 0, !dbg !410
  br i1 %22, label %50, label %23, !dbg !411

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %39, !dbg !411

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !412
  %29 = load i64, i64* %28, align 8, !dbg !412, !tbaa !413
  %30 = add i64 %29, %2, !dbg !415
  %31 = inttoptr i64 %30 to i8*, !dbg !416
  call void @llvm.dbg.value(metadata i8* %31, metadata !383, metadata !DIExpression()), !dbg !417
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !418
  %33 = load i64, i64* %32, align 8, !dbg !418, !tbaa !419
  %34 = add i64 %33, %3, !dbg !420
  %35 = inttoptr i64 %34 to i8*, !dbg !421
  call void @llvm.dbg.value(metadata i8* %35, metadata !386, metadata !DIExpression()), !dbg !417
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6, !dbg !422
  %37 = load i64, i64* %36, align 8, !dbg !422, !tbaa !423
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #7, !dbg !424
  br label %50, !dbg !425

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %2, %23 ], [ %44, %39 ]
  %42 = phi i64 [ %3, %23 ], [ %46, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !387, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %41, metadata !381, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i64 %42, metadata !382, metadata !DIExpression()), !dbg !390
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %41, i64 %42) #8, !dbg !426
  %43 = load i64, i64* %25, align 8, !dbg !428, !tbaa !394
  %44 = add i64 %43, %41, !dbg !429
  call void @llvm.dbg.value(metadata i64 %44, metadata !381, metadata !DIExpression()), !dbg !390
  %45 = load i64, i64* %26, align 8, !dbg !430, !tbaa !394
  %46 = add i64 %45, %42, !dbg !431
  call void @llvm.dbg.value(metadata i64 %46, metadata !382, metadata !DIExpression()), !dbg !390
  %47 = add nuw i64 %40, 1, !dbg !432
  call void @llvm.dbg.value(metadata i64 %47, metadata !387, metadata !DIExpression()), !dbg !407
  %48 = load i64, i64* %20, align 8, !dbg !408, !tbaa !394
  %49 = icmp ult i64 %47, %48, !dbg !410
  br i1 %49, label %39, label %50, !dbg !411, !llvm.loop !433

50:                                               ; preds = %39, %18, %27
  ret void, !dbg !435
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !436 dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #4 !dbg !440 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !444, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i8* %1, metadata !445, metadata !DIExpression()), !dbg !446
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !447
  %4 = load i64, i64* %3, align 8, !dbg !447, !tbaa !413
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !449
  %6 = load i64, i64* %5, align 8, !dbg !449, !tbaa !419
  %7 = icmp eq i64 %4, %6, !dbg !450
  br i1 %7, label %11, label %8, !dbg !451

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 2, !dbg !452
  %10 = load i64, i64* %9, align 8, !dbg !452, !tbaa !454
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #8, !dbg !455
  br label %25, !dbg !456

11:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !463
  call void @llvm.dbg.value(metadata i8* %1, metadata !460, metadata !DIExpression()) #9, !dbg !463
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !463
  %12 = tail call i8* @malloc(i64 1024) #7, !dbg !466
  %13 = icmp eq i8* %12, null, !dbg !471
  br i1 %13, label %14, label %16, !dbg !473

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !478
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !478
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0)) #7, !dbg !480
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !486
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !488
  br label %24, !dbg !492

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i64 1023, !dbg !493
  store i8 0, i8* %17, align 1, !dbg !495, !tbaa !496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !478
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !478
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0)) #7, !dbg !480
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !486
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !500
  %19 = ptrtoint i8* %18 to i64, !dbg !503
  %20 = ptrtoint i8* %12 to i64, !dbg !503
  %21 = add i64 %19, 1, !dbg !503
  %22 = sub i64 %21, %20, !dbg !504
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %12, i64 %22) #7, !dbg !505
  tail call void @halide_print(i8* %1, i8* nonnull %12) #7, !dbg !506
  br label %24

24:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #7, !dbg !510
  br label %25

25:                                               ; preds = %24, %8
  ret void, !dbg !513
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 !dbg !514 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !519, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata i1 %2, metadata !520, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !546
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !521, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata i1 %4, metadata !522, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !546
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*, !dbg !547
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #9, !dbg !547
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %6, metadata !523, metadata !DIExpression()), !dbg !548
  br i1 %2, label %8, label %12, !dbg !549

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !550
  %10 = load i8*, i8** %9, align 8, !dbg !550, !tbaa !551
  %11 = ptrtoint i8* %10 to i64, !dbg !558
  br label %15, !dbg !549

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !559
  %14 = load i64, i64* %13, align 8, !dbg !559, !tbaa !560
  br label %15, !dbg !549

15:                                               ; preds = %12, %8
  %16 = phi i64 [ %11, %8 ], [ %14, %12 ], !dbg !549
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 0, !dbg !561
  store i64 %16, i64* %17, align 8, !dbg !562, !tbaa !413
  br i1 %4, label %18, label %22, !dbg !563

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2, !dbg !564
  %20 = load i8*, i8** %19, align 8, !dbg !564, !tbaa !551
  %21 = ptrtoint i8* %20 to i64, !dbg !565
  br label %25, !dbg !563

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0, !dbg !566
  %24 = load i64, i64* %23, align 8, !dbg !566, !tbaa !560
  br label %25, !dbg !563

25:                                               ; preds = %22, %18
  %26 = phi i64 [ %21, %18 ], [ %24, %22 ], !dbg !563
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 1, !dbg !567
  store i64 %26, i64* %27, align 8, !dbg !568, !tbaa !419
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !573
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !575
  %29 = load i8, i8* %28, align 1, !dbg !575, !tbaa !576
  %30 = zext i8 %29 to i32, !dbg !575
  %31 = add nuw nsw i32 %30, 7, !dbg !577
  %32 = lshr i32 %31, 3, !dbg !578
  %33 = zext i32 %32 to i64, !dbg !579
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 6, !dbg !580
  store i64 %33, i64* %34, align 8, !dbg !581, !tbaa !423
  call void @llvm.dbg.value(metadata i32 0, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 0, metadata !524, metadata !DIExpression()), !dbg !582
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 0, !dbg !583
  store i64 1, i64* %35, align 8, !dbg !586, !tbaa !394
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 0, !dbg !587
  store i64 0, i64* %36, align 8, !dbg !588, !tbaa !394
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 0, !dbg !589
  store i64 0, i64* %37, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 1, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 1, metadata !524, metadata !DIExpression()), !dbg !582
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 1, !dbg !583
  store i64 1, i64* %38, align 8, !dbg !586, !tbaa !394
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 1, !dbg !587
  store i64 0, i64* %39, align 8, !dbg !588, !tbaa !394
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 1, !dbg !589
  store i64 0, i64* %40, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 2, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 2, metadata !524, metadata !DIExpression()), !dbg !582
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 2, !dbg !583
  store i64 1, i64* %41, align 8, !dbg !586, !tbaa !394
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 2, !dbg !587
  store i64 0, i64* %42, align 8, !dbg !588, !tbaa !394
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 2, !dbg !589
  store i64 0, i64* %43, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 3, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 3, metadata !524, metadata !DIExpression()), !dbg !582
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 3, !dbg !583
  store i64 1, i64* %44, align 8, !dbg !586, !tbaa !394
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 3, !dbg !587
  store i64 0, i64* %45, align 8, !dbg !588, !tbaa !394
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 3, !dbg !589
  store i64 0, i64* %46, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 4, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 4, metadata !524, metadata !DIExpression()), !dbg !582
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 4, !dbg !583
  store i64 1, i64* %47, align 8, !dbg !586, !tbaa !394
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 4, !dbg !587
  store i64 0, i64* %48, align 8, !dbg !588, !tbaa !394
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 4, !dbg !589
  store i64 0, i64* %49, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 5, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 5, metadata !524, metadata !DIExpression()), !dbg !582
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 5, !dbg !583
  store i64 1, i64* %50, align 8, !dbg !586, !tbaa !394
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 5, !dbg !587
  store i64 0, i64* %51, align 8, !dbg !588, !tbaa !394
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 5, !dbg !589
  store i64 0, i64* %52, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 6, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 6, metadata !524, metadata !DIExpression()), !dbg !582
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 6, !dbg !583
  store i64 1, i64* %53, align 8, !dbg !586, !tbaa !394
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 6, !dbg !587
  store i64 0, i64* %54, align 8, !dbg !588, !tbaa !394
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 6, !dbg !589
  store i64 0, i64* %55, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 7, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 7, metadata !524, metadata !DIExpression()), !dbg !582
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 7, !dbg !583
  store i64 1, i64* %56, align 8, !dbg !586, !tbaa !394
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 7, !dbg !587
  store i64 0, i64* %57, align 8, !dbg !588, !tbaa !394
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 7, !dbg !589
  store i64 0, i64* %58, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 8, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 8, metadata !524, metadata !DIExpression()), !dbg !582
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 8, !dbg !583
  store i64 1, i64* %59, align 8, !dbg !586, !tbaa !394
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 8, !dbg !587
  store i64 0, i64* %60, align 8, !dbg !588, !tbaa !394
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 8, !dbg !589
  store i64 0, i64* %61, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 9, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 9, metadata !524, metadata !DIExpression()), !dbg !582
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 9, !dbg !583
  store i64 1, i64* %62, align 8, !dbg !586, !tbaa !394
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 9, !dbg !587
  store i64 0, i64* %63, align 8, !dbg !588, !tbaa !394
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 9, !dbg !589
  store i64 0, i64* %64, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 10, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 10, metadata !524, metadata !DIExpression()), !dbg !582
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 10, !dbg !583
  store i64 1, i64* %65, align 8, !dbg !586, !tbaa !394
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 10, !dbg !587
  store i64 0, i64* %66, align 8, !dbg !588, !tbaa !394
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 10, !dbg !589
  store i64 0, i64* %67, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 11, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 11, metadata !524, metadata !DIExpression()), !dbg !582
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 11, !dbg !583
  store i64 1, i64* %68, align 8, !dbg !586, !tbaa !394
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 11, !dbg !587
  store i64 0, i64* %69, align 8, !dbg !588, !tbaa !394
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 11, !dbg !589
  store i64 0, i64* %70, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 12, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 12, metadata !524, metadata !DIExpression()), !dbg !582
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 12, !dbg !583
  store i64 1, i64* %71, align 8, !dbg !586, !tbaa !394
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 12, !dbg !587
  store i64 0, i64* %72, align 8, !dbg !588, !tbaa !394
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 12, !dbg !589
  store i64 0, i64* %73, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 13, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 13, metadata !524, metadata !DIExpression()), !dbg !582
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 13, !dbg !583
  store i64 1, i64* %74, align 8, !dbg !586, !tbaa !394
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 13, !dbg !587
  store i64 0, i64* %75, align 8, !dbg !588, !tbaa !394
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 13, !dbg !589
  store i64 0, i64* %76, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 14, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 14, metadata !524, metadata !DIExpression()), !dbg !582
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 14, !dbg !583
  store i64 1, i64* %77, align 8, !dbg !586, !tbaa !394
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 14, !dbg !587
  store i64 0, i64* %78, align 8, !dbg !588, !tbaa !394
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 14, !dbg !589
  store i64 0, i64* %79, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 15, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i64 15, metadata !524, metadata !DIExpression()), !dbg !582
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 15, !dbg !583
  store i64 1, i64* %80, align 8, !dbg !586, !tbaa !394
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 15, !dbg !587
  store i64 0, i64* %81, align 8, !dbg !588, !tbaa !394
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 15, !dbg !589
  store i64 0, i64* %82, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata i64 16, metadata !524, metadata !DIExpression()), !dbg !582
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 2, !dbg !591
  call void @llvm.dbg.value(metadata i32 0, metadata !526, metadata !DIExpression()), !dbg !592
  %84 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !593
  %85 = load i32, i32* %84, align 4, !dbg !593, !tbaa !595
  %86 = icmp sgt i32 %85, 0, !dbg !596
  br i1 %86, label %87, label %93, !dbg !597

87:                                               ; preds = %25
  %88 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %89 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %88, align 8, !tbaa !598
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !598
  %92 = zext i32 %85 to i64, !dbg !596
  br label %100, !dbg !597

93:                                               ; preds = %100, %25
  %94 = phi i64 [ 0, %25 ], [ %113, %100 ], !dbg !599
  %95 = load i64, i64* %34, align 8, !dbg !600, !tbaa !423
  %96 = mul i64 %94, %95, !dbg !599
  store i64 %96, i64* %83, align 8, !dbg !599, !tbaa !454
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5, !dbg !601
  %98 = load i32, i32* %97, align 4, !dbg !601, !tbaa !595
  %99 = icmp eq i32 %85, %98, !dbg !602
  br i1 %99, label %116, label %125, !dbg !603

100:                                              ; preds = %87, %100
  %101 = phi i64 [ 0, %87 ], [ %114, %100 ], !dbg !592
  %102 = phi i64 [ 0, %87 ], [ %113, %100 ], !dbg !592
  call void @llvm.dbg.value(metadata i64 %101, metadata !526, metadata !DIExpression()), !dbg !592
  %103 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 2, !dbg !604
  %104 = load i32, i32* %103, align 4, !dbg !604, !tbaa !606
  %105 = sext i32 %104 to i64, !dbg !608
  %106 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i64 %101, i32 0, !dbg !609
  %107 = load i32, i32* %106, align 4, !dbg !609, !tbaa !610
  %108 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 0, !dbg !611
  %109 = load i32, i32* %108, align 4, !dbg !611, !tbaa !610
  %110 = sub nsw i32 %107, %109, !dbg !612
  %111 = sext i32 %110 to i64, !dbg !613
  %112 = mul nsw i64 %111, %105, !dbg !614
  %113 = add i64 %112, %102, !dbg !615
  %114 = add nuw nsw i64 %101, 1, !dbg !616
  call void @llvm.dbg.value(metadata i64 %114, metadata !526, metadata !DIExpression()), !dbg !592
  %115 = icmp eq i64 %114, %92, !dbg !596
  br i1 %115, label %93, label %100, !dbg !597, !llvm.loop !617

116:                                              ; preds = %93
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !619
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !621
  %117 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1, !dbg !623
  %118 = load i8, i8* %117, align 1, !dbg !623, !tbaa !576
  %119 = zext i8 %118 to i32, !dbg !623
  %120 = add nuw nsw i32 %119, 7, !dbg !624
  %121 = lshr i32 %120, 3, !dbg !625
  %122 = icmp ne i32 %32, %121, !dbg !626
  %123 = icmp sgt i32 %85, 16
  %124 = or i1 %123, %122, !dbg !627
  br i1 %124, label %125, label %127, !dbg !627

125:                                              ; preds = %116, %93
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !528, metadata !DIExpression()), !dbg !628
  %126 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !628
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %126, i8 0, i64 416, i1 false), !dbg !628
  br label %253, !dbg !629

127:                                              ; preds = %116
  %128 = icmp eq i64 %95, 0, !dbg !630
  br i1 %128, label %136, label %129, !dbg !631

129:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i32 0, metadata !534, metadata !DIExpression()), !dbg !632
  br i1 %86, label %130, label %251, !dbg !633

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %132 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %131, align 8, !tbaa !598
  %133 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %134 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %133, align 8, !tbaa !598
  %135 = zext i32 %85 to i64, !dbg !634
  br label %144, !dbg !633

136:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !531, metadata !DIExpression()), !dbg !635
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !635
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i64 416, i1 false), !dbg !635
  br label %253, !dbg !636

138:                                              ; preds = %176
  %139 = load i64, i64* %34, align 8, !dbg !637, !tbaa !423
  %140 = load i64, i64* %36, align 8, !dbg !638, !tbaa !394
  %141 = icmp eq i64 %139, %140, !dbg !639
  br i1 %141, label %142, label %251, !dbg !640

142:                                              ; preds = %138
  %143 = load i64, i64* %37, align 8, !dbg !641, !tbaa !394
  br label %198, !dbg !640

144:                                              ; preds = %130, %176
  %145 = phi i64 [ 0, %130 ], [ %183, %176 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !534, metadata !DIExpression()), !dbg !632
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 2, !dbg !642
  %147 = load i32, i32* %146, align 4, !dbg !642, !tbaa !606
  %148 = sext i32 %147 to i64, !dbg !643
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !644
  %149 = mul nsw i64 %148, %33, !dbg !646
  call void @llvm.dbg.value(metadata i64 %149, metadata !536, metadata !DIExpression()), !dbg !647
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %134, i64 %145, i32 2, !dbg !648
  %151 = load i32, i32* %150, align 4, !dbg !648, !tbaa !606
  %152 = sext i32 %151 to i64, !dbg !649
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !650
  %153 = mul nsw i64 %152, %33, !dbg !652
  call void @llvm.dbg.value(metadata i64 %153, metadata !539, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i32 0, metadata !540, metadata !DIExpression()), !dbg !647
  %154 = icmp eq i64 %145, 0, !dbg !653
  br i1 %154, label %170, label %155, !dbg !656

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %157, label %159, !dbg !656

157:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i32 undef, metadata !540, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !647
  %158 = trunc i64 %145 to i32, !dbg !657
  br label %170, !dbg !657

159:                                              ; preds = %155, %164
  %160 = phi i64 [ %165, %164 ], [ 0, %155 ]
  call void @llvm.dbg.value(metadata i64 %160, metadata !540, metadata !DIExpression()), !dbg !647
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %160, !dbg !659
  %162 = load i64, i64* %161, align 8, !dbg !659, !tbaa !394
  %163 = icmp ult i64 %149, %162, !dbg !662
  br i1 %163, label %167, label %164, !dbg !663

164:                                              ; preds = %159
  %165 = add nuw nsw i64 %160, 1, !dbg !664
  call void @llvm.dbg.value(metadata i64 %165, metadata !540, metadata !DIExpression()), !dbg !647
  %166 = icmp eq i64 %165, %145, !dbg !653
  br i1 %166, label %167, label %159, !dbg !656, !llvm.loop !665

167:                                              ; preds = %159, %164
  %168 = phi i64 [ %145, %164 ], [ %160, %159 ]
  %169 = trunc i64 %168 to i32, !dbg !667
  br label %170, !dbg !657

170:                                              ; preds = %157, %167, %144
  %171 = phi i32 [ 0, %144 ], [ %169, %167 ], [ %158, %157 ], !dbg !667
  call void @llvm.dbg.value(metadata i64 %145, metadata !541, metadata !DIExpression()), !dbg !668
  %172 = zext i32 %171 to i64, !dbg !657
  %173 = icmp ugt i64 %145, %172, !dbg !657
  br i1 %173, label %174, label %176, !dbg !669

174:                                              ; preds = %170
  %175 = sext i32 %171 to i64, !dbg !669
  br label %185, !dbg !669

176:                                              ; preds = %185, %170
  %177 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 1, !dbg !670
  %178 = load i32, i32* %177, align 4, !dbg !670, !tbaa !671
  %179 = sext i32 %178 to i64, !dbg !672
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %172, !dbg !673
  store i64 %179, i64* %180, align 8, !dbg !674, !tbaa !394
  %181 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %172, !dbg !675
  store i64 %149, i64* %181, align 8, !dbg !676, !tbaa !394
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %172, !dbg !677
  store i64 %153, i64* %182, align 8, !dbg !678, !tbaa !394
  %183 = add nuw nsw i64 %145, 1, !dbg !679
  call void @llvm.dbg.value(metadata i64 %183, metadata !534, metadata !DIExpression()), !dbg !632
  %184 = icmp eq i64 %183, %135, !dbg !634
  br i1 %184, label %138, label %144, !dbg !633, !llvm.loop !680

185:                                              ; preds = %174, %185
  %186 = phi i64 [ %145, %174 ], [ %187, %185 ]
  call void @llvm.dbg.value(metadata i64 %186, metadata !541, metadata !DIExpression()), !dbg !668
  %187 = add nsw i64 %186, -1, !dbg !682
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %187, !dbg !684
  %189 = load i64, i64* %188, align 8, !dbg !684, !tbaa !394
  %190 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %186, !dbg !685
  store i64 %189, i64* %190, align 8, !dbg !686, !tbaa !394
  %191 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %187, !dbg !687
  %192 = load i64, i64* %191, align 8, !dbg !687, !tbaa !394
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %186, !dbg !688
  store i64 %192, i64* %193, align 8, !dbg !689, !tbaa !394
  %194 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %187, !dbg !690
  %195 = load i64, i64* %194, align 8, !dbg !690, !tbaa !394
  %196 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %186, !dbg !691
  store i64 %195, i64* %196, align 8, !dbg !692, !tbaa !394
  call void @llvm.dbg.value(metadata i64 %187, metadata !541, metadata !DIExpression()), !dbg !668
  %197 = icmp sgt i64 %187, %175, !dbg !657
  br i1 %197, label %185, label %176, !dbg !669, !llvm.loop !693

198:                                              ; preds = %142, %202
  %199 = phi i64 [ %143, %142 ], [ %207, %202 ], !dbg !641
  %200 = phi i64 [ %140, %142 ], [ %204, %202 ]
  %201 = icmp eq i64 %200, %199, !dbg !695
  br i1 %201, label %202, label %251, !dbg !696

202:                                              ; preds = %198
  %203 = load i64, i64* %35, align 8, !dbg !697, !tbaa !394
  %204 = mul i64 %203, %199, !dbg !698
  store i64 %204, i64* %34, align 8, !dbg !698, !tbaa !423
  call void @llvm.dbg.value(metadata i64 1, metadata !543, metadata !DIExpression()), !dbg !699
  %205 = load i64, i64* %38, align 8, !dbg !700, !tbaa !394
  store i64 %205, i64* %35, align 8, !dbg !703, !tbaa !394
  %206 = load i64, i64* %39, align 8, !dbg !704, !tbaa !394
  store i64 %206, i64* %36, align 8, !dbg !705, !tbaa !394
  %207 = load i64, i64* %40, align 8, !dbg !706, !tbaa !394
  store i64 %207, i64* %37, align 8, !dbg !707, !tbaa !394
  call void @llvm.dbg.value(metadata i64 2, metadata !543, metadata !DIExpression()), !dbg !699
  %208 = load i64, i64* %41, align 8, !dbg !700, !tbaa !394
  store i64 %208, i64* %38, align 8, !dbg !703, !tbaa !394
  %209 = load i64, i64* %42, align 8, !dbg !704, !tbaa !394
  store i64 %209, i64* %39, align 8, !dbg !705, !tbaa !394
  %210 = load i64, i64* %43, align 8, !dbg !706, !tbaa !394
  store i64 %210, i64* %40, align 8, !dbg !707, !tbaa !394
  call void @llvm.dbg.value(metadata i64 3, metadata !543, metadata !DIExpression()), !dbg !699
  %211 = load i64, i64* %44, align 8, !dbg !700, !tbaa !394
  store i64 %211, i64* %41, align 8, !dbg !703, !tbaa !394
  %212 = load i64, i64* %45, align 8, !dbg !704, !tbaa !394
  store i64 %212, i64* %42, align 8, !dbg !705, !tbaa !394
  %213 = load i64, i64* %46, align 8, !dbg !706, !tbaa !394
  store i64 %213, i64* %43, align 8, !dbg !707, !tbaa !394
  call void @llvm.dbg.value(metadata i64 4, metadata !543, metadata !DIExpression()), !dbg !699
  %214 = load i64, i64* %47, align 8, !dbg !700, !tbaa !394
  store i64 %214, i64* %44, align 8, !dbg !703, !tbaa !394
  %215 = load i64, i64* %48, align 8, !dbg !704, !tbaa !394
  store i64 %215, i64* %45, align 8, !dbg !705, !tbaa !394
  %216 = load i64, i64* %49, align 8, !dbg !706, !tbaa !394
  store i64 %216, i64* %46, align 8, !dbg !707, !tbaa !394
  call void @llvm.dbg.value(metadata i64 5, metadata !543, metadata !DIExpression()), !dbg !699
  %217 = load i64, i64* %50, align 8, !dbg !700, !tbaa !394
  store i64 %217, i64* %47, align 8, !dbg !703, !tbaa !394
  %218 = load i64, i64* %51, align 8, !dbg !704, !tbaa !394
  store i64 %218, i64* %48, align 8, !dbg !705, !tbaa !394
  %219 = load i64, i64* %52, align 8, !dbg !706, !tbaa !394
  store i64 %219, i64* %49, align 8, !dbg !707, !tbaa !394
  call void @llvm.dbg.value(metadata i64 6, metadata !543, metadata !DIExpression()), !dbg !699
  %220 = load i64, i64* %53, align 8, !dbg !700, !tbaa !394
  store i64 %220, i64* %50, align 8, !dbg !703, !tbaa !394
  %221 = load i64, i64* %54, align 8, !dbg !704, !tbaa !394
  store i64 %221, i64* %51, align 8, !dbg !705, !tbaa !394
  %222 = load i64, i64* %55, align 8, !dbg !706, !tbaa !394
  store i64 %222, i64* %52, align 8, !dbg !707, !tbaa !394
  call void @llvm.dbg.value(metadata i64 7, metadata !543, metadata !DIExpression()), !dbg !699
  %223 = load i64, i64* %56, align 8, !dbg !700, !tbaa !394
  store i64 %223, i64* %53, align 8, !dbg !703, !tbaa !394
  %224 = load i64, i64* %57, align 8, !dbg !704, !tbaa !394
  store i64 %224, i64* %54, align 8, !dbg !705, !tbaa !394
  %225 = load i64, i64* %58, align 8, !dbg !706, !tbaa !394
  store i64 %225, i64* %55, align 8, !dbg !707, !tbaa !394
  call void @llvm.dbg.value(metadata i64 8, metadata !543, metadata !DIExpression()), !dbg !699
  %226 = load i64, i64* %59, align 8, !dbg !700, !tbaa !394
  store i64 %226, i64* %56, align 8, !dbg !703, !tbaa !394
  %227 = load i64, i64* %60, align 8, !dbg !704, !tbaa !394
  store i64 %227, i64* %57, align 8, !dbg !705, !tbaa !394
  %228 = load i64, i64* %61, align 8, !dbg !706, !tbaa !394
  store i64 %228, i64* %58, align 8, !dbg !707, !tbaa !394
  call void @llvm.dbg.value(metadata i64 9, metadata !543, metadata !DIExpression()), !dbg !699
  %229 = load i64, i64* %62, align 8, !dbg !700, !tbaa !394
  store i64 %229, i64* %59, align 8, !dbg !703, !tbaa !394
  %230 = load i64, i64* %63, align 8, !dbg !704, !tbaa !394
  store i64 %230, i64* %60, align 8, !dbg !705, !tbaa !394
  %231 = load i64, i64* %64, align 8, !dbg !706, !tbaa !394
  store i64 %231, i64* %61, align 8, !dbg !707, !tbaa !394
  call void @llvm.dbg.value(metadata i64 10, metadata !543, metadata !DIExpression()), !dbg !699
  %232 = load i64, i64* %65, align 8, !dbg !700, !tbaa !394
  store i64 %232, i64* %62, align 8, !dbg !703, !tbaa !394
  %233 = load i64, i64* %66, align 8, !dbg !704, !tbaa !394
  store i64 %233, i64* %63, align 8, !dbg !705, !tbaa !394
  %234 = load i64, i64* %67, align 8, !dbg !706, !tbaa !394
  store i64 %234, i64* %64, align 8, !dbg !707, !tbaa !394
  call void @llvm.dbg.value(metadata i64 11, metadata !543, metadata !DIExpression()), !dbg !699
  %235 = load i64, i64* %68, align 8, !dbg !700, !tbaa !394
  store i64 %235, i64* %65, align 8, !dbg !703, !tbaa !394
  %236 = load i64, i64* %69, align 8, !dbg !704, !tbaa !394
  store i64 %236, i64* %66, align 8, !dbg !705, !tbaa !394
  %237 = load i64, i64* %70, align 8, !dbg !706, !tbaa !394
  store i64 %237, i64* %67, align 8, !dbg !707, !tbaa !394
  call void @llvm.dbg.value(metadata i64 12, metadata !543, metadata !DIExpression()), !dbg !699
  %238 = load i64, i64* %71, align 8, !dbg !700, !tbaa !394
  store i64 %238, i64* %68, align 8, !dbg !703, !tbaa !394
  %239 = load i64, i64* %72, align 8, !dbg !704, !tbaa !394
  store i64 %239, i64* %69, align 8, !dbg !705, !tbaa !394
  %240 = load i64, i64* %73, align 8, !dbg !706, !tbaa !394
  store i64 %240, i64* %70, align 8, !dbg !707, !tbaa !394
  call void @llvm.dbg.value(metadata i64 13, metadata !543, metadata !DIExpression()), !dbg !699
  %241 = load i64, i64* %74, align 8, !dbg !700, !tbaa !394
  store i64 %241, i64* %71, align 8, !dbg !703, !tbaa !394
  %242 = load i64, i64* %75, align 8, !dbg !704, !tbaa !394
  store i64 %242, i64* %72, align 8, !dbg !705, !tbaa !394
  %243 = load i64, i64* %76, align 8, !dbg !706, !tbaa !394
  store i64 %243, i64* %73, align 8, !dbg !707, !tbaa !394
  call void @llvm.dbg.value(metadata i64 14, metadata !543, metadata !DIExpression()), !dbg !699
  %244 = load i64, i64* %77, align 8, !dbg !700, !tbaa !394
  store i64 %244, i64* %74, align 8, !dbg !703, !tbaa !394
  %245 = load i64, i64* %78, align 8, !dbg !704, !tbaa !394
  store i64 %245, i64* %75, align 8, !dbg !705, !tbaa !394
  %246 = load i64, i64* %79, align 8, !dbg !706, !tbaa !394
  store i64 %246, i64* %76, align 8, !dbg !707, !tbaa !394
  call void @llvm.dbg.value(metadata i64 15, metadata !543, metadata !DIExpression()), !dbg !699
  %247 = load i64, i64* %80, align 8, !dbg !700, !tbaa !394
  store i64 %247, i64* %77, align 8, !dbg !703, !tbaa !394
  %248 = load i64, i64* %81, align 8, !dbg !704, !tbaa !394
  store i64 %248, i64* %78, align 8, !dbg !705, !tbaa !394
  %249 = load i64, i64* %82, align 8, !dbg !706, !tbaa !394
  store i64 %249, i64* %79, align 8, !dbg !707, !tbaa !394
  call void @llvm.dbg.value(metadata i64 16, metadata !543, metadata !DIExpression()), !dbg !699
  store i64 1, i64* %80, align 8, !dbg !708, !tbaa !394
  store i64 0, i64* %81, align 8, !dbg !709, !tbaa !394
  store i64 0, i64* %82, align 8, !dbg !710, !tbaa !394
  %250 = icmp eq i64 %204, %206, !dbg !639
  br i1 %250, label %198, label %251, !dbg !640, !llvm.loop !711

251:                                              ; preds = %198, %202, %129, %138
  %252 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !713
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %252, i8* nonnull align 8 dereferenceable(416) %7, i64 416, i1 false), !dbg !713, !tbaa.struct !714
  br label %253, !dbg !715

253:                                              ; preds = %251, %136, %125
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #9, !dbg !716
  ret void, !dbg !716
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !717 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !721, metadata !DIExpression()), !dbg !722
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #8, !dbg !723
  ret void, !dbg !724
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !725 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !727, metadata !DIExpression()), !dbg !728
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #8, !dbg !729
  ret void, !dbg !730
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !731 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !733, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !734, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !738, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()), !dbg !748
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !750
  %4 = load i64, i64* %3, align 8, !dbg !750, !tbaa !751
  %5 = and i64 %4, 2, !dbg !752
  %6 = icmp eq i64 %5, 0, !dbg !753
  br i1 %6, label %98, label %7, !dbg !754

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !755
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !755
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !755
  %8 = tail call i8* @malloc(i64 1024) #7, !dbg !757
  %9 = icmp eq i8* %8, null, !dbg !758
  br i1 %9, label %12, label %10, !dbg !759

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023, !dbg !760
  store i8 0, i8* %11, align 1, !dbg !761, !tbaa !496
  br label %12, !dbg !762

12:                                               ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !763
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !764
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !764
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !766
  %15 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !767
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !772
  call void @llvm.dbg.value(metadata i8* %15, metadata !771, metadata !DIExpression()) #9, !dbg !772
  %16 = tail call i8* @halide_pointer_to_string(i8* %14, i8* %13, i8* %15) #7, !dbg !774
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !775
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !775
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %13, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !777
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !778
  br i1 %9, label %18, label %19, !dbg !780

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !781
  br label %25, !dbg !782

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !783
  %20 = ptrtoint i8* %17 to i64, !dbg !785
  %21 = ptrtoint i8* %8 to i64, !dbg !785
  %22 = add i64 %20, 1, !dbg !785
  %23 = sub i64 %22, %21, !dbg !786
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %23) #7, !dbg !787
  tail call void @halide_print(i8* %0, i8* nonnull %8) #7, !dbg !788
  br label %25

25:                                               ; preds = %19, %18
  tail call void @free(i8* %8) #7, !dbg !789
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !790
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !dbg !790, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %27, metadata !735, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()), !dbg !798
  %28 = load i64, i64* %3, align 8, !dbg !800, !tbaa !751
  %29 = and i64 %28, 1, !dbg !801
  %30 = icmp eq i64 %29, 0, !dbg !802
  br i1 %30, label %49, label %31, !dbg !803

31:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !804
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !804
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !804
  %32 = tail call i8* @malloc(i64 1024) #7, !dbg !807
  %33 = icmp eq i8* %32, null, !dbg !808
  br i1 %33, label %36, label %34, !dbg !809

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, i8* %32, i64 1023, !dbg !810
  store i8 0, i8* %35, align 1, !dbg !811, !tbaa !496
  br label %36, !dbg !812

36:                                               ; preds = %31, %34
  %37 = phi i8* [ %35, %34 ], [ null, %31 ], !dbg !813
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !814
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !814
  %38 = tail call i8* @halide_string_to_string(i8* %32, i8* %37, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !816
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !817
  call void @llvm.dbg.value(metadata i8* %15, metadata !771, metadata !DIExpression()) #9, !dbg !817
  %39 = tail call i8* @halide_pointer_to_string(i8* %38, i8* %37, i8* nonnull %15) #7, !dbg !819
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !820
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !820
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %37, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !822
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !823
  br i1 %33, label %41, label %42, !dbg !825

41:                                               ; preds = %36
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !826
  br label %48, !dbg !827

42:                                               ; preds = %36
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !828
  %43 = ptrtoint i8* %40 to i64, !dbg !830
  %44 = ptrtoint i8* %32 to i64, !dbg !830
  %45 = add i64 %43, 1, !dbg !830
  %46 = sub i64 %45, %44, !dbg !831
  %47 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %46) #7, !dbg !832
  tail call void @halide_print(i8* %0, i8* nonnull %32) #7, !dbg !833
  br label %48

48:                                               ; preds = %42, %41
  tail call void @free(i8* %32) #7, !dbg !834
  br label %98, !dbg !835

49:                                               ; preds = %25
  %50 = icmp eq %struct.halide_device_interface_t* %27, null, !dbg !836
  br i1 %50, label %51, label %69, !dbg !838

51:                                               ; preds = %49
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !839
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !839
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !839
  %52 = tail call i8* @malloc(i64 1024) #7, !dbg !842
  %53 = icmp eq i8* %52, null, !dbg !843
  br i1 %53, label %56, label %54, !dbg !844

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, i8* %52, i64 1023, !dbg !845
  store i8 0, i8* %55, align 1, !dbg !846, !tbaa !496
  br label %56, !dbg !847

56:                                               ; preds = %51, %54
  %57 = phi i8* [ %55, %54 ], [ null, %51 ], !dbg !848
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !849
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !849
  %58 = tail call i8* @halide_string_to_string(i8* %52, i8* %57, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !851
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !852
  call void @llvm.dbg.value(metadata i8* %15, metadata !771, metadata !DIExpression()) #9, !dbg !852
  %59 = tail call i8* @halide_pointer_to_string(i8* %58, i8* %57, i8* nonnull %15) #7, !dbg !854
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !855
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !855
  %60 = tail call i8* @halide_string_to_string(i8* %59, i8* %57, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !857
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !858
  br i1 %53, label %61, label %62, !dbg !860

61:                                               ; preds = %56
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !861
  br label %68, !dbg !862

62:                                               ; preds = %56
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !863
  %63 = ptrtoint i8* %60 to i64, !dbg !865
  %64 = ptrtoint i8* %52 to i64, !dbg !865
  %65 = add i64 %63, 1, !dbg !865
  %66 = sub i64 %65, %64, !dbg !866
  %67 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %52, i64 %66) #7, !dbg !867
  tail call void @halide_print(i8* %0, i8* nonnull %52) #7, !dbg !868
  br label %68

68:                                               ; preds = %62, %61
  tail call void @free(i8* %52) #7, !dbg !869
  br label %98, !dbg !870

69:                                               ; preds = %49
  %70 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %27, i64 0, i32 15, !dbg !871
  %71 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %70, align 8, !dbg !871, !tbaa !872
  %72 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %71, i64 0, i32 6, !dbg !874
  %73 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %72, align 8, !dbg !874, !tbaa !875
  %74 = tail call i32 %73(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !877
  call void @llvm.dbg.value(metadata i32 %74, metadata !736, metadata !DIExpression()), !dbg !737
  %75 = icmp eq i32 %74, 0, !dbg !878
  br i1 %75, label %94, label %76, !dbg !880

76:                                               ; preds = %69
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !881
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !881
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !881
  %77 = tail call i8* @malloc(i64 1024) #7, !dbg !884
  %78 = icmp eq i8* %77, null, !dbg !885
  br i1 %78, label %81, label %79, !dbg !886

79:                                               ; preds = %76
  %80 = getelementptr inbounds i8, i8* %77, i64 1023, !dbg !887
  store i8 0, i8* %80, align 1, !dbg !888, !tbaa !496
  br label %81, !dbg !889

81:                                               ; preds = %76, %79
  %82 = phi i8* [ %80, %79 ], [ null, %76 ], !dbg !890
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !891
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !891
  %83 = tail call i8* @halide_string_to_string(i8* %77, i8* %82, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !893
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !894
  call void @llvm.dbg.value(metadata i8* %15, metadata !771, metadata !DIExpression()) #9, !dbg !894
  %84 = tail call i8* @halide_pointer_to_string(i8* %83, i8* %82, i8* nonnull %15) #7, !dbg !896
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !897
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !897
  %85 = tail call i8* @halide_string_to_string(i8* %84, i8* %82, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !899
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !900
  br i1 %78, label %86, label %87, !dbg !902

86:                                               ; preds = %81
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !903
  br label %93, !dbg !904

87:                                               ; preds = %81
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !905
  %88 = ptrtoint i8* %85 to i64, !dbg !907
  %89 = ptrtoint i8* %77 to i64, !dbg !907
  %90 = add i64 %88, 1, !dbg !907
  %91 = sub i64 %90, %89, !dbg !908
  %92 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %77, i64 %91) #7, !dbg !909
  tail call void @halide_print(i8* %0, i8* nonnull %77) #7, !dbg !910
  br label %93

93:                                               ; preds = %87, %86
  tail call void @free(i8* %77) #7, !dbg !911
  br label %98, !dbg !912

94:                                               ; preds = %69
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !913, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata i1 false, metadata !916, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !917
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !919, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i32 2, metadata !922, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i1 false, metadata !923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !924
  %95 = load i64, i64* %3, align 8, !dbg !926, !tbaa !751
  %96 = and i64 %95, -3, !dbg !926
  store i64 %96, i64* %3, align 8, !dbg !926, !tbaa !751
  %97 = tail call i32 @halide_msan_annotate_buffer_is_initialized(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !929
  br label %98, !dbg !930

98:                                               ; preds = %48, %68, %94, %93, %2
  %99 = phi i32 [ 0, %2 ], [ -14, %48 ], [ -19, %68 ], [ -14, %93 ], [ 0, %94 ], !dbg !737
  ret i32 %99, !dbg !931
}

declare !dbg !932 dso_local i32 @halide_msan_annotate_buffer_is_initialized(i8*, %struct.halide_buffer_t*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_device_release(i8* %0, %struct.halide_device_interface_t* %1) local_unnamed_addr #0 !dbg !933 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !935, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %1, metadata !936, metadata !DIExpression()), !dbg !937
  %3 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %1, i64 0, i32 15, !dbg !938
  %4 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %3, align 8, !dbg !938, !tbaa !872
  %5 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %4, i64 0, i32 5, !dbg !939
  %6 = load i32 (i8*)*, i32 (i8*)** %5, align 8, !dbg !939, !tbaa !940
  %7 = tail call i32 %6(i8* %0) #7, !dbg !941
  ret void, !dbg !942
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !943 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !945, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !946, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !962, metadata !DIExpression()) #9, !dbg !967
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !965, metadata !DIExpression()) #9, !dbg !967
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !947, metadata !DIExpression()), !dbg !961
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !969
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()) #9, !dbg !984
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !977, metadata !DIExpression()) #9, !dbg !984
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), metadata !978, metadata !DIExpression()) #9, !dbg !984
  %3 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !986
  br i1 %3, label %4, label %6, !dbg !988

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !989
  br label %47, !dbg !991

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !979, metadata !DIExpression()) #9, !dbg !984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !992
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !992
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !992
  %7 = tail call i8* @malloc(i64 1024) #7, !dbg !994
  %8 = icmp eq i8* %7, null, !dbg !995
  br i1 %8, label %11, label %9, !dbg !996

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i64 1023, !dbg !997
  store i8 0, i8* %10, align 1, !dbg !998, !tbaa !496
  br label %11, !dbg !999

11:                                               ; preds = %9, %6
  %12 = phi i8* [ %10, %9 ], [ null, %6 ], !dbg !1000
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1001
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1001
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %12, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !1003
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1004
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1004
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %12, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #7, !dbg !1006
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !1011
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !1011
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %12, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1013
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1014
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1014
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %12, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !1016
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1017
  br i1 %8, label %17, label %18, !dbg !1019

17:                                               ; preds = %11
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1020
  br label %24, !dbg !1021

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1022
  %19 = ptrtoint i8* %16 to i64, !dbg !1024
  %20 = ptrtoint i8* %7 to i64, !dbg !1024
  %21 = sub i64 1, %20, !dbg !1024
  %22 = add i64 %21, %19, !dbg !1025
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %22) #7, !dbg !1026
  tail call void @halide_print(i8* %0, i8* nonnull %7) #7, !dbg !1027
  br label %24

24:                                               ; preds = %18, %17
  tail call void @free(i8* %7) #7, !dbg !1028
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !1029
  %26 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %25, align 8, !dbg !1029, !tbaa !791
  %27 = icmp eq %struct.halide_device_interface_t* %26, null, !dbg !1030
  call void @llvm.dbg.value(metadata i1 %27, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !984
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1031
  %29 = load i64, i64* %28, align 8, !dbg !1031, !tbaa !560
  %30 = icmp eq i64 %29, 0, !dbg !1032
  call void @llvm.dbg.value(metadata i1 %30, metadata !981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !984
  %31 = xor i1 %27, true, !dbg !1033
  %32 = or i1 %30, %31, !dbg !1033
  br i1 %32, label %35, label %33, !dbg !1033

33:                                               ; preds = %24
  %34 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1035
  br label %47, !dbg !1037

35:                                               ; preds = %24
  %36 = xor i1 %30, true, !dbg !1038
  %37 = or i1 %27, %36, !dbg !1038
  br i1 %37, label %40, label %38, !dbg !1038

38:                                               ; preds = %35
  %39 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !1040
  br label %47, !dbg !1042

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()) #9, !dbg !1043
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1045
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !1045
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !1047
  %42 = load i64, i64* %41, align 8, !dbg !1047, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !984
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1048
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !1048
  call void @llvm.dbg.value(metadata i1 undef, metadata !983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !984
  %43 = and i64 %42, 3, !dbg !1051
  %44 = icmp eq i64 %43, 3, !dbg !1051
  br i1 %44, label %45, label %50, !dbg !1051

45:                                               ; preds = %40
  %46 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !1053
  br label %47, !dbg !1055

47:                                               ; preds = %4, %33, %38, %45
  %48 = phi i32 [ %5, %4 ], [ %39, %38 ], [ %34, %33 ], [ %46, %45 ], !dbg !984
  call void @llvm.dbg.value(metadata i32 %48, metadata !960, metadata !DIExpression()), !dbg !961
  %49 = icmp eq i32 %48, 0, !dbg !1056
  br i1 %49, label %50, label %52, !dbg !1058

50:                                               ; preds = %40, %47
  %51 = tail call i32 @_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #8, !dbg !1059
  br label %52, !dbg !1060

52:                                               ; preds = %47, %50
  %53 = phi i32 [ %51, %50 ], [ %48, %47 ], !dbg !961
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1061, metadata !DIExpression()) #9, !dbg !1064
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !1066
  ret i32 %53, !dbg !1068
}

; Function Attrs: nounwind
define weak dso_local i32 @copy_to_device_already_locked(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #4 !dbg !1069 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1071, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1072, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !1073, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i32 0, metadata !1074, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()) #9, !dbg !1076
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !977, metadata !DIExpression()) #9, !dbg !1076
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), metadata !978, metadata !DIExpression()) #9, !dbg !1076
  %4 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !1078
  br i1 %4, label %5, label %7, !dbg !1079

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !1080
  br label %48, !dbg !1081

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !979, metadata !DIExpression()) #9, !dbg !1076
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1082
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !1082
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !1082
  %8 = tail call i8* @malloc(i64 1024) #7, !dbg !1084
  %9 = icmp eq i8* %8, null, !dbg !1085
  br i1 %9, label %12, label %10, !dbg !1086

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023, !dbg !1087
  store i8 0, i8* %11, align 1, !dbg !1088, !tbaa !496
  br label %12, !dbg !1089

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !1090
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1091
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1091
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !1093
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1094
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1094
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #7, !dbg !1096
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !1097
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !1097
  %16 = tail call i8* @halide_buffer_to_string(i8* %15, i8* %13, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1099
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1100
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1100
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !1102
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1103
  br i1 %9, label %18, label %19, !dbg !1105

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1106
  br label %25, !dbg !1107

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1108
  %20 = ptrtoint i8* %17 to i64, !dbg !1110
  %21 = ptrtoint i8* %8 to i64, !dbg !1110
  %22 = sub i64 1, %21, !dbg !1110
  %23 = add i64 %22, %20, !dbg !1111
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %23) #7, !dbg !1112
  tail call void @halide_print(i8* %0, i8* nonnull %8) #7, !dbg !1113
  br label %25

25:                                               ; preds = %19, %18
  tail call void @free(i8* %8) #7, !dbg !1114
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !1115
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !dbg !1115, !tbaa !791
  %28 = icmp eq %struct.halide_device_interface_t* %27, null, !dbg !1116
  call void @llvm.dbg.value(metadata i1 %28, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1076
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1117
  %30 = load i64, i64* %29, align 8, !dbg !1117, !tbaa !560
  %31 = icmp eq i64 %30, 0, !dbg !1118
  call void @llvm.dbg.value(metadata i1 %31, metadata !981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1076
  %32 = xor i1 %28, true, !dbg !1119
  %33 = or i1 %31, %32, !dbg !1119
  br i1 %33, label %36, label %34, !dbg !1119

34:                                               ; preds = %25
  %35 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1120
  br label %48, !dbg !1121

36:                                               ; preds = %25
  %37 = xor i1 %31, true, !dbg !1122
  %38 = or i1 %28, %37, !dbg !1122
  br i1 %38, label %41, label %39, !dbg !1122

39:                                               ; preds = %36
  %40 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !1123
  br label %48, !dbg !1124

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()) #9, !dbg !1125
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1127
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !1127
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !1129
  %43 = load i64, i64* %42, align 8, !dbg !1129, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1076
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1130
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !1130
  call void @llvm.dbg.value(metadata i1 undef, metadata !983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1076
  %44 = and i64 %43, 3, !dbg !1133
  %45 = icmp eq i64 %44, 3, !dbg !1133
  br i1 %45, label %46, label %51, !dbg !1133

46:                                               ; preds = %41
  %47 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !1134
  br label %48, !dbg !1135

48:                                               ; preds = %5, %34, %39, %46
  %49 = phi i32 [ %6, %5 ], [ %40, %39 ], [ %35, %34 ], [ %47, %46 ], !dbg !1076
  call void @llvm.dbg.value(metadata i32 %49, metadata !1074, metadata !DIExpression()), !dbg !1075
  %50 = icmp eq i32 %49, 0, !dbg !1136
  br i1 %50, label %51, label %214, !dbg !1138

51:                                               ; preds = %41, %48
  %52 = icmp eq %struct.halide_device_interface_t* %2, null, !dbg !1139
  br i1 %52, label %53, label %77, !dbg !1141

53:                                               ; preds = %51
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !1142
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !1142
  %54 = tail call i8* @malloc(i64 1024) #7, !dbg !1145
  %55 = icmp eq i8* %54, null, !dbg !1146
  br i1 %55, label %58, label %56, !dbg !1147

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, i8* %54, i64 1023, !dbg !1148
  store i8 0, i8* %57, align 1, !dbg !1149, !tbaa !496
  br label %58, !dbg !1150

58:                                               ; preds = %53, %56
  %59 = phi i8* [ %57, %56 ], [ null, %53 ], !dbg !1151
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1152
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1152
  %60 = tail call i8* @halide_string_to_string(i8* %54, i8* %59, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !1154
  %61 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !1155
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %61, metadata !771, metadata !DIExpression()) #9, !dbg !1156
  %62 = tail call i8* @halide_pointer_to_string(i8* %60, i8* %59, i8* %61) #7, !dbg !1158
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1159
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1159
  %63 = tail call i8* @halide_string_to_string(i8* %62, i8* %59, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !1161
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1162
  br i1 %55, label %64, label %65, !dbg !1164

64:                                               ; preds = %58
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1165
  br label %71, !dbg !1166

65:                                               ; preds = %58
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1167
  %66 = ptrtoint i8* %63 to i64, !dbg !1169
  %67 = ptrtoint i8* %54 to i64, !dbg !1169
  %68 = add i64 %66, 1, !dbg !1169
  %69 = sub i64 %68, %67, !dbg !1170
  %70 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %54, i64 %69) #7, !dbg !1171
  tail call void @halide_print(i8* %0, i8* nonnull %54) #7, !dbg !1172
  br label %71

71:                                               ; preds = %65, %64
  tail call void @free(i8* %54) #7, !dbg !1173
  %72 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !1174
  %73 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %72, align 8, !dbg !1174, !tbaa !791
  %74 = icmp eq %struct.halide_device_interface_t* %73, null, !dbg !1176
  br i1 %74, label %75, label %77, !dbg !1177

75:                                               ; preds = %71
  %76 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1178
  br label %214, !dbg !1180

77:                                               ; preds = %71, %51
  %78 = phi %struct.halide_device_interface_t* [ %2, %51 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %78, metadata !1073, metadata !DIExpression()), !dbg !1075
  %79 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1181
  %80 = load i64, i64* %79, align 8, !dbg !1181, !tbaa !560
  %81 = icmp eq i64 %80, 0, !dbg !1183
  br i1 %81, label %87, label %82, !dbg !1184

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !1185
  %84 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %83, align 8, !dbg !1185, !tbaa !791
  %85 = icmp eq %struct.halide_device_interface_t* %84, %78, !dbg !1186
  br i1 %85, label %109, label %86, !dbg !1187

86:                                               ; preds = %82
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !1188
  br label %214, !dbg !1190

87:                                               ; preds = %77
  %88 = tail call i32 @halide_device_malloc(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* nonnull %78) #8, !dbg !1191
  call void @llvm.dbg.value(metadata i32 %88, metadata !1074, metadata !DIExpression()), !dbg !1075
  %89 = icmp eq i32 %88, 0, !dbg !1194
  br i1 %89, label %109, label %90, !dbg !1196

90:                                               ; preds = %87
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1197
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !1197
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !1197
  %91 = tail call i8* @malloc(i64 1024) #7, !dbg !1200
  %92 = icmp eq i8* %91, null, !dbg !1201
  br i1 %92, label %95, label %93, !dbg !1202

93:                                               ; preds = %90
  %94 = getelementptr inbounds i8, i8* %91, i64 1023, !dbg !1203
  store i8 0, i8* %94, align 1, !dbg !1204, !tbaa !496
  br label %95, !dbg !1205

95:                                               ; preds = %90, %93
  %96 = phi i8* [ %94, %93 ], [ null, %90 ], !dbg !1206
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1207
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1207
  %97 = tail call i8* @halide_string_to_string(i8* %91, i8* %96, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !1209
  %98 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !1210
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1211
  call void @llvm.dbg.value(metadata i8* %98, metadata !771, metadata !DIExpression()) #9, !dbg !1211
  %99 = tail call i8* @halide_pointer_to_string(i8* %97, i8* %96, i8* %98) #7, !dbg !1213
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1214
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1214
  %100 = tail call i8* @halide_string_to_string(i8* %99, i8* %96, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1216
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1217
  br i1 %92, label %101, label %102, !dbg !1219

101:                                              ; preds = %95
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1220
  br label %108, !dbg !1221

102:                                              ; preds = %95
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1222
  %103 = ptrtoint i8* %100 to i64, !dbg !1224
  %104 = ptrtoint i8* %91 to i64, !dbg !1224
  %105 = add i64 %103, 1, !dbg !1224
  %106 = sub i64 %105, %104, !dbg !1225
  %107 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %91, i64 %106) #7, !dbg !1226
  tail call void @halide_print(i8* %0, i8* nonnull %91) #7, !dbg !1227
  br label %108

108:                                              ; preds = %102, %101
  tail call void @free(i8* %91) #7, !dbg !1228
  br label %214, !dbg !1229

109:                                              ; preds = %82, %87
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()), !dbg !1233
  %110 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !1235
  %111 = load i64, i64* %110, align 8, !dbg !1235, !tbaa !751
  %112 = and i64 %111, 1, !dbg !1236
  %113 = icmp eq i64 %112, 0, !dbg !1237
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1238
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1241
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !1241
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !1238
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !1241
  %114 = tail call i8* @malloc(i64 1024) #7, !dbg !1244
  %115 = icmp eq i8* %114, null, !dbg !1244
  br i1 %113, label %197, label %116, !dbg !1245

116:                                              ; preds = %109
  br i1 %115, label %119, label %117, !dbg !1246

117:                                              ; preds = %116
  %118 = getelementptr inbounds i8, i8* %114, i64 1023, !dbg !1247
  store i8 0, i8* %118, align 1, !dbg !1248, !tbaa !496
  br label %119, !dbg !1249

119:                                              ; preds = %116, %117
  %120 = phi i8* [ %118, %117 ], [ null, %116 ], !dbg !1250
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1251
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1251
  %121 = tail call i8* @halide_string_to_string(i8* %114, i8* %120, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !1253
  %122 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !1254
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1255
  call void @llvm.dbg.value(metadata i8* %122, metadata !771, metadata !DIExpression()) #9, !dbg !1255
  %123 = tail call i8* @halide_pointer_to_string(i8* %121, i8* %120, i8* %122) #7, !dbg !1257
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1258
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1258
  %124 = tail call i8* @halide_string_to_string(i8* %123, i8* %120, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !1260
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1261
  br i1 %115, label %125, label %126, !dbg !1263

125:                                              ; preds = %119
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1264
  br label %132, !dbg !1265

126:                                              ; preds = %119
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1266
  %127 = ptrtoint i8* %124 to i64, !dbg !1268
  %128 = ptrtoint i8* %114 to i64, !dbg !1268
  %129 = add i64 %127, 1, !dbg !1268
  %130 = sub i64 %129, %128, !dbg !1269
  %131 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %114, i64 %130) #7, !dbg !1270
  tail call void @halide_print(i8* %0, i8* nonnull %114) #7, !dbg !1271
  br label %132

132:                                              ; preds = %126, %125
  tail call void @free(i8* %114) #7, !dbg !1272
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !738, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()), !dbg !1276
  %133 = load i64, i64* %110, align 8, !dbg !1278, !tbaa !751
  %134 = and i64 %133, 2, !dbg !1279
  %135 = icmp eq i64 %134, 0, !dbg !1280
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1281
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1284
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !1281
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !1284
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !1281
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !1284
  %136 = tail call i8* @malloc(i64 1024) #7, !dbg !1287
  %137 = icmp eq i8* %136, null, !dbg !1287
  br i1 %135, label %154, label %138, !dbg !1288

138:                                              ; preds = %132
  br i1 %137, label %141, label %139, !dbg !1289

139:                                              ; preds = %138
  %140 = getelementptr inbounds i8, i8* %136, i64 1023, !dbg !1290
  store i8 0, i8* %140, align 1, !dbg !1291, !tbaa !496
  br label %141, !dbg !1292

141:                                              ; preds = %138, %139
  %142 = phi i8* [ %140, %139 ], [ null, %138 ], !dbg !1293
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1294
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1294
  %143 = tail call i8* @halide_string_to_string(i8* %136, i8* %142, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !1296
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1297
  call void @llvm.dbg.value(metadata i8* %122, metadata !771, metadata !DIExpression()) #9, !dbg !1297
  %144 = tail call i8* @halide_pointer_to_string(i8* %143, i8* %142, i8* nonnull %122) #7, !dbg !1299
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1300
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1300
  %145 = tail call i8* @halide_string_to_string(i8* %144, i8* %142, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !1302
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1303
  br i1 %137, label %146, label %147, !dbg !1305

146:                                              ; preds = %141
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1306
  br label %153, !dbg !1307

147:                                              ; preds = %141
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1308
  %148 = ptrtoint i8* %145 to i64, !dbg !1310
  %149 = ptrtoint i8* %136 to i64, !dbg !1310
  %150 = add i64 %148, 1, !dbg !1310
  %151 = sub i64 %150, %149, !dbg !1311
  %152 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %136, i64 %151) #7, !dbg !1312
  tail call void @halide_print(i8* %0, i8* nonnull %136) #7, !dbg !1313
  br label %153

153:                                              ; preds = %147, %146
  tail call void @free(i8* %136) #7, !dbg !1314
  br label %214, !dbg !1315

154:                                              ; preds = %132
  br i1 %137, label %157, label %155, !dbg !1316

155:                                              ; preds = %154
  %156 = getelementptr inbounds i8, i8* %136, i64 1023, !dbg !1317
  store i8 0, i8* %156, align 1, !dbg !1318, !tbaa !496
  br label %157, !dbg !1319

157:                                              ; preds = %154, %155
  %158 = phi i8* [ %156, %155 ], [ null, %154 ], !dbg !1320
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1321
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1321
  %159 = tail call i8* @halide_string_to_string(i8* %136, i8* %158, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !1323
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %122, metadata !771, metadata !DIExpression()) #9, !dbg !1324
  %160 = tail call i8* @halide_pointer_to_string(i8* %159, i8* %158, i8* nonnull %122) #7, !dbg !1326
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1327
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1327
  %161 = tail call i8* @halide_string_to_string(i8* %160, i8* %158, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !1329
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1330
  br i1 %137, label %162, label %163, !dbg !1332

162:                                              ; preds = %157
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1333
  br label %169, !dbg !1334

163:                                              ; preds = %157
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1335
  %164 = ptrtoint i8* %161 to i64, !dbg !1337
  %165 = ptrtoint i8* %136 to i64, !dbg !1337
  %166 = add i64 %164, 1, !dbg !1337
  %167 = sub i64 %166, %165, !dbg !1338
  %168 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %136, i64 %167) #7, !dbg !1339
  tail call void @halide_print(i8* %0, i8* nonnull %136) #7, !dbg !1340
  br label %169

169:                                              ; preds = %163, %162
  tail call void @free(i8* %136) #7, !dbg !1341
  %170 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %78, i64 0, i32 15, !dbg !1342
  %171 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %170, align 8, !dbg !1342, !tbaa !872
  %172 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %171, i64 0, i32 7, !dbg !1343
  %173 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %172, align 8, !dbg !1343, !tbaa !1344
  %174 = tail call i32 %173(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %174, metadata !1074, metadata !DIExpression()), !dbg !1075
  %175 = icmp eq i32 %174, 0, !dbg !1346
  br i1 %175, label %176, label %179, !dbg !1348

176:                                              ; preds = %169
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1349, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i1 false, metadata !1352, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1353
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !919, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 1, metadata !922, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i1 false, metadata !923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1356
  %177 = load i64, i64* %110, align 8, !dbg !1358, !tbaa !751
  %178 = and i64 %177, -2, !dbg !1358
  store i64 %178, i64* %110, align 8, !dbg !1358, !tbaa !751
  br label %214, !dbg !1359

179:                                              ; preds = %169
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1360
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !1360
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !1360
  %180 = tail call i8* @malloc(i64 1024) #7, !dbg !1363
  %181 = icmp eq i8* %180, null, !dbg !1364
  br i1 %181, label %184, label %182, !dbg !1365

182:                                              ; preds = %179
  %183 = getelementptr inbounds i8, i8* %180, i64 1023, !dbg !1366
  store i8 0, i8* %183, align 1, !dbg !1367, !tbaa !496
  br label %184, !dbg !1368

184:                                              ; preds = %179, %182
  %185 = phi i8* [ %183, %182 ], [ null, %179 ], !dbg !1369
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1370
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1370
  %186 = tail call i8* @halide_string_to_string(i8* %180, i8* %185, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !1372
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1373
  call void @llvm.dbg.value(metadata i8* %122, metadata !771, metadata !DIExpression()) #9, !dbg !1373
  %187 = tail call i8* @halide_pointer_to_string(i8* %186, i8* %185, i8* nonnull %122) #7, !dbg !1375
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1376
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1376
  %188 = tail call i8* @halide_string_to_string(i8* %187, i8* %185, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !1378
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1379
  br i1 %181, label %189, label %190, !dbg !1381

189:                                              ; preds = %184
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1382
  br label %196, !dbg !1383

190:                                              ; preds = %184
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1384
  %191 = ptrtoint i8* %188 to i64, !dbg !1386
  %192 = ptrtoint i8* %180 to i64, !dbg !1386
  %193 = add i64 %191, 1, !dbg !1386
  %194 = sub i64 %193, %192, !dbg !1387
  %195 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %180, i64 %194) #7, !dbg !1388
  tail call void @halide_print(i8* %0, i8* nonnull %180) #7, !dbg !1389
  br label %196

196:                                              ; preds = %190, %189
  tail call void @free(i8* %180) #7, !dbg !1390
  br label %214, !dbg !1391

197:                                              ; preds = %109
  br i1 %115, label %200, label %198, !dbg !1392

198:                                              ; preds = %197
  %199 = getelementptr inbounds i8, i8* %114, i64 1023, !dbg !1393
  store i8 0, i8* %199, align 1, !dbg !1394, !tbaa !496
  br label %200, !dbg !1395

200:                                              ; preds = %197, %198
  %201 = phi i8* [ %199, %198 ], [ null, %197 ], !dbg !1396
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1397
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1397
  %202 = tail call i8* @halide_string_to_string(i8* %114, i8* %201, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !1399
  %203 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !1400
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %203, metadata !771, metadata !DIExpression()) #9, !dbg !1401
  %204 = tail call i8* @halide_pointer_to_string(i8* %202, i8* %201, i8* %203) #7, !dbg !1403
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1404
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1404
  %205 = tail call i8* @halide_string_to_string(i8* %204, i8* %201, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !1406
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1407
  br i1 %115, label %206, label %207, !dbg !1409

206:                                              ; preds = %200
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1410
  br label %213, !dbg !1411

207:                                              ; preds = %200
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1412
  %208 = ptrtoint i8* %205 to i64, !dbg !1414
  %209 = ptrtoint i8* %114 to i64, !dbg !1414
  %210 = add i64 %208, 1, !dbg !1414
  %211 = sub i64 %210, %209, !dbg !1415
  %212 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %114, i64 %211) #7, !dbg !1416
  tail call void @halide_print(i8* %0, i8* nonnull %114) #7, !dbg !1417
  br label %213

213:                                              ; preds = %207, %206
  tail call void @free(i8* %114) #7, !dbg !1418
  br label %214

214:                                              ; preds = %176, %213, %48, %196, %153, %108, %86, %75
  %215 = phi i32 [ %76, %75 ], [ -42, %86 ], [ %88, %108 ], [ -15, %153 ], [ -15, %196 ], [ %49, %48 ], [ 0, %213 ], [ 0, %176 ], !dbg !1075
  ret i32 %215, !dbg !1419
}

declare !dbg !1420 dso_local i32 @halide_error_no_device_interface(i8*) local_unnamed_addr #3

declare !dbg !1421 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #4 !dbg !1424 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1426, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1427, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !1428, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()) #9, !dbg !1432
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !977, metadata !DIExpression()) #9, !dbg !1432
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), metadata !978, metadata !DIExpression()) #9, !dbg !1432
  %4 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !1434
  br i1 %4, label %5, label %7, !dbg !1435

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !1436
  br label %48, !dbg !1437

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !979, metadata !DIExpression()) #9, !dbg !1432
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1438
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !1438
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !1438
  %8 = tail call i8* @malloc(i64 1024) #7, !dbg !1440
  %9 = icmp eq i8* %8, null, !dbg !1441
  br i1 %9, label %12, label %10, !dbg !1442

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023, !dbg !1443
  store i8 0, i8* %11, align 1, !dbg !1444, !tbaa !496
  br label %12, !dbg !1445

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !1446
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1447
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1447
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !1449
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1450
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1450
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #7, !dbg !1452
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !1453
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !1453
  %16 = tail call i8* @halide_buffer_to_string(i8* %15, i8* %13, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1455
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1456
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1456
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !1458
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1459
  br i1 %9, label %18, label %19, !dbg !1461

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1462
  br label %25, !dbg !1463

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1464
  %20 = ptrtoint i8* %17 to i64, !dbg !1466
  %21 = ptrtoint i8* %8 to i64, !dbg !1466
  %22 = sub i64 1, %21, !dbg !1466
  %23 = add i64 %22, %20, !dbg !1467
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %23) #7, !dbg !1468
  tail call void @halide_print(i8* %0, i8* nonnull %8) #7, !dbg !1469
  br label %25

25:                                               ; preds = %19, %18
  tail call void @free(i8* %8) #7, !dbg !1470
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !1471
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !dbg !1471, !tbaa !791
  %28 = icmp eq %struct.halide_device_interface_t* %27, null, !dbg !1472
  call void @llvm.dbg.value(metadata i1 %28, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1432
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1473
  %30 = load i64, i64* %29, align 8, !dbg !1473, !tbaa !560
  %31 = icmp eq i64 %30, 0, !dbg !1474
  call void @llvm.dbg.value(metadata i1 %31, metadata !981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1432
  %32 = xor i1 %28, true, !dbg !1475
  %33 = or i1 %31, %32, !dbg !1475
  br i1 %33, label %36, label %34, !dbg !1475

34:                                               ; preds = %25
  %35 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1476
  br label %48, !dbg !1477

36:                                               ; preds = %25
  %37 = xor i1 %31, true, !dbg !1478
  %38 = or i1 %28, %37, !dbg !1478
  br i1 %38, label %41, label %39, !dbg !1478

39:                                               ; preds = %36
  %40 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !1479
  br label %48, !dbg !1480

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()) #9, !dbg !1481
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1483
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !1483
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !1485
  %43 = load i64, i64* %42, align 8, !dbg !1485, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1432
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1486
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !1486
  call void @llvm.dbg.value(metadata i1 undef, metadata !983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1432
  %44 = and i64 %43, 3, !dbg !1489
  %45 = icmp eq i64 %44, 3, !dbg !1489
  br i1 %45, label %46, label %51, !dbg !1489

46:                                               ; preds = %41
  %47 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !1490
  br label %48, !dbg !1491

48:                                               ; preds = %5, %34, %39, %46
  %49 = phi i32 [ %6, %5 ], [ %40, %39 ], [ %35, %34 ], [ %47, %46 ], !dbg !1432
  call void @llvm.dbg.value(metadata i32 %49, metadata !1429, metadata !DIExpression()), !dbg !1431
  %50 = icmp eq i32 %49, 0, !dbg !1492
  br i1 %50, label %51, label %90, !dbg !1494

51:                                               ; preds = %41, %48
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1495
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !1495
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !1495
  %52 = tail call i8* @malloc(i64 1024) #7, !dbg !1497
  %53 = icmp eq i8* %52, null, !dbg !1498
  br i1 %53, label %56, label %54, !dbg !1499

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, i8* %52, i64 1023, !dbg !1500
  store i8 0, i8* %55, align 1, !dbg !1501, !tbaa !496
  br label %56, !dbg !1502

56:                                               ; preds = %51, %54
  %57 = phi i8* [ %55, %54 ], [ null, %51 ], !dbg !1503
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1504
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1504
  %58 = tail call i8* @halide_string_to_string(i8* %52, i8* %57, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !1506
  %59 = bitcast %struct.halide_device_interface_t* %2 to i8*, !dbg !1507
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1508
  call void @llvm.dbg.value(metadata i8* %59, metadata !771, metadata !DIExpression()) #9, !dbg !1508
  %60 = tail call i8* @halide_pointer_to_string(i8* %58, i8* %57, i8* %59) #7, !dbg !1510
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1511
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1511
  %61 = tail call i8* @halide_string_to_string(i8* %60, i8* %57, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !1513
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1514
  br i1 %53, label %62, label %63, !dbg !1516

62:                                               ; preds = %56
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1517
  br label %69, !dbg !1518

63:                                               ; preds = %56
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1519
  %64 = ptrtoint i8* %61 to i64, !dbg !1521
  %65 = ptrtoint i8* %52 to i64, !dbg !1521
  %66 = add i64 %64, 1, !dbg !1521
  %67 = sub i64 %66, %65, !dbg !1522
  %68 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %52, i64 %67) #7, !dbg !1523
  tail call void @halide_print(i8* %0, i8* nonnull %52) #7, !dbg !1524
  br label %69

69:                                               ; preds = %63, %62
  tail call void @free(i8* %52) #7, !dbg !1525
  %70 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !1526
  %71 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %70, align 8, !dbg !1526, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %71, metadata !1430, metadata !DIExpression()), !dbg !1431
  %72 = icmp eq %struct.halide_device_interface_t* %71, null, !dbg !1527
  %73 = icmp eq %struct.halide_device_interface_t* %71, %2
  %74 = or i1 %72, %73, !dbg !1529
  br i1 %74, label %76, label %75, !dbg !1529

75:                                               ; preds = %69
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !1530
  br label %90, !dbg !1532

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i64 0, i32 15, !dbg !1533
  %78 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %77, align 8, !dbg !1533, !tbaa !872
  %79 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %78, i64 0, i32 0, !dbg !1534
  %80 = load void ()*, void ()** %79, align 8, !dbg !1534, !tbaa !1535
  tail call void %80() #7, !dbg !1536
  %81 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %77, align 8, !dbg !1537, !tbaa !872
  %82 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %81, i64 0, i32 2, !dbg !1538
  %83 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %82, align 8, !dbg !1538, !tbaa !1539
  %84 = tail call i32 %83(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1540
  call void @llvm.dbg.value(metadata i32 %84, metadata !1429, metadata !DIExpression()), !dbg !1431
  %85 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %77, align 8, !dbg !1541, !tbaa !872
  %86 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %85, i64 0, i32 1, !dbg !1542
  %87 = load void ()*, void ()** %86, align 8, !dbg !1542, !tbaa !1543
  tail call void %87() #7, !dbg !1544
  %88 = icmp eq i32 %84, 0, !dbg !1545
  %89 = select i1 %88, i32 0, i32 -16, !dbg !1547
  ret i32 %89, !dbg !1547

90:                                               ; preds = %75, %48
  %91 = phi i32 [ %49, %48 ], [ -42, %75 ], !dbg !1431
  ret i32 %91, !dbg !1548
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_copy_to_device(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #4 !dbg !1549 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1551, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1552, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !1553, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !962, metadata !DIExpression()) #9, !dbg !1556
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !965, metadata !DIExpression()) #9, !dbg !1556
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !1554, metadata !DIExpression()), !dbg !1555
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !1558
  %4 = tail call i32 @copy_to_device_already_locked(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) #8, !dbg !1559
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1061, metadata !DIExpression()) #9, !dbg !1560
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !1562
  ret i32 %4, !dbg !1563
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_sync(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !1564 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1566, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1567, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()) #9, !dbg !1571
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !977, metadata !DIExpression()) #9, !dbg !1571
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), metadata !978, metadata !DIExpression()) #9, !dbg !1571
  %3 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !1573
  br i1 %3, label %4, label %6, !dbg !1574

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !1575
  br label %47, !dbg !1576

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !979, metadata !DIExpression()) #9, !dbg !1571
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1577
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !1577
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !1577
  %7 = tail call i8* @malloc(i64 1024) #7, !dbg !1579
  %8 = icmp eq i8* %7, null, !dbg !1580
  br i1 %8, label %11, label %9, !dbg !1581

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i64 1023, !dbg !1582
  store i8 0, i8* %10, align 1, !dbg !1583, !tbaa !496
  br label %11, !dbg !1584

11:                                               ; preds = %9, %6
  %12 = phi i8* [ %10, %9 ], [ null, %6 ], !dbg !1585
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1586
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1586
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %12, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !1588
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1589
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1589
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %12, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #7, !dbg !1591
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !1592
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !1592
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %12, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1594
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1595
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1595
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %12, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !1597
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1598
  br i1 %8, label %17, label %18, !dbg !1600

17:                                               ; preds = %11
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1601
  br label %24, !dbg !1602

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1603
  %19 = ptrtoint i8* %16 to i64, !dbg !1605
  %20 = ptrtoint i8* %7 to i64, !dbg !1605
  %21 = sub i64 1, %20, !dbg !1605
  %22 = add i64 %21, %19, !dbg !1606
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %22) #7, !dbg !1607
  tail call void @halide_print(i8* %0, i8* nonnull %7) #7, !dbg !1608
  br label %24

24:                                               ; preds = %18, %17
  tail call void @free(i8* %7) #7, !dbg !1609
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !1610
  %26 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %25, align 8, !dbg !1610, !tbaa !791
  %27 = icmp eq %struct.halide_device_interface_t* %26, null, !dbg !1611
  call void @llvm.dbg.value(metadata i1 %27, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1571
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1612
  %29 = load i64, i64* %28, align 8, !dbg !1612, !tbaa !560
  %30 = icmp eq i64 %29, 0, !dbg !1613
  call void @llvm.dbg.value(metadata i1 %30, metadata !981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1571
  %31 = xor i1 %27, true, !dbg !1614
  %32 = or i1 %30, %31, !dbg !1614
  br i1 %32, label %35, label %33, !dbg !1614

33:                                               ; preds = %24
  %34 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1615
  br label %47, !dbg !1616

35:                                               ; preds = %24
  %36 = xor i1 %30, true, !dbg !1617
  %37 = or i1 %27, %36, !dbg !1617
  br i1 %37, label %40, label %38, !dbg !1617

38:                                               ; preds = %35
  %39 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !1618
  br label %47, !dbg !1619

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()) #9, !dbg !1620
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1622
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !1622
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !1624
  %42 = load i64, i64* %41, align 8, !dbg !1624, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1571
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1625
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !1625
  call void @llvm.dbg.value(metadata i1 undef, metadata !983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1571
  %43 = and i64 %42, 3, !dbg !1628
  %44 = icmp eq i64 %43, 3, !dbg !1628
  br i1 %44, label %45, label %53, !dbg !1628

45:                                               ; preds = %40
  %46 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !1629
  br label %47, !dbg !1630

47:                                               ; preds = %4, %33, %38, %45
  %48 = phi i32 [ %5, %4 ], [ %39, %38 ], [ %34, %33 ], [ %46, %45 ], !dbg !1571
  call void @llvm.dbg.value(metadata i32 %48, metadata !1568, metadata !DIExpression()), !dbg !1570
  %49 = icmp eq i32 %48, 0, !dbg !1631
  br i1 %49, label %50, label %66, !dbg !1633

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %52 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %51, align 8, !dbg !1634, !tbaa !791
  br label %53, !dbg !1633

53:                                               ; preds = %50, %40
  %54 = phi %struct.halide_device_interface_t* [ %52, %50 ], [ %26, %40 ], !dbg !1634
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %54, metadata !1569, metadata !DIExpression()), !dbg !1570
  %55 = icmp eq %struct.halide_device_interface_t* %54, null, !dbg !1635
  br i1 %55, label %56, label %58, !dbg !1637

56:                                               ; preds = %53
  %57 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1638
  br label %66, !dbg !1640

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %54, i64 0, i32 15, !dbg !1641
  %60 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %59, align 8, !dbg !1641, !tbaa !872
  %61 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %60, i64 0, i32 4, !dbg !1642
  %62 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %61, align 8, !dbg !1642, !tbaa !1643
  %63 = tail call i32 %62(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1644
  call void @llvm.dbg.value(metadata i32 %63, metadata !1568, metadata !DIExpression()), !dbg !1570
  %64 = icmp eq i32 %63, 0, !dbg !1645
  %65 = select i1 %64, i32 0, i32 -17, !dbg !1647
  ret i32 %65, !dbg !1647

66:                                               ; preds = %56, %47
  %67 = phi i32 [ %48, %47 ], [ %57, %56 ], !dbg !1570
  ret i32 %67, !dbg !1648
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_free(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !1649 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1651, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1652, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()) #9, !dbg !1656
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !977, metadata !DIExpression()) #9, !dbg !1656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), metadata !978, metadata !DIExpression()) #9, !dbg !1656
  %3 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !1658
  br i1 %3, label %4, label %6, !dbg !1659

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !1660
  br label %47, !dbg !1661

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !979, metadata !DIExpression()) #9, !dbg !1656
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1662
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !1662
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !1662
  %7 = tail call i8* @malloc(i64 1024) #7, !dbg !1664
  %8 = icmp eq i8* %7, null, !dbg !1665
  br i1 %8, label %11, label %9, !dbg !1666

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i64 1023, !dbg !1667
  store i8 0, i8* %10, align 1, !dbg !1668, !tbaa !496
  br label %11, !dbg !1669

11:                                               ; preds = %9, %6
  %12 = phi i8* [ %10, %9 ], [ null, %6 ], !dbg !1670
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1671
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1671
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %12, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !1673
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1674
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1674
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %12, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #7, !dbg !1676
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !1677
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !1677
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %12, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1679
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1680
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1680
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %12, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !1682
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1683
  br i1 %8, label %17, label %18, !dbg !1685

17:                                               ; preds = %11
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1686
  br label %24, !dbg !1687

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1688
  %19 = ptrtoint i8* %16 to i64, !dbg !1690
  %20 = ptrtoint i8* %7 to i64, !dbg !1690
  %21 = sub i64 1, %20, !dbg !1690
  %22 = add i64 %21, %19, !dbg !1691
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %22) #7, !dbg !1692
  tail call void @halide_print(i8* %0, i8* nonnull %7) #7, !dbg !1693
  br label %24

24:                                               ; preds = %18, %17
  tail call void @free(i8* %7) #7, !dbg !1694
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !1695
  %26 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %25, align 8, !dbg !1695, !tbaa !791
  %27 = icmp eq %struct.halide_device_interface_t* %26, null, !dbg !1696
  call void @llvm.dbg.value(metadata i1 %27, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1656
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1697
  %29 = load i64, i64* %28, align 8, !dbg !1697, !tbaa !560
  %30 = icmp eq i64 %29, 0, !dbg !1698
  call void @llvm.dbg.value(metadata i1 %30, metadata !981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1656
  %31 = xor i1 %27, true, !dbg !1699
  %32 = or i1 %30, %31, !dbg !1699
  br i1 %32, label %35, label %33, !dbg !1699

33:                                               ; preds = %24
  %34 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1700
  br label %47, !dbg !1701

35:                                               ; preds = %24
  %36 = xor i1 %30, true, !dbg !1702
  %37 = or i1 %27, %36, !dbg !1702
  br i1 %37, label %40, label %38, !dbg !1702

38:                                               ; preds = %35
  %39 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !1703
  br label %47, !dbg !1704

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()) #9, !dbg !1705
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1707
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !1707
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !1709
  %42 = load i64, i64* %41, align 8, !dbg !1709, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1656
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1710
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !1710
  call void @llvm.dbg.value(metadata i1 undef, metadata !983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1656
  %43 = and i64 %42, 3, !dbg !1713
  %44 = icmp eq i64 %43, 3, !dbg !1713
  br i1 %44, label %45, label %53, !dbg !1713

45:                                               ; preds = %40
  %46 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !1714
  br label %47, !dbg !1715

47:                                               ; preds = %4, %33, %38, %45
  %48 = phi i32 [ %5, %4 ], [ %39, %38 ], [ %34, %33 ], [ %46, %45 ], !dbg !1656
  call void @llvm.dbg.value(metadata i32 %48, metadata !1653, metadata !DIExpression()), !dbg !1655
  %49 = icmp eq i32 %48, 0, !dbg !1716
  br i1 %49, label %50, label %79, !dbg !1718

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %52 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %51, align 8, !dbg !1719, !tbaa !791
  br label %53, !dbg !1718

53:                                               ; preds = %50, %40
  %54 = phi %struct.halide_device_interface_t* [ %52, %50 ], [ %26, %40 ], !dbg !1719
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %54, metadata !1654, metadata !DIExpression()), !dbg !1655
  %55 = icmp eq %struct.halide_device_interface_t* %54, null, !dbg !1720
  br i1 %55, label %75, label %56, !dbg !1722

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %54, i64 0, i32 15, !dbg !1723
  %58 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %57, align 8, !dbg !1723, !tbaa !872
  %59 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %58, i64 0, i32 0, !dbg !1725
  %60 = load void ()*, void ()** %59, align 8, !dbg !1725, !tbaa !1535
  tail call void %60() #7, !dbg !1726
  %61 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %57, align 8, !dbg !1727, !tbaa !872
  %62 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %61, i64 0, i32 3, !dbg !1728
  %63 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %62, align 8, !dbg !1728, !tbaa !1729
  %64 = tail call i32 %63(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1730
  call void @llvm.dbg.value(metadata i32 %64, metadata !1653, metadata !DIExpression()), !dbg !1655
  %65 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %57, align 8, !dbg !1731, !tbaa !872
  %66 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %65, i64 0, i32 1, !dbg !1732
  %67 = load void ()*, void ()** %66, align 8, !dbg !1732, !tbaa !1543
  tail call void %67() #7, !dbg !1733
  %68 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1734
  %69 = load i64, i64* %68, align 8, !dbg !1734, !tbaa !560
  %70 = icmp eq i64 %69, 0, !dbg !1734
  br i1 %70, label %72, label %71, !dbg !1737

71:                                               ; preds = %56
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !1738
  tail call void @abort() #7, !dbg !1738
  br label %72, !dbg !1738

72:                                               ; preds = %71, %56
  %73 = icmp eq i32 %64, 0, !dbg !1740
  %74 = select i1 %73, i32 0, i32 -18, !dbg !1742
  ret i32 %74, !dbg !1742

75:                                               ; preds = %53
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !913, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i1 false, metadata !916, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1743
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !919, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i32 2, metadata !922, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i1 false, metadata !923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1745
  %76 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !1747
  %77 = load i64, i64* %76, align 8, !dbg !1748, !tbaa !751
  %78 = and i64 %77, -3, !dbg !1748
  store i64 %78, i64* %76, align 8, !dbg !1748, !tbaa !751
  br label %79, !dbg !1749

79:                                               ; preds = %75, %47
  %80 = phi i32 [ %48, %47 ], [ 0, %75 ], !dbg !1655
  ret i32 %80, !dbg !1750
}

declare !dbg !1751 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !1752 dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_device_free_as_destructor(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1753 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1757, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8* %1, metadata !1758, metadata !DIExpression()), !dbg !1760
  %3 = bitcast i8* %1 to %struct.halide_buffer_t*, !dbg !1761
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1759, metadata !DIExpression()), !dbg !1760
  %4 = tail call i32 @halide_device_free(i8* %0, %struct.halide_buffer_t* %3) #8, !dbg !1762
  ret void, !dbg !1763
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #4 !dbg !1764 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1766, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1767, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !1768, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()) #9, !dbg !1772
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !977, metadata !DIExpression()) #9, !dbg !1772
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), metadata !978, metadata !DIExpression()) #9, !dbg !1772
  %4 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !1774
  br i1 %4, label %5, label %7, !dbg !1775

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0)) #7, !dbg !1776
  br label %48, !dbg !1777

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !979, metadata !DIExpression()) #9, !dbg !1772
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1778
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !1778
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !1778
  %8 = tail call i8* @malloc(i64 1024) #7, !dbg !1780
  %9 = icmp eq i8* %8, null, !dbg !1781
  br i1 %9, label %12, label %10, !dbg !1782

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023, !dbg !1783
  store i8 0, i8* %11, align 1, !dbg !1784, !tbaa !496
  br label %12, !dbg !1785

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !1786
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1787
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1787
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0)) #7, !dbg !1789
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1790
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1790
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #7, !dbg !1792
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !1793
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !1793
  %16 = tail call i8* @halide_buffer_to_string(i8* %15, i8* %13, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1795
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1796
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1796
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !1798
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1799
  br i1 %9, label %18, label %19, !dbg !1801

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1802
  br label %25, !dbg !1803

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1804
  %20 = ptrtoint i8* %17 to i64, !dbg !1806
  %21 = ptrtoint i8* %8 to i64, !dbg !1806
  %22 = sub i64 1, %21, !dbg !1806
  %23 = add i64 %22, %20, !dbg !1807
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %23) #7, !dbg !1808
  tail call void @halide_print(i8* %0, i8* nonnull %8) #7, !dbg !1809
  br label %25

25:                                               ; preds = %19, %18
  tail call void @free(i8* %8) #7, !dbg !1810
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !1811
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !dbg !1811, !tbaa !791
  %28 = icmp eq %struct.halide_device_interface_t* %27, null, !dbg !1812
  call void @llvm.dbg.value(metadata i1 %28, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1772
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1813
  %30 = load i64, i64* %29, align 8, !dbg !1813, !tbaa !560
  %31 = icmp eq i64 %30, 0, !dbg !1814
  call void @llvm.dbg.value(metadata i1 %31, metadata !981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1772
  %32 = xor i1 %28, true, !dbg !1815
  %33 = or i1 %31, %32, !dbg !1815
  br i1 %33, label %36, label %34, !dbg !1815

34:                                               ; preds = %25
  %35 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1816
  br label %48, !dbg !1817

36:                                               ; preds = %25
  %37 = xor i1 %31, true, !dbg !1818
  %38 = or i1 %28, %37, !dbg !1818
  br i1 %38, label %41, label %39, !dbg !1818

39:                                               ; preds = %36
  %40 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !1819
  br label %48, !dbg !1820

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()) #9, !dbg !1821
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1823
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !1823
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !1825
  %43 = load i64, i64* %42, align 8, !dbg !1825, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1772
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1826
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !1826
  call void @llvm.dbg.value(metadata i1 undef, metadata !983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1772
  %44 = and i64 %43, 3, !dbg !1829
  %45 = icmp eq i64 %44, 3, !dbg !1829
  br i1 %45, label %46, label %51, !dbg !1829

46:                                               ; preds = %41
  %47 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !1830
  br label %48, !dbg !1831

48:                                               ; preds = %5, %34, %39, %46
  %49 = phi i32 [ %6, %5 ], [ %40, %39 ], [ %35, %34 ], [ %47, %46 ], !dbg !1772
  call void @llvm.dbg.value(metadata i32 %49, metadata !1769, metadata !DIExpression()), !dbg !1771
  %50 = icmp eq i32 %49, 0, !dbg !1832
  br i1 %50, label %51, label %90, !dbg !1834

51:                                               ; preds = %41, %48
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1835
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !1835
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !1835
  %52 = tail call i8* @malloc(i64 1024) #7, !dbg !1837
  %53 = icmp eq i8* %52, null, !dbg !1838
  br i1 %53, label %56, label %54, !dbg !1839

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, i8* %52, i64 1023, !dbg !1840
  store i8 0, i8* %55, align 1, !dbg !1841, !tbaa !496
  br label %56, !dbg !1842

56:                                               ; preds = %51, %54
  %57 = phi i8* [ %55, %54 ], [ null, %51 ], !dbg !1843
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1844
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1844
  %58 = tail call i8* @halide_string_to_string(i8* %52, i8* %57, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i64 0, i64 0)) #7, !dbg !1846
  %59 = bitcast %struct.halide_device_interface_t* %2 to i8*, !dbg !1847
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1848
  call void @llvm.dbg.value(metadata i8* %59, metadata !771, metadata !DIExpression()) #9, !dbg !1848
  %60 = tail call i8* @halide_pointer_to_string(i8* %58, i8* %57, i8* %59) #7, !dbg !1850
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1851
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1851
  %61 = tail call i8* @halide_string_to_string(i8* %60, i8* %57, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !1853
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1854
  br i1 %53, label %62, label %63, !dbg !1856

62:                                               ; preds = %56
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1857
  br label %69, !dbg !1858

63:                                               ; preds = %56
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1859
  %64 = ptrtoint i8* %61 to i64, !dbg !1861
  %65 = ptrtoint i8* %52 to i64, !dbg !1861
  %66 = add i64 %64, 1, !dbg !1861
  %67 = sub i64 %66, %65, !dbg !1862
  %68 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %52, i64 %67) #7, !dbg !1863
  tail call void @halide_print(i8* %0, i8* nonnull %52) #7, !dbg !1864
  br label %69

69:                                               ; preds = %63, %62
  tail call void @free(i8* %52) #7, !dbg !1865
  %70 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !1866
  %71 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %70, align 8, !dbg !1866, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %71, metadata !1770, metadata !DIExpression()), !dbg !1771
  %72 = icmp eq %struct.halide_device_interface_t* %71, null, !dbg !1867
  %73 = icmp eq %struct.halide_device_interface_t* %71, %2
  %74 = or i1 %72, %73, !dbg !1869
  br i1 %74, label %76, label %75, !dbg !1869

75:                                               ; preds = %69
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !1870
  br label %90, !dbg !1872

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i64 0, i32 15, !dbg !1873
  %78 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %77, align 8, !dbg !1873, !tbaa !872
  %79 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %78, i64 0, i32 0, !dbg !1874
  %80 = load void ()*, void ()** %79, align 8, !dbg !1874, !tbaa !1535
  tail call void %80() #7, !dbg !1875
  %81 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %77, align 8, !dbg !1876, !tbaa !872
  %82 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %81, i64 0, i32 8, !dbg !1877
  %83 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %82, align 8, !dbg !1877, !tbaa !1878
  %84 = tail call i32 %83(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1879
  call void @llvm.dbg.value(metadata i32 %84, metadata !1769, metadata !DIExpression()), !dbg !1771
  %85 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %77, align 8, !dbg !1880, !tbaa !872
  %86 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %85, i64 0, i32 1, !dbg !1881
  %87 = load void ()*, void ()** %86, align 8, !dbg !1881, !tbaa !1543
  tail call void %87() #7, !dbg !1882
  %88 = icmp eq i32 %84, 0, !dbg !1883
  br i1 %88, label %90, label %89, !dbg !1885

89:                                               ; preds = %76
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !1886
  br label %90, !dbg !1888

90:                                               ; preds = %75, %89, %76, %48
  %91 = phi i32 [ %49, %48 ], [ -42, %75 ], [ -16, %89 ], [ 0, %76 ], !dbg !1771
  ret i32 %91, !dbg !1889
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !1890 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1892, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1893, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()) #9, !dbg !1897
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !977, metadata !DIExpression()) #9, !dbg !1897
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), metadata !978, metadata !DIExpression()) #9, !dbg !1897
  %3 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !1899
  br i1 %3, label %4, label %6, !dbg !1900

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !1901
  br label %47, !dbg !1902

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !979, metadata !DIExpression()) #9, !dbg !1897
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1903
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !1903
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !1903
  %7 = tail call i8* @malloc(i64 1024) #7, !dbg !1905
  %8 = icmp eq i8* %7, null, !dbg !1906
  br i1 %8, label %11, label %9, !dbg !1907

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i64 1023, !dbg !1908
  store i8 0, i8* %10, align 1, !dbg !1909, !tbaa !496
  br label %11, !dbg !1910

11:                                               ; preds = %9, %6
  %12 = phi i8* [ %10, %9 ], [ null, %6 ], !dbg !1911
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1912
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1912
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %12, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !1914
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1915
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1915
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %12, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #7, !dbg !1917
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !1918
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !1918
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %12, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1920
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !1921
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !1921
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %12, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !1923
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !1924
  br i1 %8, label %17, label %18, !dbg !1926

17:                                               ; preds = %11
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !1927
  br label %24, !dbg !1928

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !1929
  %19 = ptrtoint i8* %16 to i64, !dbg !1931
  %20 = ptrtoint i8* %7 to i64, !dbg !1931
  %21 = sub i64 1, %20, !dbg !1931
  %22 = add i64 %21, %19, !dbg !1932
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %22) #7, !dbg !1933
  tail call void @halide_print(i8* %0, i8* nonnull %7) #7, !dbg !1934
  br label %24

24:                                               ; preds = %18, %17
  tail call void @free(i8* %7) #7, !dbg !1935
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !1936
  %26 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %25, align 8, !dbg !1936, !tbaa !791
  %27 = icmp eq %struct.halide_device_interface_t* %26, null, !dbg !1937
  call void @llvm.dbg.value(metadata i1 %27, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1897
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1938
  %29 = load i64, i64* %28, align 8, !dbg !1938, !tbaa !560
  %30 = icmp eq i64 %29, 0, !dbg !1939
  call void @llvm.dbg.value(metadata i1 %30, metadata !981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1897
  %31 = xor i1 %27, true, !dbg !1940
  %32 = or i1 %30, %31, !dbg !1940
  br i1 %32, label %35, label %33, !dbg !1940

33:                                               ; preds = %24
  %34 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1941
  br label %47, !dbg !1942

35:                                               ; preds = %24
  %36 = xor i1 %30, true, !dbg !1943
  %37 = or i1 %27, %36, !dbg !1943
  br i1 %37, label %40, label %38, !dbg !1943

38:                                               ; preds = %35
  %39 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !1944
  br label %47, !dbg !1945

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()) #9, !dbg !1946
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1948
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !1948
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !1950
  %42 = load i64, i64* %41, align 8, !dbg !1950, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1897
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1951
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !1951
  call void @llvm.dbg.value(metadata i1 undef, metadata !983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1897
  %43 = and i64 %42, 3, !dbg !1954
  %44 = icmp eq i64 %43, 3, !dbg !1954
  br i1 %44, label %45, label %53, !dbg !1954

45:                                               ; preds = %40
  %46 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !1955
  br label %47, !dbg !1956

47:                                               ; preds = %4, %33, %38, %45
  %48 = phi i32 [ %5, %4 ], [ %39, %38 ], [ %34, %33 ], [ %46, %45 ], !dbg !1897
  call void @llvm.dbg.value(metadata i32 %48, metadata !1894, metadata !DIExpression()), !dbg !1896
  %49 = icmp eq i32 %48, 0, !dbg !1957
  br i1 %49, label %50, label %84, !dbg !1959

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %52 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %51, align 8, !dbg !1960, !tbaa !791
  br label %53, !dbg !1959

53:                                               ; preds = %50, %40
  %54 = phi %struct.halide_device_interface_t* [ %52, %50 ], [ %26, %40 ], !dbg !1960
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %54, metadata !1895, metadata !DIExpression()), !dbg !1896
  %55 = icmp eq %struct.halide_device_interface_t* %54, null, !dbg !1961
  br i1 %55, label %75, label %56, !dbg !1963

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %54, i64 0, i32 15, !dbg !1964
  %58 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %57, align 8, !dbg !1964, !tbaa !872
  %59 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %58, i64 0, i32 0, !dbg !1966
  %60 = load void ()*, void ()** %59, align 8, !dbg !1966, !tbaa !1535
  tail call void %60() #7, !dbg !1967
  %61 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %57, align 8, !dbg !1968, !tbaa !872
  %62 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %61, i64 0, i32 9, !dbg !1969
  %63 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %62, align 8, !dbg !1969, !tbaa !1970
  %64 = tail call i32 %63(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %64, metadata !1894, metadata !DIExpression()), !dbg !1896
  %65 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %57, align 8, !dbg !1972, !tbaa !872
  %66 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %65, i64 0, i32 1, !dbg !1973
  %67 = load void ()*, void ()** %66, align 8, !dbg !1973, !tbaa !1543
  tail call void %67() #7, !dbg !1974
  %68 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1975
  %69 = load i64, i64* %68, align 8, !dbg !1975, !tbaa !560
  %70 = icmp eq i64 %69, 0, !dbg !1975
  br i1 %70, label %72, label %71, !dbg !1978

71:                                               ; preds = %56
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !1979
  tail call void @abort() #7, !dbg !1979
  br label %72, !dbg !1979

72:                                               ; preds = %71, %56
  %73 = icmp eq i32 %64, 0, !dbg !1981
  %74 = select i1 %73, i32 0, i32 -18, !dbg !1983
  ret i32 %74, !dbg !1983

75:                                               ; preds = %53
  %76 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !1984
  %77 = load i8*, i8** %76, align 8, !dbg !1984, !tbaa !551
  %78 = icmp eq i8* %77, null, !dbg !1986
  br i1 %78, label %80, label %79, !dbg !1987

79:                                               ; preds = %75
  tail call void @halide_free(i8* %0, i8* nonnull %77) #7, !dbg !1988
  store i8* null, i8** %76, align 8, !dbg !1990, !tbaa !551
  br label %80, !dbg !1991

80:                                               ; preds = %75, %79
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !913, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i1 false, metadata !916, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1992
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !919, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i32 2, metadata !922, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i1 false, metadata !923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1994
  %81 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !1996
  %82 = load i64, i64* %81, align 8, !dbg !1997, !tbaa !751
  %83 = and i64 %82, -3, !dbg !1997
  store i64 %83, i64* %81, align 8, !dbg !1997, !tbaa !751
  br label %84, !dbg !1998

84:                                               ; preds = %80, %47
  %85 = phi i32 [ %48, %47 ], [ 0, %80 ], !dbg !1896
  ret i32 %85, !dbg !1999
}

declare !dbg !2000 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #4 !dbg !2001 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2003, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2004, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !2005, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()) #9, !dbg !2009
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !977, metadata !DIExpression()) #9, !dbg !2009
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0), metadata !978, metadata !DIExpression()) #9, !dbg !2009
  %4 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !2011
  br i1 %4, label %5, label %7, !dbg !2012

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !2013
  br label %48, !dbg !2014

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !979, metadata !DIExpression()) #9, !dbg !2009
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2015
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2015
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2015
  %8 = tail call i8* @malloc(i64 1024) #7, !dbg !2017
  %9 = icmp eq i8* %8, null, !dbg !2018
  br i1 %9, label %12, label %10, !dbg !2019

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023, !dbg !2020
  store i8 0, i8* %11, align 1, !dbg !2021, !tbaa !496
  br label %12, !dbg !2022

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !2023
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2024
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2024
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !2026
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2027
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2027
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #7, !dbg !2029
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !2030
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !2030
  %16 = tail call i8* @halide_buffer_to_string(i8* %15, i8* %13, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2032
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2033
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2033
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !2035
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2036
  br i1 %9, label %18, label %19, !dbg !2038

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2039
  br label %25, !dbg !2040

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !2041
  %20 = ptrtoint i8* %17 to i64, !dbg !2043
  %21 = ptrtoint i8* %8 to i64, !dbg !2043
  %22 = sub i64 1, %21, !dbg !2043
  %23 = add i64 %22, %20, !dbg !2044
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %23) #7, !dbg !2045
  tail call void @halide_print(i8* %0, i8* nonnull %8) #7, !dbg !2046
  br label %25

25:                                               ; preds = %19, %18
  tail call void @free(i8* %8) #7, !dbg !2047
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2048
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !dbg !2048, !tbaa !791
  %28 = icmp eq %struct.halide_device_interface_t* %27, null, !dbg !2049
  call void @llvm.dbg.value(metadata i1 %28, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2009
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2050
  %30 = load i64, i64* %29, align 8, !dbg !2050, !tbaa !560
  %31 = icmp eq i64 %30, 0, !dbg !2051
  call void @llvm.dbg.value(metadata i1 %31, metadata !981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2009
  %32 = xor i1 %28, true, !dbg !2052
  %33 = or i1 %31, %32, !dbg !2052
  br i1 %33, label %36, label %34, !dbg !2052

34:                                               ; preds = %25
  %35 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !2053
  br label %48, !dbg !2054

36:                                               ; preds = %25
  %37 = xor i1 %31, true, !dbg !2055
  %38 = or i1 %28, %37, !dbg !2055
  br i1 %38, label %41, label %39, !dbg !2055

39:                                               ; preds = %36
  %40 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !2056
  br label %48, !dbg !2057

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()) #9, !dbg !2058
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2060
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !2060
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !2062
  %43 = load i64, i64* %42, align 8, !dbg !2062, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2009
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2063
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !2063
  call void @llvm.dbg.value(metadata i1 undef, metadata !983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2009
  %44 = and i64 %43, 3, !dbg !2066
  %45 = icmp eq i64 %44, 3, !dbg !2066
  br i1 %45, label %46, label %51, !dbg !2066

46:                                               ; preds = %41
  %47 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !2067
  br label %48, !dbg !2068

48:                                               ; preds = %5, %34, %39, %46
  %49 = phi i32 [ %6, %5 ], [ %40, %39 ], [ %35, %34 ], [ %47, %46 ], !dbg !2009
  call void @llvm.dbg.value(metadata i32 %49, metadata !2006, metadata !DIExpression()), !dbg !2008
  %50 = icmp eq i32 %49, 0, !dbg !2069
  br i1 %50, label %51, label %119, !dbg !2071

51:                                               ; preds = %41, %48
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2072, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2077, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 0, metadata !2080, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i32 0, metadata !2081, metadata !DIExpression()), !dbg !2085
  %52 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !2086
  %53 = load i32, i32* %52, align 4, !dbg !2086, !tbaa !595
  %54 = icmp sgt i32 %53, 0, !dbg !2088
  br i1 %54, label %58, label %55, !dbg !2089

55:                                               ; preds = %51
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !2090
  %56 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !2092
  %57 = load i8, i8* %56, align 1, !dbg !2092, !tbaa !576
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2093, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 0, metadata !2096, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i32 0, metadata !2097, metadata !DIExpression()), !dbg !2101
  br label %101, !dbg !2102

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %60 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %59, align 8, !tbaa !598
  %61 = zext i32 %53 to i64, !dbg !2088
  br label %62, !dbg !2089

62:                                               ; preds = %76, %58
  %63 = phi i64 [ 0, %58 ], [ %78, %76 ]
  %64 = phi i64 [ 0, %58 ], [ %77, %76 ]
  call void @llvm.dbg.value(metadata i64 %63, metadata !2081, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %64, metadata !2080, metadata !DIExpression()), !dbg !2083
  %65 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %60, i64 %63, i32 2, !dbg !2103
  %66 = load i32, i32* %65, align 4, !dbg !2103, !tbaa !606
  %67 = icmp sgt i32 %66, 0, !dbg !2106
  br i1 %67, label %68, label %76, !dbg !2107

68:                                               ; preds = %62
  %69 = zext i32 %66 to i64, !dbg !2108
  %70 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %60, i64 %63, i32 1, !dbg !2110
  %71 = load i32, i32* %70, align 4, !dbg !2110, !tbaa !671
  %72 = add nsw i32 %71, -1, !dbg !2111
  %73 = sext i32 %72 to i64, !dbg !2112
  %74 = mul nsw i64 %73, %69, !dbg !2113
  %75 = add nsw i64 %74, %64, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %75, metadata !2080, metadata !DIExpression()), !dbg !2083
  br label %76, !dbg !2115

76:                                               ; preds = %68, %62
  %77 = phi i64 [ %75, %68 ], [ %64, %62 ], !dbg !2083
  call void @llvm.dbg.value(metadata i64 %77, metadata !2080, metadata !DIExpression()), !dbg !2083
  %78 = add nuw nsw i64 %63, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %78, metadata !2081, metadata !DIExpression()), !dbg !2085
  %79 = icmp eq i64 %78, %61, !dbg !2088
  br i1 %79, label %80, label %62, !dbg !2089, !llvm.loop !2117

80:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i64 %77, metadata !2080, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2083
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !2090
  %81 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !2092
  %82 = load i8, i8* %81, align 1, !dbg !2092, !tbaa !576
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2093, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 0, metadata !2096, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i32 0, metadata !2097, metadata !DIExpression()), !dbg !2101
  br label %83, !dbg !2102

83:                                               ; preds = %97, %80
  %84 = phi i64 [ 0, %80 ], [ %99, %97 ]
  %85 = phi i64 [ 0, %80 ], [ %98, %97 ]
  call void @llvm.dbg.value(metadata i64 %84, metadata !2097, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %85, metadata !2096, metadata !DIExpression()), !dbg !2099
  %86 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %60, i64 %84, i32 2, !dbg !2119
  %87 = load i32, i32* %86, align 4, !dbg !2119, !tbaa !606
  %88 = icmp slt i32 %87, 0, !dbg !2123
  br i1 %88, label %89, label %97, !dbg !2124

89:                                               ; preds = %83
  %90 = sext i32 %87 to i64, !dbg !2125
  %91 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %60, i64 %84, i32 1, !dbg !2127
  %92 = load i32, i32* %91, align 4, !dbg !2127, !tbaa !671
  %93 = add nsw i32 %92, -1, !dbg !2128
  %94 = sext i32 %93 to i64, !dbg !2129
  %95 = mul nsw i64 %94, %90, !dbg !2130
  %96 = add nsw i64 %95, %85, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %96, metadata !2096, metadata !DIExpression()), !dbg !2099
  br label %97, !dbg !2132

97:                                               ; preds = %89, %83
  %98 = phi i64 [ %96, %89 ], [ %85, %83 ], !dbg !2099
  call void @llvm.dbg.value(metadata i64 %98, metadata !2096, metadata !DIExpression()), !dbg !2099
  %99 = add nuw nsw i64 %84, 1, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %99, metadata !2097, metadata !DIExpression()), !dbg !2101
  %100 = icmp eq i64 %99, %61, !dbg !2134
  br i1 %100, label %101, label %83, !dbg !2102, !llvm.loop !2135

101:                                              ; preds = %97, %55
  %102 = phi i8 [ %57, %55 ], [ %82, %97 ]
  %103 = phi i64 [ 0, %55 ], [ %77, %97 ]
  %104 = phi i64 [ 0, %55 ], [ %98, %97 ], !dbg !2099
  %105 = zext i8 %102 to i64, !dbg !2092
  %106 = add nuw nsw i64 %105, 7, !dbg !2137
  %107 = lshr i64 %106, 3, !dbg !2138
  %108 = add nsw i64 %103, 1, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %108, metadata !2080, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !2140
  %109 = sub i64 %108, %104, !dbg !2142
  %110 = mul i64 %109, %107, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %110, metadata !2007, metadata !DIExpression()), !dbg !2008
  %111 = tail call i8* @halide_malloc(i8* %0, i64 %110) #7, !dbg !2143
  %112 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !2144
  store i8* %111, i8** %112, align 8, !dbg !2145, !tbaa !551
  %113 = icmp eq i8* %111, null, !dbg !2146
  br i1 %113, label %119, label %114, !dbg !2148

114:                                              ; preds = %101
  %115 = tail call i32 @halide_device_malloc(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* %2) #8, !dbg !2149
  call void @llvm.dbg.value(metadata i32 %115, metadata !2006, metadata !DIExpression()), !dbg !2008
  %116 = icmp eq i32 %115, 0, !dbg !2150
  br i1 %116, label %119, label %117, !dbg !2152

117:                                              ; preds = %114
  %118 = load i8*, i8** %112, align 8, !dbg !2153, !tbaa !551
  tail call void @halide_free(i8* %0, i8* %118) #7, !dbg !2155
  store i8* null, i8** %112, align 8, !dbg !2156, !tbaa !551
  br label %119, !dbg !2157

119:                                              ; preds = %101, %117, %114, %48
  %120 = phi i32 [ %49, %48 ], [ -1, %101 ], [ %115, %117 ], [ 0, %114 ], !dbg !2008
  ret i32 %120, !dbg !2158
}

declare !dbg !2159 dso_local i8* @halide_malloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #4 !dbg !2162 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2164, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !2166, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()) #9, !dbg !2169
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !977, metadata !DIExpression()) #9, !dbg !2169
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0), metadata !978, metadata !DIExpression()) #9, !dbg !2169
  %4 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !2171
  br i1 %4, label %5, label %7, !dbg !2172

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !2173
  br label %48, !dbg !2174

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !979, metadata !DIExpression()) #9, !dbg !2169
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2175
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2175
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2175
  %8 = tail call i8* @malloc(i64 1024) #7, !dbg !2177
  %9 = icmp eq i8* %8, null, !dbg !2178
  br i1 %9, label %12, label %10, !dbg !2179

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023, !dbg !2180
  store i8 0, i8* %11, align 1, !dbg !2181, !tbaa !496
  br label %12, !dbg !2182

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !2183
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2184
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2184
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !2186
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2187
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2187
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #7, !dbg !2189
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !2190
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !2190
  %16 = tail call i8* @halide_buffer_to_string(i8* %15, i8* %13, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2192
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2193
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2193
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !2195
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2196
  br i1 %9, label %18, label %19, !dbg !2198

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2199
  br label %25, !dbg !2200

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !2201
  %20 = ptrtoint i8* %17 to i64, !dbg !2203
  %21 = ptrtoint i8* %8 to i64, !dbg !2203
  %22 = sub i64 1, %21, !dbg !2203
  %23 = add i64 %22, %20, !dbg !2204
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %23) #7, !dbg !2205
  tail call void @halide_print(i8* %0, i8* nonnull %8) #7, !dbg !2206
  br label %25

25:                                               ; preds = %19, %18
  tail call void @free(i8* %8) #7, !dbg !2207
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2208
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !dbg !2208, !tbaa !791
  %28 = icmp eq %struct.halide_device_interface_t* %27, null, !dbg !2209
  call void @llvm.dbg.value(metadata i1 %28, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2169
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2210
  %30 = load i64, i64* %29, align 8, !dbg !2210, !tbaa !560
  %31 = icmp eq i64 %30, 0, !dbg !2211
  call void @llvm.dbg.value(metadata i1 %31, metadata !981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2169
  %32 = xor i1 %28, true, !dbg !2212
  %33 = or i1 %31, %32, !dbg !2212
  br i1 %33, label %36, label %34, !dbg !2212

34:                                               ; preds = %25
  %35 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !2213
  br label %48, !dbg !2214

36:                                               ; preds = %25
  %37 = xor i1 %31, true, !dbg !2215
  %38 = or i1 %28, %37, !dbg !2215
  br i1 %38, label %41, label %39, !dbg !2215

39:                                               ; preds = %36
  %40 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !2216
  br label %48, !dbg !2217

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()) #9, !dbg !2218
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2220
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !2220
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !2222
  %43 = load i64, i64* %42, align 8, !dbg !2222, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2169
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2223
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !2223
  call void @llvm.dbg.value(metadata i1 undef, metadata !983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2169
  %44 = and i64 %43, 3, !dbg !2226
  %45 = icmp eq i64 %44, 3, !dbg !2226
  br i1 %45, label %46, label %51, !dbg !2226

46:                                               ; preds = %41
  %47 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !2227
  br label %48, !dbg !2228

48:                                               ; preds = %5, %34, %39, %46
  %49 = phi i32 [ %6, %5 ], [ %40, %39 ], [ %35, %34 ], [ %47, %46 ], !dbg !2169
  call void @llvm.dbg.value(metadata i32 %49, metadata !2167, metadata !DIExpression()), !dbg !2168
  %50 = icmp eq i32 %49, 0, !dbg !2229
  br i1 %50, label %51, label %61, !dbg !2231

51:                                               ; preds = %41, %48
  %52 = tail call i32 @halide_device_free(i8* %0, %struct.halide_buffer_t* %1) #8, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %52, metadata !2167, metadata !DIExpression()), !dbg !2168
  %53 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !2233
  %54 = load i8*, i8** %53, align 8, !dbg !2233, !tbaa !551
  %55 = icmp eq i8* %54, null, !dbg !2235
  br i1 %55, label %57, label %56, !dbg !2236

56:                                               ; preds = %51
  tail call void @halide_free(i8* %0, i8* nonnull %54) #7, !dbg !2237
  store i8* null, i8** %53, align 8, !dbg !2239, !tbaa !551
  br label %57, !dbg !2240

57:                                               ; preds = %56, %51
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1349, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i1 false, metadata !1352, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2241
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !919, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i32 1, metadata !922, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i1 false, metadata !923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2243
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !2245
  %59 = load i64, i64* %58, align 8, !dbg !2246, !tbaa !751
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !913, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i1 false, metadata !916, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2247
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !919, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 2, metadata !922, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i1 false, metadata !923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2249
  %60 = and i64 %59, -4, !dbg !2251
  store i64 %60, i64* %58, align 8, !dbg !2251, !tbaa !751
  br label %61, !dbg !2252

61:                                               ; preds = %48, %57
  %62 = phi i32 [ %52, %57 ], [ %49, %48 ], !dbg !2168
  ret i32 %62, !dbg !2253
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_wrap_native(i8* %0, %struct.halide_buffer_t* %1, i64 %2, %struct.halide_device_interface_t* %3) local_unnamed_addr #4 !dbg !2254 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2256, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2257, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i64 %2, metadata !2258, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %3, metadata !2259, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()) #9, !dbg !2263
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !977, metadata !DIExpression()) #9, !dbg !2263
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0), metadata !978, metadata !DIExpression()) #9, !dbg !2263
  %5 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !2265
  br i1 %5, label %6, label %8, !dbg !2266

6:                                                ; preds = %4
  %7 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0)) #7, !dbg !2267
  br label %49, !dbg !2268

8:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !979, metadata !DIExpression()) #9, !dbg !2263
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2269
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2269
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2269
  %9 = tail call i8* @malloc(i64 1024) #7, !dbg !2271
  %10 = icmp eq i8* %9, null, !dbg !2272
  br i1 %10, label %13, label %11, !dbg !2273

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i64 1023, !dbg !2274
  store i8 0, i8* %12, align 1, !dbg !2275, !tbaa !496
  br label %13, !dbg !2276

13:                                               ; preds = %11, %8
  %14 = phi i8* [ %12, %11 ], [ null, %8 ], !dbg !2277
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2278
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2278
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0)) #7, !dbg !2280
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2281
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2281
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #7, !dbg !2283
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !2284
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !2284
  %17 = tail call i8* @halide_buffer_to_string(i8* %16, i8* %14, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2286
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2287
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2287
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !2289
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2290
  br i1 %10, label %19, label %20, !dbg !2292

19:                                               ; preds = %13
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2293
  br label %26, !dbg !2294

20:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !2295
  %21 = ptrtoint i8* %18 to i64, !dbg !2297
  %22 = ptrtoint i8* %9 to i64, !dbg !2297
  %23 = sub i64 1, %22, !dbg !2297
  %24 = add i64 %23, %21, !dbg !2298
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %24) #7, !dbg !2299
  tail call void @halide_print(i8* %0, i8* nonnull %9) #7, !dbg !2300
  br label %26

26:                                               ; preds = %20, %19
  tail call void @free(i8* %9) #7, !dbg !2301
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2302
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !dbg !2302, !tbaa !791
  %29 = icmp eq %struct.halide_device_interface_t* %28, null, !dbg !2303
  call void @llvm.dbg.value(metadata i1 %29, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2263
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2304
  %31 = load i64, i64* %30, align 8, !dbg !2304, !tbaa !560
  %32 = icmp eq i64 %31, 0, !dbg !2305
  call void @llvm.dbg.value(metadata i1 %32, metadata !981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2263
  %33 = xor i1 %29, true, !dbg !2306
  %34 = or i1 %32, %33, !dbg !2306
  br i1 %34, label %37, label %35, !dbg !2306

35:                                               ; preds = %26
  %36 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !2307
  br label %49, !dbg !2308

37:                                               ; preds = %26
  %38 = xor i1 %32, true, !dbg !2309
  %39 = or i1 %29, %38, !dbg !2309
  br i1 %39, label %42, label %40, !dbg !2309

40:                                               ; preds = %37
  %41 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !2310
  br label %49, !dbg !2311

42:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()) #9, !dbg !2312
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2314
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !2314
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !2316
  %44 = load i64, i64* %43, align 8, !dbg !2316, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2263
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2317
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !2317
  call void @llvm.dbg.value(metadata i1 undef, metadata !983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2263
  %45 = and i64 %44, 3, !dbg !2320
  %46 = icmp eq i64 %45, 3, !dbg !2320
  br i1 %46, label %47, label %55, !dbg !2320

47:                                               ; preds = %42
  %48 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !2321
  br label %49, !dbg !2322

49:                                               ; preds = %6, %35, %40, %47
  %50 = phi i32 [ %7, %6 ], [ %41, %40 ], [ %36, %35 ], [ %48, %47 ], !dbg !2263
  call void @llvm.dbg.value(metadata i32 %50, metadata !2260, metadata !DIExpression()), !dbg !2262
  %51 = icmp eq i32 %50, 0, !dbg !2323
  br i1 %51, label %52, label %76, !dbg !2325

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %54 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %53, align 8, !dbg !2326, !tbaa !791
  br label %55, !dbg !2325

55:                                               ; preds = %52, %42
  %56 = phi %struct.halide_device_interface_t* [ %54, %52 ], [ %28, %42 ], !dbg !2326
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %56, metadata !2261, metadata !DIExpression()), !dbg !2262
  %57 = icmp eq %struct.halide_device_interface_t* %56, null, !dbg !2327
  %58 = icmp eq %struct.halide_device_interface_t* %56, %3
  %59 = or i1 %57, %58, !dbg !2329
  br i1 %59, label %61, label %60, !dbg !2329

60:                                               ; preds = %55
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.32, i64 0, i64 0)) #7, !dbg !2330
  br label %76, !dbg !2332

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2326
  %63 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %3, i64 0, i32 15, !dbg !2333
  %64 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %63, align 8, !dbg !2333, !tbaa !872
  %65 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %64, i64 0, i32 0, !dbg !2334
  %66 = load void ()*, void ()** %65, align 8, !dbg !2334, !tbaa !1535
  tail call void %66() #7, !dbg !2335
  store %struct.halide_device_interface_t* %3, %struct.halide_device_interface_t** %62, align 8, !dbg !2336, !tbaa !791
  %67 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %63, align 8, !dbg !2337, !tbaa !872
  %68 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %67, i64 0, i32 14, !dbg !2338
  %69 = load i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*, i64)** %68, align 8, !dbg !2338, !tbaa !2339
  %70 = tail call i32 %69(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %2) #7, !dbg !2340
  call void @llvm.dbg.value(metadata i32 %70, metadata !2260, metadata !DIExpression()), !dbg !2262
  %71 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %63, align 8, !dbg !2341, !tbaa !872
  %72 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %71, i64 0, i32 1, !dbg !2342
  %73 = load void ()*, void ()** %72, align 8, !dbg !2342, !tbaa !1543
  tail call void %73() #7, !dbg !2343
  %74 = icmp eq i32 %70, 0, !dbg !2344
  %75 = select i1 %74, i32 0, i32 -16, !dbg !2346
  ret i32 %75, !dbg !2346

76:                                               ; preds = %60, %49
  %77 = phi i32 [ %50, %49 ], [ -42, %60 ], !dbg !2262
  ret i32 %77, !dbg !2347
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_detach_native(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !2348 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2350, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2351, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()) #9, !dbg !2355
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !977, metadata !DIExpression()) #9, !dbg !2355
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), metadata !978, metadata !DIExpression()) #9, !dbg !2355
  %3 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !2357
  br i1 %3, label %4, label %6, !dbg !2358

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0)) #7, !dbg !2359
  br label %47, !dbg !2360

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !979, metadata !DIExpression()) #9, !dbg !2355
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2361
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2361
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2361
  %7 = tail call i8* @malloc(i64 1024) #7, !dbg !2363
  %8 = icmp eq i8* %7, null, !dbg !2364
  br i1 %8, label %11, label %9, !dbg !2365

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i64 1023, !dbg !2366
  store i8 0, i8* %10, align 1, !dbg !2367, !tbaa !496
  br label %11, !dbg !2368

11:                                               ; preds = %9, %6
  %12 = phi i8* [ %10, %9 ], [ null, %6 ], !dbg !2369
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2370
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2370
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %12, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0)) #7, !dbg !2372
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2373
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2373
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %12, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #7, !dbg !2375
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !2376
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !2376
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %12, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2378
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2379
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2379
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %12, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !2381
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2382
  br i1 %8, label %17, label %18, !dbg !2384

17:                                               ; preds = %11
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2385
  br label %24, !dbg !2386

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !2387
  %19 = ptrtoint i8* %16 to i64, !dbg !2389
  %20 = ptrtoint i8* %7 to i64, !dbg !2389
  %21 = sub i64 1, %20, !dbg !2389
  %22 = add i64 %21, %19, !dbg !2390
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %22) #7, !dbg !2391
  tail call void @halide_print(i8* %0, i8* nonnull %7) #7, !dbg !2392
  br label %24

24:                                               ; preds = %18, %17
  tail call void @free(i8* %7) #7, !dbg !2393
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2394
  %26 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %25, align 8, !dbg !2394, !tbaa !791
  %27 = icmp eq %struct.halide_device_interface_t* %26, null, !dbg !2395
  call void @llvm.dbg.value(metadata i1 %27, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2355
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2396
  %29 = load i64, i64* %28, align 8, !dbg !2396, !tbaa !560
  %30 = icmp eq i64 %29, 0, !dbg !2397
  call void @llvm.dbg.value(metadata i1 %30, metadata !981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2355
  %31 = xor i1 %27, true, !dbg !2398
  %32 = or i1 %30, %31, !dbg !2398
  br i1 %32, label %35, label %33, !dbg !2398

33:                                               ; preds = %24
  %34 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !2399
  br label %47, !dbg !2400

35:                                               ; preds = %24
  %36 = xor i1 %30, true, !dbg !2401
  %37 = or i1 %27, %36, !dbg !2401
  br i1 %37, label %40, label %38, !dbg !2401

38:                                               ; preds = %35
  %39 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !2402
  br label %47, !dbg !2403

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()) #9, !dbg !2404
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2406
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !2406
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !2408
  %42 = load i64, i64* %41, align 8, !dbg !2408, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2355
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2409
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !2409
  call void @llvm.dbg.value(metadata i1 undef, metadata !983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2355
  %43 = and i64 %42, 3, !dbg !2412
  %44 = icmp eq i64 %43, 3, !dbg !2412
  br i1 %44, label %45, label %53, !dbg !2412

45:                                               ; preds = %40
  %46 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !2413
  br label %47, !dbg !2414

47:                                               ; preds = %4, %33, %38, %45
  %48 = phi i32 [ %5, %4 ], [ %39, %38 ], [ %34, %33 ], [ %46, %45 ], !dbg !2355
  call void @llvm.dbg.value(metadata i32 %48, metadata !2352, metadata !DIExpression()), !dbg !2354
  %49 = icmp eq i32 %48, 0, !dbg !2415
  br i1 %49, label %50, label %75, !dbg !2417

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %52 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %51, align 8, !dbg !2418, !tbaa !791
  br label %53, !dbg !2417

53:                                               ; preds = %50, %40
  %54 = phi %struct.halide_device_interface_t* [ %52, %50 ], [ %26, %40 ], !dbg !2418
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %54, metadata !2353, metadata !DIExpression()), !dbg !2354
  %55 = icmp eq %struct.halide_device_interface_t* %54, null, !dbg !2419
  br i1 %55, label %75, label %56, !dbg !2421

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %54, i64 0, i32 15, !dbg !2422
  %58 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %57, align 8, !dbg !2422, !tbaa !872
  %59 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %58, i64 0, i32 0, !dbg !2424
  %60 = load void ()*, void ()** %59, align 8, !dbg !2424, !tbaa !1535
  tail call void %60() #7, !dbg !2425
  %61 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %57, align 8, !dbg !2426, !tbaa !872
  %62 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %61, i64 0, i32 15, !dbg !2427
  %63 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %62, align 8, !dbg !2427, !tbaa !2428
  %64 = tail call i32 %63(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2429
  call void @llvm.dbg.value(metadata i32 %64, metadata !2352, metadata !DIExpression()), !dbg !2354
  %65 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %57, align 8, !dbg !2430, !tbaa !872
  %66 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %65, i64 0, i32 1, !dbg !2431
  %67 = load void ()*, void ()** %66, align 8, !dbg !2431, !tbaa !1543
  tail call void %67() #7, !dbg !2432
  %68 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2433
  %69 = load i64, i64* %68, align 8, !dbg !2433, !tbaa !560
  %70 = icmp eq i64 %69, 0, !dbg !2433
  br i1 %70, label %72, label %71, !dbg !2436

71:                                               ; preds = %56
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.34, i64 0, i64 0)) #7, !dbg !2437
  tail call void @abort() #7, !dbg !2437
  br label %72, !dbg !2437

72:                                               ; preds = %71, %56
  %73 = icmp eq i32 %64, 0, !dbg !2439
  %74 = select i1 %73, i32 0, i32 -33, !dbg !2441
  ret i32 %74, !dbg !2441

75:                                               ; preds = %53, %47
  %76 = phi i32 [ %48, %47 ], [ 0, %53 ], !dbg !2354
  ret i32 %76, !dbg !2442
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_default_device_wrap_native(i8* %0, %struct.halide_buffer_t* %1, i64 %2) local_unnamed_addr #4 !dbg !2443 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2445, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2446, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i64 %2, metadata !2447, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()) #9, !dbg !2450
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !977, metadata !DIExpression()) #9, !dbg !2450
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i64 0, i64 0), metadata !978, metadata !DIExpression()) #9, !dbg !2450
  %4 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !2452
  br i1 %4, label %5, label %7, !dbg !2453

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i64 0, i64 0)) #7, !dbg !2454
  br label %48, !dbg !2455

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !979, metadata !DIExpression()) #9, !dbg !2450
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2456
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2456
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2456
  %8 = tail call i8* @malloc(i64 1024) #7, !dbg !2458
  %9 = icmp eq i8* %8, null, !dbg !2459
  br i1 %9, label %12, label %10, !dbg !2460

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023, !dbg !2461
  store i8 0, i8* %11, align 1, !dbg !2462, !tbaa !496
  br label %12, !dbg !2463

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !2464
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2465
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2465
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i64 0, i64 0)) #7, !dbg !2467
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2468
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2468
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #7, !dbg !2470
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !2471
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !2471
  %16 = tail call i8* @halide_buffer_to_string(i8* %15, i8* %13, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2473
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2474
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2474
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !2476
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2477
  br i1 %9, label %18, label %19, !dbg !2479

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2480
  br label %25, !dbg !2481

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !2482
  %20 = ptrtoint i8* %17 to i64, !dbg !2484
  %21 = ptrtoint i8* %8 to i64, !dbg !2484
  %22 = sub i64 1, %21, !dbg !2484
  %23 = add i64 %22, %20, !dbg !2485
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %23) #7, !dbg !2486
  tail call void @halide_print(i8* %0, i8* nonnull %8) #7, !dbg !2487
  br label %25

25:                                               ; preds = %19, %18
  tail call void @free(i8* %8) #7, !dbg !2488
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2489
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !dbg !2489, !tbaa !791
  %28 = icmp eq %struct.halide_device_interface_t* %27, null, !dbg !2490
  call void @llvm.dbg.value(metadata i1 %28, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2450
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2491
  %30 = load i64, i64* %29, align 8, !dbg !2491, !tbaa !560
  %31 = icmp eq i64 %30, 0, !dbg !2492
  call void @llvm.dbg.value(metadata i1 %31, metadata !981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2450
  %32 = xor i1 %28, true, !dbg !2493
  %33 = or i1 %31, %32, !dbg !2493
  br i1 %33, label %36, label %34, !dbg !2493

34:                                               ; preds = %25
  %35 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !2494
  br label %48, !dbg !2495

36:                                               ; preds = %25
  %37 = xor i1 %31, true, !dbg !2496
  %38 = or i1 %28, %37, !dbg !2496
  br i1 %38, label %41, label %39, !dbg !2496

39:                                               ; preds = %36
  %40 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !2497
  br label %48, !dbg !2498

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()) #9, !dbg !2499
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2501
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !2501
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !2503
  %43 = load i64, i64* %42, align 8, !dbg !2503, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2450
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2504
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !2504
  call void @llvm.dbg.value(metadata i1 undef, metadata !983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2450
  %44 = and i64 %43, 3, !dbg !2507
  %45 = icmp eq i64 %44, 3, !dbg !2507
  br i1 %45, label %46, label %54, !dbg !2507

46:                                               ; preds = %41
  %47 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !2508
  br label %48, !dbg !2509

48:                                               ; preds = %5, %34, %39, %46
  %49 = phi i32 [ %6, %5 ], [ %40, %39 ], [ %35, %34 ], [ %47, %46 ], !dbg !2450
  call void @llvm.dbg.value(metadata i32 %49, metadata !2448, metadata !DIExpression()), !dbg !2449
  %50 = icmp eq i32 %49, 0, !dbg !2510
  br i1 %50, label %51, label %61, !dbg !2512

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %53 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %52, align 8, !dbg !2513, !tbaa !791
  br label %54, !dbg !2512

54:                                               ; preds = %51, %41
  %55 = phi %struct.halide_device_interface_t* [ %53, %51 ], [ %27, %41 ], !dbg !2513
  %56 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %55, i64 0, i32 15, !dbg !2514
  %57 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %56, align 8, !dbg !2514, !tbaa !872
  %58 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %57, i64 0, i32 0, !dbg !2515
  %59 = load void ()*, void ()** %58, align 8, !dbg !2515, !tbaa !1535
  tail call void %59() #7, !dbg !2516
  %60 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2517
  store i64 %2, i64* %60, align 8, !dbg !2518, !tbaa !560
  br label %61, !dbg !2519

61:                                               ; preds = %48, %54
  %62 = phi i32 [ 0, %54 ], [ %49, %48 ], !dbg !2449
  ret i32 %62, !dbg !2520
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_default_device_detach_native(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !2521 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2523, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2524, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()) #9, !dbg !2527
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !977, metadata !DIExpression()) #9, !dbg !2527
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0), metadata !978, metadata !DIExpression()) #9, !dbg !2527
  %3 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !2529
  br i1 %3, label %4, label %6, !dbg !2530

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0)) #7, !dbg !2531
  br label %47, !dbg !2532

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !979, metadata !DIExpression()) #9, !dbg !2527
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2533
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2533
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2533
  %7 = tail call i8* @malloc(i64 1024) #7, !dbg !2535
  %8 = icmp eq i8* %7, null, !dbg !2536
  br i1 %8, label %11, label %9, !dbg !2537

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i64 1023, !dbg !2538
  store i8 0, i8* %10, align 1, !dbg !2539, !tbaa !496
  br label %11, !dbg !2540

11:                                               ; preds = %9, %6
  %12 = phi i8* [ %10, %9 ], [ null, %6 ], !dbg !2541
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2542
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2542
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %12, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0)) #7, !dbg !2544
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2545
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2545
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %12, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #7, !dbg !2547
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !2548
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %12, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2550
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2551
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2551
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %12, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !2553
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2554
  br i1 %8, label %17, label %18, !dbg !2556

17:                                               ; preds = %11
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2557
  br label %24, !dbg !2558

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !2559
  %19 = ptrtoint i8* %16 to i64, !dbg !2561
  %20 = ptrtoint i8* %7 to i64, !dbg !2561
  %21 = sub i64 1, %20, !dbg !2561
  %22 = add i64 %21, %19, !dbg !2562
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %22) #7, !dbg !2563
  tail call void @halide_print(i8* %0, i8* nonnull %7) #7, !dbg !2564
  br label %24

24:                                               ; preds = %18, %17
  tail call void @free(i8* %7) #7, !dbg !2565
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2566
  %26 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %25, align 8, !dbg !2566, !tbaa !791
  %27 = icmp eq %struct.halide_device_interface_t* %26, null, !dbg !2567
  call void @llvm.dbg.value(metadata i1 %27, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2527
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2568
  %29 = load i64, i64* %28, align 8, !dbg !2568, !tbaa !560
  %30 = icmp eq i64 %29, 0, !dbg !2569
  call void @llvm.dbg.value(metadata i1 %30, metadata !981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2527
  %31 = xor i1 %27, true, !dbg !2570
  %32 = or i1 %30, %31, !dbg !2570
  br i1 %32, label %35, label %33, !dbg !2570

33:                                               ; preds = %24
  %34 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !2571
  br label %47, !dbg !2572

35:                                               ; preds = %24
  %36 = xor i1 %30, true, !dbg !2573
  %37 = or i1 %27, %36, !dbg !2573
  br i1 %37, label %40, label %38, !dbg !2573

38:                                               ; preds = %35
  %39 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !2574
  br label %47, !dbg !2575

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()) #9, !dbg !2576
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2578
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !2578
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !2580
  %42 = load i64, i64* %41, align 8, !dbg !2580, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2527
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2581
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !2581
  call void @llvm.dbg.value(metadata i1 undef, metadata !983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2527
  %43 = and i64 %42, 3, !dbg !2584
  %44 = icmp eq i64 %43, 3, !dbg !2584
  br i1 %44, label %45, label %53, !dbg !2584

45:                                               ; preds = %40
  %46 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !2585
  br label %47, !dbg !2586

47:                                               ; preds = %4, %33, %38, %45
  %48 = phi i32 [ %5, %4 ], [ %39, %38 ], [ %34, %33 ], [ %46, %45 ], !dbg !2527
  call void @llvm.dbg.value(metadata i32 %48, metadata !2525, metadata !DIExpression()), !dbg !2526
  %49 = icmp eq i32 %48, 0, !dbg !2587
  br i1 %49, label %50, label %64, !dbg !2589

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %52 = load i64, i64* %51, align 8, !dbg !2590, !tbaa !560
  br label %53, !dbg !2589

53:                                               ; preds = %50, %40
  %54 = phi i64 [ %52, %50 ], [ %29, %40 ], !dbg !2590
  %55 = icmp eq i64 %54, 0, !dbg !2592
  br i1 %55, label %64, label %56, !dbg !2593

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2590
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2594
  %59 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %58, align 8, !dbg !2594, !tbaa !791
  %60 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %59, i64 0, i32 15, !dbg !2595
  %61 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %60, align 8, !dbg !2595, !tbaa !872
  %62 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %61, i64 0, i32 1, !dbg !2596
  %63 = load void ()*, void ()** %62, align 8, !dbg !2596, !tbaa !1543
  tail call void %63() #7, !dbg !2597
  store i64 0, i64* %57, align 8, !dbg !2598, !tbaa !560
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %58, align 8, !dbg !2599, !tbaa !791
  br label %64, !dbg !2600

64:                                               ; preds = %53, %47, %56
  %65 = phi i32 [ 0, %56 ], [ %48, %47 ], [ 0, %53 ], !dbg !2526
  ret i32 %65, !dbg !2601
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_device_and_host_free_as_destructor(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !2602 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2604, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8* %1, metadata !2605, metadata !DIExpression()), !dbg !2607
  %3 = bitcast i8* %1 to %struct.halide_buffer_t*, !dbg !2608
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !2606, metadata !DIExpression()), !dbg !2607
  %4 = tail call i32 @halide_device_and_host_free(i8* %0, %struct.halide_buffer_t* %3) #8, !dbg !2609
  ret void, !dbg !2610
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_device_host_nop_free(i8* %0, i8* %1) local_unnamed_addr #6 !dbg !2611 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2613, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8* %1, metadata !2614, metadata !DIExpression()), !dbg !2615
  ret void, !dbg !2616
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_default_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 !dbg !2617 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2619, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !2621, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !2622, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2624
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2624
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2624
  %5 = tail call i8* @malloc(i64 1024) #7, !dbg !2626
  %6 = icmp eq i8* %5, null, !dbg !2627
  br i1 %6, label %9, label %7, !dbg !2628

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !2629
  store i8 0, i8* %8, align 1, !dbg !2630, !tbaa !496
  br label %9, !dbg !2631

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !2632
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2633
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2633
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0)) #7, !dbg !2635
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2636
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2636
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0)) #7, !dbg !2638
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !2639
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !2639
  %13 = tail call i8* @halide_buffer_to_string(i8* %12, i8* %10, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2641
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2642
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2642
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !2644
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2645
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2645
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %10, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0)) #7, !dbg !2647
  %16 = bitcast %struct.halide_device_interface_t* %2 to i8*, !dbg !2648
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !2649
  call void @llvm.dbg.value(metadata i8* %16, metadata !771, metadata !DIExpression()) #9, !dbg !2649
  %17 = tail call i8* @halide_pointer_to_string(i8* %15, i8* %10, i8* %16) #7, !dbg !2651
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2652
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2652
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !2654
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2655
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2655
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #7, !dbg !2657
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !2658
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1010, metadata !DIExpression()) #9, !dbg !2658
  %20 = tail call i8* @halide_buffer_to_string(i8* %19, i8* %10, %struct.halide_buffer_t* nonnull %3) #7, !dbg !2660
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2661
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2661
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !2663
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2664
  br i1 %6, label %22, label %23, !dbg !2666

22:                                               ; preds = %9
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2667
  br label %29, !dbg !2668

23:                                               ; preds = %9
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !2669
  %24 = ptrtoint i8* %21 to i64, !dbg !2671
  %25 = ptrtoint i8* %5 to i64, !dbg !2671
  %26 = add i64 %24, 1, !dbg !2671
  %27 = sub i64 %26, %25, !dbg !2672
  %28 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %27) #7, !dbg !2673
  tail call void @halide_print(i8* %0, i8* nonnull %5) #7, !dbg !2674
  br label %29

29:                                               ; preds = %22, %23
  call void @free(i8* %5) #7, !dbg !2675
  ret i32 -39, !dbg !2676
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_buffer_copy_already_locked(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 !dbg !2677 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2679, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2680, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !2681, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !2682, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2697
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2697
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2697
  %6 = tail call i8* @malloc(i64 1024) #7, !dbg !2699
  %7 = icmp eq i8* %6, null, !dbg !2700
  br i1 %7, label %8, label %10, !dbg !2701

8:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2702
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2702
  %9 = tail call i8* @halide_string_to_string(i8* %6, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i64 0, i64 0)) #7, !dbg !2704
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2705
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2707
  br label %18, !dbg !2708

10:                                               ; preds = %4
  %11 = getelementptr inbounds i8, i8* %6, i64 1023, !dbg !2709
  store i8 0, i8* %11, align 1, !dbg !2710, !tbaa !496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2702
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2702
  %12 = tail call i8* @halide_string_to_string(i8* nonnull %6, i8* nonnull %11, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i64 0, i64 0)) #7, !dbg !2704
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2705
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !2711
  %13 = ptrtoint i8* %12 to i64, !dbg !2713
  %14 = ptrtoint i8* %6 to i64, !dbg !2713
  %15 = add i64 %13, 1, !dbg !2713
  %16 = sub i64 %15, %14, !dbg !2714
  %17 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %16) #7, !dbg !2715
  tail call void @halide_print(i8* %0, i8* nonnull %6) #7, !dbg !2716
  br label %18

18:                                               ; preds = %10, %8
  tail call void @free(i8* %6) #7, !dbg !2717
  call void @llvm.dbg.value(metadata i32 0, metadata !2683, metadata !DIExpression()), !dbg !2696
  %19 = icmp eq %struct.halide_device_interface_t* %2, null, !dbg !2718
  br i1 %19, label %47, label %20, !dbg !2720

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 1, !dbg !2721
  %22 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %21, align 8, !dbg !2721, !tbaa !791
  %23 = icmp eq %struct.halide_device_interface_t* %22, null, !dbg !2722
  %24 = icmp eq %struct.halide_device_interface_t* %22, %2
  %25 = or i1 %23, %24, !dbg !2723
  br i1 %25, label %27, label %26, !dbg !2723

26:                                               ; preds = %20
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.42, i64 0, i64 0)) #7, !dbg !2724
  br label %272, !dbg !2726

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0, !dbg !2727
  %29 = load i64, i64* %28, align 8, !dbg !2727, !tbaa !560
  %30 = icmp eq i64 %29, 0, !dbg !2729
  br i1 %30, label %31, label %47, !dbg !2730

31:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2731
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2731
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2731
  %32 = tail call i8* @malloc(i64 1024) #7, !dbg !2734
  %33 = icmp eq i8* %32, null, !dbg !2735
  br i1 %33, label %34, label %36, !dbg !2736

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2737
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.43, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2737
  %35 = tail call i8* @halide_string_to_string(i8* %32, i8* null, i8* nonnull getelementptr inbounds ([66 x i8], [66 x i8]* @.str.43, i64 0, i64 0)) #7, !dbg !2739
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2740
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2742
  br label %44, !dbg !2743

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i64 1023, !dbg !2744
  store i8 0, i8* %37, align 1, !dbg !2745, !tbaa !496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2737
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.43, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2737
  %38 = tail call i8* @halide_string_to_string(i8* nonnull %32, i8* nonnull %37, i8* nonnull getelementptr inbounds ([66 x i8], [66 x i8]* @.str.43, i64 0, i64 0)) #7, !dbg !2739
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2740
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !2746
  %39 = ptrtoint i8* %38 to i64, !dbg !2748
  %40 = ptrtoint i8* %32 to i64, !dbg !2748
  %41 = add i64 %39, 1, !dbg !2748
  %42 = sub i64 %41, %40, !dbg !2749
  %43 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %42) #7, !dbg !2750
  tail call void @halide_print(i8* %0, i8* nonnull %32) #7, !dbg !2751
  br label %44

44:                                               ; preds = %36, %34
  tail call void @free(i8* %32) #7, !dbg !2752
  %45 = tail call i32 @halide_device_malloc(i8* %0, %struct.halide_buffer_t* nonnull %3, %struct.halide_device_interface_t* nonnull %2) #8, !dbg !2753
  call void @llvm.dbg.value(metadata i32 %45, metadata !2683, metadata !DIExpression()), !dbg !2696
  %46 = icmp eq i32 %45, 0, !dbg !2754
  br i1 %46, label %47, label %272, !dbg !2756

47:                                               ; preds = %18, %44, %27
  %48 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2757
  %49 = load i64, i64* %48, align 8, !dbg !2757, !tbaa !560
  %50 = icmp eq i64 %49, 0, !dbg !2758
  %51 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %52 = load i8*, i8** %51, align 8, !dbg !2696, !tbaa !551
  %53 = icmp eq i8* %52, null, !dbg !2696
  br i1 %50, label %60, label %54, !dbg !2759

54:                                               ; preds = %47
  br i1 %53, label %71, label %55, !dbg !2760

55:                                               ; preds = %54
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !792, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()), !dbg !2763
  %56 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !2765
  %57 = load i64, i64* %56, align 8, !dbg !2765, !tbaa !751
  %58 = and i64 %57, 1, !dbg !2766
  %59 = icmp eq i64 %58, 0, !dbg !2767
  call void @llvm.dbg.value(metadata i1 false, metadata !2684, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2696
  call void @llvm.dbg.value(metadata i1 %19, metadata !2686, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2696
  call void @llvm.dbg.value(metadata i1 %19, metadata !2687, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2696
  call void @llvm.dbg.value(metadata i1 %53, metadata !2688, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2696
  br label %61, !dbg !2768

60:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i1 false, metadata !2684, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2696
  call void @llvm.dbg.value(metadata i1 %19, metadata !2686, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2696
  call void @llvm.dbg.value(metadata i1 %19, metadata !2687, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2696
  call void @llvm.dbg.value(metadata i1 %53, metadata !2688, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2696
  br i1 %53, label %71, label %61, !dbg !2768

61:                                               ; preds = %55, %60
  %62 = phi i1 [ %59, %55 ], [ false, %60 ]
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !738, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()), !dbg !2771
  %63 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !2773
  %64 = load i64, i64* %63, align 8, !dbg !2773, !tbaa !751
  %65 = and i64 %64, 2, !dbg !2774
  %66 = icmp eq i64 %65, 0, !dbg !2775
  br i1 %66, label %71, label %67, !dbg !2776

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2777
  %69 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %68, align 8, !dbg !2777, !tbaa !791
  %70 = icmp eq %struct.halide_device_interface_t* %69, null, !dbg !2778
  br label %71, !dbg !2776

71:                                               ; preds = %54, %61, %67, %60
  %72 = phi i1 [ true, %60 ], [ false, %61 ], [ false, %67 ], [ true, %54 ]
  %73 = phi i1 [ false, %60 ], [ %62, %61 ], [ %62, %67 ], [ true, %54 ]
  %74 = phi i1 [ false, %60 ], [ true, %61 ], [ %70, %67 ], [ false, %54 ], !dbg !2696
  call void @llvm.dbg.value(metadata i1 %74, metadata !2689, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2696
  %75 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2, !dbg !2779
  %76 = load i8*, i8** %75, align 8, !dbg !2779, !tbaa !551
  %77 = icmp eq i8* %76, null, !dbg !2780
  call void @llvm.dbg.value(metadata i1 %77, metadata !2690, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2696
  %78 = and i1 %19, %77, !dbg !2781
  br i1 %78, label %272, label %79, !dbg !2781

79:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 -42, metadata !2683, metadata !DIExpression()), !dbg !2696
  %80 = xor i1 %73, true, !dbg !2783
  %81 = or i1 %19, %80, !dbg !2783
  br i1 %81, label %102, label %82, !dbg !2783

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2785
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2785
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2785
  %83 = tail call i8* @malloc(i64 1024) #7, !dbg !2788
  %84 = icmp eq i8* %83, null, !dbg !2789
  br i1 %84, label %85, label %87, !dbg !2790

85:                                               ; preds = %82
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2791
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.44, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2791
  %86 = tail call i8* @halide_string_to_string(i8* %83, i8* null, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.44, i64 0, i64 0)) #7, !dbg !2793
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2794
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2796
  br label %95, !dbg !2797

87:                                               ; preds = %82
  %88 = getelementptr inbounds i8, i8* %83, i64 1023, !dbg !2798
  store i8 0, i8* %88, align 1, !dbg !2799, !tbaa !496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2791
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.44, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2791
  %89 = tail call i8* @halide_string_to_string(i8* nonnull %83, i8* nonnull %88, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.44, i64 0, i64 0)) #7, !dbg !2793
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2794
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !2800
  %90 = ptrtoint i8* %89 to i64, !dbg !2802
  %91 = ptrtoint i8* %83 to i64, !dbg !2802
  %92 = add i64 %90, 1, !dbg !2802
  %93 = sub i64 %92, %91, !dbg !2803
  %94 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %83, i64 %93) #7, !dbg !2804
  tail call void @halide_print(i8* %0, i8* nonnull %83) #7, !dbg !2805
  br label %95

95:                                               ; preds = %87, %85
  tail call void @free(i8* %83) #7, !dbg !2806
  %96 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i64 0, i32 15, !dbg !2807
  %97 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %96, align 8, !dbg !2807, !tbaa !872
  %98 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %97, i64 0, i32 10, !dbg !2808
  %99 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %98, align 8, !dbg !2808, !tbaa !2809
  %100 = tail call i32 %99(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* nonnull %2, %struct.halide_buffer_t* nonnull %3) #7, !dbg !2810
  call void @llvm.dbg.value(metadata i32 %100, metadata !2683, metadata !DIExpression()), !dbg !2696
  %101 = icmp eq i32 %100, -42, !dbg !2811
  br i1 %101, label %102, label %212, !dbg !2812

102:                                              ; preds = %79, %95
  %103 = and i1 %72, %77, !dbg !2813
  br i1 %103, label %104, label %118, !dbg !2813

104:                                              ; preds = %102
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2815
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2815
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2815
  %105 = tail call i8* @malloc(i64 1024) #7, !dbg !2818
  %106 = icmp eq i8* %105, null, !dbg !2819
  br i1 %106, label %107, label %109, !dbg !2820

107:                                              ; preds = %104
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2821
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.45, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2821
  %108 = tail call i8* @halide_string_to_string(i8* %105, i8* null, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !2823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2824
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2826
  br label %117, !dbg !2827

109:                                              ; preds = %104
  %110 = getelementptr inbounds i8, i8* %105, i64 1023, !dbg !2828
  store i8 0, i8* %110, align 1, !dbg !2829, !tbaa !496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2821
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.45, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2821
  %111 = tail call i8* @halide_string_to_string(i8* nonnull %105, i8* nonnull %110, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !2823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2824
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !2830
  %112 = ptrtoint i8* %111 to i64, !dbg !2832
  %113 = ptrtoint i8* %105 to i64, !dbg !2832
  %114 = add i64 %112, 1, !dbg !2832
  %115 = sub i64 %114, %113, !dbg !2833
  %116 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %105, i64 %115) #7, !dbg !2834
  tail call void @halide_print(i8* %0, i8* nonnull %105) #7, !dbg !2835
  br label %117

117:                                              ; preds = %109, %107
  tail call void @free(i8* %105) #7, !dbg !2836
  br label %272, !dbg !2837

118:                                              ; preds = %102
  %119 = and i1 %19, %74, !dbg !2838
  br i1 %119, label %120, label %122, !dbg !2838

120:                                              ; preds = %118
  %121 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*, !dbg !2839
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %121) #9, !dbg !2839
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %5, metadata !2691, metadata !DIExpression()), !dbg !2840
  call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext true, %struct.halide_buffer_t* nonnull %3, i1 zeroext true) #8, !dbg !2841
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #8, !dbg !2842
  call void @llvm.dbg.value(metadata i32 0, metadata !2683, metadata !DIExpression()), !dbg !2696
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %121) #9, !dbg !2843
  call void @llvm.dbg.value(metadata i32 %213, metadata !2683, metadata !DIExpression()), !dbg !2696
  br label %235, !dbg !2844

122:                                              ; preds = %118
  br i1 %19, label %123, label %150, !dbg !2845

123:                                              ; preds = %122
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2846
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2846
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2846
  %124 = tail call i8* @malloc(i64 1024) #7, !dbg !2850
  %125 = icmp eq i8* %124, null, !dbg !2851
  br i1 %125, label %126, label %128, !dbg !2852

126:                                              ; preds = %123
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2853
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.46, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2853
  %127 = tail call i8* @halide_string_to_string(i8* %124, i8* null, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.46, i64 0, i64 0)) #7, !dbg !2855
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2856
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2858
  br label %136, !dbg !2859

128:                                              ; preds = %123
  %129 = getelementptr inbounds i8, i8* %124, i64 1023, !dbg !2860
  store i8 0, i8* %129, align 1, !dbg !2861, !tbaa !496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2853
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.46, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2853
  %130 = tail call i8* @halide_string_to_string(i8* nonnull %124, i8* nonnull %129, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.46, i64 0, i64 0)) #7, !dbg !2855
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2856
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !2862
  %131 = ptrtoint i8* %130 to i64, !dbg !2864
  %132 = ptrtoint i8* %124 to i64, !dbg !2864
  %133 = add i64 %131, 1, !dbg !2864
  %134 = sub i64 %133, %132, !dbg !2865
  %135 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %124, i64 %134) #7, !dbg !2866
  tail call void @halide_print(i8* %0, i8* nonnull %124) #7, !dbg !2867
  br label %136

136:                                              ; preds = %128, %126
  tail call void @free(i8* %124) #7, !dbg !2868
  %137 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2869
  %138 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %137, align 8, !dbg !2869, !tbaa !791
  %139 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %138, i64 0, i32 15, !dbg !2870
  %140 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %139, align 8, !dbg !2870, !tbaa !872
  %141 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %140, i64 0, i32 10, !dbg !2871
  %142 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %141, align 8, !dbg !2871, !tbaa !2809
  %143 = tail call i32 %142(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* nonnull %3) #7, !dbg !2872
  call void @llvm.dbg.value(metadata i32 %143, metadata !2683, metadata !DIExpression()), !dbg !2696
  %144 = icmp eq i32 %143, -42, !dbg !2873
  br i1 %144, label %145, label %212, !dbg !2875

145:                                              ; preds = %136
  %146 = tail call i32 @_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* nonnull %1) #8, !dbg !2876
  call void @llvm.dbg.value(metadata i32 %146, metadata !2683, metadata !DIExpression()), !dbg !2696
  %147 = icmp eq i32 %146, 0, !dbg !2878
  br i1 %147, label %148, label %215, !dbg !2880

148:                                              ; preds = %145
  %149 = tail call i32 @halide_buffer_copy_already_locked(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* nonnull %3) #8, !dbg !2881
  call void @llvm.dbg.value(metadata i32 %149, metadata !2683, metadata !DIExpression()), !dbg !2696
  br label %212, !dbg !2883

150:                                              ; preds = %122
  %151 = or i1 %77, %80, !dbg !2884
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2887
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2890
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2887
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2890
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2887
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2890
  %152 = tail call i8* @malloc(i64 1024) #7, !dbg !2893
  %153 = icmp eq i8* %152, null, !dbg !2893
  br i1 %151, label %192, label %154, !dbg !2884

154:                                              ; preds = %150
  br i1 %153, label %155, label %157, !dbg !2894

155:                                              ; preds = %154
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2895
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.47, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2895
  %156 = tail call i8* @halide_string_to_string(i8* %152, i8* null, i8* nonnull getelementptr inbounds ([78 x i8], [78 x i8]* @.str.47, i64 0, i64 0)) #7, !dbg !2897
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2898
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2900
  br label %165, !dbg !2901

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %152, i64 1023, !dbg !2902
  store i8 0, i8* %158, align 1, !dbg !2903, !tbaa !496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2895
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.47, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2895
  %159 = tail call i8* @halide_string_to_string(i8* nonnull %152, i8* nonnull %158, i8* nonnull getelementptr inbounds ([78 x i8], [78 x i8]* @.str.47, i64 0, i64 0)) #7, !dbg !2897
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2898
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !2904
  %160 = ptrtoint i8* %159 to i64, !dbg !2906
  %161 = ptrtoint i8* %152 to i64, !dbg !2906
  %162 = add i64 %160, 1, !dbg !2906
  %163 = sub i64 %162, %161, !dbg !2907
  %164 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %152, i64 %163) #7, !dbg !2908
  tail call void @halide_print(i8* %0, i8* nonnull %152) #7, !dbg !2909
  br label %165

165:                                              ; preds = %157, %155
  tail call void @free(i8* %152) #7, !dbg !2910
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2911
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2911
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2911
  %166 = tail call i8* @malloc(i64 1024) #7, !dbg !2913
  %167 = icmp eq i8* %166, null, !dbg !2914
  br i1 %167, label %168, label %170, !dbg !2915

168:                                              ; preds = %165
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2916
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2916
  %169 = tail call i8* @halide_string_to_string(i8* %166, i8* null, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0)) #7, !dbg !2918
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2919
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2921
  br label %178, !dbg !2922

170:                                              ; preds = %165
  %171 = getelementptr inbounds i8, i8* %166, i64 1023, !dbg !2923
  store i8 0, i8* %171, align 1, !dbg !2924, !tbaa !496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2916
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2916
  %172 = tail call i8* @halide_string_to_string(i8* nonnull %166, i8* nonnull %171, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0)) #7, !dbg !2918
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2919
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !2925
  %173 = ptrtoint i8* %172 to i64, !dbg !2927
  %174 = ptrtoint i8* %166 to i64, !dbg !2927
  %175 = add i64 %173, 1, !dbg !2927
  %176 = sub i64 %175, %174, !dbg !2928
  %177 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %166, i64 %176) #7, !dbg !2929
  tail call void @halide_print(i8* %0, i8* nonnull %166) #7, !dbg !2930
  br label %178

178:                                              ; preds = %170, %168
  tail call void @free(i8* %166) #7, !dbg !2931
  %179 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2932
  %180 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %179, align 8, !dbg !2932, !tbaa !791
  %181 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %180, i64 0, i32 15, !dbg !2933
  %182 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %181, align 8, !dbg !2933, !tbaa !872
  %183 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %182, i64 0, i32 10, !dbg !2934
  %184 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %183, align 8, !dbg !2934, !tbaa !2809
  %185 = tail call i32 %184(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* nonnull %3) #7, !dbg !2935
  call void @llvm.dbg.value(metadata i32 %185, metadata !2683, metadata !DIExpression()), !dbg !2696
  %186 = icmp eq i32 %185, 0, !dbg !2936
  br i1 %186, label %187, label %215, !dbg !2938

187:                                              ; preds = %178
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1349, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i1 true, metadata !1352, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2939
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !919, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i32 1, metadata !922, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i1 true, metadata !923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2942
  %188 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 3, !dbg !2944
  %189 = load i64, i64* %188, align 8, !dbg !2946, !tbaa !751
  %190 = or i64 %189, 1, !dbg !2946
  store i64 %190, i64* %188, align 8, !dbg !2946, !tbaa !751
  %191 = tail call i32 @copy_to_device_already_locked(i8* %0, %struct.halide_buffer_t* nonnull %3, %struct.halide_device_interface_t* nonnull %2) #8, !dbg !2947
  call void @llvm.dbg.value(metadata i32 %191, metadata !2683, metadata !DIExpression()), !dbg !2696
  br label %212, !dbg !2948

192:                                              ; preds = %150
  br i1 %153, label %193, label %195, !dbg !2949

193:                                              ; preds = %192
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2950
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.49, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2950
  %194 = tail call i8* @halide_string_to_string(i8* %152, i8* null, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @.str.49, i64 0, i64 0)) #7, !dbg !2952
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2953
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2955
  br label %203, !dbg !2956

195:                                              ; preds = %192
  %196 = getelementptr inbounds i8, i8* %152, i64 1023, !dbg !2957
  store i8 0, i8* %196, align 1, !dbg !2958, !tbaa !496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2950
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.49, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2950
  %197 = tail call i8* @halide_string_to_string(i8* nonnull %152, i8* nonnull %196, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @.str.49, i64 0, i64 0)) #7, !dbg !2952
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !2953
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !2959
  %198 = ptrtoint i8* %197 to i64, !dbg !2961
  %199 = ptrtoint i8* %152 to i64, !dbg !2961
  %200 = add i64 %198, 1, !dbg !2961
  %201 = sub i64 %200, %199, !dbg !2962
  %202 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %152, i64 %201) #7, !dbg !2963
  tail call void @halide_print(i8* %0, i8* nonnull %152) #7, !dbg !2964
  br label %203

203:                                              ; preds = %195, %193
  tail call void @free(i8* %152) #7, !dbg !2965
  %204 = tail call i32 @_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* nonnull %1) #8, !dbg !2966
  call void @llvm.dbg.value(metadata i32 %204, metadata !2683, metadata !DIExpression()), !dbg !2696
  %205 = icmp eq i32 %204, 0, !dbg !2967
  br i1 %205, label %206, label %215, !dbg !2969

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i64 0, i32 15, !dbg !2970
  %208 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %207, align 8, !dbg !2970, !tbaa !872
  %209 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %208, i64 0, i32 10, !dbg !2972
  %210 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %209, align 8, !dbg !2972, !tbaa !2809
  %211 = tail call i32 %210(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* nonnull %2, %struct.halide_buffer_t* nonnull %3) #7, !dbg !2973
  call void @llvm.dbg.value(metadata i32 %211, metadata !2683, metadata !DIExpression()), !dbg !2696
  br label %212, !dbg !2974

212:                                              ; preds = %187, %206, %136, %148, %95
  %213 = phi i32 [ %149, %148 ], [ %143, %136 ], [ %191, %187 ], [ %211, %206 ], [ %100, %95 ], !dbg !2696
  call void @llvm.dbg.value(metadata i32 %213, metadata !2683, metadata !DIExpression()), !dbg !2696
  %214 = icmp eq i32 %213, 0, !dbg !2844
  br i1 %214, label %235, label %215, !dbg !2844

215:                                              ; preds = %203, %178, %145, %212
  %216 = phi i32 [ %213, %212 ], [ %204, %203 ], [ %185, %178 ], [ %146, %145 ]
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !2975
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !2975
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !2975
  %217 = tail call i8* @malloc(i64 1024) #7, !dbg !2979
  %218 = icmp eq i8* %217, null, !dbg !2980
  br i1 %218, label %221, label %219, !dbg !2981

219:                                              ; preds = %215
  %220 = getelementptr inbounds i8, i8* %217, i64 1023, !dbg !2982
  store i8 0, i8* %220, align 1, !dbg !2983, !tbaa !496
  br label %221, !dbg !2984

221:                                              ; preds = %215, %219
  %222 = phi i8* [ %220, %219 ], [ null, %215 ], !dbg !2985
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2986
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.50, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2986
  %223 = tail call i8* @halide_string_to_string(i8* %217, i8* %222, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.50, i64 0, i64 0)) #7, !dbg !2988
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2989, metadata !DIExpression()) #9, !dbg !2993
  call void @llvm.dbg.value(metadata i32 %213, metadata !2992, metadata !DIExpression()) #9, !dbg !2993
  %224 = sext i32 %216 to i64, !dbg !2995
  %225 = tail call i8* @halide_int64_to_string(i8* %223, i8* %222, i64 %224, i32 1) #7, !dbg !2996
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !2997
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !2997
  %226 = tail call i8* @halide_string_to_string(i8* %225, i8* %222, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #7, !dbg !2999
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !3000
  br i1 %218, label %227, label %228, !dbg !3002

227:                                              ; preds = %221
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !3003
  br label %234, !dbg !3004

228:                                              ; preds = %221
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !3005
  %229 = ptrtoint i8* %226 to i64, !dbg !3007
  %230 = ptrtoint i8* %217 to i64, !dbg !3007
  %231 = add i64 %229, 1, !dbg !3007
  %232 = sub i64 %231, %230, !dbg !3008
  %233 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %217, i64 %232) #7, !dbg !3009
  tail call void @halide_print(i8* %0, i8* nonnull %217) #7, !dbg !3010
  br label %234

234:                                              ; preds = %228, %227
  tail call void @free(i8* %217) #7, !dbg !3011
  br label %272, !dbg !3012

235:                                              ; preds = %120, %212
  %236 = icmp eq %struct.halide_buffer_t* %3, %1, !dbg !3014
  br i1 %236, label %272, label %237, !dbg !3015

237:                                              ; preds = %235
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !3016
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !3021
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !3016
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !3021
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !3016
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !3021
  %238 = call i8* @malloc(i64 1024) #7, !dbg !3024
  %239 = icmp eq i8* %238, null, !dbg !3024
  br i1 %19, label %256, label %240, !dbg !3025

240:                                              ; preds = %237
  br i1 %239, label %241, label %243, !dbg !3026

241:                                              ; preds = %240
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3027
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.52, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3027
  %242 = call i8* @halide_string_to_string(i8* %238, i8* null, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.52, i64 0, i64 0)) #7, !dbg !3029
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !3030
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !3032
  br label %251, !dbg !3033

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %238, i64 1023, !dbg !3034
  store i8 0, i8* %244, align 1, !dbg !3035, !tbaa !496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3027
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.52, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3027
  %245 = call i8* @halide_string_to_string(i8* nonnull %238, i8* nonnull %244, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.52, i64 0, i64 0)) #7, !dbg !3029
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !3030
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !3036
  %246 = ptrtoint i8* %245 to i64, !dbg !3038
  %247 = ptrtoint i8* %238 to i64, !dbg !3038
  %248 = add i64 %246, 1, !dbg !3038
  %249 = sub i64 %248, %247, !dbg !3039
  %250 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %238, i64 %249) #7, !dbg !3040
  call void @halide_print(i8* %0, i8* nonnull %238) #7, !dbg !3041
  br label %251

251:                                              ; preds = %243, %241
  call void @free(i8* %238) #7, !dbg !3042
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1349, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i1 false, metadata !1352, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3043
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !919, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 1, metadata !922, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i1 false, metadata !923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3045
  %252 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 3, !dbg !3047
  %253 = load i64, i64* %252, align 8, !dbg !3048, !tbaa !751
  %254 = and i64 %253, -4, !dbg !3048
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !913, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i1 true, metadata !916, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3049
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !919, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 2, metadata !922, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i1 true, metadata !923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3051
  %255 = or i64 %254, 2, !dbg !3053
  store i64 %255, i64* %252, align 8, !dbg !3053, !tbaa !751
  br label %272, !dbg !3054

256:                                              ; preds = %237
  br i1 %239, label %257, label %259, !dbg !3055

257:                                              ; preds = %256
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3056
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3056
  %258 = call i8* @halide_string_to_string(i8* %238, i8* null, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0)) #7, !dbg !3058
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !3059
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !3061
  br label %267, !dbg !3062

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, i8* %238, i64 1023, !dbg !3063
  store i8 0, i8* %260, align 1, !dbg !3064, !tbaa !496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3056
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3056
  %261 = call i8* @halide_string_to_string(i8* nonnull %238, i8* nonnull %260, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0)) #7, !dbg !3058
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !3059
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !3065
  %262 = ptrtoint i8* %261 to i64, !dbg !3067
  %263 = ptrtoint i8* %238 to i64, !dbg !3067
  %264 = add i64 %262, 1, !dbg !3067
  %265 = sub i64 %264, %263, !dbg !3068
  %266 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %238, i64 %265) #7, !dbg !3069
  call void @halide_print(i8* %0, i8* nonnull %238) #7, !dbg !3070
  br label %267

267:                                              ; preds = %259, %257
  call void @free(i8* %238) #7, !dbg !3071
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1349, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i1 true, metadata !1352, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3072
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !919, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i32 1, metadata !922, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i1 true, metadata !923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3074
  %268 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 3, !dbg !3076
  %269 = load i64, i64* %268, align 8, !dbg !3077, !tbaa !751
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !913, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i1 false, metadata !916, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3078
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !919, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i32 2, metadata !922, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i1 false, metadata !923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3080
  %270 = and i64 %269, -4, !dbg !3082
  %271 = or i64 %270, 1, !dbg !3082
  store i64 %271, i64* %268, align 8, !dbg !3082, !tbaa !751
  br label %272

272:                                              ; preds = %234, %117, %71, %251, %267, %235, %44, %26
  %273 = phi i32 [ -42, %26 ], [ %45, %44 ], [ -42, %117 ], [ -34, %71 ], [ 0, %251 ], [ 0, %267 ], [ 0, %235 ], [ %216, %234 ], !dbg !2696
  ret i32 %273, !dbg !3083
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 !dbg !3084 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3086, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3087, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !3088, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !3089, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !3093
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !3093
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !3093
  %5 = tail call i8* @malloc(i64 1024) #7, !dbg !3095
  %6 = icmp eq i8* %5, null, !dbg !3096
  br i1 %6, label %9, label %7, !dbg !3097

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !3098
  store i8 0, i8* %8, align 1, !dbg !3099, !tbaa !496
  br label %9, !dbg !3100

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !3101
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3102
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3102
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0)) #7, !dbg !3104
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3105
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3105
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0)) #7, !dbg !3107
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !3108
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !3108
  %13 = tail call i8* @halide_buffer_to_string(i8* %12, i8* %10, %struct.halide_buffer_t* nonnull %1) #7, !dbg !3110
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3111
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3111
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !3113
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3114
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3114
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %10, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0)) #7, !dbg !3116
  %16 = bitcast %struct.halide_device_interface_t* %2 to i8*, !dbg !3117
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !3118
  call void @llvm.dbg.value(metadata i8* %16, metadata !771, metadata !DIExpression()) #9, !dbg !3118
  %17 = tail call i8* @halide_pointer_to_string(i8* %15, i8* %10, i8* %16) #7, !dbg !3120
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3121
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3121
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !3123
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3124
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3124
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0)) #7, !dbg !3126
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !3127
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1010, metadata !DIExpression()) #9, !dbg !3127
  %20 = tail call i8* @halide_buffer_to_string(i8* %19, i8* %10, %struct.halide_buffer_t* nonnull %3) #7, !dbg !3129
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3130
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3130
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !3132
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !3133
  br i1 %6, label %22, label %23, !dbg !3135

22:                                               ; preds = %9
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !3136
  br label %29, !dbg !3137

23:                                               ; preds = %9
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !3138
  %24 = ptrtoint i8* %21 to i64, !dbg !3140
  %25 = ptrtoint i8* %5 to i64, !dbg !3140
  %26 = add i64 %24, 1, !dbg !3140
  %27 = sub i64 %26, %25, !dbg !3141
  %28 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %27) #7, !dbg !3142
  tail call void @halide_print(i8* %0, i8* nonnull %5) #7, !dbg !3143
  br label %29

29:                                               ; preds = %22, %23
  call void @free(i8* %5) #7, !dbg !3144
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !962, metadata !DIExpression()) #9, !dbg !3145
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !965, metadata !DIExpression()) #9, !dbg !3145
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !3090, metadata !DIExpression()), !dbg !3092
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3147
  %30 = icmp eq %struct.halide_device_interface_t* %2, null, !dbg !3148
  br i1 %30, label %36, label %31, !dbg !3150

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i64 0, i32 15, !dbg !3151
  %33 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %32, align 8, !dbg !3151, !tbaa !872
  %34 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %33, i64 0, i32 0, !dbg !3153
  %35 = load void ()*, void ()** %34, align 8, !dbg !3153, !tbaa !1535
  call void %35() #7, !dbg !3154
  br label %36, !dbg !3155

36:                                               ; preds = %31, %29
  %37 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !3156
  %38 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %37, align 8, !dbg !3156, !tbaa !791
  %39 = icmp eq %struct.halide_device_interface_t* %38, null, !dbg !3158
  br i1 %39, label %45, label %40, !dbg !3159

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %38, i64 0, i32 15, !dbg !3160
  %42 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %41, align 8, !dbg !3160, !tbaa !872
  %43 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %42, i64 0, i32 0, !dbg !3162
  %44 = load void ()*, void ()** %43, align 8, !dbg !3162, !tbaa !1535
  call void %44() #7, !dbg !3163
  br label %45, !dbg !3164

45:                                               ; preds = %40, %36
  %46 = call i32 @halide_buffer_copy_already_locked(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* nonnull %3) #8, !dbg !3165
  call void @llvm.dbg.value(metadata i32 %46, metadata !3091, metadata !DIExpression()), !dbg !3092
  br i1 %30, label %52, label %47, !dbg !3166

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i64 0, i32 15, !dbg !3167
  %49 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %48, align 8, !dbg !3167, !tbaa !872
  %50 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %49, i64 0, i32 1, !dbg !3170
  %51 = load void ()*, void ()** %50, align 8, !dbg !3170, !tbaa !1543
  call void %51() #7, !dbg !3171
  br label %52, !dbg !3172

52:                                               ; preds = %47, %45
  %53 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %37, align 8, !dbg !3173, !tbaa !791
  %54 = icmp eq %struct.halide_device_interface_t* %53, null, !dbg !3175
  br i1 %54, label %60, label %55, !dbg !3176

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %53, i64 0, i32 15, !dbg !3177
  %57 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %56, align 8, !dbg !3177, !tbaa !872
  %58 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %57, i64 0, i32 1, !dbg !3179
  %59 = load void ()*, void ()** %58, align 8, !dbg !3179, !tbaa !1543
  call void %59() #7, !dbg !3180
  br label %60, !dbg !3181

60:                                               ; preds = %55, %52
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1061, metadata !DIExpression()) #9, !dbg !3182
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3184
  ret i32 %46, !dbg !3185
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) local_unnamed_addr #0 !dbg !3186 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3188, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3189, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !3190, metadata !DIExpression()), !dbg !3191
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i64 0, i64 0)) #7, !dbg !3192
  ret i32 -40, !dbg !3193
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) local_unnamed_addr #0 !dbg !3194 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3196, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3197, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 %2, metadata !3198, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 %3, metadata !3199, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !3200, metadata !DIExpression()), !dbg !3201
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #7, !dbg !3202
  ret i32 -40, !dbg !3203
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) local_unnamed_addr #4 !dbg !3204 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3206, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3207, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !3208, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !962, metadata !DIExpression()) #9, !dbg !3212
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !965, metadata !DIExpression()) #9, !dbg !3212
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !3209, metadata !DIExpression()), !dbg !3211
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3214
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !3215
  %5 = load i64, i64* %4, align 8, !dbg !3215, !tbaa !560
  %6 = icmp eq i64 %5, 0, !dbg !3217
  br i1 %6, label %54, label %7, !dbg !3218

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 0, !dbg !3219
  %9 = load i64, i64* %8, align 8, !dbg !3219, !tbaa !560
  %10 = icmp eq i64 %9, 0, !dbg !3221
  br i1 %10, label %12, label %11, !dbg !3222

11:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.60, i64 0, i64 0)) #7, !dbg !3223
  br label %54, !dbg !3225

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !3226
  %14 = load i32, i32* %13, align 4, !dbg !3226, !tbaa !595
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 5, !dbg !3228
  %16 = load i32, i32* %15, align 4, !dbg !3228, !tbaa !595
  %17 = icmp eq i32 %14, %16, !dbg !3229
  br i1 %17, label %19, label %18, !dbg !3230

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !3231
  br label %54, !dbg !3233

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !3234
  %21 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %20, align 8, !dbg !3234, !tbaa !791
  %22 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %21, i64 0, i32 15, !dbg !3235
  %23 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %22, align 8, !dbg !3235, !tbaa !872
  %24 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %23, i64 0, i32 0, !dbg !3236
  %25 = load void ()*, void ()** %24, align 8, !dbg !3236, !tbaa !1535
  tail call void %25() #7, !dbg !3237
  %26 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %20, align 8, !dbg !3238, !tbaa !791
  %27 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %26, i64 0, i32 15, !dbg !3239
  %28 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %27, align 8, !dbg !3239, !tbaa !872
  %29 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %28, i64 0, i32 11, !dbg !3240
  %30 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)** %29, align 8, !dbg !3240, !tbaa !3241
  %31 = tail call i32 %30(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_buffer_t* nonnull %2) #7, !dbg !3242
  call void @llvm.dbg.value(metadata i32 %31, metadata !3210, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !3243
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !3243
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !3243
  %32 = tail call i8* @malloc(i64 1024) #7, !dbg !3245
  %33 = icmp eq i8* %32, null, !dbg !3246
  br i1 %33, label %36, label %34, !dbg !3247

34:                                               ; preds = %19
  %35 = getelementptr inbounds i8, i8* %32, i64 1023, !dbg !3248
  store i8 0, i8* %35, align 1, !dbg !3249, !tbaa !496
  br label %36, !dbg !3250

36:                                               ; preds = %19, %34
  %37 = phi i8* [ %35, %34 ], [ null, %19 ], !dbg !3251
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3252
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3252
  %38 = tail call i8* @halide_string_to_string(i8* %32, i8* %37, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !3254
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3255
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3255
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %37, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !3257
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3258
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3258
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %37, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0)) #7, !dbg !3260
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !3261
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !3261
  %41 = tail call i8* @halide_buffer_to_string(i8* %40, i8* %37, %struct.halide_buffer_t* nonnull %1) #7, !dbg !3263
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3264
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3264
  %42 = tail call i8* @halide_string_to_string(i8* %41, i8* %37, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !3266
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3267
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3267
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %37, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #7, !dbg !3269
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !3270
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !1010, metadata !DIExpression()) #9, !dbg !3270
  %44 = tail call i8* @halide_buffer_to_string(i8* %43, i8* %37, %struct.halide_buffer_t* nonnull %2) #7, !dbg !3272
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3273
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3273
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %37, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !3275
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !3276
  br i1 %33, label %46, label %47, !dbg !3278

46:                                               ; preds = %36
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !3279
  br label %53, !dbg !3280

47:                                               ; preds = %36
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !3281
  %48 = ptrtoint i8* %45 to i64, !dbg !3283
  %49 = ptrtoint i8* %32 to i64, !dbg !3283
  %50 = add i64 %48, 1, !dbg !3283
  %51 = sub i64 %50, %49, !dbg !3284
  %52 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %51) #7, !dbg !3285
  tail call void @halide_print(i8* %0, i8* nonnull %32) #7, !dbg !3286
  br label %53

53:                                               ; preds = %46, %47
  call void @free(i8* %32) #7, !dbg !3287
  br label %54

54:                                               ; preds = %3, %53, %18, %11
  %55 = phi i32 [ -41, %11 ], [ -41, %18 ], [ %31, %53 ], [ 0, %3 ], !dbg !3211
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1061, metadata !DIExpression()) #9, !dbg !3288
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3290
  ret i32 %55, !dbg !3291
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) local_unnamed_addr #4 !dbg !3292 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3294, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3295, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i32 %2, metadata !3296, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i32 %3, metadata !3297, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !3298, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !962, metadata !DIExpression()) #9, !dbg !3302
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !965, metadata !DIExpression()) #9, !dbg !3302
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !3299, metadata !DIExpression()), !dbg !3301
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3304
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !3305
  %7 = load i64, i64* %6, align 8, !dbg !3305, !tbaa !560
  %8 = icmp eq i64 %7, 0, !dbg !3307
  br i1 %8, label %57, label %9, !dbg !3308

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 0, !dbg !3309
  %11 = load i64, i64* %10, align 8, !dbg !3309, !tbaa !560
  %12 = icmp eq i64 %11, 0, !dbg !3311
  br i1 %12, label %14, label %13, !dbg !3312

13:                                               ; preds = %9
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.60, i64 0, i64 0)) #7, !dbg !3313
  br label %57, !dbg !3315

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !3316
  %16 = load i32, i32* %15, align 4, !dbg !3316, !tbaa !595
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 5, !dbg !3318
  %18 = load i32, i32* %17, align 4, !dbg !3318, !tbaa !595
  %19 = add nsw i32 %18, 1, !dbg !3319
  %20 = icmp eq i32 %16, %19, !dbg !3320
  br i1 %20, label %22, label %21, !dbg !3321

21:                                               ; preds = %14
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.64, i64 0, i64 0)) #7, !dbg !3322
  br label %57, !dbg !3324

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !3325
  %24 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %23, align 8, !dbg !3325, !tbaa !791
  %25 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %24, i64 0, i32 15, !dbg !3326
  %26 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %25, align 8, !dbg !3326, !tbaa !872
  %27 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %26, i64 0, i32 0, !dbg !3327
  %28 = load void ()*, void ()** %27, align 8, !dbg !3327, !tbaa !1535
  tail call void %28() #7, !dbg !3328
  %29 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %23, align 8, !dbg !3329, !tbaa !791
  %30 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %29, i64 0, i32 15, !dbg !3330
  %31 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %30, align 8, !dbg !3330, !tbaa !872
  %32 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %31, i64 0, i32 12, !dbg !3331
  %33 = load i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)** %32, align 8, !dbg !3331, !tbaa !3332
  %34 = tail call i32 %33(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 %2, i32 %3, %struct.halide_buffer_t* nonnull %4) #7, !dbg !3333
  call void @llvm.dbg.value(metadata i32 %34, metadata !3300, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !3334
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #9, !dbg !3334
  call void @llvm.dbg.value(metadata i8* null, metadata !461, metadata !DIExpression()) #9, !dbg !3334
  %35 = tail call i8* @malloc(i64 1024) #7, !dbg !3336
  %36 = icmp eq i8* %35, null, !dbg !3337
  br i1 %36, label %39, label %37, !dbg !3338

37:                                               ; preds = %22
  %38 = getelementptr inbounds i8, i8* %35, i64 1023, !dbg !3339
  store i8 0, i8* %38, align 1, !dbg !3340, !tbaa !496
  br label %39, !dbg !3341

39:                                               ; preds = %22, %37
  %40 = phi i8* [ %38, %37 ], [ null, %22 ], !dbg !3342
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3343
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3343
  %41 = tail call i8* @halide_string_to_string(i8* %35, i8* %40, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !3345
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3346
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3346
  %42 = tail call i8* @halide_string_to_string(i8* %41, i8* %40, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !3348
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3349
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3349
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %40, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0)) #7, !dbg !3351
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !3352
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1010, metadata !DIExpression()) #9, !dbg !3352
  %44 = tail call i8* @halide_buffer_to_string(i8* %43, i8* %40, %struct.halide_buffer_t* nonnull %1) #7, !dbg !3354
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3355
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3355
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %40, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !3357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3358
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3358
  %46 = tail call i8* @halide_string_to_string(i8* %45, i8* %40, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #7, !dbg !3360
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1007, metadata !DIExpression()) #9, !dbg !3361
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !1010, metadata !DIExpression()) #9, !dbg !3361
  %47 = tail call i8* @halide_buffer_to_string(i8* %46, i8* %40, %struct.halide_buffer_t* nonnull %4) #7, !dbg !3363
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !474, metadata !DIExpression()) #9, !dbg !3364
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !477, metadata !DIExpression()) #9, !dbg !3364
  %48 = tail call i8* @halide_string_to_string(i8* %47, i8* %40, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !3366
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !483, metadata !DIExpression()) #9, !dbg !3367
  br i1 %36, label %49, label %50, !dbg !3369

49:                                               ; preds = %39
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !3370
  br label %56, !dbg !3371

50:                                               ; preds = %39
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !497, metadata !DIExpression()) #9, !dbg !3372
  %51 = ptrtoint i8* %48 to i64, !dbg !3374
  %52 = ptrtoint i8* %35 to i64, !dbg !3374
  %53 = add i64 %51, 1, !dbg !3374
  %54 = sub i64 %53, %52, !dbg !3375
  %55 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %35, i64 %54) #7, !dbg !3376
  tail call void @halide_print(i8* %0, i8* nonnull %35) #7, !dbg !3377
  br label %56

56:                                               ; preds = %49, %50
  call void @free(i8* %35) #7, !dbg !3378
  br label %57

57:                                               ; preds = %5, %56, %21, %13
  %58 = phi i32 [ -41, %13 ], [ -41, %21 ], [ %34, %56 ], [ 0, %5 ], !dbg !3301
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1061, metadata !DIExpression()) #9, !dbg !3379
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3381
  ret i32 %58, !dbg !3382
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !3383 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3385, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3386, metadata !DIExpression()), !dbg !3387
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !3388
  %4 = load i64, i64* %3, align 8, !dbg !3388, !tbaa !560
  %5 = icmp eq i64 %4, 0, !dbg !3390
  br i1 %5, label %7, label %6, !dbg !3391

6:                                                ; preds = %2
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i64 0, i64 0)) #7, !dbg !3392
  br label %7, !dbg !3393

7:                                                ; preds = %2, %6
  %8 = phi i32 [ -40, %6 ], [ 0, %2 ], !dbg !3387
  ret i32 %8, !dbg !3394
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !3395 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3397, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3398, metadata !DIExpression()), !dbg !3404
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !3405
  %4 = load i64, i64* %3, align 8, !dbg !3405, !tbaa !560
  %5 = icmp eq i64 %4, 0, !dbg !3406
  br i1 %5, label %17, label %6, !dbg !3407

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !962, metadata !DIExpression()) #9, !dbg !3408
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !965, metadata !DIExpression()) #9, !dbg !3408
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !3399, metadata !DIExpression()), !dbg !3410
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3411
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !3412
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !dbg !3412, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %8, metadata !3402, metadata !DIExpression()), !dbg !3410
  %9 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %8, i64 0, i32 15, !dbg !3413
  %10 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %9, align 8, !dbg !3413, !tbaa !872
  %11 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %10, i64 0, i32 13, !dbg !3414
  %12 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %11, align 8, !dbg !3414, !tbaa !3415
  %13 = tail call i32 %12(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !3416
  call void @llvm.dbg.value(metadata i32 %13, metadata !3403, metadata !DIExpression()), !dbg !3410
  store i64 0, i64* %3, align 8, !dbg !3417, !tbaa !560
  %14 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %9, align 8, !dbg !3418, !tbaa !872
  %15 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %14, i64 0, i32 1, !dbg !3419
  %16 = load void ()*, void ()** %15, align 8, !dbg !3419, !tbaa !1543
  tail call void %16() #7, !dbg !3420
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !dbg !3421, !tbaa !791
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1061, metadata !DIExpression()) #9, !dbg !3422
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3424
  br label %17

17:                                               ; preds = %2, %6
  %18 = phi i32 [ %13, %6 ], [ 0, %2 ], !dbg !3404
  ret i32 %18, !dbg !3425
}

declare !dbg !3426 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #3

declare !dbg !3429 dso_local i32 @halide_error_buffer_is_null(i8*, i8*) local_unnamed_addr #3

declare !dbg !3432 dso_local i32 @halide_error_device_interface_no_device(i8*) local_unnamed_addr #3

declare !dbg !3433 dso_local i32 @halide_error_host_and_device_dirty(i8*) local_unnamed_addr #3

declare !dbg !3434 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #3

declare !dbg !3435 dso_local i8* @malloc(i64) local_unnamed_addr #3

declare !dbg !3438 dso_local void @free(i8*) local_unnamed_addr #3

declare !dbg !3441 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !3444 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !3447 extern_weak dso_local i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !3450 extern_weak dso_local i8* @halide_buffer_to_string(i8*, i8*, %struct.halide_buffer_t*) local_unnamed_addr #3

declare !dbg !3453 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #6 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!356, !357, !358}
!llvm.ident = !{!359}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "device_copy_mutex", linkageName: "_ZN6Halide7Runtime8Internal17device_copy_mutexE", scope: !2, file: !5, line: 28, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/device_interface.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !7, line: 120, size: 64, flags: DIFlagTypePassByValue, elements: !8, identifier: "_ZTS12halide_mutex")
!7 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !6, file: !7, line: 121, baseType: !10, size: 64)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !15)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !12, line: 61, baseType: !13)
!12 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !12, line: 10, baseType: !14)
!14 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !{!16}
!16 = !DISubrange(count: 1)
!17 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !18, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !82, globals: !353, imports: !354, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/device_interface.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!19 = !{!20, !29, !34}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !7, line: 403, baseType: !21, size: 8, elements: !23, identifier: "_ZTS18halide_type_code_t")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !12, line: 16, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!27 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 1415, baseType: !30, size: 32, elements: !31, identifier: "_ZTS19halide_buffer_flags")
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "halide_buffer_flag_host_dirty", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "halide_buffer_flag_device_dirty", value: 2, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_error_code_t", file: !7, line: 990, baseType: !35, size: 32, elements: !36, identifier: "_ZTS19halide_error_code_t")
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!37 = !DIEnumerator(name: "halide_error_code_success", value: 0)
!38 = !DIEnumerator(name: "halide_error_code_generic_error", value: -1)
!39 = !DIEnumerator(name: "halide_error_code_explicit_bounds_too_small", value: -2)
!40 = !DIEnumerator(name: "halide_error_code_bad_type", value: -3)
!41 = !DIEnumerator(name: "halide_error_code_access_out_of_bounds", value: -4)
!42 = !DIEnumerator(name: "halide_error_code_buffer_allocation_too_large", value: -5)
!43 = !DIEnumerator(name: "halide_error_code_buffer_extents_too_large", value: -6)
!44 = !DIEnumerator(name: "halide_error_code_constraints_make_required_region_smaller", value: -7)
!45 = !DIEnumerator(name: "halide_error_code_constraint_violated", value: -8)
!46 = !DIEnumerator(name: "halide_error_code_param_too_small", value: -9)
!47 = !DIEnumerator(name: "halide_error_code_param_too_large", value: -10)
!48 = !DIEnumerator(name: "halide_error_code_out_of_memory", value: -11)
!49 = !DIEnumerator(name: "halide_error_code_buffer_argument_is_null", value: -12)
!50 = !DIEnumerator(name: "halide_error_code_debug_to_file_failed", value: -13)
!51 = !DIEnumerator(name: "halide_error_code_copy_to_host_failed", value: -14)
!52 = !DIEnumerator(name: "halide_error_code_copy_to_device_failed", value: -15)
!53 = !DIEnumerator(name: "halide_error_code_device_malloc_failed", value: -16)
!54 = !DIEnumerator(name: "halide_error_code_device_sync_failed", value: -17)
!55 = !DIEnumerator(name: "halide_error_code_device_free_failed", value: -18)
!56 = !DIEnumerator(name: "halide_error_code_no_device_interface", value: -19)
!57 = !DIEnumerator(name: "halide_error_code_matlab_init_failed", value: -20)
!58 = !DIEnumerator(name: "halide_error_code_matlab_bad_param_type", value: -21)
!59 = !DIEnumerator(name: "halide_error_code_internal_error", value: -22)
!60 = !DIEnumerator(name: "halide_error_code_device_run_failed", value: -23)
!61 = !DIEnumerator(name: "halide_error_code_unaligned_host_ptr", value: -24)
!62 = !DIEnumerator(name: "halide_error_code_bad_fold", value: -25)
!63 = !DIEnumerator(name: "halide_error_code_fold_factor_too_small", value: -26)
!64 = !DIEnumerator(name: "halide_error_code_requirement_failed", value: -27)
!65 = !DIEnumerator(name: "halide_error_code_buffer_extents_negative", value: -28)
!66 = !DIEnumerator(name: "halide_error_code_unused_29", value: -29)
!67 = !DIEnumerator(name: "halide_error_code_unused_30", value: -30)
!68 = !DIEnumerator(name: "halide_error_code_specialize_fail", value: -31)
!69 = !DIEnumerator(name: "halide_error_code_device_wrap_native_failed", value: -32)
!70 = !DIEnumerator(name: "halide_error_code_device_detach_native_failed", value: -33)
!71 = !DIEnumerator(name: "halide_error_code_host_is_null", value: -34)
!72 = !DIEnumerator(name: "halide_error_code_bad_extern_fold", value: -35)
!73 = !DIEnumerator(name: "halide_error_code_device_interface_no_device", value: -36)
!74 = !DIEnumerator(name: "halide_error_code_host_and_device_dirty", value: -37)
!75 = !DIEnumerator(name: "halide_error_code_buffer_is_null", value: -38)
!76 = !DIEnumerator(name: "halide_error_code_device_buffer_copy_failed", value: -39)
!77 = !DIEnumerator(name: "halide_error_code_device_crop_unsupported", value: -40)
!78 = !DIEnumerator(name: "halide_error_code_device_crop_failed", value: -41)
!79 = !DIEnumerator(name: "halide_error_code_incompatible_device_interface", value: -42)
!80 = !DIEnumerator(name: "halide_error_code_bad_dimensions", value: -43)
!81 = !DIEnumerator(name: "halide_error_code_device_dirty_with_no_device_support", value: -44)
!82 = !{!83, !84, !13, !195, !266, !314, !351, !90}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !86, file: !85, line: 203, baseType: !87)
!85 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!86 = !DINamespace(scope: !2)
!87 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !86, file: !85, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !88, templateParams: !348)
!88 = !{!89, !92, !93, !94, !95, !97, !99, !103, !109, !114, !118, !121, !125, !129, !133, !138, !144, !177, !330, !333, !336, !341, !342, !345, !346, !347}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !87, file: !85, line: 32, baseType: !90, size: 64, flags: DIFlagPublic)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !87, file: !85, line: 32, baseType: !90, size: 64, offset: 64, flags: DIFlagPublic)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !87, file: !85, line: 32, baseType: !90, size: 64, offset: 128, flags: DIFlagPublic)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !87, file: !85, line: 33, baseType: !83, size: 64, offset: 192, flags: DIFlagPublic)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !87, file: !85, line: 34, baseType: !96, size: 8, offset: 256, flags: DIFlagPublic)
!96 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !87, file: !85, line: 35, baseType: !98, size: 8, offset: 264, flags: DIFlagPublic)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 8, elements: !15)
!99 = !DISubprogram(name: "Printer", scope: !87, file: !85, line: 37, type: !100, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !102, !83, !90}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!103 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !87, file: !85, line: 57, type: !104, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !102, !107}
!106 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !87, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!109 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !87, file: !85, line: 67, type: !110, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DISubroutineType(types: !111)
!111 = !{!106, !102, !112}
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !12, line: 9, baseType: !113)
!113 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!114 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !87, file: !85, line: 72, type: !115, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubroutineType(types: !116)
!116 = !{!106, !102, !117}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !12, line: 11, baseType: !35)
!118 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !87, file: !85, line: 77, type: !119, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DISubroutineType(types: !120)
!120 = !{!106, !102, !13}
!121 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !87, file: !85, line: 82, type: !122, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!122 = !DISubroutineType(types: !123)
!123 = !{!106, !102, !124}
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !12, line: 12, baseType: !30)
!125 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !87, file: !85, line: 87, type: !126, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!126 = !DISubroutineType(types: !127)
!127 = !{!106, !102, !128}
!128 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!129 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !87, file: !85, line: 92, type: !130, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!130 = !DISubroutineType(types: !131)
!131 = !{!106, !102, !132}
!132 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!133 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !87, file: !85, line: 97, type: !134, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!134 = !DISubroutineType(types: !135)
!135 = !{!106, !102, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!138 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !87, file: !85, line: 102, type: !139, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DISubroutineType(types: !140)
!140 = !{!106, !102, !141}
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !12, line: 14, baseType: !143)
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !87, file: !85, line: 108, type: !145, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!145 = !DISubroutineType(types: !146)
!146 = !{!106, !102, !147}
!147 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !7, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !150, identifier: "_ZTS13halide_type_t")
!150 = !{!151, !153, !154, !155, !159, !162, !166, !169, !170, !171, !174}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !149, file: !7, line: 434, baseType: !152, size: 8, align: 8)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !7, line: 413, baseType: !20)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !149, file: !7, line: 442, baseType: !21, size: 8, align: 8, offset: 8)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !149, file: !7, line: 446, baseType: !142, size: 16, align: 16, offset: 16)
!155 = !DISubprogram(name: "halide_type_t", scope: !149, file: !7, line: 453, type: !156, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !158, !152, !21, !142}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!159 = !DISubprogram(name: "halide_type_t", scope: !149, file: !7, line: 459, type: !160, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !158}
!162 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !149, file: !7, line: 463, type: !163, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !DISubroutineType(types: !164)
!164 = !{!149, !165, !142}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!166 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !149, file: !7, line: 468, type: !167, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!167 = !DISubroutineType(types: !168)
!168 = !{!96, !165, !147}
!169 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !149, file: !7, line: 472, type: !167, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!170 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !149, file: !7, line: 476, type: !167, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !149, file: !7, line: 481, type: !172, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!172 = !DISubroutineType(types: !173)
!173 = !{!35, !165}
!174 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !149, file: !7, line: 485, type: !175, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DISubroutineType(types: !176)
!176 = !{!124, !165}
!177 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !87, file: !85, line: 113, type: !178, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DISubroutineType(types: !179)
!179 = !{!106, !102, !180}
!180 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !7, line: 1550, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !7, line: 1423, size: 448, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !184, identifier: "_ZTS15halide_buffer_t")
!184 = !{!185, !186, !265, !267, !268, !269, !270, !293, !294, !299, !303, !306, !307, !310, !311, !316, !319, !320, !321, !326, !329}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !183, file: !7, line: 1425, baseType: !13, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !183, file: !7, line: 1428, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !7, line: 723, size: 1024, flags: DIFlagTypePassByValue, elements: !190, identifier: "_ZTS25halide_device_interface_t")
!190 = !{!191, !196, !200, !201, !205, !206, !207, !208, !209, !213, !219, !223, !224, !228, !229, !234}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !189, file: !7, line: 724, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!35, !83, !195, !187}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !189, file: !7, line: 726, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!35, !83, !195}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !189, file: !7, line: 727, baseType: !197, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !189, file: !7, line: 728, baseType: !202, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !83, !187}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !189, file: !7, line: 730, baseType: !197, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !189, file: !7, line: 731, baseType: !192, size: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !189, file: !7, line: 733, baseType: !192, size: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !189, file: !7, line: 735, baseType: !197, size: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !189, file: !7, line: 736, baseType: !210, size: 64, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!35, !83, !195, !187, !195}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !189, file: !7, line: 738, baseType: !214, size: 64, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!35, !83, !217, !195}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !189, file: !7, line: 740, baseType: !220, size: 64, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!35, !83, !217, !35, !35, !195}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !189, file: !7, line: 742, baseType: !197, size: 64, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !189, file: !7, line: 743, baseType: !225, size: 64, offset: 768)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!35, !83, !195, !13, !187}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !189, file: !7, line: 745, baseType: !197, size: 64, offset: 832)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !189, file: !7, line: 746, baseType: !230, size: 64, offset: 896)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!35, !83, !233, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !189, file: !7, line: 747, baseType: !235, size: 64, offset: 960)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !238, line: 10, size: 1024, flags: DIFlagTypePassByValue, elements: !239, identifier: "_ZTS30halide_device_interface_impl_t")
!238 = !DIFile(filename: "src/runtime/device_interface.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!239 = !{!240, !244, !245, !246, !247, !248, !252, !253, !254, !255, !256, !257, !258, !259, !260, !264}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "use_module", scope: !237, file: !238, line: 16, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "release_module", scope: !237, file: !238, line: 17, baseType: !241, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !237, file: !238, line: 18, baseType: !197, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !237, file: !238, line: 19, baseType: !197, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !237, file: !238, line: 20, baseType: !197, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !237, file: !238, line: 21, baseType: !249, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!35, !83}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !237, file: !238, line: 22, baseType: !197, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !237, file: !238, line: 23, baseType: !197, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !237, file: !238, line: 24, baseType: !197, size: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !237, file: !238, line: 25, baseType: !197, size: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !237, file: !238, line: 26, baseType: !210, size: 64, offset: 640)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !237, file: !238, line: 28, baseType: !214, size: 64, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !237, file: !238, line: 31, baseType: !220, size: 64, offset: 768)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !237, file: !238, line: 35, baseType: !197, size: 64, offset: 832)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !237, file: !238, line: 37, baseType: !261, size: 64, offset: 896)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!35, !83, !195, !13}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !237, file: !238, line: 38, baseType: !197, size: 64, offset: 960)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !183, file: !7, line: 1433, baseType: !266, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !7, line: 1436, baseType: !13, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !183, file: !7, line: 1439, baseType: !149, size: 32, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !183, file: !7, line: 1442, baseType: !117, size: 32, offset: 288)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !183, file: !7, line: 1446, baseType: !271, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !7, line: 1409, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !7, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !274, identifier: "_ZTS18halide_dimension_t")
!274 = !{!275, !276, !277, !278, !279, !283, !286, !292}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !273, file: !7, line: 1383, baseType: !117, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !273, file: !7, line: 1383, baseType: !117, size: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !273, file: !7, line: 1383, baseType: !117, size: 32, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !7, line: 1386, baseType: !124, size: 32, offset: 96)
!279 = !DISubprogram(name: "halide_dimension_t", scope: !273, file: !7, line: 1388, type: !280, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!283 = !DISubprogram(name: "halide_dimension_t", scope: !273, file: !7, line: 1389, type: !284, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !282, !117, !117, !117, !124}
!286 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !273, file: !7, line: 1393, type: !287, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DISubroutineType(types: !288)
!288 = !{!96, !289, !291}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!291 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !290, size: 64)
!292 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !273, file: !7, line: 1400, type: !287, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !183, file: !7, line: 1449, baseType: !83, size: 64, offset: 384)
!294 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !183, file: !7, line: 1454, type: !295, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DISubroutineType(types: !296)
!296 = !{!96, !297, !298}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !7, line: 1416, baseType: !29)
!299 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !183, file: !7, line: 1458, type: !300, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !302, !298, !96}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!303 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !183, file: !7, line: 1466, type: !304, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DISubroutineType(types: !305)
!305 = !{!96, !297}
!306 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !183, file: !7, line: 1470, type: !304, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !183, file: !7, line: 1474, type: !308, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !302, !96}
!310 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !183, file: !7, line: 1478, type: !308, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!311 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !183, file: !7, line: 1485, type: !312, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DISubroutineType(types: !313)
!313 = !{!314, !297}
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 27, baseType: !315)
!315 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!316 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !183, file: !7, line: 1495, type: !317, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!317 = !DISubroutineType(types: !318)
!318 = !{!266, !297}
!319 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !183, file: !7, line: 1506, type: !317, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!320 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !183, file: !7, line: 1518, type: !312, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!321 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !183, file: !7, line: 1523, type: !322, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DISubroutineType(types: !323)
!323 = !{!266, !297, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!326 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !183, file: !7, line: 1534, type: !327, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!327 = !DISubroutineType(types: !328)
!328 = !{!35, !302, !83}
!329 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !183, file: !7, line: 1545, type: !304, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!330 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !87, file: !85, line: 119, type: !331, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!331 = !DISubroutineType(types: !332)
!332 = !{!107, !102}
!333 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !87, file: !85, line: 131, type: !334, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !102}
!336 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !87, file: !85, line: 139, type: !337, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DISubroutineType(types: !338)
!338 = !{!13, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!341 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !87, file: !85, line: 143, type: !337, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !87, file: !85, line: 148, type: !343, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !102, !35}
!345 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !87, file: !85, line: 158, type: !331, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!346 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !87, file: !85, line: 162, type: !334, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DISubprogram(name: "~Printer", scope: !87, file: !85, line: 166, type: !334, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !{!349, !350}
!349 = !DITemplateValueParameter(name: "type", type: !35, value: i32 0)
!350 = !DITemplateValueParameter(name: "length", type: !14, value: i64 1024)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !12, line: 28, baseType: !352)
!352 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!353 = !{!0}
!354 = !{!355}
!355 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !17, entity: !2, file: !12, line: 225)
!356 = !{i32 7, !"Dwarf Version", i32 4}
!357 = !{i32 2, !"Debug Info Version", i32 3}
!358 = !{i32 1, !"wchar_size", i32 4}
!359 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!360 = distinct !DISubprogram(name: "copy_memory_helper", linkageName: "_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx", scope: !2, file: !361, line: 47, type: !362, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !378)
!361 = !DIFile(filename: "src/runtime/device_buffer_utils.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!362 = !DISubroutineType(types: !363)
!363 = !{null, !364, !35, !112, !112}
!364 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_copy", scope: !2, file: !361, line: 33, size: 3328, flags: DIFlagTypePassByValue, elements: !367, identifier: "_ZTSN6Halide7Runtime8Internal11device_copyE")
!367 = !{!368, !369, !370, !371, !375, !376, !377}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !366, file: !361, line: 35, baseType: !13, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !366, file: !361, line: 35, baseType: !13, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "src_begin", scope: !366, file: !361, line: 37, baseType: !13, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !366, file: !361, line: 39, baseType: !372, size: 1024, offset: 192)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "src_stride_bytes", scope: !366, file: !361, line: 41, baseType: !372, size: 1024, offset: 1216)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dst_stride_bytes", scope: !366, file: !361, line: 42, baseType: !372, size: 1024, offset: 2240)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !366, file: !361, line: 44, baseType: !13, size: 64, offset: 3264)
!378 = !{!379, !380, !381, !382, !383, !386, !387}
!379 = !DILocalVariable(name: "copy", arg: 1, scope: !360, file: !361, line: 47, type: !364)
!380 = !DILocalVariable(name: "d", arg: 2, scope: !360, file: !361, line: 47, type: !35)
!381 = !DILocalVariable(name: "src_off", arg: 3, scope: !360, file: !361, line: 47, type: !112)
!382 = !DILocalVariable(name: "dst_off", arg: 4, scope: !360, file: !361, line: 47, type: !112)
!383 = !DILocalVariable(name: "from", scope: !384, file: !361, line: 54, type: !136)
!384 = distinct !DILexicalBlock(scope: !385, file: !361, line: 53, column: 18)
!385 = distinct !DILexicalBlock(scope: !360, file: !361, line: 53, column: 9)
!386 = !DILocalVariable(name: "to", scope: !384, file: !361, line: 55, type: !83)
!387 = !DILocalVariable(name: "i", scope: !388, file: !361, line: 58, type: !13)
!388 = distinct !DILexicalBlock(scope: !389, file: !361, line: 58, column: 9)
!389 = distinct !DILexicalBlock(scope: !385, file: !361, line: 57, column: 12)
!390 = !DILocation(line: 0, scope: !360)
!391 = !DILocation(line: 49, column: 14, scope: !360)
!392 = !DILocation(line: 49, column: 19, scope: !360)
!393 = !DILocation(line: 49, column: 22, scope: !360)
!394 = !{!395, !395, i64 0}
!395 = !{!"long long", !396, i64 0}
!396 = !{!"omnipotent char", !397, i64 0}
!397 = !{!"Simple C++ TBAA"}
!398 = !DILocation(line: 49, column: 37, scope: !360)
!399 = !DILocation(line: 49, column: 5, scope: !360)
!400 = !DILocation(line: 50, column: 10, scope: !401)
!401 = distinct !DILexicalBlock(scope: !360, file: !361, line: 49, column: 43)
!402 = distinct !{!402, !399, !403, !404}
!403 = !DILocation(line: 51, column: 5, scope: !360)
!404 = !{!"llvm.loop.mustprogress"}
!405 = !DILocation(line: 53, column: 11, scope: !385)
!406 = !DILocation(line: 53, column: 9, scope: !360)
!407 = !DILocation(line: 0, scope: !388)
!408 = !DILocation(line: 58, column: 34, scope: !409)
!409 = distinct !DILexicalBlock(scope: !388, file: !361, line: 58, column: 9)
!410 = !DILocation(line: 58, column: 32, scope: !409)
!411 = !DILocation(line: 58, column: 9, scope: !388)
!412 = !DILocation(line: 54, column: 42, scope: !384)
!413 = !{!414, !395, i64 0}
!414 = !{!"_ZTSN6Halide7Runtime8Internal11device_copyE", !395, i64 0, !395, i64 8, !395, i64 16, !396, i64 24, !396, i64 152, !396, i64 280, !395, i64 408}
!415 = !DILocation(line: 54, column: 46, scope: !384)
!416 = !DILocation(line: 54, column: 28, scope: !384)
!417 = !DILocation(line: 0, scope: !384)
!418 = !DILocation(line: 55, column: 34, scope: !384)
!419 = !{!414, !395, i64 8}
!420 = !DILocation(line: 55, column: 38, scope: !384)
!421 = !DILocation(line: 55, column: 20, scope: !384)
!422 = !DILocation(line: 56, column: 31, scope: !384)
!423 = !{!414, !395, i64 408}
!424 = !DILocation(line: 56, column: 9, scope: !384)
!425 = !DILocation(line: 57, column: 5, scope: !384)
!426 = !DILocation(line: 59, column: 13, scope: !427)
!427 = distinct !DILexicalBlock(scope: !409, file: !361, line: 58, column: 55)
!428 = !DILocation(line: 60, column: 24, scope: !427)
!429 = !DILocation(line: 60, column: 21, scope: !427)
!430 = !DILocation(line: 61, column: 24, scope: !427)
!431 = !DILocation(line: 61, column: 21, scope: !427)
!432 = !DILocation(line: 58, column: 51, scope: !409)
!433 = distinct !{!433, !411, !434, !404}
!434 = !DILocation(line: 62, column: 9, scope: !388)
!435 = !DILocation(line: 64, column: 1, scope: !360)
!436 = !DISubprogram(name: "memcpy", scope: !12, file: !12, line: 94, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!83, !83, !136, !315}
!439 = !{}
!440 = distinct !DISubprogram(name: "copy_memory", linkageName: "_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv", scope: !2, file: !361, line: 66, type: !441, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !364, !83}
!443 = !{!444, !445}
!444 = !DILocalVariable(name: "copy", arg: 1, scope: !440, file: !361, line: 66, type: !364)
!445 = !DILocalVariable(name: "user_context", arg: 2, scope: !440, file: !361, line: 66, type: !83)
!446 = !DILocation(line: 0, scope: !440)
!447 = !DILocation(line: 68, column: 14, scope: !448)
!448 = distinct !DILexicalBlock(scope: !440, file: !361, line: 68, column: 9)
!449 = !DILocation(line: 68, column: 26, scope: !448)
!450 = !DILocation(line: 68, column: 18, scope: !448)
!451 = !DILocation(line: 68, column: 9, scope: !440)
!452 = !DILocation(line: 69, column: 58, scope: !453)
!453 = distinct !DILexicalBlock(scope: !448, file: !361, line: 68, column: 31)
!454 = !{!414, !395, i64 16}
!455 = !DILocation(line: 69, column: 9, scope: !453)
!456 = !DILocation(line: 70, column: 5, scope: !453)
!457 = !DILocalVariable(name: "this", arg: 1, scope: !458, type: !462, flags: DIFlagArtificial | DIFlagObjectPointer)
!458 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !87, file: !85, line: 37, type: !100, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !99, retainedNodes: !459)
!459 = !{!457, !460, !461}
!460 = !DILocalVariable(name: "ctx", arg: 2, scope: !458, file: !85, line: 37, type: !83)
!461 = !DILocalVariable(name: "mem", arg: 3, scope: !458, file: !85, line: 37, type: !90)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!463 = !DILocation(line: 0, scope: !458, inlinedAt: !464)
!464 = distinct !DILocation(line: 71, column: 9, scope: !465)
!465 = distinct !DILexicalBlock(scope: !448, file: !361, line: 70, column: 12)
!466 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !464)
!467 = distinct !DILexicalBlock(scope: !468, file: !85, line: 43, column: 16)
!468 = distinct !DILexicalBlock(scope: !469, file: !85, line: 41, column: 20)
!469 = distinct !DILexicalBlock(scope: !470, file: !85, line: 39, column: 13)
!470 = distinct !DILexicalBlock(scope: !458, file: !85, line: 38, column: 54)
!471 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !464)
!472 = distinct !DILexicalBlock(scope: !470, file: !85, line: 48, column: 13)
!473 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !464)
!474 = !DILocalVariable(name: "this", arg: 1, scope: !475, type: !462, flags: DIFlagArtificial | DIFlagObjectPointer)
!475 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !87, file: !85, line: 57, type: !104, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !103, retainedNodes: !476)
!476 = !{!474, !477}
!477 = !DILocalVariable(name: "arg", arg: 2, scope: !475, file: !85, line: 57, type: !107)
!478 = !DILocation(line: 0, scope: !475, inlinedAt: !479)
!479 = distinct !DILocation(line: 71, column: 29, scope: !465)
!480 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !479)
!481 = distinct !DILexicalBlock(scope: !482, file: !85, line: 61, column: 16)
!482 = distinct !DILexicalBlock(scope: !475, file: !85, line: 59, column: 13)
!483 = !DILocalVariable(name: "this", arg: 1, scope: !484, type: !462, flags: DIFlagArtificial | DIFlagObjectPointer)
!484 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !87, file: !85, line: 166, type: !334, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !347, retainedNodes: !485)
!485 = !{!483}
!486 = !DILocation(line: 0, scope: !484, inlinedAt: !487)
!487 = distinct !DILocation(line: 71, column: 9, scope: !465)
!488 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !487)
!489 = distinct !DILexicalBlock(scope: !490, file: !85, line: 167, column: 19)
!490 = distinct !DILexicalBlock(scope: !491, file: !85, line: 167, column: 13)
!491 = distinct !DILexicalBlock(scope: !484, file: !85, line: 166, column: 16)
!492 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !487)
!493 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !464)
!494 = distinct !DILexicalBlock(scope: !472, file: !85, line: 48, column: 18)
!495 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !464)
!496 = !{!396, !396, i64 0}
!497 = !DILocalVariable(name: "this", arg: 1, scope: !498, type: !462, flags: DIFlagArtificial | DIFlagObjectPointer)
!498 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !87, file: !85, line: 162, type: !334, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !346, retainedNodes: !499)
!499 = !{!497}
!500 = !DILocation(line: 0, scope: !498, inlinedAt: !501)
!501 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !487)
!502 = distinct !DILexicalBlock(scope: !490, file: !85, line: 169, column: 16)
!503 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !501)
!504 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !501)
!505 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !501)
!506 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !487)
!507 = distinct !DILexicalBlock(scope: !508, file: !85, line: 173, column: 46)
!508 = distinct !DILexicalBlock(scope: !509, file: !85, line: 173, column: 24)
!509 = distinct !DILexicalBlock(scope: !502, file: !85, line: 171, column: 17)
!510 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !487)
!511 = distinct !DILexicalBlock(scope: !512, file: !85, line: 180, column: 40)
!512 = distinct !DILexicalBlock(scope: !491, file: !85, line: 180, column: 13)
!513 = !DILocation(line: 73, column: 1, scope: !440)
!514 = distinct !DISubprogram(name: "make_buffer_copy", linkageName: "_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b", scope: !2, file: !361, line: 76, type: !515, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !518)
!515 = !DISubroutineType(types: !516)
!516 = !{!366, !517, !96, !517, !96}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!518 = !{!519, !520, !521, !522, !523, !524, !526, !528, !531, !534, !536, !539, !540, !541, !543}
!519 = !DILocalVariable(name: "src", arg: 1, scope: !514, file: !361, line: 76, type: !517)
!520 = !DILocalVariable(name: "src_host", arg: 2, scope: !514, file: !361, line: 76, type: !96)
!521 = !DILocalVariable(name: "dst", arg: 3, scope: !514, file: !361, line: 77, type: !517)
!522 = !DILocalVariable(name: "dst_host", arg: 4, scope: !514, file: !361, line: 77, type: !96)
!523 = !DILocalVariable(name: "c", scope: !514, file: !361, line: 79, type: !366)
!524 = !DILocalVariable(name: "i", scope: !525, file: !361, line: 83, type: !35)
!525 = distinct !DILexicalBlock(scope: !514, file: !361, line: 83, column: 5)
!526 = !DILocalVariable(name: "i", scope: !527, file: !361, line: 91, type: !35)
!527 = distinct !DILexicalBlock(scope: !514, file: !361, line: 91, column: 5)
!528 = !DILocalVariable(name: "zero", scope: !529, file: !361, line: 100, type: !366)
!529 = distinct !DILexicalBlock(scope: !530, file: !361, line: 98, column: 42)
!530 = distinct !DILexicalBlock(scope: !514, file: !361, line: 96, column: 9)
!531 = !DILocalVariable(name: "zero", scope: !532, file: !361, line: 107, type: !366)
!532 = distinct !DILexicalBlock(scope: !533, file: !361, line: 104, column: 28)
!533 = distinct !DILexicalBlock(scope: !514, file: !361, line: 104, column: 9)
!534 = !DILocalVariable(name: "i", scope: !535, file: !361, line: 115, type: !35)
!535 = distinct !DILexicalBlock(scope: !514, file: !361, line: 115, column: 5)
!536 = !DILocalVariable(name: "dst_stride_bytes", scope: !537, file: !361, line: 117, type: !13)
!537 = distinct !DILexicalBlock(scope: !538, file: !361, line: 115, column: 47)
!538 = distinct !DILexicalBlock(scope: !535, file: !361, line: 115, column: 5)
!539 = !DILocalVariable(name: "src_stride_bytes", scope: !537, file: !361, line: 118, type: !13)
!540 = !DILocalVariable(name: "insert", scope: !537, file: !361, line: 120, type: !35)
!541 = !DILocalVariable(name: "j", scope: !542, file: !361, line: 128, type: !35)
!542 = distinct !DILexicalBlock(scope: !537, file: !361, line: 128, column: 9)
!543 = !DILocalVariable(name: "j", scope: !544, file: !361, line: 151, type: !35)
!544 = distinct !DILexicalBlock(scope: !545, file: !361, line: 151, column: 9)
!545 = distinct !DILexicalBlock(scope: !514, file: !361, line: 145, column: 51)
!546 = !DILocation(line: 0, scope: !514)
!547 = !DILocation(line: 79, column: 5, scope: !514)
!548 = !DILocation(line: 79, column: 17, scope: !514)
!549 = !DILocation(line: 80, column: 13, scope: !514)
!550 = !DILocation(line: 80, column: 39, scope: !514)
!551 = !{!552, !553, i64 16}
!552 = !{!"_ZTS15halide_buffer_t", !395, i64 0, !553, i64 8, !553, i64 16, !395, i64 24, !554, i64 32, !557, i64 36, !553, i64 40, !553, i64 48}
!553 = !{!"any pointer", !396, i64 0}
!554 = !{!"_ZTS13halide_type_t", !555, i64 0, !396, i64 1, !556, i64 2}
!555 = !{!"_ZTS18halide_type_code_t", !396, i64 0}
!556 = !{!"short", !396, i64 0}
!557 = !{!"int", !396, i64 0}
!558 = !DILocation(line: 80, column: 24, scope: !514)
!559 = !DILocation(line: 80, column: 51, scope: !514)
!560 = !{!552, !395, i64 0}
!561 = !DILocation(line: 80, column: 7, scope: !514)
!562 = !DILocation(line: 80, column: 11, scope: !514)
!563 = !DILocation(line: 81, column: 13, scope: !514)
!564 = !DILocation(line: 81, column: 39, scope: !514)
!565 = !DILocation(line: 81, column: 24, scope: !514)
!566 = !DILocation(line: 81, column: 51, scope: !514)
!567 = !DILocation(line: 81, column: 7, scope: !514)
!568 = !DILocation(line: 81, column: 11, scope: !514)
!569 = !DILocalVariable(name: "this", arg: 1, scope: !570, type: !572, flags: DIFlagArtificial | DIFlagObjectPointer)
!570 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !149, file: !7, line: 481, type: !172, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !171, retainedNodes: !571)
!571 = !{!569}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!573 = !DILocation(line: 0, scope: !570, inlinedAt: !574)
!574 = distinct !DILocation(line: 82, column: 30, scope: !514)
!575 = !DILocation(line: 482, column: 17, scope: !570, inlinedAt: !574)
!576 = !{!554, !396, i64 1}
!577 = !DILocation(line: 482, column: 22, scope: !570, inlinedAt: !574)
!578 = !DILocation(line: 482, column: 27, scope: !570, inlinedAt: !574)
!579 = !DILocation(line: 82, column: 20, scope: !514)
!580 = !DILocation(line: 82, column: 7, scope: !514)
!581 = !DILocation(line: 82, column: 18, scope: !514)
!582 = !DILocation(line: 0, scope: !525)
!583 = !DILocation(line: 84, column: 9, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !361, line: 83, column: 45)
!585 = distinct !DILexicalBlock(scope: !525, file: !361, line: 83, column: 5)
!586 = !DILocation(line: 84, column: 21, scope: !584)
!587 = !DILocation(line: 85, column: 9, scope: !584)
!588 = !DILocation(line: 85, column: 31, scope: !584)
!589 = !DILocation(line: 86, column: 9, scope: !584)
!590 = !DILocation(line: 86, column: 31, scope: !584)
!591 = !DILocation(line: 90, column: 7, scope: !514)
!592 = !DILocation(line: 0, scope: !527)
!593 = !DILocation(line: 91, column: 30, scope: !594)
!594 = distinct !DILexicalBlock(scope: !527, file: !361, line: 91, column: 5)
!595 = !{!552, !557, i64 36}
!596 = !DILocation(line: 91, column: 23, scope: !594)
!597 = !DILocation(line: 91, column: 5, scope: !527)
!598 = !{!552, !553, i64 40}
!599 = !DILocation(line: 94, column: 17, scope: !514)
!600 = !DILocation(line: 94, column: 22, scope: !514)
!601 = !DILocation(line: 96, column: 33, scope: !530)
!602 = !DILocation(line: 96, column: 25, scope: !530)
!603 = !DILocation(line: 96, column: 44, scope: !530)
!604 = !DILocation(line: 92, column: 46, scope: !605)
!605 = distinct !DILexicalBlock(scope: !594, file: !361, line: 91, column: 47)
!606 = !{!607, !557, i64 8}
!607 = !{!"_ZTS18halide_dimension_t", !557, i64 0, !557, i64 4, !557, i64 8, !557, i64 12}
!608 = !DILocation(line: 92, column: 34, scope: !605)
!609 = !DILocation(line: 92, column: 68, scope: !605)
!610 = !{!607, !557, i64 0}
!611 = !DILocation(line: 92, column: 86, scope: !605)
!612 = !DILocation(line: 92, column: 72, scope: !605)
!613 = !DILocation(line: 92, column: 55, scope: !605)
!614 = !DILocation(line: 92, column: 53, scope: !605)
!615 = !DILocation(line: 92, column: 21, scope: !605)
!616 = !DILocation(line: 91, column: 43, scope: !594)
!617 = distinct !{!617, !597, !618, !404}
!618 = !DILocation(line: 93, column: 5, scope: !527)
!619 = !DILocation(line: 0, scope: !570, inlinedAt: !620)
!620 = distinct !DILocation(line: 97, column: 19, scope: !530)
!621 = !DILocation(line: 0, scope: !570, inlinedAt: !622)
!622 = distinct !DILocation(line: 97, column: 40, scope: !530)
!623 = !DILocation(line: 482, column: 17, scope: !570, inlinedAt: !622)
!624 = !DILocation(line: 482, column: 22, scope: !570, inlinedAt: !622)
!625 = !DILocation(line: 482, column: 27, scope: !570, inlinedAt: !622)
!626 = !DILocation(line: 97, column: 27, scope: !530)
!627 = !DILocation(line: 97, column: 48, scope: !530)
!628 = !DILocation(line: 100, column: 21, scope: !529)
!629 = !DILocation(line: 101, column: 9, scope: !529)
!630 = !DILocation(line: 104, column: 22, scope: !533)
!631 = !DILocation(line: 104, column: 9, scope: !514)
!632 = !DILocation(line: 0, scope: !535)
!633 = !DILocation(line: 115, column: 5, scope: !535)
!634 = !DILocation(line: 115, column: 23, scope: !538)
!635 = !DILocation(line: 107, column: 21, scope: !532)
!636 = !DILocation(line: 108, column: 9, scope: !532)
!637 = !DILocation(line: 144, column: 14, scope: !514)
!638 = !DILocation(line: 144, column: 28, scope: !514)
!639 = !DILocation(line: 144, column: 25, scope: !514)
!640 = !DILocation(line: 144, column: 50, scope: !514)
!641 = !DILocation(line: 145, column: 28, scope: !514)
!642 = !DILocation(line: 117, column: 59, scope: !537)
!643 = !DILocation(line: 117, column: 47, scope: !537)
!644 = !DILocation(line: 0, scope: !570, inlinedAt: !645)
!645 = distinct !DILocation(line: 117, column: 78, scope: !537)
!646 = !DILocation(line: 117, column: 66, scope: !537)
!647 = !DILocation(line: 0, scope: !537)
!648 = !DILocation(line: 118, column: 59, scope: !537)
!649 = !DILocation(line: 118, column: 47, scope: !537)
!650 = !DILocation(line: 0, scope: !570, inlinedAt: !651)
!651 = distinct !DILocation(line: 118, column: 78, scope: !537)
!652 = !DILocation(line: 118, column: 66, scope: !537)
!653 = !DILocation(line: 121, column: 33, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !361, line: 121, column: 9)
!655 = distinct !DILexicalBlock(scope: !537, file: !361, line: 121, column: 9)
!656 = !DILocation(line: 121, column: 9, scope: !655)
!657 = !DILocation(line: 128, column: 27, scope: !658)
!658 = distinct !DILexicalBlock(scope: !542, file: !361, line: 128, column: 9)
!659 = !DILocation(line: 124, column: 36, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !361, line: 124, column: 17)
!661 = distinct !DILexicalBlock(scope: !654, file: !361, line: 121, column: 48)
!662 = !DILocation(line: 124, column: 34, scope: !660)
!663 = !DILocation(line: 124, column: 63, scope: !660)
!664 = !DILocation(line: 121, column: 44, scope: !654)
!665 = distinct !{!665, !656, !666, !404}
!666 = !DILocation(line: 127, column: 9, scope: !655)
!667 = !DILocation(line: 0, scope: !655)
!668 = !DILocation(line: 0, scope: !542)
!669 = !DILocation(line: 128, column: 9, scope: !542)
!670 = !DILocation(line: 133, column: 40, scope: !537)
!671 = !{!607, !557, i64 4}
!672 = !DILocation(line: 133, column: 28, scope: !537)
!673 = !DILocation(line: 133, column: 9, scope: !537)
!674 = !DILocation(line: 133, column: 26, scope: !537)
!675 = !DILocation(line: 135, column: 9, scope: !537)
!676 = !DILocation(line: 135, column: 36, scope: !537)
!677 = !DILocation(line: 136, column: 9, scope: !537)
!678 = !DILocation(line: 136, column: 36, scope: !537)
!679 = !DILocation(line: 115, column: 43, scope: !538)
!680 = distinct !{!680, !633, !681, !404}
!681 = !DILocation(line: 137, column: 5, scope: !535)
!682 = !DILocation(line: 129, column: 38, scope: !683)
!683 = distinct !DILexicalBlock(scope: !658, file: !361, line: 128, column: 42)
!684 = !DILocation(line: 129, column: 27, scope: !683)
!685 = !DILocation(line: 129, column: 13, scope: !683)
!686 = !DILocation(line: 129, column: 25, scope: !683)
!687 = !DILocation(line: 130, column: 37, scope: !683)
!688 = !DILocation(line: 130, column: 13, scope: !683)
!689 = !DILocation(line: 130, column: 35, scope: !683)
!690 = !DILocation(line: 131, column: 37, scope: !683)
!691 = !DILocation(line: 131, column: 13, scope: !683)
!692 = !DILocation(line: 131, column: 35, scope: !683)
!693 = distinct !{!693, !669, !694, !404}
!694 = !DILocation(line: 132, column: 9, scope: !542)
!695 = !DILocation(line: 145, column: 25, scope: !514)
!696 = !DILocation(line: 144, column: 5, scope: !514)
!697 = !DILocation(line: 147, column: 25, scope: !545)
!698 = !DILocation(line: 147, column: 22, scope: !545)
!699 = !DILocation(line: 0, scope: !544)
!700 = !DILocation(line: 152, column: 31, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !361, line: 151, column: 49)
!702 = distinct !DILexicalBlock(scope: !544, file: !361, line: 151, column: 9)
!703 = !DILocation(line: 152, column: 29, scope: !701)
!704 = !DILocation(line: 153, column: 41, scope: !701)
!705 = !DILocation(line: 153, column: 39, scope: !701)
!706 = !DILocation(line: 154, column: 41, scope: !701)
!707 = !DILocation(line: 154, column: 39, scope: !701)
!708 = !DILocation(line: 156, column: 37, scope: !545)
!709 = !DILocation(line: 157, column: 47, scope: !545)
!710 = !DILocation(line: 158, column: 47, scope: !545)
!711 = distinct !{!711, !696, !712, !404}
!712 = !DILocation(line: 159, column: 5, scope: !514)
!713 = !DILocation(line: 160, column: 12, scope: !514)
!714 = !{i64 0, i64 8, !394, i64 8, i64 8, !394, i64 16, i64 8, !394, i64 24, i64 128, !496, i64 152, i64 128, !496, i64 280, i64 128, !496, i64 408, i64 8, !394}
!715 = !DILocation(line: 160, column: 5, scope: !514)
!716 = !DILocation(line: 161, column: 1, scope: !514)
!717 = distinct !DISubprogram(name: "make_host_to_device_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t", scope: !2, file: !361, line: 163, type: !718, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{!366, !517}
!720 = !{!721}
!721 = !DILocalVariable(name: "buf", arg: 1, scope: !717, file: !361, line: 163, type: !517)
!722 = !DILocation(line: 0, scope: !717)
!723 = !DILocation(line: 164, column: 12, scope: !717)
!724 = !DILocation(line: 164, column: 5, scope: !717)
!725 = distinct !DISubprogram(name: "make_device_to_host_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t", scope: !2, file: !361, line: 167, type: !718, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !726)
!726 = !{!727}
!727 = !DILocalVariable(name: "buf", arg: 1, scope: !725, file: !361, line: 167, type: !517)
!728 = !DILocation(line: 0, scope: !725)
!729 = !DILocation(line: 168, column: 12, scope: !725)
!730 = !DILocation(line: 168, column: 5, scope: !725)
!731 = distinct !DISubprogram(name: "copy_to_host_already_locked", linkageName: "_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t", scope: !2, file: !5, line: 30, type: !198, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !732)
!732 = !{!733, !734, !735, !736}
!733 = !DILocalVariable(name: "user_context", arg: 1, scope: !731, file: !5, line: 30, type: !83)
!734 = !DILocalVariable(name: "buf", arg: 2, scope: !731, file: !5, line: 30, type: !195)
!735 = !DILocalVariable(name: "interface", scope: !731, file: !5, line: 36, type: !187)
!736 = !DILocalVariable(name: "result", scope: !731, file: !5, line: 45, type: !35)
!737 = !DILocation(line: 0, scope: !731)
!738 = !DILocalVariable(name: "this", arg: 1, scope: !739, type: !217, flags: DIFlagArtificial | DIFlagObjectPointer)
!739 = distinct !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !183, file: !7, line: 1470, type: !304, scopeLine: 1470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !306, retainedNodes: !740)
!740 = !{!738}
!741 = !DILocation(line: 0, scope: !739, inlinedAt: !742)
!742 = distinct !DILocation(line: 31, column: 15, scope: !743)
!743 = distinct !DILexicalBlock(scope: !731, file: !5, line: 31, column: 9)
!744 = !DILocalVariable(name: "this", arg: 1, scope: !745, type: !217, flags: DIFlagArtificial | DIFlagObjectPointer)
!745 = distinct !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !183, file: !7, line: 1454, type: !295, scopeLine: 1454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !294, retainedNodes: !746)
!746 = !{!744, !747}
!747 = !DILocalVariable(name: "flag", arg: 2, scope: !745, file: !7, line: 1454, type: !298)
!748 = !DILocation(line: 0, scope: !745, inlinedAt: !749)
!749 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !742)
!750 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !749)
!751 = !{!552, !395, i64 24}
!752 = !DILocation(line: 1455, column: 23, scope: !745, inlinedAt: !749)
!753 = !DILocation(line: 1455, column: 31, scope: !745, inlinedAt: !749)
!754 = !DILocation(line: 31, column: 9, scope: !731)
!755 = !DILocation(line: 0, scope: !458, inlinedAt: !756)
!756 = distinct !DILocation(line: 35, column: 5, scope: !731)
!757 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !756)
!758 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !756)
!759 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !756)
!760 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !756)
!761 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !756)
!762 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !756)
!763 = !DILocation(line: 0, scope: !472, inlinedAt: !756)
!764 = !DILocation(line: 0, scope: !475, inlinedAt: !765)
!765 = distinct !DILocation(line: 35, column: 25, scope: !731)
!766 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !765)
!767 = !DILocation(line: 35, column: 62, scope: !731)
!768 = !DILocalVariable(name: "this", arg: 1, scope: !769, type: !462, flags: DIFlagArtificial | DIFlagObjectPointer)
!769 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !87, file: !85, line: 97, type: !134, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !133, retainedNodes: !770)
!770 = !{!768, !771}
!771 = !DILocalVariable(name: "arg", arg: 2, scope: !769, file: !85, line: 97, type: !136)
!772 = !DILocation(line: 0, scope: !769, inlinedAt: !773)
!773 = distinct !DILocation(line: 35, column: 59, scope: !731)
!774 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !773)
!775 = !DILocation(line: 0, scope: !475, inlinedAt: !776)
!776 = distinct !DILocation(line: 35, column: 66, scope: !731)
!777 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !776)
!778 = !DILocation(line: 0, scope: !484, inlinedAt: !779)
!779 = distinct !DILocation(line: 35, column: 5, scope: !731)
!780 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !779)
!781 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !779)
!782 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !779)
!783 = !DILocation(line: 0, scope: !498, inlinedAt: !784)
!784 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !779)
!785 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !784)
!786 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !784)
!787 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !784)
!788 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !779)
!789 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !779)
!790 = !DILocation(line: 36, column: 55, scope: !731)
!791 = !{!552, !553, i64 8}
!792 = !DILocalVariable(name: "this", arg: 1, scope: !793, type: !217, flags: DIFlagArtificial | DIFlagObjectPointer)
!793 = distinct !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !183, file: !7, line: 1466, type: !304, scopeLine: 1466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !303, retainedNodes: !794)
!794 = !{!792}
!795 = !DILocation(line: 0, scope: !793, inlinedAt: !796)
!796 = distinct !DILocation(line: 37, column: 14, scope: !797)
!797 = distinct !DILexicalBlock(scope: !731, file: !5, line: 37, column: 9)
!798 = !DILocation(line: 0, scope: !745, inlinedAt: !799)
!799 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !796)
!800 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !799)
!801 = !DILocation(line: 1455, column: 23, scope: !745, inlinedAt: !799)
!802 = !DILocation(line: 1455, column: 31, scope: !745, inlinedAt: !799)
!803 = !DILocation(line: 37, column: 9, scope: !731)
!804 = !DILocation(line: 0, scope: !458, inlinedAt: !805)
!805 = distinct !DILocation(line: 38, column: 9, scope: !806)
!806 = distinct !DILexicalBlock(scope: !797, file: !5, line: 37, column: 28)
!807 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !805)
!808 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !805)
!809 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !805)
!810 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !805)
!811 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !805)
!812 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !805)
!813 = !DILocation(line: 0, scope: !472, inlinedAt: !805)
!814 = !DILocation(line: 0, scope: !475, inlinedAt: !815)
!815 = distinct !DILocation(line: 38, column: 29, scope: !806)
!816 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !815)
!817 = !DILocation(line: 0, scope: !769, inlinedAt: !818)
!818 = distinct !DILocation(line: 38, column: 63, scope: !806)
!819 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !818)
!820 = !DILocation(line: 0, scope: !475, inlinedAt: !821)
!821 = distinct !DILocation(line: 38, column: 70, scope: !806)
!822 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !821)
!823 = !DILocation(line: 0, scope: !484, inlinedAt: !824)
!824 = distinct !DILocation(line: 38, column: 9, scope: !806)
!825 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !824)
!826 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !824)
!827 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !824)
!828 = !DILocation(line: 0, scope: !498, inlinedAt: !829)
!829 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !824)
!830 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !829)
!831 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !829)
!832 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !829)
!833 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !824)
!834 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !824)
!835 = !DILocation(line: 39, column: 9, scope: !806)
!836 = !DILocation(line: 41, column: 19, scope: !837)
!837 = distinct !DILexicalBlock(scope: !731, file: !5, line: 41, column: 9)
!838 = !DILocation(line: 41, column: 9, scope: !731)
!839 = !DILocation(line: 0, scope: !458, inlinedAt: !840)
!840 = distinct !DILocation(line: 42, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !5, line: 41, column: 31)
!842 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !840)
!843 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !840)
!844 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !840)
!845 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !840)
!846 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !840)
!847 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !840)
!848 = !DILocation(line: 0, scope: !472, inlinedAt: !840)
!849 = !DILocation(line: 0, scope: !475, inlinedAt: !850)
!850 = distinct !DILocation(line: 42, column: 29, scope: !841)
!851 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !850)
!852 = !DILocation(line: 0, scope: !769, inlinedAt: !853)
!853 = distinct !DILocation(line: 42, column: 63, scope: !841)
!854 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !853)
!855 = !DILocation(line: 0, scope: !475, inlinedAt: !856)
!856 = distinct !DILocation(line: 42, column: 70, scope: !841)
!857 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !856)
!858 = !DILocation(line: 0, scope: !484, inlinedAt: !859)
!859 = distinct !DILocation(line: 42, column: 9, scope: !841)
!860 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !859)
!861 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !859)
!862 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !859)
!863 = !DILocation(line: 0, scope: !498, inlinedAt: !864)
!864 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !859)
!865 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !864)
!866 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !864)
!867 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !864)
!868 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !859)
!869 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !859)
!870 = !DILocation(line: 43, column: 9, scope: !841)
!871 = !DILocation(line: 45, column: 29, scope: !731)
!872 = !{!873, !553, i64 120}
!873 = !{!"_ZTS25halide_device_interface_t", !553, i64 0, !553, i64 8, !553, i64 16, !553, i64 24, !553, i64 32, !553, i64 40, !553, i64 48, !553, i64 56, !553, i64 64, !553, i64 72, !553, i64 80, !553, i64 88, !553, i64 96, !553, i64 104, !553, i64 112, !553, i64 120}
!874 = !DILocation(line: 45, column: 35, scope: !731)
!875 = !{!876, !553, i64 48}
!876 = !{!"_ZTS30halide_device_interface_impl_t", !553, i64 0, !553, i64 8, !553, i64 16, !553, i64 24, !553, i64 32, !553, i64 40, !553, i64 48, !553, i64 56, !553, i64 64, !553, i64 72, !553, i64 80, !553, i64 88, !553, i64 96, !553, i64 104, !553, i64 112, !553, i64 120}
!877 = !DILocation(line: 45, column: 18, scope: !731)
!878 = !DILocation(line: 46, column: 16, scope: !879)
!879 = distinct !DILexicalBlock(scope: !731, file: !5, line: 46, column: 9)
!880 = !DILocation(line: 46, column: 9, scope: !731)
!881 = !DILocation(line: 0, scope: !458, inlinedAt: !882)
!882 = distinct !DILocation(line: 47, column: 9, scope: !883)
!883 = distinct !DILexicalBlock(scope: !879, file: !5, line: 46, column: 22)
!884 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !882)
!885 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !882)
!886 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !882)
!887 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !882)
!888 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !882)
!889 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !882)
!890 = !DILocation(line: 0, scope: !472, inlinedAt: !882)
!891 = !DILocation(line: 0, scope: !475, inlinedAt: !892)
!892 = distinct !DILocation(line: 47, column: 29, scope: !883)
!893 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !892)
!894 = !DILocation(line: 0, scope: !769, inlinedAt: !895)
!895 = distinct !DILocation(line: 47, column: 63, scope: !883)
!896 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !895)
!897 = !DILocation(line: 0, scope: !475, inlinedAt: !898)
!898 = distinct !DILocation(line: 47, column: 70, scope: !883)
!899 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !898)
!900 = !DILocation(line: 0, scope: !484, inlinedAt: !901)
!901 = distinct !DILocation(line: 47, column: 9, scope: !883)
!902 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !901)
!903 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !901)
!904 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !901)
!905 = !DILocation(line: 0, scope: !498, inlinedAt: !906)
!906 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !901)
!907 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !906)
!908 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !906)
!909 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !906)
!910 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !901)
!911 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !901)
!912 = !DILocation(line: 48, column: 9, scope: !883)
!913 = !DILocalVariable(name: "this", arg: 1, scope: !914, type: !195, flags: DIFlagArtificial | DIFlagObjectPointer)
!914 = distinct !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !183, file: !7, line: 1478, type: !308, scopeLine: 1478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !310, retainedNodes: !915)
!915 = !{!913, !916}
!916 = !DILocalVariable(name: "v", arg: 2, scope: !914, file: !7, line: 1478, type: !96)
!917 = !DILocation(line: 0, scope: !914, inlinedAt: !918)
!918 = distinct !DILocation(line: 50, column: 10, scope: !731)
!919 = !DILocalVariable(name: "this", arg: 1, scope: !920, type: !195, flags: DIFlagArtificial | DIFlagObjectPointer)
!920 = distinct !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !183, file: !7, line: 1458, type: !300, scopeLine: 1458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !299, retainedNodes: !921)
!921 = !{!919, !922, !923}
!922 = !DILocalVariable(name: "flag", arg: 2, scope: !920, file: !7, line: 1458, type: !298)
!923 = !DILocalVariable(name: "value", arg: 3, scope: !920, file: !7, line: 1458, type: !96)
!924 = !DILocation(line: 0, scope: !920, inlinedAt: !925)
!925 = distinct !DILocation(line: 1479, column: 9, scope: !914, inlinedAt: !918)
!926 = !DILocation(line: 1462, column: 19, scope: !927, inlinedAt: !925)
!927 = distinct !DILexicalBlock(scope: !928, file: !7, line: 1461, column: 16)
!928 = distinct !DILexicalBlock(scope: !920, file: !7, line: 1459, column: 13)
!929 = !DILocation(line: 51, column: 5, scope: !731)
!930 = !DILocation(line: 53, column: 5, scope: !731)
!931 = !DILocation(line: 54, column: 1, scope: !731)
!932 = !DISubprogram(name: "halide_msan_annotate_buffer_is_initialized", scope: !7, file: !7, line: 986, type: !198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!933 = distinct !DISubprogram(name: "halide_device_release", scope: !5, file: !5, line: 107, type: !203, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !934)
!934 = !{!935, !936}
!935 = !DILocalVariable(name: "user_context", arg: 1, scope: !933, file: !5, line: 107, type: !83)
!936 = !DILocalVariable(name: "device_interface", arg: 2, scope: !933, file: !5, line: 107, type: !187)
!937 = !DILocation(line: 0, scope: !933)
!938 = !DILocation(line: 108, column: 23, scope: !933)
!939 = !DILocation(line: 108, column: 29, scope: !933)
!940 = !{!876, !553, i64 40}
!941 = !DILocation(line: 108, column: 5, scope: !933)
!942 = !DILocation(line: 109, column: 1, scope: !933)
!943 = distinct !DISubprogram(name: "halide_copy_to_host", scope: !5, file: !5, line: 113, type: !198, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !944)
!944 = !{!945, !946, !947, !960}
!945 = !DILocalVariable(name: "user_context", arg: 1, scope: !943, file: !5, line: 113, type: !83)
!946 = !DILocalVariable(name: "buf", arg: 2, scope: !943, file: !5, line: 113, type: !195)
!947 = !DILocalVariable(name: "lock", scope: !943, file: !5, line: 114, type: !948)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !2, file: !949, line: 11, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !950, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!949 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!950 = !{!951, !953, !957}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !948, file: !949, line: 12, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!953 = !DISubprogram(name: "ScopedMutexLock", scope: !948, file: !949, line: 14, type: !954, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !956, !952}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!957 = !DISubprogram(name: "~ScopedMutexLock", scope: !948, file: !949, line: 19, type: !958, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !956}
!960 = !DILocalVariable(name: "result", scope: !943, file: !5, line: 116, type: !35)
!961 = !DILocation(line: 0, scope: !943)
!962 = !DILocalVariable(name: "this", arg: 1, scope: !963, type: !966, flags: DIFlagArtificial | DIFlagObjectPointer)
!963 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !948, file: !949, line: 14, type: !954, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !953, retainedNodes: !964)
!964 = !{!962, !965}
!965 = !DILocalVariable(name: "mutex", arg: 2, scope: !963, file: !949, line: 14, type: !952)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!967 = !DILocation(line: 0, scope: !963, inlinedAt: !968)
!968 = distinct !DILocation(line: 114, column: 21, scope: !943)
!969 = !DILocation(line: 16, column: 9, scope: !970, inlinedAt: !968)
!970 = distinct !DILexicalBlock(scope: !963, file: !949, line: 15, column: 24)
!971 = !DILocalVariable(name: "user_context", arg: 1, scope: !972, file: !5, line: 62, type: !83)
!972 = distinct !DISubprogram(name: "debug_log_and_validate_buf", linkageName: "_ZN12_GLOBAL__N_126debug_log_and_validate_bufEPvPK15halide_buffer_tPKc", scope: !973, file: !5, line: 62, type: !974, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !976)
!973 = !DINamespace(scope: null)
!974 = !DISubroutineType(types: !975)
!975 = !{!35, !83, !517, !107}
!976 = !{!971, !977, !978, !979, !980, !981, !982, !983}
!977 = !DILocalVariable(name: "buf_arg", arg: 2, scope: !972, file: !5, line: 62, type: !517)
!978 = !DILocalVariable(name: "routine", arg: 3, scope: !972, file: !5, line: 63, type: !107)
!979 = !DILocalVariable(name: "buf", scope: !972, file: !5, line: 68, type: !180)
!980 = !DILocalVariable(name: "device_interface_set", scope: !972, file: !5, line: 71, type: !96)
!981 = !DILocalVariable(name: "device_set", scope: !972, file: !5, line: 72, type: !96)
!982 = !DILocalVariable(name: "host_dirty", scope: !972, file: !5, line: 80, type: !96)
!983 = !DILocalVariable(name: "device_dirty", scope: !972, file: !5, line: 81, type: !96)
!984 = !DILocation(line: 0, scope: !972, inlinedAt: !985)
!985 = distinct !DILocation(line: 116, column: 18, scope: !943)
!986 = !DILocation(line: 64, column: 17, scope: !987, inlinedAt: !985)
!987 = distinct !DILexicalBlock(scope: !972, file: !5, line: 64, column: 9)
!988 = !DILocation(line: 64, column: 9, scope: !972, inlinedAt: !985)
!989 = !DILocation(line: 65, column: 16, scope: !990, inlinedAt: !985)
!990 = distinct !DILexicalBlock(scope: !987, file: !5, line: 64, column: 29)
!991 = !DILocation(line: 65, column: 9, scope: !990, inlinedAt: !985)
!992 = !DILocation(line: 0, scope: !458, inlinedAt: !993)
!993 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !985)
!994 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !993)
!995 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !993)
!996 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !993)
!997 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !993)
!998 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !993)
!999 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !993)
!1000 = !DILocation(line: 0, scope: !472, inlinedAt: !993)
!1001 = !DILocation(line: 0, scope: !475, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 69, column: 25, scope: !972, inlinedAt: !985)
!1003 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1002)
!1004 = !DILocation(line: 0, scope: !475, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 69, column: 36, scope: !972, inlinedAt: !985)
!1006 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1005)
!1007 = !DILocalVariable(name: "this", arg: 1, scope: !1008, type: !462, flags: DIFlagArtificial | DIFlagObjectPointer)
!1008 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !87, file: !85, line: 113, type: !178, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !177, retainedNodes: !1009)
!1009 = !{!1007, !1010}
!1010 = !DILocalVariable(name: "buf", arg: 2, scope: !1008, file: !85, line: 113, type: !180)
!1011 = !DILocation(line: 0, scope: !1008, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 69, column: 68, scope: !972, inlinedAt: !985)
!1013 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !1012)
!1014 = !DILocation(line: 0, scope: !475, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 69, column: 75, scope: !972, inlinedAt: !985)
!1016 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1015)
!1017 = !DILocation(line: 0, scope: !484, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !985)
!1019 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1018)
!1020 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1018)
!1021 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1018)
!1022 = !DILocation(line: 0, scope: !498, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1018)
!1024 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1023)
!1025 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1023)
!1026 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1023)
!1027 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1018)
!1028 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1018)
!1029 = !DILocation(line: 71, column: 38, scope: !972, inlinedAt: !985)
!1030 = !DILocation(line: 71, column: 55, scope: !972, inlinedAt: !985)
!1031 = !DILocation(line: 72, column: 28, scope: !972, inlinedAt: !985)
!1032 = !DILocation(line: 72, column: 35, scope: !972, inlinedAt: !985)
!1033 = !DILocation(line: 73, column: 20, scope: !1034, inlinedAt: !985)
!1034 = distinct !DILexicalBlock(scope: !972, file: !5, line: 73, column: 9)
!1035 = !DILocation(line: 74, column: 16, scope: !1036, inlinedAt: !985)
!1036 = distinct !DILexicalBlock(scope: !1034, file: !5, line: 73, column: 46)
!1037 = !DILocation(line: 74, column: 9, scope: !1036, inlinedAt: !985)
!1038 = !DILocation(line: 76, column: 30, scope: !1039, inlinedAt: !985)
!1039 = distinct !DILexicalBlock(scope: !972, file: !5, line: 76, column: 9)
!1040 = !DILocation(line: 77, column: 16, scope: !1041, inlinedAt: !985)
!1041 = distinct !DILexicalBlock(scope: !1039, file: !5, line: 76, column: 46)
!1042 = !DILocation(line: 77, column: 9, scope: !1041, inlinedAt: !985)
!1043 = !DILocation(line: 0, scope: !793, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 80, column: 27, scope: !972, inlinedAt: !985)
!1045 = !DILocation(line: 0, scope: !745, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !1044)
!1047 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1046)
!1048 = !DILocation(line: 0, scope: !745, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 81, column: 29, scope: !972, inlinedAt: !985)
!1051 = !DILocation(line: 82, column: 20, scope: !1052, inlinedAt: !985)
!1052 = distinct !DILexicalBlock(scope: !972, file: !5, line: 82, column: 9)
!1053 = !DILocation(line: 83, column: 16, scope: !1054, inlinedAt: !985)
!1054 = distinct !DILexicalBlock(scope: !1052, file: !5, line: 82, column: 37)
!1055 = !DILocation(line: 83, column: 9, scope: !1054, inlinedAt: !985)
!1056 = !DILocation(line: 117, column: 16, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !943, file: !5, line: 117, column: 9)
!1058 = !DILocation(line: 117, column: 9, scope: !943)
!1059 = !DILocation(line: 121, column: 12, scope: !943)
!1060 = !DILocation(line: 121, column: 5, scope: !943)
!1061 = !DILocalVariable(name: "this", arg: 1, scope: !1062, type: !966, flags: DIFlagArtificial | DIFlagObjectPointer)
!1062 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !948, file: !949, line: 19, type: !958, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !957, retainedNodes: !1063)
!1063 = !{!1061}
!1064 = !DILocation(line: 0, scope: !1062, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 122, column: 1, scope: !943)
!1066 = !DILocation(line: 20, column: 9, scope: !1067, inlinedAt: !1065)
!1067 = distinct !DILexicalBlock(scope: !1062, file: !949, line: 19, column: 38)
!1068 = !DILocation(line: 122, column: 1, scope: !943)
!1069 = distinct !DISubprogram(name: "copy_to_device_already_locked", scope: !5, file: !5, line: 126, type: !193, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1070)
!1070 = !{!1071, !1072, !1073, !1074}
!1071 = !DILocalVariable(name: "user_context", arg: 1, scope: !1069, file: !5, line: 126, type: !83)
!1072 = !DILocalVariable(name: "buf", arg: 2, scope: !1069, file: !5, line: 127, type: !195)
!1073 = !DILocalVariable(name: "device_interface", arg: 3, scope: !1069, file: !5, line: 128, type: !187)
!1074 = !DILocalVariable(name: "result", scope: !1069, file: !5, line: 129, type: !35)
!1075 = !DILocation(line: 0, scope: !1069)
!1076 = !DILocation(line: 0, scope: !972, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 131, column: 14, scope: !1069)
!1078 = !DILocation(line: 64, column: 17, scope: !987, inlinedAt: !1077)
!1079 = !DILocation(line: 64, column: 9, scope: !972, inlinedAt: !1077)
!1080 = !DILocation(line: 65, column: 16, scope: !990, inlinedAt: !1077)
!1081 = !DILocation(line: 65, column: 9, scope: !990, inlinedAt: !1077)
!1082 = !DILocation(line: 0, scope: !458, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !1077)
!1084 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !1083)
!1085 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !1083)
!1086 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !1083)
!1087 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !1083)
!1088 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !1083)
!1089 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !1083)
!1090 = !DILocation(line: 0, scope: !472, inlinedAt: !1083)
!1091 = !DILocation(line: 0, scope: !475, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 69, column: 25, scope: !972, inlinedAt: !1077)
!1093 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1092)
!1094 = !DILocation(line: 0, scope: !475, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 69, column: 36, scope: !972, inlinedAt: !1077)
!1096 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1095)
!1097 = !DILocation(line: 0, scope: !1008, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 69, column: 68, scope: !972, inlinedAt: !1077)
!1099 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !1098)
!1100 = !DILocation(line: 0, scope: !475, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 69, column: 75, scope: !972, inlinedAt: !1077)
!1102 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1101)
!1103 = !DILocation(line: 0, scope: !484, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !1077)
!1105 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1104)
!1106 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1104)
!1107 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1104)
!1108 = !DILocation(line: 0, scope: !498, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1104)
!1110 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1109)
!1111 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1109)
!1112 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1109)
!1113 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1104)
!1114 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1104)
!1115 = !DILocation(line: 71, column: 38, scope: !972, inlinedAt: !1077)
!1116 = !DILocation(line: 71, column: 55, scope: !972, inlinedAt: !1077)
!1117 = !DILocation(line: 72, column: 28, scope: !972, inlinedAt: !1077)
!1118 = !DILocation(line: 72, column: 35, scope: !972, inlinedAt: !1077)
!1119 = !DILocation(line: 73, column: 20, scope: !1034, inlinedAt: !1077)
!1120 = !DILocation(line: 74, column: 16, scope: !1036, inlinedAt: !1077)
!1121 = !DILocation(line: 74, column: 9, scope: !1036, inlinedAt: !1077)
!1122 = !DILocation(line: 76, column: 30, scope: !1039, inlinedAt: !1077)
!1123 = !DILocation(line: 77, column: 16, scope: !1041, inlinedAt: !1077)
!1124 = !DILocation(line: 77, column: 9, scope: !1041, inlinedAt: !1077)
!1125 = !DILocation(line: 0, scope: !793, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 80, column: 27, scope: !972, inlinedAt: !1077)
!1127 = !DILocation(line: 0, scope: !745, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !1126)
!1129 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1128)
!1130 = !DILocation(line: 0, scope: !745, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 81, column: 29, scope: !972, inlinedAt: !1077)
!1133 = !DILocation(line: 82, column: 20, scope: !1052, inlinedAt: !1077)
!1134 = !DILocation(line: 83, column: 16, scope: !1054, inlinedAt: !1077)
!1135 = !DILocation(line: 83, column: 9, scope: !1054, inlinedAt: !1077)
!1136 = !DILocation(line: 132, column: 16, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1069, file: !5, line: 132, column: 9)
!1138 = !DILocation(line: 132, column: 9, scope: !1069)
!1139 = !DILocation(line: 136, column: 26, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1069, file: !5, line: 136, column: 9)
!1141 = !DILocation(line: 136, column: 9, scope: !1069)
!1142 = !DILocation(line: 0, scope: !458, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 137, column: 9, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !5, line: 136, column: 38)
!1145 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !1143)
!1146 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !1143)
!1147 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !1143)
!1148 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !1143)
!1149 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !1143)
!1150 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !1143)
!1151 = !DILocation(line: 0, scope: !472, inlinedAt: !1143)
!1152 = !DILocation(line: 0, scope: !475, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 137, column: 29, scope: !1144)
!1154 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1153)
!1155 = !DILocation(line: 137, column: 60, scope: !1144)
!1156 = !DILocation(line: 0, scope: !769, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 137, column: 57, scope: !1144)
!1158 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1157)
!1159 = !DILocation(line: 0, scope: !475, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 137, column: 64, scope: !1144)
!1161 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1160)
!1162 = !DILocation(line: 0, scope: !484, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 137, column: 9, scope: !1144)
!1164 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1163)
!1165 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1163)
!1166 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1163)
!1167 = !DILocation(line: 0, scope: !498, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1163)
!1169 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1168)
!1170 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1168)
!1171 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1168)
!1172 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1163)
!1173 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1163)
!1174 = !DILocation(line: 138, column: 18, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1144, file: !5, line: 138, column: 13)
!1176 = !DILocation(line: 138, column: 35, scope: !1175)
!1177 = !DILocation(line: 138, column: 13, scope: !1144)
!1178 = !DILocation(line: 139, column: 20, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !5, line: 138, column: 47)
!1180 = !DILocation(line: 139, column: 13, scope: !1179)
!1181 = !DILocation(line: 144, column: 14, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1069, file: !5, line: 144, column: 9)
!1183 = !DILocation(line: 144, column: 9, scope: !1182)
!1184 = !DILocation(line: 144, column: 21, scope: !1182)
!1185 = !DILocation(line: 144, column: 29, scope: !1182)
!1186 = !DILocation(line: 144, column: 46, scope: !1182)
!1187 = !DILocation(line: 144, column: 9, scope: !1069)
!1188 = !DILocation(line: 145, column: 9, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1182, file: !5, line: 144, column: 67)
!1190 = !DILocation(line: 146, column: 9, scope: !1189)
!1191 = !DILocation(line: 150, column: 18, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !5, line: 149, column: 27)
!1193 = distinct !DILexicalBlock(scope: !1069, file: !5, line: 149, column: 9)
!1194 = !DILocation(line: 151, column: 20, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !5, line: 151, column: 13)
!1196 = !DILocation(line: 151, column: 13, scope: !1192)
!1197 = !DILocation(line: 0, scope: !458, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 152, column: 13, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !5, line: 151, column: 26)
!1200 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !1198)
!1201 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !1198)
!1202 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !1198)
!1203 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !1198)
!1204 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !1198)
!1205 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !1198)
!1206 = !DILocation(line: 0, scope: !472, inlinedAt: !1198)
!1207 = !DILocation(line: 0, scope: !475, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 152, column: 33, scope: !1199)
!1209 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1208)
!1210 = !DILocation(line: 152, column: 64, scope: !1199)
!1211 = !DILocation(line: 0, scope: !769, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 152, column: 61, scope: !1199)
!1213 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1212)
!1214 = !DILocation(line: 0, scope: !475, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 153, column: 33, scope: !1199)
!1216 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1215)
!1217 = !DILocation(line: 0, scope: !484, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 152, column: 13, scope: !1199)
!1219 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1218)
!1220 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1218)
!1221 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1218)
!1222 = !DILocation(line: 0, scope: !498, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1218)
!1224 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1223)
!1225 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1223)
!1226 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1223)
!1227 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1218)
!1228 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1218)
!1229 = !DILocation(line: 154, column: 13, scope: !1199)
!1230 = !DILocation(line: 0, scope: !793, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 158, column: 14, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1069, file: !5, line: 158, column: 9)
!1233 = !DILocation(line: 0, scope: !745, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !1231)
!1235 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1234)
!1236 = !DILocation(line: 1455, column: 23, scope: !745, inlinedAt: !1234)
!1237 = !DILocation(line: 1455, column: 31, scope: !745, inlinedAt: !1234)
!1238 = !DILocation(line: 0, scope: !458, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 175, column: 9, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1232, file: !5, line: 174, column: 12)
!1241 = !DILocation(line: 0, scope: !458, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 159, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1232, file: !5, line: 158, column: 28)
!1244 = !DILocation(line: 0, scope: !1232)
!1245 = !DILocation(line: 158, column: 9, scope: !1069)
!1246 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !1242)
!1247 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !1242)
!1248 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !1242)
!1249 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !1242)
!1250 = !DILocation(line: 0, scope: !472, inlinedAt: !1242)
!1251 = !DILocation(line: 0, scope: !475, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 159, column: 29, scope: !1243)
!1253 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1252)
!1254 = !DILocation(line: 159, column: 60, scope: !1243)
!1255 = !DILocation(line: 0, scope: !769, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 159, column: 57, scope: !1243)
!1257 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1256)
!1258 = !DILocation(line: 0, scope: !475, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 159, column: 64, scope: !1243)
!1260 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1259)
!1261 = !DILocation(line: 0, scope: !484, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 159, column: 9, scope: !1243)
!1263 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1262)
!1264 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1262)
!1265 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1262)
!1266 = !DILocation(line: 0, scope: !498, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1262)
!1268 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1267)
!1269 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1267)
!1270 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1267)
!1271 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1262)
!1272 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1262)
!1273 = !DILocation(line: 0, scope: !739, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 160, column: 18, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1243, file: !5, line: 160, column: 13)
!1276 = !DILocation(line: 0, scope: !745, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1274)
!1278 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1277)
!1279 = !DILocation(line: 1455, column: 23, scope: !745, inlinedAt: !1277)
!1280 = !DILocation(line: 1455, column: 31, scope: !745, inlinedAt: !1277)
!1281 = !DILocation(line: 0, scope: !458, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 164, column: 13, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1275, file: !5, line: 163, column: 16)
!1284 = !DILocation(line: 0, scope: !458, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 161, column: 13, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1275, file: !5, line: 160, column: 34)
!1287 = !DILocation(line: 0, scope: !1275)
!1288 = !DILocation(line: 160, column: 13, scope: !1243)
!1289 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !1285)
!1290 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !1285)
!1291 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !1285)
!1292 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !1285)
!1293 = !DILocation(line: 0, scope: !472, inlinedAt: !1285)
!1294 = !DILocation(line: 0, scope: !475, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 161, column: 33, scope: !1286)
!1296 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1295)
!1297 = !DILocation(line: 0, scope: !769, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 161, column: 61, scope: !1286)
!1299 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1298)
!1300 = !DILocation(line: 0, scope: !475, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 161, column: 68, scope: !1286)
!1302 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1301)
!1303 = !DILocation(line: 0, scope: !484, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 161, column: 13, scope: !1286)
!1305 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1304)
!1306 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1304)
!1307 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1304)
!1308 = !DILocation(line: 0, scope: !498, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1304)
!1310 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1309)
!1311 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1309)
!1312 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1309)
!1313 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1304)
!1314 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1304)
!1315 = !DILocation(line: 162, column: 13, scope: !1286)
!1316 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !1282)
!1317 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !1282)
!1318 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !1282)
!1319 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !1282)
!1320 = !DILocation(line: 0, scope: !472, inlinedAt: !1282)
!1321 = !DILocation(line: 0, scope: !475, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 164, column: 33, scope: !1283)
!1323 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1322)
!1324 = !DILocation(line: 0, scope: !769, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 164, column: 61, scope: !1283)
!1326 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1325)
!1327 = !DILocation(line: 0, scope: !475, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 164, column: 68, scope: !1283)
!1329 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1328)
!1330 = !DILocation(line: 0, scope: !484, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 164, column: 13, scope: !1283)
!1332 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1331)
!1333 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1331)
!1334 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1331)
!1335 = !DILocation(line: 0, scope: !498, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1331)
!1337 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1336)
!1338 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1336)
!1339 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1336)
!1340 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1331)
!1341 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1331)
!1342 = !DILocation(line: 165, column: 40, scope: !1283)
!1343 = !DILocation(line: 165, column: 46, scope: !1283)
!1344 = !{!876, !553, i64 56}
!1345 = !DILocation(line: 165, column: 22, scope: !1283)
!1346 = !DILocation(line: 166, column: 24, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1283, file: !5, line: 166, column: 17)
!1348 = !DILocation(line: 166, column: 17, scope: !1283)
!1349 = !DILocalVariable(name: "this", arg: 1, scope: !1350, type: !195, flags: DIFlagArtificial | DIFlagObjectPointer)
!1350 = distinct !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !183, file: !7, line: 1474, type: !308, scopeLine: 1474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !307, retainedNodes: !1351)
!1351 = !{!1349, !1352}
!1352 = !DILocalVariable(name: "v", arg: 2, scope: !1350, file: !7, line: 1474, type: !96)
!1353 = !DILocation(line: 0, scope: !1350, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 167, column: 22, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1347, file: !5, line: 166, column: 30)
!1356 = !DILocation(line: 0, scope: !920, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 1475, column: 9, scope: !1350, inlinedAt: !1354)
!1358 = !DILocation(line: 1462, column: 19, scope: !927, inlinedAt: !1357)
!1359 = !DILocation(line: 174, column: 5, scope: !1243)
!1360 = !DILocation(line: 0, scope: !458, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 169, column: 17, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1347, file: !5, line: 168, column: 20)
!1363 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !1361)
!1364 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !1361)
!1365 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !1361)
!1366 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !1361)
!1367 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !1361)
!1368 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !1361)
!1369 = !DILocation(line: 0, scope: !472, inlinedAt: !1361)
!1370 = !DILocation(line: 0, scope: !475, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 169, column: 37, scope: !1362)
!1372 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1371)
!1373 = !DILocation(line: 0, scope: !769, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 170, column: 37, scope: !1362)
!1375 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1374)
!1376 = !DILocation(line: 0, scope: !475, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 170, column: 44, scope: !1362)
!1378 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1377)
!1379 = !DILocation(line: 0, scope: !484, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 169, column: 17, scope: !1362)
!1381 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1380)
!1382 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1380)
!1383 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1380)
!1384 = !DILocation(line: 0, scope: !498, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1380)
!1386 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1385)
!1387 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1385)
!1388 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1385)
!1389 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1380)
!1390 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1380)
!1391 = !DILocation(line: 171, column: 17, scope: !1362)
!1392 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !1239)
!1393 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !1239)
!1394 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !1239)
!1395 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !1239)
!1396 = !DILocation(line: 0, scope: !472, inlinedAt: !1239)
!1397 = !DILocation(line: 0, scope: !475, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 175, column: 29, scope: !1240)
!1399 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1398)
!1400 = !DILocation(line: 175, column: 60, scope: !1240)
!1401 = !DILocation(line: 0, scope: !769, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 175, column: 57, scope: !1240)
!1403 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1402)
!1404 = !DILocation(line: 0, scope: !475, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 175, column: 64, scope: !1240)
!1406 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1405)
!1407 = !DILocation(line: 0, scope: !484, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 175, column: 9, scope: !1240)
!1409 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1408)
!1410 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1408)
!1411 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1408)
!1412 = !DILocation(line: 0, scope: !498, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1408)
!1414 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1413)
!1415 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1413)
!1416 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1413)
!1417 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1408)
!1418 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1408)
!1419 = !DILocation(line: 179, column: 1, scope: !1069)
!1420 = !DISubprogram(name: "halide_error_no_device_interface", scope: !7, file: !7, line: 1242, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!1421 = !DISubprogram(name: "halide_error", scope: !7, file: !7, line: 111, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{null, !83, !107}
!1424 = distinct !DISubprogram(name: "halide_device_malloc", scope: !5, file: !5, line: 209, type: !193, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1425)
!1425 = !{!1426, !1427, !1428, !1429, !1430}
!1426 = !DILocalVariable(name: "user_context", arg: 1, scope: !1424, file: !5, line: 209, type: !83)
!1427 = !DILocalVariable(name: "buf", arg: 2, scope: !1424, file: !5, line: 209, type: !195)
!1428 = !DILocalVariable(name: "device_interface", arg: 3, scope: !1424, file: !5, line: 210, type: !187)
!1429 = !DILocalVariable(name: "result", scope: !1424, file: !5, line: 211, type: !35)
!1430 = !DILocalVariable(name: "current_interface", scope: !1424, file: !5, line: 217, type: !187)
!1431 = !DILocation(line: 0, scope: !1424)
!1432 = !DILocation(line: 0, scope: !972, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 211, column: 18, scope: !1424)
!1434 = !DILocation(line: 64, column: 17, scope: !987, inlinedAt: !1433)
!1435 = !DILocation(line: 64, column: 9, scope: !972, inlinedAt: !1433)
!1436 = !DILocation(line: 65, column: 16, scope: !990, inlinedAt: !1433)
!1437 = !DILocation(line: 65, column: 9, scope: !990, inlinedAt: !1433)
!1438 = !DILocation(line: 0, scope: !458, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !1433)
!1440 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !1439)
!1441 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !1439)
!1442 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !1439)
!1443 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !1439)
!1444 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !1439)
!1445 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !1439)
!1446 = !DILocation(line: 0, scope: !472, inlinedAt: !1439)
!1447 = !DILocation(line: 0, scope: !475, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 69, column: 25, scope: !972, inlinedAt: !1433)
!1449 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1448)
!1450 = !DILocation(line: 0, scope: !475, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 69, column: 36, scope: !972, inlinedAt: !1433)
!1452 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1451)
!1453 = !DILocation(line: 0, scope: !1008, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 69, column: 68, scope: !972, inlinedAt: !1433)
!1455 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !1454)
!1456 = !DILocation(line: 0, scope: !475, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 69, column: 75, scope: !972, inlinedAt: !1433)
!1458 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1457)
!1459 = !DILocation(line: 0, scope: !484, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !1433)
!1461 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1460)
!1462 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1460)
!1463 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1460)
!1464 = !DILocation(line: 0, scope: !498, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1460)
!1466 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1465)
!1467 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1465)
!1468 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1465)
!1469 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1460)
!1470 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1460)
!1471 = !DILocation(line: 71, column: 38, scope: !972, inlinedAt: !1433)
!1472 = !DILocation(line: 71, column: 55, scope: !972, inlinedAt: !1433)
!1473 = !DILocation(line: 72, column: 28, scope: !972, inlinedAt: !1433)
!1474 = !DILocation(line: 72, column: 35, scope: !972, inlinedAt: !1433)
!1475 = !DILocation(line: 73, column: 20, scope: !1034, inlinedAt: !1433)
!1476 = !DILocation(line: 74, column: 16, scope: !1036, inlinedAt: !1433)
!1477 = !DILocation(line: 74, column: 9, scope: !1036, inlinedAt: !1433)
!1478 = !DILocation(line: 76, column: 30, scope: !1039, inlinedAt: !1433)
!1479 = !DILocation(line: 77, column: 16, scope: !1041, inlinedAt: !1433)
!1480 = !DILocation(line: 77, column: 9, scope: !1041, inlinedAt: !1433)
!1481 = !DILocation(line: 0, scope: !793, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 80, column: 27, scope: !972, inlinedAt: !1433)
!1483 = !DILocation(line: 0, scope: !745, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !1482)
!1485 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1484)
!1486 = !DILocation(line: 0, scope: !745, inlinedAt: !1487)
!1487 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 81, column: 29, scope: !972, inlinedAt: !1433)
!1489 = !DILocation(line: 82, column: 20, scope: !1052, inlinedAt: !1433)
!1490 = !DILocation(line: 83, column: 16, scope: !1054, inlinedAt: !1433)
!1491 = !DILocation(line: 83, column: 9, scope: !1054, inlinedAt: !1433)
!1492 = !DILocation(line: 212, column: 16, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1424, file: !5, line: 212, column: 9)
!1494 = !DILocation(line: 212, column: 9, scope: !1424)
!1495 = !DILocation(line: 0, scope: !458, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 215, column: 5, scope: !1424)
!1497 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !1496)
!1498 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !1496)
!1499 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !1496)
!1500 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !1496)
!1501 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !1496)
!1502 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !1496)
!1503 = !DILocation(line: 0, scope: !472, inlinedAt: !1496)
!1504 = !DILocation(line: 0, scope: !475, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 215, column: 25, scope: !1424)
!1506 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1505)
!1507 = !DILocation(line: 215, column: 80, scope: !1424)
!1508 = !DILocation(line: 0, scope: !769, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 215, column: 77, scope: !1424)
!1510 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1509)
!1511 = !DILocation(line: 0, scope: !475, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 215, column: 97, scope: !1424)
!1513 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1512)
!1514 = !DILocation(line: 0, scope: !484, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 215, column: 5, scope: !1424)
!1516 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1515)
!1517 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1515)
!1518 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1515)
!1519 = !DILocation(line: 0, scope: !498, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1515)
!1521 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1520)
!1522 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1520)
!1523 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1520)
!1524 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1515)
!1525 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1515)
!1526 = !DILocation(line: 217, column: 63, scope: !1424)
!1527 = !DILocation(line: 220, column: 27, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1424, file: !5, line: 220, column: 9)
!1529 = !DILocation(line: 220, column: 38, scope: !1528)
!1530 = !DILocation(line: 221, column: 9, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1528, file: !5, line: 220, column: 80)
!1532 = !DILocation(line: 222, column: 9, scope: !1531)
!1533 = !DILocation(line: 227, column: 23, scope: !1424)
!1534 = !DILocation(line: 227, column: 29, scope: !1424)
!1535 = !{!876, !553, i64 0}
!1536 = !DILocation(line: 227, column: 5, scope: !1424)
!1537 = !DILocation(line: 228, column: 32, scope: !1424)
!1538 = !DILocation(line: 228, column: 38, scope: !1424)
!1539 = !{!876, !553, i64 16}
!1540 = !DILocation(line: 228, column: 14, scope: !1424)
!1541 = !DILocation(line: 229, column: 23, scope: !1424)
!1542 = !DILocation(line: 229, column: 29, scope: !1424)
!1543 = !{!876, !553, i64 8}
!1544 = !DILocation(line: 229, column: 5, scope: !1424)
!1545 = !DILocation(line: 231, column: 9, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1424, file: !5, line: 231, column: 9)
!1547 = !DILocation(line: 231, column: 9, scope: !1424)
!1548 = !DILocation(line: 236, column: 1, scope: !1424)
!1549 = distinct !DISubprogram(name: "halide_copy_to_device", scope: !5, file: !5, line: 181, type: !193, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1550)
!1550 = !{!1551, !1552, !1553, !1554}
!1551 = !DILocalVariable(name: "user_context", arg: 1, scope: !1549, file: !5, line: 181, type: !83)
!1552 = !DILocalVariable(name: "buf", arg: 2, scope: !1549, file: !5, line: 182, type: !195)
!1553 = !DILocalVariable(name: "device_interface", arg: 3, scope: !1549, file: !5, line: 183, type: !187)
!1554 = !DILocalVariable(name: "lock", scope: !1549, file: !5, line: 184, type: !948)
!1555 = !DILocation(line: 0, scope: !1549)
!1556 = !DILocation(line: 0, scope: !963, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 184, column: 21, scope: !1549)
!1558 = !DILocation(line: 16, column: 9, scope: !970, inlinedAt: !1557)
!1559 = !DILocation(line: 185, column: 12, scope: !1549)
!1560 = !DILocation(line: 0, scope: !1062, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 186, column: 1, scope: !1549)
!1562 = !DILocation(line: 20, column: 9, scope: !1067, inlinedAt: !1561)
!1563 = !DILocation(line: 186, column: 1, scope: !1549)
!1564 = distinct !DISubprogram(name: "halide_device_sync", scope: !5, file: !5, line: 190, type: !198, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1565)
!1565 = !{!1566, !1567, !1568, !1569}
!1566 = !DILocalVariable(name: "user_context", arg: 1, scope: !1564, file: !5, line: 190, type: !83)
!1567 = !DILocalVariable(name: "buf", arg: 2, scope: !1564, file: !5, line: 190, type: !195)
!1568 = !DILocalVariable(name: "result", scope: !1564, file: !5, line: 191, type: !35)
!1569 = !DILocalVariable(name: "device_interface", scope: !1564, file: !5, line: 195, type: !187)
!1570 = !DILocation(line: 0, scope: !1564)
!1571 = !DILocation(line: 0, scope: !972, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 191, column: 18, scope: !1564)
!1573 = !DILocation(line: 64, column: 17, scope: !987, inlinedAt: !1572)
!1574 = !DILocation(line: 64, column: 9, scope: !972, inlinedAt: !1572)
!1575 = !DILocation(line: 65, column: 16, scope: !990, inlinedAt: !1572)
!1576 = !DILocation(line: 65, column: 9, scope: !990, inlinedAt: !1572)
!1577 = !DILocation(line: 0, scope: !458, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !1572)
!1579 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !1578)
!1580 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !1578)
!1581 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !1578)
!1582 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !1578)
!1583 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !1578)
!1584 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !1578)
!1585 = !DILocation(line: 0, scope: !472, inlinedAt: !1578)
!1586 = !DILocation(line: 0, scope: !475, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 69, column: 25, scope: !972, inlinedAt: !1572)
!1588 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1587)
!1589 = !DILocation(line: 0, scope: !475, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 69, column: 36, scope: !972, inlinedAt: !1572)
!1591 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1590)
!1592 = !DILocation(line: 0, scope: !1008, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 69, column: 68, scope: !972, inlinedAt: !1572)
!1594 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !1593)
!1595 = !DILocation(line: 0, scope: !475, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 69, column: 75, scope: !972, inlinedAt: !1572)
!1597 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1596)
!1598 = !DILocation(line: 0, scope: !484, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !1572)
!1600 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1599)
!1601 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1599)
!1602 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1599)
!1603 = !DILocation(line: 0, scope: !498, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1599)
!1605 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1604)
!1606 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1604)
!1607 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1604)
!1608 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1599)
!1609 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1599)
!1610 = !DILocation(line: 71, column: 38, scope: !972, inlinedAt: !1572)
!1611 = !DILocation(line: 71, column: 55, scope: !972, inlinedAt: !1572)
!1612 = !DILocation(line: 72, column: 28, scope: !972, inlinedAt: !1572)
!1613 = !DILocation(line: 72, column: 35, scope: !972, inlinedAt: !1572)
!1614 = !DILocation(line: 73, column: 20, scope: !1034, inlinedAt: !1572)
!1615 = !DILocation(line: 74, column: 16, scope: !1036, inlinedAt: !1572)
!1616 = !DILocation(line: 74, column: 9, scope: !1036, inlinedAt: !1572)
!1617 = !DILocation(line: 76, column: 30, scope: !1039, inlinedAt: !1572)
!1618 = !DILocation(line: 77, column: 16, scope: !1041, inlinedAt: !1572)
!1619 = !DILocation(line: 77, column: 9, scope: !1041, inlinedAt: !1572)
!1620 = !DILocation(line: 0, scope: !793, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 80, column: 27, scope: !972, inlinedAt: !1572)
!1622 = !DILocation(line: 0, scope: !745, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !1621)
!1624 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1623)
!1625 = !DILocation(line: 0, scope: !745, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 81, column: 29, scope: !972, inlinedAt: !1572)
!1628 = !DILocation(line: 82, column: 20, scope: !1052, inlinedAt: !1572)
!1629 = !DILocation(line: 83, column: 16, scope: !1054, inlinedAt: !1572)
!1630 = !DILocation(line: 83, column: 9, scope: !1054, inlinedAt: !1572)
!1631 = !DILocation(line: 192, column: 16, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1564, file: !5, line: 192, column: 9)
!1633 = !DILocation(line: 192, column: 9, scope: !1564)
!1634 = !DILocation(line: 195, column: 62, scope: !1564)
!1635 = !DILocation(line: 197, column: 26, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1564, file: !5, line: 197, column: 9)
!1637 = !DILocation(line: 197, column: 9, scope: !1564)
!1638 = !DILocation(line: 198, column: 16, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1636, file: !5, line: 197, column: 38)
!1640 = !DILocation(line: 198, column: 9, scope: !1639)
!1641 = !DILocation(line: 200, column: 32, scope: !1564)
!1642 = !DILocation(line: 200, column: 38, scope: !1564)
!1643 = !{!876, !553, i64 32}
!1644 = !DILocation(line: 200, column: 14, scope: !1564)
!1645 = !DILocation(line: 201, column: 9, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1564, file: !5, line: 201, column: 9)
!1647 = !DILocation(line: 201, column: 9, scope: !1564)
!1648 = !DILocation(line: 206, column: 1, scope: !1564)
!1649 = distinct !DISubprogram(name: "halide_device_free", scope: !5, file: !5, line: 239, type: !198, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1650)
!1650 = !{!1651, !1652, !1653, !1654}
!1651 = !DILocalVariable(name: "user_context", arg: 1, scope: !1649, file: !5, line: 239, type: !83)
!1652 = !DILocalVariable(name: "buf", arg: 2, scope: !1649, file: !5, line: 239, type: !195)
!1653 = !DILocalVariable(name: "result", scope: !1649, file: !5, line: 240, type: !35)
!1654 = !DILocalVariable(name: "device_interface", scope: !1649, file: !5, line: 245, type: !187)
!1655 = !DILocation(line: 0, scope: !1649)
!1656 = !DILocation(line: 0, scope: !972, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 240, column: 18, scope: !1649)
!1658 = !DILocation(line: 64, column: 17, scope: !987, inlinedAt: !1657)
!1659 = !DILocation(line: 64, column: 9, scope: !972, inlinedAt: !1657)
!1660 = !DILocation(line: 65, column: 16, scope: !990, inlinedAt: !1657)
!1661 = !DILocation(line: 65, column: 9, scope: !990, inlinedAt: !1657)
!1662 = !DILocation(line: 0, scope: !458, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !1657)
!1664 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !1663)
!1665 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !1663)
!1666 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !1663)
!1667 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !1663)
!1668 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !1663)
!1669 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !1663)
!1670 = !DILocation(line: 0, scope: !472, inlinedAt: !1663)
!1671 = !DILocation(line: 0, scope: !475, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 69, column: 25, scope: !972, inlinedAt: !1657)
!1673 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1672)
!1674 = !DILocation(line: 0, scope: !475, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 69, column: 36, scope: !972, inlinedAt: !1657)
!1676 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1675)
!1677 = !DILocation(line: 0, scope: !1008, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 69, column: 68, scope: !972, inlinedAt: !1657)
!1679 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !1678)
!1680 = !DILocation(line: 0, scope: !475, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 69, column: 75, scope: !972, inlinedAt: !1657)
!1682 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1681)
!1683 = !DILocation(line: 0, scope: !484, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !1657)
!1685 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1684)
!1686 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1684)
!1687 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1684)
!1688 = !DILocation(line: 0, scope: !498, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1684)
!1690 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1689)
!1691 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1689)
!1692 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1689)
!1693 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1684)
!1694 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1684)
!1695 = !DILocation(line: 71, column: 38, scope: !972, inlinedAt: !1657)
!1696 = !DILocation(line: 71, column: 55, scope: !972, inlinedAt: !1657)
!1697 = !DILocation(line: 72, column: 28, scope: !972, inlinedAt: !1657)
!1698 = !DILocation(line: 72, column: 35, scope: !972, inlinedAt: !1657)
!1699 = !DILocation(line: 73, column: 20, scope: !1034, inlinedAt: !1657)
!1700 = !DILocation(line: 74, column: 16, scope: !1036, inlinedAt: !1657)
!1701 = !DILocation(line: 74, column: 9, scope: !1036, inlinedAt: !1657)
!1702 = !DILocation(line: 76, column: 30, scope: !1039, inlinedAt: !1657)
!1703 = !DILocation(line: 77, column: 16, scope: !1041, inlinedAt: !1657)
!1704 = !DILocation(line: 77, column: 9, scope: !1041, inlinedAt: !1657)
!1705 = !DILocation(line: 0, scope: !793, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 80, column: 27, scope: !972, inlinedAt: !1657)
!1707 = !DILocation(line: 0, scope: !745, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !1706)
!1709 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1708)
!1710 = !DILocation(line: 0, scope: !745, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 81, column: 29, scope: !972, inlinedAt: !1657)
!1713 = !DILocation(line: 82, column: 20, scope: !1052, inlinedAt: !1657)
!1714 = !DILocation(line: 83, column: 16, scope: !1054, inlinedAt: !1657)
!1715 = !DILocation(line: 83, column: 9, scope: !1054, inlinedAt: !1657)
!1716 = !DILocation(line: 241, column: 16, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1649, file: !5, line: 241, column: 9)
!1718 = !DILocation(line: 241, column: 9, scope: !1649)
!1719 = !DILocation(line: 245, column: 62, scope: !1649)
!1720 = !DILocation(line: 246, column: 26, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1649, file: !5, line: 246, column: 9)
!1722 = !DILocation(line: 246, column: 9, scope: !1649)
!1723 = !DILocation(line: 249, column: 27, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1721, file: !5, line: 246, column: 38)
!1725 = !DILocation(line: 249, column: 33, scope: !1724)
!1726 = !DILocation(line: 249, column: 9, scope: !1724)
!1727 = !DILocation(line: 250, column: 36, scope: !1724)
!1728 = !DILocation(line: 250, column: 42, scope: !1724)
!1729 = !{!876, !553, i64 24}
!1730 = !DILocation(line: 250, column: 18, scope: !1724)
!1731 = !DILocation(line: 251, column: 27, scope: !1724)
!1732 = !DILocation(line: 251, column: 33, scope: !1724)
!1733 = !DILocation(line: 251, column: 9, scope: !1724)
!1734 = !DILocation(line: 252, column: 9, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !5, line: 252, column: 9)
!1736 = distinct !DILexicalBlock(scope: !1724, file: !5, line: 252, column: 9)
!1737 = !DILocation(line: 252, column: 9, scope: !1736)
!1738 = !DILocation(line: 252, column: 9, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1735, file: !5, line: 252, column: 9)
!1740 = !DILocation(line: 253, column: 13, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1724, file: !5, line: 253, column: 13)
!1742 = !DILocation(line: 253, column: 13, scope: !1724)
!1743 = !DILocation(line: 0, scope: !914, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 259, column: 10, scope: !1649)
!1745 = !DILocation(line: 0, scope: !920, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 1479, column: 9, scope: !914, inlinedAt: !1744)
!1747 = !DILocation(line: 1462, column: 13, scope: !927, inlinedAt: !1746)
!1748 = !DILocation(line: 1462, column: 19, scope: !927, inlinedAt: !1746)
!1749 = !DILocation(line: 260, column: 5, scope: !1649)
!1750 = !DILocation(line: 261, column: 1, scope: !1649)
!1751 = !DISubprogram(name: "halide_print", scope: !7, file: !7, line: 97, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!1752 = !DISubprogram(name: "abort", scope: !12, file: !12, line: 108, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!1753 = distinct !DISubprogram(name: "halide_device_free_as_destructor", scope: !5, file: !5, line: 265, type: !1754, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1756)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !83, !83}
!1756 = !{!1757, !1758, !1759}
!1757 = !DILocalVariable(name: "user_context", arg: 1, scope: !1753, file: !5, line: 265, type: !83)
!1758 = !DILocalVariable(name: "obj", arg: 2, scope: !1753, file: !5, line: 265, type: !83)
!1759 = !DILocalVariable(name: "buf", scope: !1753, file: !5, line: 266, type: !195)
!1760 = !DILocation(line: 0, scope: !1753)
!1761 = !DILocation(line: 266, column: 35, scope: !1753)
!1762 = !DILocation(line: 267, column: 5, scope: !1753)
!1763 = !DILocation(line: 268, column: 1, scope: !1753)
!1764 = distinct !DISubprogram(name: "halide_device_and_host_malloc", scope: !5, file: !5, line: 274, type: !193, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1765)
!1765 = !{!1766, !1767, !1768, !1769, !1770}
!1766 = !DILocalVariable(name: "user_context", arg: 1, scope: !1764, file: !5, line: 274, type: !83)
!1767 = !DILocalVariable(name: "buf", arg: 2, scope: !1764, file: !5, line: 274, type: !195)
!1768 = !DILocalVariable(name: "device_interface", arg: 3, scope: !1764, file: !5, line: 275, type: !187)
!1769 = !DILocalVariable(name: "result", scope: !1764, file: !5, line: 276, type: !35)
!1770 = !DILocalVariable(name: "current_interface", scope: !1764, file: !5, line: 282, type: !187)
!1771 = !DILocation(line: 0, scope: !1764)
!1772 = !DILocation(line: 0, scope: !972, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 276, column: 18, scope: !1764)
!1774 = !DILocation(line: 64, column: 17, scope: !987, inlinedAt: !1773)
!1775 = !DILocation(line: 64, column: 9, scope: !972, inlinedAt: !1773)
!1776 = !DILocation(line: 65, column: 16, scope: !990, inlinedAt: !1773)
!1777 = !DILocation(line: 65, column: 9, scope: !990, inlinedAt: !1773)
!1778 = !DILocation(line: 0, scope: !458, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !1773)
!1780 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !1779)
!1781 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !1779)
!1782 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !1779)
!1783 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !1779)
!1784 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !1779)
!1785 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !1779)
!1786 = !DILocation(line: 0, scope: !472, inlinedAt: !1779)
!1787 = !DILocation(line: 0, scope: !475, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 69, column: 25, scope: !972, inlinedAt: !1773)
!1789 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1788)
!1790 = !DILocation(line: 0, scope: !475, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 69, column: 36, scope: !972, inlinedAt: !1773)
!1792 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1791)
!1793 = !DILocation(line: 0, scope: !1008, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 69, column: 68, scope: !972, inlinedAt: !1773)
!1795 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !1794)
!1796 = !DILocation(line: 0, scope: !475, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 69, column: 75, scope: !972, inlinedAt: !1773)
!1798 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1797)
!1799 = !DILocation(line: 0, scope: !484, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !1773)
!1801 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1800)
!1802 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1800)
!1803 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1800)
!1804 = !DILocation(line: 0, scope: !498, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1800)
!1806 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1805)
!1807 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1805)
!1808 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1805)
!1809 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1800)
!1810 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1800)
!1811 = !DILocation(line: 71, column: 38, scope: !972, inlinedAt: !1773)
!1812 = !DILocation(line: 71, column: 55, scope: !972, inlinedAt: !1773)
!1813 = !DILocation(line: 72, column: 28, scope: !972, inlinedAt: !1773)
!1814 = !DILocation(line: 72, column: 35, scope: !972, inlinedAt: !1773)
!1815 = !DILocation(line: 73, column: 20, scope: !1034, inlinedAt: !1773)
!1816 = !DILocation(line: 74, column: 16, scope: !1036, inlinedAt: !1773)
!1817 = !DILocation(line: 74, column: 9, scope: !1036, inlinedAt: !1773)
!1818 = !DILocation(line: 76, column: 30, scope: !1039, inlinedAt: !1773)
!1819 = !DILocation(line: 77, column: 16, scope: !1041, inlinedAt: !1773)
!1820 = !DILocation(line: 77, column: 9, scope: !1041, inlinedAt: !1773)
!1821 = !DILocation(line: 0, scope: !793, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 80, column: 27, scope: !972, inlinedAt: !1773)
!1823 = !DILocation(line: 0, scope: !745, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !1822)
!1825 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1824)
!1826 = !DILocation(line: 0, scope: !745, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 81, column: 29, scope: !972, inlinedAt: !1773)
!1829 = !DILocation(line: 82, column: 20, scope: !1052, inlinedAt: !1773)
!1830 = !DILocation(line: 83, column: 16, scope: !1054, inlinedAt: !1773)
!1831 = !DILocation(line: 83, column: 9, scope: !1054, inlinedAt: !1773)
!1832 = !DILocation(line: 277, column: 16, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1764, file: !5, line: 277, column: 9)
!1834 = !DILocation(line: 277, column: 9, scope: !1764)
!1835 = !DILocation(line: 0, scope: !458, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 280, column: 5, scope: !1764)
!1837 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !1836)
!1838 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !1836)
!1839 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !1836)
!1840 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !1836)
!1841 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !1836)
!1842 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !1836)
!1843 = !DILocation(line: 0, scope: !472, inlinedAt: !1836)
!1844 = !DILocation(line: 0, scope: !475, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 280, column: 25, scope: !1764)
!1846 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1845)
!1847 = !DILocation(line: 280, column: 89, scope: !1764)
!1848 = !DILocation(line: 0, scope: !769, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 280, column: 86, scope: !1764)
!1850 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1849)
!1851 = !DILocation(line: 0, scope: !475, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 280, column: 106, scope: !1764)
!1853 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1852)
!1854 = !DILocation(line: 0, scope: !484, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 280, column: 5, scope: !1764)
!1856 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1855)
!1857 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1855)
!1858 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1855)
!1859 = !DILocation(line: 0, scope: !498, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1855)
!1861 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1860)
!1862 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1860)
!1863 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1860)
!1864 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1855)
!1865 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1855)
!1866 = !DILocation(line: 282, column: 63, scope: !1764)
!1867 = !DILocation(line: 285, column: 27, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1764, file: !5, line: 285, column: 9)
!1869 = !DILocation(line: 285, column: 38, scope: !1868)
!1870 = !DILocation(line: 286, column: 9, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !5, line: 285, column: 80)
!1872 = !DILocation(line: 287, column: 9, scope: !1871)
!1873 = !DILocation(line: 292, column: 23, scope: !1764)
!1874 = !DILocation(line: 292, column: 29, scope: !1764)
!1875 = !DILocation(line: 292, column: 5, scope: !1764)
!1876 = !DILocation(line: 293, column: 32, scope: !1764)
!1877 = !DILocation(line: 293, column: 38, scope: !1764)
!1878 = !{!876, !553, i64 64}
!1879 = !DILocation(line: 293, column: 14, scope: !1764)
!1880 = !DILocation(line: 294, column: 23, scope: !1764)
!1881 = !DILocation(line: 294, column: 29, scope: !1764)
!1882 = !DILocation(line: 294, column: 5, scope: !1764)
!1883 = !DILocation(line: 296, column: 16, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1764, file: !5, line: 296, column: 9)
!1885 = !DILocation(line: 296, column: 9, scope: !1764)
!1886 = !DILocation(line: 297, column: 9, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !5, line: 296, column: 22)
!1888 = !DILocation(line: 298, column: 9, scope: !1887)
!1889 = !DILocation(line: 301, column: 1, scope: !1764)
!1890 = distinct !DISubprogram(name: "halide_device_and_host_free", scope: !5, file: !5, line: 304, type: !198, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1891)
!1891 = !{!1892, !1893, !1894, !1895}
!1892 = !DILocalVariable(name: "user_context", arg: 1, scope: !1890, file: !5, line: 304, type: !83)
!1893 = !DILocalVariable(name: "buf", arg: 2, scope: !1890, file: !5, line: 304, type: !195)
!1894 = !DILocalVariable(name: "result", scope: !1890, file: !5, line: 305, type: !35)
!1895 = !DILocalVariable(name: "device_interface", scope: !1890, file: !5, line: 310, type: !187)
!1896 = !DILocation(line: 0, scope: !1890)
!1897 = !DILocation(line: 0, scope: !972, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 305, column: 18, scope: !1890)
!1899 = !DILocation(line: 64, column: 17, scope: !987, inlinedAt: !1898)
!1900 = !DILocation(line: 64, column: 9, scope: !972, inlinedAt: !1898)
!1901 = !DILocation(line: 65, column: 16, scope: !990, inlinedAt: !1898)
!1902 = !DILocation(line: 65, column: 9, scope: !990, inlinedAt: !1898)
!1903 = !DILocation(line: 0, scope: !458, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !1898)
!1905 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !1904)
!1906 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !1904)
!1907 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !1904)
!1908 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !1904)
!1909 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !1904)
!1910 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !1904)
!1911 = !DILocation(line: 0, scope: !472, inlinedAt: !1904)
!1912 = !DILocation(line: 0, scope: !475, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 69, column: 25, scope: !972, inlinedAt: !1898)
!1914 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1913)
!1915 = !DILocation(line: 0, scope: !475, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 69, column: 36, scope: !972, inlinedAt: !1898)
!1917 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1916)
!1918 = !DILocation(line: 0, scope: !1008, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 69, column: 68, scope: !972, inlinedAt: !1898)
!1920 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !1919)
!1921 = !DILocation(line: 0, scope: !475, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 69, column: 75, scope: !972, inlinedAt: !1898)
!1923 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !1922)
!1924 = !DILocation(line: 0, scope: !484, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !1898)
!1926 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !1925)
!1927 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !1925)
!1928 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !1925)
!1929 = !DILocation(line: 0, scope: !498, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !1925)
!1931 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !1930)
!1932 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !1930)
!1933 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !1930)
!1934 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1925)
!1935 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1925)
!1936 = !DILocation(line: 71, column: 38, scope: !972, inlinedAt: !1898)
!1937 = !DILocation(line: 71, column: 55, scope: !972, inlinedAt: !1898)
!1938 = !DILocation(line: 72, column: 28, scope: !972, inlinedAt: !1898)
!1939 = !DILocation(line: 72, column: 35, scope: !972, inlinedAt: !1898)
!1940 = !DILocation(line: 73, column: 20, scope: !1034, inlinedAt: !1898)
!1941 = !DILocation(line: 74, column: 16, scope: !1036, inlinedAt: !1898)
!1942 = !DILocation(line: 74, column: 9, scope: !1036, inlinedAt: !1898)
!1943 = !DILocation(line: 76, column: 30, scope: !1039, inlinedAt: !1898)
!1944 = !DILocation(line: 77, column: 16, scope: !1041, inlinedAt: !1898)
!1945 = !DILocation(line: 77, column: 9, scope: !1041, inlinedAt: !1898)
!1946 = !DILocation(line: 0, scope: !793, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 80, column: 27, scope: !972, inlinedAt: !1898)
!1948 = !DILocation(line: 0, scope: !745, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !1947)
!1950 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1949)
!1951 = !DILocation(line: 0, scope: !745, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 81, column: 29, scope: !972, inlinedAt: !1898)
!1954 = !DILocation(line: 82, column: 20, scope: !1052, inlinedAt: !1898)
!1955 = !DILocation(line: 83, column: 16, scope: !1054, inlinedAt: !1898)
!1956 = !DILocation(line: 83, column: 9, scope: !1054, inlinedAt: !1898)
!1957 = !DILocation(line: 306, column: 16, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1890, file: !5, line: 306, column: 9)
!1959 = !DILocation(line: 306, column: 9, scope: !1890)
!1960 = !DILocation(line: 310, column: 62, scope: !1890)
!1961 = !DILocation(line: 311, column: 26, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1890, file: !5, line: 311, column: 9)
!1963 = !DILocation(line: 311, column: 9, scope: !1890)
!1964 = !DILocation(line: 314, column: 27, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1962, file: !5, line: 311, column: 38)
!1966 = !DILocation(line: 314, column: 33, scope: !1965)
!1967 = !DILocation(line: 314, column: 9, scope: !1965)
!1968 = !DILocation(line: 315, column: 36, scope: !1965)
!1969 = !DILocation(line: 315, column: 42, scope: !1965)
!1970 = !{!876, !553, i64 72}
!1971 = !DILocation(line: 315, column: 18, scope: !1965)
!1972 = !DILocation(line: 316, column: 27, scope: !1965)
!1973 = !DILocation(line: 316, column: 33, scope: !1965)
!1974 = !DILocation(line: 316, column: 9, scope: !1965)
!1975 = !DILocation(line: 317, column: 9, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !5, line: 317, column: 9)
!1977 = distinct !DILexicalBlock(scope: !1965, file: !5, line: 317, column: 9)
!1978 = !DILocation(line: 317, column: 9, scope: !1977)
!1979 = !DILocation(line: 317, column: 9, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !5, line: 317, column: 9)
!1981 = !DILocation(line: 318, column: 13, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1965, file: !5, line: 318, column: 13)
!1983 = !DILocation(line: 318, column: 13, scope: !1965)
!1984 = !DILocation(line: 323, column: 21, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1962, file: !5, line: 323, column: 16)
!1986 = !DILocation(line: 323, column: 16, scope: !1985)
!1987 = !DILocation(line: 323, column: 16, scope: !1962)
!1988 = !DILocation(line: 327, column: 9, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !5, line: 323, column: 27)
!1990 = !DILocation(line: 328, column: 19, scope: !1989)
!1991 = !DILocation(line: 329, column: 5, scope: !1989)
!1992 = !DILocation(line: 0, scope: !914, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 330, column: 10, scope: !1890)
!1994 = !DILocation(line: 0, scope: !920, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 1479, column: 9, scope: !914, inlinedAt: !1993)
!1996 = !DILocation(line: 1462, column: 13, scope: !927, inlinedAt: !1995)
!1997 = !DILocation(line: 1462, column: 19, scope: !927, inlinedAt: !1995)
!1998 = !DILocation(line: 331, column: 5, scope: !1890)
!1999 = !DILocation(line: 332, column: 1, scope: !1890)
!2000 = !DISubprogram(name: "halide_free", scope: !7, file: !7, line: 355, type: !1754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!2001 = distinct !DISubprogram(name: "halide_default_device_and_host_malloc", scope: !5, file: !5, line: 334, type: !193, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2002)
!2002 = !{!2003, !2004, !2005, !2006, !2007}
!2003 = !DILocalVariable(name: "user_context", arg: 1, scope: !2001, file: !5, line: 334, type: !83)
!2004 = !DILocalVariable(name: "buf", arg: 2, scope: !2001, file: !5, line: 334, type: !195)
!2005 = !DILocalVariable(name: "device_interface", arg: 3, scope: !2001, file: !5, line: 335, type: !187)
!2006 = !DILocalVariable(name: "result", scope: !2001, file: !5, line: 336, type: !35)
!2007 = !DILocalVariable(name: "size", scope: !2001, file: !5, line: 340, type: !314)
!2008 = !DILocation(line: 0, scope: !2001)
!2009 = !DILocation(line: 0, scope: !972, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 336, column: 18, scope: !2001)
!2011 = !DILocation(line: 64, column: 17, scope: !987, inlinedAt: !2010)
!2012 = !DILocation(line: 64, column: 9, scope: !972, inlinedAt: !2010)
!2013 = !DILocation(line: 65, column: 16, scope: !990, inlinedAt: !2010)
!2014 = !DILocation(line: 65, column: 9, scope: !990, inlinedAt: !2010)
!2015 = !DILocation(line: 0, scope: !458, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !2010)
!2017 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !2016)
!2018 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !2016)
!2019 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2016)
!2020 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2016)
!2021 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2016)
!2022 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !2016)
!2023 = !DILocation(line: 0, scope: !472, inlinedAt: !2016)
!2024 = !DILocation(line: 0, scope: !475, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 69, column: 25, scope: !972, inlinedAt: !2010)
!2026 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2025)
!2027 = !DILocation(line: 0, scope: !475, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 69, column: 36, scope: !972, inlinedAt: !2010)
!2029 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2028)
!2030 = !DILocation(line: 0, scope: !1008, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 69, column: 68, scope: !972, inlinedAt: !2010)
!2032 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !2031)
!2033 = !DILocation(line: 0, scope: !475, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 69, column: 75, scope: !972, inlinedAt: !2010)
!2035 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2034)
!2036 = !DILocation(line: 0, scope: !484, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !2010)
!2038 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !2037)
!2039 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !2037)
!2040 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !2037)
!2041 = !DILocation(line: 0, scope: !498, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !2037)
!2043 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !2042)
!2044 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !2042)
!2045 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !2042)
!2046 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2037)
!2047 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2037)
!2048 = !DILocation(line: 71, column: 38, scope: !972, inlinedAt: !2010)
!2049 = !DILocation(line: 71, column: 55, scope: !972, inlinedAt: !2010)
!2050 = !DILocation(line: 72, column: 28, scope: !972, inlinedAt: !2010)
!2051 = !DILocation(line: 72, column: 35, scope: !972, inlinedAt: !2010)
!2052 = !DILocation(line: 73, column: 20, scope: !1034, inlinedAt: !2010)
!2053 = !DILocation(line: 74, column: 16, scope: !1036, inlinedAt: !2010)
!2054 = !DILocation(line: 74, column: 9, scope: !1036, inlinedAt: !2010)
!2055 = !DILocation(line: 76, column: 30, scope: !1039, inlinedAt: !2010)
!2056 = !DILocation(line: 77, column: 16, scope: !1041, inlinedAt: !2010)
!2057 = !DILocation(line: 77, column: 9, scope: !1041, inlinedAt: !2010)
!2058 = !DILocation(line: 0, scope: !793, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 80, column: 27, scope: !972, inlinedAt: !2010)
!2060 = !DILocation(line: 0, scope: !745, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !2059)
!2062 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2061)
!2063 = !DILocation(line: 0, scope: !745, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 81, column: 29, scope: !972, inlinedAt: !2010)
!2066 = !DILocation(line: 82, column: 20, scope: !1052, inlinedAt: !2010)
!2067 = !DILocation(line: 83, column: 16, scope: !1054, inlinedAt: !2010)
!2068 = !DILocation(line: 83, column: 9, scope: !1054, inlinedAt: !2010)
!2069 = !DILocation(line: 337, column: 16, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2001, file: !5, line: 337, column: 9)
!2071 = !DILocation(line: 337, column: 9, scope: !2001)
!2072 = !DILocalVariable(name: "this", arg: 1, scope: !2073, type: !217, flags: DIFlagArtificial | DIFlagObjectPointer)
!2073 = distinct !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !183, file: !7, line: 1518, type: !312, scopeLine: 1518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !320, retainedNodes: !2074)
!2074 = !{!2072}
!2075 = !DILocation(line: 0, scope: !2073, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 340, column: 24, scope: !2001)
!2077 = !DILocalVariable(name: "this", arg: 1, scope: !2078, type: !217, flags: DIFlagArtificial | DIFlagObjectPointer)
!2078 = distinct !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !183, file: !7, line: 1506, type: !317, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !319, retainedNodes: !2079)
!2079 = !{!2077, !2080, !2081}
!2080 = !DILocalVariable(name: "index", scope: !2078, file: !7, line: 1507, type: !351)
!2081 = !DILocalVariable(name: "i", scope: !2082, file: !7, line: 1508, type: !35)
!2082 = distinct !DILexicalBlock(scope: !2078, file: !7, line: 1508, column: 9)
!2083 = !DILocation(line: 0, scope: !2078, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 1519, column: 25, scope: !2073, inlinedAt: !2076)
!2085 = !DILocation(line: 0, scope: !2082, inlinedAt: !2084)
!2086 = !DILocation(line: 1508, column: 29, scope: !2087, inlinedAt: !2084)
!2087 = distinct !DILexicalBlock(scope: !2082, file: !7, line: 1508, column: 9)
!2088 = !DILocation(line: 1508, column: 27, scope: !2087, inlinedAt: !2084)
!2089 = !DILocation(line: 1508, column: 9, scope: !2082, inlinedAt: !2084)
!2090 = !DILocation(line: 0, scope: !570, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 1514, column: 36, scope: !2078, inlinedAt: !2084)
!2092 = !DILocation(line: 482, column: 17, scope: !570, inlinedAt: !2091)
!2093 = !DILocalVariable(name: "this", arg: 1, scope: !2094, type: !217, flags: DIFlagArtificial | DIFlagObjectPointer)
!2094 = distinct !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !183, file: !7, line: 1495, type: !317, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !316, retainedNodes: !2095)
!2095 = !{!2093, !2096, !2097}
!2096 = !DILocalVariable(name: "index", scope: !2094, file: !7, line: 1496, type: !351)
!2097 = !DILocalVariable(name: "i", scope: !2098, file: !7, line: 1497, type: !35)
!2098 = distinct !DILexicalBlock(scope: !2094, file: !7, line: 1497, column: 9)
!2099 = !DILocation(line: 0, scope: !2094, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 1519, column: 33, scope: !2073, inlinedAt: !2076)
!2101 = !DILocation(line: 0, scope: !2098, inlinedAt: !2100)
!2102 = !DILocation(line: 1497, column: 9, scope: !2098, inlinedAt: !2100)
!2103 = !DILocation(line: 1509, column: 24, scope: !2104, inlinedAt: !2084)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !7, line: 1509, column: 17)
!2105 = distinct !DILexicalBlock(scope: !2087, file: !7, line: 1508, column: 46)
!2106 = !DILocation(line: 1509, column: 31, scope: !2104, inlinedAt: !2084)
!2107 = !DILocation(line: 1509, column: 17, scope: !2105, inlinedAt: !2084)
!2108 = !DILocation(line: 1510, column: 37, scope: !2109, inlinedAt: !2084)
!2109 = distinct !DILexicalBlock(scope: !2104, file: !7, line: 1509, column: 36)
!2110 = !DILocation(line: 1510, column: 61, scope: !2109, inlinedAt: !2084)
!2111 = !DILocation(line: 1510, column: 68, scope: !2109, inlinedAt: !2084)
!2112 = !DILocation(line: 1510, column: 53, scope: !2109, inlinedAt: !2084)
!2113 = !DILocation(line: 1510, column: 51, scope: !2109, inlinedAt: !2084)
!2114 = !DILocation(line: 1510, column: 23, scope: !2109, inlinedAt: !2084)
!2115 = !DILocation(line: 1511, column: 13, scope: !2109, inlinedAt: !2084)
!2116 = !DILocation(line: 1508, column: 42, scope: !2087, inlinedAt: !2084)
!2117 = distinct !{!2117, !2089, !2118, !404}
!2118 = !DILocation(line: 1512, column: 9, scope: !2082, inlinedAt: !2084)
!2119 = !DILocation(line: 1498, column: 24, scope: !2120, inlinedAt: !2100)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !7, line: 1498, column: 17)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !7, line: 1497, column: 46)
!2122 = distinct !DILexicalBlock(scope: !2098, file: !7, line: 1497, column: 9)
!2123 = !DILocation(line: 1498, column: 31, scope: !2120, inlinedAt: !2100)
!2124 = !DILocation(line: 1498, column: 17, scope: !2121, inlinedAt: !2100)
!2125 = !DILocation(line: 1499, column: 37, scope: !2126, inlinedAt: !2100)
!2126 = distinct !DILexicalBlock(scope: !2120, file: !7, line: 1498, column: 36)
!2127 = !DILocation(line: 1499, column: 61, scope: !2126, inlinedAt: !2100)
!2128 = !DILocation(line: 1499, column: 68, scope: !2126, inlinedAt: !2100)
!2129 = !DILocation(line: 1499, column: 53, scope: !2126, inlinedAt: !2100)
!2130 = !DILocation(line: 1499, column: 51, scope: !2126, inlinedAt: !2100)
!2131 = !DILocation(line: 1499, column: 23, scope: !2126, inlinedAt: !2100)
!2132 = !DILocation(line: 1500, column: 13, scope: !2126, inlinedAt: !2100)
!2133 = !DILocation(line: 1497, column: 42, scope: !2122, inlinedAt: !2100)
!2134 = !DILocation(line: 1497, column: 27, scope: !2122, inlinedAt: !2100)
!2135 = distinct !{!2135, !2102, !2136, !404}
!2136 = !DILocation(line: 1501, column: 9, scope: !2098, inlinedAt: !2100)
!2137 = !DILocation(line: 482, column: 22, scope: !570, inlinedAt: !2091)
!2138 = !DILocation(line: 482, column: 27, scope: !570, inlinedAt: !2091)
!2139 = !DILocation(line: 1513, column: 15, scope: !2078, inlinedAt: !2084)
!2140 = !DILocation(line: 0, scope: !570, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 1502, column: 36, scope: !2094, inlinedAt: !2100)
!2142 = !DILocation(line: 1519, column: 31, scope: !2073, inlinedAt: !2076)
!2143 = !DILocation(line: 341, column: 28, scope: !2001)
!2144 = !DILocation(line: 341, column: 10, scope: !2001)
!2145 = !DILocation(line: 341, column: 15, scope: !2001)
!2146 = !DILocation(line: 342, column: 19, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2001, file: !5, line: 342, column: 9)
!2148 = !DILocation(line: 342, column: 9, scope: !2001)
!2149 = !DILocation(line: 345, column: 14, scope: !2001)
!2150 = !DILocation(line: 346, column: 16, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2001, file: !5, line: 346, column: 9)
!2152 = !DILocation(line: 346, column: 9, scope: !2001)
!2153 = !DILocation(line: 347, column: 40, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2151, file: !5, line: 346, column: 22)
!2155 = !DILocation(line: 347, column: 9, scope: !2154)
!2156 = !DILocation(line: 348, column: 19, scope: !2154)
!2157 = !DILocation(line: 349, column: 5, scope: !2154)
!2158 = !DILocation(line: 351, column: 1, scope: !2001)
!2159 = !DISubprogram(name: "halide_malloc", scope: !7, file: !7, line: 354, type: !2160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!83, !83, !315}
!2162 = distinct !DISubprogram(name: "halide_default_device_and_host_free", scope: !5, file: !5, line: 353, type: !193, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2163)
!2163 = !{!2164, !2165, !2166, !2167}
!2164 = !DILocalVariable(name: "user_context", arg: 1, scope: !2162, file: !5, line: 353, type: !83)
!2165 = !DILocalVariable(name: "buf", arg: 2, scope: !2162, file: !5, line: 353, type: !195)
!2166 = !DILocalVariable(name: "device_interface", arg: 3, scope: !2162, file: !5, line: 354, type: !187)
!2167 = !DILocalVariable(name: "result", scope: !2162, file: !5, line: 355, type: !35)
!2168 = !DILocation(line: 0, scope: !2162)
!2169 = !DILocation(line: 0, scope: !972, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 355, column: 18, scope: !2162)
!2171 = !DILocation(line: 64, column: 17, scope: !987, inlinedAt: !2170)
!2172 = !DILocation(line: 64, column: 9, scope: !972, inlinedAt: !2170)
!2173 = !DILocation(line: 65, column: 16, scope: !990, inlinedAt: !2170)
!2174 = !DILocation(line: 65, column: 9, scope: !990, inlinedAt: !2170)
!2175 = !DILocation(line: 0, scope: !458, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !2170)
!2177 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !2176)
!2178 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !2176)
!2179 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2176)
!2180 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2176)
!2181 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2176)
!2182 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !2176)
!2183 = !DILocation(line: 0, scope: !472, inlinedAt: !2176)
!2184 = !DILocation(line: 0, scope: !475, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 69, column: 25, scope: !972, inlinedAt: !2170)
!2186 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2185)
!2187 = !DILocation(line: 0, scope: !475, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 69, column: 36, scope: !972, inlinedAt: !2170)
!2189 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2188)
!2190 = !DILocation(line: 0, scope: !1008, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 69, column: 68, scope: !972, inlinedAt: !2170)
!2192 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !2191)
!2193 = !DILocation(line: 0, scope: !475, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 69, column: 75, scope: !972, inlinedAt: !2170)
!2195 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2194)
!2196 = !DILocation(line: 0, scope: !484, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !2170)
!2198 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !2197)
!2199 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !2197)
!2200 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !2197)
!2201 = !DILocation(line: 0, scope: !498, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !2197)
!2203 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !2202)
!2204 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !2202)
!2205 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !2202)
!2206 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2197)
!2207 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2197)
!2208 = !DILocation(line: 71, column: 38, scope: !972, inlinedAt: !2170)
!2209 = !DILocation(line: 71, column: 55, scope: !972, inlinedAt: !2170)
!2210 = !DILocation(line: 72, column: 28, scope: !972, inlinedAt: !2170)
!2211 = !DILocation(line: 72, column: 35, scope: !972, inlinedAt: !2170)
!2212 = !DILocation(line: 73, column: 20, scope: !1034, inlinedAt: !2170)
!2213 = !DILocation(line: 74, column: 16, scope: !1036, inlinedAt: !2170)
!2214 = !DILocation(line: 74, column: 9, scope: !1036, inlinedAt: !2170)
!2215 = !DILocation(line: 76, column: 30, scope: !1039, inlinedAt: !2170)
!2216 = !DILocation(line: 77, column: 16, scope: !1041, inlinedAt: !2170)
!2217 = !DILocation(line: 77, column: 9, scope: !1041, inlinedAt: !2170)
!2218 = !DILocation(line: 0, scope: !793, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 80, column: 27, scope: !972, inlinedAt: !2170)
!2220 = !DILocation(line: 0, scope: !745, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !2219)
!2222 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2221)
!2223 = !DILocation(line: 0, scope: !745, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 81, column: 29, scope: !972, inlinedAt: !2170)
!2226 = !DILocation(line: 82, column: 20, scope: !1052, inlinedAt: !2170)
!2227 = !DILocation(line: 83, column: 16, scope: !1054, inlinedAt: !2170)
!2228 = !DILocation(line: 83, column: 9, scope: !1054, inlinedAt: !2170)
!2229 = !DILocation(line: 356, column: 16, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2162, file: !5, line: 356, column: 9)
!2231 = !DILocation(line: 356, column: 9, scope: !2162)
!2232 = !DILocation(line: 359, column: 14, scope: !2162)
!2233 = !DILocation(line: 360, column: 14, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2162, file: !5, line: 360, column: 9)
!2235 = !DILocation(line: 360, column: 9, scope: !2234)
!2236 = !DILocation(line: 360, column: 9, scope: !2162)
!2237 = !DILocation(line: 361, column: 9, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !5, line: 360, column: 20)
!2239 = !DILocation(line: 362, column: 19, scope: !2238)
!2240 = !DILocation(line: 363, column: 5, scope: !2238)
!2241 = !DILocation(line: 0, scope: !1350, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 364, column: 10, scope: !2162)
!2243 = !DILocation(line: 0, scope: !920, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 1475, column: 9, scope: !1350, inlinedAt: !2242)
!2245 = !DILocation(line: 1462, column: 13, scope: !927, inlinedAt: !2244)
!2246 = !DILocation(line: 1462, column: 19, scope: !927, inlinedAt: !2244)
!2247 = !DILocation(line: 0, scope: !914, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 365, column: 10, scope: !2162)
!2249 = !DILocation(line: 0, scope: !920, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 1479, column: 9, scope: !914, inlinedAt: !2248)
!2251 = !DILocation(line: 1462, column: 19, scope: !927, inlinedAt: !2250)
!2252 = !DILocation(line: 366, column: 5, scope: !2162)
!2253 = !DILocation(line: 367, column: 1, scope: !2162)
!2254 = distinct !DISubprogram(name: "halide_device_wrap_native", scope: !5, file: !5, line: 369, type: !226, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2255)
!2255 = !{!2256, !2257, !2258, !2259, !2260, !2261}
!2256 = !DILocalVariable(name: "user_context", arg: 1, scope: !2254, file: !5, line: 369, type: !83)
!2257 = !DILocalVariable(name: "buf", arg: 2, scope: !2254, file: !5, line: 369, type: !195)
!2258 = !DILocalVariable(name: "handle", arg: 3, scope: !2254, file: !5, line: 369, type: !13)
!2259 = !DILocalVariable(name: "device_interface", arg: 4, scope: !2254, file: !5, line: 370, type: !187)
!2260 = !DILocalVariable(name: "result", scope: !2254, file: !5, line: 371, type: !35)
!2261 = !DILocalVariable(name: "current_interface", scope: !2254, file: !5, line: 375, type: !187)
!2262 = !DILocation(line: 0, scope: !2254)
!2263 = !DILocation(line: 0, scope: !972, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 371, column: 18, scope: !2254)
!2265 = !DILocation(line: 64, column: 17, scope: !987, inlinedAt: !2264)
!2266 = !DILocation(line: 64, column: 9, scope: !972, inlinedAt: !2264)
!2267 = !DILocation(line: 65, column: 16, scope: !990, inlinedAt: !2264)
!2268 = !DILocation(line: 65, column: 9, scope: !990, inlinedAt: !2264)
!2269 = !DILocation(line: 0, scope: !458, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !2264)
!2271 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !2270)
!2272 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !2270)
!2273 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2270)
!2274 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2270)
!2275 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2270)
!2276 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !2270)
!2277 = !DILocation(line: 0, scope: !472, inlinedAt: !2270)
!2278 = !DILocation(line: 0, scope: !475, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 69, column: 25, scope: !972, inlinedAt: !2264)
!2280 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2279)
!2281 = !DILocation(line: 0, scope: !475, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 69, column: 36, scope: !972, inlinedAt: !2264)
!2283 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2282)
!2284 = !DILocation(line: 0, scope: !1008, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 69, column: 68, scope: !972, inlinedAt: !2264)
!2286 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !2285)
!2287 = !DILocation(line: 0, scope: !475, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 69, column: 75, scope: !972, inlinedAt: !2264)
!2289 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2288)
!2290 = !DILocation(line: 0, scope: !484, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !2264)
!2292 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !2291)
!2293 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !2291)
!2294 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !2291)
!2295 = !DILocation(line: 0, scope: !498, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !2291)
!2297 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !2296)
!2298 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !2296)
!2299 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !2296)
!2300 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2291)
!2301 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2291)
!2302 = !DILocation(line: 71, column: 38, scope: !972, inlinedAt: !2264)
!2303 = !DILocation(line: 71, column: 55, scope: !972, inlinedAt: !2264)
!2304 = !DILocation(line: 72, column: 28, scope: !972, inlinedAt: !2264)
!2305 = !DILocation(line: 72, column: 35, scope: !972, inlinedAt: !2264)
!2306 = !DILocation(line: 73, column: 20, scope: !1034, inlinedAt: !2264)
!2307 = !DILocation(line: 74, column: 16, scope: !1036, inlinedAt: !2264)
!2308 = !DILocation(line: 74, column: 9, scope: !1036, inlinedAt: !2264)
!2309 = !DILocation(line: 76, column: 30, scope: !1039, inlinedAt: !2264)
!2310 = !DILocation(line: 77, column: 16, scope: !1041, inlinedAt: !2264)
!2311 = !DILocation(line: 77, column: 9, scope: !1041, inlinedAt: !2264)
!2312 = !DILocation(line: 0, scope: !793, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 80, column: 27, scope: !972, inlinedAt: !2264)
!2314 = !DILocation(line: 0, scope: !745, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !2313)
!2316 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2315)
!2317 = !DILocation(line: 0, scope: !745, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 81, column: 29, scope: !972, inlinedAt: !2264)
!2320 = !DILocation(line: 82, column: 20, scope: !1052, inlinedAt: !2264)
!2321 = !DILocation(line: 83, column: 16, scope: !1054, inlinedAt: !2264)
!2322 = !DILocation(line: 83, column: 9, scope: !1054, inlinedAt: !2264)
!2323 = !DILocation(line: 372, column: 16, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2254, file: !5, line: 372, column: 9)
!2325 = !DILocation(line: 372, column: 9, scope: !2254)
!2326 = !DILocation(line: 375, column: 63, scope: !2254)
!2327 = !DILocation(line: 377, column: 27, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2254, file: !5, line: 377, column: 9)
!2329 = !DILocation(line: 377, column: 38, scope: !2328)
!2330 = !DILocation(line: 378, column: 9, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2328, file: !5, line: 377, column: 80)
!2332 = !DILocation(line: 379, column: 9, scope: !2331)
!2333 = !DILocation(line: 382, column: 23, scope: !2254)
!2334 = !DILocation(line: 382, column: 29, scope: !2254)
!2335 = !DILocation(line: 382, column: 5, scope: !2254)
!2336 = !DILocation(line: 383, column: 27, scope: !2254)
!2337 = !DILocation(line: 384, column: 32, scope: !2254)
!2338 = !DILocation(line: 384, column: 38, scope: !2254)
!2339 = !{!876, !553, i64 112}
!2340 = !DILocation(line: 384, column: 14, scope: !2254)
!2341 = !DILocation(line: 385, column: 23, scope: !2254)
!2342 = !DILocation(line: 385, column: 29, scope: !2254)
!2343 = !DILocation(line: 385, column: 5, scope: !2254)
!2344 = !DILocation(line: 387, column: 9, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2254, file: !5, line: 387, column: 9)
!2346 = !DILocation(line: 387, column: 9, scope: !2254)
!2347 = !DILocation(line: 391, column: 1, scope: !2254)
!2348 = distinct !DISubprogram(name: "halide_device_detach_native", scope: !5, file: !5, line: 393, type: !198, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2349)
!2349 = !{!2350, !2351, !2352, !2353}
!2350 = !DILocalVariable(name: "user_context", arg: 1, scope: !2348, file: !5, line: 393, type: !83)
!2351 = !DILocalVariable(name: "buf", arg: 2, scope: !2348, file: !5, line: 393, type: !195)
!2352 = !DILocalVariable(name: "result", scope: !2348, file: !5, line: 394, type: !35)
!2353 = !DILocalVariable(name: "device_interface", scope: !2348, file: !5, line: 398, type: !187)
!2354 = !DILocation(line: 0, scope: !2348)
!2355 = !DILocation(line: 0, scope: !972, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 394, column: 18, scope: !2348)
!2357 = !DILocation(line: 64, column: 17, scope: !987, inlinedAt: !2356)
!2358 = !DILocation(line: 64, column: 9, scope: !972, inlinedAt: !2356)
!2359 = !DILocation(line: 65, column: 16, scope: !990, inlinedAt: !2356)
!2360 = !DILocation(line: 65, column: 9, scope: !990, inlinedAt: !2356)
!2361 = !DILocation(line: 0, scope: !458, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !2356)
!2363 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !2362)
!2364 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !2362)
!2365 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2362)
!2366 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2362)
!2367 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2362)
!2368 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !2362)
!2369 = !DILocation(line: 0, scope: !472, inlinedAt: !2362)
!2370 = !DILocation(line: 0, scope: !475, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 69, column: 25, scope: !972, inlinedAt: !2356)
!2372 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2371)
!2373 = !DILocation(line: 0, scope: !475, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 69, column: 36, scope: !972, inlinedAt: !2356)
!2375 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2374)
!2376 = !DILocation(line: 0, scope: !1008, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 69, column: 68, scope: !972, inlinedAt: !2356)
!2378 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !2377)
!2379 = !DILocation(line: 0, scope: !475, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 69, column: 75, scope: !972, inlinedAt: !2356)
!2381 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2380)
!2382 = !DILocation(line: 0, scope: !484, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !2356)
!2384 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !2383)
!2385 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !2383)
!2386 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !2383)
!2387 = !DILocation(line: 0, scope: !498, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !2383)
!2389 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !2388)
!2390 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !2388)
!2391 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !2388)
!2392 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2383)
!2393 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2383)
!2394 = !DILocation(line: 71, column: 38, scope: !972, inlinedAt: !2356)
!2395 = !DILocation(line: 71, column: 55, scope: !972, inlinedAt: !2356)
!2396 = !DILocation(line: 72, column: 28, scope: !972, inlinedAt: !2356)
!2397 = !DILocation(line: 72, column: 35, scope: !972, inlinedAt: !2356)
!2398 = !DILocation(line: 73, column: 20, scope: !1034, inlinedAt: !2356)
!2399 = !DILocation(line: 74, column: 16, scope: !1036, inlinedAt: !2356)
!2400 = !DILocation(line: 74, column: 9, scope: !1036, inlinedAt: !2356)
!2401 = !DILocation(line: 76, column: 30, scope: !1039, inlinedAt: !2356)
!2402 = !DILocation(line: 77, column: 16, scope: !1041, inlinedAt: !2356)
!2403 = !DILocation(line: 77, column: 9, scope: !1041, inlinedAt: !2356)
!2404 = !DILocation(line: 0, scope: !793, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 80, column: 27, scope: !972, inlinedAt: !2356)
!2406 = !DILocation(line: 0, scope: !745, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !2405)
!2408 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2407)
!2409 = !DILocation(line: 0, scope: !745, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 81, column: 29, scope: !972, inlinedAt: !2356)
!2412 = !DILocation(line: 82, column: 20, scope: !1052, inlinedAt: !2356)
!2413 = !DILocation(line: 83, column: 16, scope: !1054, inlinedAt: !2356)
!2414 = !DILocation(line: 83, column: 9, scope: !1054, inlinedAt: !2356)
!2415 = !DILocation(line: 395, column: 16, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2348, file: !5, line: 395, column: 9)
!2417 = !DILocation(line: 395, column: 9, scope: !2348)
!2418 = !DILocation(line: 398, column: 62, scope: !2348)
!2419 = !DILocation(line: 399, column: 26, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2348, file: !5, line: 399, column: 9)
!2421 = !DILocation(line: 399, column: 9, scope: !2348)
!2422 = !DILocation(line: 400, column: 27, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2420, file: !5, line: 399, column: 38)
!2424 = !DILocation(line: 400, column: 33, scope: !2423)
!2425 = !DILocation(line: 400, column: 9, scope: !2423)
!2426 = !DILocation(line: 401, column: 36, scope: !2423)
!2427 = !DILocation(line: 401, column: 42, scope: !2423)
!2428 = !{!876, !553, i64 120}
!2429 = !DILocation(line: 401, column: 18, scope: !2423)
!2430 = !DILocation(line: 402, column: 27, scope: !2423)
!2431 = !DILocation(line: 402, column: 33, scope: !2423)
!2432 = !DILocation(line: 402, column: 9, scope: !2423)
!2433 = !DILocation(line: 403, column: 9, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !5, line: 403, column: 9)
!2435 = distinct !DILexicalBlock(scope: !2423, file: !5, line: 403, column: 9)
!2436 = !DILocation(line: 403, column: 9, scope: !2435)
!2437 = !DILocation(line: 403, column: 9, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2434, file: !5, line: 403, column: 9)
!2439 = !DILocation(line: 404, column: 13, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2423, file: !5, line: 404, column: 13)
!2441 = !DILocation(line: 404, column: 13, scope: !2423)
!2442 = !DILocation(line: 409, column: 1, scope: !2348)
!2443 = distinct !DISubprogram(name: "halide_default_device_wrap_native", scope: !5, file: !5, line: 411, type: !262, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2444)
!2444 = !{!2445, !2446, !2447, !2448}
!2445 = !DILocalVariable(name: "user_context", arg: 1, scope: !2443, file: !5, line: 411, type: !83)
!2446 = !DILocalVariable(name: "buf", arg: 2, scope: !2443, file: !5, line: 411, type: !195)
!2447 = !DILocalVariable(name: "handle", arg: 3, scope: !2443, file: !5, line: 411, type: !13)
!2448 = !DILocalVariable(name: "result", scope: !2443, file: !5, line: 412, type: !35)
!2449 = !DILocation(line: 0, scope: !2443)
!2450 = !DILocation(line: 0, scope: !972, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 412, column: 18, scope: !2443)
!2452 = !DILocation(line: 64, column: 17, scope: !987, inlinedAt: !2451)
!2453 = !DILocation(line: 64, column: 9, scope: !972, inlinedAt: !2451)
!2454 = !DILocation(line: 65, column: 16, scope: !990, inlinedAt: !2451)
!2455 = !DILocation(line: 65, column: 9, scope: !990, inlinedAt: !2451)
!2456 = !DILocation(line: 0, scope: !458, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !2451)
!2458 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !2457)
!2459 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !2457)
!2460 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2457)
!2461 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2457)
!2462 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2457)
!2463 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !2457)
!2464 = !DILocation(line: 0, scope: !472, inlinedAt: !2457)
!2465 = !DILocation(line: 0, scope: !475, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 69, column: 25, scope: !972, inlinedAt: !2451)
!2467 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2466)
!2468 = !DILocation(line: 0, scope: !475, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 69, column: 36, scope: !972, inlinedAt: !2451)
!2470 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2469)
!2471 = !DILocation(line: 0, scope: !1008, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 69, column: 68, scope: !972, inlinedAt: !2451)
!2473 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !2472)
!2474 = !DILocation(line: 0, scope: !475, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 69, column: 75, scope: !972, inlinedAt: !2451)
!2476 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2475)
!2477 = !DILocation(line: 0, scope: !484, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !2451)
!2479 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !2478)
!2480 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !2478)
!2481 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !2478)
!2482 = !DILocation(line: 0, scope: !498, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !2478)
!2484 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !2483)
!2485 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !2483)
!2486 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !2483)
!2487 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2478)
!2488 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2478)
!2489 = !DILocation(line: 71, column: 38, scope: !972, inlinedAt: !2451)
!2490 = !DILocation(line: 71, column: 55, scope: !972, inlinedAt: !2451)
!2491 = !DILocation(line: 72, column: 28, scope: !972, inlinedAt: !2451)
!2492 = !DILocation(line: 72, column: 35, scope: !972, inlinedAt: !2451)
!2493 = !DILocation(line: 73, column: 20, scope: !1034, inlinedAt: !2451)
!2494 = !DILocation(line: 74, column: 16, scope: !1036, inlinedAt: !2451)
!2495 = !DILocation(line: 74, column: 9, scope: !1036, inlinedAt: !2451)
!2496 = !DILocation(line: 76, column: 30, scope: !1039, inlinedAt: !2451)
!2497 = !DILocation(line: 77, column: 16, scope: !1041, inlinedAt: !2451)
!2498 = !DILocation(line: 77, column: 9, scope: !1041, inlinedAt: !2451)
!2499 = !DILocation(line: 0, scope: !793, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 80, column: 27, scope: !972, inlinedAt: !2451)
!2501 = !DILocation(line: 0, scope: !745, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !2500)
!2503 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2502)
!2504 = !DILocation(line: 0, scope: !745, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 81, column: 29, scope: !972, inlinedAt: !2451)
!2507 = !DILocation(line: 82, column: 20, scope: !1052, inlinedAt: !2451)
!2508 = !DILocation(line: 83, column: 16, scope: !1054, inlinedAt: !2451)
!2509 = !DILocation(line: 83, column: 9, scope: !1054, inlinedAt: !2451)
!2510 = !DILocation(line: 413, column: 16, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2443, file: !5, line: 413, column: 9)
!2512 = !DILocation(line: 413, column: 9, scope: !2443)
!2513 = !DILocation(line: 416, column: 10, scope: !2443)
!2514 = !DILocation(line: 416, column: 28, scope: !2443)
!2515 = !DILocation(line: 416, column: 34, scope: !2443)
!2516 = !DILocation(line: 416, column: 5, scope: !2443)
!2517 = !DILocation(line: 417, column: 10, scope: !2443)
!2518 = !DILocation(line: 417, column: 17, scope: !2443)
!2519 = !DILocation(line: 418, column: 5, scope: !2443)
!2520 = !DILocation(line: 419, column: 1, scope: !2443)
!2521 = distinct !DISubprogram(name: "halide_default_device_detach_native", scope: !5, file: !5, line: 421, type: !198, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2522)
!2522 = !{!2523, !2524, !2525}
!2523 = !DILocalVariable(name: "user_context", arg: 1, scope: !2521, file: !5, line: 421, type: !83)
!2524 = !DILocalVariable(name: "buf", arg: 2, scope: !2521, file: !5, line: 421, type: !195)
!2525 = !DILocalVariable(name: "result", scope: !2521, file: !5, line: 422, type: !35)
!2526 = !DILocation(line: 0, scope: !2521)
!2527 = !DILocation(line: 0, scope: !972, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 422, column: 18, scope: !2521)
!2529 = !DILocation(line: 64, column: 17, scope: !987, inlinedAt: !2528)
!2530 = !DILocation(line: 64, column: 9, scope: !972, inlinedAt: !2528)
!2531 = !DILocation(line: 65, column: 16, scope: !990, inlinedAt: !2528)
!2532 = !DILocation(line: 65, column: 9, scope: !990, inlinedAt: !2528)
!2533 = !DILocation(line: 0, scope: !458, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !2528)
!2535 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !2534)
!2536 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !2534)
!2537 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2534)
!2538 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2534)
!2539 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2534)
!2540 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !2534)
!2541 = !DILocation(line: 0, scope: !472, inlinedAt: !2534)
!2542 = !DILocation(line: 0, scope: !475, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 69, column: 25, scope: !972, inlinedAt: !2528)
!2544 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2543)
!2545 = !DILocation(line: 0, scope: !475, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 69, column: 36, scope: !972, inlinedAt: !2528)
!2547 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2546)
!2548 = !DILocation(line: 0, scope: !1008, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 69, column: 68, scope: !972, inlinedAt: !2528)
!2550 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !2549)
!2551 = !DILocation(line: 0, scope: !475, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 69, column: 75, scope: !972, inlinedAt: !2528)
!2553 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2552)
!2554 = !DILocation(line: 0, scope: !484, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 69, column: 5, scope: !972, inlinedAt: !2528)
!2556 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !2555)
!2557 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !2555)
!2558 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !2555)
!2559 = !DILocation(line: 0, scope: !498, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !2555)
!2561 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !2560)
!2562 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !2560)
!2563 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !2560)
!2564 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2555)
!2565 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2555)
!2566 = !DILocation(line: 71, column: 38, scope: !972, inlinedAt: !2528)
!2567 = !DILocation(line: 71, column: 55, scope: !972, inlinedAt: !2528)
!2568 = !DILocation(line: 72, column: 28, scope: !972, inlinedAt: !2528)
!2569 = !DILocation(line: 72, column: 35, scope: !972, inlinedAt: !2528)
!2570 = !DILocation(line: 73, column: 20, scope: !1034, inlinedAt: !2528)
!2571 = !DILocation(line: 74, column: 16, scope: !1036, inlinedAt: !2528)
!2572 = !DILocation(line: 74, column: 9, scope: !1036, inlinedAt: !2528)
!2573 = !DILocation(line: 76, column: 30, scope: !1039, inlinedAt: !2528)
!2574 = !DILocation(line: 77, column: 16, scope: !1041, inlinedAt: !2528)
!2575 = !DILocation(line: 77, column: 9, scope: !1041, inlinedAt: !2528)
!2576 = !DILocation(line: 0, scope: !793, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 80, column: 27, scope: !972, inlinedAt: !2528)
!2578 = !DILocation(line: 0, scope: !745, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !2577)
!2580 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2579)
!2581 = !DILocation(line: 0, scope: !745, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 81, column: 29, scope: !972, inlinedAt: !2528)
!2584 = !DILocation(line: 82, column: 20, scope: !1052, inlinedAt: !2528)
!2585 = !DILocation(line: 83, column: 16, scope: !1054, inlinedAt: !2528)
!2586 = !DILocation(line: 83, column: 9, scope: !1054, inlinedAt: !2528)
!2587 = !DILocation(line: 423, column: 16, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2521, file: !5, line: 423, column: 9)
!2589 = !DILocation(line: 423, column: 9, scope: !2521)
!2590 = !DILocation(line: 426, column: 14, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2521, file: !5, line: 426, column: 9)
!2592 = !DILocation(line: 426, column: 21, scope: !2591)
!2593 = !DILocation(line: 426, column: 9, scope: !2521)
!2594 = !DILocation(line: 429, column: 10, scope: !2521)
!2595 = !DILocation(line: 429, column: 28, scope: !2521)
!2596 = !DILocation(line: 429, column: 34, scope: !2521)
!2597 = !DILocation(line: 429, column: 5, scope: !2521)
!2598 = !DILocation(line: 430, column: 17, scope: !2521)
!2599 = !DILocation(line: 431, column: 27, scope: !2521)
!2600 = !DILocation(line: 432, column: 5, scope: !2521)
!2601 = !DILocation(line: 433, column: 1, scope: !2521)
!2602 = distinct !DISubprogram(name: "halide_device_and_host_free_as_destructor", scope: !5, file: !5, line: 437, type: !1754, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2603)
!2603 = !{!2604, !2605, !2606}
!2604 = !DILocalVariable(name: "user_context", arg: 1, scope: !2602, file: !5, line: 437, type: !83)
!2605 = !DILocalVariable(name: "obj", arg: 2, scope: !2602, file: !5, line: 437, type: !83)
!2606 = !DILocalVariable(name: "buf", scope: !2602, file: !5, line: 438, type: !195)
!2607 = !DILocation(line: 0, scope: !2602)
!2608 = !DILocation(line: 438, column: 35, scope: !2602)
!2609 = !DILocation(line: 439, column: 5, scope: !2602)
!2610 = !DILocation(line: 440, column: 1, scope: !2602)
!2611 = distinct !DISubprogram(name: "halide_device_host_nop_free", scope: !5, file: !5, line: 443, type: !1754, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2612)
!2612 = !{!2613, !2614}
!2613 = !DILocalVariable(name: "user_context", arg: 1, scope: !2611, file: !5, line: 443, type: !83)
!2614 = !DILocalVariable(name: "obj", arg: 2, scope: !2611, file: !5, line: 443, type: !83)
!2615 = !DILocation(line: 0, scope: !2611)
!2616 = !DILocation(line: 444, column: 1, scope: !2611)
!2617 = distinct !DISubprogram(name: "halide_default_buffer_copy", scope: !5, file: !5, line: 446, type: !211, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2618)
!2618 = !{!2619, !2620, !2621, !2622}
!2619 = !DILocalVariable(name: "user_context", arg: 1, scope: !2617, file: !5, line: 446, type: !83)
!2620 = !DILocalVariable(name: "src", arg: 2, scope: !2617, file: !5, line: 446, type: !195)
!2621 = !DILocalVariable(name: "dst_device_interface", arg: 3, scope: !2617, file: !5, line: 447, type: !187)
!2622 = !DILocalVariable(name: "dst", arg: 4, scope: !2617, file: !5, line: 448, type: !195)
!2623 = !DILocation(line: 0, scope: !2617)
!2624 = !DILocation(line: 0, scope: !458, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 450, column: 5, scope: !2617)
!2626 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !2625)
!2627 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !2625)
!2628 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2625)
!2629 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2625)
!2630 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2625)
!2631 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !2625)
!2632 = !DILocation(line: 0, scope: !472, inlinedAt: !2625)
!2633 = !DILocation(line: 0, scope: !475, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 451, column: 9, scope: !2617)
!2635 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2634)
!2636 = !DILocation(line: 0, scope: !475, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 452, column: 9, scope: !2617)
!2638 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2637)
!2639 = !DILocation(line: 0, scope: !1008, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 452, column: 24, scope: !2617)
!2641 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !2640)
!2642 = !DILocation(line: 0, scope: !475, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 452, column: 32, scope: !2617)
!2644 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2643)
!2645 = !DILocation(line: 0, scope: !475, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 453, column: 9, scope: !2617)
!2647 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2646)
!2648 = !DILocation(line: 453, column: 49, scope: !2617)
!2649 = !DILocation(line: 0, scope: !769, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 453, column: 38, scope: !2617)
!2651 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !2650)
!2652 = !DILocation(line: 0, scope: !475, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 453, column: 70, scope: !2617)
!2654 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2653)
!2655 = !DILocation(line: 0, scope: !475, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 454, column: 9, scope: !2617)
!2657 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2656)
!2658 = !DILocation(line: 0, scope: !1008, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 454, column: 21, scope: !2617)
!2660 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !2659)
!2661 = !DILocation(line: 0, scope: !475, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 454, column: 29, scope: !2617)
!2663 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2662)
!2664 = !DILocation(line: 0, scope: !484, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 450, column: 5, scope: !2617)
!2666 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !2665)
!2667 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !2665)
!2668 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !2665)
!2669 = !DILocation(line: 0, scope: !498, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !2665)
!2671 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !2670)
!2672 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !2670)
!2673 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !2670)
!2674 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2665)
!2675 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2665)
!2676 = !DILocation(line: 463, column: 5, scope: !2617)
!2677 = distinct !DISubprogram(name: "halide_buffer_copy_already_locked", scope: !5, file: !5, line: 466, type: !211, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2678)
!2678 = !{!2679, !2680, !2681, !2682, !2683, !2684, !2686, !2687, !2688, !2689, !2690, !2691}
!2679 = !DILocalVariable(name: "user_context", arg: 1, scope: !2677, file: !5, line: 466, type: !83)
!2680 = !DILocalVariable(name: "src", arg: 2, scope: !2677, file: !5, line: 466, type: !195)
!2681 = !DILocalVariable(name: "dst_device_interface", arg: 3, scope: !2677, file: !5, line: 467, type: !187)
!2682 = !DILocalVariable(name: "dst", arg: 4, scope: !2677, file: !5, line: 468, type: !195)
!2683 = !DILocalVariable(name: "err", scope: !2677, file: !5, line: 470, type: !35)
!2684 = !DILocalVariable(name: "from_device_valid", scope: !2677, file: !5, line: 508, type: !2685)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!2686 = !DILocalVariable(name: "to_device", scope: !2677, file: !5, line: 510, type: !2685)
!2687 = !DILocalVariable(name: "to_host", scope: !2677, file: !5, line: 511, type: !2685)
!2688 = !DILocalVariable(name: "from_host_exists", scope: !2677, file: !5, line: 512, type: !2685)
!2689 = !DILocalVariable(name: "from_host_valid", scope: !2677, file: !5, line: 513, type: !2685)
!2690 = !DILocalVariable(name: "to_host_exists", scope: !2677, file: !5, line: 515, type: !2685)
!2691 = !DILocalVariable(name: "c", scope: !2692, file: !5, line: 537, type: !366)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !5, line: 536, column: 41)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !5, line: 536, column: 13)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !5, line: 528, column: 65)
!2695 = distinct !DILexicalBlock(scope: !2677, file: !5, line: 528, column: 9)
!2696 = !DILocation(line: 0, scope: !2677)
!2697 = !DILocation(line: 0, scope: !458, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 469, column: 5, scope: !2677)
!2699 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !2698)
!2700 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !2698)
!2701 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2698)
!2702 = !DILocation(line: 0, scope: !475, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 469, column: 25, scope: !2677)
!2704 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2703)
!2705 = !DILocation(line: 0, scope: !484, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 469, column: 5, scope: !2677)
!2707 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !2706)
!2708 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !2706)
!2709 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2698)
!2710 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2698)
!2711 = !DILocation(line: 0, scope: !498, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !2706)
!2713 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !2712)
!2714 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !2712)
!2715 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !2712)
!2716 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2706)
!2717 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2706)
!2718 = !DILocation(line: 472, column: 9, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2677, file: !5, line: 472, column: 9)
!2720 = !DILocation(line: 472, column: 30, scope: !2719)
!2721 = !DILocation(line: 472, column: 38, scope: !2719)
!2722 = !DILocation(line: 472, column: 33, scope: !2719)
!2723 = !DILocation(line: 472, column: 55, scope: !2719)
!2724 = !DILocation(line: 474, column: 9, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2719, file: !5, line: 473, column: 56)
!2726 = !DILocation(line: 475, column: 9, scope: !2725)
!2727 = !DILocation(line: 478, column: 39, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2677, file: !5, line: 478, column: 9)
!2729 = !DILocation(line: 478, column: 34, scope: !2728)
!2730 = !DILocation(line: 478, column: 9, scope: !2677)
!2731 = !DILocation(line: 0, scope: !458, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 479, column: 9, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2728, file: !5, line: 478, column: 47)
!2734 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !2732)
!2735 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !2732)
!2736 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2732)
!2737 = !DILocation(line: 0, scope: !475, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 479, column: 29, scope: !2733)
!2739 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2738)
!2740 = !DILocation(line: 0, scope: !484, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 479, column: 9, scope: !2733)
!2742 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !2741)
!2743 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !2741)
!2744 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2732)
!2745 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2732)
!2746 = !DILocation(line: 0, scope: !498, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !2741)
!2748 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !2747)
!2749 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !2747)
!2750 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !2747)
!2751 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2741)
!2752 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2741)
!2753 = !DILocation(line: 480, column: 15, scope: !2733)
!2754 = !DILocation(line: 481, column: 13, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2733, file: !5, line: 481, column: 13)
!2756 = !DILocation(line: 481, column: 13, scope: !2733)
!2757 = !DILocation(line: 508, column: 42, scope: !2677)
!2758 = !DILocation(line: 508, column: 49, scope: !2677)
!2759 = !DILocation(line: 508, column: 55, scope: !2677)
!2760 = !DILocation(line: 509, column: 58, scope: !2677)
!2761 = !DILocation(line: 0, scope: !793, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 509, column: 67, scope: !2677)
!2763 = !DILocation(line: 0, scope: !745, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 1467, column: 16, scope: !793, inlinedAt: !2762)
!2765 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2764)
!2766 = !DILocation(line: 1455, column: 23, scope: !745, inlinedAt: !2764)
!2767 = !DILocation(line: 1455, column: 31, scope: !745, inlinedAt: !2764)
!2768 = !DILocation(line: 513, column: 51, scope: !2677)
!2769 = !DILocation(line: 0, scope: !739, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 514, column: 41, scope: !2677)
!2771 = !DILocation(line: 0, scope: !745, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !2770)
!2773 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2772)
!2774 = !DILocation(line: 1455, column: 23, scope: !745, inlinedAt: !2772)
!2775 = !DILocation(line: 1455, column: 31, scope: !745, inlinedAt: !2772)
!2776 = !DILocation(line: 514, column: 56, scope: !2677)
!2777 = !DILocation(line: 514, column: 65, scope: !2677)
!2778 = !DILocation(line: 514, column: 82, scope: !2677)
!2779 = !DILocation(line: 515, column: 38, scope: !2677)
!2780 = !DILocation(line: 515, column: 43, scope: !2677)
!2781 = !DILocation(line: 517, column: 17, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2677, file: !5, line: 517, column: 9)
!2783 = !DILocation(line: 523, column: 27, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2677, file: !5, line: 523, column: 9)
!2785 = !DILocation(line: 0, scope: !458, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 524, column: 9, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2784, file: !5, line: 523, column: 41)
!2788 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !2786)
!2789 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !2786)
!2790 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2786)
!2791 = !DILocation(line: 0, scope: !475, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 524, column: 29, scope: !2787)
!2793 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2792)
!2794 = !DILocation(line: 0, scope: !484, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 524, column: 9, scope: !2787)
!2796 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !2795)
!2797 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !2795)
!2798 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2786)
!2799 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2786)
!2800 = !DILocation(line: 0, scope: !498, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !2795)
!2802 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !2801)
!2803 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !2801)
!2804 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !2801)
!2805 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2795)
!2806 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2795)
!2807 = !DILocation(line: 525, column: 37, scope: !2787)
!2808 = !DILocation(line: 525, column: 43, scope: !2787)
!2809 = !{!876, !553, i64 80}
!2810 = !DILocation(line: 525, column: 15, scope: !2787)
!2811 = !DILocation(line: 528, column: 13, scope: !2695)
!2812 = !DILocation(line: 528, column: 9, scope: !2677)
!2813 = !DILocation(line: 531, column: 31, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2694, file: !5, line: 531, column: 13)
!2815 = !DILocation(line: 0, scope: !458, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 532, column: 13, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2814, file: !5, line: 531, column: 51)
!2818 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !2816)
!2819 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !2816)
!2820 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2816)
!2821 = !DILocation(line: 0, scope: !475, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 532, column: 33, scope: !2817)
!2823 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2822)
!2824 = !DILocation(line: 0, scope: !484, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 532, column: 13, scope: !2817)
!2826 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !2825)
!2827 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !2825)
!2828 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2816)
!2829 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2816)
!2830 = !DILocation(line: 0, scope: !498, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !2825)
!2832 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !2831)
!2833 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !2831)
!2834 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !2831)
!2835 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2825)
!2836 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2825)
!2837 = !DILocation(line: 533, column: 13, scope: !2817)
!2838 = !DILocation(line: 536, column: 21, scope: !2693)
!2839 = !DILocation(line: 537, column: 13, scope: !2692)
!2840 = !DILocation(line: 537, column: 25, scope: !2692)
!2841 = !DILocation(line: 537, column: 29, scope: !2692)
!2842 = !DILocation(line: 538, column: 13, scope: !2692)
!2843 = !DILocation(line: 540, column: 9, scope: !2693)
!2844 = !DILocation(line: 572, column: 9, scope: !2677)
!2845 = !DILocation(line: 540, column: 20, scope: !2693)
!2846 = !DILocation(line: 0, scope: !458, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 541, column: 13, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !5, line: 540, column: 29)
!2849 = distinct !DILexicalBlock(scope: !2693, file: !5, line: 540, column: 20)
!2850 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !2847)
!2851 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !2847)
!2852 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2847)
!2853 = !DILocation(line: 0, scope: !475, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 541, column: 33, scope: !2848)
!2855 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2854)
!2856 = !DILocation(line: 0, scope: !484, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 541, column: 13, scope: !2848)
!2858 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !2857)
!2859 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !2857)
!2860 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2847)
!2861 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2847)
!2862 = !DILocation(line: 0, scope: !498, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !2857)
!2864 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !2863)
!2865 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !2863)
!2866 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !2863)
!2867 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2857)
!2868 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2857)
!2869 = !DILocation(line: 542, column: 24, scope: !2848)
!2870 = !DILocation(line: 542, column: 42, scope: !2848)
!2871 = !DILocation(line: 542, column: 48, scope: !2848)
!2872 = !DILocation(line: 542, column: 19, scope: !2848)
!2873 = !DILocation(line: 545, column: 21, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2848, file: !5, line: 545, column: 17)
!2875 = !DILocation(line: 545, column: 17, scope: !2848)
!2876 = !DILocation(line: 546, column: 23, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2874, file: !5, line: 545, column: 73)
!2878 = !DILocation(line: 547, column: 22, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2877, file: !5, line: 547, column: 21)
!2880 = !DILocation(line: 547, column: 21, scope: !2877)
!2881 = !DILocation(line: 548, column: 27, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2879, file: !5, line: 547, column: 27)
!2883 = !DILocation(line: 549, column: 17, scope: !2882)
!2884 = !DILocation(line: 552, column: 35, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !5, line: 552, column: 17)
!2886 = distinct !DILexicalBlock(scope: !2849, file: !5, line: 551, column: 16)
!2887 = !DILocation(line: 0, scope: !458, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 562, column: 17, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2885, file: !5, line: 561, column: 20)
!2890 = !DILocation(line: 0, scope: !458, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 553, column: 17, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2885, file: !5, line: 552, column: 54)
!2893 = !DILocation(line: 0, scope: !2885)
!2894 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2891)
!2895 = !DILocation(line: 0, scope: !475, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 553, column: 37, scope: !2892)
!2897 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2896)
!2898 = !DILocation(line: 0, scope: !484, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 553, column: 17, scope: !2892)
!2900 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !2899)
!2901 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !2899)
!2902 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2891)
!2903 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2891)
!2904 = !DILocation(line: 0, scope: !498, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !2899)
!2906 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !2905)
!2907 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !2905)
!2908 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !2905)
!2909 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2899)
!2910 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2899)
!2911 = !DILocation(line: 0, scope: !458, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 555, column: 17, scope: !2892)
!2913 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !2912)
!2914 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !2912)
!2915 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2912)
!2916 = !DILocation(line: 0, scope: !475, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 555, column: 37, scope: !2892)
!2918 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2917)
!2919 = !DILocation(line: 0, scope: !484, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 555, column: 17, scope: !2892)
!2921 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !2920)
!2922 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !2920)
!2923 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2912)
!2924 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2912)
!2925 = !DILocation(line: 0, scope: !498, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !2920)
!2927 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !2926)
!2928 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !2926)
!2929 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !2926)
!2930 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2920)
!2931 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2920)
!2932 = !DILocation(line: 556, column: 28, scope: !2892)
!2933 = !DILocation(line: 556, column: 46, scope: !2892)
!2934 = !DILocation(line: 556, column: 52, scope: !2892)
!2935 = !DILocation(line: 556, column: 23, scope: !2892)
!2936 = !DILocation(line: 557, column: 25, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2892, file: !5, line: 557, column: 21)
!2938 = !DILocation(line: 557, column: 21, scope: !2892)
!2939 = !DILocation(line: 0, scope: !1350, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 558, column: 26, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2937, file: !5, line: 557, column: 31)
!2942 = !DILocation(line: 0, scope: !920, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 1475, column: 9, scope: !1350, inlinedAt: !2940)
!2944 = !DILocation(line: 1460, column: 13, scope: !2945, inlinedAt: !2943)
!2945 = distinct !DILexicalBlock(scope: !928, file: !7, line: 1459, column: 20)
!2946 = !DILocation(line: 1460, column: 19, scope: !2945, inlinedAt: !2943)
!2947 = !DILocation(line: 559, column: 27, scope: !2941)
!2948 = !DILocation(line: 560, column: 17, scope: !2941)
!2949 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2888)
!2950 = !DILocation(line: 0, scope: !475, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 562, column: 37, scope: !2889)
!2952 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2951)
!2953 = !DILocation(line: 0, scope: !484, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 562, column: 17, scope: !2889)
!2955 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !2954)
!2956 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !2954)
!2957 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2888)
!2958 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2888)
!2959 = !DILocation(line: 0, scope: !498, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !2954)
!2961 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !2960)
!2962 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !2960)
!2963 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !2960)
!2964 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2954)
!2965 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2954)
!2966 = !DILocation(line: 564, column: 23, scope: !2889)
!2967 = !DILocation(line: 565, column: 25, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2889, file: !5, line: 565, column: 21)
!2969 = !DILocation(line: 565, column: 21, scope: !2889)
!2970 = !DILocation(line: 566, column: 49, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2968, file: !5, line: 565, column: 31)
!2972 = !DILocation(line: 566, column: 55, scope: !2971)
!2973 = !DILocation(line: 566, column: 27, scope: !2971)
!2974 = !DILocation(line: 567, column: 17, scope: !2971)
!2975 = !DILocation(line: 0, scope: !458, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 573, column: 9, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !5, line: 572, column: 19)
!2978 = distinct !DILexicalBlock(scope: !2677, file: !5, line: 572, column: 9)
!2979 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !2976)
!2980 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !2976)
!2981 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !2976)
!2982 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !2976)
!2983 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !2976)
!2984 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !2976)
!2985 = !DILocation(line: 0, scope: !472, inlinedAt: !2976)
!2986 = !DILocation(line: 0, scope: !475, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 573, column: 29, scope: !2977)
!2988 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2987)
!2989 = !DILocalVariable(name: "this", arg: 1, scope: !2990, type: !462, flags: DIFlagArtificial | DIFlagObjectPointer)
!2990 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !87, file: !85, line: 72, type: !115, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !114, retainedNodes: !2991)
!2991 = !{!2989, !2992}
!2992 = !DILocalVariable(name: "arg", arg: 2, scope: !2990, file: !85, line: 72, type: !117)
!2993 = !DILocation(line: 0, scope: !2990, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 573, column: 80, scope: !2977)
!2995 = !DILocation(line: 73, column: 48, scope: !2990, inlinedAt: !2994)
!2996 = !DILocation(line: 73, column: 15, scope: !2990, inlinedAt: !2994)
!2997 = !DILocation(line: 0, scope: !475, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 573, column: 87, scope: !2977)
!2999 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !2998)
!3000 = !DILocation(line: 0, scope: !484, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 573, column: 9, scope: !2977)
!3002 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !3001)
!3003 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !3001)
!3004 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !3001)
!3005 = !DILocation(line: 0, scope: !498, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !3001)
!3007 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !3006)
!3008 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !3006)
!3009 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !3006)
!3010 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !3001)
!3011 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !3001)
!3012 = !DILocation(line: 575, column: 18, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2677, file: !5, line: 575, column: 9)
!3014 = !DILocation(line: 575, column: 25, scope: !3013)
!3015 = !DILocation(line: 575, column: 9, scope: !2677)
!3016 = !DILocation(line: 0, scope: !458, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 581, column: 13, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !5, line: 580, column: 16)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !5, line: 576, column: 13)
!3020 = distinct !DILexicalBlock(scope: !3013, file: !5, line: 575, column: 33)
!3021 = !DILocation(line: 0, scope: !458, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 577, column: 13, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3019, file: !5, line: 576, column: 35)
!3024 = !DILocation(line: 0, scope: !3019)
!3025 = !DILocation(line: 576, column: 13, scope: !3020)
!3026 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !3022)
!3027 = !DILocation(line: 0, scope: !475, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 577, column: 33, scope: !3023)
!3029 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3028)
!3030 = !DILocation(line: 0, scope: !484, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 577, column: 13, scope: !3023)
!3032 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !3031)
!3033 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !3031)
!3034 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !3022)
!3035 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !3022)
!3036 = !DILocation(line: 0, scope: !498, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !3031)
!3038 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !3037)
!3039 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !3037)
!3040 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !3037)
!3041 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !3031)
!3042 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !3031)
!3043 = !DILocation(line: 0, scope: !1350, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 578, column: 18, scope: !3023)
!3045 = !DILocation(line: 0, scope: !920, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 1475, column: 9, scope: !1350, inlinedAt: !3044)
!3047 = !DILocation(line: 1462, column: 13, scope: !927, inlinedAt: !3046)
!3048 = !DILocation(line: 1462, column: 19, scope: !927, inlinedAt: !3046)
!3049 = !DILocation(line: 0, scope: !914, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 579, column: 18, scope: !3023)
!3051 = !DILocation(line: 0, scope: !920, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 1479, column: 9, scope: !914, inlinedAt: !3050)
!3053 = !DILocation(line: 1460, column: 19, scope: !2945, inlinedAt: !3052)
!3054 = !DILocation(line: 580, column: 9, scope: !3023)
!3055 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !3017)
!3056 = !DILocation(line: 0, scope: !475, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 581, column: 33, scope: !3018)
!3058 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3057)
!3059 = !DILocation(line: 0, scope: !484, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 581, column: 13, scope: !3018)
!3061 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !3060)
!3062 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !3060)
!3063 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !3017)
!3064 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !3017)
!3065 = !DILocation(line: 0, scope: !498, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !3060)
!3067 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !3066)
!3068 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !3066)
!3069 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !3066)
!3070 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !3060)
!3071 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !3060)
!3072 = !DILocation(line: 0, scope: !1350, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 582, column: 18, scope: !3018)
!3074 = !DILocation(line: 0, scope: !920, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 1475, column: 9, scope: !1350, inlinedAt: !3073)
!3076 = !DILocation(line: 1460, column: 13, scope: !2945, inlinedAt: !3075)
!3077 = !DILocation(line: 1460, column: 19, scope: !2945, inlinedAt: !3075)
!3078 = !DILocation(line: 0, scope: !914, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 583, column: 18, scope: !3018)
!3080 = !DILocation(line: 0, scope: !920, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 1479, column: 9, scope: !914, inlinedAt: !3079)
!3082 = !DILocation(line: 1462, column: 19, scope: !927, inlinedAt: !3081)
!3083 = !DILocation(line: 588, column: 1, scope: !2677)
!3084 = distinct !DISubprogram(name: "halide_buffer_copy", scope: !5, file: !5, line: 590, type: !211, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !3085)
!3085 = !{!3086, !3087, !3088, !3089, !3090, !3091}
!3086 = !DILocalVariable(name: "user_context", arg: 1, scope: !3084, file: !5, line: 590, type: !83)
!3087 = !DILocalVariable(name: "src", arg: 2, scope: !3084, file: !5, line: 590, type: !195)
!3088 = !DILocalVariable(name: "dst_device_interface", arg: 3, scope: !3084, file: !5, line: 591, type: !187)
!3089 = !DILocalVariable(name: "dst", arg: 4, scope: !3084, file: !5, line: 592, type: !195)
!3090 = !DILocalVariable(name: "lock", scope: !3084, file: !5, line: 598, type: !948)
!3091 = !DILocalVariable(name: "err", scope: !3084, file: !5, line: 607, type: !35)
!3092 = !DILocation(line: 0, scope: !3084)
!3093 = !DILocation(line: 0, scope: !458, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 593, column: 5, scope: !3084)
!3095 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !3094)
!3096 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !3094)
!3097 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !3094)
!3098 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !3094)
!3099 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !3094)
!3100 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !3094)
!3101 = !DILocation(line: 0, scope: !472, inlinedAt: !3094)
!3102 = !DILocation(line: 0, scope: !475, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 593, column: 25, scope: !3084)
!3104 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3103)
!3105 = !DILocation(line: 0, scope: !475, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 594, column: 25, scope: !3084)
!3107 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3106)
!3108 = !DILocation(line: 0, scope: !1008, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 594, column: 36, scope: !3084)
!3110 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !3109)
!3111 = !DILocation(line: 0, scope: !475, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 594, column: 44, scope: !3084)
!3113 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3112)
!3114 = !DILocation(line: 0, scope: !475, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 595, column: 25, scope: !3084)
!3116 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3115)
!3117 = !DILocation(line: 595, column: 45, scope: !3084)
!3118 = !DILocation(line: 0, scope: !769, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 595, column: 42, scope: !3084)
!3120 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !3119)
!3121 = !DILocation(line: 0, scope: !475, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 595, column: 66, scope: !3084)
!3123 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3122)
!3124 = !DILocation(line: 0, scope: !475, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 596, column: 25, scope: !3084)
!3126 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3125)
!3127 = !DILocation(line: 0, scope: !1008, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 596, column: 36, scope: !3084)
!3129 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !3128)
!3130 = !DILocation(line: 0, scope: !475, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 596, column: 44, scope: !3084)
!3132 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3131)
!3133 = !DILocation(line: 0, scope: !484, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 593, column: 5, scope: !3084)
!3135 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !3134)
!3136 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !3134)
!3137 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !3134)
!3138 = !DILocation(line: 0, scope: !498, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !3134)
!3140 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !3139)
!3141 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !3139)
!3142 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !3139)
!3143 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !3134)
!3144 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !3134)
!3145 = !DILocation(line: 0, scope: !963, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 598, column: 21, scope: !3084)
!3147 = !DILocation(line: 16, column: 9, scope: !970, inlinedAt: !3146)
!3148 = !DILocation(line: 600, column: 9, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3084, file: !5, line: 600, column: 9)
!3150 = !DILocation(line: 600, column: 9, scope: !3084)
!3151 = !DILocation(line: 601, column: 31, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3149, file: !5, line: 600, column: 31)
!3153 = !DILocation(line: 601, column: 37, scope: !3152)
!3154 = !DILocation(line: 601, column: 9, scope: !3152)
!3155 = !DILocation(line: 602, column: 5, scope: !3152)
!3156 = !DILocation(line: 603, column: 14, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3084, file: !5, line: 603, column: 9)
!3158 = !DILocation(line: 603, column: 9, scope: !3157)
!3159 = !DILocation(line: 603, column: 9, scope: !3084)
!3160 = !DILocation(line: 604, column: 32, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !5, line: 603, column: 32)
!3162 = !DILocation(line: 604, column: 38, scope: !3161)
!3163 = !DILocation(line: 604, column: 9, scope: !3161)
!3164 = !DILocation(line: 605, column: 5, scope: !3161)
!3165 = !DILocation(line: 607, column: 15, scope: !3084)
!3166 = !DILocation(line: 609, column: 9, scope: !3084)
!3167 = !DILocation(line: 610, column: 31, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !5, line: 609, column: 31)
!3169 = distinct !DILexicalBlock(scope: !3084, file: !5, line: 609, column: 9)
!3170 = !DILocation(line: 610, column: 37, scope: !3168)
!3171 = !DILocation(line: 610, column: 9, scope: !3168)
!3172 = !DILocation(line: 611, column: 5, scope: !3168)
!3173 = !DILocation(line: 612, column: 14, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3084, file: !5, line: 612, column: 9)
!3175 = !DILocation(line: 612, column: 9, scope: !3174)
!3176 = !DILocation(line: 612, column: 9, scope: !3084)
!3177 = !DILocation(line: 613, column: 32, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !5, line: 612, column: 32)
!3179 = !DILocation(line: 613, column: 38, scope: !3178)
!3180 = !DILocation(line: 613, column: 9, scope: !3178)
!3181 = !DILocation(line: 614, column: 5, scope: !3178)
!3182 = !DILocation(line: 0, scope: !1062, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 617, column: 1, scope: !3084)
!3184 = !DILocation(line: 20, column: 9, scope: !1067, inlinedAt: !3183)
!3185 = !DILocation(line: 617, column: 1, scope: !3084)
!3186 = distinct !DISubprogram(name: "halide_default_device_crop", scope: !5, file: !5, line: 619, type: !215, scopeLine: 621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !3187)
!3187 = !{!3188, !3189, !3190}
!3188 = !DILocalVariable(name: "user_context", arg: 1, scope: !3186, file: !5, line: 619, type: !83)
!3189 = !DILocalVariable(name: "src", arg: 2, scope: !3186, file: !5, line: 620, type: !217)
!3190 = !DILocalVariable(name: "dst", arg: 3, scope: !3186, file: !5, line: 621, type: !195)
!3191 = !DILocation(line: 0, scope: !3186)
!3192 = !DILocation(line: 622, column: 5, scope: !3186)
!3193 = !DILocation(line: 623, column: 5, scope: !3186)
!3194 = distinct !DISubprogram(name: "halide_default_device_slice", scope: !5, file: !5, line: 626, type: !221, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !3195)
!3195 = !{!3196, !3197, !3198, !3199, !3200}
!3196 = !DILocalVariable(name: "user_context", arg: 1, scope: !3194, file: !5, line: 626, type: !83)
!3197 = !DILocalVariable(name: "src", arg: 2, scope: !3194, file: !5, line: 627, type: !217)
!3198 = !DILocalVariable(name: "slice_dim", arg: 3, scope: !3194, file: !5, line: 628, type: !35)
!3199 = !DILocalVariable(name: "slice_pos", arg: 4, scope: !3194, file: !5, line: 628, type: !35)
!3200 = !DILocalVariable(name: "dst", arg: 5, scope: !3194, file: !5, line: 629, type: !195)
!3201 = !DILocation(line: 0, scope: !3194)
!3202 = !DILocation(line: 630, column: 5, scope: !3194)
!3203 = !DILocation(line: 631, column: 5, scope: !3194)
!3204 = distinct !DISubprogram(name: "halide_device_crop", scope: !5, file: !5, line: 634, type: !215, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !3205)
!3205 = !{!3206, !3207, !3208, !3209, !3210}
!3206 = !DILocalVariable(name: "user_context", arg: 1, scope: !3204, file: !5, line: 634, type: !83)
!3207 = !DILocalVariable(name: "src", arg: 2, scope: !3204, file: !5, line: 635, type: !217)
!3208 = !DILocalVariable(name: "dst", arg: 3, scope: !3204, file: !5, line: 636, type: !195)
!3209 = !DILocalVariable(name: "lock", scope: !3204, file: !5, line: 637, type: !948)
!3210 = !DILocalVariable(name: "err", scope: !3204, file: !5, line: 654, type: !35)
!3211 = !DILocation(line: 0, scope: !3204)
!3212 = !DILocation(line: 0, scope: !963, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 637, column: 21, scope: !3204)
!3214 = !DILocation(line: 16, column: 9, scope: !970, inlinedAt: !3213)
!3215 = !DILocation(line: 639, column: 15, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3204, file: !5, line: 639, column: 9)
!3217 = !DILocation(line: 639, column: 10, scope: !3216)
!3218 = !DILocation(line: 639, column: 9, scope: !3204)
!3219 = !DILocation(line: 643, column: 14, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3204, file: !5, line: 643, column: 9)
!3221 = !DILocation(line: 643, column: 9, scope: !3220)
!3222 = !DILocation(line: 643, column: 9, scope: !3204)
!3223 = !DILocation(line: 644, column: 9, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3220, file: !5, line: 643, column: 22)
!3225 = !DILocation(line: 645, column: 9, scope: !3224)
!3226 = !DILocation(line: 648, column: 14, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3204, file: !5, line: 648, column: 9)
!3228 = !DILocation(line: 648, column: 33, scope: !3227)
!3229 = !DILocation(line: 648, column: 25, scope: !3227)
!3230 = !DILocation(line: 648, column: 9, scope: !3204)
!3231 = !DILocation(line: 649, column: 9, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3227, file: !5, line: 648, column: 45)
!3233 = !DILocation(line: 650, column: 9, scope: !3232)
!3234 = !DILocation(line: 653, column: 10, scope: !3204)
!3235 = !DILocation(line: 653, column: 28, scope: !3204)
!3236 = !DILocation(line: 653, column: 34, scope: !3204)
!3237 = !DILocation(line: 653, column: 5, scope: !3204)
!3238 = !DILocation(line: 654, column: 20, scope: !3204)
!3239 = !DILocation(line: 654, column: 38, scope: !3204)
!3240 = !DILocation(line: 654, column: 44, scope: !3204)
!3241 = !{!876, !553, i64 88}
!3242 = !DILocation(line: 654, column: 15, scope: !3204)
!3243 = !DILocation(line: 0, scope: !458, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 656, column: 5, scope: !3204)
!3245 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !3244)
!3246 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !3244)
!3247 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !3244)
!3248 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !3244)
!3249 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !3244)
!3250 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !3244)
!3251 = !DILocation(line: 0, scope: !472, inlinedAt: !3244)
!3252 = !DILocation(line: 0, scope: !475, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 656, column: 25, scope: !3204)
!3254 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3253)
!3255 = !DILocation(line: 0, scope: !475, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 657, column: 25, scope: !3204)
!3257 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3256)
!3258 = !DILocation(line: 0, scope: !475, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 658, column: 25, scope: !3204)
!3260 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3259)
!3261 = !DILocation(line: 0, scope: !1008, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 658, column: 37, scope: !3204)
!3263 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !3262)
!3264 = !DILocation(line: 0, scope: !475, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 658, column: 45, scope: !3204)
!3266 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3265)
!3267 = !DILocation(line: 0, scope: !475, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 659, column: 25, scope: !3204)
!3269 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3268)
!3270 = !DILocation(line: 0, scope: !1008, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 659, column: 37, scope: !3204)
!3272 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !3271)
!3273 = !DILocation(line: 0, scope: !475, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 659, column: 45, scope: !3204)
!3275 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3274)
!3276 = !DILocation(line: 0, scope: !484, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 656, column: 5, scope: !3204)
!3278 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !3277)
!3279 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !3277)
!3280 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !3277)
!3281 = !DILocation(line: 0, scope: !498, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !3277)
!3283 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !3282)
!3284 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !3282)
!3285 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !3282)
!3286 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !3277)
!3287 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !3277)
!3288 = !DILocation(line: 0, scope: !1062, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 662, column: 1, scope: !3204)
!3290 = !DILocation(line: 20, column: 9, scope: !1067, inlinedAt: !3289)
!3291 = !DILocation(line: 662, column: 1, scope: !3204)
!3292 = distinct !DISubprogram(name: "halide_device_slice", scope: !5, file: !5, line: 664, type: !221, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !3293)
!3293 = !{!3294, !3295, !3296, !3297, !3298, !3299, !3300}
!3294 = !DILocalVariable(name: "user_context", arg: 1, scope: !3292, file: !5, line: 664, type: !83)
!3295 = !DILocalVariable(name: "src", arg: 2, scope: !3292, file: !5, line: 665, type: !217)
!3296 = !DILocalVariable(name: "slice_dim", arg: 3, scope: !3292, file: !5, line: 666, type: !35)
!3297 = !DILocalVariable(name: "slice_pos", arg: 4, scope: !3292, file: !5, line: 666, type: !35)
!3298 = !DILocalVariable(name: "dst", arg: 5, scope: !3292, file: !5, line: 667, type: !195)
!3299 = !DILocalVariable(name: "lock", scope: !3292, file: !5, line: 668, type: !948)
!3300 = !DILocalVariable(name: "err", scope: !3292, file: !5, line: 685, type: !35)
!3301 = !DILocation(line: 0, scope: !3292)
!3302 = !DILocation(line: 0, scope: !963, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 668, column: 21, scope: !3292)
!3304 = !DILocation(line: 16, column: 9, scope: !970, inlinedAt: !3303)
!3305 = !DILocation(line: 670, column: 15, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3292, file: !5, line: 670, column: 9)
!3307 = !DILocation(line: 670, column: 10, scope: !3306)
!3308 = !DILocation(line: 670, column: 9, scope: !3292)
!3309 = !DILocation(line: 674, column: 14, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3292, file: !5, line: 674, column: 9)
!3311 = !DILocation(line: 674, column: 9, scope: !3310)
!3312 = !DILocation(line: 674, column: 9, scope: !3292)
!3313 = !DILocation(line: 675, column: 9, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3310, file: !5, line: 674, column: 22)
!3315 = !DILocation(line: 676, column: 9, scope: !3314)
!3316 = !DILocation(line: 679, column: 14, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3292, file: !5, line: 679, column: 9)
!3318 = !DILocation(line: 679, column: 33, scope: !3317)
!3319 = !DILocation(line: 679, column: 44, scope: !3317)
!3320 = !DILocation(line: 679, column: 25, scope: !3317)
!3321 = !DILocation(line: 679, column: 9, scope: !3292)
!3322 = !DILocation(line: 680, column: 9, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3317, file: !5, line: 679, column: 49)
!3324 = !DILocation(line: 681, column: 9, scope: !3323)
!3325 = !DILocation(line: 684, column: 10, scope: !3292)
!3326 = !DILocation(line: 684, column: 28, scope: !3292)
!3327 = !DILocation(line: 684, column: 34, scope: !3292)
!3328 = !DILocation(line: 684, column: 5, scope: !3292)
!3329 = !DILocation(line: 685, column: 20, scope: !3292)
!3330 = !DILocation(line: 685, column: 38, scope: !3292)
!3331 = !DILocation(line: 685, column: 44, scope: !3292)
!3332 = !{!876, !553, i64 96}
!3333 = !DILocation(line: 685, column: 15, scope: !3292)
!3334 = !DILocation(line: 0, scope: !458, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 687, column: 5, scope: !3292)
!3336 = !DILocation(line: 44, column: 27, scope: !467, inlinedAt: !3335)
!3337 = !DILocation(line: 48, column: 13, scope: !472, inlinedAt: !3335)
!3338 = !DILocation(line: 48, column: 13, scope: !470, inlinedAt: !3335)
!3339 = !DILocation(line: 49, column: 23, scope: !494, inlinedAt: !3335)
!3340 = !DILocation(line: 50, column: 18, scope: !494, inlinedAt: !3335)
!3341 = !DILocation(line: 51, column: 9, scope: !494, inlinedAt: !3335)
!3342 = !DILocation(line: 0, scope: !472, inlinedAt: !3335)
!3343 = !DILocation(line: 0, scope: !475, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 687, column: 25, scope: !3292)
!3345 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3344)
!3346 = !DILocation(line: 0, scope: !475, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 688, column: 25, scope: !3292)
!3348 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3347)
!3349 = !DILocation(line: 0, scope: !475, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 689, column: 25, scope: !3292)
!3351 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3350)
!3352 = !DILocation(line: 0, scope: !1008, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 689, column: 37, scope: !3292)
!3354 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !3353)
!3355 = !DILocation(line: 0, scope: !475, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 689, column: 45, scope: !3292)
!3357 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3356)
!3358 = !DILocation(line: 0, scope: !475, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 690, column: 25, scope: !3292)
!3360 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3359)
!3361 = !DILocation(line: 0, scope: !1008, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 690, column: 37, scope: !3292)
!3363 = !DILocation(line: 114, column: 15, scope: !1008, inlinedAt: !3362)
!3364 = !DILocation(line: 0, scope: !475, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 690, column: 45, scope: !3292)
!3366 = !DILocation(line: 62, column: 19, scope: !481, inlinedAt: !3365)
!3367 = !DILocation(line: 0, scope: !484, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 687, column: 5, scope: !3292)
!3369 = !DILocation(line: 167, column: 13, scope: !491, inlinedAt: !3368)
!3370 = !DILocation(line: 168, column: 13, scope: !489, inlinedAt: !3368)
!3371 = !DILocation(line: 169, column: 9, scope: !489, inlinedAt: !3368)
!3372 = !DILocation(line: 0, scope: !498, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 170, column: 13, scope: !502, inlinedAt: !3368)
!3374 = !DILocation(line: 163, column: 81, scope: !498, inlinedAt: !3373)
!3375 = !DILocation(line: 163, column: 87, scope: !498, inlinedAt: !3373)
!3376 = !DILocation(line: 163, column: 15, scope: !498, inlinedAt: !3373)
!3377 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !3368)
!3378 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !3368)
!3379 = !DILocation(line: 0, scope: !1062, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 693, column: 1, scope: !3292)
!3381 = !DILocation(line: 20, column: 9, scope: !1067, inlinedAt: !3380)
!3382 = !DILocation(line: 693, column: 1, scope: !3292)
!3383 = distinct !DISubprogram(name: "halide_default_device_release_crop", scope: !5, file: !5, line: 695, type: !198, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !3384)
!3384 = !{!3385, !3386}
!3385 = !DILocalVariable(name: "user_context", arg: 1, scope: !3383, file: !5, line: 695, type: !83)
!3386 = !DILocalVariable(name: "buf", arg: 2, scope: !3383, file: !5, line: 696, type: !195)
!3387 = !DILocation(line: 0, scope: !3383)
!3388 = !DILocation(line: 697, column: 15, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3383, file: !5, line: 697, column: 9)
!3390 = !DILocation(line: 697, column: 10, scope: !3389)
!3391 = !DILocation(line: 697, column: 9, scope: !3383)
!3392 = !DILocation(line: 700, column: 5, scope: !3383)
!3393 = !DILocation(line: 701, column: 5, scope: !3383)
!3394 = !DILocation(line: 702, column: 1, scope: !3383)
!3395 = distinct !DISubprogram(name: "halide_device_release_crop", scope: !5, file: !5, line: 704, type: !198, scopeLine: 705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !3396)
!3396 = !{!3397, !3398, !3399, !3402, !3403}
!3397 = !DILocalVariable(name: "user_context", arg: 1, scope: !3395, file: !5, line: 704, type: !83)
!3398 = !DILocalVariable(name: "buf", arg: 2, scope: !3395, file: !5, line: 705, type: !195)
!3399 = !DILocalVariable(name: "lock", scope: !3400, file: !5, line: 707, type: !948)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !5, line: 706, column: 22)
!3401 = distinct !DILexicalBlock(scope: !3395, file: !5, line: 706, column: 9)
!3402 = !DILocalVariable(name: "interface", scope: !3400, file: !5, line: 708, type: !187)
!3403 = !DILocalVariable(name: "result", scope: !3400, file: !5, line: 709, type: !35)
!3404 = !DILocation(line: 0, scope: !3395)
!3405 = !DILocation(line: 706, column: 14, scope: !3401)
!3406 = !DILocation(line: 706, column: 9, scope: !3401)
!3407 = !DILocation(line: 706, column: 9, scope: !3395)
!3408 = !DILocation(line: 0, scope: !963, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 707, column: 25, scope: !3400)
!3410 = !DILocation(line: 0, scope: !3400)
!3411 = !DILocation(line: 16, column: 9, scope: !970, inlinedAt: !3409)
!3412 = !DILocation(line: 708, column: 66, scope: !3400)
!3413 = !DILocation(line: 709, column: 33, scope: !3400)
!3414 = !DILocation(line: 709, column: 39, scope: !3400)
!3415 = !{!876, !553, i64 104}
!3416 = !DILocation(line: 709, column: 22, scope: !3400)
!3417 = !DILocation(line: 710, column: 21, scope: !3400)
!3418 = !DILocation(line: 711, column: 20, scope: !3400)
!3419 = !DILocation(line: 711, column: 26, scope: !3400)
!3420 = !DILocation(line: 711, column: 9, scope: !3400)
!3421 = !DILocation(line: 712, column: 31, scope: !3400)
!3422 = !DILocation(line: 0, scope: !1062, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 714, column: 5, scope: !3401)
!3424 = !DILocation(line: 20, column: 9, scope: !1067, inlinedAt: !3423)
!3425 = !DILocation(line: 716, column: 1, scope: !3395)
!3426 = !DISubprogram(name: "halide_mutex_lock", scope: !7, file: !7, line: 133, type: !3427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{null, !952}
!3429 = !DISubprogram(name: "halide_error_buffer_is_null", scope: !7, file: !7, line: 1245, type: !3430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!35, !83, !107}
!3432 = !DISubprogram(name: "halide_error_device_interface_no_device", scope: !7, file: !7, line: 1243, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!3433 = !DISubprogram(name: "halide_error_host_and_device_dirty", scope: !7, file: !7, line: 1244, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!3434 = !DISubprogram(name: "halide_mutex_unlock", scope: !7, file: !7, line: 134, type: !3427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!3435 = !DISubprogram(name: "malloc", scope: !12, file: !12, line: 87, type: !3436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!83, !315}
!3438 = !DISubprogram(name: "free", scope: !12, file: !12, line: 86, type: !3439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{null, !83}
!3441 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !7, file: !7, line: 973, type: !3442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!35, !83, !136, !14}
!3444 = !DISubprogram(name: "halide_string_to_string", scope: !12, file: !12, line: 120, type: !3445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!90, !90, !90, !107}
!3447 = !DISubprogram(name: "halide_pointer_to_string", scope: !12, file: !12, line: 124, type: !3448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!90, !90, !90, !136}
!3450 = !DISubprogram(name: "halide_buffer_to_string", scope: !12, file: !12, line: 125, type: !3451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!90, !90, !90, !217}
!3453 = !DISubprogram(name: "halide_int64_to_string", scope: !12, file: !12, line: 122, type: !3454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!90, !90, !90, !113, !35}
