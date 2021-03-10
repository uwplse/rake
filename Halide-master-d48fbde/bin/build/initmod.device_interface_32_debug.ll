; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/device_interface.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/device_interface.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.halide_mutex = type { [1 x i32] }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }

@.str = private unnamed_addr constant [55 x i8] c"copy_memory: no copy needed as pointers are the same.\0A\00", align 1
@_ZN6Halide7Runtime8Internal17device_copy_mutexE = weak dso_local global %struct.halide_mutex zeroinitializer, align 4, !dbg !0
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
define weak dso_local void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !358 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !377, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i32 %1, metadata !378, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i64 %2, metadata !379, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i64 %3, metadata !380, metadata !DIExpression()), !dbg !388
  %5 = icmp sgt i32 %1, -1, !dbg !389
  br i1 %5, label %6, label %14, !dbg !390

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !378, metadata !DIExpression()), !dbg !388
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7, !dbg !391
  %9 = load i64, i64* %8, align 8, !dbg !391, !tbaa !392
  %10 = icmp eq i64 %9, 1, !dbg !396
  br i1 %10, label %11, label %14, !dbg !397

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1, !dbg !398
  call void @llvm.dbg.value(metadata i32 %12, metadata !378, metadata !DIExpression()), !dbg !388
  %13 = icmp sgt i32 %7, 0, !dbg !389
  br i1 %13, label %6, label %25, !dbg !390, !llvm.loop !400

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1, !dbg !403
  br i1 %16, label %25, label %17, !dbg !404

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 0, metadata !385, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i64 %2, metadata !379, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i64 %3, metadata !380, metadata !DIExpression()), !dbg !388
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15, !dbg !406
  %19 = load i64, i64* %18, align 8, !dbg !406, !tbaa !392
  %20 = icmp eq i64 %19, 0, !dbg !408
  br i1 %20, label %51, label %21, !dbg !409

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %40, !dbg !409

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !410
  %27 = load i64, i64* %26, align 8, !dbg !410, !tbaa !411
  %28 = add i64 %27, %2, !dbg !413
  %29 = trunc i64 %28 to i32, !dbg !414
  %30 = inttoptr i32 %29 to i8*, !dbg !414
  call void @llvm.dbg.value(metadata i8* %30, metadata !381, metadata !DIExpression()), !dbg !415
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !416
  %32 = load i64, i64* %31, align 8, !dbg !416, !tbaa !417
  %33 = add i64 %32, %3, !dbg !418
  %34 = trunc i64 %33 to i32, !dbg !419
  %35 = inttoptr i32 %34 to i8*, !dbg !419
  call void @llvm.dbg.value(metadata i8* %35, metadata !384, metadata !DIExpression()), !dbg !415
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6, !dbg !420
  %37 = load i64, i64* %36, align 8, !dbg !420, !tbaa !421
  %38 = trunc i64 %37 to i32, !dbg !422
  %39 = tail call i8* @memcpy(i8* %35, i8* %30, i32 %38) #7, !dbg !423
  br label %51, !dbg !424

40:                                               ; preds = %21, %40
  %41 = phi i64 [ 0, %21 ], [ %48, %40 ]
  %42 = phi i64 [ %2, %21 ], [ %45, %40 ]
  %43 = phi i64 [ %3, %21 ], [ %47, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !385, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i64 %42, metadata !379, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i64 %43, metadata !380, metadata !DIExpression()), !dbg !388
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %42, i64 %43) #8, !dbg !425
  %44 = load i64, i64* %23, align 8, !dbg !427, !tbaa !392
  %45 = add i64 %44, %42, !dbg !428
  call void @llvm.dbg.value(metadata i64 %45, metadata !379, metadata !DIExpression()), !dbg !388
  %46 = load i64, i64* %24, align 8, !dbg !429, !tbaa !392
  %47 = add i64 %46, %43, !dbg !430
  call void @llvm.dbg.value(metadata i64 %47, metadata !380, metadata !DIExpression()), !dbg !388
  %48 = add nuw i64 %41, 1, !dbg !431
  call void @llvm.dbg.value(metadata i64 %48, metadata !385, metadata !DIExpression()), !dbg !405
  %49 = load i64, i64* %18, align 8, !dbg !406, !tbaa !392
  %50 = icmp ult i64 %48, %49, !dbg !408
  br i1 %50, label %40, label %51, !dbg !409, !llvm.loop !432

51:                                               ; preds = %40, %17, %25
  ret void, !dbg !434
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !435 dso_local i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #4 !dbg !439 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !443, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.value(metadata i8* %1, metadata !444, metadata !DIExpression()), !dbg !445
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !446
  %4 = load i64, i64* %3, align 8, !dbg !446, !tbaa !411
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !448
  %6 = load i64, i64* %5, align 8, !dbg !448, !tbaa !417
  %7 = icmp eq i64 %4, %6, !dbg !449
  br i1 %7, label %11, label %8, !dbg !450

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 2, !dbg !451
  %10 = load i64, i64* %9, align 8, !dbg !451, !tbaa !453
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #8, !dbg !454
  br label %26, !dbg !455

11:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !462
  call void @llvm.dbg.value(metadata i8* %1, metadata !459, metadata !DIExpression()) #9, !dbg !462
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !462
  %12 = tail call i8* @malloc(i32 1024) #7, !dbg !465
  %13 = icmp eq i8* %12, null, !dbg !470
  br i1 %13, label %14, label %16, !dbg !472

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !477
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !477
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0)) #7, !dbg !479
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !485
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !487
  br label %25, !dbg !491

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i32 1023, !dbg !492
  store i8 0, i8* %17, align 1, !dbg !494, !tbaa !495
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !477
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !477
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0)) #7, !dbg !479
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !485
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !499
  %19 = ptrtoint i8* %18 to i32, !dbg !502
  %20 = ptrtoint i8* %12 to i32, !dbg !502
  %21 = add i32 %19, 1, !dbg !502
  %22 = sub i32 %21, %20, !dbg !503
  %23 = sext i32 %22 to i64, !dbg !504
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %12, i64 %23) #7, !dbg !505
  tail call void @halide_print(i8* %1, i8* nonnull %12) #7, !dbg !506
  br label %25

25:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #7, !dbg !510
  br label %26

26:                                               ; preds = %25, %8
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
  br i1 %2, label %8, label %13, !dbg !549

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !550
  %10 = load i8*, i8** %9, align 4, !dbg !550, !tbaa !551
  %11 = ptrtoint i8* %10 to i32, !dbg !558
  %12 = zext i32 %11 to i64, !dbg !558
  br label %16, !dbg !549

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !559
  %15 = load i64, i64* %14, align 8, !dbg !559, !tbaa !560
  br label %16, !dbg !549

16:                                               ; preds = %13, %8
  %17 = phi i64 [ %12, %8 ], [ %15, %13 ], !dbg !549
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 0, !dbg !561
  store i64 %17, i64* %18, align 8, !dbg !562, !tbaa !411
  br i1 %4, label %19, label %24, !dbg !563

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 2, !dbg !564
  %21 = load i8*, i8** %20, align 4, !dbg !564, !tbaa !551
  %22 = ptrtoint i8* %21 to i32, !dbg !565
  %23 = zext i32 %22 to i64, !dbg !565
  br label %27, !dbg !563

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0, !dbg !566
  %26 = load i64, i64* %25, align 8, !dbg !566, !tbaa !560
  br label %27, !dbg !563

27:                                               ; preds = %24, %19
  %28 = phi i64 [ %23, %19 ], [ %26, %24 ], !dbg !563
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 1, !dbg !567
  store i64 %28, i64* %29, align 8, !dbg !568, !tbaa !417
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !573
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !575
  %31 = load i8, i8* %30, align 1, !dbg !575, !tbaa !576
  %32 = zext i8 %31 to i32, !dbg !575
  %33 = add nuw nsw i32 %32, 7, !dbg !577
  %34 = lshr i32 %33, 3, !dbg !578
  %35 = zext i32 %34 to i64, !dbg !579
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 6, !dbg !580
  store i64 %35, i64* %36, align 8, !dbg !581, !tbaa !421
  call void @llvm.dbg.value(metadata i32 0, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 0, metadata !524, metadata !DIExpression()), !dbg !582
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 0, !dbg !583
  store i64 1, i64* %37, align 8, !dbg !586, !tbaa !392
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 0, !dbg !587
  store i64 0, i64* %38, align 8, !dbg !588, !tbaa !392
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 0, !dbg !589
  store i64 0, i64* %39, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 1, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 1, metadata !524, metadata !DIExpression()), !dbg !582
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 1, !dbg !583
  store i64 1, i64* %40, align 8, !dbg !586, !tbaa !392
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 1, !dbg !587
  store i64 0, i64* %41, align 8, !dbg !588, !tbaa !392
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 1, !dbg !589
  store i64 0, i64* %42, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 2, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 2, metadata !524, metadata !DIExpression()), !dbg !582
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 2, !dbg !583
  store i64 1, i64* %43, align 8, !dbg !586, !tbaa !392
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 2, !dbg !587
  store i64 0, i64* %44, align 8, !dbg !588, !tbaa !392
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 2, !dbg !589
  store i64 0, i64* %45, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 3, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 3, metadata !524, metadata !DIExpression()), !dbg !582
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 3, !dbg !583
  store i64 1, i64* %46, align 8, !dbg !586, !tbaa !392
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 3, !dbg !587
  store i64 0, i64* %47, align 8, !dbg !588, !tbaa !392
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 3, !dbg !589
  store i64 0, i64* %48, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 4, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 4, metadata !524, metadata !DIExpression()), !dbg !582
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 4, !dbg !583
  store i64 1, i64* %49, align 8, !dbg !586, !tbaa !392
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 4, !dbg !587
  store i64 0, i64* %50, align 8, !dbg !588, !tbaa !392
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 4, !dbg !589
  store i64 0, i64* %51, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 5, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 5, metadata !524, metadata !DIExpression()), !dbg !582
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 5, !dbg !583
  store i64 1, i64* %52, align 8, !dbg !586, !tbaa !392
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 5, !dbg !587
  store i64 0, i64* %53, align 8, !dbg !588, !tbaa !392
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 5, !dbg !589
  store i64 0, i64* %54, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 6, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 6, metadata !524, metadata !DIExpression()), !dbg !582
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 6, !dbg !583
  store i64 1, i64* %55, align 8, !dbg !586, !tbaa !392
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 6, !dbg !587
  store i64 0, i64* %56, align 8, !dbg !588, !tbaa !392
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 6, !dbg !589
  store i64 0, i64* %57, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 7, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 7, metadata !524, metadata !DIExpression()), !dbg !582
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 7, !dbg !583
  store i64 1, i64* %58, align 8, !dbg !586, !tbaa !392
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 7, !dbg !587
  store i64 0, i64* %59, align 8, !dbg !588, !tbaa !392
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 7, !dbg !589
  store i64 0, i64* %60, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 8, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 8, metadata !524, metadata !DIExpression()), !dbg !582
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 8, !dbg !583
  store i64 1, i64* %61, align 8, !dbg !586, !tbaa !392
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 8, !dbg !587
  store i64 0, i64* %62, align 8, !dbg !588, !tbaa !392
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 8, !dbg !589
  store i64 0, i64* %63, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 9, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 9, metadata !524, metadata !DIExpression()), !dbg !582
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 9, !dbg !583
  store i64 1, i64* %64, align 8, !dbg !586, !tbaa !392
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 9, !dbg !587
  store i64 0, i64* %65, align 8, !dbg !588, !tbaa !392
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 9, !dbg !589
  store i64 0, i64* %66, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 10, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 10, metadata !524, metadata !DIExpression()), !dbg !582
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 10, !dbg !583
  store i64 1, i64* %67, align 8, !dbg !586, !tbaa !392
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 10, !dbg !587
  store i64 0, i64* %68, align 8, !dbg !588, !tbaa !392
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 10, !dbg !589
  store i64 0, i64* %69, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 11, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 11, metadata !524, metadata !DIExpression()), !dbg !582
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 11, !dbg !583
  store i64 1, i64* %70, align 8, !dbg !586, !tbaa !392
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 11, !dbg !587
  store i64 0, i64* %71, align 8, !dbg !588, !tbaa !392
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 11, !dbg !589
  store i64 0, i64* %72, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 12, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 12, metadata !524, metadata !DIExpression()), !dbg !582
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 12, !dbg !583
  store i64 1, i64* %73, align 8, !dbg !586, !tbaa !392
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 12, !dbg !587
  store i64 0, i64* %74, align 8, !dbg !588, !tbaa !392
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 12, !dbg !589
  store i64 0, i64* %75, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 13, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 13, metadata !524, metadata !DIExpression()), !dbg !582
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 13, !dbg !583
  store i64 1, i64* %76, align 8, !dbg !586, !tbaa !392
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 13, !dbg !587
  store i64 0, i64* %77, align 8, !dbg !588, !tbaa !392
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 13, !dbg !589
  store i64 0, i64* %78, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 14, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 14, metadata !524, metadata !DIExpression()), !dbg !582
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 14, !dbg !583
  store i64 1, i64* %79, align 8, !dbg !586, !tbaa !392
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 14, !dbg !587
  store i64 0, i64* %80, align 8, !dbg !588, !tbaa !392
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 14, !dbg !589
  store i64 0, i64* %81, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 15, metadata !524, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata i32 15, metadata !524, metadata !DIExpression()), !dbg !582
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 15, !dbg !583
  store i64 1, i64* %82, align 8, !dbg !586, !tbaa !392
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 15, !dbg !587
  store i64 0, i64* %83, align 8, !dbg !588, !tbaa !392
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 15, !dbg !589
  store i64 0, i64* %84, align 8, !dbg !590, !tbaa !392
  call void @llvm.dbg.value(metadata i32 16, metadata !524, metadata !DIExpression()), !dbg !582
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 2, !dbg !591
  call void @llvm.dbg.value(metadata i32 0, metadata !526, metadata !DIExpression()), !dbg !592
  %86 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !593
  %87 = load i32, i32* %86, align 4, !dbg !593, !tbaa !595
  %88 = icmp sgt i32 %87, 0, !dbg !596
  br i1 %88, label %89, label %94, !dbg !597

89:                                               ; preds = %27
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !598
  %92 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %93 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %92, align 8, !tbaa !598
  br label %101, !dbg !597

94:                                               ; preds = %101, %27
  %95 = phi i64 [ 0, %27 ], [ %114, %101 ], !dbg !599
  %96 = load i64, i64* %36, align 8, !dbg !600, !tbaa !421
  %97 = mul i64 %95, %96, !dbg !599
  store i64 %97, i64* %85, align 8, !dbg !599, !tbaa !453
  %98 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5, !dbg !601
  %99 = load i32, i32* %98, align 4, !dbg !601, !tbaa !595
  %100 = icmp eq i32 %87, %99, !dbg !602
  br i1 %100, label %117, label %126, !dbg !603

101:                                              ; preds = %89, %101
  %102 = phi i64 [ 0, %89 ], [ %114, %101 ], !dbg !592
  %103 = phi i32 [ 0, %89 ], [ %115, %101 ]
  call void @llvm.dbg.value(metadata i32 %103, metadata !526, metadata !DIExpression()), !dbg !592
  %104 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 2, !dbg !604
  %105 = load i32, i32* %104, align 4, !dbg !604, !tbaa !606
  %106 = sext i32 %105 to i64, !dbg !608
  %107 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %93, i32 %103, i32 0, !dbg !609
  %108 = load i32, i32* %107, align 4, !dbg !609, !tbaa !610
  %109 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 0, !dbg !611
  %110 = load i32, i32* %109, align 4, !dbg !611, !tbaa !610
  %111 = sub nsw i32 %108, %110, !dbg !612
  %112 = sext i32 %111 to i64, !dbg !613
  %113 = mul nsw i64 %112, %106, !dbg !614
  %114 = add i64 %113, %102, !dbg !615
  %115 = add nuw nsw i32 %103, 1, !dbg !616
  call void @llvm.dbg.value(metadata i32 %115, metadata !526, metadata !DIExpression()), !dbg !592
  %116 = icmp slt i32 %115, %87, !dbg !596
  br i1 %116, label %101, label %94, !dbg !597, !llvm.loop !617

117:                                              ; preds = %94
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !619
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !621
  %118 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1, !dbg !623
  %119 = load i8, i8* %118, align 1, !dbg !623, !tbaa !576
  %120 = zext i8 %119 to i32, !dbg !623
  %121 = add nuw nsw i32 %120, 7, !dbg !624
  %122 = lshr i32 %121, 3, !dbg !625
  %123 = icmp ne i32 %34, %122, !dbg !626
  %124 = icmp sgt i32 %87, 16
  %125 = or i1 %124, %123, !dbg !627
  br i1 %125, label %126, label %128, !dbg !627

126:                                              ; preds = %117, %94
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !528, metadata !DIExpression()), !dbg !628
  %127 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !628
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %127, i8 0, i32 416, i1 false), !dbg !628
  br label %245, !dbg !629

128:                                              ; preds = %117
  %129 = icmp eq i64 %96, 0, !dbg !630
  br i1 %129, label %136, label %130, !dbg !631

130:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i32 0, metadata !534, metadata !DIExpression()), !dbg !632
  br i1 %88, label %131, label %243, !dbg !633

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %133 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %132, align 8, !tbaa !598
  %134 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %135 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %134, align 8, !tbaa !598
  br label %144, !dbg !633

136:                                              ; preds = %128
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !531, metadata !DIExpression()), !dbg !634
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !634
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i32 416, i1 false), !dbg !634
  br label %245, !dbg !635

138:                                              ; preds = %168
  %139 = load i64, i64* %36, align 8, !dbg !636, !tbaa !421
  %140 = load i64, i64* %38, align 8, !dbg !637, !tbaa !392
  %141 = icmp eq i64 %139, %140, !dbg !638
  br i1 %141, label %142, label %243, !dbg !639

142:                                              ; preds = %138
  %143 = load i64, i64* %39, align 8, !dbg !640, !tbaa !392
  br label %190, !dbg !639

144:                                              ; preds = %131, %168
  %145 = phi i32 [ 0, %131 ], [ %175, %168 ]
  call void @llvm.dbg.value(metadata i32 %145, metadata !534, metadata !DIExpression()), !dbg !632
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 2, !dbg !641
  %147 = load i32, i32* %146, align 4, !dbg !641, !tbaa !606
  %148 = sext i32 %147 to i64, !dbg !642
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !643
  %149 = mul nsw i64 %148, %35, !dbg !645
  call void @llvm.dbg.value(metadata i64 %149, metadata !536, metadata !DIExpression()), !dbg !646
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %135, i32 %145, i32 2, !dbg !647
  %151 = load i32, i32* %150, align 4, !dbg !647, !tbaa !606
  %152 = sext i32 %151 to i64, !dbg !648
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !649
  %153 = mul nsw i64 %152, %35, !dbg !651
  call void @llvm.dbg.value(metadata i64 %153, metadata !539, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32 0, metadata !540, metadata !DIExpression()), !dbg !646
  %154 = icmp eq i32 %145, 0, !dbg !652
  br i1 %154, label %165, label %155, !dbg !655

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %165, label %157, !dbg !655

157:                                              ; preds = %155, %162
  %158 = phi i32 [ %163, %162 ], [ 0, %155 ]
  call void @llvm.dbg.value(metadata i32 %158, metadata !540, metadata !DIExpression()), !dbg !646
  %159 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %158, !dbg !656
  %160 = load i64, i64* %159, align 8, !dbg !656, !tbaa !392
  %161 = icmp ult i64 %149, %160, !dbg !659
  br i1 %161, label %165, label %162, !dbg !660

162:                                              ; preds = %157
  %163 = add nuw nsw i32 %158, 1, !dbg !661
  call void @llvm.dbg.value(metadata i32 %163, metadata !540, metadata !DIExpression()), !dbg !646
  %164 = icmp ult i32 %163, %145, !dbg !652
  br i1 %164, label %157, label %165, !dbg !655, !llvm.loop !662

165:                                              ; preds = %162, %157, %155, %144
  %166 = phi i32 [ 0, %144 ], [ %145, %155 ], [ %158, %157 ], [ %145, %162 ], !dbg !664
  call void @llvm.dbg.value(metadata i32 %145, metadata !541, metadata !DIExpression()), !dbg !665
  %167 = icmp ugt i32 %145, %166, !dbg !666
  br i1 %167, label %177, label %168, !dbg !668

168:                                              ; preds = %177, %165
  %169 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 1, !dbg !669
  %170 = load i32, i32* %169, align 4, !dbg !669, !tbaa !670
  %171 = sext i32 %170 to i64, !dbg !671
  %172 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %166, !dbg !672
  store i64 %171, i64* %172, align 8, !dbg !673, !tbaa !392
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %166, !dbg !674
  store i64 %149, i64* %173, align 8, !dbg !675, !tbaa !392
  %174 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %166, !dbg !676
  store i64 %153, i64* %174, align 8, !dbg !677, !tbaa !392
  %175 = add nuw nsw i32 %145, 1, !dbg !678
  call void @llvm.dbg.value(metadata i32 %175, metadata !534, metadata !DIExpression()), !dbg !632
  %176 = icmp slt i32 %175, %87, !dbg !679
  br i1 %176, label %144, label %138, !dbg !633, !llvm.loop !680

177:                                              ; preds = %165, %177
  %178 = phi i32 [ %179, %177 ], [ %145, %165 ]
  call void @llvm.dbg.value(metadata i32 %178, metadata !541, metadata !DIExpression()), !dbg !665
  %179 = add nsw i32 %178, -1, !dbg !682
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %179, !dbg !684
  %181 = load i64, i64* %180, align 8, !dbg !684, !tbaa !392
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %178, !dbg !685
  store i64 %181, i64* %182, align 8, !dbg !686, !tbaa !392
  %183 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %179, !dbg !687
  %184 = load i64, i64* %183, align 8, !dbg !687, !tbaa !392
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %178, !dbg !688
  store i64 %184, i64* %185, align 8, !dbg !689, !tbaa !392
  %186 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %179, !dbg !690
  %187 = load i64, i64* %186, align 8, !dbg !690, !tbaa !392
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %178, !dbg !691
  store i64 %187, i64* %188, align 8, !dbg !692, !tbaa !392
  call void @llvm.dbg.value(metadata i32 %179, metadata !541, metadata !DIExpression()), !dbg !665
  %189 = icmp sgt i32 %179, %166, !dbg !666
  br i1 %189, label %177, label %168, !dbg !668, !llvm.loop !693

190:                                              ; preds = %142, %194
  %191 = phi i64 [ %143, %142 ], [ %199, %194 ], !dbg !640
  %192 = phi i64 [ %140, %142 ], [ %196, %194 ]
  %193 = icmp eq i64 %192, %191, !dbg !695
  br i1 %193, label %194, label %243, !dbg !696

194:                                              ; preds = %190
  %195 = load i64, i64* %37, align 8, !dbg !697, !tbaa !392
  %196 = mul i64 %195, %191, !dbg !698
  store i64 %196, i64* %36, align 8, !dbg !698, !tbaa !421
  call void @llvm.dbg.value(metadata i32 1, metadata !543, metadata !DIExpression()), !dbg !699
  %197 = load i64, i64* %40, align 8, !dbg !700, !tbaa !392
  store i64 %197, i64* %37, align 8, !dbg !703, !tbaa !392
  %198 = load i64, i64* %41, align 8, !dbg !704, !tbaa !392
  store i64 %198, i64* %38, align 8, !dbg !705, !tbaa !392
  %199 = load i64, i64* %42, align 8, !dbg !706, !tbaa !392
  store i64 %199, i64* %39, align 8, !dbg !707, !tbaa !392
  call void @llvm.dbg.value(metadata i32 2, metadata !543, metadata !DIExpression()), !dbg !699
  %200 = load i64, i64* %43, align 8, !dbg !700, !tbaa !392
  store i64 %200, i64* %40, align 8, !dbg !703, !tbaa !392
  %201 = load i64, i64* %44, align 8, !dbg !704, !tbaa !392
  store i64 %201, i64* %41, align 8, !dbg !705, !tbaa !392
  %202 = load i64, i64* %45, align 8, !dbg !706, !tbaa !392
  store i64 %202, i64* %42, align 8, !dbg !707, !tbaa !392
  call void @llvm.dbg.value(metadata i32 3, metadata !543, metadata !DIExpression()), !dbg !699
  %203 = load i64, i64* %46, align 8, !dbg !700, !tbaa !392
  store i64 %203, i64* %43, align 8, !dbg !703, !tbaa !392
  %204 = load i64, i64* %47, align 8, !dbg !704, !tbaa !392
  store i64 %204, i64* %44, align 8, !dbg !705, !tbaa !392
  %205 = load i64, i64* %48, align 8, !dbg !706, !tbaa !392
  store i64 %205, i64* %45, align 8, !dbg !707, !tbaa !392
  call void @llvm.dbg.value(metadata i32 4, metadata !543, metadata !DIExpression()), !dbg !699
  %206 = load i64, i64* %49, align 8, !dbg !700, !tbaa !392
  store i64 %206, i64* %46, align 8, !dbg !703, !tbaa !392
  %207 = load i64, i64* %50, align 8, !dbg !704, !tbaa !392
  store i64 %207, i64* %47, align 8, !dbg !705, !tbaa !392
  %208 = load i64, i64* %51, align 8, !dbg !706, !tbaa !392
  store i64 %208, i64* %48, align 8, !dbg !707, !tbaa !392
  call void @llvm.dbg.value(metadata i32 5, metadata !543, metadata !DIExpression()), !dbg !699
  %209 = load i64, i64* %52, align 8, !dbg !700, !tbaa !392
  store i64 %209, i64* %49, align 8, !dbg !703, !tbaa !392
  %210 = load i64, i64* %53, align 8, !dbg !704, !tbaa !392
  store i64 %210, i64* %50, align 8, !dbg !705, !tbaa !392
  %211 = load i64, i64* %54, align 8, !dbg !706, !tbaa !392
  store i64 %211, i64* %51, align 8, !dbg !707, !tbaa !392
  call void @llvm.dbg.value(metadata i32 6, metadata !543, metadata !DIExpression()), !dbg !699
  %212 = load i64, i64* %55, align 8, !dbg !700, !tbaa !392
  store i64 %212, i64* %52, align 8, !dbg !703, !tbaa !392
  %213 = load i64, i64* %56, align 8, !dbg !704, !tbaa !392
  store i64 %213, i64* %53, align 8, !dbg !705, !tbaa !392
  %214 = load i64, i64* %57, align 8, !dbg !706, !tbaa !392
  store i64 %214, i64* %54, align 8, !dbg !707, !tbaa !392
  call void @llvm.dbg.value(metadata i32 7, metadata !543, metadata !DIExpression()), !dbg !699
  %215 = load i64, i64* %58, align 8, !dbg !700, !tbaa !392
  store i64 %215, i64* %55, align 8, !dbg !703, !tbaa !392
  %216 = load i64, i64* %59, align 8, !dbg !704, !tbaa !392
  store i64 %216, i64* %56, align 8, !dbg !705, !tbaa !392
  %217 = load i64, i64* %60, align 8, !dbg !706, !tbaa !392
  store i64 %217, i64* %57, align 8, !dbg !707, !tbaa !392
  call void @llvm.dbg.value(metadata i32 8, metadata !543, metadata !DIExpression()), !dbg !699
  %218 = load i64, i64* %61, align 8, !dbg !700, !tbaa !392
  store i64 %218, i64* %58, align 8, !dbg !703, !tbaa !392
  %219 = load i64, i64* %62, align 8, !dbg !704, !tbaa !392
  store i64 %219, i64* %59, align 8, !dbg !705, !tbaa !392
  %220 = load i64, i64* %63, align 8, !dbg !706, !tbaa !392
  store i64 %220, i64* %60, align 8, !dbg !707, !tbaa !392
  call void @llvm.dbg.value(metadata i32 9, metadata !543, metadata !DIExpression()), !dbg !699
  %221 = load i64, i64* %64, align 8, !dbg !700, !tbaa !392
  store i64 %221, i64* %61, align 8, !dbg !703, !tbaa !392
  %222 = load i64, i64* %65, align 8, !dbg !704, !tbaa !392
  store i64 %222, i64* %62, align 8, !dbg !705, !tbaa !392
  %223 = load i64, i64* %66, align 8, !dbg !706, !tbaa !392
  store i64 %223, i64* %63, align 8, !dbg !707, !tbaa !392
  call void @llvm.dbg.value(metadata i32 10, metadata !543, metadata !DIExpression()), !dbg !699
  %224 = load i64, i64* %67, align 8, !dbg !700, !tbaa !392
  store i64 %224, i64* %64, align 8, !dbg !703, !tbaa !392
  %225 = load i64, i64* %68, align 8, !dbg !704, !tbaa !392
  store i64 %225, i64* %65, align 8, !dbg !705, !tbaa !392
  %226 = load i64, i64* %69, align 8, !dbg !706, !tbaa !392
  store i64 %226, i64* %66, align 8, !dbg !707, !tbaa !392
  call void @llvm.dbg.value(metadata i32 11, metadata !543, metadata !DIExpression()), !dbg !699
  %227 = load i64, i64* %70, align 8, !dbg !700, !tbaa !392
  store i64 %227, i64* %67, align 8, !dbg !703, !tbaa !392
  %228 = load i64, i64* %71, align 8, !dbg !704, !tbaa !392
  store i64 %228, i64* %68, align 8, !dbg !705, !tbaa !392
  %229 = load i64, i64* %72, align 8, !dbg !706, !tbaa !392
  store i64 %229, i64* %69, align 8, !dbg !707, !tbaa !392
  call void @llvm.dbg.value(metadata i32 12, metadata !543, metadata !DIExpression()), !dbg !699
  %230 = load i64, i64* %73, align 8, !dbg !700, !tbaa !392
  store i64 %230, i64* %70, align 8, !dbg !703, !tbaa !392
  %231 = load i64, i64* %74, align 8, !dbg !704, !tbaa !392
  store i64 %231, i64* %71, align 8, !dbg !705, !tbaa !392
  %232 = load i64, i64* %75, align 8, !dbg !706, !tbaa !392
  store i64 %232, i64* %72, align 8, !dbg !707, !tbaa !392
  call void @llvm.dbg.value(metadata i32 13, metadata !543, metadata !DIExpression()), !dbg !699
  %233 = load i64, i64* %76, align 8, !dbg !700, !tbaa !392
  store i64 %233, i64* %73, align 8, !dbg !703, !tbaa !392
  %234 = load i64, i64* %77, align 8, !dbg !704, !tbaa !392
  store i64 %234, i64* %74, align 8, !dbg !705, !tbaa !392
  %235 = load i64, i64* %78, align 8, !dbg !706, !tbaa !392
  store i64 %235, i64* %75, align 8, !dbg !707, !tbaa !392
  call void @llvm.dbg.value(metadata i32 14, metadata !543, metadata !DIExpression()), !dbg !699
  %236 = load i64, i64* %79, align 8, !dbg !700, !tbaa !392
  store i64 %236, i64* %76, align 8, !dbg !703, !tbaa !392
  %237 = load i64, i64* %80, align 8, !dbg !704, !tbaa !392
  store i64 %237, i64* %77, align 8, !dbg !705, !tbaa !392
  %238 = load i64, i64* %81, align 8, !dbg !706, !tbaa !392
  store i64 %238, i64* %78, align 8, !dbg !707, !tbaa !392
  call void @llvm.dbg.value(metadata i32 15, metadata !543, metadata !DIExpression()), !dbg !699
  %239 = load i64, i64* %82, align 8, !dbg !700, !tbaa !392
  store i64 %239, i64* %79, align 8, !dbg !703, !tbaa !392
  %240 = load i64, i64* %83, align 8, !dbg !704, !tbaa !392
  store i64 %240, i64* %80, align 8, !dbg !705, !tbaa !392
  %241 = load i64, i64* %84, align 8, !dbg !706, !tbaa !392
  store i64 %241, i64* %81, align 8, !dbg !707, !tbaa !392
  call void @llvm.dbg.value(metadata i32 16, metadata !543, metadata !DIExpression()), !dbg !699
  store i64 1, i64* %82, align 8, !dbg !708, !tbaa !392
  store i64 0, i64* %83, align 8, !dbg !709, !tbaa !392
  store i64 0, i64* %84, align 8, !dbg !710, !tbaa !392
  %242 = icmp eq i64 %196, %198, !dbg !638
  br i1 %242, label %190, label %243, !dbg !639, !llvm.loop !711

243:                                              ; preds = %190, %194, %130, %138
  %244 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !713
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %244, i8* nonnull align 8 dereferenceable(416) %7, i32 416, i1 false), !dbg !713, !tbaa.struct !714
  br label %245, !dbg !715

245:                                              ; preds = %243, %136, %126
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #9, !dbg !716
  ret void, !dbg !716
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

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
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !750
  %4 = load i64, i64* %3, align 8, !dbg !750, !tbaa !751
  %5 = and i64 %4, 2, !dbg !752
  %6 = icmp eq i64 %5, 0, !dbg !753
  br i1 %6, label %102, label %7, !dbg !754

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !755
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !755
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !755
  %8 = tail call i8* @malloc(i32 1024) #7, !dbg !757
  %9 = icmp eq i8* %8, null, !dbg !758
  br i1 %9, label %12, label %10, !dbg !759

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i32 1023, !dbg !760
  store i8 0, i8* %11, align 1, !dbg !761, !tbaa !495
  br label %12, !dbg !762

12:                                               ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !763
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !764
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !764
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !766
  %15 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !767
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !772
  call void @llvm.dbg.value(metadata i8* %15, metadata !771, metadata !DIExpression()) #9, !dbg !772
  %16 = tail call i8* @halide_pointer_to_string(i8* %14, i8* %13, i8* %15) #7, !dbg !774
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !775
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !775
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %13, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !777
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !778
  br i1 %9, label %18, label %19, !dbg !780

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !781
  br label %26, !dbg !782

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !783
  %20 = ptrtoint i8* %17 to i32, !dbg !785
  %21 = ptrtoint i8* %8 to i32, !dbg !785
  %22 = add i32 %20, 1, !dbg !785
  %23 = sub i32 %22, %21, !dbg !786
  %24 = sext i32 %23 to i64, !dbg !787
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %24) #7, !dbg !788
  tail call void @halide_print(i8* %0, i8* nonnull %8) #7, !dbg !789
  br label %26

26:                                               ; preds = %19, %18
  tail call void @free(i8* %8) #7, !dbg !790
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !791
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !dbg !791, !tbaa !792
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %28, metadata !735, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()), !dbg !799
  %29 = load i64, i64* %3, align 8, !dbg !801, !tbaa !751
  %30 = and i64 %29, 1, !dbg !802
  %31 = icmp eq i64 %30, 0, !dbg !803
  br i1 %31, label %51, label %32, !dbg !804

32:                                               ; preds = %26
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !805
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !805
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !805
  %33 = tail call i8* @malloc(i32 1024) #7, !dbg !808
  %34 = icmp eq i8* %33, null, !dbg !809
  br i1 %34, label %37, label %35, !dbg !810

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, i8* %33, i32 1023, !dbg !811
  store i8 0, i8* %36, align 1, !dbg !812, !tbaa !495
  br label %37, !dbg !813

37:                                               ; preds = %32, %35
  %38 = phi i8* [ %36, %35 ], [ null, %32 ], !dbg !814
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !815
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !815
  %39 = tail call i8* @halide_string_to_string(i8* %33, i8* %38, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !817
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !818
  call void @llvm.dbg.value(metadata i8* %15, metadata !771, metadata !DIExpression()) #9, !dbg !818
  %40 = tail call i8* @halide_pointer_to_string(i8* %39, i8* %38, i8* nonnull %15) #7, !dbg !820
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !821
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !821
  %41 = tail call i8* @halide_string_to_string(i8* %40, i8* %38, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !823
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !824
  br i1 %34, label %42, label %43, !dbg !826

42:                                               ; preds = %37
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !827
  br label %50, !dbg !828

43:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !829
  %44 = ptrtoint i8* %41 to i32, !dbg !831
  %45 = ptrtoint i8* %33 to i32, !dbg !831
  %46 = add i32 %44, 1, !dbg !831
  %47 = sub i32 %46, %45, !dbg !832
  %48 = sext i32 %47 to i64, !dbg !833
  %49 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %33, i64 %48) #7, !dbg !834
  tail call void @halide_print(i8* %0, i8* nonnull %33) #7, !dbg !835
  br label %50

50:                                               ; preds = %43, %42
  tail call void @free(i8* %33) #7, !dbg !836
  br label %102, !dbg !837

51:                                               ; preds = %26
  %52 = icmp eq %struct.halide_device_interface_t* %28, null, !dbg !838
  br i1 %52, label %53, label %72, !dbg !840

53:                                               ; preds = %51
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !841
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !841
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !841
  %54 = tail call i8* @malloc(i32 1024) #7, !dbg !844
  %55 = icmp eq i8* %54, null, !dbg !845
  br i1 %55, label %58, label %56, !dbg !846

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, i8* %54, i32 1023, !dbg !847
  store i8 0, i8* %57, align 1, !dbg !848, !tbaa !495
  br label %58, !dbg !849

58:                                               ; preds = %53, %56
  %59 = phi i8* [ %57, %56 ], [ null, %53 ], !dbg !850
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !851
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !851
  %60 = tail call i8* @halide_string_to_string(i8* %54, i8* %59, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !853
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !854
  call void @llvm.dbg.value(metadata i8* %15, metadata !771, metadata !DIExpression()) #9, !dbg !854
  %61 = tail call i8* @halide_pointer_to_string(i8* %60, i8* %59, i8* nonnull %15) #7, !dbg !856
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !857
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !857
  %62 = tail call i8* @halide_string_to_string(i8* %61, i8* %59, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !859
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !860
  br i1 %55, label %63, label %64, !dbg !862

63:                                               ; preds = %58
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !863
  br label %71, !dbg !864

64:                                               ; preds = %58
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !865
  %65 = ptrtoint i8* %62 to i32, !dbg !867
  %66 = ptrtoint i8* %54 to i32, !dbg !867
  %67 = add i32 %65, 1, !dbg !867
  %68 = sub i32 %67, %66, !dbg !868
  %69 = sext i32 %68 to i64, !dbg !869
  %70 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %54, i64 %69) #7, !dbg !870
  tail call void @halide_print(i8* %0, i8* nonnull %54) #7, !dbg !871
  br label %71

71:                                               ; preds = %64, %63
  tail call void @free(i8* %54) #7, !dbg !872
  br label %102, !dbg !873

72:                                               ; preds = %51
  %73 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %28, i32 0, i32 15, !dbg !874
  %74 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %73, align 4, !dbg !874, !tbaa !875
  %75 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %74, i32 0, i32 6, !dbg !877
  %76 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %75, align 4, !dbg !877, !tbaa !878
  %77 = tail call i32 %76(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !880
  call void @llvm.dbg.value(metadata i32 %77, metadata !736, metadata !DIExpression()), !dbg !737
  %78 = icmp eq i32 %77, 0, !dbg !881
  br i1 %78, label %98, label %79, !dbg !883

79:                                               ; preds = %72
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !884
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !884
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !884
  %80 = tail call i8* @malloc(i32 1024) #7, !dbg !887
  %81 = icmp eq i8* %80, null, !dbg !888
  br i1 %81, label %84, label %82, !dbg !889

82:                                               ; preds = %79
  %83 = getelementptr inbounds i8, i8* %80, i32 1023, !dbg !890
  store i8 0, i8* %83, align 1, !dbg !891, !tbaa !495
  br label %84, !dbg !892

84:                                               ; preds = %79, %82
  %85 = phi i8* [ %83, %82 ], [ null, %79 ], !dbg !893
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !894
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !894
  %86 = tail call i8* @halide_string_to_string(i8* %80, i8* %85, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !896
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !897
  call void @llvm.dbg.value(metadata i8* %15, metadata !771, metadata !DIExpression()) #9, !dbg !897
  %87 = tail call i8* @halide_pointer_to_string(i8* %86, i8* %85, i8* nonnull %15) #7, !dbg !899
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !900
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !900
  %88 = tail call i8* @halide_string_to_string(i8* %87, i8* %85, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !902
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !903
  br i1 %81, label %89, label %90, !dbg !905

89:                                               ; preds = %84
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !906
  br label %97, !dbg !907

90:                                               ; preds = %84
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !908
  %91 = ptrtoint i8* %88 to i32, !dbg !910
  %92 = ptrtoint i8* %80 to i32, !dbg !910
  %93 = add i32 %91, 1, !dbg !910
  %94 = sub i32 %93, %92, !dbg !911
  %95 = sext i32 %94 to i64, !dbg !912
  %96 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %80, i64 %95) #7, !dbg !913
  tail call void @halide_print(i8* %0, i8* nonnull %80) #7, !dbg !914
  br label %97

97:                                               ; preds = %90, %89
  tail call void @free(i8* %80) #7, !dbg !915
  br label %102, !dbg !916

98:                                               ; preds = %72
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !917, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i1 false, metadata !920, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !921
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !923, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i32 2, metadata !926, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i1 false, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !928
  %99 = load i64, i64* %3, align 8, !dbg !930, !tbaa !751
  %100 = and i64 %99, -3, !dbg !930
  store i64 %100, i64* %3, align 8, !dbg !930, !tbaa !751
  %101 = tail call i32 @halide_msan_annotate_buffer_is_initialized(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !933
  br label %102, !dbg !934

102:                                              ; preds = %50, %71, %98, %97, %2
  %103 = phi i32 [ 0, %2 ], [ -14, %50 ], [ -19, %71 ], [ -14, %97 ], [ 0, %98 ], !dbg !737
  ret i32 %103, !dbg !935
}

declare !dbg !936 dso_local i32 @halide_msan_annotate_buffer_is_initialized(i8*, %struct.halide_buffer_t*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_device_release(i8* %0, %struct.halide_device_interface_t* %1) local_unnamed_addr #0 !dbg !937 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !939, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %1, metadata !940, metadata !DIExpression()), !dbg !941
  %3 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %1, i32 0, i32 15, !dbg !942
  %4 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %3, align 4, !dbg !942, !tbaa !875
  %5 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %4, i32 0, i32 5, !dbg !943
  %6 = load i32 (i8*)*, i32 (i8*)** %5, align 4, !dbg !943, !tbaa !944
  %7 = tail call i32 %6(i8* %0) #7, !dbg !945
  ret void, !dbg !946
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !947 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !949, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !950, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !966, metadata !DIExpression()) #9, !dbg !971
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !969, metadata !DIExpression()) #9, !dbg !971
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !951, metadata !DIExpression()), !dbg !965
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !973
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()) #9, !dbg !988
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !981, metadata !DIExpression()) #9, !dbg !988
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), metadata !982, metadata !DIExpression()) #9, !dbg !988
  %3 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !990
  br i1 %3, label %4, label %6, !dbg !992

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !993
  br label %48, !dbg !995

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !983, metadata !DIExpression()) #9, !dbg !988
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !996
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !996
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !996
  %7 = tail call i8* @malloc(i32 1024) #7, !dbg !998
  %8 = icmp eq i8* %7, null, !dbg !999
  br i1 %8, label %11, label %9, !dbg !1000

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i32 1023, !dbg !1001
  store i8 0, i8* %10, align 1, !dbg !1002, !tbaa !495
  br label %11, !dbg !1003

11:                                               ; preds = %9, %6
  %12 = phi i8* [ %10, %9 ], [ null, %6 ], !dbg !1004
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1005
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1005
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %12, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !1007
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1008
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1008
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %12, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0)) #7, !dbg !1010
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !1015
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !1015
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %12, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1017
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1018
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1018
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %12, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !1020
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1021
  br i1 %8, label %17, label %18, !dbg !1023

17:                                               ; preds = %11
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1024
  br label %25, !dbg !1025

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1026
  %19 = ptrtoint i8* %16 to i32, !dbg !1028
  %20 = ptrtoint i8* %7 to i32, !dbg !1028
  %21 = sub i32 1, %20, !dbg !1028
  %22 = add i32 %21, %19, !dbg !1029
  %23 = sext i32 %22 to i64, !dbg !1030
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %23) #7, !dbg !1031
  tail call void @halide_print(i8* %0, i8* nonnull %7) #7, !dbg !1032
  br label %25

25:                                               ; preds = %18, %17
  tail call void @free(i8* %7) #7, !dbg !1033
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !1034
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !dbg !1034, !tbaa !792
  %28 = icmp eq %struct.halide_device_interface_t* %27, null, !dbg !1035
  call void @llvm.dbg.value(metadata i1 %28, metadata !984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !988
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1036
  %30 = load i64, i64* %29, align 8, !dbg !1036, !tbaa !560
  %31 = icmp eq i64 %30, 0, !dbg !1037
  call void @llvm.dbg.value(metadata i1 %31, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !988
  %32 = xor i1 %28, true, !dbg !1038
  %33 = or i1 %31, %32, !dbg !1038
  br i1 %33, label %36, label %34, !dbg !1038

34:                                               ; preds = %25
  %35 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1040
  br label %48, !dbg !1042

36:                                               ; preds = %25
  %37 = xor i1 %31, true, !dbg !1043
  %38 = or i1 %28, %37, !dbg !1043
  br i1 %38, label %41, label %39, !dbg !1043

39:                                               ; preds = %36
  %40 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !1045
  br label %48, !dbg !1047

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()) #9, !dbg !1048
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1050
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !1050
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !1052
  %43 = load i64, i64* %42, align 8, !dbg !1052, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !988
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1053
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !1053
  call void @llvm.dbg.value(metadata i1 undef, metadata !987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !988
  %44 = and i64 %43, 3, !dbg !1056
  %45 = icmp eq i64 %44, 3, !dbg !1056
  br i1 %45, label %46, label %51, !dbg !1056

46:                                               ; preds = %41
  %47 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !1058
  br label %48, !dbg !1060

48:                                               ; preds = %4, %34, %39, %46
  %49 = phi i32 [ %5, %4 ], [ %40, %39 ], [ %35, %34 ], [ %47, %46 ], !dbg !988
  call void @llvm.dbg.value(metadata i32 %49, metadata !964, metadata !DIExpression()), !dbg !965
  %50 = icmp eq i32 %49, 0, !dbg !1061
  br i1 %50, label %51, label %53, !dbg !1063

51:                                               ; preds = %41, %48
  %52 = tail call i32 @_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #8, !dbg !1064
  br label %53, !dbg !1065

53:                                               ; preds = %48, %51
  %54 = phi i32 [ %52, %51 ], [ %49, %48 ], !dbg !965
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1066, metadata !DIExpression()) #9, !dbg !1069
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !1071
  ret i32 %54, !dbg !1073
}

; Function Attrs: nounwind
define weak dso_local i32 @copy_to_device_already_locked(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #4 !dbg !1074 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1076, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1077, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !1078, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i32 0, metadata !1079, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()) #9, !dbg !1081
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !981, metadata !DIExpression()) #9, !dbg !1081
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), metadata !982, metadata !DIExpression()) #9, !dbg !1081
  %4 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !1083
  br i1 %4, label %5, label %7, !dbg !1084

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !1085
  br label %49, !dbg !1086

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !983, metadata !DIExpression()) #9, !dbg !1081
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !1087
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !1087
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !1087
  %8 = tail call i8* @malloc(i32 1024) #7, !dbg !1089
  %9 = icmp eq i8* %8, null, !dbg !1090
  br i1 %9, label %12, label %10, !dbg !1091

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i32 1023, !dbg !1092
  store i8 0, i8* %11, align 1, !dbg !1093, !tbaa !495
  br label %12, !dbg !1094

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !1095
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1096
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1096
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !1098
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1099
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1099
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0)) #7, !dbg !1101
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !1102
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !1102
  %16 = tail call i8* @halide_buffer_to_string(i8* %15, i8* %13, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1104
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1105
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1105
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !1107
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1108
  br i1 %9, label %18, label %19, !dbg !1110

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1111
  br label %26, !dbg !1112

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1113
  %20 = ptrtoint i8* %17 to i32, !dbg !1115
  %21 = ptrtoint i8* %8 to i32, !dbg !1115
  %22 = sub i32 1, %21, !dbg !1115
  %23 = add i32 %22, %20, !dbg !1116
  %24 = sext i32 %23 to i64, !dbg !1117
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %24) #7, !dbg !1118
  tail call void @halide_print(i8* %0, i8* nonnull %8) #7, !dbg !1119
  br label %26

26:                                               ; preds = %19, %18
  tail call void @free(i8* %8) #7, !dbg !1120
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !1121
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !dbg !1121, !tbaa !792
  %29 = icmp eq %struct.halide_device_interface_t* %28, null, !dbg !1122
  call void @llvm.dbg.value(metadata i1 %29, metadata !984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1081
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1123
  %31 = load i64, i64* %30, align 8, !dbg !1123, !tbaa !560
  %32 = icmp eq i64 %31, 0, !dbg !1124
  call void @llvm.dbg.value(metadata i1 %32, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1081
  %33 = xor i1 %29, true, !dbg !1125
  %34 = or i1 %32, %33, !dbg !1125
  br i1 %34, label %37, label %35, !dbg !1125

35:                                               ; preds = %26
  %36 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1126
  br label %49, !dbg !1127

37:                                               ; preds = %26
  %38 = xor i1 %32, true, !dbg !1128
  %39 = or i1 %29, %38, !dbg !1128
  br i1 %39, label %42, label %40, !dbg !1128

40:                                               ; preds = %37
  %41 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !1129
  br label %49, !dbg !1130

42:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()) #9, !dbg !1131
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1133
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !1133
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !1135
  %44 = load i64, i64* %43, align 8, !dbg !1135, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1081
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1136
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !1136
  call void @llvm.dbg.value(metadata i1 undef, metadata !987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1081
  %45 = and i64 %44, 3, !dbg !1139
  %46 = icmp eq i64 %45, 3, !dbg !1139
  br i1 %46, label %47, label %52, !dbg !1139

47:                                               ; preds = %42
  %48 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !1140
  br label %49, !dbg !1141

49:                                               ; preds = %5, %35, %40, %47
  %50 = phi i32 [ %6, %5 ], [ %41, %40 ], [ %36, %35 ], [ %48, %47 ], !dbg !1081
  call void @llvm.dbg.value(metadata i32 %50, metadata !1079, metadata !DIExpression()), !dbg !1080
  %51 = icmp eq i32 %50, 0, !dbg !1142
  br i1 %51, label %52, label %222, !dbg !1144

52:                                               ; preds = %42, %49
  %53 = icmp eq %struct.halide_device_interface_t* %2, null, !dbg !1145
  br i1 %53, label %54, label %79, !dbg !1147

54:                                               ; preds = %52
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !1148
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !1148
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !1148
  %55 = tail call i8* @malloc(i32 1024) #7, !dbg !1151
  %56 = icmp eq i8* %55, null, !dbg !1152
  br i1 %56, label %59, label %57, !dbg !1153

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, i8* %55, i32 1023, !dbg !1154
  store i8 0, i8* %58, align 1, !dbg !1155, !tbaa !495
  br label %59, !dbg !1156

59:                                               ; preds = %54, %57
  %60 = phi i8* [ %58, %57 ], [ null, %54 ], !dbg !1157
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1158
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1158
  %61 = tail call i8* @halide_string_to_string(i8* %55, i8* %60, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !1160
  %62 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !1161
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1162
  call void @llvm.dbg.value(metadata i8* %62, metadata !771, metadata !DIExpression()) #9, !dbg !1162
  %63 = tail call i8* @halide_pointer_to_string(i8* %61, i8* %60, i8* %62) #7, !dbg !1164
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1165
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1165
  %64 = tail call i8* @halide_string_to_string(i8* %63, i8* %60, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !1167
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1168
  br i1 %56, label %65, label %66, !dbg !1170

65:                                               ; preds = %59
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1171
  br label %73, !dbg !1172

66:                                               ; preds = %59
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1173
  %67 = ptrtoint i8* %64 to i32, !dbg !1175
  %68 = ptrtoint i8* %55 to i32, !dbg !1175
  %69 = add i32 %67, 1, !dbg !1175
  %70 = sub i32 %69, %68, !dbg !1176
  %71 = sext i32 %70 to i64, !dbg !1177
  %72 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %55, i64 %71) #7, !dbg !1178
  tail call void @halide_print(i8* %0, i8* nonnull %55) #7, !dbg !1179
  br label %73

73:                                               ; preds = %66, %65
  tail call void @free(i8* %55) #7, !dbg !1180
  %74 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !1181
  %75 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %74, align 8, !dbg !1181, !tbaa !792
  %76 = icmp eq %struct.halide_device_interface_t* %75, null, !dbg !1183
  br i1 %76, label %77, label %79, !dbg !1184

77:                                               ; preds = %73
  %78 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1185
  br label %222, !dbg !1187

79:                                               ; preds = %73, %52
  %80 = phi %struct.halide_device_interface_t* [ %2, %52 ], [ %75, %73 ]
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %80, metadata !1078, metadata !DIExpression()), !dbg !1080
  %81 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1188
  %82 = load i64, i64* %81, align 8, !dbg !1188, !tbaa !560
  %83 = icmp eq i64 %82, 0, !dbg !1190
  br i1 %83, label %89, label %84, !dbg !1191

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !1192
  %86 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %85, align 8, !dbg !1192, !tbaa !792
  %87 = icmp eq %struct.halide_device_interface_t* %86, %80, !dbg !1193
  br i1 %87, label %112, label %88, !dbg !1194

88:                                               ; preds = %84
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i32 0, i32 0)) #7, !dbg !1195
  br label %222, !dbg !1197

89:                                               ; preds = %79
  %90 = tail call i32 @halide_device_malloc(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* nonnull %80) #8, !dbg !1198
  call void @llvm.dbg.value(metadata i32 %90, metadata !1079, metadata !DIExpression()), !dbg !1080
  %91 = icmp eq i32 %90, 0, !dbg !1201
  br i1 %91, label %112, label %92, !dbg !1203

92:                                               ; preds = %89
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !1204
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !1204
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !1204
  %93 = tail call i8* @malloc(i32 1024) #7, !dbg !1207
  %94 = icmp eq i8* %93, null, !dbg !1208
  br i1 %94, label %97, label %95, !dbg !1209

95:                                               ; preds = %92
  %96 = getelementptr inbounds i8, i8* %93, i32 1023, !dbg !1210
  store i8 0, i8* %96, align 1, !dbg !1211, !tbaa !495
  br label %97, !dbg !1212

97:                                               ; preds = %92, %95
  %98 = phi i8* [ %96, %95 ], [ null, %92 ], !dbg !1213
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1214
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1214
  %99 = tail call i8* @halide_string_to_string(i8* %93, i8* %98, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !1216
  %100 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !1217
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %100, metadata !771, metadata !DIExpression()) #9, !dbg !1218
  %101 = tail call i8* @halide_pointer_to_string(i8* %99, i8* %98, i8* %100) #7, !dbg !1220
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1221
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1221
  %102 = tail call i8* @halide_string_to_string(i8* %101, i8* %98, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i32 0, i32 0)) #7, !dbg !1223
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1224
  br i1 %94, label %103, label %104, !dbg !1226

103:                                              ; preds = %97
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1227
  br label %111, !dbg !1228

104:                                              ; preds = %97
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1229
  %105 = ptrtoint i8* %102 to i32, !dbg !1231
  %106 = ptrtoint i8* %93 to i32, !dbg !1231
  %107 = add i32 %105, 1, !dbg !1231
  %108 = sub i32 %107, %106, !dbg !1232
  %109 = sext i32 %108 to i64, !dbg !1233
  %110 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %93, i64 %109) #7, !dbg !1234
  tail call void @halide_print(i8* %0, i8* nonnull %93) #7, !dbg !1235
  br label %111

111:                                              ; preds = %104, %103
  tail call void @free(i8* %93) #7, !dbg !1236
  br label %222, !dbg !1237

112:                                              ; preds = %84, %89
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()), !dbg !1241
  %113 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !1243
  %114 = load i64, i64* %113, align 8, !dbg !1243, !tbaa !751
  %115 = and i64 %114, 1, !dbg !1244
  %116 = icmp eq i64 %115, 0, !dbg !1245
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !1246
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !1246
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !1249
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !1246
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !1249
  %117 = tail call i8* @malloc(i32 1024) #7, !dbg !1252
  %118 = icmp eq i8* %117, null, !dbg !1252
  br i1 %116, label %204, label %119, !dbg !1253

119:                                              ; preds = %112
  br i1 %118, label %122, label %120, !dbg !1254

120:                                              ; preds = %119
  %121 = getelementptr inbounds i8, i8* %117, i32 1023, !dbg !1255
  store i8 0, i8* %121, align 1, !dbg !1256, !tbaa !495
  br label %122, !dbg !1257

122:                                              ; preds = %119, %120
  %123 = phi i8* [ %121, %120 ], [ null, %119 ], !dbg !1258
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1259
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1259
  %124 = tail call i8* @halide_string_to_string(i8* %117, i8* %123, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !1261
  %125 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !1262
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %125, metadata !771, metadata !DIExpression()) #9, !dbg !1263
  %126 = tail call i8* @halide_pointer_to_string(i8* %124, i8* %123, i8* %125) #7, !dbg !1265
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1266
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1266
  %127 = tail call i8* @halide_string_to_string(i8* %126, i8* %123, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !1268
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1269
  br i1 %118, label %128, label %129, !dbg !1271

128:                                              ; preds = %122
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1272
  br label %136, !dbg !1273

129:                                              ; preds = %122
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1274
  %130 = ptrtoint i8* %127 to i32, !dbg !1276
  %131 = ptrtoint i8* %117 to i32, !dbg !1276
  %132 = add i32 %130, 1, !dbg !1276
  %133 = sub i32 %132, %131, !dbg !1277
  %134 = sext i32 %133 to i64, !dbg !1278
  %135 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %117, i64 %134) #7, !dbg !1279
  tail call void @halide_print(i8* %0, i8* nonnull %117) #7, !dbg !1280
  br label %136

136:                                              ; preds = %129, %128
  tail call void @free(i8* %117) #7, !dbg !1281
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !738, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()), !dbg !1285
  %137 = load i64, i64* %113, align 8, !dbg !1287, !tbaa !751
  %138 = and i64 %137, 2, !dbg !1288
  %139 = icmp eq i64 %138, 0, !dbg !1289
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !1290
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !1293
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !1290
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !1293
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !1290
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !1293
  %140 = tail call i8* @malloc(i32 1024) #7, !dbg !1296
  %141 = icmp eq i8* %140, null, !dbg !1296
  br i1 %139, label %159, label %142, !dbg !1297

142:                                              ; preds = %136
  br i1 %141, label %145, label %143, !dbg !1298

143:                                              ; preds = %142
  %144 = getelementptr inbounds i8, i8* %140, i32 1023, !dbg !1299
  store i8 0, i8* %144, align 1, !dbg !1300, !tbaa !495
  br label %145, !dbg !1301

145:                                              ; preds = %142, %143
  %146 = phi i8* [ %144, %143 ], [ null, %142 ], !dbg !1302
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1303
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1303
  %147 = tail call i8* @halide_string_to_string(i8* %140, i8* %146, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !1305
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1306
  call void @llvm.dbg.value(metadata i8* %125, metadata !771, metadata !DIExpression()) #9, !dbg !1306
  %148 = tail call i8* @halide_pointer_to_string(i8* %147, i8* %146, i8* nonnull %125) #7, !dbg !1308
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1309
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1309
  %149 = tail call i8* @halide_string_to_string(i8* %148, i8* %146, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #7, !dbg !1311
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1312
  br i1 %141, label %150, label %151, !dbg !1314

150:                                              ; preds = %145
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1315
  br label %158, !dbg !1316

151:                                              ; preds = %145
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1317
  %152 = ptrtoint i8* %149 to i32, !dbg !1319
  %153 = ptrtoint i8* %140 to i32, !dbg !1319
  %154 = add i32 %152, 1, !dbg !1319
  %155 = sub i32 %154, %153, !dbg !1320
  %156 = sext i32 %155 to i64, !dbg !1321
  %157 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %140, i64 %156) #7, !dbg !1322
  tail call void @halide_print(i8* %0, i8* nonnull %140) #7, !dbg !1323
  br label %158

158:                                              ; preds = %151, %150
  tail call void @free(i8* %140) #7, !dbg !1324
  br label %222, !dbg !1325

159:                                              ; preds = %136
  br i1 %141, label %162, label %160, !dbg !1326

160:                                              ; preds = %159
  %161 = getelementptr inbounds i8, i8* %140, i32 1023, !dbg !1327
  store i8 0, i8* %161, align 1, !dbg !1328, !tbaa !495
  br label %162, !dbg !1329

162:                                              ; preds = %159, %160
  %163 = phi i8* [ %161, %160 ], [ null, %159 ], !dbg !1330
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1331
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1331
  %164 = tail call i8* @halide_string_to_string(i8* %140, i8* %163, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !1333
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1334
  call void @llvm.dbg.value(metadata i8* %125, metadata !771, metadata !DIExpression()) #9, !dbg !1334
  %165 = tail call i8* @halide_pointer_to_string(i8* %164, i8* %163, i8* nonnull %125) #7, !dbg !1336
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1337
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1337
  %166 = tail call i8* @halide_string_to_string(i8* %165, i8* %163, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0)) #7, !dbg !1339
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1340
  br i1 %141, label %167, label %168, !dbg !1342

167:                                              ; preds = %162
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1343
  br label %175, !dbg !1344

168:                                              ; preds = %162
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1345
  %169 = ptrtoint i8* %166 to i32, !dbg !1347
  %170 = ptrtoint i8* %140 to i32, !dbg !1347
  %171 = add i32 %169, 1, !dbg !1347
  %172 = sub i32 %171, %170, !dbg !1348
  %173 = sext i32 %172 to i64, !dbg !1349
  %174 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %140, i64 %173) #7, !dbg !1350
  tail call void @halide_print(i8* %0, i8* nonnull %140) #7, !dbg !1351
  br label %175

175:                                              ; preds = %168, %167
  tail call void @free(i8* %140) #7, !dbg !1352
  %176 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %80, i32 0, i32 15, !dbg !1353
  %177 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %176, align 4, !dbg !1353, !tbaa !875
  %178 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %177, i32 0, i32 7, !dbg !1354
  %179 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %178, align 4, !dbg !1354, !tbaa !1355
  %180 = tail call i32 %179(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %180, metadata !1079, metadata !DIExpression()), !dbg !1080
  %181 = icmp eq i32 %180, 0, !dbg !1357
  br i1 %181, label %182, label %185, !dbg !1359

182:                                              ; preds = %175
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1360, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i1 false, metadata !1363, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1364
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !923, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32 1, metadata !926, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i1 false, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1367
  %183 = load i64, i64* %113, align 8, !dbg !1369, !tbaa !751
  %184 = and i64 %183, -2, !dbg !1369
  store i64 %184, i64* %113, align 8, !dbg !1369, !tbaa !751
  br label %222, !dbg !1370

185:                                              ; preds = %175
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !1371
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !1371
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !1371
  %186 = tail call i8* @malloc(i32 1024) #7, !dbg !1374
  %187 = icmp eq i8* %186, null, !dbg !1375
  br i1 %187, label %190, label %188, !dbg !1376

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, i8* %186, i32 1023, !dbg !1377
  store i8 0, i8* %189, align 1, !dbg !1378, !tbaa !495
  br label %190, !dbg !1379

190:                                              ; preds = %185, %188
  %191 = phi i8* [ %189, %188 ], [ null, %185 ], !dbg !1380
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1381
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1381
  %192 = tail call i8* @halide_string_to_string(i8* %186, i8* %191, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !1383
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1384
  call void @llvm.dbg.value(metadata i8* %125, metadata !771, metadata !DIExpression()) #9, !dbg !1384
  %193 = tail call i8* @halide_pointer_to_string(i8* %192, i8* %191, i8* nonnull %125) #7, !dbg !1386
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1387
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1387
  %194 = tail call i8* @halide_string_to_string(i8* %193, i8* %191, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0)) #7, !dbg !1389
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1390
  br i1 %187, label %195, label %196, !dbg !1392

195:                                              ; preds = %190
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1393
  br label %203, !dbg !1394

196:                                              ; preds = %190
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1395
  %197 = ptrtoint i8* %194 to i32, !dbg !1397
  %198 = ptrtoint i8* %186 to i32, !dbg !1397
  %199 = add i32 %197, 1, !dbg !1397
  %200 = sub i32 %199, %198, !dbg !1398
  %201 = sext i32 %200 to i64, !dbg !1399
  %202 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %186, i64 %201) #7, !dbg !1400
  tail call void @halide_print(i8* %0, i8* nonnull %186) #7, !dbg !1401
  br label %203

203:                                              ; preds = %196, %195
  tail call void @free(i8* %186) #7, !dbg !1402
  br label %222, !dbg !1403

204:                                              ; preds = %112
  br i1 %118, label %207, label %205, !dbg !1404

205:                                              ; preds = %204
  %206 = getelementptr inbounds i8, i8* %117, i32 1023, !dbg !1405
  store i8 0, i8* %206, align 1, !dbg !1406, !tbaa !495
  br label %207, !dbg !1407

207:                                              ; preds = %204, %205
  %208 = phi i8* [ %206, %205 ], [ null, %204 ], !dbg !1408
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1409
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1409
  %209 = tail call i8* @halide_string_to_string(i8* %117, i8* %208, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !1411
  %210 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !1412
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1413
  call void @llvm.dbg.value(metadata i8* %210, metadata !771, metadata !DIExpression()) #9, !dbg !1413
  %211 = tail call i8* @halide_pointer_to_string(i8* %209, i8* %208, i8* %210) #7, !dbg !1415
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1416
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1416
  %212 = tail call i8* @halide_string_to_string(i8* %211, i8* %208, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0)) #7, !dbg !1418
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1419
  br i1 %118, label %213, label %214, !dbg !1421

213:                                              ; preds = %207
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1422
  br label %221, !dbg !1423

214:                                              ; preds = %207
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1424
  %215 = ptrtoint i8* %212 to i32, !dbg !1426
  %216 = ptrtoint i8* %117 to i32, !dbg !1426
  %217 = add i32 %215, 1, !dbg !1426
  %218 = sub i32 %217, %216, !dbg !1427
  %219 = sext i32 %218 to i64, !dbg !1428
  %220 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %117, i64 %219) #7, !dbg !1429
  tail call void @halide_print(i8* %0, i8* nonnull %117) #7, !dbg !1430
  br label %221

221:                                              ; preds = %214, %213
  tail call void @free(i8* %117) #7, !dbg !1431
  br label %222

222:                                              ; preds = %182, %221, %49, %203, %158, %111, %88, %77
  %223 = phi i32 [ %78, %77 ], [ -42, %88 ], [ %90, %111 ], [ -15, %158 ], [ -15, %203 ], [ %50, %49 ], [ 0, %221 ], [ 0, %182 ], !dbg !1080
  ret i32 %223, !dbg !1432
}

declare !dbg !1433 dso_local i32 @halide_error_no_device_interface(i8*) local_unnamed_addr #3

declare !dbg !1434 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #4 !dbg !1437 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1439, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1440, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !1441, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()) #9, !dbg !1445
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !981, metadata !DIExpression()) #9, !dbg !1445
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), metadata !982, metadata !DIExpression()) #9, !dbg !1445
  %4 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !1447
  br i1 %4, label %5, label %7, !dbg !1448

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0)) #7, !dbg !1449
  br label %49, !dbg !1450

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !983, metadata !DIExpression()) #9, !dbg !1445
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !1451
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !1451
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !1451
  %8 = tail call i8* @malloc(i32 1024) #7, !dbg !1453
  %9 = icmp eq i8* %8, null, !dbg !1454
  br i1 %9, label %12, label %10, !dbg !1455

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i32 1023, !dbg !1456
  store i8 0, i8* %11, align 1, !dbg !1457, !tbaa !495
  br label %12, !dbg !1458

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !1459
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1460
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1460
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0)) #7, !dbg !1462
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1463
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1463
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0)) #7, !dbg !1465
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !1466
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !1466
  %16 = tail call i8* @halide_buffer_to_string(i8* %15, i8* %13, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1468
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1469
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1469
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !1471
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1472
  br i1 %9, label %18, label %19, !dbg !1474

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1475
  br label %26, !dbg !1476

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1477
  %20 = ptrtoint i8* %17 to i32, !dbg !1479
  %21 = ptrtoint i8* %8 to i32, !dbg !1479
  %22 = sub i32 1, %21, !dbg !1479
  %23 = add i32 %22, %20, !dbg !1480
  %24 = sext i32 %23 to i64, !dbg !1481
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %24) #7, !dbg !1482
  tail call void @halide_print(i8* %0, i8* nonnull %8) #7, !dbg !1483
  br label %26

26:                                               ; preds = %19, %18
  tail call void @free(i8* %8) #7, !dbg !1484
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !1485
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !dbg !1485, !tbaa !792
  %29 = icmp eq %struct.halide_device_interface_t* %28, null, !dbg !1486
  call void @llvm.dbg.value(metadata i1 %29, metadata !984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1445
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1487
  %31 = load i64, i64* %30, align 8, !dbg !1487, !tbaa !560
  %32 = icmp eq i64 %31, 0, !dbg !1488
  call void @llvm.dbg.value(metadata i1 %32, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1445
  %33 = xor i1 %29, true, !dbg !1489
  %34 = or i1 %32, %33, !dbg !1489
  br i1 %34, label %37, label %35, !dbg !1489

35:                                               ; preds = %26
  %36 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1490
  br label %49, !dbg !1491

37:                                               ; preds = %26
  %38 = xor i1 %32, true, !dbg !1492
  %39 = or i1 %29, %38, !dbg !1492
  br i1 %39, label %42, label %40, !dbg !1492

40:                                               ; preds = %37
  %41 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !1493
  br label %49, !dbg !1494

42:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()) #9, !dbg !1495
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1497
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !1497
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !1499
  %44 = load i64, i64* %43, align 8, !dbg !1499, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1445
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1500
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !1500
  call void @llvm.dbg.value(metadata i1 undef, metadata !987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1445
  %45 = and i64 %44, 3, !dbg !1503
  %46 = icmp eq i64 %45, 3, !dbg !1503
  br i1 %46, label %47, label %52, !dbg !1503

47:                                               ; preds = %42
  %48 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !1504
  br label %49, !dbg !1505

49:                                               ; preds = %5, %35, %40, %47
  %50 = phi i32 [ %6, %5 ], [ %41, %40 ], [ %36, %35 ], [ %48, %47 ], !dbg !1445
  call void @llvm.dbg.value(metadata i32 %50, metadata !1442, metadata !DIExpression()), !dbg !1444
  %51 = icmp eq i32 %50, 0, !dbg !1506
  br i1 %51, label %52, label %92, !dbg !1508

52:                                               ; preds = %42, %49
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !1509
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !1509
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !1509
  %53 = tail call i8* @malloc(i32 1024) #7, !dbg !1511
  %54 = icmp eq i8* %53, null, !dbg !1512
  br i1 %54, label %57, label %55, !dbg !1513

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, i8* %53, i32 1023, !dbg !1514
  store i8 0, i8* %56, align 1, !dbg !1515, !tbaa !495
  br label %57, !dbg !1516

57:                                               ; preds = %52, %55
  %58 = phi i8* [ %56, %55 ], [ null, %52 ], !dbg !1517
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1518
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1518
  %59 = tail call i8* @halide_string_to_string(i8* %53, i8* %58, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i32 0, i32 0)) #7, !dbg !1520
  %60 = bitcast %struct.halide_device_interface_t* %2 to i8*, !dbg !1521
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1522
  call void @llvm.dbg.value(metadata i8* %60, metadata !771, metadata !DIExpression()) #9, !dbg !1522
  %61 = tail call i8* @halide_pointer_to_string(i8* %59, i8* %58, i8* %60) #7, !dbg !1524
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1525
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1525
  %62 = tail call i8* @halide_string_to_string(i8* %61, i8* %58, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !1527
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1528
  br i1 %54, label %63, label %64, !dbg !1530

63:                                               ; preds = %57
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1531
  br label %71, !dbg !1532

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1533
  %65 = ptrtoint i8* %62 to i32, !dbg !1535
  %66 = ptrtoint i8* %53 to i32, !dbg !1535
  %67 = add i32 %65, 1, !dbg !1535
  %68 = sub i32 %67, %66, !dbg !1536
  %69 = sext i32 %68 to i64, !dbg !1537
  %70 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %53, i64 %69) #7, !dbg !1538
  tail call void @halide_print(i8* %0, i8* nonnull %53) #7, !dbg !1539
  br label %71

71:                                               ; preds = %64, %63
  tail call void @free(i8* %53) #7, !dbg !1540
  %72 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !1541
  %73 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %72, align 8, !dbg !1541, !tbaa !792
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %73, metadata !1443, metadata !DIExpression()), !dbg !1444
  %74 = icmp eq %struct.halide_device_interface_t* %73, null, !dbg !1542
  %75 = icmp eq %struct.halide_device_interface_t* %73, %2
  %76 = or i1 %74, %75, !dbg !1544
  br i1 %76, label %78, label %77, !dbg !1544

77:                                               ; preds = %71
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i32 0, i32 0)) #7, !dbg !1545
  br label %92, !dbg !1547

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i32 0, i32 15, !dbg !1548
  %80 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %79, align 4, !dbg !1548, !tbaa !875
  %81 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %80, i32 0, i32 0, !dbg !1549
  %82 = load void ()*, void ()** %81, align 4, !dbg !1549, !tbaa !1550
  tail call void %82() #7, !dbg !1551
  %83 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %79, align 4, !dbg !1552, !tbaa !875
  %84 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %83, i32 0, i32 2, !dbg !1553
  %85 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %84, align 4, !dbg !1553, !tbaa !1554
  %86 = tail call i32 %85(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1555
  call void @llvm.dbg.value(metadata i32 %86, metadata !1442, metadata !DIExpression()), !dbg !1444
  %87 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %79, align 4, !dbg !1556, !tbaa !875
  %88 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %87, i32 0, i32 1, !dbg !1557
  %89 = load void ()*, void ()** %88, align 4, !dbg !1557, !tbaa !1558
  tail call void %89() #7, !dbg !1559
  %90 = icmp eq i32 %86, 0, !dbg !1560
  %91 = select i1 %90, i32 0, i32 -16, !dbg !1562
  ret i32 %91, !dbg !1562

92:                                               ; preds = %77, %49
  %93 = phi i32 [ %50, %49 ], [ -42, %77 ], !dbg !1444
  ret i32 %93, !dbg !1563
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_copy_to_device(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #4 !dbg !1564 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1566, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1567, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !1568, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !966, metadata !DIExpression()) #9, !dbg !1571
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !969, metadata !DIExpression()) #9, !dbg !1571
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !1569, metadata !DIExpression()), !dbg !1570
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !1573
  %4 = tail call i32 @copy_to_device_already_locked(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) #8, !dbg !1574
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1066, metadata !DIExpression()) #9, !dbg !1575
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !1577
  ret i32 %4, !dbg !1578
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_sync(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !1579 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1581, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1582, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()) #9, !dbg !1586
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !981, metadata !DIExpression()) #9, !dbg !1586
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), metadata !982, metadata !DIExpression()) #9, !dbg !1586
  %3 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !1588
  br i1 %3, label %4, label %6, !dbg !1589

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0)) #7, !dbg !1590
  br label %48, !dbg !1591

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !983, metadata !DIExpression()) #9, !dbg !1586
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !1592
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !1592
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !1592
  %7 = tail call i8* @malloc(i32 1024) #7, !dbg !1594
  %8 = icmp eq i8* %7, null, !dbg !1595
  br i1 %8, label %11, label %9, !dbg !1596

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i32 1023, !dbg !1597
  store i8 0, i8* %10, align 1, !dbg !1598, !tbaa !495
  br label %11, !dbg !1599

11:                                               ; preds = %9, %6
  %12 = phi i8* [ %10, %9 ], [ null, %6 ], !dbg !1600
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1601
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1601
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %12, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0)) #7, !dbg !1603
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1604
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %12, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0)) #7, !dbg !1606
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !1607
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !1607
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %12, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1609
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1610
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1610
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %12, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !1612
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1613
  br i1 %8, label %17, label %18, !dbg !1615

17:                                               ; preds = %11
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1616
  br label %25, !dbg !1617

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1618
  %19 = ptrtoint i8* %16 to i32, !dbg !1620
  %20 = ptrtoint i8* %7 to i32, !dbg !1620
  %21 = sub i32 1, %20, !dbg !1620
  %22 = add i32 %21, %19, !dbg !1621
  %23 = sext i32 %22 to i64, !dbg !1622
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %23) #7, !dbg !1623
  tail call void @halide_print(i8* %0, i8* nonnull %7) #7, !dbg !1624
  br label %25

25:                                               ; preds = %18, %17
  tail call void @free(i8* %7) #7, !dbg !1625
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !1626
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !dbg !1626, !tbaa !792
  %28 = icmp eq %struct.halide_device_interface_t* %27, null, !dbg !1627
  call void @llvm.dbg.value(metadata i1 %28, metadata !984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1586
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1628
  %30 = load i64, i64* %29, align 8, !dbg !1628, !tbaa !560
  %31 = icmp eq i64 %30, 0, !dbg !1629
  call void @llvm.dbg.value(metadata i1 %31, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1586
  %32 = xor i1 %28, true, !dbg !1630
  %33 = or i1 %31, %32, !dbg !1630
  br i1 %33, label %36, label %34, !dbg !1630

34:                                               ; preds = %25
  %35 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1631
  br label %48, !dbg !1632

36:                                               ; preds = %25
  %37 = xor i1 %31, true, !dbg !1633
  %38 = or i1 %28, %37, !dbg !1633
  br i1 %38, label %41, label %39, !dbg !1633

39:                                               ; preds = %36
  %40 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !1634
  br label %48, !dbg !1635

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()) #9, !dbg !1636
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1638
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !1638
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !1640
  %43 = load i64, i64* %42, align 8, !dbg !1640, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1586
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1641
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !1641
  call void @llvm.dbg.value(metadata i1 undef, metadata !987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1586
  %44 = and i64 %43, 3, !dbg !1644
  %45 = icmp eq i64 %44, 3, !dbg !1644
  br i1 %45, label %46, label %54, !dbg !1644

46:                                               ; preds = %41
  %47 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !1645
  br label %48, !dbg !1646

48:                                               ; preds = %4, %34, %39, %46
  %49 = phi i32 [ %5, %4 ], [ %40, %39 ], [ %35, %34 ], [ %47, %46 ], !dbg !1586
  call void @llvm.dbg.value(metadata i32 %49, metadata !1583, metadata !DIExpression()), !dbg !1585
  %50 = icmp eq i32 %49, 0, !dbg !1647
  br i1 %50, label %51, label %67, !dbg !1649

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %53 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %52, align 8, !dbg !1650, !tbaa !792
  br label %54, !dbg !1649

54:                                               ; preds = %51, %41
  %55 = phi %struct.halide_device_interface_t* [ %53, %51 ], [ %27, %41 ], !dbg !1650
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %55, metadata !1584, metadata !DIExpression()), !dbg !1585
  %56 = icmp eq %struct.halide_device_interface_t* %55, null, !dbg !1651
  br i1 %56, label %57, label %59, !dbg !1653

57:                                               ; preds = %54
  %58 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1654
  br label %67, !dbg !1656

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %55, i32 0, i32 15, !dbg !1657
  %61 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %60, align 4, !dbg !1657, !tbaa !875
  %62 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %61, i32 0, i32 4, !dbg !1658
  %63 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %62, align 4, !dbg !1658, !tbaa !1659
  %64 = tail call i32 %63(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1660
  call void @llvm.dbg.value(metadata i32 %64, metadata !1583, metadata !DIExpression()), !dbg !1585
  %65 = icmp eq i32 %64, 0, !dbg !1661
  %66 = select i1 %65, i32 0, i32 -17, !dbg !1663
  ret i32 %66, !dbg !1663

67:                                               ; preds = %57, %48
  %68 = phi i32 [ %49, %48 ], [ %58, %57 ], !dbg !1585
  ret i32 %68, !dbg !1664
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_free(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !1665 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1667, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1668, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()) #9, !dbg !1672
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !981, metadata !DIExpression()) #9, !dbg !1672
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), metadata !982, metadata !DIExpression()) #9, !dbg !1672
  %3 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !1674
  br i1 %3, label %4, label %6, !dbg !1675

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0)) #7, !dbg !1676
  br label %48, !dbg !1677

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !983, metadata !DIExpression()) #9, !dbg !1672
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !1678
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !1678
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !1678
  %7 = tail call i8* @malloc(i32 1024) #7, !dbg !1680
  %8 = icmp eq i8* %7, null, !dbg !1681
  br i1 %8, label %11, label %9, !dbg !1682

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i32 1023, !dbg !1683
  store i8 0, i8* %10, align 1, !dbg !1684, !tbaa !495
  br label %11, !dbg !1685

11:                                               ; preds = %9, %6
  %12 = phi i8* [ %10, %9 ], [ null, %6 ], !dbg !1686
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1687
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1687
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %12, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0)) #7, !dbg !1689
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1690
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1690
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %12, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0)) #7, !dbg !1692
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !1693
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !1693
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %12, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1695
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1696
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1696
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %12, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !1698
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1699
  br i1 %8, label %17, label %18, !dbg !1701

17:                                               ; preds = %11
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1702
  br label %25, !dbg !1703

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1704
  %19 = ptrtoint i8* %16 to i32, !dbg !1706
  %20 = ptrtoint i8* %7 to i32, !dbg !1706
  %21 = sub i32 1, %20, !dbg !1706
  %22 = add i32 %21, %19, !dbg !1707
  %23 = sext i32 %22 to i64, !dbg !1708
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %23) #7, !dbg !1709
  tail call void @halide_print(i8* %0, i8* nonnull %7) #7, !dbg !1710
  br label %25

25:                                               ; preds = %18, %17
  tail call void @free(i8* %7) #7, !dbg !1711
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !1712
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !dbg !1712, !tbaa !792
  %28 = icmp eq %struct.halide_device_interface_t* %27, null, !dbg !1713
  call void @llvm.dbg.value(metadata i1 %28, metadata !984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1672
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1714
  %30 = load i64, i64* %29, align 8, !dbg !1714, !tbaa !560
  %31 = icmp eq i64 %30, 0, !dbg !1715
  call void @llvm.dbg.value(metadata i1 %31, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1672
  %32 = xor i1 %28, true, !dbg !1716
  %33 = or i1 %31, %32, !dbg !1716
  br i1 %33, label %36, label %34, !dbg !1716

34:                                               ; preds = %25
  %35 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1717
  br label %48, !dbg !1718

36:                                               ; preds = %25
  %37 = xor i1 %31, true, !dbg !1719
  %38 = or i1 %28, %37, !dbg !1719
  br i1 %38, label %41, label %39, !dbg !1719

39:                                               ; preds = %36
  %40 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !1720
  br label %48, !dbg !1721

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()) #9, !dbg !1722
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1724
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !1724
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !1726
  %43 = load i64, i64* %42, align 8, !dbg !1726, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1672
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1727
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !1727
  call void @llvm.dbg.value(metadata i1 undef, metadata !987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1672
  %44 = and i64 %43, 3, !dbg !1730
  %45 = icmp eq i64 %44, 3, !dbg !1730
  br i1 %45, label %46, label %54, !dbg !1730

46:                                               ; preds = %41
  %47 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !1731
  br label %48, !dbg !1732

48:                                               ; preds = %4, %34, %39, %46
  %49 = phi i32 [ %5, %4 ], [ %40, %39 ], [ %35, %34 ], [ %47, %46 ], !dbg !1672
  call void @llvm.dbg.value(metadata i32 %49, metadata !1669, metadata !DIExpression()), !dbg !1671
  %50 = icmp eq i32 %49, 0, !dbg !1733
  br i1 %50, label %51, label %80, !dbg !1735

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %53 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %52, align 8, !dbg !1736, !tbaa !792
  br label %54, !dbg !1735

54:                                               ; preds = %51, %41
  %55 = phi %struct.halide_device_interface_t* [ %53, %51 ], [ %27, %41 ], !dbg !1736
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %55, metadata !1670, metadata !DIExpression()), !dbg !1671
  %56 = icmp eq %struct.halide_device_interface_t* %55, null, !dbg !1737
  br i1 %56, label %76, label %57, !dbg !1739

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %55, i32 0, i32 15, !dbg !1740
  %59 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %58, align 4, !dbg !1740, !tbaa !875
  %60 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %59, i32 0, i32 0, !dbg !1742
  %61 = load void ()*, void ()** %60, align 4, !dbg !1742, !tbaa !1550
  tail call void %61() #7, !dbg !1743
  %62 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %58, align 4, !dbg !1744, !tbaa !875
  %63 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %62, i32 0, i32 3, !dbg !1745
  %64 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %63, align 4, !dbg !1745, !tbaa !1746
  %65 = tail call i32 %64(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %65, metadata !1669, metadata !DIExpression()), !dbg !1671
  %66 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %58, align 4, !dbg !1748, !tbaa !875
  %67 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %66, i32 0, i32 1, !dbg !1749
  %68 = load void ()*, void ()** %67, align 4, !dbg !1749, !tbaa !1558
  tail call void %68() #7, !dbg !1750
  %69 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1751
  %70 = load i64, i64* %69, align 8, !dbg !1751, !tbaa !560
  %71 = icmp eq i64 %70, 0, !dbg !1751
  br i1 %71, label %73, label %72, !dbg !1754

72:                                               ; preds = %57
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.22, i32 0, i32 0)) #7, !dbg !1755
  tail call void @abort() #7, !dbg !1755
  br label %73, !dbg !1755

73:                                               ; preds = %72, %57
  %74 = icmp eq i32 %65, 0, !dbg !1757
  %75 = select i1 %74, i32 0, i32 -18, !dbg !1759
  ret i32 %75, !dbg !1759

76:                                               ; preds = %54
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !917, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i1 false, metadata !920, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1760
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !923, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 2, metadata !926, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i1 false, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1762
  %77 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !1764
  %78 = load i64, i64* %77, align 8, !dbg !1765, !tbaa !751
  %79 = and i64 %78, -3, !dbg !1765
  store i64 %79, i64* %77, align 8, !dbg !1765, !tbaa !751
  br label %80, !dbg !1766

80:                                               ; preds = %76, %48
  %81 = phi i32 [ %49, %48 ], [ 0, %76 ], !dbg !1671
  ret i32 %81, !dbg !1767
}

declare !dbg !1768 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !1769 dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_device_free_as_destructor(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1770 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1774, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %1, metadata !1775, metadata !DIExpression()), !dbg !1777
  %3 = bitcast i8* %1 to %struct.halide_buffer_t*, !dbg !1778
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1776, metadata !DIExpression()), !dbg !1777
  %4 = tail call i32 @halide_device_free(i8* %0, %struct.halide_buffer_t* %3) #8, !dbg !1779
  ret void, !dbg !1780
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #4 !dbg !1781 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1783, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1784, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !1785, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()) #9, !dbg !1789
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !981, metadata !DIExpression()) #9, !dbg !1789
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0), metadata !982, metadata !DIExpression()) #9, !dbg !1789
  %4 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !1791
  br i1 %4, label %5, label %7, !dbg !1792

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0)) #7, !dbg !1793
  br label %49, !dbg !1794

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !983, metadata !DIExpression()) #9, !dbg !1789
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !1795
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !1795
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !1795
  %8 = tail call i8* @malloc(i32 1024) #7, !dbg !1797
  %9 = icmp eq i8* %8, null, !dbg !1798
  br i1 %9, label %12, label %10, !dbg !1799

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i32 1023, !dbg !1800
  store i8 0, i8* %11, align 1, !dbg !1801, !tbaa !495
  br label %12, !dbg !1802

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !1803
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1804
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1804
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0)) #7, !dbg !1806
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1807
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1807
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0)) #7, !dbg !1809
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !1810
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !1810
  %16 = tail call i8* @halide_buffer_to_string(i8* %15, i8* %13, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1812
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1813
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1813
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !1815
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1816
  br i1 %9, label %18, label %19, !dbg !1818

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1819
  br label %26, !dbg !1820

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1821
  %20 = ptrtoint i8* %17 to i32, !dbg !1823
  %21 = ptrtoint i8* %8 to i32, !dbg !1823
  %22 = sub i32 1, %21, !dbg !1823
  %23 = add i32 %22, %20, !dbg !1824
  %24 = sext i32 %23 to i64, !dbg !1825
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %24) #7, !dbg !1826
  tail call void @halide_print(i8* %0, i8* nonnull %8) #7, !dbg !1827
  br label %26

26:                                               ; preds = %19, %18
  tail call void @free(i8* %8) #7, !dbg !1828
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !1829
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !dbg !1829, !tbaa !792
  %29 = icmp eq %struct.halide_device_interface_t* %28, null, !dbg !1830
  call void @llvm.dbg.value(metadata i1 %29, metadata !984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1789
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1831
  %31 = load i64, i64* %30, align 8, !dbg !1831, !tbaa !560
  %32 = icmp eq i64 %31, 0, !dbg !1832
  call void @llvm.dbg.value(metadata i1 %32, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1789
  %33 = xor i1 %29, true, !dbg !1833
  %34 = or i1 %32, %33, !dbg !1833
  br i1 %34, label %37, label %35, !dbg !1833

35:                                               ; preds = %26
  %36 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1834
  br label %49, !dbg !1835

37:                                               ; preds = %26
  %38 = xor i1 %32, true, !dbg !1836
  %39 = or i1 %29, %38, !dbg !1836
  br i1 %39, label %42, label %40, !dbg !1836

40:                                               ; preds = %37
  %41 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !1837
  br label %49, !dbg !1838

42:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()) #9, !dbg !1839
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1841
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !1841
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !1843
  %44 = load i64, i64* %43, align 8, !dbg !1843, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1789
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1844
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !1844
  call void @llvm.dbg.value(metadata i1 undef, metadata !987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1789
  %45 = and i64 %44, 3, !dbg !1847
  %46 = icmp eq i64 %45, 3, !dbg !1847
  br i1 %46, label %47, label %52, !dbg !1847

47:                                               ; preds = %42
  %48 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !1848
  br label %49, !dbg !1849

49:                                               ; preds = %5, %35, %40, %47
  %50 = phi i32 [ %6, %5 ], [ %41, %40 ], [ %36, %35 ], [ %48, %47 ], !dbg !1789
  call void @llvm.dbg.value(metadata i32 %50, metadata !1786, metadata !DIExpression()), !dbg !1788
  %51 = icmp eq i32 %50, 0, !dbg !1850
  br i1 %51, label %52, label %92, !dbg !1852

52:                                               ; preds = %42, %49
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !1853
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !1853
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !1853
  %53 = tail call i8* @malloc(i32 1024) #7, !dbg !1855
  %54 = icmp eq i8* %53, null, !dbg !1856
  br i1 %54, label %57, label %55, !dbg !1857

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, i8* %53, i32 1023, !dbg !1858
  store i8 0, i8* %56, align 1, !dbg !1859, !tbaa !495
  br label %57, !dbg !1860

57:                                               ; preds = %52, %55
  %58 = phi i8* [ %56, %55 ], [ null, %52 ], !dbg !1861
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1862
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1862
  %59 = tail call i8* @halide_string_to_string(i8* %53, i8* %58, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i32 0, i32 0)) #7, !dbg !1864
  %60 = bitcast %struct.halide_device_interface_t* %2 to i8*, !dbg !1865
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !1866
  call void @llvm.dbg.value(metadata i8* %60, metadata !771, metadata !DIExpression()) #9, !dbg !1866
  %61 = tail call i8* @halide_pointer_to_string(i8* %59, i8* %58, i8* %60) #7, !dbg !1868
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1869
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1869
  %62 = tail call i8* @halide_string_to_string(i8* %61, i8* %58, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !1871
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1872
  br i1 %54, label %63, label %64, !dbg !1874

63:                                               ; preds = %57
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1875
  br label %71, !dbg !1876

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1877
  %65 = ptrtoint i8* %62 to i32, !dbg !1879
  %66 = ptrtoint i8* %53 to i32, !dbg !1879
  %67 = add i32 %65, 1, !dbg !1879
  %68 = sub i32 %67, %66, !dbg !1880
  %69 = sext i32 %68 to i64, !dbg !1881
  %70 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %53, i64 %69) #7, !dbg !1882
  tail call void @halide_print(i8* %0, i8* nonnull %53) #7, !dbg !1883
  br label %71

71:                                               ; preds = %64, %63
  tail call void @free(i8* %53) #7, !dbg !1884
  %72 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !1885
  %73 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %72, align 8, !dbg !1885, !tbaa !792
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %73, metadata !1787, metadata !DIExpression()), !dbg !1788
  %74 = icmp eq %struct.halide_device_interface_t* %73, null, !dbg !1886
  %75 = icmp eq %struct.halide_device_interface_t* %73, %2
  %76 = or i1 %74, %75, !dbg !1888
  br i1 %76, label %78, label %77, !dbg !1888

77:                                               ; preds = %71
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.25, i32 0, i32 0)) #7, !dbg !1889
  br label %92, !dbg !1891

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i32 0, i32 15, !dbg !1892
  %80 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %79, align 4, !dbg !1892, !tbaa !875
  %81 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %80, i32 0, i32 0, !dbg !1893
  %82 = load void ()*, void ()** %81, align 4, !dbg !1893, !tbaa !1550
  tail call void %82() #7, !dbg !1894
  %83 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %79, align 4, !dbg !1895, !tbaa !875
  %84 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %83, i32 0, i32 8, !dbg !1896
  %85 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %84, align 4, !dbg !1896, !tbaa !1897
  %86 = tail call i32 %85(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %86, metadata !1786, metadata !DIExpression()), !dbg !1788
  %87 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %79, align 4, !dbg !1899, !tbaa !875
  %88 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %87, i32 0, i32 1, !dbg !1900
  %89 = load void ()*, void ()** %88, align 4, !dbg !1900, !tbaa !1558
  tail call void %89() #7, !dbg !1901
  %90 = icmp eq i32 %86, 0, !dbg !1902
  br i1 %90, label %92, label %91, !dbg !1904

91:                                               ; preds = %78
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i32 0, i32 0)) #7, !dbg !1905
  br label %92, !dbg !1907

92:                                               ; preds = %77, %91, %78, %49
  %93 = phi i32 [ %50, %49 ], [ -42, %77 ], [ -16, %91 ], [ 0, %78 ], !dbg !1788
  ret i32 %93, !dbg !1908
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !1909 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1911, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1912, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()) #9, !dbg !1916
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !981, metadata !DIExpression()) #9, !dbg !1916
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0), metadata !982, metadata !DIExpression()) #9, !dbg !1916
  %3 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !1918
  br i1 %3, label %4, label %6, !dbg !1919

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0)) #7, !dbg !1920
  br label %48, !dbg !1921

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !983, metadata !DIExpression()) #9, !dbg !1916
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !1922
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !1922
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !1922
  %7 = tail call i8* @malloc(i32 1024) #7, !dbg !1924
  %8 = icmp eq i8* %7, null, !dbg !1925
  br i1 %8, label %11, label %9, !dbg !1926

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i32 1023, !dbg !1927
  store i8 0, i8* %10, align 1, !dbg !1928, !tbaa !495
  br label %11, !dbg !1929

11:                                               ; preds = %9, %6
  %12 = phi i8* [ %10, %9 ], [ null, %6 ], !dbg !1930
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1931
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1931
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %12, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0)) #7, !dbg !1933
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1934
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1934
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %12, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0)) #7, !dbg !1936
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !1937
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !1937
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %12, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1939
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !1940
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !1940
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %12, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !1942
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !1943
  br i1 %8, label %17, label %18, !dbg !1945

17:                                               ; preds = %11
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !1946
  br label %25, !dbg !1947

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !1948
  %19 = ptrtoint i8* %16 to i32, !dbg !1950
  %20 = ptrtoint i8* %7 to i32, !dbg !1950
  %21 = sub i32 1, %20, !dbg !1950
  %22 = add i32 %21, %19, !dbg !1951
  %23 = sext i32 %22 to i64, !dbg !1952
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %23) #7, !dbg !1953
  tail call void @halide_print(i8* %0, i8* nonnull %7) #7, !dbg !1954
  br label %25

25:                                               ; preds = %18, %17
  tail call void @free(i8* %7) #7, !dbg !1955
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !1956
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !dbg !1956, !tbaa !792
  %28 = icmp eq %struct.halide_device_interface_t* %27, null, !dbg !1957
  call void @llvm.dbg.value(metadata i1 %28, metadata !984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1916
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1958
  %30 = load i64, i64* %29, align 8, !dbg !1958, !tbaa !560
  %31 = icmp eq i64 %30, 0, !dbg !1959
  call void @llvm.dbg.value(metadata i1 %31, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1916
  %32 = xor i1 %28, true, !dbg !1960
  %33 = or i1 %31, %32, !dbg !1960
  br i1 %33, label %36, label %34, !dbg !1960

34:                                               ; preds = %25
  %35 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !1961
  br label %48, !dbg !1962

36:                                               ; preds = %25
  %37 = xor i1 %31, true, !dbg !1963
  %38 = or i1 %28, %37, !dbg !1963
  br i1 %38, label %41, label %39, !dbg !1963

39:                                               ; preds = %36
  %40 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !1964
  br label %48, !dbg !1965

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()) #9, !dbg !1966
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1968
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !1968
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !1970
  %43 = load i64, i64* %42, align 8, !dbg !1970, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1916
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !1971
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !1971
  call void @llvm.dbg.value(metadata i1 undef, metadata !987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1916
  %44 = and i64 %43, 3, !dbg !1974
  %45 = icmp eq i64 %44, 3, !dbg !1974
  br i1 %45, label %46, label %54, !dbg !1974

46:                                               ; preds = %41
  %47 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !1975
  br label %48, !dbg !1976

48:                                               ; preds = %4, %34, %39, %46
  %49 = phi i32 [ %5, %4 ], [ %40, %39 ], [ %35, %34 ], [ %47, %46 ], !dbg !1916
  call void @llvm.dbg.value(metadata i32 %49, metadata !1913, metadata !DIExpression()), !dbg !1915
  %50 = icmp eq i32 %49, 0, !dbg !1977
  br i1 %50, label %51, label %85, !dbg !1979

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %53 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %52, align 8, !dbg !1980, !tbaa !792
  br label %54, !dbg !1979

54:                                               ; preds = %51, %41
  %55 = phi %struct.halide_device_interface_t* [ %53, %51 ], [ %27, %41 ], !dbg !1980
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %55, metadata !1914, metadata !DIExpression()), !dbg !1915
  %56 = icmp eq %struct.halide_device_interface_t* %55, null, !dbg !1981
  br i1 %56, label %76, label %57, !dbg !1983

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %55, i32 0, i32 15, !dbg !1984
  %59 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %58, align 4, !dbg !1984, !tbaa !875
  %60 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %59, i32 0, i32 0, !dbg !1986
  %61 = load void ()*, void ()** %60, align 4, !dbg !1986, !tbaa !1550
  tail call void %61() #7, !dbg !1987
  %62 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %58, align 4, !dbg !1988, !tbaa !875
  %63 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %62, i32 0, i32 9, !dbg !1989
  %64 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %63, align 4, !dbg !1989, !tbaa !1990
  %65 = tail call i32 %64(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %65, metadata !1913, metadata !DIExpression()), !dbg !1915
  %66 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %58, align 4, !dbg !1992, !tbaa !875
  %67 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %66, i32 0, i32 1, !dbg !1993
  %68 = load void ()*, void ()** %67, align 4, !dbg !1993, !tbaa !1558
  tail call void %68() #7, !dbg !1994
  %69 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1995
  %70 = load i64, i64* %69, align 8, !dbg !1995, !tbaa !560
  %71 = icmp eq i64 %70, 0, !dbg !1995
  br i1 %71, label %73, label %72, !dbg !1998

72:                                               ; preds = %57
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.28, i32 0, i32 0)) #7, !dbg !1999
  tail call void @abort() #7, !dbg !1999
  br label %73, !dbg !1999

73:                                               ; preds = %72, %57
  %74 = icmp eq i32 %65, 0, !dbg !2001
  %75 = select i1 %74, i32 0, i32 -18, !dbg !2003
  ret i32 %75, !dbg !2003

76:                                               ; preds = %54
  %77 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !2004
  %78 = load i8*, i8** %77, align 4, !dbg !2004, !tbaa !551
  %79 = icmp eq i8* %78, null, !dbg !2006
  br i1 %79, label %81, label %80, !dbg !2007

80:                                               ; preds = %76
  tail call void @halide_free(i8* %0, i8* nonnull %78) #7, !dbg !2008
  store i8* null, i8** %77, align 4, !dbg !2010, !tbaa !551
  br label %81, !dbg !2011

81:                                               ; preds = %76, %80
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !917, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i1 false, metadata !920, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2012
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !923, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32 2, metadata !926, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i1 false, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2014
  %82 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !2016
  %83 = load i64, i64* %82, align 8, !dbg !2017, !tbaa !751
  %84 = and i64 %83, -3, !dbg !2017
  store i64 %84, i64* %82, align 8, !dbg !2017, !tbaa !751
  br label %85, !dbg !2018

85:                                               ; preds = %81, %48
  %86 = phi i32 [ %49, %48 ], [ 0, %81 ], !dbg !1915
  ret i32 %86, !dbg !2019
}

declare !dbg !2020 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #4 !dbg !2021 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2023, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2024, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !2025, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()) #9, !dbg !2029
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !981, metadata !DIExpression()) #9, !dbg !2029
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i32 0, i32 0), metadata !982, metadata !DIExpression()) #9, !dbg !2029
  %4 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !2031
  br i1 %4, label %5, label %7, !dbg !2032

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i32 0, i32 0)) #7, !dbg !2033
  br label %49, !dbg !2034

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !983, metadata !DIExpression()) #9, !dbg !2029
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !2035
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !2035
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !2035
  %8 = tail call i8* @malloc(i32 1024) #7, !dbg !2037
  %9 = icmp eq i8* %8, null, !dbg !2038
  br i1 %9, label %12, label %10, !dbg !2039

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i32 1023, !dbg !2040
  store i8 0, i8* %11, align 1, !dbg !2041, !tbaa !495
  br label %12, !dbg !2042

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !2043
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2044
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2044
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i32 0, i32 0)) #7, !dbg !2046
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2047
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2047
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0)) #7, !dbg !2049
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !2050
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !2050
  %16 = tail call i8* @halide_buffer_to_string(i8* %15, i8* %13, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2052
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2053
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2053
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !2055
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2056
  br i1 %9, label %18, label %19, !dbg !2058

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !2059
  br label %26, !dbg !2060

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !2061
  %20 = ptrtoint i8* %17 to i32, !dbg !2063
  %21 = ptrtoint i8* %8 to i32, !dbg !2063
  %22 = sub i32 1, %21, !dbg !2063
  %23 = add i32 %22, %20, !dbg !2064
  %24 = sext i32 %23 to i64, !dbg !2065
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %24) #7, !dbg !2066
  tail call void @halide_print(i8* %0, i8* nonnull %8) #7, !dbg !2067
  br label %26

26:                                               ; preds = %19, %18
  tail call void @free(i8* %8) #7, !dbg !2068
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2069
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !dbg !2069, !tbaa !792
  %29 = icmp eq %struct.halide_device_interface_t* %28, null, !dbg !2070
  call void @llvm.dbg.value(metadata i1 %29, metadata !984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2029
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2071
  %31 = load i64, i64* %30, align 8, !dbg !2071, !tbaa !560
  %32 = icmp eq i64 %31, 0, !dbg !2072
  call void @llvm.dbg.value(metadata i1 %32, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2029
  %33 = xor i1 %29, true, !dbg !2073
  %34 = or i1 %32, %33, !dbg !2073
  br i1 %34, label %37, label %35, !dbg !2073

35:                                               ; preds = %26
  %36 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !2074
  br label %49, !dbg !2075

37:                                               ; preds = %26
  %38 = xor i1 %32, true, !dbg !2076
  %39 = or i1 %29, %38, !dbg !2076
  br i1 %39, label %42, label %40, !dbg !2076

40:                                               ; preds = %37
  %41 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !2077
  br label %49, !dbg !2078

42:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()) #9, !dbg !2079
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2081
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !2081
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !2083
  %44 = load i64, i64* %43, align 8, !dbg !2083, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2029
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2084
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !2084
  call void @llvm.dbg.value(metadata i1 undef, metadata !987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2029
  %45 = and i64 %44, 3, !dbg !2087
  %46 = icmp eq i64 %45, 3, !dbg !2087
  br i1 %46, label %47, label %52, !dbg !2087

47:                                               ; preds = %42
  %48 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !2088
  br label %49, !dbg !2089

49:                                               ; preds = %5, %35, %40, %47
  %50 = phi i32 [ %6, %5 ], [ %41, %40 ], [ %36, %35 ], [ %48, %47 ], !dbg !2029
  call void @llvm.dbg.value(metadata i32 %50, metadata !2026, metadata !DIExpression()), !dbg !2028
  %51 = icmp eq i32 %50, 0, !dbg !2090
  br i1 %51, label %52, label %115, !dbg !2092

52:                                               ; preds = %42, %49
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2093, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2098, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i32 0, metadata !2101, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i32 0, metadata !2102, metadata !DIExpression()), !dbg !2106
  %53 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !2107
  %54 = load i32, i32* %53, align 4, !dbg !2107, !tbaa !595
  %55 = icmp sgt i32 %54, 0, !dbg !2109
  br i1 %55, label %59, label %56, !dbg !2110

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !2111
  %57 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !2113
  %58 = load i8, i8* %57, align 1, !dbg !2113, !tbaa !576
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2114, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 0, metadata !2117, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 0, metadata !2118, metadata !DIExpression()), !dbg !2122
  br label %97, !dbg !2123

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %61 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %60, align 8, !tbaa !598
  br label %62, !dbg !2110

62:                                               ; preds = %74, %59
  %63 = phi i32 [ 0, %59 ], [ %76, %74 ]
  %64 = phi i32 [ 0, %59 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata i32 %63, metadata !2102, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 %64, metadata !2101, metadata !DIExpression()), !dbg !2104
  %65 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %61, i32 %63, i32 2, !dbg !2124
  %66 = load i32, i32* %65, align 4, !dbg !2124, !tbaa !606
  %67 = icmp sgt i32 %66, 0, !dbg !2127
  br i1 %67, label %68, label %74, !dbg !2128

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %61, i32 %63, i32 1, !dbg !2129
  %70 = load i32, i32* %69, align 4, !dbg !2129, !tbaa !670
  %71 = add nsw i32 %70, -1, !dbg !2131
  %72 = mul nsw i32 %71, %66, !dbg !2132
  %73 = add nsw i32 %72, %64, !dbg !2133
  call void @llvm.dbg.value(metadata i32 %73, metadata !2101, metadata !DIExpression()), !dbg !2104
  br label %74, !dbg !2134

74:                                               ; preds = %68, %62
  %75 = phi i32 [ %73, %68 ], [ %64, %62 ], !dbg !2104
  call void @llvm.dbg.value(metadata i32 %75, metadata !2101, metadata !DIExpression()), !dbg !2104
  %76 = add nuw nsw i32 %63, 1, !dbg !2135
  call void @llvm.dbg.value(metadata i32 %76, metadata !2102, metadata !DIExpression()), !dbg !2106
  %77 = icmp slt i32 %76, %54, !dbg !2109
  br i1 %77, label %62, label %78, !dbg !2110, !llvm.loop !2136

78:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i32 %75, metadata !2101, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2104
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !2111
  %79 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !2113
  %80 = load i8, i8* %79, align 1, !dbg !2113, !tbaa !576
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2114, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 0, metadata !2117, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 0, metadata !2118, metadata !DIExpression()), !dbg !2122
  br label %81, !dbg !2123

81:                                               ; preds = %93, %78
  %82 = phi i32 [ 0, %78 ], [ %95, %93 ]
  %83 = phi i32 [ 0, %78 ], [ %94, %93 ]
  call void @llvm.dbg.value(metadata i32 %82, metadata !2118, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i32 %83, metadata !2117, metadata !DIExpression()), !dbg !2120
  %84 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %61, i32 %82, i32 2, !dbg !2138
  %85 = load i32, i32* %84, align 4, !dbg !2138, !tbaa !606
  %86 = icmp slt i32 %85, 0, !dbg !2142
  br i1 %86, label %87, label %93, !dbg !2143

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %61, i32 %82, i32 1, !dbg !2144
  %89 = load i32, i32* %88, align 4, !dbg !2144, !tbaa !670
  %90 = add nsw i32 %89, -1, !dbg !2146
  %91 = mul nsw i32 %90, %85, !dbg !2147
  %92 = add nsw i32 %91, %83, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %92, metadata !2117, metadata !DIExpression()), !dbg !2120
  br label %93, !dbg !2149

93:                                               ; preds = %87, %81
  %94 = phi i32 [ %92, %87 ], [ %83, %81 ], !dbg !2120
  call void @llvm.dbg.value(metadata i32 %94, metadata !2117, metadata !DIExpression()), !dbg !2120
  %95 = add nuw nsw i32 %82, 1, !dbg !2150
  call void @llvm.dbg.value(metadata i32 %95, metadata !2118, metadata !DIExpression()), !dbg !2122
  %96 = icmp slt i32 %95, %54, !dbg !2151
  br i1 %96, label %81, label %97, !dbg !2123, !llvm.loop !2152

97:                                               ; preds = %93, %56
  %98 = phi i8 [ %58, %56 ], [ %80, %93 ]
  %99 = phi i32 [ 0, %56 ], [ %75, %93 ]
  %100 = phi i32 [ 0, %56 ], [ %94, %93 ], !dbg !2120
  %101 = zext i8 %98 to i32, !dbg !2113
  %102 = add nuw nsw i32 %101, 7, !dbg !2154
  %103 = lshr i32 %102, 3, !dbg !2155
  %104 = add nsw i32 %99, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i32 %104, metadata !2101, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !569, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !2157
  %105 = sub i32 %104, %100, !dbg !2159
  %106 = mul i32 %105, %103, !dbg !2159
  call void @llvm.dbg.value(metadata i32 %106, metadata !2027, metadata !DIExpression()), !dbg !2028
  %107 = tail call i8* @halide_malloc(i8* %0, i32 %106) #7, !dbg !2160
  %108 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !2161
  store i8* %107, i8** %108, align 4, !dbg !2162, !tbaa !551
  %109 = icmp eq i8* %107, null, !dbg !2163
  br i1 %109, label %115, label %110, !dbg !2165

110:                                              ; preds = %97
  %111 = tail call i32 @halide_device_malloc(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* %2) #8, !dbg !2166
  call void @llvm.dbg.value(metadata i32 %111, metadata !2026, metadata !DIExpression()), !dbg !2028
  %112 = icmp eq i32 %111, 0, !dbg !2167
  br i1 %112, label %115, label %113, !dbg !2169

113:                                              ; preds = %110
  %114 = load i8*, i8** %108, align 4, !dbg !2170, !tbaa !551
  tail call void @halide_free(i8* %0, i8* %114) #7, !dbg !2172
  store i8* null, i8** %108, align 4, !dbg !2173, !tbaa !551
  br label %115, !dbg !2174

115:                                              ; preds = %97, %113, %110, %49
  %116 = phi i32 [ %50, %49 ], [ -1, %97 ], [ %111, %113 ], [ 0, %110 ], !dbg !2028
  ret i32 %116, !dbg !2175
}

declare !dbg !2176 dso_local i8* @halide_malloc(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #4 !dbg !2179 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2181, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2182, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !2183, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()) #9, !dbg !2186
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !981, metadata !DIExpression()) #9, !dbg !2186
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0), metadata !982, metadata !DIExpression()) #9, !dbg !2186
  %4 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !2188
  br i1 %4, label %5, label %7, !dbg !2189

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0)) #7, !dbg !2190
  br label %49, !dbg !2191

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !983, metadata !DIExpression()) #9, !dbg !2186
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !2192
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !2192
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !2192
  %8 = tail call i8* @malloc(i32 1024) #7, !dbg !2194
  %9 = icmp eq i8* %8, null, !dbg !2195
  br i1 %9, label %12, label %10, !dbg !2196

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i32 1023, !dbg !2197
  store i8 0, i8* %11, align 1, !dbg !2198, !tbaa !495
  br label %12, !dbg !2199

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !2200
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2201
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2201
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0)) #7, !dbg !2203
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2204
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2204
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0)) #7, !dbg !2206
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !2207
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !2207
  %16 = tail call i8* @halide_buffer_to_string(i8* %15, i8* %13, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2209
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2210
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2210
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !2212
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2213
  br i1 %9, label %18, label %19, !dbg !2215

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !2216
  br label %26, !dbg !2217

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !2218
  %20 = ptrtoint i8* %17 to i32, !dbg !2220
  %21 = ptrtoint i8* %8 to i32, !dbg !2220
  %22 = sub i32 1, %21, !dbg !2220
  %23 = add i32 %22, %20, !dbg !2221
  %24 = sext i32 %23 to i64, !dbg !2222
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %24) #7, !dbg !2223
  tail call void @halide_print(i8* %0, i8* nonnull %8) #7, !dbg !2224
  br label %26

26:                                               ; preds = %19, %18
  tail call void @free(i8* %8) #7, !dbg !2225
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2226
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !dbg !2226, !tbaa !792
  %29 = icmp eq %struct.halide_device_interface_t* %28, null, !dbg !2227
  call void @llvm.dbg.value(metadata i1 %29, metadata !984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2186
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2228
  %31 = load i64, i64* %30, align 8, !dbg !2228, !tbaa !560
  %32 = icmp eq i64 %31, 0, !dbg !2229
  call void @llvm.dbg.value(metadata i1 %32, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2186
  %33 = xor i1 %29, true, !dbg !2230
  %34 = or i1 %32, %33, !dbg !2230
  br i1 %34, label %37, label %35, !dbg !2230

35:                                               ; preds = %26
  %36 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !2231
  br label %49, !dbg !2232

37:                                               ; preds = %26
  %38 = xor i1 %32, true, !dbg !2233
  %39 = or i1 %29, %38, !dbg !2233
  br i1 %39, label %42, label %40, !dbg !2233

40:                                               ; preds = %37
  %41 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !2234
  br label %49, !dbg !2235

42:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()) #9, !dbg !2236
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2238
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !2238
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !2240
  %44 = load i64, i64* %43, align 8, !dbg !2240, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2186
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2241
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !2241
  call void @llvm.dbg.value(metadata i1 undef, metadata !987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2186
  %45 = and i64 %44, 3, !dbg !2244
  %46 = icmp eq i64 %45, 3, !dbg !2244
  br i1 %46, label %47, label %52, !dbg !2244

47:                                               ; preds = %42
  %48 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !2245
  br label %49, !dbg !2246

49:                                               ; preds = %5, %35, %40, %47
  %50 = phi i32 [ %6, %5 ], [ %41, %40 ], [ %36, %35 ], [ %48, %47 ], !dbg !2186
  call void @llvm.dbg.value(metadata i32 %50, metadata !2184, metadata !DIExpression()), !dbg !2185
  %51 = icmp eq i32 %50, 0, !dbg !2247
  br i1 %51, label %52, label %62, !dbg !2249

52:                                               ; preds = %42, %49
  %53 = tail call i32 @halide_device_free(i8* %0, %struct.halide_buffer_t* %1) #8, !dbg !2250
  call void @llvm.dbg.value(metadata i32 %53, metadata !2184, metadata !DIExpression()), !dbg !2185
  %54 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !2251
  %55 = load i8*, i8** %54, align 4, !dbg !2251, !tbaa !551
  %56 = icmp eq i8* %55, null, !dbg !2253
  br i1 %56, label %58, label %57, !dbg !2254

57:                                               ; preds = %52
  tail call void @halide_free(i8* %0, i8* nonnull %55) #7, !dbg !2255
  store i8* null, i8** %54, align 4, !dbg !2257, !tbaa !551
  br label %58, !dbg !2258

58:                                               ; preds = %57, %52
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1360, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i1 false, metadata !1363, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2259
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !923, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 1, metadata !926, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i1 false, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2261
  %59 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !2263
  %60 = load i64, i64* %59, align 8, !dbg !2264, !tbaa !751
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !917, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i1 false, metadata !920, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2265
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !923, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 2, metadata !926, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i1 false, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2267
  %61 = and i64 %60, -4, !dbg !2269
  store i64 %61, i64* %59, align 8, !dbg !2269, !tbaa !751
  br label %62, !dbg !2270

62:                                               ; preds = %49, %58
  %63 = phi i32 [ %53, %58 ], [ %50, %49 ], !dbg !2185
  ret i32 %63, !dbg !2271
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_wrap_native(i8* %0, %struct.halide_buffer_t* %1, i64 %2, %struct.halide_device_interface_t* %3) local_unnamed_addr #4 !dbg !2272 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2274, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2275, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %2, metadata !2276, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %3, metadata !2277, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()) #9, !dbg !2281
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !981, metadata !DIExpression()) #9, !dbg !2281
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0), metadata !982, metadata !DIExpression()) #9, !dbg !2281
  %5 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !2283
  br i1 %5, label %6, label %8, !dbg !2284

6:                                                ; preds = %4
  %7 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0)) #7, !dbg !2285
  br label %50, !dbg !2286

8:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !983, metadata !DIExpression()) #9, !dbg !2281
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !2287
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !2287
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !2287
  %9 = tail call i8* @malloc(i32 1024) #7, !dbg !2289
  %10 = icmp eq i8* %9, null, !dbg !2290
  br i1 %10, label %13, label %11, !dbg !2291

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i32 1023, !dbg !2292
  store i8 0, i8* %12, align 1, !dbg !2293, !tbaa !495
  br label %13, !dbg !2294

13:                                               ; preds = %11, %8
  %14 = phi i8* [ %12, %11 ], [ null, %8 ], !dbg !2295
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2296
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2296
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0)) #7, !dbg !2298
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2299
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2299
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0)) #7, !dbg !2301
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !2302
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !2302
  %17 = tail call i8* @halide_buffer_to_string(i8* %16, i8* %14, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2304
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2305
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2305
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !2307
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2308
  br i1 %10, label %19, label %20, !dbg !2310

19:                                               ; preds = %13
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !2311
  br label %27, !dbg !2312

20:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !2313
  %21 = ptrtoint i8* %18 to i32, !dbg !2315
  %22 = ptrtoint i8* %9 to i32, !dbg !2315
  %23 = sub i32 1, %22, !dbg !2315
  %24 = add i32 %23, %21, !dbg !2316
  %25 = sext i32 %24 to i64, !dbg !2317
  %26 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %25) #7, !dbg !2318
  tail call void @halide_print(i8* %0, i8* nonnull %9) #7, !dbg !2319
  br label %27

27:                                               ; preds = %20, %19
  tail call void @free(i8* %9) #7, !dbg !2320
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2321
  %29 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %28, align 8, !dbg !2321, !tbaa !792
  %30 = icmp eq %struct.halide_device_interface_t* %29, null, !dbg !2322
  call void @llvm.dbg.value(metadata i1 %30, metadata !984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2281
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2323
  %32 = load i64, i64* %31, align 8, !dbg !2323, !tbaa !560
  %33 = icmp eq i64 %32, 0, !dbg !2324
  call void @llvm.dbg.value(metadata i1 %33, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2281
  %34 = xor i1 %30, true, !dbg !2325
  %35 = or i1 %33, %34, !dbg !2325
  br i1 %35, label %38, label %36, !dbg !2325

36:                                               ; preds = %27
  %37 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !2326
  br label %50, !dbg !2327

38:                                               ; preds = %27
  %39 = xor i1 %33, true, !dbg !2328
  %40 = or i1 %30, %39, !dbg !2328
  br i1 %40, label %43, label %41, !dbg !2328

41:                                               ; preds = %38
  %42 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !2329
  br label %50, !dbg !2330

43:                                               ; preds = %38
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()) #9, !dbg !2331
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2333
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !2333
  %44 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !2335
  %45 = load i64, i64* %44, align 8, !dbg !2335, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2281
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2336
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !2336
  call void @llvm.dbg.value(metadata i1 undef, metadata !987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2281
  %46 = and i64 %45, 3, !dbg !2339
  %47 = icmp eq i64 %46, 3, !dbg !2339
  br i1 %47, label %48, label %56, !dbg !2339

48:                                               ; preds = %43
  %49 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !2340
  br label %50, !dbg !2341

50:                                               ; preds = %6, %36, %41, %48
  %51 = phi i32 [ %7, %6 ], [ %42, %41 ], [ %37, %36 ], [ %49, %48 ], !dbg !2281
  call void @llvm.dbg.value(metadata i32 %51, metadata !2278, metadata !DIExpression()), !dbg !2280
  %52 = icmp eq i32 %51, 0, !dbg !2342
  br i1 %52, label %53, label %77, !dbg !2344

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %55 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %54, align 8, !dbg !2345, !tbaa !792
  br label %56, !dbg !2344

56:                                               ; preds = %53, %43
  %57 = phi %struct.halide_device_interface_t* [ %55, %53 ], [ %29, %43 ], !dbg !2345
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %57, metadata !2279, metadata !DIExpression()), !dbg !2280
  %58 = icmp eq %struct.halide_device_interface_t* %57, null, !dbg !2346
  %59 = icmp eq %struct.halide_device_interface_t* %57, %3
  %60 = or i1 %58, %59, !dbg !2348
  br i1 %60, label %62, label %61, !dbg !2348

61:                                               ; preds = %56
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.32, i32 0, i32 0)) #7, !dbg !2349
  br label %77, !dbg !2351

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2345
  %64 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %3, i32 0, i32 15, !dbg !2352
  %65 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %64, align 4, !dbg !2352, !tbaa !875
  %66 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %65, i32 0, i32 0, !dbg !2353
  %67 = load void ()*, void ()** %66, align 4, !dbg !2353, !tbaa !1550
  tail call void %67() #7, !dbg !2354
  store %struct.halide_device_interface_t* %3, %struct.halide_device_interface_t** %63, align 8, !dbg !2355, !tbaa !792
  %68 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %64, align 4, !dbg !2356, !tbaa !875
  %69 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %68, i32 0, i32 14, !dbg !2357
  %70 = load i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*, i64)** %69, align 4, !dbg !2357, !tbaa !2358
  %71 = tail call i32 %70(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %2) #7, !dbg !2359
  call void @llvm.dbg.value(metadata i32 %71, metadata !2278, metadata !DIExpression()), !dbg !2280
  %72 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %64, align 4, !dbg !2360, !tbaa !875
  %73 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %72, i32 0, i32 1, !dbg !2361
  %74 = load void ()*, void ()** %73, align 4, !dbg !2361, !tbaa !1558
  tail call void %74() #7, !dbg !2362
  %75 = icmp eq i32 %71, 0, !dbg !2363
  %76 = select i1 %75, i32 0, i32 -16, !dbg !2365
  ret i32 %76, !dbg !2365

77:                                               ; preds = %61, %50
  %78 = phi i32 [ %51, %50 ], [ -42, %61 ], !dbg !2280
  ret i32 %78, !dbg !2366
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_detach_native(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !2367 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2369, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2370, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()) #9, !dbg !2374
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !981, metadata !DIExpression()) #9, !dbg !2374
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), metadata !982, metadata !DIExpression()) #9, !dbg !2374
  %3 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !2376
  br i1 %3, label %4, label %6, !dbg !2377

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0)) #7, !dbg !2378
  br label %48, !dbg !2379

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !983, metadata !DIExpression()) #9, !dbg !2374
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !2380
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !2380
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !2380
  %7 = tail call i8* @malloc(i32 1024) #7, !dbg !2382
  %8 = icmp eq i8* %7, null, !dbg !2383
  br i1 %8, label %11, label %9, !dbg !2384

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i32 1023, !dbg !2385
  store i8 0, i8* %10, align 1, !dbg !2386, !tbaa !495
  br label %11, !dbg !2387

11:                                               ; preds = %9, %6
  %12 = phi i8* [ %10, %9 ], [ null, %6 ], !dbg !2388
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2389
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2389
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %12, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0)) #7, !dbg !2391
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2392
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2392
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %12, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0)) #7, !dbg !2394
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !2395
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !2395
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %12, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2397
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2398
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2398
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %12, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !2400
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2401
  br i1 %8, label %17, label %18, !dbg !2403

17:                                               ; preds = %11
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !2404
  br label %25, !dbg !2405

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !2406
  %19 = ptrtoint i8* %16 to i32, !dbg !2408
  %20 = ptrtoint i8* %7 to i32, !dbg !2408
  %21 = sub i32 1, %20, !dbg !2408
  %22 = add i32 %21, %19, !dbg !2409
  %23 = sext i32 %22 to i64, !dbg !2410
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %23) #7, !dbg !2411
  tail call void @halide_print(i8* %0, i8* nonnull %7) #7, !dbg !2412
  br label %25

25:                                               ; preds = %18, %17
  tail call void @free(i8* %7) #7, !dbg !2413
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2414
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !dbg !2414, !tbaa !792
  %28 = icmp eq %struct.halide_device_interface_t* %27, null, !dbg !2415
  call void @llvm.dbg.value(metadata i1 %28, metadata !984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2374
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2416
  %30 = load i64, i64* %29, align 8, !dbg !2416, !tbaa !560
  %31 = icmp eq i64 %30, 0, !dbg !2417
  call void @llvm.dbg.value(metadata i1 %31, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2374
  %32 = xor i1 %28, true, !dbg !2418
  %33 = or i1 %31, %32, !dbg !2418
  br i1 %33, label %36, label %34, !dbg !2418

34:                                               ; preds = %25
  %35 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !2419
  br label %48, !dbg !2420

36:                                               ; preds = %25
  %37 = xor i1 %31, true, !dbg !2421
  %38 = or i1 %28, %37, !dbg !2421
  br i1 %38, label %41, label %39, !dbg !2421

39:                                               ; preds = %36
  %40 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !2422
  br label %48, !dbg !2423

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()) #9, !dbg !2424
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2426
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !2426
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !2428
  %43 = load i64, i64* %42, align 8, !dbg !2428, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2374
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2429
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !2429
  call void @llvm.dbg.value(metadata i1 undef, metadata !987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2374
  %44 = and i64 %43, 3, !dbg !2432
  %45 = icmp eq i64 %44, 3, !dbg !2432
  br i1 %45, label %46, label %54, !dbg !2432

46:                                               ; preds = %41
  %47 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !2433
  br label %48, !dbg !2434

48:                                               ; preds = %4, %34, %39, %46
  %49 = phi i32 [ %5, %4 ], [ %40, %39 ], [ %35, %34 ], [ %47, %46 ], !dbg !2374
  call void @llvm.dbg.value(metadata i32 %49, metadata !2371, metadata !DIExpression()), !dbg !2373
  %50 = icmp eq i32 %49, 0, !dbg !2435
  br i1 %50, label %51, label %76, !dbg !2437

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %53 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %52, align 8, !dbg !2438, !tbaa !792
  br label %54, !dbg !2437

54:                                               ; preds = %51, %41
  %55 = phi %struct.halide_device_interface_t* [ %53, %51 ], [ %27, %41 ], !dbg !2438
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %55, metadata !2372, metadata !DIExpression()), !dbg !2373
  %56 = icmp eq %struct.halide_device_interface_t* %55, null, !dbg !2439
  br i1 %56, label %76, label %57, !dbg !2441

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %55, i32 0, i32 15, !dbg !2442
  %59 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %58, align 4, !dbg !2442, !tbaa !875
  %60 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %59, i32 0, i32 0, !dbg !2444
  %61 = load void ()*, void ()** %60, align 4, !dbg !2444, !tbaa !1550
  tail call void %61() #7, !dbg !2445
  %62 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %58, align 4, !dbg !2446, !tbaa !875
  %63 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %62, i32 0, i32 15, !dbg !2447
  %64 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %63, align 4, !dbg !2447, !tbaa !2448
  %65 = tail call i32 %64(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2449
  call void @llvm.dbg.value(metadata i32 %65, metadata !2371, metadata !DIExpression()), !dbg !2373
  %66 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %58, align 4, !dbg !2450, !tbaa !875
  %67 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %66, i32 0, i32 1, !dbg !2451
  %68 = load void ()*, void ()** %67, align 4, !dbg !2451, !tbaa !1558
  tail call void %68() #7, !dbg !2452
  %69 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2453
  %70 = load i64, i64* %69, align 8, !dbg !2453, !tbaa !560
  %71 = icmp eq i64 %70, 0, !dbg !2453
  br i1 %71, label %73, label %72, !dbg !2456

72:                                               ; preds = %57
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.34, i32 0, i32 0)) #7, !dbg !2457
  tail call void @abort() #7, !dbg !2457
  br label %73, !dbg !2457

73:                                               ; preds = %72, %57
  %74 = icmp eq i32 %65, 0, !dbg !2459
  %75 = select i1 %74, i32 0, i32 -33, !dbg !2461
  ret i32 %75, !dbg !2461

76:                                               ; preds = %54, %48
  %77 = phi i32 [ %49, %48 ], [ 0, %54 ], !dbg !2373
  ret i32 %77, !dbg !2462
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_default_device_wrap_native(i8* %0, %struct.halide_buffer_t* %1, i64 %2) local_unnamed_addr #4 !dbg !2463 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2465, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64 %2, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()) #9, !dbg !2470
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !981, metadata !DIExpression()) #9, !dbg !2470
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0), metadata !982, metadata !DIExpression()) #9, !dbg !2470
  %4 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !2472
  br i1 %4, label %5, label %7, !dbg !2473

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0)) #7, !dbg !2474
  br label %49, !dbg !2475

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !983, metadata !DIExpression()) #9, !dbg !2470
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !2476
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !2476
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !2476
  %8 = tail call i8* @malloc(i32 1024) #7, !dbg !2478
  %9 = icmp eq i8* %8, null, !dbg !2479
  br i1 %9, label %12, label %10, !dbg !2480

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i32 1023, !dbg !2481
  store i8 0, i8* %11, align 1, !dbg !2482, !tbaa !495
  br label %12, !dbg !2483

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !2484
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2485
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2485
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0)) #7, !dbg !2487
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2488
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2488
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0)) #7, !dbg !2490
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !2491
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !2491
  %16 = tail call i8* @halide_buffer_to_string(i8* %15, i8* %13, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2493
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2494
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2494
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !2496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2497
  br i1 %9, label %18, label %19, !dbg !2499

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !2500
  br label %26, !dbg !2501

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !2502
  %20 = ptrtoint i8* %17 to i32, !dbg !2504
  %21 = ptrtoint i8* %8 to i32, !dbg !2504
  %22 = sub i32 1, %21, !dbg !2504
  %23 = add i32 %22, %20, !dbg !2505
  %24 = sext i32 %23 to i64, !dbg !2506
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %24) #7, !dbg !2507
  tail call void @halide_print(i8* %0, i8* nonnull %8) #7, !dbg !2508
  br label %26

26:                                               ; preds = %19, %18
  tail call void @free(i8* %8) #7, !dbg !2509
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2510
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !dbg !2510, !tbaa !792
  %29 = icmp eq %struct.halide_device_interface_t* %28, null, !dbg !2511
  call void @llvm.dbg.value(metadata i1 %29, metadata !984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2470
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2512
  %31 = load i64, i64* %30, align 8, !dbg !2512, !tbaa !560
  %32 = icmp eq i64 %31, 0, !dbg !2513
  call void @llvm.dbg.value(metadata i1 %32, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2470
  %33 = xor i1 %29, true, !dbg !2514
  %34 = or i1 %32, %33, !dbg !2514
  br i1 %34, label %37, label %35, !dbg !2514

35:                                               ; preds = %26
  %36 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !2515
  br label %49, !dbg !2516

37:                                               ; preds = %26
  %38 = xor i1 %32, true, !dbg !2517
  %39 = or i1 %29, %38, !dbg !2517
  br i1 %39, label %42, label %40, !dbg !2517

40:                                               ; preds = %37
  %41 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !2518
  br label %49, !dbg !2519

42:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()) #9, !dbg !2520
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2522
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !2522
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !2524
  %44 = load i64, i64* %43, align 8, !dbg !2524, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2470
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2525
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !2525
  call void @llvm.dbg.value(metadata i1 undef, metadata !987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2470
  %45 = and i64 %44, 3, !dbg !2528
  %46 = icmp eq i64 %45, 3, !dbg !2528
  br i1 %46, label %47, label %55, !dbg !2528

47:                                               ; preds = %42
  %48 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !2529
  br label %49, !dbg !2530

49:                                               ; preds = %5, %35, %40, %47
  %50 = phi i32 [ %6, %5 ], [ %41, %40 ], [ %36, %35 ], [ %48, %47 ], !dbg !2470
  call void @llvm.dbg.value(metadata i32 %50, metadata !2468, metadata !DIExpression()), !dbg !2469
  %51 = icmp eq i32 %50, 0, !dbg !2531
  br i1 %51, label %52, label %62, !dbg !2533

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %54 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %53, align 8, !dbg !2534, !tbaa !792
  br label %55, !dbg !2533

55:                                               ; preds = %52, %42
  %56 = phi %struct.halide_device_interface_t* [ %54, %52 ], [ %28, %42 ], !dbg !2534
  %57 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %56, i32 0, i32 15, !dbg !2535
  %58 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %57, align 4, !dbg !2535, !tbaa !875
  %59 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %58, i32 0, i32 0, !dbg !2536
  %60 = load void ()*, void ()** %59, align 4, !dbg !2536, !tbaa !1550
  tail call void %60() #7, !dbg !2537
  %61 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2538
  store i64 %2, i64* %61, align 8, !dbg !2539, !tbaa !560
  br label %62, !dbg !2540

62:                                               ; preds = %49, %55
  %63 = phi i32 [ 0, %55 ], [ %50, %49 ], !dbg !2469
  ret i32 %63, !dbg !2541
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_default_device_detach_native(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !2542 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2544, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2545, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()) #9, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !981, metadata !DIExpression()) #9, !dbg !2548
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0), metadata !982, metadata !DIExpression()) #9, !dbg !2548
  %3 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !2550
  br i1 %3, label %4, label %6, !dbg !2551

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0)) #7, !dbg !2552
  br label %48, !dbg !2553

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !983, metadata !DIExpression()) #9, !dbg !2548
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !2554
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !2554
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !2554
  %7 = tail call i8* @malloc(i32 1024) #7, !dbg !2556
  %8 = icmp eq i8* %7, null, !dbg !2557
  br i1 %8, label %11, label %9, !dbg !2558

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i32 1023, !dbg !2559
  store i8 0, i8* %10, align 1, !dbg !2560, !tbaa !495
  br label %11, !dbg !2561

11:                                               ; preds = %9, %6
  %12 = phi i8* [ %10, %9 ], [ null, %6 ], !dbg !2562
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2563
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2563
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %12, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0)) #7, !dbg !2565
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2566
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2566
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %12, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0)) #7, !dbg !2568
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !2569
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !2569
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %12, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2571
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2572
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2572
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %12, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !2574
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2575
  br i1 %8, label %17, label %18, !dbg !2577

17:                                               ; preds = %11
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !2578
  br label %25, !dbg !2579

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !2580
  %19 = ptrtoint i8* %16 to i32, !dbg !2582
  %20 = ptrtoint i8* %7 to i32, !dbg !2582
  %21 = sub i32 1, %20, !dbg !2582
  %22 = add i32 %21, %19, !dbg !2583
  %23 = sext i32 %22 to i64, !dbg !2584
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %23) #7, !dbg !2585
  tail call void @halide_print(i8* %0, i8* nonnull %7) #7, !dbg !2586
  br label %25

25:                                               ; preds = %18, %17
  tail call void @free(i8* %7) #7, !dbg !2587
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2588
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !dbg !2588, !tbaa !792
  %28 = icmp eq %struct.halide_device_interface_t* %27, null, !dbg !2589
  call void @llvm.dbg.value(metadata i1 %28, metadata !984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2548
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2590
  %30 = load i64, i64* %29, align 8, !dbg !2590, !tbaa !560
  %31 = icmp eq i64 %30, 0, !dbg !2591
  call void @llvm.dbg.value(metadata i1 %31, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2548
  %32 = xor i1 %28, true, !dbg !2592
  %33 = or i1 %31, %32, !dbg !2592
  br i1 %33, label %36, label %34, !dbg !2592

34:                                               ; preds = %25
  %35 = tail call i32 @halide_error_no_device_interface(i8* %0) #7, !dbg !2593
  br label %48, !dbg !2594

36:                                               ; preds = %25
  %37 = xor i1 %31, true, !dbg !2595
  %38 = or i1 %28, %37, !dbg !2595
  br i1 %38, label %41, label %39, !dbg !2595

39:                                               ; preds = %36
  %40 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #7, !dbg !2596
  br label %48, !dbg !2597

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()) #9, !dbg !2598
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2600
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()) #9, !dbg !2600
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !2602
  %43 = load i64, i64* %42, align 8, !dbg !2602, !tbaa !751
  call void @llvm.dbg.value(metadata i1 undef, metadata !986, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()) #9, !dbg !2603
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()) #9, !dbg !2603
  call void @llvm.dbg.value(metadata i1 undef, metadata !987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2548
  %44 = and i64 %43, 3, !dbg !2606
  %45 = icmp eq i64 %44, 3, !dbg !2606
  br i1 %45, label %46, label %54, !dbg !2606

46:                                               ; preds = %41
  %47 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #7, !dbg !2607
  br label %48, !dbg !2608

48:                                               ; preds = %4, %34, %39, %46
  %49 = phi i32 [ %5, %4 ], [ %40, %39 ], [ %35, %34 ], [ %47, %46 ], !dbg !2548
  call void @llvm.dbg.value(metadata i32 %49, metadata !2546, metadata !DIExpression()), !dbg !2547
  %50 = icmp eq i32 %49, 0, !dbg !2609
  br i1 %50, label %51, label %65, !dbg !2611

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %53 = load i64, i64* %52, align 8, !dbg !2612, !tbaa !560
  br label %54, !dbg !2611

54:                                               ; preds = %51, %41
  %55 = phi i64 [ %53, %51 ], [ %30, %41 ], !dbg !2612
  %56 = icmp eq i64 %55, 0, !dbg !2614
  br i1 %56, label %65, label %57, !dbg !2615

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2612
  %59 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2616
  %60 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %59, align 8, !dbg !2616, !tbaa !792
  %61 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %60, i32 0, i32 15, !dbg !2617
  %62 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %61, align 4, !dbg !2617, !tbaa !875
  %63 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %62, i32 0, i32 1, !dbg !2618
  %64 = load void ()*, void ()** %63, align 4, !dbg !2618, !tbaa !1558
  tail call void %64() #7, !dbg !2619
  store i64 0, i64* %58, align 8, !dbg !2620, !tbaa !560
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %59, align 8, !dbg !2621, !tbaa !792
  br label %65, !dbg !2622

65:                                               ; preds = %54, %48, %57
  %66 = phi i32 [ 0, %57 ], [ %49, %48 ], [ 0, %54 ], !dbg !2547
  ret i32 %66, !dbg !2623
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_device_and_host_free_as_destructor(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !2624 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2626, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8* %1, metadata !2627, metadata !DIExpression()), !dbg !2629
  %3 = bitcast i8* %1 to %struct.halide_buffer_t*, !dbg !2630
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !2628, metadata !DIExpression()), !dbg !2629
  %4 = tail call i32 @halide_device_and_host_free(i8* %0, %struct.halide_buffer_t* %3) #8, !dbg !2631
  ret void, !dbg !2632
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_device_host_nop_free(i8* %0, i8* %1) local_unnamed_addr #6 !dbg !2633 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2635, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %1, metadata !2636, metadata !DIExpression()), !dbg !2637
  ret void, !dbg !2638
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_default_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 !dbg !2639 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2641, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2642, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !2643, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !2644, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !2646
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !2646
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !2646
  %5 = tail call i8* @malloc(i32 1024) #7, !dbg !2648
  %6 = icmp eq i8* %5, null, !dbg !2649
  br i1 %6, label %9, label %7, !dbg !2650

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023, !dbg !2651
  store i8 0, i8* %8, align 1, !dbg !2652, !tbaa !495
  br label %9, !dbg !2653

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !2654
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2655
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2655
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0)) #7, !dbg !2657
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2658
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2658
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0)) #7, !dbg !2660
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !2661
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !2661
  %13 = tail call i8* @halide_buffer_to_string(i8* %12, i8* %10, %struct.halide_buffer_t* nonnull %1) #7, !dbg !2663
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2664
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2664
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !2666
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2667
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2667
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %10, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0)) #7, !dbg !2669
  %16 = bitcast %struct.halide_device_interface_t* %2 to i8*, !dbg !2670
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !2671
  call void @llvm.dbg.value(metadata i8* %16, metadata !771, metadata !DIExpression()) #9, !dbg !2671
  %17 = tail call i8* @halide_pointer_to_string(i8* %15, i8* %10, i8* %16) #7, !dbg !2673
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2674
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2674
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !2676
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2677
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2677
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)) #7, !dbg !2679
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !2680
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1014, metadata !DIExpression()) #9, !dbg !2680
  %20 = tail call i8* @halide_buffer_to_string(i8* %19, i8* %10, %struct.halide_buffer_t* nonnull %3) #7, !dbg !2682
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2683
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2683
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !2685
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2686
  br i1 %6, label %22, label %23, !dbg !2688

22:                                               ; preds = %9
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !2689
  br label %30, !dbg !2690

23:                                               ; preds = %9
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !2691
  %24 = ptrtoint i8* %21 to i32, !dbg !2693
  %25 = ptrtoint i8* %5 to i32, !dbg !2693
  %26 = add i32 %24, 1, !dbg !2693
  %27 = sub i32 %26, %25, !dbg !2694
  %28 = sext i32 %27 to i64, !dbg !2695
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #7, !dbg !2696
  tail call void @halide_print(i8* %0, i8* nonnull %5) #7, !dbg !2697
  br label %30

30:                                               ; preds = %22, %23
  call void @free(i8* %5) #7, !dbg !2698
  ret i32 -39, !dbg !2699
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_buffer_copy_already_locked(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 !dbg !2700 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2702, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2703, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !2704, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !2705, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !2720
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !2720
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !2720
  %6 = tail call i8* @malloc(i32 1024) #7, !dbg !2722
  %7 = icmp eq i8* %6, null, !dbg !2723
  br i1 %7, label %8, label %10, !dbg !2724

8:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2725
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2725
  %9 = tail call i8* @halide_string_to_string(i8* %6, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i32 0, i32 0)) #7, !dbg !2727
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2728
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !2730
  br label %19, !dbg !2731

10:                                               ; preds = %4
  %11 = getelementptr inbounds i8, i8* %6, i32 1023, !dbg !2732
  store i8 0, i8* %11, align 1, !dbg !2733, !tbaa !495
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2725
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2725
  %12 = tail call i8* @halide_string_to_string(i8* nonnull %6, i8* nonnull %11, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i32 0, i32 0)) #7, !dbg !2727
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2728
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !2734
  %13 = ptrtoint i8* %12 to i32, !dbg !2736
  %14 = ptrtoint i8* %6 to i32, !dbg !2736
  %15 = add i32 %13, 1, !dbg !2736
  %16 = sub i32 %15, %14, !dbg !2737
  %17 = sext i32 %16 to i64, !dbg !2738
  %18 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %17) #7, !dbg !2739
  tail call void @halide_print(i8* %0, i8* nonnull %6) #7, !dbg !2740
  br label %19

19:                                               ; preds = %10, %8
  tail call void @free(i8* %6) #7, !dbg !2741
  call void @llvm.dbg.value(metadata i32 0, metadata !2706, metadata !DIExpression()), !dbg !2719
  %20 = icmp eq %struct.halide_device_interface_t* %2, null, !dbg !2742
  br i1 %20, label %49, label %21, !dbg !2744

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 1, !dbg !2745
  %23 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %22, align 8, !dbg !2745, !tbaa !792
  %24 = icmp eq %struct.halide_device_interface_t* %23, null, !dbg !2746
  %25 = icmp eq %struct.halide_device_interface_t* %23, %2
  %26 = or i1 %24, %25, !dbg !2747
  br i1 %26, label %28, label %27, !dbg !2747

27:                                               ; preds = %21
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.42, i32 0, i32 0)) #7, !dbg !2748
  br label %283, !dbg !2750

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0, !dbg !2751
  %30 = load i64, i64* %29, align 8, !dbg !2751, !tbaa !560
  %31 = icmp eq i64 %30, 0, !dbg !2753
  br i1 %31, label %32, label %49, !dbg !2754

32:                                               ; preds = %28
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !2755
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !2755
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !2755
  %33 = tail call i8* @malloc(i32 1024) #7, !dbg !2758
  %34 = icmp eq i8* %33, null, !dbg !2759
  br i1 %34, label %35, label %37, !dbg !2760

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2761
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.43, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2761
  %36 = tail call i8* @halide_string_to_string(i8* %33, i8* null, i8* nonnull getelementptr inbounds ([66 x i8], [66 x i8]* @.str.43, i32 0, i32 0)) #7, !dbg !2763
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2764
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !2766
  br label %46, !dbg !2767

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, i8* %33, i32 1023, !dbg !2768
  store i8 0, i8* %38, align 1, !dbg !2769, !tbaa !495
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2761
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.43, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2761
  %39 = tail call i8* @halide_string_to_string(i8* nonnull %33, i8* nonnull %38, i8* nonnull getelementptr inbounds ([66 x i8], [66 x i8]* @.str.43, i32 0, i32 0)) #7, !dbg !2763
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2764
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !2770
  %40 = ptrtoint i8* %39 to i32, !dbg !2772
  %41 = ptrtoint i8* %33 to i32, !dbg !2772
  %42 = add i32 %40, 1, !dbg !2772
  %43 = sub i32 %42, %41, !dbg !2773
  %44 = sext i32 %43 to i64, !dbg !2774
  %45 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %33, i64 %44) #7, !dbg !2775
  tail call void @halide_print(i8* %0, i8* nonnull %33) #7, !dbg !2776
  br label %46

46:                                               ; preds = %37, %35
  tail call void @free(i8* %33) #7, !dbg !2777
  %47 = tail call i32 @halide_device_malloc(i8* %0, %struct.halide_buffer_t* nonnull %3, %struct.halide_device_interface_t* nonnull %2) #8, !dbg !2778
  call void @llvm.dbg.value(metadata i32 %47, metadata !2706, metadata !DIExpression()), !dbg !2719
  %48 = icmp eq i32 %47, 0, !dbg !2779
  br i1 %48, label %49, label %283, !dbg !2781

49:                                               ; preds = %19, %46, %28
  %50 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2782
  %51 = load i64, i64* %50, align 8, !dbg !2782, !tbaa !560
  %52 = icmp eq i64 %51, 0, !dbg !2783
  %53 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %54 = load i8*, i8** %53, align 4, !dbg !2719, !tbaa !551
  %55 = icmp eq i8* %54, null, !dbg !2719
  br i1 %52, label %62, label %56, !dbg !2784

56:                                               ; preds = %49
  br i1 %55, label %73, label %57, !dbg !2785

57:                                               ; preds = %56
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !793, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 1, metadata !747, metadata !DIExpression()), !dbg !2788
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !2790
  %59 = load i64, i64* %58, align 8, !dbg !2790, !tbaa !751
  %60 = and i64 %59, 1, !dbg !2791
  %61 = icmp eq i64 %60, 0, !dbg !2792
  call void @llvm.dbg.value(metadata i1 false, metadata !2707, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2719
  call void @llvm.dbg.value(metadata i1 %20, metadata !2709, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2719
  call void @llvm.dbg.value(metadata i1 %20, metadata !2710, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2719
  call void @llvm.dbg.value(metadata i1 %55, metadata !2711, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2719
  br label %63, !dbg !2793

62:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i1 false, metadata !2707, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2719
  call void @llvm.dbg.value(metadata i1 %20, metadata !2709, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2719
  call void @llvm.dbg.value(metadata i1 %20, metadata !2710, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2719
  call void @llvm.dbg.value(metadata i1 %55, metadata !2711, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2719
  br i1 %55, label %73, label %63, !dbg !2793

63:                                               ; preds = %57, %62
  %64 = phi i1 [ %61, %57 ], [ false, %62 ]
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !738, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !744, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i32 2, metadata !747, metadata !DIExpression()), !dbg !2796
  %65 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !2798
  %66 = load i64, i64* %65, align 8, !dbg !2798, !tbaa !751
  %67 = and i64 %66, 2, !dbg !2799
  %68 = icmp eq i64 %67, 0, !dbg !2800
  br i1 %68, label %73, label %69, !dbg !2801

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2802
  %71 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %70, align 8, !dbg !2802, !tbaa !792
  %72 = icmp eq %struct.halide_device_interface_t* %71, null, !dbg !2803
  br label %73, !dbg !2801

73:                                               ; preds = %56, %63, %69, %62
  %74 = phi i1 [ true, %62 ], [ false, %63 ], [ false, %69 ], [ true, %56 ]
  %75 = phi i1 [ false, %62 ], [ %64, %63 ], [ %64, %69 ], [ true, %56 ]
  %76 = phi i1 [ false, %62 ], [ true, %63 ], [ %72, %69 ], [ false, %56 ], !dbg !2719
  call void @llvm.dbg.value(metadata i1 %76, metadata !2712, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2719
  %77 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 2, !dbg !2804
  %78 = load i8*, i8** %77, align 4, !dbg !2804, !tbaa !551
  %79 = icmp eq i8* %78, null, !dbg !2805
  call void @llvm.dbg.value(metadata i1 %79, metadata !2713, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2719
  %80 = and i1 %20, %79, !dbg !2806
  br i1 %80, label %283, label %81, !dbg !2806

81:                                               ; preds = %73
  call void @llvm.dbg.value(metadata i32 -42, metadata !2706, metadata !DIExpression()), !dbg !2719
  %82 = xor i1 %75, true, !dbg !2808
  %83 = or i1 %20, %82, !dbg !2808
  br i1 %83, label %105, label %84, !dbg !2808

84:                                               ; preds = %81
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !2810
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !2810
  %85 = tail call i8* @malloc(i32 1024) #7, !dbg !2813
  %86 = icmp eq i8* %85, null, !dbg !2814
  br i1 %86, label %87, label %89, !dbg !2815

87:                                               ; preds = %84
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2816
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.44, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2816
  %88 = tail call i8* @halide_string_to_string(i8* %85, i8* null, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.44, i32 0, i32 0)) #7, !dbg !2818
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2819
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !2821
  br label %98, !dbg !2822

89:                                               ; preds = %84
  %90 = getelementptr inbounds i8, i8* %85, i32 1023, !dbg !2823
  store i8 0, i8* %90, align 1, !dbg !2824, !tbaa !495
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2816
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.44, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2816
  %91 = tail call i8* @halide_string_to_string(i8* nonnull %85, i8* nonnull %90, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.44, i32 0, i32 0)) #7, !dbg !2818
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2819
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !2825
  %92 = ptrtoint i8* %91 to i32, !dbg !2827
  %93 = ptrtoint i8* %85 to i32, !dbg !2827
  %94 = add i32 %92, 1, !dbg !2827
  %95 = sub i32 %94, %93, !dbg !2828
  %96 = sext i32 %95 to i64, !dbg !2829
  %97 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %85, i64 %96) #7, !dbg !2830
  tail call void @halide_print(i8* %0, i8* nonnull %85) #7, !dbg !2831
  br label %98

98:                                               ; preds = %89, %87
  tail call void @free(i8* %85) #7, !dbg !2832
  %99 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i32 0, i32 15, !dbg !2833
  %100 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %99, align 4, !dbg !2833, !tbaa !875
  %101 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %100, i32 0, i32 10, !dbg !2834
  %102 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %101, align 4, !dbg !2834, !tbaa !2835
  %103 = tail call i32 %102(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* nonnull %2, %struct.halide_buffer_t* nonnull %3) #7, !dbg !2836
  call void @llvm.dbg.value(metadata i32 %103, metadata !2706, metadata !DIExpression()), !dbg !2719
  %104 = icmp eq i32 %103, -42, !dbg !2837
  br i1 %104, label %105, label %220, !dbg !2838

105:                                              ; preds = %81, %98
  %106 = and i1 %74, %79, !dbg !2839
  br i1 %106, label %107, label %122, !dbg !2839

107:                                              ; preds = %105
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !2841
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !2841
  %108 = tail call i8* @malloc(i32 1024) #7, !dbg !2844
  %109 = icmp eq i8* %108, null, !dbg !2845
  br i1 %109, label %110, label %112, !dbg !2846

110:                                              ; preds = %107
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2847
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.45, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2847
  %111 = tail call i8* @halide_string_to_string(i8* %108, i8* null, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @.str.45, i32 0, i32 0)) #7, !dbg !2849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2850
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !2852
  br label %121, !dbg !2853

112:                                              ; preds = %107
  %113 = getelementptr inbounds i8, i8* %108, i32 1023, !dbg !2854
  store i8 0, i8* %113, align 1, !dbg !2855, !tbaa !495
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2847
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.45, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2847
  %114 = tail call i8* @halide_string_to_string(i8* nonnull %108, i8* nonnull %113, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @.str.45, i32 0, i32 0)) #7, !dbg !2849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2850
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !2856
  %115 = ptrtoint i8* %114 to i32, !dbg !2858
  %116 = ptrtoint i8* %108 to i32, !dbg !2858
  %117 = add i32 %115, 1, !dbg !2858
  %118 = sub i32 %117, %116, !dbg !2859
  %119 = sext i32 %118 to i64, !dbg !2860
  %120 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %108, i64 %119) #7, !dbg !2861
  tail call void @halide_print(i8* %0, i8* nonnull %108) #7, !dbg !2862
  br label %121

121:                                              ; preds = %112, %110
  tail call void @free(i8* %108) #7, !dbg !2863
  br label %283, !dbg !2864

122:                                              ; preds = %105
  %123 = and i1 %20, %76, !dbg !2865
  br i1 %123, label %124, label %126, !dbg !2865

124:                                              ; preds = %122
  %125 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*, !dbg !2866
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %125) #9, !dbg !2866
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %5, metadata !2714, metadata !DIExpression()), !dbg !2867
  call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext true, %struct.halide_buffer_t* nonnull %3, i1 zeroext true) #8, !dbg !2868
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #8, !dbg !2869
  call void @llvm.dbg.value(metadata i32 0, metadata !2706, metadata !DIExpression()), !dbg !2719
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %125) #9, !dbg !2870
  call void @llvm.dbg.value(metadata i32 %221, metadata !2706, metadata !DIExpression()), !dbg !2719
  br label %244, !dbg !2871

126:                                              ; preds = %122
  br i1 %20, label %127, label %155, !dbg !2872

127:                                              ; preds = %126
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !2873
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !2873
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !2873
  %128 = tail call i8* @malloc(i32 1024) #7, !dbg !2877
  %129 = icmp eq i8* %128, null, !dbg !2878
  br i1 %129, label %130, label %132, !dbg !2879

130:                                              ; preds = %127
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2880
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.46, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2880
  %131 = tail call i8* @halide_string_to_string(i8* %128, i8* null, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.46, i32 0, i32 0)) #7, !dbg !2882
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2883
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !2885
  br label %141, !dbg !2886

132:                                              ; preds = %127
  %133 = getelementptr inbounds i8, i8* %128, i32 1023, !dbg !2887
  store i8 0, i8* %133, align 1, !dbg !2888, !tbaa !495
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2880
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.46, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2880
  %134 = tail call i8* @halide_string_to_string(i8* nonnull %128, i8* nonnull %133, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.46, i32 0, i32 0)) #7, !dbg !2882
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2883
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !2889
  %135 = ptrtoint i8* %134 to i32, !dbg !2891
  %136 = ptrtoint i8* %128 to i32, !dbg !2891
  %137 = add i32 %135, 1, !dbg !2891
  %138 = sub i32 %137, %136, !dbg !2892
  %139 = sext i32 %138 to i64, !dbg !2893
  %140 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %128, i64 %139) #7, !dbg !2894
  tail call void @halide_print(i8* %0, i8* nonnull %128) #7, !dbg !2895
  br label %141

141:                                              ; preds = %132, %130
  tail call void @free(i8* %128) #7, !dbg !2896
  %142 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2897
  %143 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %142, align 8, !dbg !2897, !tbaa !792
  %144 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %143, i32 0, i32 15, !dbg !2898
  %145 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %144, align 4, !dbg !2898, !tbaa !875
  %146 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %145, i32 0, i32 10, !dbg !2899
  %147 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %146, align 4, !dbg !2899, !tbaa !2835
  %148 = tail call i32 %147(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* nonnull %3) #7, !dbg !2900
  call void @llvm.dbg.value(metadata i32 %148, metadata !2706, metadata !DIExpression()), !dbg !2719
  %149 = icmp eq i32 %148, -42, !dbg !2901
  br i1 %149, label %150, label %220, !dbg !2903

150:                                              ; preds = %141
  %151 = tail call i32 @_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* nonnull %1) #8, !dbg !2904
  call void @llvm.dbg.value(metadata i32 %151, metadata !2706, metadata !DIExpression()), !dbg !2719
  %152 = icmp eq i32 %151, 0, !dbg !2906
  br i1 %152, label %153, label %223, !dbg !2908

153:                                              ; preds = %150
  %154 = tail call i32 @halide_buffer_copy_already_locked(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* nonnull %3) #8, !dbg !2909
  call void @llvm.dbg.value(metadata i32 %154, metadata !2706, metadata !DIExpression()), !dbg !2719
  br label %220, !dbg !2911

155:                                              ; preds = %126
  %156 = or i1 %79, %82, !dbg !2912
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !2915
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !2918
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !2915
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !2918
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !2915
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !2918
  %157 = tail call i8* @malloc(i32 1024) #7, !dbg !2921
  %158 = icmp eq i8* %157, null, !dbg !2921
  br i1 %156, label %199, label %159, !dbg !2912

159:                                              ; preds = %155
  br i1 %158, label %160, label %162, !dbg !2922

160:                                              ; preds = %159
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2923
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.47, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2923
  %161 = tail call i8* @halide_string_to_string(i8* %157, i8* null, i8* nonnull getelementptr inbounds ([78 x i8], [78 x i8]* @.str.47, i32 0, i32 0)) #7, !dbg !2925
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2926
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !2928
  br label %171, !dbg !2929

162:                                              ; preds = %159
  %163 = getelementptr inbounds i8, i8* %157, i32 1023, !dbg !2930
  store i8 0, i8* %163, align 1, !dbg !2931, !tbaa !495
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2923
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.47, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2923
  %164 = tail call i8* @halide_string_to_string(i8* nonnull %157, i8* nonnull %163, i8* nonnull getelementptr inbounds ([78 x i8], [78 x i8]* @.str.47, i32 0, i32 0)) #7, !dbg !2925
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2926
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !2932
  %165 = ptrtoint i8* %164 to i32, !dbg !2934
  %166 = ptrtoint i8* %157 to i32, !dbg !2934
  %167 = add i32 %165, 1, !dbg !2934
  %168 = sub i32 %167, %166, !dbg !2935
  %169 = sext i32 %168 to i64, !dbg !2936
  %170 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %157, i64 %169) #7, !dbg !2937
  tail call void @halide_print(i8* %0, i8* nonnull %157) #7, !dbg !2938
  br label %171

171:                                              ; preds = %162, %160
  tail call void @free(i8* %157) #7, !dbg !2939
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !2940
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !2940
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !2940
  %172 = tail call i8* @malloc(i32 1024) #7, !dbg !2942
  %173 = icmp eq i8* %172, null, !dbg !2943
  br i1 %173, label %174, label %176, !dbg !2944

174:                                              ; preds = %171
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2945
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2945
  %175 = tail call i8* @halide_string_to_string(i8* %172, i8* null, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i32 0, i32 0)) #7, !dbg !2947
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2948
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !2950
  br label %185, !dbg !2951

176:                                              ; preds = %171
  %177 = getelementptr inbounds i8, i8* %172, i32 1023, !dbg !2952
  store i8 0, i8* %177, align 1, !dbg !2953, !tbaa !495
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2945
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2945
  %178 = tail call i8* @halide_string_to_string(i8* nonnull %172, i8* nonnull %177, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i32 0, i32 0)) #7, !dbg !2947
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2948
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !2954
  %179 = ptrtoint i8* %178 to i32, !dbg !2956
  %180 = ptrtoint i8* %172 to i32, !dbg !2956
  %181 = add i32 %179, 1, !dbg !2956
  %182 = sub i32 %181, %180, !dbg !2957
  %183 = sext i32 %182 to i64, !dbg !2958
  %184 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %172, i64 %183) #7, !dbg !2959
  tail call void @halide_print(i8* %0, i8* nonnull %172) #7, !dbg !2960
  br label %185

185:                                              ; preds = %176, %174
  tail call void @free(i8* %172) #7, !dbg !2961
  %186 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2962
  %187 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %186, align 8, !dbg !2962, !tbaa !792
  %188 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %187, i32 0, i32 15, !dbg !2963
  %189 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %188, align 4, !dbg !2963, !tbaa !875
  %190 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %189, i32 0, i32 10, !dbg !2964
  %191 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %190, align 4, !dbg !2964, !tbaa !2835
  %192 = tail call i32 %191(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* nonnull %3) #7, !dbg !2965
  call void @llvm.dbg.value(metadata i32 %192, metadata !2706, metadata !DIExpression()), !dbg !2719
  %193 = icmp eq i32 %192, 0, !dbg !2966
  br i1 %193, label %194, label %223, !dbg !2968

194:                                              ; preds = %185
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1360, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i1 true, metadata !1363, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2969
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !923, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i32 1, metadata !926, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i1 true, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2972
  %195 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 3, !dbg !2974
  %196 = load i64, i64* %195, align 8, !dbg !2976, !tbaa !751
  %197 = or i64 %196, 1, !dbg !2976
  store i64 %197, i64* %195, align 8, !dbg !2976, !tbaa !751
  %198 = tail call i32 @copy_to_device_already_locked(i8* %0, %struct.halide_buffer_t* nonnull %3, %struct.halide_device_interface_t* nonnull %2) #8, !dbg !2977
  call void @llvm.dbg.value(metadata i32 %198, metadata !2706, metadata !DIExpression()), !dbg !2719
  br label %220, !dbg !2978

199:                                              ; preds = %155
  br i1 %158, label %200, label %202, !dbg !2979

200:                                              ; preds = %199
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2980
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.49, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2980
  %201 = tail call i8* @halide_string_to_string(i8* %157, i8* null, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @.str.49, i32 0, i32 0)) #7, !dbg !2982
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2983
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !2985
  br label %211, !dbg !2986

202:                                              ; preds = %199
  %203 = getelementptr inbounds i8, i8* %157, i32 1023, !dbg !2987
  store i8 0, i8* %203, align 1, !dbg !2988, !tbaa !495
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !2980
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.49, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !2980
  %204 = tail call i8* @halide_string_to_string(i8* nonnull %157, i8* nonnull %203, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @.str.49, i32 0, i32 0)) #7, !dbg !2982
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !2983
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !2989
  %205 = ptrtoint i8* %204 to i32, !dbg !2991
  %206 = ptrtoint i8* %157 to i32, !dbg !2991
  %207 = add i32 %205, 1, !dbg !2991
  %208 = sub i32 %207, %206, !dbg !2992
  %209 = sext i32 %208 to i64, !dbg !2993
  %210 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %157, i64 %209) #7, !dbg !2994
  tail call void @halide_print(i8* %0, i8* nonnull %157) #7, !dbg !2995
  br label %211

211:                                              ; preds = %202, %200
  tail call void @free(i8* %157) #7, !dbg !2996
  %212 = tail call i32 @_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* nonnull %1) #8, !dbg !2997
  call void @llvm.dbg.value(metadata i32 %212, metadata !2706, metadata !DIExpression()), !dbg !2719
  %213 = icmp eq i32 %212, 0, !dbg !2998
  br i1 %213, label %214, label %223, !dbg !3000

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i32 0, i32 15, !dbg !3001
  %216 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %215, align 4, !dbg !3001, !tbaa !875
  %217 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %216, i32 0, i32 10, !dbg !3003
  %218 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %217, align 4, !dbg !3003, !tbaa !2835
  %219 = tail call i32 %218(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* nonnull %2, %struct.halide_buffer_t* nonnull %3) #7, !dbg !3004
  call void @llvm.dbg.value(metadata i32 %219, metadata !2706, metadata !DIExpression()), !dbg !2719
  br label %220, !dbg !3005

220:                                              ; preds = %194, %214, %141, %153, %98
  %221 = phi i32 [ %154, %153 ], [ %148, %141 ], [ %198, %194 ], [ %219, %214 ], [ %103, %98 ], !dbg !2719
  call void @llvm.dbg.value(metadata i32 %221, metadata !2706, metadata !DIExpression()), !dbg !2719
  %222 = icmp eq i32 %221, 0, !dbg !2871
  br i1 %222, label %244, label %223, !dbg !2871

223:                                              ; preds = %211, %185, %150, %220
  %224 = phi i32 [ %221, %220 ], [ %212, %211 ], [ %192, %185 ], [ %151, %150 ]
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !3006
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !3006
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !3006
  %225 = tail call i8* @malloc(i32 1024) #7, !dbg !3010
  %226 = icmp eq i8* %225, null, !dbg !3011
  br i1 %226, label %229, label %227, !dbg !3012

227:                                              ; preds = %223
  %228 = getelementptr inbounds i8, i8* %225, i32 1023, !dbg !3013
  store i8 0, i8* %228, align 1, !dbg !3014, !tbaa !495
  br label %229, !dbg !3015

229:                                              ; preds = %223, %227
  %230 = phi i8* [ %228, %227 ], [ null, %223 ], !dbg !3016
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3017
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.50, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3017
  %231 = tail call i8* @halide_string_to_string(i8* %225, i8* %230, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.50, i32 0, i32 0)) #7, !dbg !3019
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !3020, metadata !DIExpression()) #9, !dbg !3024
  call void @llvm.dbg.value(metadata i32 %221, metadata !3023, metadata !DIExpression()) #9, !dbg !3024
  %232 = sext i32 %224 to i64, !dbg !3026
  %233 = tail call i8* @halide_int64_to_string(i8* %231, i8* %230, i64 %232, i32 1) #7, !dbg !3027
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3028
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3028
  %234 = tail call i8* @halide_string_to_string(i8* %233, i8* %230, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0)) #7, !dbg !3030
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !3031
  br i1 %226, label %235, label %236, !dbg !3033

235:                                              ; preds = %229
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !3034
  br label %243, !dbg !3035

236:                                              ; preds = %229
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !3036
  %237 = ptrtoint i8* %234 to i32, !dbg !3038
  %238 = ptrtoint i8* %225 to i32, !dbg !3038
  %239 = add i32 %237, 1, !dbg !3038
  %240 = sub i32 %239, %238, !dbg !3039
  %241 = sext i32 %240 to i64, !dbg !3040
  %242 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %225, i64 %241) #7, !dbg !3041
  tail call void @halide_print(i8* %0, i8* nonnull %225) #7, !dbg !3042
  br label %243

243:                                              ; preds = %236, %235
  tail call void @free(i8* %225) #7, !dbg !3043
  br label %283, !dbg !3044

244:                                              ; preds = %124, %220
  %245 = icmp eq %struct.halide_buffer_t* %3, %1, !dbg !3046
  br i1 %245, label %283, label %246, !dbg !3047

246:                                              ; preds = %244
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !3048
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !3053
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !3048
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !3053
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !3048
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !3053
  %247 = call i8* @malloc(i32 1024) #7, !dbg !3056
  %248 = icmp eq i8* %247, null, !dbg !3056
  br i1 %20, label %266, label %249, !dbg !3057

249:                                              ; preds = %246
  br i1 %248, label %250, label %252, !dbg !3058

250:                                              ; preds = %249
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3059
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.52, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3059
  %251 = call i8* @halide_string_to_string(i8* %247, i8* null, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.52, i32 0, i32 0)) #7, !dbg !3061
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !3062
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !3064
  br label %261, !dbg !3065

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, i8* %247, i32 1023, !dbg !3066
  store i8 0, i8* %253, align 1, !dbg !3067, !tbaa !495
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3059
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.52, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3059
  %254 = call i8* @halide_string_to_string(i8* nonnull %247, i8* nonnull %253, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.52, i32 0, i32 0)) #7, !dbg !3061
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !3062
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !3068
  %255 = ptrtoint i8* %254 to i32, !dbg !3070
  %256 = ptrtoint i8* %247 to i32, !dbg !3070
  %257 = add i32 %255, 1, !dbg !3070
  %258 = sub i32 %257, %256, !dbg !3071
  %259 = sext i32 %258 to i64, !dbg !3072
  %260 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %247, i64 %259) #7, !dbg !3073
  call void @halide_print(i8* %0, i8* nonnull %247) #7, !dbg !3074
  br label %261

261:                                              ; preds = %252, %250
  call void @free(i8* %247) #7, !dbg !3075
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1360, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i1 false, metadata !1363, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3076
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !923, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 1, metadata !926, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i1 false, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3078
  %262 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 3, !dbg !3080
  %263 = load i64, i64* %262, align 8, !dbg !3081, !tbaa !751
  %264 = and i64 %263, -4, !dbg !3081
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !917, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i1 true, metadata !920, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3082
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !923, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i32 2, metadata !926, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i1 true, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3084
  %265 = or i64 %264, 2, !dbg !3086
  store i64 %265, i64* %262, align 8, !dbg !3086, !tbaa !751
  br label %283, !dbg !3087

266:                                              ; preds = %246
  br i1 %248, label %267, label %269, !dbg !3088

267:                                              ; preds = %266
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3089
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3089
  %268 = call i8* @halide_string_to_string(i8* %247, i8* null, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i32 0, i32 0)) #7, !dbg !3091
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !3092
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !3094
  br label %278, !dbg !3095

269:                                              ; preds = %266
  %270 = getelementptr inbounds i8, i8* %247, i32 1023, !dbg !3096
  store i8 0, i8* %270, align 1, !dbg !3097, !tbaa !495
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3089
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3089
  %271 = call i8* @halide_string_to_string(i8* nonnull %247, i8* nonnull %270, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i32 0, i32 0)) #7, !dbg !3091
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !3092
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !3098
  %272 = ptrtoint i8* %271 to i32, !dbg !3100
  %273 = ptrtoint i8* %247 to i32, !dbg !3100
  %274 = add i32 %272, 1, !dbg !3100
  %275 = sub i32 %274, %273, !dbg !3101
  %276 = sext i32 %275 to i64, !dbg !3102
  %277 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %247, i64 %276) #7, !dbg !3103
  call void @halide_print(i8* %0, i8* nonnull %247) #7, !dbg !3104
  br label %278

278:                                              ; preds = %269, %267
  call void @free(i8* %247) #7, !dbg !3105
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1360, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i1 true, metadata !1363, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3106
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !923, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i32 1, metadata !926, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i1 true, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3108
  %279 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 3, !dbg !3110
  %280 = load i64, i64* %279, align 8, !dbg !3111, !tbaa !751
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !917, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i1 false, metadata !920, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3112
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !923, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i32 2, metadata !926, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i1 false, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3114
  %281 = and i64 %280, -4, !dbg !3116
  %282 = or i64 %281, 1, !dbg !3116
  store i64 %282, i64* %279, align 8, !dbg !3116, !tbaa !751
  br label %283

283:                                              ; preds = %243, %121, %73, %261, %278, %244, %46, %27
  %284 = phi i32 [ -42, %27 ], [ %47, %46 ], [ -42, %121 ], [ -34, %73 ], [ 0, %261 ], [ 0, %278 ], [ 0, %244 ], [ %224, %243 ], !dbg !2719
  ret i32 %284, !dbg !3117
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 !dbg !3118 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3120, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3121, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !3122, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !3123, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !3127
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !3127
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !3127
  %5 = tail call i8* @malloc(i32 1024) #7, !dbg !3129
  %6 = icmp eq i8* %5, null, !dbg !3130
  br i1 %6, label %9, label %7, !dbg !3131

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023, !dbg !3132
  store i8 0, i8* %8, align 1, !dbg !3133, !tbaa !495
  br label %9, !dbg !3134

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !3135
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3136
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3136
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0)) #7, !dbg !3138
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3139
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3139
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)) #7, !dbg !3141
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !3142
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !3142
  %13 = tail call i8* @halide_buffer_to_string(i8* %12, i8* %10, %struct.halide_buffer_t* nonnull %1) #7, !dbg !3144
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3145
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3145
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !3147
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3148
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3148
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %10, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0)) #7, !dbg !3150
  %16 = bitcast %struct.halide_device_interface_t* %2 to i8*, !dbg !3151
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !768, metadata !DIExpression()) #9, !dbg !3152
  call void @llvm.dbg.value(metadata i8* %16, metadata !771, metadata !DIExpression()) #9, !dbg !3152
  %17 = tail call i8* @halide_pointer_to_string(i8* %15, i8* %10, i8* %16) #7, !dbg !3154
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3155
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3155
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !3157
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3158
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3158
  %19 = tail call i8* @halide_string_to_string(i8* %18, i8* %10, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0)) #7, !dbg !3160
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !3161
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1014, metadata !DIExpression()) #9, !dbg !3161
  %20 = tail call i8* @halide_buffer_to_string(i8* %19, i8* %10, %struct.halide_buffer_t* nonnull %3) #7, !dbg !3163
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3164
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3164
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !3166
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !3167
  br i1 %6, label %22, label %23, !dbg !3169

22:                                               ; preds = %9
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !3170
  br label %30, !dbg !3171

23:                                               ; preds = %9
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !3172
  %24 = ptrtoint i8* %21 to i32, !dbg !3174
  %25 = ptrtoint i8* %5 to i32, !dbg !3174
  %26 = add i32 %24, 1, !dbg !3174
  %27 = sub i32 %26, %25, !dbg !3175
  %28 = sext i32 %27 to i64, !dbg !3176
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %28) #7, !dbg !3177
  tail call void @halide_print(i8* %0, i8* nonnull %5) #7, !dbg !3178
  br label %30

30:                                               ; preds = %22, %23
  call void @free(i8* %5) #7, !dbg !3179
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !966, metadata !DIExpression()) #9, !dbg !3180
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !969, metadata !DIExpression()) #9, !dbg !3180
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !3124, metadata !DIExpression()), !dbg !3126
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3182
  %31 = icmp eq %struct.halide_device_interface_t* %2, null, !dbg !3183
  br i1 %31, label %37, label %32, !dbg !3185

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i32 0, i32 15, !dbg !3186
  %34 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %33, align 4, !dbg !3186, !tbaa !875
  %35 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %34, i32 0, i32 0, !dbg !3188
  %36 = load void ()*, void ()** %35, align 4, !dbg !3188, !tbaa !1550
  call void %36() #7, !dbg !3189
  br label %37, !dbg !3190

37:                                               ; preds = %32, %30
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !3191
  %39 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %38, align 8, !dbg !3191, !tbaa !792
  %40 = icmp eq %struct.halide_device_interface_t* %39, null, !dbg !3193
  br i1 %40, label %46, label %41, !dbg !3194

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %39, i32 0, i32 15, !dbg !3195
  %43 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %42, align 4, !dbg !3195, !tbaa !875
  %44 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %43, i32 0, i32 0, !dbg !3197
  %45 = load void ()*, void ()** %44, align 4, !dbg !3197, !tbaa !1550
  call void %45() #7, !dbg !3198
  br label %46, !dbg !3199

46:                                               ; preds = %41, %37
  %47 = call i32 @halide_buffer_copy_already_locked(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* nonnull %3) #8, !dbg !3200
  call void @llvm.dbg.value(metadata i32 %47, metadata !3125, metadata !DIExpression()), !dbg !3126
  br i1 %31, label %53, label %48, !dbg !3201

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i32 0, i32 15, !dbg !3202
  %50 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %49, align 4, !dbg !3202, !tbaa !875
  %51 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %50, i32 0, i32 1, !dbg !3205
  %52 = load void ()*, void ()** %51, align 4, !dbg !3205, !tbaa !1558
  call void %52() #7, !dbg !3206
  br label %53, !dbg !3207

53:                                               ; preds = %48, %46
  %54 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %38, align 8, !dbg !3208, !tbaa !792
  %55 = icmp eq %struct.halide_device_interface_t* %54, null, !dbg !3210
  br i1 %55, label %61, label %56, !dbg !3211

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %54, i32 0, i32 15, !dbg !3212
  %58 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %57, align 4, !dbg !3212, !tbaa !875
  %59 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %58, i32 0, i32 1, !dbg !3214
  %60 = load void ()*, void ()** %59, align 4, !dbg !3214, !tbaa !1558
  call void %60() #7, !dbg !3215
  br label %61, !dbg !3216

61:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1066, metadata !DIExpression()) #9, !dbg !3217
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3219
  ret i32 %47, !dbg !3220
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) local_unnamed_addr #0 !dbg !3221 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3224, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !3225, metadata !DIExpression()), !dbg !3226
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i32 0, i32 0)) #7, !dbg !3227
  ret i32 -40, !dbg !3228
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) local_unnamed_addr #0 !dbg !3229 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3231, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3232, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i32 %2, metadata !3233, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i32 %3, metadata !3234, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !3235, metadata !DIExpression()), !dbg !3236
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i32 0, i32 0)) #7, !dbg !3237
  ret i32 -40, !dbg !3238
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) local_unnamed_addr #4 !dbg !3239 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3241, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3242, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !3243, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !966, metadata !DIExpression()) #9, !dbg !3247
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !969, metadata !DIExpression()) #9, !dbg !3247
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !3244, metadata !DIExpression()), !dbg !3246
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3249
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !3250
  %5 = load i64, i64* %4, align 8, !dbg !3250, !tbaa !560
  %6 = icmp eq i64 %5, 0, !dbg !3252
  br i1 %6, label %55, label %7, !dbg !3253

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 0, !dbg !3254
  %9 = load i64, i64* %8, align 8, !dbg !3254, !tbaa !560
  %10 = icmp eq i64 %9, 0, !dbg !3256
  br i1 %10, label %12, label %11, !dbg !3257

11:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.60, i32 0, i32 0)) #7, !dbg !3258
  br label %55, !dbg !3260

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !3261
  %14 = load i32, i32* %13, align 4, !dbg !3261, !tbaa !595
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 5, !dbg !3263
  %16 = load i32, i32* %15, align 4, !dbg !3263, !tbaa !595
  %17 = icmp eq i32 %14, %16, !dbg !3264
  br i1 %17, label %19, label %18, !dbg !3265

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !3266
  br label %55, !dbg !3268

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !3269
  %21 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %20, align 8, !dbg !3269, !tbaa !792
  %22 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %21, i32 0, i32 15, !dbg !3270
  %23 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %22, align 4, !dbg !3270, !tbaa !875
  %24 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %23, i32 0, i32 0, !dbg !3271
  %25 = load void ()*, void ()** %24, align 4, !dbg !3271, !tbaa !1550
  tail call void %25() #7, !dbg !3272
  %26 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %20, align 8, !dbg !3273, !tbaa !792
  %27 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %26, i32 0, i32 15, !dbg !3274
  %28 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %27, align 4, !dbg !3274, !tbaa !875
  %29 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %28, i32 0, i32 11, !dbg !3275
  %30 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)** %29, align 4, !dbg !3275, !tbaa !3276
  %31 = tail call i32 %30(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_buffer_t* nonnull %2) #7, !dbg !3277
  call void @llvm.dbg.value(metadata i32 %31, metadata !3245, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !3278
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !3278
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !3278
  %32 = tail call i8* @malloc(i32 1024) #7, !dbg !3280
  %33 = icmp eq i8* %32, null, !dbg !3281
  br i1 %33, label %36, label %34, !dbg !3282

34:                                               ; preds = %19
  %35 = getelementptr inbounds i8, i8* %32, i32 1023, !dbg !3283
  store i8 0, i8* %35, align 1, !dbg !3284, !tbaa !495
  br label %36, !dbg !3285

36:                                               ; preds = %19, %34
  %37 = phi i8* [ %35, %34 ], [ null, %19 ], !dbg !3286
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3287
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3287
  %38 = tail call i8* @halide_string_to_string(i8* %32, i8* %37, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !3289
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3290
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3290
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %37, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !3292
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3293
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3293
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %37, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0)) #7, !dbg !3295
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !3296
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !3296
  %41 = tail call i8* @halide_buffer_to_string(i8* %40, i8* %37, %struct.halide_buffer_t* nonnull %1) #7, !dbg !3298
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3299
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3299
  %42 = tail call i8* @halide_string_to_string(i8* %41, i8* %37, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !3301
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3302
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3302
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %37, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)) #7, !dbg !3304
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !3305
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !1014, metadata !DIExpression()) #9, !dbg !3305
  %44 = tail call i8* @halide_buffer_to_string(i8* %43, i8* %37, %struct.halide_buffer_t* nonnull %2) #7, !dbg !3307
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3308
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3308
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %37, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !3310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !3311
  br i1 %33, label %46, label %47, !dbg !3313

46:                                               ; preds = %36
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !3314
  br label %54, !dbg !3315

47:                                               ; preds = %36
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !3316
  %48 = ptrtoint i8* %45 to i32, !dbg !3318
  %49 = ptrtoint i8* %32 to i32, !dbg !3318
  %50 = add i32 %48, 1, !dbg !3318
  %51 = sub i32 %50, %49, !dbg !3319
  %52 = sext i32 %51 to i64, !dbg !3320
  %53 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %52) #7, !dbg !3321
  tail call void @halide_print(i8* %0, i8* nonnull %32) #7, !dbg !3322
  br label %54

54:                                               ; preds = %46, %47
  call void @free(i8* %32) #7, !dbg !3323
  br label %55

55:                                               ; preds = %3, %54, %18, %11
  %56 = phi i32 [ -41, %11 ], [ -41, %18 ], [ %31, %54 ], [ 0, %3 ], !dbg !3246
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1066, metadata !DIExpression()) #9, !dbg !3324
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3326
  ret i32 %56, !dbg !3327
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) local_unnamed_addr #4 !dbg !3328 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3330, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3331, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 %2, metadata !3332, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 %3, metadata !3333, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !3334, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !966, metadata !DIExpression()) #9, !dbg !3338
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !969, metadata !DIExpression()) #9, !dbg !3338
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !3335, metadata !DIExpression()), !dbg !3337
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3340
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !3341
  %7 = load i64, i64* %6, align 8, !dbg !3341, !tbaa !560
  %8 = icmp eq i64 %7, 0, !dbg !3343
  br i1 %8, label %58, label %9, !dbg !3344

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i32 0, i32 0, !dbg !3345
  %11 = load i64, i64* %10, align 8, !dbg !3345, !tbaa !560
  %12 = icmp eq i64 %11, 0, !dbg !3347
  br i1 %12, label %14, label %13, !dbg !3348

13:                                               ; preds = %9
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.60, i32 0, i32 0)) #7, !dbg !3349
  br label %58, !dbg !3351

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !3352
  %16 = load i32, i32* %15, align 4, !dbg !3352, !tbaa !595
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i32 0, i32 5, !dbg !3354
  %18 = load i32, i32* %17, align 4, !dbg !3354, !tbaa !595
  %19 = add nsw i32 %18, 1, !dbg !3355
  %20 = icmp eq i32 %16, %19, !dbg !3356
  br i1 %20, label %22, label %21, !dbg !3357

21:                                               ; preds = %14
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.64, i32 0, i32 0)) #7, !dbg !3358
  br label %58, !dbg !3360

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !3361
  %24 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %23, align 8, !dbg !3361, !tbaa !792
  %25 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %24, i32 0, i32 15, !dbg !3362
  %26 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %25, align 4, !dbg !3362, !tbaa !875
  %27 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %26, i32 0, i32 0, !dbg !3363
  %28 = load void ()*, void ()** %27, align 4, !dbg !3363, !tbaa !1550
  tail call void %28() #7, !dbg !3364
  %29 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %23, align 8, !dbg !3365, !tbaa !792
  %30 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %29, i32 0, i32 15, !dbg !3366
  %31 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %30, align 4, !dbg !3366, !tbaa !875
  %32 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %31, i32 0, i32 12, !dbg !3367
  %33 = load i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)** %32, align 4, !dbg !3367, !tbaa !3368
  %34 = tail call i32 %33(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 %2, i32 %3, %struct.halide_buffer_t* nonnull %4) #7, !dbg !3369
  call void @llvm.dbg.value(metadata i32 %34, metadata !3336, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !456, metadata !DIExpression()) #9, !dbg !3370
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()) #9, !dbg !3370
  call void @llvm.dbg.value(metadata i8* null, metadata !460, metadata !DIExpression()) #9, !dbg !3370
  %35 = tail call i8* @malloc(i32 1024) #7, !dbg !3372
  %36 = icmp eq i8* %35, null, !dbg !3373
  br i1 %36, label %39, label %37, !dbg !3374

37:                                               ; preds = %22
  %38 = getelementptr inbounds i8, i8* %35, i32 1023, !dbg !3375
  store i8 0, i8* %38, align 1, !dbg !3376, !tbaa !495
  br label %39, !dbg !3377

39:                                               ; preds = %22, %37
  %40 = phi i8* [ %38, %37 ], [ null, %22 ], !dbg !3378
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3379
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3379
  %41 = tail call i8* @halide_string_to_string(i8* %35, i8* %40, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !3381
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3382
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3382
  %42 = tail call i8* @halide_string_to_string(i8* %41, i8* %40, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !3384
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3385
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3385
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %40, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0)) #7, !dbg !3387
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !3388
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1014, metadata !DIExpression()) #9, !dbg !3388
  %44 = tail call i8* @halide_buffer_to_string(i8* %43, i8* %40, %struct.halide_buffer_t* nonnull %1) #7, !dbg !3390
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3391
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3391
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %40, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !3393
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3394
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3394
  %46 = tail call i8* @halide_string_to_string(i8* %45, i8* %40, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)) #7, !dbg !3396
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1011, metadata !DIExpression()) #9, !dbg !3397
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !1014, metadata !DIExpression()) #9, !dbg !3397
  %47 = tail call i8* @halide_buffer_to_string(i8* %46, i8* %40, %struct.halide_buffer_t* nonnull %4) #7, !dbg !3399
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !473, metadata !DIExpression()) #9, !dbg !3400
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), metadata !476, metadata !DIExpression()) #9, !dbg !3400
  %48 = tail call i8* @halide_string_to_string(i8* %47, i8* %40, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !3402
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !482, metadata !DIExpression()) #9, !dbg !3403
  br i1 %36, label %49, label %50, !dbg !3405

49:                                               ; preds = %39
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0)) #7, !dbg !3406
  br label %57, !dbg !3407

50:                                               ; preds = %39
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !496, metadata !DIExpression()) #9, !dbg !3408
  %51 = ptrtoint i8* %48 to i32, !dbg !3410
  %52 = ptrtoint i8* %35 to i32, !dbg !3410
  %53 = add i32 %51, 1, !dbg !3410
  %54 = sub i32 %53, %52, !dbg !3411
  %55 = sext i32 %54 to i64, !dbg !3412
  %56 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %35, i64 %55) #7, !dbg !3413
  tail call void @halide_print(i8* %0, i8* nonnull %35) #7, !dbg !3414
  br label %57

57:                                               ; preds = %49, %50
  call void @free(i8* %35) #7, !dbg !3415
  br label %58

58:                                               ; preds = %5, %57, %21, %13
  %59 = phi i32 [ -41, %13 ], [ -41, %21 ], [ %34, %57 ], [ 0, %5 ], !dbg !3337
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1066, metadata !DIExpression()) #9, !dbg !3416
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3418
  ret i32 %59, !dbg !3419
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !3420 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3422, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3423, metadata !DIExpression()), !dbg !3424
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !3425
  %4 = load i64, i64* %3, align 8, !dbg !3425, !tbaa !560
  %5 = icmp eq i64 %4, 0, !dbg !3427
  br i1 %5, label %7, label %6, !dbg !3428

6:                                                ; preds = %2
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i32 0, i32 0)) #7, !dbg !3429
  br label %7, !dbg !3430

7:                                                ; preds = %2, %6
  %8 = phi i32 [ -40, %6 ], [ 0, %2 ], !dbg !3424
  ret i32 %8, !dbg !3431
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !3432 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3434, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3435, metadata !DIExpression()), !dbg !3441
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !3442
  %4 = load i64, i64* %3, align 8, !dbg !3442, !tbaa !560
  %5 = icmp eq i64 %4, 0, !dbg !3443
  br i1 %5, label %17, label %6, !dbg !3444

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !966, metadata !DIExpression()) #9, !dbg !3445
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !969, metadata !DIExpression()) #9, !dbg !3445
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal17device_copy_mutexE, metadata !3436, metadata !DIExpression()), !dbg !3447
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3448
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !3449
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !dbg !3449, !tbaa !792
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %8, metadata !3439, metadata !DIExpression()), !dbg !3447
  %9 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %8, i32 0, i32 15, !dbg !3450
  %10 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %9, align 4, !dbg !3450, !tbaa !875
  %11 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %10, i32 0, i32 13, !dbg !3451
  %12 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %11, align 4, !dbg !3451, !tbaa !3452
  %13 = tail call i32 %12(i8* %0, %struct.halide_buffer_t* nonnull %1) #7, !dbg !3453
  call void @llvm.dbg.value(metadata i32 %13, metadata !3440, metadata !DIExpression()), !dbg !3447
  store i64 0, i64* %3, align 8, !dbg !3454, !tbaa !560
  %14 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %9, align 4, !dbg !3455, !tbaa !875
  %15 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %14, i32 0, i32 1, !dbg !3456
  %16 = load void ()*, void ()** %15, align 4, !dbg !3456, !tbaa !1558
  tail call void %16() #7, !dbg !3457
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !dbg !3458, !tbaa !792
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1066, metadata !DIExpression()) #9, !dbg !3459
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #7, !dbg !3461
  br label %17

17:                                               ; preds = %2, %6
  %18 = phi i32 [ %13, %6 ], [ 0, %2 ], !dbg !3441
  ret i32 %18, !dbg !3462
}

declare !dbg !3463 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #3

declare !dbg !3466 dso_local i32 @halide_error_buffer_is_null(i8*, i8*) local_unnamed_addr #3

declare !dbg !3469 dso_local i32 @halide_error_device_interface_no_device(i8*) local_unnamed_addr #3

declare !dbg !3470 dso_local i32 @halide_error_host_and_device_dirty(i8*) local_unnamed_addr #3

declare !dbg !3471 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #3

declare !dbg !3472 dso_local i8* @malloc(i32) local_unnamed_addr #3

declare !dbg !3475 dso_local void @free(i8*) local_unnamed_addr #3

declare !dbg !3478 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !3481 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !3484 extern_weak dso_local i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !3487 extern_weak dso_local i8* @halide_buffer_to_string(i8*, i8*, %struct.halide_buffer_t*) local_unnamed_addr #3

declare !dbg !3490 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

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
!llvm.module.flags = !{!354, !355, !356}
!llvm.ident = !{!357}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "device_copy_mutex", linkageName: "_ZN6Halide7Runtime8Internal17device_copy_mutexE", scope: !2, file: !5, line: 28, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/device_interface.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !7, line: 120, size: 32, flags: DIFlagTypePassByValue, elements: !8, identifier: "_ZTS12halide_mutex")
!7 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !6, file: !7, line: 121, baseType: !10, size: 32)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !15)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !12, line: 68, baseType: !13)
!12 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !12, line: 12, baseType: !14)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16}
!16 = !DISubrange(count: 1)
!17 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !18, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !81, globals: !351, imports: !352, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/device_interface.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!19 = !{!20, !29, !33}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !7, line: 403, baseType: !21, size: 8, elements: !23, identifier: "_ZTS18halide_type_code_t")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !12, line: 16, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!27 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 1415, baseType: !14, size: 32, elements: !30, identifier: "_ZTS19halide_buffer_flags")
!30 = !{!31, !32}
!31 = !DIEnumerator(name: "halide_buffer_flag_host_dirty", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "halide_buffer_flag_device_dirty", value: 2, isUnsigned: true)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_error_code_t", file: !7, line: 990, baseType: !34, size: 32, elements: !35, identifier: "_ZTS19halide_error_code_t")
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!36 = !DIEnumerator(name: "halide_error_code_success", value: 0)
!37 = !DIEnumerator(name: "halide_error_code_generic_error", value: -1)
!38 = !DIEnumerator(name: "halide_error_code_explicit_bounds_too_small", value: -2)
!39 = !DIEnumerator(name: "halide_error_code_bad_type", value: -3)
!40 = !DIEnumerator(name: "halide_error_code_access_out_of_bounds", value: -4)
!41 = !DIEnumerator(name: "halide_error_code_buffer_allocation_too_large", value: -5)
!42 = !DIEnumerator(name: "halide_error_code_buffer_extents_too_large", value: -6)
!43 = !DIEnumerator(name: "halide_error_code_constraints_make_required_region_smaller", value: -7)
!44 = !DIEnumerator(name: "halide_error_code_constraint_violated", value: -8)
!45 = !DIEnumerator(name: "halide_error_code_param_too_small", value: -9)
!46 = !DIEnumerator(name: "halide_error_code_param_too_large", value: -10)
!47 = !DIEnumerator(name: "halide_error_code_out_of_memory", value: -11)
!48 = !DIEnumerator(name: "halide_error_code_buffer_argument_is_null", value: -12)
!49 = !DIEnumerator(name: "halide_error_code_debug_to_file_failed", value: -13)
!50 = !DIEnumerator(name: "halide_error_code_copy_to_host_failed", value: -14)
!51 = !DIEnumerator(name: "halide_error_code_copy_to_device_failed", value: -15)
!52 = !DIEnumerator(name: "halide_error_code_device_malloc_failed", value: -16)
!53 = !DIEnumerator(name: "halide_error_code_device_sync_failed", value: -17)
!54 = !DIEnumerator(name: "halide_error_code_device_free_failed", value: -18)
!55 = !DIEnumerator(name: "halide_error_code_no_device_interface", value: -19)
!56 = !DIEnumerator(name: "halide_error_code_matlab_init_failed", value: -20)
!57 = !DIEnumerator(name: "halide_error_code_matlab_bad_param_type", value: -21)
!58 = !DIEnumerator(name: "halide_error_code_internal_error", value: -22)
!59 = !DIEnumerator(name: "halide_error_code_device_run_failed", value: -23)
!60 = !DIEnumerator(name: "halide_error_code_unaligned_host_ptr", value: -24)
!61 = !DIEnumerator(name: "halide_error_code_bad_fold", value: -25)
!62 = !DIEnumerator(name: "halide_error_code_fold_factor_too_small", value: -26)
!63 = !DIEnumerator(name: "halide_error_code_requirement_failed", value: -27)
!64 = !DIEnumerator(name: "halide_error_code_buffer_extents_negative", value: -28)
!65 = !DIEnumerator(name: "halide_error_code_unused_29", value: -29)
!66 = !DIEnumerator(name: "halide_error_code_unused_30", value: -30)
!67 = !DIEnumerator(name: "halide_error_code_specialize_fail", value: -31)
!68 = !DIEnumerator(name: "halide_error_code_device_wrap_native_failed", value: -32)
!69 = !DIEnumerator(name: "halide_error_code_device_detach_native_failed", value: -33)
!70 = !DIEnumerator(name: "halide_error_code_host_is_null", value: -34)
!71 = !DIEnumerator(name: "halide_error_code_bad_extern_fold", value: -35)
!72 = !DIEnumerator(name: "halide_error_code_device_interface_no_device", value: -36)
!73 = !DIEnumerator(name: "halide_error_code_host_and_device_dirty", value: -37)
!74 = !DIEnumerator(name: "halide_error_code_buffer_is_null", value: -38)
!75 = !DIEnumerator(name: "halide_error_code_device_buffer_copy_failed", value: -39)
!76 = !DIEnumerator(name: "halide_error_code_device_crop_unsupported", value: -40)
!77 = !DIEnumerator(name: "halide_error_code_device_crop_failed", value: -41)
!78 = !DIEnumerator(name: "halide_error_code_incompatible_device_interface", value: -42)
!79 = !DIEnumerator(name: "halide_error_code_bad_dimensions", value: -43)
!80 = !DIEnumerator(name: "halide_error_code_device_dirty_with_no_device_support", value: -44)
!81 = !{!82, !83, !120, !195, !266, !314, !350, !89}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !85, file: !84, line: 203, baseType: !86)
!84 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!85 = !DINamespace(scope: !2)
!86 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !85, file: !84, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !87, templateParams: !347)
!87 = !{!88, !91, !92, !93, !94, !96, !98, !102, !108, !113, !117, !122, !125, !129, !133, !138, !144, !177, !329, !332, !335, !340, !341, !344, !345, !346}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !86, file: !84, line: 32, baseType: !89, size: 32, flags: DIFlagPublic)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 32)
!90 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !86, file: !84, line: 32, baseType: !89, size: 32, offset: 32, flags: DIFlagPublic)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !86, file: !84, line: 32, baseType: !89, size: 32, offset: 64, flags: DIFlagPublic)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !86, file: !84, line: 33, baseType: !82, size: 32, offset: 96, flags: DIFlagPublic)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !86, file: !84, line: 34, baseType: !95, size: 8, offset: 128, flags: DIFlagPublic)
!95 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !86, file: !84, line: 35, baseType: !97, size: 8, offset: 136, flags: DIFlagPublic)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 8, elements: !15)
!98 = !DISubprogram(name: "Printer", scope: !86, file: !84, line: 37, type: !99, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !101, !82, !89}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!102 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !86, file: !84, line: 57, type: !103, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!103 = !DISubroutineType(types: !104)
!104 = !{!105, !101, !106}
!105 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !86, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!108 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !86, file: !84, line: 67, type: !109, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!109 = !DISubroutineType(types: !110)
!110 = !{!105, !101, !111}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !12, line: 9, baseType: !112)
!112 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!113 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !86, file: !84, line: 72, type: !114, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!114 = !DISubroutineType(types: !115)
!115 = !{!105, !101, !116}
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !12, line: 11, baseType: !34)
!117 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !86, file: !84, line: 77, type: !118, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!118 = !DISubroutineType(types: !119)
!119 = !{!105, !101, !120}
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !12, line: 10, baseType: !121)
!121 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !86, file: !84, line: 82, type: !123, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!123 = !DISubroutineType(types: !124)
!124 = !{!105, !101, !13}
!125 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !86, file: !84, line: 87, type: !126, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!126 = !DISubroutineType(types: !127)
!127 = !{!105, !101, !128}
!128 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!129 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !86, file: !84, line: 92, type: !130, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!130 = !DISubroutineType(types: !131)
!131 = !{!105, !101, !132}
!132 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!133 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !86, file: !84, line: 97, type: !134, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!134 = !DISubroutineType(types: !135)
!135 = !{!105, !101, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!138 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !86, file: !84, line: 102, type: !139, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DISubroutineType(types: !140)
!140 = !{!105, !101, !141}
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !12, line: 14, baseType: !143)
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !86, file: !84, line: 108, type: !145, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!145 = !DISubroutineType(types: !146)
!146 = !{!105, !101, !147}
!147 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !148, size: 32)
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
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!159 = !DISubprogram(name: "halide_type_t", scope: !149, file: !7, line: 459, type: !160, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !158}
!162 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !149, file: !7, line: 463, type: !163, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !DISubroutineType(types: !164)
!164 = !{!149, !165, !142}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!166 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !149, file: !7, line: 468, type: !167, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!167 = !DISubroutineType(types: !168)
!168 = !{!95, !165, !147}
!169 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !149, file: !7, line: 472, type: !167, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!170 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !149, file: !7, line: 476, type: !167, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !149, file: !7, line: 481, type: !172, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!172 = !DISubroutineType(types: !173)
!173 = !{!34, !165}
!174 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !149, file: !7, line: 485, type: !175, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DISubroutineType(types: !176)
!176 = !{!13, !165}
!177 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !86, file: !84, line: 113, type: !178, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DISubroutineType(types: !179)
!179 = !{!105, !101, !180}
!180 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !181, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !7, line: 1550, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !7, line: 1423, size: 320, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !184, identifier: "_ZTS15halide_buffer_t")
!184 = !{!185, !186, !265, !267, !268, !269, !270, !293, !294, !299, !303, !306, !307, !310, !311, !315, !318, !319, !320, !325, !328}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !183, file: !7, line: 1425, baseType: !120, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !183, file: !7, line: 1428, baseType: !187, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !7, line: 723, size: 512, flags: DIFlagTypePassByValue, elements: !190, identifier: "_ZTS25halide_device_interface_t")
!190 = !{!191, !196, !200, !201, !205, !206, !207, !208, !209, !213, !219, !223, !224, !228, !229, !234}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !189, file: !7, line: 724, baseType: !192, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!193 = !DISubroutineType(types: !194)
!194 = !{!34, !82, !195, !187}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !189, file: !7, line: 726, baseType: !197, size: 32, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 32)
!198 = !DISubroutineType(types: !199)
!199 = !{!34, !82, !195}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !189, file: !7, line: 727, baseType: !197, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !189, file: !7, line: 728, baseType: !202, size: 32, offset: 96)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !82, !187}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !189, file: !7, line: 730, baseType: !197, size: 32, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !189, file: !7, line: 731, baseType: !192, size: 32, offset: 160)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !189, file: !7, line: 733, baseType: !192, size: 32, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !189, file: !7, line: 735, baseType: !197, size: 32, offset: 224)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !189, file: !7, line: 736, baseType: !210, size: 32, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 32)
!211 = !DISubroutineType(types: !212)
!212 = !{!34, !82, !195, !187, !195}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !189, file: !7, line: 738, baseType: !214, size: 32, offset: 288)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 32)
!215 = !DISubroutineType(types: !216)
!216 = !{!34, !82, !217, !195}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !189, file: !7, line: 740, baseType: !220, size: 32, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 32)
!221 = !DISubroutineType(types: !222)
!222 = !{!34, !82, !217, !34, !34, !195}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !189, file: !7, line: 742, baseType: !197, size: 32, offset: 352)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !189, file: !7, line: 743, baseType: !225, size: 32, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 32)
!226 = !DISubroutineType(types: !227)
!227 = !{!34, !82, !195, !120, !187}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !189, file: !7, line: 745, baseType: !197, size: 32, offset: 416)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !189, file: !7, line: 746, baseType: !230, size: 32, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 32)
!231 = !DISubroutineType(types: !232)
!232 = !{!34, !82, !233, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !189, file: !7, line: 747, baseType: !235, size: 32, offset: 480)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !238, line: 10, size: 512, flags: DIFlagTypePassByValue, elements: !239, identifier: "_ZTS30halide_device_interface_impl_t")
!238 = !DIFile(filename: "src/runtime/device_interface.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!239 = !{!240, !244, !245, !246, !247, !248, !252, !253, !254, !255, !256, !257, !258, !259, !260, !264}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "use_module", scope: !237, file: !238, line: 16, baseType: !241, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 32)
!242 = !DISubroutineType(types: !243)
!243 = !{null}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "release_module", scope: !237, file: !238, line: 17, baseType: !241, size: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !237, file: !238, line: 18, baseType: !197, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !237, file: !238, line: 19, baseType: !197, size: 32, offset: 96)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !237, file: !238, line: 20, baseType: !197, size: 32, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !237, file: !238, line: 21, baseType: !249, size: 32, offset: 160)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 32)
!250 = !DISubroutineType(types: !251)
!251 = !{!34, !82}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !237, file: !238, line: 22, baseType: !197, size: 32, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !237, file: !238, line: 23, baseType: !197, size: 32, offset: 224)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !237, file: !238, line: 24, baseType: !197, size: 32, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !237, file: !238, line: 25, baseType: !197, size: 32, offset: 288)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !237, file: !238, line: 26, baseType: !210, size: 32, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !237, file: !238, line: 28, baseType: !214, size: 32, offset: 352)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !237, file: !238, line: 31, baseType: !220, size: 32, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !237, file: !238, line: 35, baseType: !197, size: 32, offset: 416)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !237, file: !238, line: 37, baseType: !261, size: 32, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 32)
!262 = !DISubroutineType(types: !263)
!263 = !{!34, !82, !195, !120}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !237, file: !238, line: 38, baseType: !197, size: 32, offset: 480)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !183, file: !7, line: 1433, baseType: !266, size: 32, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !7, line: 1436, baseType: !120, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !183, file: !7, line: 1439, baseType: !149, size: 32, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !183, file: !7, line: 1442, baseType: !116, size: 32, offset: 224)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !183, file: !7, line: 1446, baseType: !271, size: 32, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !7, line: 1409, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !7, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !274, identifier: "_ZTS18halide_dimension_t")
!274 = !{!275, !276, !277, !278, !279, !283, !286, !292}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !273, file: !7, line: 1383, baseType: !116, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !273, file: !7, line: 1383, baseType: !116, size: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !273, file: !7, line: 1383, baseType: !116, size: 32, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !7, line: 1386, baseType: !13, size: 32, offset: 96)
!279 = !DISubprogram(name: "halide_dimension_t", scope: !273, file: !7, line: 1388, type: !280, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!283 = !DISubprogram(name: "halide_dimension_t", scope: !273, file: !7, line: 1389, type: !284, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !282, !116, !116, !116, !13}
!286 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !273, file: !7, line: 1393, type: !287, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DISubroutineType(types: !288)
!288 = !{!95, !289, !291}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!291 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !290, size: 32)
!292 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !273, file: !7, line: 1400, type: !287, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !183, file: !7, line: 1449, baseType: !82, size: 32, offset: 288)
!294 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !183, file: !7, line: 1454, type: !295, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DISubroutineType(types: !296)
!296 = !{!95, !297, !298}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !7, line: 1416, baseType: !29)
!299 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !183, file: !7, line: 1458, type: !300, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !302, !298, !95}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!303 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !183, file: !7, line: 1466, type: !304, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DISubroutineType(types: !305)
!305 = !{!95, !297}
!306 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !183, file: !7, line: 1470, type: !304, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !183, file: !7, line: 1474, type: !308, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !302, !95}
!310 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !183, file: !7, line: 1478, type: !308, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!311 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !183, file: !7, line: 1485, type: !312, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DISubroutineType(types: !313)
!313 = !{!314, !297}
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 27, baseType: !14)
!315 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !183, file: !7, line: 1495, type: !316, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DISubroutineType(types: !317)
!317 = !{!266, !297}
!318 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !183, file: !7, line: 1506, type: !316, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !183, file: !7, line: 1518, type: !312, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!320 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !183, file: !7, line: 1523, type: !321, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!321 = !DISubroutineType(types: !322)
!322 = !{!266, !297, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!325 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !183, file: !7, line: 1534, type: !326, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DISubroutineType(types: !327)
!327 = !{!34, !302, !82}
!328 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !183, file: !7, line: 1545, type: !304, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !86, file: !84, line: 119, type: !330, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!330 = !DISubroutineType(types: !331)
!331 = !{!106, !101}
!332 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !86, file: !84, line: 131, type: !333, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !101}
!335 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !86, file: !84, line: 139, type: !336, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DISubroutineType(types: !337)
!337 = !{!120, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!340 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !86, file: !84, line: 143, type: !336, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!341 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !86, file: !84, line: 148, type: !342, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !101, !34}
!344 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !86, file: !84, line: 158, type: !330, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !86, file: !84, line: 162, type: !333, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!346 = !DISubprogram(name: "~Printer", scope: !86, file: !84, line: 166, type: !333, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !{!348, !349}
!348 = !DITemplateValueParameter(name: "type", type: !34, value: i32 0)
!349 = !DITemplateValueParameter(name: "length", type: !121, value: i64 1024)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !12, line: 28, baseType: !34)
!351 = !{!0}
!352 = !{!353}
!353 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !17, entity: !2, file: !12, line: 225)
!354 = !{i32 7, !"Dwarf Version", i32 4}
!355 = !{i32 2, !"Debug Info Version", i32 3}
!356 = !{i32 1, !"wchar_size", i32 4}
!357 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!358 = distinct !DISubprogram(name: "copy_memory_helper", linkageName: "_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx", scope: !2, file: !359, line: 47, type: !360, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !376)
!359 = !DIFile(filename: "src/runtime/device_buffer_utils.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!360 = !DISubroutineType(types: !361)
!361 = !{null, !362, !34, !111, !111}
!362 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_copy", scope: !2, file: !359, line: 33, size: 3328, flags: DIFlagTypePassByValue, elements: !365, identifier: "_ZTSN6Halide7Runtime8Internal11device_copyE")
!365 = !{!366, !367, !368, !369, !373, !374, !375}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !364, file: !359, line: 35, baseType: !120, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !364, file: !359, line: 35, baseType: !120, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "src_begin", scope: !364, file: !359, line: 37, baseType: !120, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !364, file: !359, line: 39, baseType: !370, size: 1024, offset: 192)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 1024, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 16)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "src_stride_bytes", scope: !364, file: !359, line: 41, baseType: !370, size: 1024, offset: 1216)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "dst_stride_bytes", scope: !364, file: !359, line: 42, baseType: !370, size: 1024, offset: 2240)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !364, file: !359, line: 44, baseType: !120, size: 64, offset: 3264)
!376 = !{!377, !378, !379, !380, !381, !384, !385}
!377 = !DILocalVariable(name: "copy", arg: 1, scope: !358, file: !359, line: 47, type: !362)
!378 = !DILocalVariable(name: "d", arg: 2, scope: !358, file: !359, line: 47, type: !34)
!379 = !DILocalVariable(name: "src_off", arg: 3, scope: !358, file: !359, line: 47, type: !111)
!380 = !DILocalVariable(name: "dst_off", arg: 4, scope: !358, file: !359, line: 47, type: !111)
!381 = !DILocalVariable(name: "from", scope: !382, file: !359, line: 54, type: !136)
!382 = distinct !DILexicalBlock(scope: !383, file: !359, line: 53, column: 18)
!383 = distinct !DILexicalBlock(scope: !358, file: !359, line: 53, column: 9)
!384 = !DILocalVariable(name: "to", scope: !382, file: !359, line: 55, type: !82)
!385 = !DILocalVariable(name: "i", scope: !386, file: !359, line: 58, type: !120)
!386 = distinct !DILexicalBlock(scope: !387, file: !359, line: 58, column: 9)
!387 = distinct !DILexicalBlock(scope: !383, file: !359, line: 57, column: 12)
!388 = !DILocation(line: 0, scope: !358)
!389 = !DILocation(line: 49, column: 14, scope: !358)
!390 = !DILocation(line: 49, column: 19, scope: !358)
!391 = !DILocation(line: 49, column: 22, scope: !358)
!392 = !{!393, !393, i64 0}
!393 = !{!"long long", !394, i64 0}
!394 = !{!"omnipotent char", !395, i64 0}
!395 = !{!"Simple C++ TBAA"}
!396 = !DILocation(line: 49, column: 37, scope: !358)
!397 = !DILocation(line: 49, column: 5, scope: !358)
!398 = !DILocation(line: 50, column: 10, scope: !399)
!399 = distinct !DILexicalBlock(scope: !358, file: !359, line: 49, column: 43)
!400 = distinct !{!400, !397, !401, !402}
!401 = !DILocation(line: 51, column: 5, scope: !358)
!402 = !{!"llvm.loop.mustprogress"}
!403 = !DILocation(line: 53, column: 11, scope: !383)
!404 = !DILocation(line: 53, column: 9, scope: !358)
!405 = !DILocation(line: 0, scope: !386)
!406 = !DILocation(line: 58, column: 34, scope: !407)
!407 = distinct !DILexicalBlock(scope: !386, file: !359, line: 58, column: 9)
!408 = !DILocation(line: 58, column: 32, scope: !407)
!409 = !DILocation(line: 58, column: 9, scope: !386)
!410 = !DILocation(line: 54, column: 42, scope: !382)
!411 = !{!412, !393, i64 0}
!412 = !{!"_ZTSN6Halide7Runtime8Internal11device_copyE", !393, i64 0, !393, i64 8, !393, i64 16, !394, i64 24, !394, i64 152, !394, i64 280, !393, i64 408}
!413 = !DILocation(line: 54, column: 46, scope: !382)
!414 = !DILocation(line: 54, column: 28, scope: !382)
!415 = !DILocation(line: 0, scope: !382)
!416 = !DILocation(line: 55, column: 34, scope: !382)
!417 = !{!412, !393, i64 8}
!418 = !DILocation(line: 55, column: 38, scope: !382)
!419 = !DILocation(line: 55, column: 20, scope: !382)
!420 = !DILocation(line: 56, column: 31, scope: !382)
!421 = !{!412, !393, i64 408}
!422 = !DILocation(line: 56, column: 26, scope: !382)
!423 = !DILocation(line: 56, column: 9, scope: !382)
!424 = !DILocation(line: 57, column: 5, scope: !382)
!425 = !DILocation(line: 59, column: 13, scope: !426)
!426 = distinct !DILexicalBlock(scope: !407, file: !359, line: 58, column: 55)
!427 = !DILocation(line: 60, column: 24, scope: !426)
!428 = !DILocation(line: 60, column: 21, scope: !426)
!429 = !DILocation(line: 61, column: 24, scope: !426)
!430 = !DILocation(line: 61, column: 21, scope: !426)
!431 = !DILocation(line: 58, column: 51, scope: !407)
!432 = distinct !{!432, !409, !433, !402}
!433 = !DILocation(line: 62, column: 9, scope: !386)
!434 = !DILocation(line: 64, column: 1, scope: !358)
!435 = !DISubprogram(name: "memcpy", scope: !12, file: !12, line: 94, type: !436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{!82, !82, !136, !14}
!438 = !{}
!439 = distinct !DISubprogram(name: "copy_memory", linkageName: "_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv", scope: !2, file: !359, line: 66, type: !440, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !362, !82}
!442 = !{!443, !444}
!443 = !DILocalVariable(name: "copy", arg: 1, scope: !439, file: !359, line: 66, type: !362)
!444 = !DILocalVariable(name: "user_context", arg: 2, scope: !439, file: !359, line: 66, type: !82)
!445 = !DILocation(line: 0, scope: !439)
!446 = !DILocation(line: 68, column: 14, scope: !447)
!447 = distinct !DILexicalBlock(scope: !439, file: !359, line: 68, column: 9)
!448 = !DILocation(line: 68, column: 26, scope: !447)
!449 = !DILocation(line: 68, column: 18, scope: !447)
!450 = !DILocation(line: 68, column: 9, scope: !439)
!451 = !DILocation(line: 69, column: 58, scope: !452)
!452 = distinct !DILexicalBlock(scope: !447, file: !359, line: 68, column: 31)
!453 = !{!412, !393, i64 16}
!454 = !DILocation(line: 69, column: 9, scope: !452)
!455 = !DILocation(line: 70, column: 5, scope: !452)
!456 = !DILocalVariable(name: "this", arg: 1, scope: !457, type: !461, flags: DIFlagArtificial | DIFlagObjectPointer)
!457 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !86, file: !84, line: 37, type: !99, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !98, retainedNodes: !458)
!458 = !{!456, !459, !460}
!459 = !DILocalVariable(name: "ctx", arg: 2, scope: !457, file: !84, line: 37, type: !82)
!460 = !DILocalVariable(name: "mem", arg: 3, scope: !457, file: !84, line: 37, type: !89)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 32)
!462 = !DILocation(line: 0, scope: !457, inlinedAt: !463)
!463 = distinct !DILocation(line: 71, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !447, file: !359, line: 70, column: 12)
!465 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !463)
!466 = distinct !DILexicalBlock(scope: !467, file: !84, line: 43, column: 16)
!467 = distinct !DILexicalBlock(scope: !468, file: !84, line: 41, column: 20)
!468 = distinct !DILexicalBlock(scope: !469, file: !84, line: 39, column: 13)
!469 = distinct !DILexicalBlock(scope: !457, file: !84, line: 38, column: 54)
!470 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !463)
!471 = distinct !DILexicalBlock(scope: !469, file: !84, line: 48, column: 13)
!472 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !463)
!473 = !DILocalVariable(name: "this", arg: 1, scope: !474, type: !461, flags: DIFlagArtificial | DIFlagObjectPointer)
!474 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !86, file: !84, line: 57, type: !103, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !102, retainedNodes: !475)
!475 = !{!473, !476}
!476 = !DILocalVariable(name: "arg", arg: 2, scope: !474, file: !84, line: 57, type: !106)
!477 = !DILocation(line: 0, scope: !474, inlinedAt: !478)
!478 = distinct !DILocation(line: 71, column: 29, scope: !464)
!479 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !478)
!480 = distinct !DILexicalBlock(scope: !481, file: !84, line: 61, column: 16)
!481 = distinct !DILexicalBlock(scope: !474, file: !84, line: 59, column: 13)
!482 = !DILocalVariable(name: "this", arg: 1, scope: !483, type: !461, flags: DIFlagArtificial | DIFlagObjectPointer)
!483 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !86, file: !84, line: 166, type: !333, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !346, retainedNodes: !484)
!484 = !{!482}
!485 = !DILocation(line: 0, scope: !483, inlinedAt: !486)
!486 = distinct !DILocation(line: 71, column: 9, scope: !464)
!487 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !486)
!488 = distinct !DILexicalBlock(scope: !489, file: !84, line: 167, column: 19)
!489 = distinct !DILexicalBlock(scope: !490, file: !84, line: 167, column: 13)
!490 = distinct !DILexicalBlock(scope: !483, file: !84, line: 166, column: 16)
!491 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !486)
!492 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !463)
!493 = distinct !DILexicalBlock(scope: !471, file: !84, line: 48, column: 18)
!494 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !463)
!495 = !{!394, !394, i64 0}
!496 = !DILocalVariable(name: "this", arg: 1, scope: !497, type: !461, flags: DIFlagArtificial | DIFlagObjectPointer)
!497 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !86, file: !84, line: 162, type: !333, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !345, retainedNodes: !498)
!498 = !{!496}
!499 = !DILocation(line: 0, scope: !497, inlinedAt: !500)
!500 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !486)
!501 = distinct !DILexicalBlock(scope: !489, file: !84, line: 169, column: 16)
!502 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !500)
!503 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !500)
!504 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !500)
!505 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !500)
!506 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !486)
!507 = distinct !DILexicalBlock(scope: !508, file: !84, line: 173, column: 46)
!508 = distinct !DILexicalBlock(scope: !509, file: !84, line: 173, column: 24)
!509 = distinct !DILexicalBlock(scope: !501, file: !84, line: 171, column: 17)
!510 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !486)
!511 = distinct !DILexicalBlock(scope: !512, file: !84, line: 180, column: 40)
!512 = distinct !DILexicalBlock(scope: !490, file: !84, line: 180, column: 13)
!513 = !DILocation(line: 73, column: 1, scope: !439)
!514 = distinct !DISubprogram(name: "make_buffer_copy", linkageName: "_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b", scope: !2, file: !359, line: 76, type: !515, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !518)
!515 = !DISubroutineType(types: !516)
!516 = !{!364, !517, !95, !517, !95}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 32)
!518 = !{!519, !520, !521, !522, !523, !524, !526, !528, !531, !534, !536, !539, !540, !541, !543}
!519 = !DILocalVariable(name: "src", arg: 1, scope: !514, file: !359, line: 76, type: !517)
!520 = !DILocalVariable(name: "src_host", arg: 2, scope: !514, file: !359, line: 76, type: !95)
!521 = !DILocalVariable(name: "dst", arg: 3, scope: !514, file: !359, line: 77, type: !517)
!522 = !DILocalVariable(name: "dst_host", arg: 4, scope: !514, file: !359, line: 77, type: !95)
!523 = !DILocalVariable(name: "c", scope: !514, file: !359, line: 79, type: !364)
!524 = !DILocalVariable(name: "i", scope: !525, file: !359, line: 83, type: !34)
!525 = distinct !DILexicalBlock(scope: !514, file: !359, line: 83, column: 5)
!526 = !DILocalVariable(name: "i", scope: !527, file: !359, line: 91, type: !34)
!527 = distinct !DILexicalBlock(scope: !514, file: !359, line: 91, column: 5)
!528 = !DILocalVariable(name: "zero", scope: !529, file: !359, line: 100, type: !364)
!529 = distinct !DILexicalBlock(scope: !530, file: !359, line: 98, column: 42)
!530 = distinct !DILexicalBlock(scope: !514, file: !359, line: 96, column: 9)
!531 = !DILocalVariable(name: "zero", scope: !532, file: !359, line: 107, type: !364)
!532 = distinct !DILexicalBlock(scope: !533, file: !359, line: 104, column: 28)
!533 = distinct !DILexicalBlock(scope: !514, file: !359, line: 104, column: 9)
!534 = !DILocalVariable(name: "i", scope: !535, file: !359, line: 115, type: !34)
!535 = distinct !DILexicalBlock(scope: !514, file: !359, line: 115, column: 5)
!536 = !DILocalVariable(name: "dst_stride_bytes", scope: !537, file: !359, line: 117, type: !120)
!537 = distinct !DILexicalBlock(scope: !538, file: !359, line: 115, column: 47)
!538 = distinct !DILexicalBlock(scope: !535, file: !359, line: 115, column: 5)
!539 = !DILocalVariable(name: "src_stride_bytes", scope: !537, file: !359, line: 118, type: !120)
!540 = !DILocalVariable(name: "insert", scope: !537, file: !359, line: 120, type: !34)
!541 = !DILocalVariable(name: "j", scope: !542, file: !359, line: 128, type: !34)
!542 = distinct !DILexicalBlock(scope: !537, file: !359, line: 128, column: 9)
!543 = !DILocalVariable(name: "j", scope: !544, file: !359, line: 151, type: !34)
!544 = distinct !DILexicalBlock(scope: !545, file: !359, line: 151, column: 9)
!545 = distinct !DILexicalBlock(scope: !514, file: !359, line: 145, column: 51)
!546 = !DILocation(line: 0, scope: !514)
!547 = !DILocation(line: 79, column: 5, scope: !514)
!548 = !DILocation(line: 79, column: 17, scope: !514)
!549 = !DILocation(line: 80, column: 13, scope: !514)
!550 = !DILocation(line: 80, column: 39, scope: !514)
!551 = !{!552, !553, i64 12}
!552 = !{!"_ZTS15halide_buffer_t", !393, i64 0, !553, i64 8, !553, i64 12, !393, i64 16, !554, i64 24, !557, i64 28, !553, i64 32, !553, i64 36}
!553 = !{!"any pointer", !394, i64 0}
!554 = !{!"_ZTS13halide_type_t", !555, i64 0, !394, i64 1, !556, i64 2}
!555 = !{!"_ZTS18halide_type_code_t", !394, i64 0}
!556 = !{!"short", !394, i64 0}
!557 = !{!"int", !394, i64 0}
!558 = !DILocation(line: 80, column: 24, scope: !514)
!559 = !DILocation(line: 80, column: 51, scope: !514)
!560 = !{!552, !393, i64 0}
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
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 32)
!573 = !DILocation(line: 0, scope: !570, inlinedAt: !574)
!574 = distinct !DILocation(line: 82, column: 30, scope: !514)
!575 = !DILocation(line: 482, column: 17, scope: !570, inlinedAt: !574)
!576 = !{!554, !394, i64 1}
!577 = !DILocation(line: 482, column: 22, scope: !570, inlinedAt: !574)
!578 = !DILocation(line: 482, column: 27, scope: !570, inlinedAt: !574)
!579 = !DILocation(line: 82, column: 20, scope: !514)
!580 = !DILocation(line: 82, column: 7, scope: !514)
!581 = !DILocation(line: 82, column: 18, scope: !514)
!582 = !DILocation(line: 0, scope: !525)
!583 = !DILocation(line: 84, column: 9, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !359, line: 83, column: 45)
!585 = distinct !DILexicalBlock(scope: !525, file: !359, line: 83, column: 5)
!586 = !DILocation(line: 84, column: 21, scope: !584)
!587 = !DILocation(line: 85, column: 9, scope: !584)
!588 = !DILocation(line: 85, column: 31, scope: !584)
!589 = !DILocation(line: 86, column: 9, scope: !584)
!590 = !DILocation(line: 86, column: 31, scope: !584)
!591 = !DILocation(line: 90, column: 7, scope: !514)
!592 = !DILocation(line: 0, scope: !527)
!593 = !DILocation(line: 91, column: 30, scope: !594)
!594 = distinct !DILexicalBlock(scope: !527, file: !359, line: 91, column: 5)
!595 = !{!552, !557, i64 28}
!596 = !DILocation(line: 91, column: 23, scope: !594)
!597 = !DILocation(line: 91, column: 5, scope: !527)
!598 = !{!552, !553, i64 32}
!599 = !DILocation(line: 94, column: 17, scope: !514)
!600 = !DILocation(line: 94, column: 22, scope: !514)
!601 = !DILocation(line: 96, column: 33, scope: !530)
!602 = !DILocation(line: 96, column: 25, scope: !530)
!603 = !DILocation(line: 96, column: 44, scope: !530)
!604 = !DILocation(line: 92, column: 46, scope: !605)
!605 = distinct !DILexicalBlock(scope: !594, file: !359, line: 91, column: 47)
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
!617 = distinct !{!617, !597, !618, !402}
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
!634 = !DILocation(line: 107, column: 21, scope: !532)
!635 = !DILocation(line: 108, column: 9, scope: !532)
!636 = !DILocation(line: 144, column: 14, scope: !514)
!637 = !DILocation(line: 144, column: 28, scope: !514)
!638 = !DILocation(line: 144, column: 25, scope: !514)
!639 = !DILocation(line: 144, column: 50, scope: !514)
!640 = !DILocation(line: 145, column: 28, scope: !514)
!641 = !DILocation(line: 117, column: 59, scope: !537)
!642 = !DILocation(line: 117, column: 47, scope: !537)
!643 = !DILocation(line: 0, scope: !570, inlinedAt: !644)
!644 = distinct !DILocation(line: 117, column: 78, scope: !537)
!645 = !DILocation(line: 117, column: 66, scope: !537)
!646 = !DILocation(line: 0, scope: !537)
!647 = !DILocation(line: 118, column: 59, scope: !537)
!648 = !DILocation(line: 118, column: 47, scope: !537)
!649 = !DILocation(line: 0, scope: !570, inlinedAt: !650)
!650 = distinct !DILocation(line: 118, column: 78, scope: !537)
!651 = !DILocation(line: 118, column: 66, scope: !537)
!652 = !DILocation(line: 121, column: 33, scope: !653)
!653 = distinct !DILexicalBlock(scope: !654, file: !359, line: 121, column: 9)
!654 = distinct !DILexicalBlock(scope: !537, file: !359, line: 121, column: 9)
!655 = !DILocation(line: 121, column: 9, scope: !654)
!656 = !DILocation(line: 124, column: 36, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !359, line: 124, column: 17)
!658 = distinct !DILexicalBlock(scope: !653, file: !359, line: 121, column: 48)
!659 = !DILocation(line: 124, column: 34, scope: !657)
!660 = !DILocation(line: 124, column: 63, scope: !657)
!661 = !DILocation(line: 121, column: 44, scope: !653)
!662 = distinct !{!662, !655, !663, !402}
!663 = !DILocation(line: 127, column: 9, scope: !654)
!664 = !DILocation(line: 0, scope: !654)
!665 = !DILocation(line: 0, scope: !542)
!666 = !DILocation(line: 128, column: 27, scope: !667)
!667 = distinct !DILexicalBlock(scope: !542, file: !359, line: 128, column: 9)
!668 = !DILocation(line: 128, column: 9, scope: !542)
!669 = !DILocation(line: 133, column: 40, scope: !537)
!670 = !{!607, !557, i64 4}
!671 = !DILocation(line: 133, column: 28, scope: !537)
!672 = !DILocation(line: 133, column: 9, scope: !537)
!673 = !DILocation(line: 133, column: 26, scope: !537)
!674 = !DILocation(line: 135, column: 9, scope: !537)
!675 = !DILocation(line: 135, column: 36, scope: !537)
!676 = !DILocation(line: 136, column: 9, scope: !537)
!677 = !DILocation(line: 136, column: 36, scope: !537)
!678 = !DILocation(line: 115, column: 43, scope: !538)
!679 = !DILocation(line: 115, column: 23, scope: !538)
!680 = distinct !{!680, !633, !681, !402}
!681 = !DILocation(line: 137, column: 5, scope: !535)
!682 = !DILocation(line: 129, column: 38, scope: !683)
!683 = distinct !DILexicalBlock(scope: !667, file: !359, line: 128, column: 42)
!684 = !DILocation(line: 129, column: 27, scope: !683)
!685 = !DILocation(line: 129, column: 13, scope: !683)
!686 = !DILocation(line: 129, column: 25, scope: !683)
!687 = !DILocation(line: 130, column: 37, scope: !683)
!688 = !DILocation(line: 130, column: 13, scope: !683)
!689 = !DILocation(line: 130, column: 35, scope: !683)
!690 = !DILocation(line: 131, column: 37, scope: !683)
!691 = !DILocation(line: 131, column: 13, scope: !683)
!692 = !DILocation(line: 131, column: 35, scope: !683)
!693 = distinct !{!693, !668, !694, !402}
!694 = !DILocation(line: 132, column: 9, scope: !542)
!695 = !DILocation(line: 145, column: 25, scope: !514)
!696 = !DILocation(line: 144, column: 5, scope: !514)
!697 = !DILocation(line: 147, column: 25, scope: !545)
!698 = !DILocation(line: 147, column: 22, scope: !545)
!699 = !DILocation(line: 0, scope: !544)
!700 = !DILocation(line: 152, column: 31, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !359, line: 151, column: 49)
!702 = distinct !DILexicalBlock(scope: !544, file: !359, line: 151, column: 9)
!703 = !DILocation(line: 152, column: 29, scope: !701)
!704 = !DILocation(line: 153, column: 41, scope: !701)
!705 = !DILocation(line: 153, column: 39, scope: !701)
!706 = !DILocation(line: 154, column: 41, scope: !701)
!707 = !DILocation(line: 154, column: 39, scope: !701)
!708 = !DILocation(line: 156, column: 37, scope: !545)
!709 = !DILocation(line: 157, column: 47, scope: !545)
!710 = !DILocation(line: 158, column: 47, scope: !545)
!711 = distinct !{!711, !696, !712, !402}
!712 = !DILocation(line: 159, column: 5, scope: !514)
!713 = !DILocation(line: 160, column: 12, scope: !514)
!714 = !{i64 0, i64 8, !392, i64 8, i64 8, !392, i64 16, i64 8, !392, i64 24, i64 128, !495, i64 152, i64 128, !495, i64 280, i64 128, !495, i64 408, i64 8, !392}
!715 = !DILocation(line: 160, column: 5, scope: !514)
!716 = !DILocation(line: 161, column: 1, scope: !514)
!717 = distinct !DISubprogram(name: "make_host_to_device_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t", scope: !2, file: !359, line: 163, type: !718, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{!364, !517}
!720 = !{!721}
!721 = !DILocalVariable(name: "buf", arg: 1, scope: !717, file: !359, line: 163, type: !517)
!722 = !DILocation(line: 0, scope: !717)
!723 = !DILocation(line: 164, column: 12, scope: !717)
!724 = !DILocation(line: 164, column: 5, scope: !717)
!725 = distinct !DISubprogram(name: "make_device_to_host_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t", scope: !2, file: !359, line: 167, type: !718, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !726)
!726 = !{!727}
!727 = !DILocalVariable(name: "buf", arg: 1, scope: !725, file: !359, line: 167, type: !517)
!728 = !DILocation(line: 0, scope: !725)
!729 = !DILocation(line: 168, column: 12, scope: !725)
!730 = !DILocation(line: 168, column: 5, scope: !725)
!731 = distinct !DISubprogram(name: "copy_to_host_already_locked", linkageName: "_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t", scope: !2, file: !5, line: 30, type: !198, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !732)
!732 = !{!733, !734, !735, !736}
!733 = !DILocalVariable(name: "user_context", arg: 1, scope: !731, file: !5, line: 30, type: !82)
!734 = !DILocalVariable(name: "buf", arg: 2, scope: !731, file: !5, line: 30, type: !195)
!735 = !DILocalVariable(name: "interface", scope: !731, file: !5, line: 36, type: !187)
!736 = !DILocalVariable(name: "result", scope: !731, file: !5, line: 45, type: !34)
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
!751 = !{!552, !393, i64 16}
!752 = !DILocation(line: 1455, column: 23, scope: !745, inlinedAt: !749)
!753 = !DILocation(line: 1455, column: 31, scope: !745, inlinedAt: !749)
!754 = !DILocation(line: 31, column: 9, scope: !731)
!755 = !DILocation(line: 0, scope: !457, inlinedAt: !756)
!756 = distinct !DILocation(line: 35, column: 5, scope: !731)
!757 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !756)
!758 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !756)
!759 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !756)
!760 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !756)
!761 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !756)
!762 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !756)
!763 = !DILocation(line: 0, scope: !471, inlinedAt: !756)
!764 = !DILocation(line: 0, scope: !474, inlinedAt: !765)
!765 = distinct !DILocation(line: 35, column: 25, scope: !731)
!766 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !765)
!767 = !DILocation(line: 35, column: 62, scope: !731)
!768 = !DILocalVariable(name: "this", arg: 1, scope: !769, type: !461, flags: DIFlagArtificial | DIFlagObjectPointer)
!769 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !86, file: !84, line: 97, type: !134, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !133, retainedNodes: !770)
!770 = !{!768, !771}
!771 = !DILocalVariable(name: "arg", arg: 2, scope: !769, file: !84, line: 97, type: !136)
!772 = !DILocation(line: 0, scope: !769, inlinedAt: !773)
!773 = distinct !DILocation(line: 35, column: 59, scope: !731)
!774 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !773)
!775 = !DILocation(line: 0, scope: !474, inlinedAt: !776)
!776 = distinct !DILocation(line: 35, column: 66, scope: !731)
!777 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !776)
!778 = !DILocation(line: 0, scope: !483, inlinedAt: !779)
!779 = distinct !DILocation(line: 35, column: 5, scope: !731)
!780 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !779)
!781 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !779)
!782 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !779)
!783 = !DILocation(line: 0, scope: !497, inlinedAt: !784)
!784 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !779)
!785 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !784)
!786 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !784)
!787 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !784)
!788 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !784)
!789 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !779)
!790 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !779)
!791 = !DILocation(line: 36, column: 55, scope: !731)
!792 = !{!552, !553, i64 8}
!793 = !DILocalVariable(name: "this", arg: 1, scope: !794, type: !217, flags: DIFlagArtificial | DIFlagObjectPointer)
!794 = distinct !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !183, file: !7, line: 1466, type: !304, scopeLine: 1466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !303, retainedNodes: !795)
!795 = !{!793}
!796 = !DILocation(line: 0, scope: !794, inlinedAt: !797)
!797 = distinct !DILocation(line: 37, column: 14, scope: !798)
!798 = distinct !DILexicalBlock(scope: !731, file: !5, line: 37, column: 9)
!799 = !DILocation(line: 0, scope: !745, inlinedAt: !800)
!800 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !797)
!801 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !800)
!802 = !DILocation(line: 1455, column: 23, scope: !745, inlinedAt: !800)
!803 = !DILocation(line: 1455, column: 31, scope: !745, inlinedAt: !800)
!804 = !DILocation(line: 37, column: 9, scope: !731)
!805 = !DILocation(line: 0, scope: !457, inlinedAt: !806)
!806 = distinct !DILocation(line: 38, column: 9, scope: !807)
!807 = distinct !DILexicalBlock(scope: !798, file: !5, line: 37, column: 28)
!808 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !806)
!809 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !806)
!810 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !806)
!811 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !806)
!812 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !806)
!813 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !806)
!814 = !DILocation(line: 0, scope: !471, inlinedAt: !806)
!815 = !DILocation(line: 0, scope: !474, inlinedAt: !816)
!816 = distinct !DILocation(line: 38, column: 29, scope: !807)
!817 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !816)
!818 = !DILocation(line: 0, scope: !769, inlinedAt: !819)
!819 = distinct !DILocation(line: 38, column: 63, scope: !807)
!820 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !819)
!821 = !DILocation(line: 0, scope: !474, inlinedAt: !822)
!822 = distinct !DILocation(line: 38, column: 70, scope: !807)
!823 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !822)
!824 = !DILocation(line: 0, scope: !483, inlinedAt: !825)
!825 = distinct !DILocation(line: 38, column: 9, scope: !807)
!826 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !825)
!827 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !825)
!828 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !825)
!829 = !DILocation(line: 0, scope: !497, inlinedAt: !830)
!830 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !825)
!831 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !830)
!832 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !830)
!833 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !830)
!834 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !830)
!835 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !825)
!836 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !825)
!837 = !DILocation(line: 39, column: 9, scope: !807)
!838 = !DILocation(line: 41, column: 19, scope: !839)
!839 = distinct !DILexicalBlock(scope: !731, file: !5, line: 41, column: 9)
!840 = !DILocation(line: 41, column: 9, scope: !731)
!841 = !DILocation(line: 0, scope: !457, inlinedAt: !842)
!842 = distinct !DILocation(line: 42, column: 9, scope: !843)
!843 = distinct !DILexicalBlock(scope: !839, file: !5, line: 41, column: 31)
!844 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !842)
!845 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !842)
!846 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !842)
!847 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !842)
!848 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !842)
!849 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !842)
!850 = !DILocation(line: 0, scope: !471, inlinedAt: !842)
!851 = !DILocation(line: 0, scope: !474, inlinedAt: !852)
!852 = distinct !DILocation(line: 42, column: 29, scope: !843)
!853 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !852)
!854 = !DILocation(line: 0, scope: !769, inlinedAt: !855)
!855 = distinct !DILocation(line: 42, column: 63, scope: !843)
!856 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !855)
!857 = !DILocation(line: 0, scope: !474, inlinedAt: !858)
!858 = distinct !DILocation(line: 42, column: 70, scope: !843)
!859 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !858)
!860 = !DILocation(line: 0, scope: !483, inlinedAt: !861)
!861 = distinct !DILocation(line: 42, column: 9, scope: !843)
!862 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !861)
!863 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !861)
!864 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !861)
!865 = !DILocation(line: 0, scope: !497, inlinedAt: !866)
!866 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !861)
!867 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !866)
!868 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !866)
!869 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !866)
!870 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !866)
!871 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !861)
!872 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !861)
!873 = !DILocation(line: 43, column: 9, scope: !843)
!874 = !DILocation(line: 45, column: 29, scope: !731)
!875 = !{!876, !553, i64 60}
!876 = !{!"_ZTS25halide_device_interface_t", !553, i64 0, !553, i64 4, !553, i64 8, !553, i64 12, !553, i64 16, !553, i64 20, !553, i64 24, !553, i64 28, !553, i64 32, !553, i64 36, !553, i64 40, !553, i64 44, !553, i64 48, !553, i64 52, !553, i64 56, !553, i64 60}
!877 = !DILocation(line: 45, column: 35, scope: !731)
!878 = !{!879, !553, i64 24}
!879 = !{!"_ZTS30halide_device_interface_impl_t", !553, i64 0, !553, i64 4, !553, i64 8, !553, i64 12, !553, i64 16, !553, i64 20, !553, i64 24, !553, i64 28, !553, i64 32, !553, i64 36, !553, i64 40, !553, i64 44, !553, i64 48, !553, i64 52, !553, i64 56, !553, i64 60}
!880 = !DILocation(line: 45, column: 18, scope: !731)
!881 = !DILocation(line: 46, column: 16, scope: !882)
!882 = distinct !DILexicalBlock(scope: !731, file: !5, line: 46, column: 9)
!883 = !DILocation(line: 46, column: 9, scope: !731)
!884 = !DILocation(line: 0, scope: !457, inlinedAt: !885)
!885 = distinct !DILocation(line: 47, column: 9, scope: !886)
!886 = distinct !DILexicalBlock(scope: !882, file: !5, line: 46, column: 22)
!887 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !885)
!888 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !885)
!889 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !885)
!890 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !885)
!891 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !885)
!892 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !885)
!893 = !DILocation(line: 0, scope: !471, inlinedAt: !885)
!894 = !DILocation(line: 0, scope: !474, inlinedAt: !895)
!895 = distinct !DILocation(line: 47, column: 29, scope: !886)
!896 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !895)
!897 = !DILocation(line: 0, scope: !769, inlinedAt: !898)
!898 = distinct !DILocation(line: 47, column: 63, scope: !886)
!899 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !898)
!900 = !DILocation(line: 0, scope: !474, inlinedAt: !901)
!901 = distinct !DILocation(line: 47, column: 70, scope: !886)
!902 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !901)
!903 = !DILocation(line: 0, scope: !483, inlinedAt: !904)
!904 = distinct !DILocation(line: 47, column: 9, scope: !886)
!905 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !904)
!906 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !904)
!907 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !904)
!908 = !DILocation(line: 0, scope: !497, inlinedAt: !909)
!909 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !904)
!910 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !909)
!911 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !909)
!912 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !909)
!913 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !909)
!914 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !904)
!915 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !904)
!916 = !DILocation(line: 48, column: 9, scope: !886)
!917 = !DILocalVariable(name: "this", arg: 1, scope: !918, type: !195, flags: DIFlagArtificial | DIFlagObjectPointer)
!918 = distinct !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !183, file: !7, line: 1478, type: !308, scopeLine: 1478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !310, retainedNodes: !919)
!919 = !{!917, !920}
!920 = !DILocalVariable(name: "v", arg: 2, scope: !918, file: !7, line: 1478, type: !95)
!921 = !DILocation(line: 0, scope: !918, inlinedAt: !922)
!922 = distinct !DILocation(line: 50, column: 10, scope: !731)
!923 = !DILocalVariable(name: "this", arg: 1, scope: !924, type: !195, flags: DIFlagArtificial | DIFlagObjectPointer)
!924 = distinct !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !183, file: !7, line: 1458, type: !300, scopeLine: 1458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !299, retainedNodes: !925)
!925 = !{!923, !926, !927}
!926 = !DILocalVariable(name: "flag", arg: 2, scope: !924, file: !7, line: 1458, type: !298)
!927 = !DILocalVariable(name: "value", arg: 3, scope: !924, file: !7, line: 1458, type: !95)
!928 = !DILocation(line: 0, scope: !924, inlinedAt: !929)
!929 = distinct !DILocation(line: 1479, column: 9, scope: !918, inlinedAt: !922)
!930 = !DILocation(line: 1462, column: 19, scope: !931, inlinedAt: !929)
!931 = distinct !DILexicalBlock(scope: !932, file: !7, line: 1461, column: 16)
!932 = distinct !DILexicalBlock(scope: !924, file: !7, line: 1459, column: 13)
!933 = !DILocation(line: 51, column: 5, scope: !731)
!934 = !DILocation(line: 53, column: 5, scope: !731)
!935 = !DILocation(line: 54, column: 1, scope: !731)
!936 = !DISubprogram(name: "halide_msan_annotate_buffer_is_initialized", scope: !7, file: !7, line: 986, type: !198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!937 = distinct !DISubprogram(name: "halide_device_release", scope: !5, file: !5, line: 107, type: !203, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !938)
!938 = !{!939, !940}
!939 = !DILocalVariable(name: "user_context", arg: 1, scope: !937, file: !5, line: 107, type: !82)
!940 = !DILocalVariable(name: "device_interface", arg: 2, scope: !937, file: !5, line: 107, type: !187)
!941 = !DILocation(line: 0, scope: !937)
!942 = !DILocation(line: 108, column: 23, scope: !937)
!943 = !DILocation(line: 108, column: 29, scope: !937)
!944 = !{!879, !553, i64 20}
!945 = !DILocation(line: 108, column: 5, scope: !937)
!946 = !DILocation(line: 109, column: 1, scope: !937)
!947 = distinct !DISubprogram(name: "halide_copy_to_host", scope: !5, file: !5, line: 113, type: !198, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !948)
!948 = !{!949, !950, !951, !964}
!949 = !DILocalVariable(name: "user_context", arg: 1, scope: !947, file: !5, line: 113, type: !82)
!950 = !DILocalVariable(name: "buf", arg: 2, scope: !947, file: !5, line: 113, type: !195)
!951 = !DILocalVariable(name: "lock", scope: !947, file: !5, line: 114, type: !952)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !2, file: !953, line: 11, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !954, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!953 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!954 = !{!955, !957, !961}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !952, file: !953, line: 12, baseType: !956, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!957 = !DISubprogram(name: "ScopedMutexLock", scope: !952, file: !953, line: 14, type: !958, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !960, !956}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!961 = !DISubprogram(name: "~ScopedMutexLock", scope: !952, file: !953, line: 19, type: !962, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !960}
!964 = !DILocalVariable(name: "result", scope: !947, file: !5, line: 116, type: !34)
!965 = !DILocation(line: 0, scope: !947)
!966 = !DILocalVariable(name: "this", arg: 1, scope: !967, type: !970, flags: DIFlagArtificial | DIFlagObjectPointer)
!967 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !952, file: !953, line: 14, type: !958, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !957, retainedNodes: !968)
!968 = !{!966, !969}
!969 = !DILocalVariable(name: "mutex", arg: 2, scope: !967, file: !953, line: 14, type: !956)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 32)
!971 = !DILocation(line: 0, scope: !967, inlinedAt: !972)
!972 = distinct !DILocation(line: 114, column: 21, scope: !947)
!973 = !DILocation(line: 16, column: 9, scope: !974, inlinedAt: !972)
!974 = distinct !DILexicalBlock(scope: !967, file: !953, line: 15, column: 24)
!975 = !DILocalVariable(name: "user_context", arg: 1, scope: !976, file: !5, line: 62, type: !82)
!976 = distinct !DISubprogram(name: "debug_log_and_validate_buf", linkageName: "_ZN12_GLOBAL__N_126debug_log_and_validate_bufEPvPK15halide_buffer_tPKc", scope: !977, file: !5, line: 62, type: !978, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !980)
!977 = !DINamespace(scope: null)
!978 = !DISubroutineType(types: !979)
!979 = !{!34, !82, !517, !106}
!980 = !{!975, !981, !982, !983, !984, !985, !986, !987}
!981 = !DILocalVariable(name: "buf_arg", arg: 2, scope: !976, file: !5, line: 62, type: !517)
!982 = !DILocalVariable(name: "routine", arg: 3, scope: !976, file: !5, line: 63, type: !106)
!983 = !DILocalVariable(name: "buf", scope: !976, file: !5, line: 68, type: !180)
!984 = !DILocalVariable(name: "device_interface_set", scope: !976, file: !5, line: 71, type: !95)
!985 = !DILocalVariable(name: "device_set", scope: !976, file: !5, line: 72, type: !95)
!986 = !DILocalVariable(name: "host_dirty", scope: !976, file: !5, line: 80, type: !95)
!987 = !DILocalVariable(name: "device_dirty", scope: !976, file: !5, line: 81, type: !95)
!988 = !DILocation(line: 0, scope: !976, inlinedAt: !989)
!989 = distinct !DILocation(line: 116, column: 18, scope: !947)
!990 = !DILocation(line: 64, column: 17, scope: !991, inlinedAt: !989)
!991 = distinct !DILexicalBlock(scope: !976, file: !5, line: 64, column: 9)
!992 = !DILocation(line: 64, column: 9, scope: !976, inlinedAt: !989)
!993 = !DILocation(line: 65, column: 16, scope: !994, inlinedAt: !989)
!994 = distinct !DILexicalBlock(scope: !991, file: !5, line: 64, column: 29)
!995 = !DILocation(line: 65, column: 9, scope: !994, inlinedAt: !989)
!996 = !DILocation(line: 0, scope: !457, inlinedAt: !997)
!997 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !989)
!998 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !997)
!999 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !997)
!1000 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !997)
!1001 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !997)
!1002 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !997)
!1003 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !997)
!1004 = !DILocation(line: 0, scope: !471, inlinedAt: !997)
!1005 = !DILocation(line: 0, scope: !474, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 69, column: 25, scope: !976, inlinedAt: !989)
!1007 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1006)
!1008 = !DILocation(line: 0, scope: !474, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 69, column: 36, scope: !976, inlinedAt: !989)
!1010 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1009)
!1011 = !DILocalVariable(name: "this", arg: 1, scope: !1012, type: !461, flags: DIFlagArtificial | DIFlagObjectPointer)
!1012 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !86, file: !84, line: 113, type: !178, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !177, retainedNodes: !1013)
!1013 = !{!1011, !1014}
!1014 = !DILocalVariable(name: "buf", arg: 2, scope: !1012, file: !84, line: 113, type: !180)
!1015 = !DILocation(line: 0, scope: !1012, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 69, column: 68, scope: !976, inlinedAt: !989)
!1017 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !1016)
!1018 = !DILocation(line: 0, scope: !474, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 69, column: 75, scope: !976, inlinedAt: !989)
!1020 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1019)
!1021 = !DILocation(line: 0, scope: !483, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !989)
!1023 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1022)
!1024 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1022)
!1025 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1022)
!1026 = !DILocation(line: 0, scope: !497, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1022)
!1028 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1027)
!1029 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1027)
!1030 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1027)
!1031 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1027)
!1032 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1022)
!1033 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1022)
!1034 = !DILocation(line: 71, column: 38, scope: !976, inlinedAt: !989)
!1035 = !DILocation(line: 71, column: 55, scope: !976, inlinedAt: !989)
!1036 = !DILocation(line: 72, column: 28, scope: !976, inlinedAt: !989)
!1037 = !DILocation(line: 72, column: 35, scope: !976, inlinedAt: !989)
!1038 = !DILocation(line: 73, column: 20, scope: !1039, inlinedAt: !989)
!1039 = distinct !DILexicalBlock(scope: !976, file: !5, line: 73, column: 9)
!1040 = !DILocation(line: 74, column: 16, scope: !1041, inlinedAt: !989)
!1041 = distinct !DILexicalBlock(scope: !1039, file: !5, line: 73, column: 46)
!1042 = !DILocation(line: 74, column: 9, scope: !1041, inlinedAt: !989)
!1043 = !DILocation(line: 76, column: 30, scope: !1044, inlinedAt: !989)
!1044 = distinct !DILexicalBlock(scope: !976, file: !5, line: 76, column: 9)
!1045 = !DILocation(line: 77, column: 16, scope: !1046, inlinedAt: !989)
!1046 = distinct !DILexicalBlock(scope: !1044, file: !5, line: 76, column: 46)
!1047 = !DILocation(line: 77, column: 9, scope: !1046, inlinedAt: !989)
!1048 = !DILocation(line: 0, scope: !794, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 80, column: 27, scope: !976, inlinedAt: !989)
!1050 = !DILocation(line: 0, scope: !745, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !1049)
!1052 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1051)
!1053 = !DILocation(line: 0, scope: !745, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 81, column: 29, scope: !976, inlinedAt: !989)
!1056 = !DILocation(line: 82, column: 20, scope: !1057, inlinedAt: !989)
!1057 = distinct !DILexicalBlock(scope: !976, file: !5, line: 82, column: 9)
!1058 = !DILocation(line: 83, column: 16, scope: !1059, inlinedAt: !989)
!1059 = distinct !DILexicalBlock(scope: !1057, file: !5, line: 82, column: 37)
!1060 = !DILocation(line: 83, column: 9, scope: !1059, inlinedAt: !989)
!1061 = !DILocation(line: 117, column: 16, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !947, file: !5, line: 117, column: 9)
!1063 = !DILocation(line: 117, column: 9, scope: !947)
!1064 = !DILocation(line: 121, column: 12, scope: !947)
!1065 = !DILocation(line: 121, column: 5, scope: !947)
!1066 = !DILocalVariable(name: "this", arg: 1, scope: !1067, type: !970, flags: DIFlagArtificial | DIFlagObjectPointer)
!1067 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !952, file: !953, line: 19, type: !962, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !961, retainedNodes: !1068)
!1068 = !{!1066}
!1069 = !DILocation(line: 0, scope: !1067, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 122, column: 1, scope: !947)
!1071 = !DILocation(line: 20, column: 9, scope: !1072, inlinedAt: !1070)
!1072 = distinct !DILexicalBlock(scope: !1067, file: !953, line: 19, column: 38)
!1073 = !DILocation(line: 122, column: 1, scope: !947)
!1074 = distinct !DISubprogram(name: "copy_to_device_already_locked", scope: !5, file: !5, line: 126, type: !193, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1075)
!1075 = !{!1076, !1077, !1078, !1079}
!1076 = !DILocalVariable(name: "user_context", arg: 1, scope: !1074, file: !5, line: 126, type: !82)
!1077 = !DILocalVariable(name: "buf", arg: 2, scope: !1074, file: !5, line: 127, type: !195)
!1078 = !DILocalVariable(name: "device_interface", arg: 3, scope: !1074, file: !5, line: 128, type: !187)
!1079 = !DILocalVariable(name: "result", scope: !1074, file: !5, line: 129, type: !34)
!1080 = !DILocation(line: 0, scope: !1074)
!1081 = !DILocation(line: 0, scope: !976, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 131, column: 14, scope: !1074)
!1083 = !DILocation(line: 64, column: 17, scope: !991, inlinedAt: !1082)
!1084 = !DILocation(line: 64, column: 9, scope: !976, inlinedAt: !1082)
!1085 = !DILocation(line: 65, column: 16, scope: !994, inlinedAt: !1082)
!1086 = !DILocation(line: 65, column: 9, scope: !994, inlinedAt: !1082)
!1087 = !DILocation(line: 0, scope: !457, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !1082)
!1089 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !1088)
!1090 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !1088)
!1091 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !1088)
!1092 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !1088)
!1093 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !1088)
!1094 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !1088)
!1095 = !DILocation(line: 0, scope: !471, inlinedAt: !1088)
!1096 = !DILocation(line: 0, scope: !474, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 69, column: 25, scope: !976, inlinedAt: !1082)
!1098 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1097)
!1099 = !DILocation(line: 0, scope: !474, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 69, column: 36, scope: !976, inlinedAt: !1082)
!1101 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1100)
!1102 = !DILocation(line: 0, scope: !1012, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 69, column: 68, scope: !976, inlinedAt: !1082)
!1104 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !1103)
!1105 = !DILocation(line: 0, scope: !474, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 69, column: 75, scope: !976, inlinedAt: !1082)
!1107 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1106)
!1108 = !DILocation(line: 0, scope: !483, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !1082)
!1110 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1109)
!1111 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1109)
!1112 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1109)
!1113 = !DILocation(line: 0, scope: !497, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1109)
!1115 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1114)
!1116 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1114)
!1117 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1114)
!1118 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1114)
!1119 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1109)
!1120 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1109)
!1121 = !DILocation(line: 71, column: 38, scope: !976, inlinedAt: !1082)
!1122 = !DILocation(line: 71, column: 55, scope: !976, inlinedAt: !1082)
!1123 = !DILocation(line: 72, column: 28, scope: !976, inlinedAt: !1082)
!1124 = !DILocation(line: 72, column: 35, scope: !976, inlinedAt: !1082)
!1125 = !DILocation(line: 73, column: 20, scope: !1039, inlinedAt: !1082)
!1126 = !DILocation(line: 74, column: 16, scope: !1041, inlinedAt: !1082)
!1127 = !DILocation(line: 74, column: 9, scope: !1041, inlinedAt: !1082)
!1128 = !DILocation(line: 76, column: 30, scope: !1044, inlinedAt: !1082)
!1129 = !DILocation(line: 77, column: 16, scope: !1046, inlinedAt: !1082)
!1130 = !DILocation(line: 77, column: 9, scope: !1046, inlinedAt: !1082)
!1131 = !DILocation(line: 0, scope: !794, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 80, column: 27, scope: !976, inlinedAt: !1082)
!1133 = !DILocation(line: 0, scope: !745, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !1132)
!1135 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1134)
!1136 = !DILocation(line: 0, scope: !745, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 81, column: 29, scope: !976, inlinedAt: !1082)
!1139 = !DILocation(line: 82, column: 20, scope: !1057, inlinedAt: !1082)
!1140 = !DILocation(line: 83, column: 16, scope: !1059, inlinedAt: !1082)
!1141 = !DILocation(line: 83, column: 9, scope: !1059, inlinedAt: !1082)
!1142 = !DILocation(line: 132, column: 16, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1074, file: !5, line: 132, column: 9)
!1144 = !DILocation(line: 132, column: 9, scope: !1074)
!1145 = !DILocation(line: 136, column: 26, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1074, file: !5, line: 136, column: 9)
!1147 = !DILocation(line: 136, column: 9, scope: !1074)
!1148 = !DILocation(line: 0, scope: !457, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 137, column: 9, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !5, line: 136, column: 38)
!1151 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !1149)
!1152 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !1149)
!1153 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !1149)
!1154 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !1149)
!1155 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !1149)
!1156 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !1149)
!1157 = !DILocation(line: 0, scope: !471, inlinedAt: !1149)
!1158 = !DILocation(line: 0, scope: !474, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 137, column: 29, scope: !1150)
!1160 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1159)
!1161 = !DILocation(line: 137, column: 60, scope: !1150)
!1162 = !DILocation(line: 0, scope: !769, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 137, column: 57, scope: !1150)
!1164 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1163)
!1165 = !DILocation(line: 0, scope: !474, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 137, column: 64, scope: !1150)
!1167 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1166)
!1168 = !DILocation(line: 0, scope: !483, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 137, column: 9, scope: !1150)
!1170 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1169)
!1171 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1169)
!1172 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1169)
!1173 = !DILocation(line: 0, scope: !497, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1169)
!1175 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1174)
!1176 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1174)
!1177 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1174)
!1178 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1174)
!1179 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1169)
!1180 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1169)
!1181 = !DILocation(line: 138, column: 18, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1150, file: !5, line: 138, column: 13)
!1183 = !DILocation(line: 138, column: 35, scope: !1182)
!1184 = !DILocation(line: 138, column: 13, scope: !1150)
!1185 = !DILocation(line: 139, column: 20, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !5, line: 138, column: 47)
!1187 = !DILocation(line: 139, column: 13, scope: !1186)
!1188 = !DILocation(line: 144, column: 14, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1074, file: !5, line: 144, column: 9)
!1190 = !DILocation(line: 144, column: 9, scope: !1189)
!1191 = !DILocation(line: 144, column: 21, scope: !1189)
!1192 = !DILocation(line: 144, column: 29, scope: !1189)
!1193 = !DILocation(line: 144, column: 46, scope: !1189)
!1194 = !DILocation(line: 144, column: 9, scope: !1074)
!1195 = !DILocation(line: 145, column: 9, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1189, file: !5, line: 144, column: 67)
!1197 = !DILocation(line: 146, column: 9, scope: !1196)
!1198 = !DILocation(line: 150, column: 18, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !5, line: 149, column: 27)
!1200 = distinct !DILexicalBlock(scope: !1074, file: !5, line: 149, column: 9)
!1201 = !DILocation(line: 151, column: 20, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !5, line: 151, column: 13)
!1203 = !DILocation(line: 151, column: 13, scope: !1199)
!1204 = !DILocation(line: 0, scope: !457, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 152, column: 13, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1202, file: !5, line: 151, column: 26)
!1207 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !1205)
!1208 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !1205)
!1209 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !1205)
!1210 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !1205)
!1211 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !1205)
!1212 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !1205)
!1213 = !DILocation(line: 0, scope: !471, inlinedAt: !1205)
!1214 = !DILocation(line: 0, scope: !474, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 152, column: 33, scope: !1206)
!1216 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1215)
!1217 = !DILocation(line: 152, column: 64, scope: !1206)
!1218 = !DILocation(line: 0, scope: !769, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 152, column: 61, scope: !1206)
!1220 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1219)
!1221 = !DILocation(line: 0, scope: !474, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 153, column: 33, scope: !1206)
!1223 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1222)
!1224 = !DILocation(line: 0, scope: !483, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 152, column: 13, scope: !1206)
!1226 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1225)
!1227 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1225)
!1228 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1225)
!1229 = !DILocation(line: 0, scope: !497, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1225)
!1231 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1230)
!1232 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1230)
!1233 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1230)
!1234 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1230)
!1235 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1225)
!1236 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1225)
!1237 = !DILocation(line: 154, column: 13, scope: !1206)
!1238 = !DILocation(line: 0, scope: !794, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 158, column: 14, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1074, file: !5, line: 158, column: 9)
!1241 = !DILocation(line: 0, scope: !745, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !1239)
!1243 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1242)
!1244 = !DILocation(line: 1455, column: 23, scope: !745, inlinedAt: !1242)
!1245 = !DILocation(line: 1455, column: 31, scope: !745, inlinedAt: !1242)
!1246 = !DILocation(line: 0, scope: !457, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 175, column: 9, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1240, file: !5, line: 174, column: 12)
!1249 = !DILocation(line: 0, scope: !457, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 159, column: 9, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1240, file: !5, line: 158, column: 28)
!1252 = !DILocation(line: 0, scope: !1240)
!1253 = !DILocation(line: 158, column: 9, scope: !1074)
!1254 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !1250)
!1255 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !1250)
!1256 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !1250)
!1257 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !1250)
!1258 = !DILocation(line: 0, scope: !471, inlinedAt: !1250)
!1259 = !DILocation(line: 0, scope: !474, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 159, column: 29, scope: !1251)
!1261 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1260)
!1262 = !DILocation(line: 159, column: 60, scope: !1251)
!1263 = !DILocation(line: 0, scope: !769, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 159, column: 57, scope: !1251)
!1265 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1264)
!1266 = !DILocation(line: 0, scope: !474, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 159, column: 64, scope: !1251)
!1268 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1267)
!1269 = !DILocation(line: 0, scope: !483, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 159, column: 9, scope: !1251)
!1271 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1270)
!1272 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1270)
!1273 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1270)
!1274 = !DILocation(line: 0, scope: !497, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1270)
!1276 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1275)
!1277 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1275)
!1278 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1275)
!1279 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1275)
!1280 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1270)
!1281 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1270)
!1282 = !DILocation(line: 0, scope: !739, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 160, column: 18, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1251, file: !5, line: 160, column: 13)
!1285 = !DILocation(line: 0, scope: !745, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1283)
!1287 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1286)
!1288 = !DILocation(line: 1455, column: 23, scope: !745, inlinedAt: !1286)
!1289 = !DILocation(line: 1455, column: 31, scope: !745, inlinedAt: !1286)
!1290 = !DILocation(line: 0, scope: !457, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 164, column: 13, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1284, file: !5, line: 163, column: 16)
!1293 = !DILocation(line: 0, scope: !457, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 161, column: 13, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1284, file: !5, line: 160, column: 34)
!1296 = !DILocation(line: 0, scope: !1284)
!1297 = !DILocation(line: 160, column: 13, scope: !1251)
!1298 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !1294)
!1299 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !1294)
!1300 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !1294)
!1301 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !1294)
!1302 = !DILocation(line: 0, scope: !471, inlinedAt: !1294)
!1303 = !DILocation(line: 0, scope: !474, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 161, column: 33, scope: !1295)
!1305 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1304)
!1306 = !DILocation(line: 0, scope: !769, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 161, column: 61, scope: !1295)
!1308 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1307)
!1309 = !DILocation(line: 0, scope: !474, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 161, column: 68, scope: !1295)
!1311 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1310)
!1312 = !DILocation(line: 0, scope: !483, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 161, column: 13, scope: !1295)
!1314 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1313)
!1315 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1313)
!1316 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1313)
!1317 = !DILocation(line: 0, scope: !497, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1313)
!1319 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1318)
!1320 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1318)
!1321 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1318)
!1322 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1318)
!1323 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1313)
!1324 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1313)
!1325 = !DILocation(line: 162, column: 13, scope: !1295)
!1326 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !1291)
!1327 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !1291)
!1328 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !1291)
!1329 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !1291)
!1330 = !DILocation(line: 0, scope: !471, inlinedAt: !1291)
!1331 = !DILocation(line: 0, scope: !474, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 164, column: 33, scope: !1292)
!1333 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1332)
!1334 = !DILocation(line: 0, scope: !769, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 164, column: 61, scope: !1292)
!1336 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1335)
!1337 = !DILocation(line: 0, scope: !474, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 164, column: 68, scope: !1292)
!1339 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1338)
!1340 = !DILocation(line: 0, scope: !483, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 164, column: 13, scope: !1292)
!1342 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1341)
!1343 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1341)
!1344 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1341)
!1345 = !DILocation(line: 0, scope: !497, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1341)
!1347 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1346)
!1348 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1346)
!1349 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1346)
!1350 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1346)
!1351 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1341)
!1352 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1341)
!1353 = !DILocation(line: 165, column: 40, scope: !1292)
!1354 = !DILocation(line: 165, column: 46, scope: !1292)
!1355 = !{!879, !553, i64 28}
!1356 = !DILocation(line: 165, column: 22, scope: !1292)
!1357 = !DILocation(line: 166, column: 24, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1292, file: !5, line: 166, column: 17)
!1359 = !DILocation(line: 166, column: 17, scope: !1292)
!1360 = !DILocalVariable(name: "this", arg: 1, scope: !1361, type: !195, flags: DIFlagArtificial | DIFlagObjectPointer)
!1361 = distinct !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !183, file: !7, line: 1474, type: !308, scopeLine: 1474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !307, retainedNodes: !1362)
!1362 = !{!1360, !1363}
!1363 = !DILocalVariable(name: "v", arg: 2, scope: !1361, file: !7, line: 1474, type: !95)
!1364 = !DILocation(line: 0, scope: !1361, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 167, column: 22, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1358, file: !5, line: 166, column: 30)
!1367 = !DILocation(line: 0, scope: !924, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 1475, column: 9, scope: !1361, inlinedAt: !1365)
!1369 = !DILocation(line: 1462, column: 19, scope: !931, inlinedAt: !1368)
!1370 = !DILocation(line: 174, column: 5, scope: !1251)
!1371 = !DILocation(line: 0, scope: !457, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 169, column: 17, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1358, file: !5, line: 168, column: 20)
!1374 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !1372)
!1375 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !1372)
!1376 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !1372)
!1377 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !1372)
!1378 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !1372)
!1379 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !1372)
!1380 = !DILocation(line: 0, scope: !471, inlinedAt: !1372)
!1381 = !DILocation(line: 0, scope: !474, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 169, column: 37, scope: !1373)
!1383 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1382)
!1384 = !DILocation(line: 0, scope: !769, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 170, column: 37, scope: !1373)
!1386 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1385)
!1387 = !DILocation(line: 0, scope: !474, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 170, column: 44, scope: !1373)
!1389 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1388)
!1390 = !DILocation(line: 0, scope: !483, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 169, column: 17, scope: !1373)
!1392 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1391)
!1393 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1391)
!1394 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1391)
!1395 = !DILocation(line: 0, scope: !497, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1391)
!1397 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1396)
!1398 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1396)
!1399 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1396)
!1400 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1396)
!1401 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1391)
!1402 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1391)
!1403 = !DILocation(line: 171, column: 17, scope: !1373)
!1404 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !1247)
!1405 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !1247)
!1406 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !1247)
!1407 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !1247)
!1408 = !DILocation(line: 0, scope: !471, inlinedAt: !1247)
!1409 = !DILocation(line: 0, scope: !474, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 175, column: 29, scope: !1248)
!1411 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1410)
!1412 = !DILocation(line: 175, column: 60, scope: !1248)
!1413 = !DILocation(line: 0, scope: !769, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 175, column: 57, scope: !1248)
!1415 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1414)
!1416 = !DILocation(line: 0, scope: !474, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 175, column: 64, scope: !1248)
!1418 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1417)
!1419 = !DILocation(line: 0, scope: !483, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 175, column: 9, scope: !1248)
!1421 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1420)
!1422 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1420)
!1423 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1420)
!1424 = !DILocation(line: 0, scope: !497, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1420)
!1426 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1425)
!1427 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1425)
!1428 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1425)
!1429 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1425)
!1430 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1420)
!1431 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1420)
!1432 = !DILocation(line: 179, column: 1, scope: !1074)
!1433 = !DISubprogram(name: "halide_error_no_device_interface", scope: !7, file: !7, line: 1242, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!1434 = !DISubprogram(name: "halide_error", scope: !7, file: !7, line: 111, type: !1435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !82, !106}
!1437 = distinct !DISubprogram(name: "halide_device_malloc", scope: !5, file: !5, line: 209, type: !193, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1438)
!1438 = !{!1439, !1440, !1441, !1442, !1443}
!1439 = !DILocalVariable(name: "user_context", arg: 1, scope: !1437, file: !5, line: 209, type: !82)
!1440 = !DILocalVariable(name: "buf", arg: 2, scope: !1437, file: !5, line: 209, type: !195)
!1441 = !DILocalVariable(name: "device_interface", arg: 3, scope: !1437, file: !5, line: 210, type: !187)
!1442 = !DILocalVariable(name: "result", scope: !1437, file: !5, line: 211, type: !34)
!1443 = !DILocalVariable(name: "current_interface", scope: !1437, file: !5, line: 217, type: !187)
!1444 = !DILocation(line: 0, scope: !1437)
!1445 = !DILocation(line: 0, scope: !976, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 211, column: 18, scope: !1437)
!1447 = !DILocation(line: 64, column: 17, scope: !991, inlinedAt: !1446)
!1448 = !DILocation(line: 64, column: 9, scope: !976, inlinedAt: !1446)
!1449 = !DILocation(line: 65, column: 16, scope: !994, inlinedAt: !1446)
!1450 = !DILocation(line: 65, column: 9, scope: !994, inlinedAt: !1446)
!1451 = !DILocation(line: 0, scope: !457, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !1446)
!1453 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !1452)
!1454 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !1452)
!1455 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !1452)
!1456 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !1452)
!1457 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !1452)
!1458 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !1452)
!1459 = !DILocation(line: 0, scope: !471, inlinedAt: !1452)
!1460 = !DILocation(line: 0, scope: !474, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 69, column: 25, scope: !976, inlinedAt: !1446)
!1462 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1461)
!1463 = !DILocation(line: 0, scope: !474, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 69, column: 36, scope: !976, inlinedAt: !1446)
!1465 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1464)
!1466 = !DILocation(line: 0, scope: !1012, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 69, column: 68, scope: !976, inlinedAt: !1446)
!1468 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !1467)
!1469 = !DILocation(line: 0, scope: !474, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 69, column: 75, scope: !976, inlinedAt: !1446)
!1471 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1470)
!1472 = !DILocation(line: 0, scope: !483, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !1446)
!1474 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1473)
!1475 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1473)
!1476 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1473)
!1477 = !DILocation(line: 0, scope: !497, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1473)
!1479 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1478)
!1480 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1478)
!1481 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1478)
!1482 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1478)
!1483 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1473)
!1484 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1473)
!1485 = !DILocation(line: 71, column: 38, scope: !976, inlinedAt: !1446)
!1486 = !DILocation(line: 71, column: 55, scope: !976, inlinedAt: !1446)
!1487 = !DILocation(line: 72, column: 28, scope: !976, inlinedAt: !1446)
!1488 = !DILocation(line: 72, column: 35, scope: !976, inlinedAt: !1446)
!1489 = !DILocation(line: 73, column: 20, scope: !1039, inlinedAt: !1446)
!1490 = !DILocation(line: 74, column: 16, scope: !1041, inlinedAt: !1446)
!1491 = !DILocation(line: 74, column: 9, scope: !1041, inlinedAt: !1446)
!1492 = !DILocation(line: 76, column: 30, scope: !1044, inlinedAt: !1446)
!1493 = !DILocation(line: 77, column: 16, scope: !1046, inlinedAt: !1446)
!1494 = !DILocation(line: 77, column: 9, scope: !1046, inlinedAt: !1446)
!1495 = !DILocation(line: 0, scope: !794, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 80, column: 27, scope: !976, inlinedAt: !1446)
!1497 = !DILocation(line: 0, scope: !745, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !1496)
!1499 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1498)
!1500 = !DILocation(line: 0, scope: !745, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 81, column: 29, scope: !976, inlinedAt: !1446)
!1503 = !DILocation(line: 82, column: 20, scope: !1057, inlinedAt: !1446)
!1504 = !DILocation(line: 83, column: 16, scope: !1059, inlinedAt: !1446)
!1505 = !DILocation(line: 83, column: 9, scope: !1059, inlinedAt: !1446)
!1506 = !DILocation(line: 212, column: 16, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1437, file: !5, line: 212, column: 9)
!1508 = !DILocation(line: 212, column: 9, scope: !1437)
!1509 = !DILocation(line: 0, scope: !457, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 215, column: 5, scope: !1437)
!1511 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !1510)
!1512 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !1510)
!1513 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !1510)
!1514 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !1510)
!1515 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !1510)
!1516 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !1510)
!1517 = !DILocation(line: 0, scope: !471, inlinedAt: !1510)
!1518 = !DILocation(line: 0, scope: !474, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 215, column: 25, scope: !1437)
!1520 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1519)
!1521 = !DILocation(line: 215, column: 80, scope: !1437)
!1522 = !DILocation(line: 0, scope: !769, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 215, column: 77, scope: !1437)
!1524 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1523)
!1525 = !DILocation(line: 0, scope: !474, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 215, column: 97, scope: !1437)
!1527 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1526)
!1528 = !DILocation(line: 0, scope: !483, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 215, column: 5, scope: !1437)
!1530 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1529)
!1531 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1529)
!1532 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1529)
!1533 = !DILocation(line: 0, scope: !497, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1529)
!1535 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1534)
!1536 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1534)
!1537 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1534)
!1538 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1534)
!1539 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1529)
!1540 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1529)
!1541 = !DILocation(line: 217, column: 63, scope: !1437)
!1542 = !DILocation(line: 220, column: 27, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1437, file: !5, line: 220, column: 9)
!1544 = !DILocation(line: 220, column: 38, scope: !1543)
!1545 = !DILocation(line: 221, column: 9, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1543, file: !5, line: 220, column: 80)
!1547 = !DILocation(line: 222, column: 9, scope: !1546)
!1548 = !DILocation(line: 227, column: 23, scope: !1437)
!1549 = !DILocation(line: 227, column: 29, scope: !1437)
!1550 = !{!879, !553, i64 0}
!1551 = !DILocation(line: 227, column: 5, scope: !1437)
!1552 = !DILocation(line: 228, column: 32, scope: !1437)
!1553 = !DILocation(line: 228, column: 38, scope: !1437)
!1554 = !{!879, !553, i64 8}
!1555 = !DILocation(line: 228, column: 14, scope: !1437)
!1556 = !DILocation(line: 229, column: 23, scope: !1437)
!1557 = !DILocation(line: 229, column: 29, scope: !1437)
!1558 = !{!879, !553, i64 4}
!1559 = !DILocation(line: 229, column: 5, scope: !1437)
!1560 = !DILocation(line: 231, column: 9, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1437, file: !5, line: 231, column: 9)
!1562 = !DILocation(line: 231, column: 9, scope: !1437)
!1563 = !DILocation(line: 236, column: 1, scope: !1437)
!1564 = distinct !DISubprogram(name: "halide_copy_to_device", scope: !5, file: !5, line: 181, type: !193, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1565)
!1565 = !{!1566, !1567, !1568, !1569}
!1566 = !DILocalVariable(name: "user_context", arg: 1, scope: !1564, file: !5, line: 181, type: !82)
!1567 = !DILocalVariable(name: "buf", arg: 2, scope: !1564, file: !5, line: 182, type: !195)
!1568 = !DILocalVariable(name: "device_interface", arg: 3, scope: !1564, file: !5, line: 183, type: !187)
!1569 = !DILocalVariable(name: "lock", scope: !1564, file: !5, line: 184, type: !952)
!1570 = !DILocation(line: 0, scope: !1564)
!1571 = !DILocation(line: 0, scope: !967, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 184, column: 21, scope: !1564)
!1573 = !DILocation(line: 16, column: 9, scope: !974, inlinedAt: !1572)
!1574 = !DILocation(line: 185, column: 12, scope: !1564)
!1575 = !DILocation(line: 0, scope: !1067, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 186, column: 1, scope: !1564)
!1577 = !DILocation(line: 20, column: 9, scope: !1072, inlinedAt: !1576)
!1578 = !DILocation(line: 186, column: 1, scope: !1564)
!1579 = distinct !DISubprogram(name: "halide_device_sync", scope: !5, file: !5, line: 190, type: !198, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1580)
!1580 = !{!1581, !1582, !1583, !1584}
!1581 = !DILocalVariable(name: "user_context", arg: 1, scope: !1579, file: !5, line: 190, type: !82)
!1582 = !DILocalVariable(name: "buf", arg: 2, scope: !1579, file: !5, line: 190, type: !195)
!1583 = !DILocalVariable(name: "result", scope: !1579, file: !5, line: 191, type: !34)
!1584 = !DILocalVariable(name: "device_interface", scope: !1579, file: !5, line: 195, type: !187)
!1585 = !DILocation(line: 0, scope: !1579)
!1586 = !DILocation(line: 0, scope: !976, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 191, column: 18, scope: !1579)
!1588 = !DILocation(line: 64, column: 17, scope: !991, inlinedAt: !1587)
!1589 = !DILocation(line: 64, column: 9, scope: !976, inlinedAt: !1587)
!1590 = !DILocation(line: 65, column: 16, scope: !994, inlinedAt: !1587)
!1591 = !DILocation(line: 65, column: 9, scope: !994, inlinedAt: !1587)
!1592 = !DILocation(line: 0, scope: !457, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !1587)
!1594 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !1593)
!1595 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !1593)
!1596 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !1593)
!1597 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !1593)
!1598 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !1593)
!1599 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !1593)
!1600 = !DILocation(line: 0, scope: !471, inlinedAt: !1593)
!1601 = !DILocation(line: 0, scope: !474, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 69, column: 25, scope: !976, inlinedAt: !1587)
!1603 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1602)
!1604 = !DILocation(line: 0, scope: !474, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 69, column: 36, scope: !976, inlinedAt: !1587)
!1606 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1605)
!1607 = !DILocation(line: 0, scope: !1012, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 69, column: 68, scope: !976, inlinedAt: !1587)
!1609 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !1608)
!1610 = !DILocation(line: 0, scope: !474, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 69, column: 75, scope: !976, inlinedAt: !1587)
!1612 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1611)
!1613 = !DILocation(line: 0, scope: !483, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !1587)
!1615 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1614)
!1616 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1614)
!1617 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1614)
!1618 = !DILocation(line: 0, scope: !497, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1614)
!1620 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1619)
!1621 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1619)
!1622 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1619)
!1623 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1619)
!1624 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1614)
!1625 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1614)
!1626 = !DILocation(line: 71, column: 38, scope: !976, inlinedAt: !1587)
!1627 = !DILocation(line: 71, column: 55, scope: !976, inlinedAt: !1587)
!1628 = !DILocation(line: 72, column: 28, scope: !976, inlinedAt: !1587)
!1629 = !DILocation(line: 72, column: 35, scope: !976, inlinedAt: !1587)
!1630 = !DILocation(line: 73, column: 20, scope: !1039, inlinedAt: !1587)
!1631 = !DILocation(line: 74, column: 16, scope: !1041, inlinedAt: !1587)
!1632 = !DILocation(line: 74, column: 9, scope: !1041, inlinedAt: !1587)
!1633 = !DILocation(line: 76, column: 30, scope: !1044, inlinedAt: !1587)
!1634 = !DILocation(line: 77, column: 16, scope: !1046, inlinedAt: !1587)
!1635 = !DILocation(line: 77, column: 9, scope: !1046, inlinedAt: !1587)
!1636 = !DILocation(line: 0, scope: !794, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 80, column: 27, scope: !976, inlinedAt: !1587)
!1638 = !DILocation(line: 0, scope: !745, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !1637)
!1640 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1639)
!1641 = !DILocation(line: 0, scope: !745, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 81, column: 29, scope: !976, inlinedAt: !1587)
!1644 = !DILocation(line: 82, column: 20, scope: !1057, inlinedAt: !1587)
!1645 = !DILocation(line: 83, column: 16, scope: !1059, inlinedAt: !1587)
!1646 = !DILocation(line: 83, column: 9, scope: !1059, inlinedAt: !1587)
!1647 = !DILocation(line: 192, column: 16, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1579, file: !5, line: 192, column: 9)
!1649 = !DILocation(line: 192, column: 9, scope: !1579)
!1650 = !DILocation(line: 195, column: 62, scope: !1579)
!1651 = !DILocation(line: 197, column: 26, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1579, file: !5, line: 197, column: 9)
!1653 = !DILocation(line: 197, column: 9, scope: !1579)
!1654 = !DILocation(line: 198, column: 16, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !5, line: 197, column: 38)
!1656 = !DILocation(line: 198, column: 9, scope: !1655)
!1657 = !DILocation(line: 200, column: 32, scope: !1579)
!1658 = !DILocation(line: 200, column: 38, scope: !1579)
!1659 = !{!879, !553, i64 16}
!1660 = !DILocation(line: 200, column: 14, scope: !1579)
!1661 = !DILocation(line: 201, column: 9, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1579, file: !5, line: 201, column: 9)
!1663 = !DILocation(line: 201, column: 9, scope: !1579)
!1664 = !DILocation(line: 206, column: 1, scope: !1579)
!1665 = distinct !DISubprogram(name: "halide_device_free", scope: !5, file: !5, line: 239, type: !198, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1666)
!1666 = !{!1667, !1668, !1669, !1670}
!1667 = !DILocalVariable(name: "user_context", arg: 1, scope: !1665, file: !5, line: 239, type: !82)
!1668 = !DILocalVariable(name: "buf", arg: 2, scope: !1665, file: !5, line: 239, type: !195)
!1669 = !DILocalVariable(name: "result", scope: !1665, file: !5, line: 240, type: !34)
!1670 = !DILocalVariable(name: "device_interface", scope: !1665, file: !5, line: 245, type: !187)
!1671 = !DILocation(line: 0, scope: !1665)
!1672 = !DILocation(line: 0, scope: !976, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 240, column: 18, scope: !1665)
!1674 = !DILocation(line: 64, column: 17, scope: !991, inlinedAt: !1673)
!1675 = !DILocation(line: 64, column: 9, scope: !976, inlinedAt: !1673)
!1676 = !DILocation(line: 65, column: 16, scope: !994, inlinedAt: !1673)
!1677 = !DILocation(line: 65, column: 9, scope: !994, inlinedAt: !1673)
!1678 = !DILocation(line: 0, scope: !457, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !1673)
!1680 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !1679)
!1681 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !1679)
!1682 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !1679)
!1683 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !1679)
!1684 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !1679)
!1685 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !1679)
!1686 = !DILocation(line: 0, scope: !471, inlinedAt: !1679)
!1687 = !DILocation(line: 0, scope: !474, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 69, column: 25, scope: !976, inlinedAt: !1673)
!1689 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1688)
!1690 = !DILocation(line: 0, scope: !474, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 69, column: 36, scope: !976, inlinedAt: !1673)
!1692 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1691)
!1693 = !DILocation(line: 0, scope: !1012, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 69, column: 68, scope: !976, inlinedAt: !1673)
!1695 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !1694)
!1696 = !DILocation(line: 0, scope: !474, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 69, column: 75, scope: !976, inlinedAt: !1673)
!1698 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1697)
!1699 = !DILocation(line: 0, scope: !483, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !1673)
!1701 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1700)
!1702 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1700)
!1703 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1700)
!1704 = !DILocation(line: 0, scope: !497, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1700)
!1706 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1705)
!1707 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1705)
!1708 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1705)
!1709 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1705)
!1710 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1700)
!1711 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1700)
!1712 = !DILocation(line: 71, column: 38, scope: !976, inlinedAt: !1673)
!1713 = !DILocation(line: 71, column: 55, scope: !976, inlinedAt: !1673)
!1714 = !DILocation(line: 72, column: 28, scope: !976, inlinedAt: !1673)
!1715 = !DILocation(line: 72, column: 35, scope: !976, inlinedAt: !1673)
!1716 = !DILocation(line: 73, column: 20, scope: !1039, inlinedAt: !1673)
!1717 = !DILocation(line: 74, column: 16, scope: !1041, inlinedAt: !1673)
!1718 = !DILocation(line: 74, column: 9, scope: !1041, inlinedAt: !1673)
!1719 = !DILocation(line: 76, column: 30, scope: !1044, inlinedAt: !1673)
!1720 = !DILocation(line: 77, column: 16, scope: !1046, inlinedAt: !1673)
!1721 = !DILocation(line: 77, column: 9, scope: !1046, inlinedAt: !1673)
!1722 = !DILocation(line: 0, scope: !794, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 80, column: 27, scope: !976, inlinedAt: !1673)
!1724 = !DILocation(line: 0, scope: !745, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !1723)
!1726 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1725)
!1727 = !DILocation(line: 0, scope: !745, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 81, column: 29, scope: !976, inlinedAt: !1673)
!1730 = !DILocation(line: 82, column: 20, scope: !1057, inlinedAt: !1673)
!1731 = !DILocation(line: 83, column: 16, scope: !1059, inlinedAt: !1673)
!1732 = !DILocation(line: 83, column: 9, scope: !1059, inlinedAt: !1673)
!1733 = !DILocation(line: 241, column: 16, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1665, file: !5, line: 241, column: 9)
!1735 = !DILocation(line: 241, column: 9, scope: !1665)
!1736 = !DILocation(line: 245, column: 62, scope: !1665)
!1737 = !DILocation(line: 246, column: 26, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1665, file: !5, line: 246, column: 9)
!1739 = !DILocation(line: 246, column: 9, scope: !1665)
!1740 = !DILocation(line: 249, column: 27, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1738, file: !5, line: 246, column: 38)
!1742 = !DILocation(line: 249, column: 33, scope: !1741)
!1743 = !DILocation(line: 249, column: 9, scope: !1741)
!1744 = !DILocation(line: 250, column: 36, scope: !1741)
!1745 = !DILocation(line: 250, column: 42, scope: !1741)
!1746 = !{!879, !553, i64 12}
!1747 = !DILocation(line: 250, column: 18, scope: !1741)
!1748 = !DILocation(line: 251, column: 27, scope: !1741)
!1749 = !DILocation(line: 251, column: 33, scope: !1741)
!1750 = !DILocation(line: 251, column: 9, scope: !1741)
!1751 = !DILocation(line: 252, column: 9, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !5, line: 252, column: 9)
!1753 = distinct !DILexicalBlock(scope: !1741, file: !5, line: 252, column: 9)
!1754 = !DILocation(line: 252, column: 9, scope: !1753)
!1755 = !DILocation(line: 252, column: 9, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !5, line: 252, column: 9)
!1757 = !DILocation(line: 253, column: 13, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1741, file: !5, line: 253, column: 13)
!1759 = !DILocation(line: 253, column: 13, scope: !1741)
!1760 = !DILocation(line: 0, scope: !918, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 259, column: 10, scope: !1665)
!1762 = !DILocation(line: 0, scope: !924, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 1479, column: 9, scope: !918, inlinedAt: !1761)
!1764 = !DILocation(line: 1462, column: 13, scope: !931, inlinedAt: !1763)
!1765 = !DILocation(line: 1462, column: 19, scope: !931, inlinedAt: !1763)
!1766 = !DILocation(line: 260, column: 5, scope: !1665)
!1767 = !DILocation(line: 261, column: 1, scope: !1665)
!1768 = !DISubprogram(name: "halide_print", scope: !7, file: !7, line: 97, type: !1435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!1769 = !DISubprogram(name: "abort", scope: !12, file: !12, line: 108, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!1770 = distinct !DISubprogram(name: "halide_device_free_as_destructor", scope: !5, file: !5, line: 265, type: !1771, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1773)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !82, !82}
!1773 = !{!1774, !1775, !1776}
!1774 = !DILocalVariable(name: "user_context", arg: 1, scope: !1770, file: !5, line: 265, type: !82)
!1775 = !DILocalVariable(name: "obj", arg: 2, scope: !1770, file: !5, line: 265, type: !82)
!1776 = !DILocalVariable(name: "buf", scope: !1770, file: !5, line: 266, type: !195)
!1777 = !DILocation(line: 0, scope: !1770)
!1778 = !DILocation(line: 266, column: 35, scope: !1770)
!1779 = !DILocation(line: 267, column: 5, scope: !1770)
!1780 = !DILocation(line: 268, column: 1, scope: !1770)
!1781 = distinct !DISubprogram(name: "halide_device_and_host_malloc", scope: !5, file: !5, line: 274, type: !193, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1782)
!1782 = !{!1783, !1784, !1785, !1786, !1787}
!1783 = !DILocalVariable(name: "user_context", arg: 1, scope: !1781, file: !5, line: 274, type: !82)
!1784 = !DILocalVariable(name: "buf", arg: 2, scope: !1781, file: !5, line: 274, type: !195)
!1785 = !DILocalVariable(name: "device_interface", arg: 3, scope: !1781, file: !5, line: 275, type: !187)
!1786 = !DILocalVariable(name: "result", scope: !1781, file: !5, line: 276, type: !34)
!1787 = !DILocalVariable(name: "current_interface", scope: !1781, file: !5, line: 282, type: !187)
!1788 = !DILocation(line: 0, scope: !1781)
!1789 = !DILocation(line: 0, scope: !976, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 276, column: 18, scope: !1781)
!1791 = !DILocation(line: 64, column: 17, scope: !991, inlinedAt: !1790)
!1792 = !DILocation(line: 64, column: 9, scope: !976, inlinedAt: !1790)
!1793 = !DILocation(line: 65, column: 16, scope: !994, inlinedAt: !1790)
!1794 = !DILocation(line: 65, column: 9, scope: !994, inlinedAt: !1790)
!1795 = !DILocation(line: 0, scope: !457, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !1790)
!1797 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !1796)
!1798 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !1796)
!1799 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !1796)
!1800 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !1796)
!1801 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !1796)
!1802 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !1796)
!1803 = !DILocation(line: 0, scope: !471, inlinedAt: !1796)
!1804 = !DILocation(line: 0, scope: !474, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 69, column: 25, scope: !976, inlinedAt: !1790)
!1806 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1805)
!1807 = !DILocation(line: 0, scope: !474, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 69, column: 36, scope: !976, inlinedAt: !1790)
!1809 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1808)
!1810 = !DILocation(line: 0, scope: !1012, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 69, column: 68, scope: !976, inlinedAt: !1790)
!1812 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !1811)
!1813 = !DILocation(line: 0, scope: !474, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 69, column: 75, scope: !976, inlinedAt: !1790)
!1815 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1814)
!1816 = !DILocation(line: 0, scope: !483, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !1790)
!1818 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1817)
!1819 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1817)
!1820 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1817)
!1821 = !DILocation(line: 0, scope: !497, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1817)
!1823 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1822)
!1824 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1822)
!1825 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1822)
!1826 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1822)
!1827 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1817)
!1828 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1817)
!1829 = !DILocation(line: 71, column: 38, scope: !976, inlinedAt: !1790)
!1830 = !DILocation(line: 71, column: 55, scope: !976, inlinedAt: !1790)
!1831 = !DILocation(line: 72, column: 28, scope: !976, inlinedAt: !1790)
!1832 = !DILocation(line: 72, column: 35, scope: !976, inlinedAt: !1790)
!1833 = !DILocation(line: 73, column: 20, scope: !1039, inlinedAt: !1790)
!1834 = !DILocation(line: 74, column: 16, scope: !1041, inlinedAt: !1790)
!1835 = !DILocation(line: 74, column: 9, scope: !1041, inlinedAt: !1790)
!1836 = !DILocation(line: 76, column: 30, scope: !1044, inlinedAt: !1790)
!1837 = !DILocation(line: 77, column: 16, scope: !1046, inlinedAt: !1790)
!1838 = !DILocation(line: 77, column: 9, scope: !1046, inlinedAt: !1790)
!1839 = !DILocation(line: 0, scope: !794, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 80, column: 27, scope: !976, inlinedAt: !1790)
!1841 = !DILocation(line: 0, scope: !745, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !1840)
!1843 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1842)
!1844 = !DILocation(line: 0, scope: !745, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 81, column: 29, scope: !976, inlinedAt: !1790)
!1847 = !DILocation(line: 82, column: 20, scope: !1057, inlinedAt: !1790)
!1848 = !DILocation(line: 83, column: 16, scope: !1059, inlinedAt: !1790)
!1849 = !DILocation(line: 83, column: 9, scope: !1059, inlinedAt: !1790)
!1850 = !DILocation(line: 277, column: 16, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1781, file: !5, line: 277, column: 9)
!1852 = !DILocation(line: 277, column: 9, scope: !1781)
!1853 = !DILocation(line: 0, scope: !457, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 280, column: 5, scope: !1781)
!1855 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !1854)
!1856 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !1854)
!1857 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !1854)
!1858 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !1854)
!1859 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !1854)
!1860 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !1854)
!1861 = !DILocation(line: 0, scope: !471, inlinedAt: !1854)
!1862 = !DILocation(line: 0, scope: !474, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 280, column: 25, scope: !1781)
!1864 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1863)
!1865 = !DILocation(line: 280, column: 89, scope: !1781)
!1866 = !DILocation(line: 0, scope: !769, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 280, column: 86, scope: !1781)
!1868 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !1867)
!1869 = !DILocation(line: 0, scope: !474, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 280, column: 106, scope: !1781)
!1871 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1870)
!1872 = !DILocation(line: 0, scope: !483, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 280, column: 5, scope: !1781)
!1874 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1873)
!1875 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1873)
!1876 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1873)
!1877 = !DILocation(line: 0, scope: !497, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1873)
!1879 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1878)
!1880 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1878)
!1881 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1878)
!1882 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1878)
!1883 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1873)
!1884 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1873)
!1885 = !DILocation(line: 282, column: 63, scope: !1781)
!1886 = !DILocation(line: 285, column: 27, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1781, file: !5, line: 285, column: 9)
!1888 = !DILocation(line: 285, column: 38, scope: !1887)
!1889 = !DILocation(line: 286, column: 9, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1887, file: !5, line: 285, column: 80)
!1891 = !DILocation(line: 287, column: 9, scope: !1890)
!1892 = !DILocation(line: 292, column: 23, scope: !1781)
!1893 = !DILocation(line: 292, column: 29, scope: !1781)
!1894 = !DILocation(line: 292, column: 5, scope: !1781)
!1895 = !DILocation(line: 293, column: 32, scope: !1781)
!1896 = !DILocation(line: 293, column: 38, scope: !1781)
!1897 = !{!879, !553, i64 32}
!1898 = !DILocation(line: 293, column: 14, scope: !1781)
!1899 = !DILocation(line: 294, column: 23, scope: !1781)
!1900 = !DILocation(line: 294, column: 29, scope: !1781)
!1901 = !DILocation(line: 294, column: 5, scope: !1781)
!1902 = !DILocation(line: 296, column: 16, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1781, file: !5, line: 296, column: 9)
!1904 = !DILocation(line: 296, column: 9, scope: !1781)
!1905 = !DILocation(line: 297, column: 9, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1903, file: !5, line: 296, column: 22)
!1907 = !DILocation(line: 298, column: 9, scope: !1906)
!1908 = !DILocation(line: 301, column: 1, scope: !1781)
!1909 = distinct !DISubprogram(name: "halide_device_and_host_free", scope: !5, file: !5, line: 304, type: !198, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1910)
!1910 = !{!1911, !1912, !1913, !1914}
!1911 = !DILocalVariable(name: "user_context", arg: 1, scope: !1909, file: !5, line: 304, type: !82)
!1912 = !DILocalVariable(name: "buf", arg: 2, scope: !1909, file: !5, line: 304, type: !195)
!1913 = !DILocalVariable(name: "result", scope: !1909, file: !5, line: 305, type: !34)
!1914 = !DILocalVariable(name: "device_interface", scope: !1909, file: !5, line: 310, type: !187)
!1915 = !DILocation(line: 0, scope: !1909)
!1916 = !DILocation(line: 0, scope: !976, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 305, column: 18, scope: !1909)
!1918 = !DILocation(line: 64, column: 17, scope: !991, inlinedAt: !1917)
!1919 = !DILocation(line: 64, column: 9, scope: !976, inlinedAt: !1917)
!1920 = !DILocation(line: 65, column: 16, scope: !994, inlinedAt: !1917)
!1921 = !DILocation(line: 65, column: 9, scope: !994, inlinedAt: !1917)
!1922 = !DILocation(line: 0, scope: !457, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !1917)
!1924 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !1923)
!1925 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !1923)
!1926 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !1923)
!1927 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !1923)
!1928 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !1923)
!1929 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !1923)
!1930 = !DILocation(line: 0, scope: !471, inlinedAt: !1923)
!1931 = !DILocation(line: 0, scope: !474, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 69, column: 25, scope: !976, inlinedAt: !1917)
!1933 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1932)
!1934 = !DILocation(line: 0, scope: !474, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 69, column: 36, scope: !976, inlinedAt: !1917)
!1936 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1935)
!1937 = !DILocation(line: 0, scope: !1012, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 69, column: 68, scope: !976, inlinedAt: !1917)
!1939 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !1938)
!1940 = !DILocation(line: 0, scope: !474, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 69, column: 75, scope: !976, inlinedAt: !1917)
!1942 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !1941)
!1943 = !DILocation(line: 0, scope: !483, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !1917)
!1945 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !1944)
!1946 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !1944)
!1947 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !1944)
!1948 = !DILocation(line: 0, scope: !497, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !1944)
!1950 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !1949)
!1951 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !1949)
!1952 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !1949)
!1953 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !1949)
!1954 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !1944)
!1955 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !1944)
!1956 = !DILocation(line: 71, column: 38, scope: !976, inlinedAt: !1917)
!1957 = !DILocation(line: 71, column: 55, scope: !976, inlinedAt: !1917)
!1958 = !DILocation(line: 72, column: 28, scope: !976, inlinedAt: !1917)
!1959 = !DILocation(line: 72, column: 35, scope: !976, inlinedAt: !1917)
!1960 = !DILocation(line: 73, column: 20, scope: !1039, inlinedAt: !1917)
!1961 = !DILocation(line: 74, column: 16, scope: !1041, inlinedAt: !1917)
!1962 = !DILocation(line: 74, column: 9, scope: !1041, inlinedAt: !1917)
!1963 = !DILocation(line: 76, column: 30, scope: !1044, inlinedAt: !1917)
!1964 = !DILocation(line: 77, column: 16, scope: !1046, inlinedAt: !1917)
!1965 = !DILocation(line: 77, column: 9, scope: !1046, inlinedAt: !1917)
!1966 = !DILocation(line: 0, scope: !794, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 80, column: 27, scope: !976, inlinedAt: !1917)
!1968 = !DILocation(line: 0, scope: !745, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !1967)
!1970 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !1969)
!1971 = !DILocation(line: 0, scope: !745, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 81, column: 29, scope: !976, inlinedAt: !1917)
!1974 = !DILocation(line: 82, column: 20, scope: !1057, inlinedAt: !1917)
!1975 = !DILocation(line: 83, column: 16, scope: !1059, inlinedAt: !1917)
!1976 = !DILocation(line: 83, column: 9, scope: !1059, inlinedAt: !1917)
!1977 = !DILocation(line: 306, column: 16, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1909, file: !5, line: 306, column: 9)
!1979 = !DILocation(line: 306, column: 9, scope: !1909)
!1980 = !DILocation(line: 310, column: 62, scope: !1909)
!1981 = !DILocation(line: 311, column: 26, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1909, file: !5, line: 311, column: 9)
!1983 = !DILocation(line: 311, column: 9, scope: !1909)
!1984 = !DILocation(line: 314, column: 27, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1982, file: !5, line: 311, column: 38)
!1986 = !DILocation(line: 314, column: 33, scope: !1985)
!1987 = !DILocation(line: 314, column: 9, scope: !1985)
!1988 = !DILocation(line: 315, column: 36, scope: !1985)
!1989 = !DILocation(line: 315, column: 42, scope: !1985)
!1990 = !{!879, !553, i64 36}
!1991 = !DILocation(line: 315, column: 18, scope: !1985)
!1992 = !DILocation(line: 316, column: 27, scope: !1985)
!1993 = !DILocation(line: 316, column: 33, scope: !1985)
!1994 = !DILocation(line: 316, column: 9, scope: !1985)
!1995 = !DILocation(line: 317, column: 9, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !5, line: 317, column: 9)
!1997 = distinct !DILexicalBlock(scope: !1985, file: !5, line: 317, column: 9)
!1998 = !DILocation(line: 317, column: 9, scope: !1997)
!1999 = !DILocation(line: 317, column: 9, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1996, file: !5, line: 317, column: 9)
!2001 = !DILocation(line: 318, column: 13, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1985, file: !5, line: 318, column: 13)
!2003 = !DILocation(line: 318, column: 13, scope: !1985)
!2004 = !DILocation(line: 323, column: 21, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1982, file: !5, line: 323, column: 16)
!2006 = !DILocation(line: 323, column: 16, scope: !2005)
!2007 = !DILocation(line: 323, column: 16, scope: !1982)
!2008 = !DILocation(line: 327, column: 9, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2005, file: !5, line: 323, column: 27)
!2010 = !DILocation(line: 328, column: 19, scope: !2009)
!2011 = !DILocation(line: 329, column: 5, scope: !2009)
!2012 = !DILocation(line: 0, scope: !918, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 330, column: 10, scope: !1909)
!2014 = !DILocation(line: 0, scope: !924, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 1479, column: 9, scope: !918, inlinedAt: !2013)
!2016 = !DILocation(line: 1462, column: 13, scope: !931, inlinedAt: !2015)
!2017 = !DILocation(line: 1462, column: 19, scope: !931, inlinedAt: !2015)
!2018 = !DILocation(line: 331, column: 5, scope: !1909)
!2019 = !DILocation(line: 332, column: 1, scope: !1909)
!2020 = !DISubprogram(name: "halide_free", scope: !7, file: !7, line: 355, type: !1771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!2021 = distinct !DISubprogram(name: "halide_default_device_and_host_malloc", scope: !5, file: !5, line: 334, type: !193, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2022)
!2022 = !{!2023, !2024, !2025, !2026, !2027}
!2023 = !DILocalVariable(name: "user_context", arg: 1, scope: !2021, file: !5, line: 334, type: !82)
!2024 = !DILocalVariable(name: "buf", arg: 2, scope: !2021, file: !5, line: 334, type: !195)
!2025 = !DILocalVariable(name: "device_interface", arg: 3, scope: !2021, file: !5, line: 335, type: !187)
!2026 = !DILocalVariable(name: "result", scope: !2021, file: !5, line: 336, type: !34)
!2027 = !DILocalVariable(name: "size", scope: !2021, file: !5, line: 340, type: !314)
!2028 = !DILocation(line: 0, scope: !2021)
!2029 = !DILocation(line: 0, scope: !976, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 336, column: 18, scope: !2021)
!2031 = !DILocation(line: 64, column: 17, scope: !991, inlinedAt: !2030)
!2032 = !DILocation(line: 64, column: 9, scope: !976, inlinedAt: !2030)
!2033 = !DILocation(line: 65, column: 16, scope: !994, inlinedAt: !2030)
!2034 = !DILocation(line: 65, column: 9, scope: !994, inlinedAt: !2030)
!2035 = !DILocation(line: 0, scope: !457, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !2030)
!2037 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !2036)
!2038 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !2036)
!2039 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !2036)
!2040 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !2036)
!2041 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !2036)
!2042 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !2036)
!2043 = !DILocation(line: 0, scope: !471, inlinedAt: !2036)
!2044 = !DILocation(line: 0, scope: !474, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 69, column: 25, scope: !976, inlinedAt: !2030)
!2046 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2045)
!2047 = !DILocation(line: 0, scope: !474, inlinedAt: !2048)
!2048 = distinct !DILocation(line: 69, column: 36, scope: !976, inlinedAt: !2030)
!2049 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2048)
!2050 = !DILocation(line: 0, scope: !1012, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 69, column: 68, scope: !976, inlinedAt: !2030)
!2052 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !2051)
!2053 = !DILocation(line: 0, scope: !474, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 69, column: 75, scope: !976, inlinedAt: !2030)
!2055 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2054)
!2056 = !DILocation(line: 0, scope: !483, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !2030)
!2058 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !2057)
!2059 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !2057)
!2060 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !2057)
!2061 = !DILocation(line: 0, scope: !497, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !2057)
!2063 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !2062)
!2064 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !2062)
!2065 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !2062)
!2066 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !2062)
!2067 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2057)
!2068 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2057)
!2069 = !DILocation(line: 71, column: 38, scope: !976, inlinedAt: !2030)
!2070 = !DILocation(line: 71, column: 55, scope: !976, inlinedAt: !2030)
!2071 = !DILocation(line: 72, column: 28, scope: !976, inlinedAt: !2030)
!2072 = !DILocation(line: 72, column: 35, scope: !976, inlinedAt: !2030)
!2073 = !DILocation(line: 73, column: 20, scope: !1039, inlinedAt: !2030)
!2074 = !DILocation(line: 74, column: 16, scope: !1041, inlinedAt: !2030)
!2075 = !DILocation(line: 74, column: 9, scope: !1041, inlinedAt: !2030)
!2076 = !DILocation(line: 76, column: 30, scope: !1044, inlinedAt: !2030)
!2077 = !DILocation(line: 77, column: 16, scope: !1046, inlinedAt: !2030)
!2078 = !DILocation(line: 77, column: 9, scope: !1046, inlinedAt: !2030)
!2079 = !DILocation(line: 0, scope: !794, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 80, column: 27, scope: !976, inlinedAt: !2030)
!2081 = !DILocation(line: 0, scope: !745, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !2080)
!2083 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2082)
!2084 = !DILocation(line: 0, scope: !745, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 81, column: 29, scope: !976, inlinedAt: !2030)
!2087 = !DILocation(line: 82, column: 20, scope: !1057, inlinedAt: !2030)
!2088 = !DILocation(line: 83, column: 16, scope: !1059, inlinedAt: !2030)
!2089 = !DILocation(line: 83, column: 9, scope: !1059, inlinedAt: !2030)
!2090 = !DILocation(line: 337, column: 16, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2021, file: !5, line: 337, column: 9)
!2092 = !DILocation(line: 337, column: 9, scope: !2021)
!2093 = !DILocalVariable(name: "this", arg: 1, scope: !2094, type: !217, flags: DIFlagArtificial | DIFlagObjectPointer)
!2094 = distinct !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !183, file: !7, line: 1518, type: !312, scopeLine: 1518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !319, retainedNodes: !2095)
!2095 = !{!2093}
!2096 = !DILocation(line: 0, scope: !2094, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 340, column: 24, scope: !2021)
!2098 = !DILocalVariable(name: "this", arg: 1, scope: !2099, type: !217, flags: DIFlagArtificial | DIFlagObjectPointer)
!2099 = distinct !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !183, file: !7, line: 1506, type: !316, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !318, retainedNodes: !2100)
!2100 = !{!2098, !2101, !2102}
!2101 = !DILocalVariable(name: "index", scope: !2099, file: !7, line: 1507, type: !350)
!2102 = !DILocalVariable(name: "i", scope: !2103, file: !7, line: 1508, type: !34)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !7, line: 1508, column: 9)
!2104 = !DILocation(line: 0, scope: !2099, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 1519, column: 25, scope: !2094, inlinedAt: !2097)
!2106 = !DILocation(line: 0, scope: !2103, inlinedAt: !2105)
!2107 = !DILocation(line: 1508, column: 29, scope: !2108, inlinedAt: !2105)
!2108 = distinct !DILexicalBlock(scope: !2103, file: !7, line: 1508, column: 9)
!2109 = !DILocation(line: 1508, column: 27, scope: !2108, inlinedAt: !2105)
!2110 = !DILocation(line: 1508, column: 9, scope: !2103, inlinedAt: !2105)
!2111 = !DILocation(line: 0, scope: !570, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 1514, column: 36, scope: !2099, inlinedAt: !2105)
!2113 = !DILocation(line: 482, column: 17, scope: !570, inlinedAt: !2112)
!2114 = !DILocalVariable(name: "this", arg: 1, scope: !2115, type: !217, flags: DIFlagArtificial | DIFlagObjectPointer)
!2115 = distinct !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !183, file: !7, line: 1495, type: !316, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !315, retainedNodes: !2116)
!2116 = !{!2114, !2117, !2118}
!2117 = !DILocalVariable(name: "index", scope: !2115, file: !7, line: 1496, type: !350)
!2118 = !DILocalVariable(name: "i", scope: !2119, file: !7, line: 1497, type: !34)
!2119 = distinct !DILexicalBlock(scope: !2115, file: !7, line: 1497, column: 9)
!2120 = !DILocation(line: 0, scope: !2115, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 1519, column: 33, scope: !2094, inlinedAt: !2097)
!2122 = !DILocation(line: 0, scope: !2119, inlinedAt: !2121)
!2123 = !DILocation(line: 1497, column: 9, scope: !2119, inlinedAt: !2121)
!2124 = !DILocation(line: 1509, column: 24, scope: !2125, inlinedAt: !2105)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !7, line: 1509, column: 17)
!2126 = distinct !DILexicalBlock(scope: !2108, file: !7, line: 1508, column: 46)
!2127 = !DILocation(line: 1509, column: 31, scope: !2125, inlinedAt: !2105)
!2128 = !DILocation(line: 1509, column: 17, scope: !2126, inlinedAt: !2105)
!2129 = !DILocation(line: 1510, column: 61, scope: !2130, inlinedAt: !2105)
!2130 = distinct !DILexicalBlock(scope: !2125, file: !7, line: 1509, column: 36)
!2131 = !DILocation(line: 1510, column: 68, scope: !2130, inlinedAt: !2105)
!2132 = !DILocation(line: 1510, column: 51, scope: !2130, inlinedAt: !2105)
!2133 = !DILocation(line: 1510, column: 23, scope: !2130, inlinedAt: !2105)
!2134 = !DILocation(line: 1511, column: 13, scope: !2130, inlinedAt: !2105)
!2135 = !DILocation(line: 1508, column: 42, scope: !2108, inlinedAt: !2105)
!2136 = distinct !{!2136, !2110, !2137, !402}
!2137 = !DILocation(line: 1512, column: 9, scope: !2103, inlinedAt: !2105)
!2138 = !DILocation(line: 1498, column: 24, scope: !2139, inlinedAt: !2121)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !7, line: 1498, column: 17)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !7, line: 1497, column: 46)
!2141 = distinct !DILexicalBlock(scope: !2119, file: !7, line: 1497, column: 9)
!2142 = !DILocation(line: 1498, column: 31, scope: !2139, inlinedAt: !2121)
!2143 = !DILocation(line: 1498, column: 17, scope: !2140, inlinedAt: !2121)
!2144 = !DILocation(line: 1499, column: 61, scope: !2145, inlinedAt: !2121)
!2145 = distinct !DILexicalBlock(scope: !2139, file: !7, line: 1498, column: 36)
!2146 = !DILocation(line: 1499, column: 68, scope: !2145, inlinedAt: !2121)
!2147 = !DILocation(line: 1499, column: 51, scope: !2145, inlinedAt: !2121)
!2148 = !DILocation(line: 1499, column: 23, scope: !2145, inlinedAt: !2121)
!2149 = !DILocation(line: 1500, column: 13, scope: !2145, inlinedAt: !2121)
!2150 = !DILocation(line: 1497, column: 42, scope: !2141, inlinedAt: !2121)
!2151 = !DILocation(line: 1497, column: 27, scope: !2141, inlinedAt: !2121)
!2152 = distinct !{!2152, !2123, !2153, !402}
!2153 = !DILocation(line: 1501, column: 9, scope: !2119, inlinedAt: !2121)
!2154 = !DILocation(line: 482, column: 22, scope: !570, inlinedAt: !2112)
!2155 = !DILocation(line: 482, column: 27, scope: !570, inlinedAt: !2112)
!2156 = !DILocation(line: 1513, column: 15, scope: !2099, inlinedAt: !2105)
!2157 = !DILocation(line: 0, scope: !570, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 1502, column: 36, scope: !2115, inlinedAt: !2121)
!2159 = !DILocation(line: 1519, column: 31, scope: !2094, inlinedAt: !2097)
!2160 = !DILocation(line: 341, column: 28, scope: !2021)
!2161 = !DILocation(line: 341, column: 10, scope: !2021)
!2162 = !DILocation(line: 341, column: 15, scope: !2021)
!2163 = !DILocation(line: 342, column: 19, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2021, file: !5, line: 342, column: 9)
!2165 = !DILocation(line: 342, column: 9, scope: !2021)
!2166 = !DILocation(line: 345, column: 14, scope: !2021)
!2167 = !DILocation(line: 346, column: 16, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2021, file: !5, line: 346, column: 9)
!2169 = !DILocation(line: 346, column: 9, scope: !2021)
!2170 = !DILocation(line: 347, column: 40, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2168, file: !5, line: 346, column: 22)
!2172 = !DILocation(line: 347, column: 9, scope: !2171)
!2173 = !DILocation(line: 348, column: 19, scope: !2171)
!2174 = !DILocation(line: 349, column: 5, scope: !2171)
!2175 = !DILocation(line: 351, column: 1, scope: !2021)
!2176 = !DISubprogram(name: "halide_malloc", scope: !7, file: !7, line: 354, type: !2177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!82, !82, !14}
!2179 = distinct !DISubprogram(name: "halide_default_device_and_host_free", scope: !5, file: !5, line: 353, type: !193, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2180)
!2180 = !{!2181, !2182, !2183, !2184}
!2181 = !DILocalVariable(name: "user_context", arg: 1, scope: !2179, file: !5, line: 353, type: !82)
!2182 = !DILocalVariable(name: "buf", arg: 2, scope: !2179, file: !5, line: 353, type: !195)
!2183 = !DILocalVariable(name: "device_interface", arg: 3, scope: !2179, file: !5, line: 354, type: !187)
!2184 = !DILocalVariable(name: "result", scope: !2179, file: !5, line: 355, type: !34)
!2185 = !DILocation(line: 0, scope: !2179)
!2186 = !DILocation(line: 0, scope: !976, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 355, column: 18, scope: !2179)
!2188 = !DILocation(line: 64, column: 17, scope: !991, inlinedAt: !2187)
!2189 = !DILocation(line: 64, column: 9, scope: !976, inlinedAt: !2187)
!2190 = !DILocation(line: 65, column: 16, scope: !994, inlinedAt: !2187)
!2191 = !DILocation(line: 65, column: 9, scope: !994, inlinedAt: !2187)
!2192 = !DILocation(line: 0, scope: !457, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !2187)
!2194 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !2193)
!2195 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !2193)
!2196 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !2193)
!2197 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !2193)
!2198 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !2193)
!2199 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !2193)
!2200 = !DILocation(line: 0, scope: !471, inlinedAt: !2193)
!2201 = !DILocation(line: 0, scope: !474, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 69, column: 25, scope: !976, inlinedAt: !2187)
!2203 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2202)
!2204 = !DILocation(line: 0, scope: !474, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 69, column: 36, scope: !976, inlinedAt: !2187)
!2206 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2205)
!2207 = !DILocation(line: 0, scope: !1012, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 69, column: 68, scope: !976, inlinedAt: !2187)
!2209 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !2208)
!2210 = !DILocation(line: 0, scope: !474, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 69, column: 75, scope: !976, inlinedAt: !2187)
!2212 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2211)
!2213 = !DILocation(line: 0, scope: !483, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !2187)
!2215 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !2214)
!2216 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !2214)
!2217 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !2214)
!2218 = !DILocation(line: 0, scope: !497, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !2214)
!2220 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !2219)
!2221 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !2219)
!2222 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !2219)
!2223 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !2219)
!2224 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2214)
!2225 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2214)
!2226 = !DILocation(line: 71, column: 38, scope: !976, inlinedAt: !2187)
!2227 = !DILocation(line: 71, column: 55, scope: !976, inlinedAt: !2187)
!2228 = !DILocation(line: 72, column: 28, scope: !976, inlinedAt: !2187)
!2229 = !DILocation(line: 72, column: 35, scope: !976, inlinedAt: !2187)
!2230 = !DILocation(line: 73, column: 20, scope: !1039, inlinedAt: !2187)
!2231 = !DILocation(line: 74, column: 16, scope: !1041, inlinedAt: !2187)
!2232 = !DILocation(line: 74, column: 9, scope: !1041, inlinedAt: !2187)
!2233 = !DILocation(line: 76, column: 30, scope: !1044, inlinedAt: !2187)
!2234 = !DILocation(line: 77, column: 16, scope: !1046, inlinedAt: !2187)
!2235 = !DILocation(line: 77, column: 9, scope: !1046, inlinedAt: !2187)
!2236 = !DILocation(line: 0, scope: !794, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 80, column: 27, scope: !976, inlinedAt: !2187)
!2238 = !DILocation(line: 0, scope: !745, inlinedAt: !2239)
!2239 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !2237)
!2240 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2239)
!2241 = !DILocation(line: 0, scope: !745, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 81, column: 29, scope: !976, inlinedAt: !2187)
!2244 = !DILocation(line: 82, column: 20, scope: !1057, inlinedAt: !2187)
!2245 = !DILocation(line: 83, column: 16, scope: !1059, inlinedAt: !2187)
!2246 = !DILocation(line: 83, column: 9, scope: !1059, inlinedAt: !2187)
!2247 = !DILocation(line: 356, column: 16, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2179, file: !5, line: 356, column: 9)
!2249 = !DILocation(line: 356, column: 9, scope: !2179)
!2250 = !DILocation(line: 359, column: 14, scope: !2179)
!2251 = !DILocation(line: 360, column: 14, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2179, file: !5, line: 360, column: 9)
!2253 = !DILocation(line: 360, column: 9, scope: !2252)
!2254 = !DILocation(line: 360, column: 9, scope: !2179)
!2255 = !DILocation(line: 361, column: 9, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !5, line: 360, column: 20)
!2257 = !DILocation(line: 362, column: 19, scope: !2256)
!2258 = !DILocation(line: 363, column: 5, scope: !2256)
!2259 = !DILocation(line: 0, scope: !1361, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 364, column: 10, scope: !2179)
!2261 = !DILocation(line: 0, scope: !924, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 1475, column: 9, scope: !1361, inlinedAt: !2260)
!2263 = !DILocation(line: 1462, column: 13, scope: !931, inlinedAt: !2262)
!2264 = !DILocation(line: 1462, column: 19, scope: !931, inlinedAt: !2262)
!2265 = !DILocation(line: 0, scope: !918, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 365, column: 10, scope: !2179)
!2267 = !DILocation(line: 0, scope: !924, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 1479, column: 9, scope: !918, inlinedAt: !2266)
!2269 = !DILocation(line: 1462, column: 19, scope: !931, inlinedAt: !2268)
!2270 = !DILocation(line: 366, column: 5, scope: !2179)
!2271 = !DILocation(line: 367, column: 1, scope: !2179)
!2272 = distinct !DISubprogram(name: "halide_device_wrap_native", scope: !5, file: !5, line: 369, type: !226, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2273)
!2273 = !{!2274, !2275, !2276, !2277, !2278, !2279}
!2274 = !DILocalVariable(name: "user_context", arg: 1, scope: !2272, file: !5, line: 369, type: !82)
!2275 = !DILocalVariable(name: "buf", arg: 2, scope: !2272, file: !5, line: 369, type: !195)
!2276 = !DILocalVariable(name: "handle", arg: 3, scope: !2272, file: !5, line: 369, type: !120)
!2277 = !DILocalVariable(name: "device_interface", arg: 4, scope: !2272, file: !5, line: 370, type: !187)
!2278 = !DILocalVariable(name: "result", scope: !2272, file: !5, line: 371, type: !34)
!2279 = !DILocalVariable(name: "current_interface", scope: !2272, file: !5, line: 375, type: !187)
!2280 = !DILocation(line: 0, scope: !2272)
!2281 = !DILocation(line: 0, scope: !976, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 371, column: 18, scope: !2272)
!2283 = !DILocation(line: 64, column: 17, scope: !991, inlinedAt: !2282)
!2284 = !DILocation(line: 64, column: 9, scope: !976, inlinedAt: !2282)
!2285 = !DILocation(line: 65, column: 16, scope: !994, inlinedAt: !2282)
!2286 = !DILocation(line: 65, column: 9, scope: !994, inlinedAt: !2282)
!2287 = !DILocation(line: 0, scope: !457, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !2282)
!2289 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !2288)
!2290 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !2288)
!2291 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !2288)
!2292 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !2288)
!2293 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !2288)
!2294 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !2288)
!2295 = !DILocation(line: 0, scope: !471, inlinedAt: !2288)
!2296 = !DILocation(line: 0, scope: !474, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 69, column: 25, scope: !976, inlinedAt: !2282)
!2298 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2297)
!2299 = !DILocation(line: 0, scope: !474, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 69, column: 36, scope: !976, inlinedAt: !2282)
!2301 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2300)
!2302 = !DILocation(line: 0, scope: !1012, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 69, column: 68, scope: !976, inlinedAt: !2282)
!2304 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !2303)
!2305 = !DILocation(line: 0, scope: !474, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 69, column: 75, scope: !976, inlinedAt: !2282)
!2307 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2306)
!2308 = !DILocation(line: 0, scope: !483, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !2282)
!2310 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !2309)
!2311 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !2309)
!2312 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !2309)
!2313 = !DILocation(line: 0, scope: !497, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !2309)
!2315 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !2314)
!2316 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !2314)
!2317 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !2314)
!2318 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !2314)
!2319 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2309)
!2320 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2309)
!2321 = !DILocation(line: 71, column: 38, scope: !976, inlinedAt: !2282)
!2322 = !DILocation(line: 71, column: 55, scope: !976, inlinedAt: !2282)
!2323 = !DILocation(line: 72, column: 28, scope: !976, inlinedAt: !2282)
!2324 = !DILocation(line: 72, column: 35, scope: !976, inlinedAt: !2282)
!2325 = !DILocation(line: 73, column: 20, scope: !1039, inlinedAt: !2282)
!2326 = !DILocation(line: 74, column: 16, scope: !1041, inlinedAt: !2282)
!2327 = !DILocation(line: 74, column: 9, scope: !1041, inlinedAt: !2282)
!2328 = !DILocation(line: 76, column: 30, scope: !1044, inlinedAt: !2282)
!2329 = !DILocation(line: 77, column: 16, scope: !1046, inlinedAt: !2282)
!2330 = !DILocation(line: 77, column: 9, scope: !1046, inlinedAt: !2282)
!2331 = !DILocation(line: 0, scope: !794, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 80, column: 27, scope: !976, inlinedAt: !2282)
!2333 = !DILocation(line: 0, scope: !745, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !2332)
!2335 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2334)
!2336 = !DILocation(line: 0, scope: !745, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 81, column: 29, scope: !976, inlinedAt: !2282)
!2339 = !DILocation(line: 82, column: 20, scope: !1057, inlinedAt: !2282)
!2340 = !DILocation(line: 83, column: 16, scope: !1059, inlinedAt: !2282)
!2341 = !DILocation(line: 83, column: 9, scope: !1059, inlinedAt: !2282)
!2342 = !DILocation(line: 372, column: 16, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2272, file: !5, line: 372, column: 9)
!2344 = !DILocation(line: 372, column: 9, scope: !2272)
!2345 = !DILocation(line: 375, column: 63, scope: !2272)
!2346 = !DILocation(line: 377, column: 27, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2272, file: !5, line: 377, column: 9)
!2348 = !DILocation(line: 377, column: 38, scope: !2347)
!2349 = !DILocation(line: 378, column: 9, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2347, file: !5, line: 377, column: 80)
!2351 = !DILocation(line: 379, column: 9, scope: !2350)
!2352 = !DILocation(line: 382, column: 23, scope: !2272)
!2353 = !DILocation(line: 382, column: 29, scope: !2272)
!2354 = !DILocation(line: 382, column: 5, scope: !2272)
!2355 = !DILocation(line: 383, column: 27, scope: !2272)
!2356 = !DILocation(line: 384, column: 32, scope: !2272)
!2357 = !DILocation(line: 384, column: 38, scope: !2272)
!2358 = !{!879, !553, i64 56}
!2359 = !DILocation(line: 384, column: 14, scope: !2272)
!2360 = !DILocation(line: 385, column: 23, scope: !2272)
!2361 = !DILocation(line: 385, column: 29, scope: !2272)
!2362 = !DILocation(line: 385, column: 5, scope: !2272)
!2363 = !DILocation(line: 387, column: 9, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2272, file: !5, line: 387, column: 9)
!2365 = !DILocation(line: 387, column: 9, scope: !2272)
!2366 = !DILocation(line: 391, column: 1, scope: !2272)
!2367 = distinct !DISubprogram(name: "halide_device_detach_native", scope: !5, file: !5, line: 393, type: !198, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2368)
!2368 = !{!2369, !2370, !2371, !2372}
!2369 = !DILocalVariable(name: "user_context", arg: 1, scope: !2367, file: !5, line: 393, type: !82)
!2370 = !DILocalVariable(name: "buf", arg: 2, scope: !2367, file: !5, line: 393, type: !195)
!2371 = !DILocalVariable(name: "result", scope: !2367, file: !5, line: 394, type: !34)
!2372 = !DILocalVariable(name: "device_interface", scope: !2367, file: !5, line: 398, type: !187)
!2373 = !DILocation(line: 0, scope: !2367)
!2374 = !DILocation(line: 0, scope: !976, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 394, column: 18, scope: !2367)
!2376 = !DILocation(line: 64, column: 17, scope: !991, inlinedAt: !2375)
!2377 = !DILocation(line: 64, column: 9, scope: !976, inlinedAt: !2375)
!2378 = !DILocation(line: 65, column: 16, scope: !994, inlinedAt: !2375)
!2379 = !DILocation(line: 65, column: 9, scope: !994, inlinedAt: !2375)
!2380 = !DILocation(line: 0, scope: !457, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !2375)
!2382 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !2381)
!2383 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !2381)
!2384 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !2381)
!2385 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !2381)
!2386 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !2381)
!2387 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !2381)
!2388 = !DILocation(line: 0, scope: !471, inlinedAt: !2381)
!2389 = !DILocation(line: 0, scope: !474, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 69, column: 25, scope: !976, inlinedAt: !2375)
!2391 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2390)
!2392 = !DILocation(line: 0, scope: !474, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 69, column: 36, scope: !976, inlinedAt: !2375)
!2394 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2393)
!2395 = !DILocation(line: 0, scope: !1012, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 69, column: 68, scope: !976, inlinedAt: !2375)
!2397 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !2396)
!2398 = !DILocation(line: 0, scope: !474, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 69, column: 75, scope: !976, inlinedAt: !2375)
!2400 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2399)
!2401 = !DILocation(line: 0, scope: !483, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !2375)
!2403 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !2402)
!2404 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !2402)
!2405 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !2402)
!2406 = !DILocation(line: 0, scope: !497, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !2402)
!2408 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !2407)
!2409 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !2407)
!2410 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !2407)
!2411 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !2407)
!2412 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2402)
!2413 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2402)
!2414 = !DILocation(line: 71, column: 38, scope: !976, inlinedAt: !2375)
!2415 = !DILocation(line: 71, column: 55, scope: !976, inlinedAt: !2375)
!2416 = !DILocation(line: 72, column: 28, scope: !976, inlinedAt: !2375)
!2417 = !DILocation(line: 72, column: 35, scope: !976, inlinedAt: !2375)
!2418 = !DILocation(line: 73, column: 20, scope: !1039, inlinedAt: !2375)
!2419 = !DILocation(line: 74, column: 16, scope: !1041, inlinedAt: !2375)
!2420 = !DILocation(line: 74, column: 9, scope: !1041, inlinedAt: !2375)
!2421 = !DILocation(line: 76, column: 30, scope: !1044, inlinedAt: !2375)
!2422 = !DILocation(line: 77, column: 16, scope: !1046, inlinedAt: !2375)
!2423 = !DILocation(line: 77, column: 9, scope: !1046, inlinedAt: !2375)
!2424 = !DILocation(line: 0, scope: !794, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 80, column: 27, scope: !976, inlinedAt: !2375)
!2426 = !DILocation(line: 0, scope: !745, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !2425)
!2428 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2427)
!2429 = !DILocation(line: 0, scope: !745, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 81, column: 29, scope: !976, inlinedAt: !2375)
!2432 = !DILocation(line: 82, column: 20, scope: !1057, inlinedAt: !2375)
!2433 = !DILocation(line: 83, column: 16, scope: !1059, inlinedAt: !2375)
!2434 = !DILocation(line: 83, column: 9, scope: !1059, inlinedAt: !2375)
!2435 = !DILocation(line: 395, column: 16, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2367, file: !5, line: 395, column: 9)
!2437 = !DILocation(line: 395, column: 9, scope: !2367)
!2438 = !DILocation(line: 398, column: 62, scope: !2367)
!2439 = !DILocation(line: 399, column: 26, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2367, file: !5, line: 399, column: 9)
!2441 = !DILocation(line: 399, column: 9, scope: !2367)
!2442 = !DILocation(line: 400, column: 27, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2440, file: !5, line: 399, column: 38)
!2444 = !DILocation(line: 400, column: 33, scope: !2443)
!2445 = !DILocation(line: 400, column: 9, scope: !2443)
!2446 = !DILocation(line: 401, column: 36, scope: !2443)
!2447 = !DILocation(line: 401, column: 42, scope: !2443)
!2448 = !{!879, !553, i64 60}
!2449 = !DILocation(line: 401, column: 18, scope: !2443)
!2450 = !DILocation(line: 402, column: 27, scope: !2443)
!2451 = !DILocation(line: 402, column: 33, scope: !2443)
!2452 = !DILocation(line: 402, column: 9, scope: !2443)
!2453 = !DILocation(line: 403, column: 9, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !5, line: 403, column: 9)
!2455 = distinct !DILexicalBlock(scope: !2443, file: !5, line: 403, column: 9)
!2456 = !DILocation(line: 403, column: 9, scope: !2455)
!2457 = !DILocation(line: 403, column: 9, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2454, file: !5, line: 403, column: 9)
!2459 = !DILocation(line: 404, column: 13, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2443, file: !5, line: 404, column: 13)
!2461 = !DILocation(line: 404, column: 13, scope: !2443)
!2462 = !DILocation(line: 409, column: 1, scope: !2367)
!2463 = distinct !DISubprogram(name: "halide_default_device_wrap_native", scope: !5, file: !5, line: 411, type: !262, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2464)
!2464 = !{!2465, !2466, !2467, !2468}
!2465 = !DILocalVariable(name: "user_context", arg: 1, scope: !2463, file: !5, line: 411, type: !82)
!2466 = !DILocalVariable(name: "buf", arg: 2, scope: !2463, file: !5, line: 411, type: !195)
!2467 = !DILocalVariable(name: "handle", arg: 3, scope: !2463, file: !5, line: 411, type: !120)
!2468 = !DILocalVariable(name: "result", scope: !2463, file: !5, line: 412, type: !34)
!2469 = !DILocation(line: 0, scope: !2463)
!2470 = !DILocation(line: 0, scope: !976, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 412, column: 18, scope: !2463)
!2472 = !DILocation(line: 64, column: 17, scope: !991, inlinedAt: !2471)
!2473 = !DILocation(line: 64, column: 9, scope: !976, inlinedAt: !2471)
!2474 = !DILocation(line: 65, column: 16, scope: !994, inlinedAt: !2471)
!2475 = !DILocation(line: 65, column: 9, scope: !994, inlinedAt: !2471)
!2476 = !DILocation(line: 0, scope: !457, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !2471)
!2478 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !2477)
!2479 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !2477)
!2480 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !2477)
!2481 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !2477)
!2482 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !2477)
!2483 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !2477)
!2484 = !DILocation(line: 0, scope: !471, inlinedAt: !2477)
!2485 = !DILocation(line: 0, scope: !474, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 69, column: 25, scope: !976, inlinedAt: !2471)
!2487 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2486)
!2488 = !DILocation(line: 0, scope: !474, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 69, column: 36, scope: !976, inlinedAt: !2471)
!2490 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2489)
!2491 = !DILocation(line: 0, scope: !1012, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 69, column: 68, scope: !976, inlinedAt: !2471)
!2493 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !2492)
!2494 = !DILocation(line: 0, scope: !474, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 69, column: 75, scope: !976, inlinedAt: !2471)
!2496 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2495)
!2497 = !DILocation(line: 0, scope: !483, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !2471)
!2499 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !2498)
!2500 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !2498)
!2501 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !2498)
!2502 = !DILocation(line: 0, scope: !497, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !2498)
!2504 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !2503)
!2505 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !2503)
!2506 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !2503)
!2507 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !2503)
!2508 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2498)
!2509 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2498)
!2510 = !DILocation(line: 71, column: 38, scope: !976, inlinedAt: !2471)
!2511 = !DILocation(line: 71, column: 55, scope: !976, inlinedAt: !2471)
!2512 = !DILocation(line: 72, column: 28, scope: !976, inlinedAt: !2471)
!2513 = !DILocation(line: 72, column: 35, scope: !976, inlinedAt: !2471)
!2514 = !DILocation(line: 73, column: 20, scope: !1039, inlinedAt: !2471)
!2515 = !DILocation(line: 74, column: 16, scope: !1041, inlinedAt: !2471)
!2516 = !DILocation(line: 74, column: 9, scope: !1041, inlinedAt: !2471)
!2517 = !DILocation(line: 76, column: 30, scope: !1044, inlinedAt: !2471)
!2518 = !DILocation(line: 77, column: 16, scope: !1046, inlinedAt: !2471)
!2519 = !DILocation(line: 77, column: 9, scope: !1046, inlinedAt: !2471)
!2520 = !DILocation(line: 0, scope: !794, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 80, column: 27, scope: !976, inlinedAt: !2471)
!2522 = !DILocation(line: 0, scope: !745, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !2521)
!2524 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2523)
!2525 = !DILocation(line: 0, scope: !745, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 81, column: 29, scope: !976, inlinedAt: !2471)
!2528 = !DILocation(line: 82, column: 20, scope: !1057, inlinedAt: !2471)
!2529 = !DILocation(line: 83, column: 16, scope: !1059, inlinedAt: !2471)
!2530 = !DILocation(line: 83, column: 9, scope: !1059, inlinedAt: !2471)
!2531 = !DILocation(line: 413, column: 16, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2463, file: !5, line: 413, column: 9)
!2533 = !DILocation(line: 413, column: 9, scope: !2463)
!2534 = !DILocation(line: 416, column: 10, scope: !2463)
!2535 = !DILocation(line: 416, column: 28, scope: !2463)
!2536 = !DILocation(line: 416, column: 34, scope: !2463)
!2537 = !DILocation(line: 416, column: 5, scope: !2463)
!2538 = !DILocation(line: 417, column: 10, scope: !2463)
!2539 = !DILocation(line: 417, column: 17, scope: !2463)
!2540 = !DILocation(line: 418, column: 5, scope: !2463)
!2541 = !DILocation(line: 419, column: 1, scope: !2463)
!2542 = distinct !DISubprogram(name: "halide_default_device_detach_native", scope: !5, file: !5, line: 421, type: !198, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2543)
!2543 = !{!2544, !2545, !2546}
!2544 = !DILocalVariable(name: "user_context", arg: 1, scope: !2542, file: !5, line: 421, type: !82)
!2545 = !DILocalVariable(name: "buf", arg: 2, scope: !2542, file: !5, line: 421, type: !195)
!2546 = !DILocalVariable(name: "result", scope: !2542, file: !5, line: 422, type: !34)
!2547 = !DILocation(line: 0, scope: !2542)
!2548 = !DILocation(line: 0, scope: !976, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 422, column: 18, scope: !2542)
!2550 = !DILocation(line: 64, column: 17, scope: !991, inlinedAt: !2549)
!2551 = !DILocation(line: 64, column: 9, scope: !976, inlinedAt: !2549)
!2552 = !DILocation(line: 65, column: 16, scope: !994, inlinedAt: !2549)
!2553 = !DILocation(line: 65, column: 9, scope: !994, inlinedAt: !2549)
!2554 = !DILocation(line: 0, scope: !457, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !2549)
!2556 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !2555)
!2557 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !2555)
!2558 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !2555)
!2559 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !2555)
!2560 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !2555)
!2561 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !2555)
!2562 = !DILocation(line: 0, scope: !471, inlinedAt: !2555)
!2563 = !DILocation(line: 0, scope: !474, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 69, column: 25, scope: !976, inlinedAt: !2549)
!2565 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2564)
!2566 = !DILocation(line: 0, scope: !474, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 69, column: 36, scope: !976, inlinedAt: !2549)
!2568 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2567)
!2569 = !DILocation(line: 0, scope: !1012, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 69, column: 68, scope: !976, inlinedAt: !2549)
!2571 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !2570)
!2572 = !DILocation(line: 0, scope: !474, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 69, column: 75, scope: !976, inlinedAt: !2549)
!2574 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2573)
!2575 = !DILocation(line: 0, scope: !483, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 69, column: 5, scope: !976, inlinedAt: !2549)
!2577 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !2576)
!2578 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !2576)
!2579 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !2576)
!2580 = !DILocation(line: 0, scope: !497, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !2576)
!2582 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !2581)
!2583 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !2581)
!2584 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !2581)
!2585 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !2581)
!2586 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2576)
!2587 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2576)
!2588 = !DILocation(line: 71, column: 38, scope: !976, inlinedAt: !2549)
!2589 = !DILocation(line: 71, column: 55, scope: !976, inlinedAt: !2549)
!2590 = !DILocation(line: 72, column: 28, scope: !976, inlinedAt: !2549)
!2591 = !DILocation(line: 72, column: 35, scope: !976, inlinedAt: !2549)
!2592 = !DILocation(line: 73, column: 20, scope: !1039, inlinedAt: !2549)
!2593 = !DILocation(line: 74, column: 16, scope: !1041, inlinedAt: !2549)
!2594 = !DILocation(line: 74, column: 9, scope: !1041, inlinedAt: !2549)
!2595 = !DILocation(line: 76, column: 30, scope: !1044, inlinedAt: !2549)
!2596 = !DILocation(line: 77, column: 16, scope: !1046, inlinedAt: !2549)
!2597 = !DILocation(line: 77, column: 9, scope: !1046, inlinedAt: !2549)
!2598 = !DILocation(line: 0, scope: !794, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 80, column: 27, scope: !976, inlinedAt: !2549)
!2600 = !DILocation(line: 0, scope: !745, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !2599)
!2602 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2601)
!2603 = !DILocation(line: 0, scope: !745, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 81, column: 29, scope: !976, inlinedAt: !2549)
!2606 = !DILocation(line: 82, column: 20, scope: !1057, inlinedAt: !2549)
!2607 = !DILocation(line: 83, column: 16, scope: !1059, inlinedAt: !2549)
!2608 = !DILocation(line: 83, column: 9, scope: !1059, inlinedAt: !2549)
!2609 = !DILocation(line: 423, column: 16, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2542, file: !5, line: 423, column: 9)
!2611 = !DILocation(line: 423, column: 9, scope: !2542)
!2612 = !DILocation(line: 426, column: 14, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2542, file: !5, line: 426, column: 9)
!2614 = !DILocation(line: 426, column: 21, scope: !2613)
!2615 = !DILocation(line: 426, column: 9, scope: !2542)
!2616 = !DILocation(line: 429, column: 10, scope: !2542)
!2617 = !DILocation(line: 429, column: 28, scope: !2542)
!2618 = !DILocation(line: 429, column: 34, scope: !2542)
!2619 = !DILocation(line: 429, column: 5, scope: !2542)
!2620 = !DILocation(line: 430, column: 17, scope: !2542)
!2621 = !DILocation(line: 431, column: 27, scope: !2542)
!2622 = !DILocation(line: 432, column: 5, scope: !2542)
!2623 = !DILocation(line: 433, column: 1, scope: !2542)
!2624 = distinct !DISubprogram(name: "halide_device_and_host_free_as_destructor", scope: !5, file: !5, line: 437, type: !1771, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2625)
!2625 = !{!2626, !2627, !2628}
!2626 = !DILocalVariable(name: "user_context", arg: 1, scope: !2624, file: !5, line: 437, type: !82)
!2627 = !DILocalVariable(name: "obj", arg: 2, scope: !2624, file: !5, line: 437, type: !82)
!2628 = !DILocalVariable(name: "buf", scope: !2624, file: !5, line: 438, type: !195)
!2629 = !DILocation(line: 0, scope: !2624)
!2630 = !DILocation(line: 438, column: 35, scope: !2624)
!2631 = !DILocation(line: 439, column: 5, scope: !2624)
!2632 = !DILocation(line: 440, column: 1, scope: !2624)
!2633 = distinct !DISubprogram(name: "halide_device_host_nop_free", scope: !5, file: !5, line: 443, type: !1771, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2634)
!2634 = !{!2635, !2636}
!2635 = !DILocalVariable(name: "user_context", arg: 1, scope: !2633, file: !5, line: 443, type: !82)
!2636 = !DILocalVariable(name: "obj", arg: 2, scope: !2633, file: !5, line: 443, type: !82)
!2637 = !DILocation(line: 0, scope: !2633)
!2638 = !DILocation(line: 444, column: 1, scope: !2633)
!2639 = distinct !DISubprogram(name: "halide_default_buffer_copy", scope: !5, file: !5, line: 446, type: !211, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2640)
!2640 = !{!2641, !2642, !2643, !2644}
!2641 = !DILocalVariable(name: "user_context", arg: 1, scope: !2639, file: !5, line: 446, type: !82)
!2642 = !DILocalVariable(name: "src", arg: 2, scope: !2639, file: !5, line: 446, type: !195)
!2643 = !DILocalVariable(name: "dst_device_interface", arg: 3, scope: !2639, file: !5, line: 447, type: !187)
!2644 = !DILocalVariable(name: "dst", arg: 4, scope: !2639, file: !5, line: 448, type: !195)
!2645 = !DILocation(line: 0, scope: !2639)
!2646 = !DILocation(line: 0, scope: !457, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 450, column: 5, scope: !2639)
!2648 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !2647)
!2649 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !2647)
!2650 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !2647)
!2651 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !2647)
!2652 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !2647)
!2653 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !2647)
!2654 = !DILocation(line: 0, scope: !471, inlinedAt: !2647)
!2655 = !DILocation(line: 0, scope: !474, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 451, column: 9, scope: !2639)
!2657 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2656)
!2658 = !DILocation(line: 0, scope: !474, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 452, column: 9, scope: !2639)
!2660 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2659)
!2661 = !DILocation(line: 0, scope: !1012, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 452, column: 24, scope: !2639)
!2663 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !2662)
!2664 = !DILocation(line: 0, scope: !474, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 452, column: 32, scope: !2639)
!2666 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2665)
!2667 = !DILocation(line: 0, scope: !474, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 453, column: 9, scope: !2639)
!2669 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2668)
!2670 = !DILocation(line: 453, column: 49, scope: !2639)
!2671 = !DILocation(line: 0, scope: !769, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 453, column: 38, scope: !2639)
!2673 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !2672)
!2674 = !DILocation(line: 0, scope: !474, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 453, column: 70, scope: !2639)
!2676 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2675)
!2677 = !DILocation(line: 0, scope: !474, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 454, column: 9, scope: !2639)
!2679 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2678)
!2680 = !DILocation(line: 0, scope: !1012, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 454, column: 21, scope: !2639)
!2682 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !2681)
!2683 = !DILocation(line: 0, scope: !474, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 454, column: 29, scope: !2639)
!2685 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2684)
!2686 = !DILocation(line: 0, scope: !483, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 450, column: 5, scope: !2639)
!2688 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !2687)
!2689 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !2687)
!2690 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !2687)
!2691 = !DILocation(line: 0, scope: !497, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !2687)
!2693 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !2692)
!2694 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !2692)
!2695 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !2692)
!2696 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !2692)
!2697 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2687)
!2698 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2687)
!2699 = !DILocation(line: 463, column: 5, scope: !2639)
!2700 = distinct !DISubprogram(name: "halide_buffer_copy_already_locked", scope: !5, file: !5, line: 466, type: !211, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2701)
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707, !2709, !2710, !2711, !2712, !2713, !2714}
!2702 = !DILocalVariable(name: "user_context", arg: 1, scope: !2700, file: !5, line: 466, type: !82)
!2703 = !DILocalVariable(name: "src", arg: 2, scope: !2700, file: !5, line: 466, type: !195)
!2704 = !DILocalVariable(name: "dst_device_interface", arg: 3, scope: !2700, file: !5, line: 467, type: !187)
!2705 = !DILocalVariable(name: "dst", arg: 4, scope: !2700, file: !5, line: 468, type: !195)
!2706 = !DILocalVariable(name: "err", scope: !2700, file: !5, line: 470, type: !34)
!2707 = !DILocalVariable(name: "from_device_valid", scope: !2700, file: !5, line: 508, type: !2708)
!2708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!2709 = !DILocalVariable(name: "to_device", scope: !2700, file: !5, line: 510, type: !2708)
!2710 = !DILocalVariable(name: "to_host", scope: !2700, file: !5, line: 511, type: !2708)
!2711 = !DILocalVariable(name: "from_host_exists", scope: !2700, file: !5, line: 512, type: !2708)
!2712 = !DILocalVariable(name: "from_host_valid", scope: !2700, file: !5, line: 513, type: !2708)
!2713 = !DILocalVariable(name: "to_host_exists", scope: !2700, file: !5, line: 515, type: !2708)
!2714 = !DILocalVariable(name: "c", scope: !2715, file: !5, line: 537, type: !364)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !5, line: 536, column: 41)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !5, line: 536, column: 13)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !5, line: 528, column: 65)
!2718 = distinct !DILexicalBlock(scope: !2700, file: !5, line: 528, column: 9)
!2719 = !DILocation(line: 0, scope: !2700)
!2720 = !DILocation(line: 0, scope: !457, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 469, column: 5, scope: !2700)
!2722 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !2721)
!2723 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !2721)
!2724 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !2721)
!2725 = !DILocation(line: 0, scope: !474, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 469, column: 25, scope: !2700)
!2727 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2726)
!2728 = !DILocation(line: 0, scope: !483, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 469, column: 5, scope: !2700)
!2730 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !2729)
!2731 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !2729)
!2732 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !2721)
!2733 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !2721)
!2734 = !DILocation(line: 0, scope: !497, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !2729)
!2736 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !2735)
!2737 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !2735)
!2738 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !2735)
!2739 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !2735)
!2740 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2729)
!2741 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2729)
!2742 = !DILocation(line: 472, column: 9, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2700, file: !5, line: 472, column: 9)
!2744 = !DILocation(line: 472, column: 30, scope: !2743)
!2745 = !DILocation(line: 472, column: 38, scope: !2743)
!2746 = !DILocation(line: 472, column: 33, scope: !2743)
!2747 = !DILocation(line: 472, column: 55, scope: !2743)
!2748 = !DILocation(line: 474, column: 9, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2743, file: !5, line: 473, column: 56)
!2750 = !DILocation(line: 475, column: 9, scope: !2749)
!2751 = !DILocation(line: 478, column: 39, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2700, file: !5, line: 478, column: 9)
!2753 = !DILocation(line: 478, column: 34, scope: !2752)
!2754 = !DILocation(line: 478, column: 9, scope: !2700)
!2755 = !DILocation(line: 0, scope: !457, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 479, column: 9, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2752, file: !5, line: 478, column: 47)
!2758 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !2756)
!2759 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !2756)
!2760 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !2756)
!2761 = !DILocation(line: 0, scope: !474, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 479, column: 29, scope: !2757)
!2763 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2762)
!2764 = !DILocation(line: 0, scope: !483, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 479, column: 9, scope: !2757)
!2766 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !2765)
!2767 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !2765)
!2768 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !2756)
!2769 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !2756)
!2770 = !DILocation(line: 0, scope: !497, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !2765)
!2772 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !2771)
!2773 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !2771)
!2774 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !2771)
!2775 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !2771)
!2776 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2765)
!2777 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2765)
!2778 = !DILocation(line: 480, column: 15, scope: !2757)
!2779 = !DILocation(line: 481, column: 13, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2757, file: !5, line: 481, column: 13)
!2781 = !DILocation(line: 481, column: 13, scope: !2757)
!2782 = !DILocation(line: 508, column: 42, scope: !2700)
!2783 = !DILocation(line: 508, column: 49, scope: !2700)
!2784 = !DILocation(line: 508, column: 55, scope: !2700)
!2785 = !DILocation(line: 509, column: 58, scope: !2700)
!2786 = !DILocation(line: 0, scope: !794, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 509, column: 67, scope: !2700)
!2788 = !DILocation(line: 0, scope: !745, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 1467, column: 16, scope: !794, inlinedAt: !2787)
!2790 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2789)
!2791 = !DILocation(line: 1455, column: 23, scope: !745, inlinedAt: !2789)
!2792 = !DILocation(line: 1455, column: 31, scope: !745, inlinedAt: !2789)
!2793 = !DILocation(line: 513, column: 51, scope: !2700)
!2794 = !DILocation(line: 0, scope: !739, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 514, column: 41, scope: !2700)
!2796 = !DILocation(line: 0, scope: !745, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 1471, column: 16, scope: !739, inlinedAt: !2795)
!2798 = !DILocation(line: 1455, column: 17, scope: !745, inlinedAt: !2797)
!2799 = !DILocation(line: 1455, column: 23, scope: !745, inlinedAt: !2797)
!2800 = !DILocation(line: 1455, column: 31, scope: !745, inlinedAt: !2797)
!2801 = !DILocation(line: 514, column: 56, scope: !2700)
!2802 = !DILocation(line: 514, column: 65, scope: !2700)
!2803 = !DILocation(line: 514, column: 82, scope: !2700)
!2804 = !DILocation(line: 515, column: 38, scope: !2700)
!2805 = !DILocation(line: 515, column: 43, scope: !2700)
!2806 = !DILocation(line: 517, column: 17, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2700, file: !5, line: 517, column: 9)
!2808 = !DILocation(line: 523, column: 27, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2700, file: !5, line: 523, column: 9)
!2810 = !DILocation(line: 0, scope: !457, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 524, column: 9, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2809, file: !5, line: 523, column: 41)
!2813 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !2811)
!2814 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !2811)
!2815 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !2811)
!2816 = !DILocation(line: 0, scope: !474, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 524, column: 29, scope: !2812)
!2818 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2817)
!2819 = !DILocation(line: 0, scope: !483, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 524, column: 9, scope: !2812)
!2821 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !2820)
!2822 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !2820)
!2823 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !2811)
!2824 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !2811)
!2825 = !DILocation(line: 0, scope: !497, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !2820)
!2827 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !2826)
!2828 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !2826)
!2829 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !2826)
!2830 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !2826)
!2831 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2820)
!2832 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2820)
!2833 = !DILocation(line: 525, column: 37, scope: !2812)
!2834 = !DILocation(line: 525, column: 43, scope: !2812)
!2835 = !{!879, !553, i64 40}
!2836 = !DILocation(line: 525, column: 15, scope: !2812)
!2837 = !DILocation(line: 528, column: 13, scope: !2718)
!2838 = !DILocation(line: 528, column: 9, scope: !2700)
!2839 = !DILocation(line: 531, column: 31, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2717, file: !5, line: 531, column: 13)
!2841 = !DILocation(line: 0, scope: !457, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 532, column: 13, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2840, file: !5, line: 531, column: 51)
!2844 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !2842)
!2845 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !2842)
!2846 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !2842)
!2847 = !DILocation(line: 0, scope: !474, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 532, column: 33, scope: !2843)
!2849 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2848)
!2850 = !DILocation(line: 0, scope: !483, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 532, column: 13, scope: !2843)
!2852 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !2851)
!2853 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !2851)
!2854 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !2842)
!2855 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !2842)
!2856 = !DILocation(line: 0, scope: !497, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !2851)
!2858 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !2857)
!2859 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !2857)
!2860 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !2857)
!2861 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !2857)
!2862 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2851)
!2863 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2851)
!2864 = !DILocation(line: 533, column: 13, scope: !2843)
!2865 = !DILocation(line: 536, column: 21, scope: !2716)
!2866 = !DILocation(line: 537, column: 13, scope: !2715)
!2867 = !DILocation(line: 537, column: 25, scope: !2715)
!2868 = !DILocation(line: 537, column: 29, scope: !2715)
!2869 = !DILocation(line: 538, column: 13, scope: !2715)
!2870 = !DILocation(line: 540, column: 9, scope: !2716)
!2871 = !DILocation(line: 572, column: 9, scope: !2700)
!2872 = !DILocation(line: 540, column: 20, scope: !2716)
!2873 = !DILocation(line: 0, scope: !457, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 541, column: 13, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !5, line: 540, column: 29)
!2876 = distinct !DILexicalBlock(scope: !2716, file: !5, line: 540, column: 20)
!2877 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !2874)
!2878 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !2874)
!2879 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !2874)
!2880 = !DILocation(line: 0, scope: !474, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 541, column: 33, scope: !2875)
!2882 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2881)
!2883 = !DILocation(line: 0, scope: !483, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 541, column: 13, scope: !2875)
!2885 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !2884)
!2886 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !2884)
!2887 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !2874)
!2888 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !2874)
!2889 = !DILocation(line: 0, scope: !497, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !2884)
!2891 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !2890)
!2892 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !2890)
!2893 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !2890)
!2894 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !2890)
!2895 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2884)
!2896 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2884)
!2897 = !DILocation(line: 542, column: 24, scope: !2875)
!2898 = !DILocation(line: 542, column: 42, scope: !2875)
!2899 = !DILocation(line: 542, column: 48, scope: !2875)
!2900 = !DILocation(line: 542, column: 19, scope: !2875)
!2901 = !DILocation(line: 545, column: 21, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2875, file: !5, line: 545, column: 17)
!2903 = !DILocation(line: 545, column: 17, scope: !2875)
!2904 = !DILocation(line: 546, column: 23, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2902, file: !5, line: 545, column: 73)
!2906 = !DILocation(line: 547, column: 22, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2905, file: !5, line: 547, column: 21)
!2908 = !DILocation(line: 547, column: 21, scope: !2905)
!2909 = !DILocation(line: 548, column: 27, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2907, file: !5, line: 547, column: 27)
!2911 = !DILocation(line: 549, column: 17, scope: !2910)
!2912 = !DILocation(line: 552, column: 35, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !5, line: 552, column: 17)
!2914 = distinct !DILexicalBlock(scope: !2876, file: !5, line: 551, column: 16)
!2915 = !DILocation(line: 0, scope: !457, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 562, column: 17, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2913, file: !5, line: 561, column: 20)
!2918 = !DILocation(line: 0, scope: !457, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 553, column: 17, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2913, file: !5, line: 552, column: 54)
!2921 = !DILocation(line: 0, scope: !2913)
!2922 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !2919)
!2923 = !DILocation(line: 0, scope: !474, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 553, column: 37, scope: !2920)
!2925 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2924)
!2926 = !DILocation(line: 0, scope: !483, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 553, column: 17, scope: !2920)
!2928 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !2927)
!2929 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !2927)
!2930 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !2919)
!2931 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !2919)
!2932 = !DILocation(line: 0, scope: !497, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !2927)
!2934 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !2933)
!2935 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !2933)
!2936 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !2933)
!2937 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !2933)
!2938 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2927)
!2939 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2927)
!2940 = !DILocation(line: 0, scope: !457, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 555, column: 17, scope: !2920)
!2942 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !2941)
!2943 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !2941)
!2944 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !2941)
!2945 = !DILocation(line: 0, scope: !474, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 555, column: 37, scope: !2920)
!2947 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2946)
!2948 = !DILocation(line: 0, scope: !483, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 555, column: 17, scope: !2920)
!2950 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !2949)
!2951 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !2949)
!2952 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !2941)
!2953 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !2941)
!2954 = !DILocation(line: 0, scope: !497, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !2949)
!2956 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !2955)
!2957 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !2955)
!2958 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !2955)
!2959 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !2955)
!2960 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2949)
!2961 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2949)
!2962 = !DILocation(line: 556, column: 28, scope: !2920)
!2963 = !DILocation(line: 556, column: 46, scope: !2920)
!2964 = !DILocation(line: 556, column: 52, scope: !2920)
!2965 = !DILocation(line: 556, column: 23, scope: !2920)
!2966 = !DILocation(line: 557, column: 25, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2920, file: !5, line: 557, column: 21)
!2968 = !DILocation(line: 557, column: 21, scope: !2920)
!2969 = !DILocation(line: 0, scope: !1361, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 558, column: 26, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2967, file: !5, line: 557, column: 31)
!2972 = !DILocation(line: 0, scope: !924, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 1475, column: 9, scope: !1361, inlinedAt: !2970)
!2974 = !DILocation(line: 1460, column: 13, scope: !2975, inlinedAt: !2973)
!2975 = distinct !DILexicalBlock(scope: !932, file: !7, line: 1459, column: 20)
!2976 = !DILocation(line: 1460, column: 19, scope: !2975, inlinedAt: !2973)
!2977 = !DILocation(line: 559, column: 27, scope: !2971)
!2978 = !DILocation(line: 560, column: 17, scope: !2971)
!2979 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !2916)
!2980 = !DILocation(line: 0, scope: !474, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 562, column: 37, scope: !2917)
!2982 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !2981)
!2983 = !DILocation(line: 0, scope: !483, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 562, column: 17, scope: !2917)
!2985 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !2984)
!2986 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !2984)
!2987 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !2916)
!2988 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !2916)
!2989 = !DILocation(line: 0, scope: !497, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !2984)
!2991 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !2990)
!2992 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !2990)
!2993 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !2990)
!2994 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !2990)
!2995 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !2984)
!2996 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !2984)
!2997 = !DILocation(line: 564, column: 23, scope: !2917)
!2998 = !DILocation(line: 565, column: 25, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2917, file: !5, line: 565, column: 21)
!3000 = !DILocation(line: 565, column: 21, scope: !2917)
!3001 = !DILocation(line: 566, column: 49, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2999, file: !5, line: 565, column: 31)
!3003 = !DILocation(line: 566, column: 55, scope: !3002)
!3004 = !DILocation(line: 566, column: 27, scope: !3002)
!3005 = !DILocation(line: 567, column: 17, scope: !3002)
!3006 = !DILocation(line: 0, scope: !457, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 573, column: 9, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !5, line: 572, column: 19)
!3009 = distinct !DILexicalBlock(scope: !2700, file: !5, line: 572, column: 9)
!3010 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !3007)
!3011 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !3007)
!3012 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !3007)
!3013 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !3007)
!3014 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !3007)
!3015 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !3007)
!3016 = !DILocation(line: 0, scope: !471, inlinedAt: !3007)
!3017 = !DILocation(line: 0, scope: !474, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 573, column: 29, scope: !3008)
!3019 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3018)
!3020 = !DILocalVariable(name: "this", arg: 1, scope: !3021, type: !461, flags: DIFlagArtificial | DIFlagObjectPointer)
!3021 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !86, file: !84, line: 72, type: !114, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, declaration: !113, retainedNodes: !3022)
!3022 = !{!3020, !3023}
!3023 = !DILocalVariable(name: "arg", arg: 2, scope: !3021, file: !84, line: 72, type: !116)
!3024 = !DILocation(line: 0, scope: !3021, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 573, column: 80, scope: !3008)
!3026 = !DILocation(line: 73, column: 48, scope: !3021, inlinedAt: !3025)
!3027 = !DILocation(line: 73, column: 15, scope: !3021, inlinedAt: !3025)
!3028 = !DILocation(line: 0, scope: !474, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 573, column: 87, scope: !3008)
!3030 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3029)
!3031 = !DILocation(line: 0, scope: !483, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 573, column: 9, scope: !3008)
!3033 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !3032)
!3034 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !3032)
!3035 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !3032)
!3036 = !DILocation(line: 0, scope: !497, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !3032)
!3038 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !3037)
!3039 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !3037)
!3040 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !3037)
!3041 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !3037)
!3042 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !3032)
!3043 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !3032)
!3044 = !DILocation(line: 575, column: 18, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2700, file: !5, line: 575, column: 9)
!3046 = !DILocation(line: 575, column: 25, scope: !3045)
!3047 = !DILocation(line: 575, column: 9, scope: !2700)
!3048 = !DILocation(line: 0, scope: !457, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 581, column: 13, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !5, line: 580, column: 16)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !5, line: 576, column: 13)
!3052 = distinct !DILexicalBlock(scope: !3045, file: !5, line: 575, column: 33)
!3053 = !DILocation(line: 0, scope: !457, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 577, column: 13, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3051, file: !5, line: 576, column: 35)
!3056 = !DILocation(line: 0, scope: !3051)
!3057 = !DILocation(line: 576, column: 13, scope: !3052)
!3058 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !3054)
!3059 = !DILocation(line: 0, scope: !474, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 577, column: 33, scope: !3055)
!3061 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3060)
!3062 = !DILocation(line: 0, scope: !483, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 577, column: 13, scope: !3055)
!3064 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !3063)
!3065 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !3063)
!3066 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !3054)
!3067 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !3054)
!3068 = !DILocation(line: 0, scope: !497, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !3063)
!3070 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !3069)
!3071 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !3069)
!3072 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !3069)
!3073 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !3069)
!3074 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !3063)
!3075 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !3063)
!3076 = !DILocation(line: 0, scope: !1361, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 578, column: 18, scope: !3055)
!3078 = !DILocation(line: 0, scope: !924, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 1475, column: 9, scope: !1361, inlinedAt: !3077)
!3080 = !DILocation(line: 1462, column: 13, scope: !931, inlinedAt: !3079)
!3081 = !DILocation(line: 1462, column: 19, scope: !931, inlinedAt: !3079)
!3082 = !DILocation(line: 0, scope: !918, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 579, column: 18, scope: !3055)
!3084 = !DILocation(line: 0, scope: !924, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 1479, column: 9, scope: !918, inlinedAt: !3083)
!3086 = !DILocation(line: 1460, column: 19, scope: !2975, inlinedAt: !3085)
!3087 = !DILocation(line: 580, column: 9, scope: !3055)
!3088 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !3049)
!3089 = !DILocation(line: 0, scope: !474, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 581, column: 33, scope: !3050)
!3091 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3090)
!3092 = !DILocation(line: 0, scope: !483, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 581, column: 13, scope: !3050)
!3094 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !3093)
!3095 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !3093)
!3096 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !3049)
!3097 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !3049)
!3098 = !DILocation(line: 0, scope: !497, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !3093)
!3100 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !3099)
!3101 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !3099)
!3102 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !3099)
!3103 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !3099)
!3104 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !3093)
!3105 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !3093)
!3106 = !DILocation(line: 0, scope: !1361, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 582, column: 18, scope: !3050)
!3108 = !DILocation(line: 0, scope: !924, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 1475, column: 9, scope: !1361, inlinedAt: !3107)
!3110 = !DILocation(line: 1460, column: 13, scope: !2975, inlinedAt: !3109)
!3111 = !DILocation(line: 1460, column: 19, scope: !2975, inlinedAt: !3109)
!3112 = !DILocation(line: 0, scope: !918, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 583, column: 18, scope: !3050)
!3114 = !DILocation(line: 0, scope: !924, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 1479, column: 9, scope: !918, inlinedAt: !3113)
!3116 = !DILocation(line: 1462, column: 19, scope: !931, inlinedAt: !3115)
!3117 = !DILocation(line: 588, column: 1, scope: !2700)
!3118 = distinct !DISubprogram(name: "halide_buffer_copy", scope: !5, file: !5, line: 590, type: !211, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !3119)
!3119 = !{!3120, !3121, !3122, !3123, !3124, !3125}
!3120 = !DILocalVariable(name: "user_context", arg: 1, scope: !3118, file: !5, line: 590, type: !82)
!3121 = !DILocalVariable(name: "src", arg: 2, scope: !3118, file: !5, line: 590, type: !195)
!3122 = !DILocalVariable(name: "dst_device_interface", arg: 3, scope: !3118, file: !5, line: 591, type: !187)
!3123 = !DILocalVariable(name: "dst", arg: 4, scope: !3118, file: !5, line: 592, type: !195)
!3124 = !DILocalVariable(name: "lock", scope: !3118, file: !5, line: 598, type: !952)
!3125 = !DILocalVariable(name: "err", scope: !3118, file: !5, line: 607, type: !34)
!3126 = !DILocation(line: 0, scope: !3118)
!3127 = !DILocation(line: 0, scope: !457, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 593, column: 5, scope: !3118)
!3129 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !3128)
!3130 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !3128)
!3131 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !3128)
!3132 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !3128)
!3133 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !3128)
!3134 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !3128)
!3135 = !DILocation(line: 0, scope: !471, inlinedAt: !3128)
!3136 = !DILocation(line: 0, scope: !474, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 593, column: 25, scope: !3118)
!3138 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3137)
!3139 = !DILocation(line: 0, scope: !474, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 594, column: 25, scope: !3118)
!3141 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3140)
!3142 = !DILocation(line: 0, scope: !1012, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 594, column: 36, scope: !3118)
!3144 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !3143)
!3145 = !DILocation(line: 0, scope: !474, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 594, column: 44, scope: !3118)
!3147 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3146)
!3148 = !DILocation(line: 0, scope: !474, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 595, column: 25, scope: !3118)
!3150 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3149)
!3151 = !DILocation(line: 595, column: 45, scope: !3118)
!3152 = !DILocation(line: 0, scope: !769, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 595, column: 42, scope: !3118)
!3154 = !DILocation(line: 98, column: 15, scope: !769, inlinedAt: !3153)
!3155 = !DILocation(line: 0, scope: !474, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 595, column: 66, scope: !3118)
!3157 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3156)
!3158 = !DILocation(line: 0, scope: !474, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 596, column: 25, scope: !3118)
!3160 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3159)
!3161 = !DILocation(line: 0, scope: !1012, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 596, column: 36, scope: !3118)
!3163 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !3162)
!3164 = !DILocation(line: 0, scope: !474, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 596, column: 44, scope: !3118)
!3166 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3165)
!3167 = !DILocation(line: 0, scope: !483, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 593, column: 5, scope: !3118)
!3169 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !3168)
!3170 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !3168)
!3171 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !3168)
!3172 = !DILocation(line: 0, scope: !497, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !3168)
!3174 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !3173)
!3175 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !3173)
!3176 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !3173)
!3177 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !3173)
!3178 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !3168)
!3179 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !3168)
!3180 = !DILocation(line: 0, scope: !967, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 598, column: 21, scope: !3118)
!3182 = !DILocation(line: 16, column: 9, scope: !974, inlinedAt: !3181)
!3183 = !DILocation(line: 600, column: 9, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3118, file: !5, line: 600, column: 9)
!3185 = !DILocation(line: 600, column: 9, scope: !3118)
!3186 = !DILocation(line: 601, column: 31, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3184, file: !5, line: 600, column: 31)
!3188 = !DILocation(line: 601, column: 37, scope: !3187)
!3189 = !DILocation(line: 601, column: 9, scope: !3187)
!3190 = !DILocation(line: 602, column: 5, scope: !3187)
!3191 = !DILocation(line: 603, column: 14, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3118, file: !5, line: 603, column: 9)
!3193 = !DILocation(line: 603, column: 9, scope: !3192)
!3194 = !DILocation(line: 603, column: 9, scope: !3118)
!3195 = !DILocation(line: 604, column: 32, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3192, file: !5, line: 603, column: 32)
!3197 = !DILocation(line: 604, column: 38, scope: !3196)
!3198 = !DILocation(line: 604, column: 9, scope: !3196)
!3199 = !DILocation(line: 605, column: 5, scope: !3196)
!3200 = !DILocation(line: 607, column: 15, scope: !3118)
!3201 = !DILocation(line: 609, column: 9, scope: !3118)
!3202 = !DILocation(line: 610, column: 31, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !5, line: 609, column: 31)
!3204 = distinct !DILexicalBlock(scope: !3118, file: !5, line: 609, column: 9)
!3205 = !DILocation(line: 610, column: 37, scope: !3203)
!3206 = !DILocation(line: 610, column: 9, scope: !3203)
!3207 = !DILocation(line: 611, column: 5, scope: !3203)
!3208 = !DILocation(line: 612, column: 14, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3118, file: !5, line: 612, column: 9)
!3210 = !DILocation(line: 612, column: 9, scope: !3209)
!3211 = !DILocation(line: 612, column: 9, scope: !3118)
!3212 = !DILocation(line: 613, column: 32, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3209, file: !5, line: 612, column: 32)
!3214 = !DILocation(line: 613, column: 38, scope: !3213)
!3215 = !DILocation(line: 613, column: 9, scope: !3213)
!3216 = !DILocation(line: 614, column: 5, scope: !3213)
!3217 = !DILocation(line: 0, scope: !1067, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 617, column: 1, scope: !3118)
!3219 = !DILocation(line: 20, column: 9, scope: !1072, inlinedAt: !3218)
!3220 = !DILocation(line: 617, column: 1, scope: !3118)
!3221 = distinct !DISubprogram(name: "halide_default_device_crop", scope: !5, file: !5, line: 619, type: !215, scopeLine: 621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !3222)
!3222 = !{!3223, !3224, !3225}
!3223 = !DILocalVariable(name: "user_context", arg: 1, scope: !3221, file: !5, line: 619, type: !82)
!3224 = !DILocalVariable(name: "src", arg: 2, scope: !3221, file: !5, line: 620, type: !217)
!3225 = !DILocalVariable(name: "dst", arg: 3, scope: !3221, file: !5, line: 621, type: !195)
!3226 = !DILocation(line: 0, scope: !3221)
!3227 = !DILocation(line: 622, column: 5, scope: !3221)
!3228 = !DILocation(line: 623, column: 5, scope: !3221)
!3229 = distinct !DISubprogram(name: "halide_default_device_slice", scope: !5, file: !5, line: 626, type: !221, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !3230)
!3230 = !{!3231, !3232, !3233, !3234, !3235}
!3231 = !DILocalVariable(name: "user_context", arg: 1, scope: !3229, file: !5, line: 626, type: !82)
!3232 = !DILocalVariable(name: "src", arg: 2, scope: !3229, file: !5, line: 627, type: !217)
!3233 = !DILocalVariable(name: "slice_dim", arg: 3, scope: !3229, file: !5, line: 628, type: !34)
!3234 = !DILocalVariable(name: "slice_pos", arg: 4, scope: !3229, file: !5, line: 628, type: !34)
!3235 = !DILocalVariable(name: "dst", arg: 5, scope: !3229, file: !5, line: 629, type: !195)
!3236 = !DILocation(line: 0, scope: !3229)
!3237 = !DILocation(line: 630, column: 5, scope: !3229)
!3238 = !DILocation(line: 631, column: 5, scope: !3229)
!3239 = distinct !DISubprogram(name: "halide_device_crop", scope: !5, file: !5, line: 634, type: !215, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !3240)
!3240 = !{!3241, !3242, !3243, !3244, !3245}
!3241 = !DILocalVariable(name: "user_context", arg: 1, scope: !3239, file: !5, line: 634, type: !82)
!3242 = !DILocalVariable(name: "src", arg: 2, scope: !3239, file: !5, line: 635, type: !217)
!3243 = !DILocalVariable(name: "dst", arg: 3, scope: !3239, file: !5, line: 636, type: !195)
!3244 = !DILocalVariable(name: "lock", scope: !3239, file: !5, line: 637, type: !952)
!3245 = !DILocalVariable(name: "err", scope: !3239, file: !5, line: 654, type: !34)
!3246 = !DILocation(line: 0, scope: !3239)
!3247 = !DILocation(line: 0, scope: !967, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 637, column: 21, scope: !3239)
!3249 = !DILocation(line: 16, column: 9, scope: !974, inlinedAt: !3248)
!3250 = !DILocation(line: 639, column: 15, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3239, file: !5, line: 639, column: 9)
!3252 = !DILocation(line: 639, column: 10, scope: !3251)
!3253 = !DILocation(line: 639, column: 9, scope: !3239)
!3254 = !DILocation(line: 643, column: 14, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3239, file: !5, line: 643, column: 9)
!3256 = !DILocation(line: 643, column: 9, scope: !3255)
!3257 = !DILocation(line: 643, column: 9, scope: !3239)
!3258 = !DILocation(line: 644, column: 9, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3255, file: !5, line: 643, column: 22)
!3260 = !DILocation(line: 645, column: 9, scope: !3259)
!3261 = !DILocation(line: 648, column: 14, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3239, file: !5, line: 648, column: 9)
!3263 = !DILocation(line: 648, column: 33, scope: !3262)
!3264 = !DILocation(line: 648, column: 25, scope: !3262)
!3265 = !DILocation(line: 648, column: 9, scope: !3239)
!3266 = !DILocation(line: 649, column: 9, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3262, file: !5, line: 648, column: 45)
!3268 = !DILocation(line: 650, column: 9, scope: !3267)
!3269 = !DILocation(line: 653, column: 10, scope: !3239)
!3270 = !DILocation(line: 653, column: 28, scope: !3239)
!3271 = !DILocation(line: 653, column: 34, scope: !3239)
!3272 = !DILocation(line: 653, column: 5, scope: !3239)
!3273 = !DILocation(line: 654, column: 20, scope: !3239)
!3274 = !DILocation(line: 654, column: 38, scope: !3239)
!3275 = !DILocation(line: 654, column: 44, scope: !3239)
!3276 = !{!879, !553, i64 44}
!3277 = !DILocation(line: 654, column: 15, scope: !3239)
!3278 = !DILocation(line: 0, scope: !457, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 656, column: 5, scope: !3239)
!3280 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !3279)
!3281 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !3279)
!3282 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !3279)
!3283 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !3279)
!3284 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !3279)
!3285 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !3279)
!3286 = !DILocation(line: 0, scope: !471, inlinedAt: !3279)
!3287 = !DILocation(line: 0, scope: !474, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 656, column: 25, scope: !3239)
!3289 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3288)
!3290 = !DILocation(line: 0, scope: !474, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 657, column: 25, scope: !3239)
!3292 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3291)
!3293 = !DILocation(line: 0, scope: !474, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 658, column: 25, scope: !3239)
!3295 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3294)
!3296 = !DILocation(line: 0, scope: !1012, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 658, column: 37, scope: !3239)
!3298 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !3297)
!3299 = !DILocation(line: 0, scope: !474, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 658, column: 45, scope: !3239)
!3301 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3300)
!3302 = !DILocation(line: 0, scope: !474, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 659, column: 25, scope: !3239)
!3304 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3303)
!3305 = !DILocation(line: 0, scope: !1012, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 659, column: 37, scope: !3239)
!3307 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !3306)
!3308 = !DILocation(line: 0, scope: !474, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 659, column: 45, scope: !3239)
!3310 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3309)
!3311 = !DILocation(line: 0, scope: !483, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 656, column: 5, scope: !3239)
!3313 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !3312)
!3314 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !3312)
!3315 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !3312)
!3316 = !DILocation(line: 0, scope: !497, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !3312)
!3318 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !3317)
!3319 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !3317)
!3320 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !3317)
!3321 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !3317)
!3322 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !3312)
!3323 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !3312)
!3324 = !DILocation(line: 0, scope: !1067, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 662, column: 1, scope: !3239)
!3326 = !DILocation(line: 20, column: 9, scope: !1072, inlinedAt: !3325)
!3327 = !DILocation(line: 662, column: 1, scope: !3239)
!3328 = distinct !DISubprogram(name: "halide_device_slice", scope: !5, file: !5, line: 664, type: !221, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !3329)
!3329 = !{!3330, !3331, !3332, !3333, !3334, !3335, !3336}
!3330 = !DILocalVariable(name: "user_context", arg: 1, scope: !3328, file: !5, line: 664, type: !82)
!3331 = !DILocalVariable(name: "src", arg: 2, scope: !3328, file: !5, line: 665, type: !217)
!3332 = !DILocalVariable(name: "slice_dim", arg: 3, scope: !3328, file: !5, line: 666, type: !34)
!3333 = !DILocalVariable(name: "slice_pos", arg: 4, scope: !3328, file: !5, line: 666, type: !34)
!3334 = !DILocalVariable(name: "dst", arg: 5, scope: !3328, file: !5, line: 667, type: !195)
!3335 = !DILocalVariable(name: "lock", scope: !3328, file: !5, line: 668, type: !952)
!3336 = !DILocalVariable(name: "err", scope: !3328, file: !5, line: 685, type: !34)
!3337 = !DILocation(line: 0, scope: !3328)
!3338 = !DILocation(line: 0, scope: !967, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 668, column: 21, scope: !3328)
!3340 = !DILocation(line: 16, column: 9, scope: !974, inlinedAt: !3339)
!3341 = !DILocation(line: 670, column: 15, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3328, file: !5, line: 670, column: 9)
!3343 = !DILocation(line: 670, column: 10, scope: !3342)
!3344 = !DILocation(line: 670, column: 9, scope: !3328)
!3345 = !DILocation(line: 674, column: 14, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3328, file: !5, line: 674, column: 9)
!3347 = !DILocation(line: 674, column: 9, scope: !3346)
!3348 = !DILocation(line: 674, column: 9, scope: !3328)
!3349 = !DILocation(line: 675, column: 9, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3346, file: !5, line: 674, column: 22)
!3351 = !DILocation(line: 676, column: 9, scope: !3350)
!3352 = !DILocation(line: 679, column: 14, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3328, file: !5, line: 679, column: 9)
!3354 = !DILocation(line: 679, column: 33, scope: !3353)
!3355 = !DILocation(line: 679, column: 44, scope: !3353)
!3356 = !DILocation(line: 679, column: 25, scope: !3353)
!3357 = !DILocation(line: 679, column: 9, scope: !3328)
!3358 = !DILocation(line: 680, column: 9, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3353, file: !5, line: 679, column: 49)
!3360 = !DILocation(line: 681, column: 9, scope: !3359)
!3361 = !DILocation(line: 684, column: 10, scope: !3328)
!3362 = !DILocation(line: 684, column: 28, scope: !3328)
!3363 = !DILocation(line: 684, column: 34, scope: !3328)
!3364 = !DILocation(line: 684, column: 5, scope: !3328)
!3365 = !DILocation(line: 685, column: 20, scope: !3328)
!3366 = !DILocation(line: 685, column: 38, scope: !3328)
!3367 = !DILocation(line: 685, column: 44, scope: !3328)
!3368 = !{!879, !553, i64 48}
!3369 = !DILocation(line: 685, column: 15, scope: !3328)
!3370 = !DILocation(line: 0, scope: !457, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 687, column: 5, scope: !3328)
!3372 = !DILocation(line: 44, column: 27, scope: !466, inlinedAt: !3371)
!3373 = !DILocation(line: 48, column: 13, scope: !471, inlinedAt: !3371)
!3374 = !DILocation(line: 48, column: 13, scope: !469, inlinedAt: !3371)
!3375 = !DILocation(line: 49, column: 23, scope: !493, inlinedAt: !3371)
!3376 = !DILocation(line: 50, column: 18, scope: !493, inlinedAt: !3371)
!3377 = !DILocation(line: 51, column: 9, scope: !493, inlinedAt: !3371)
!3378 = !DILocation(line: 0, scope: !471, inlinedAt: !3371)
!3379 = !DILocation(line: 0, scope: !474, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 687, column: 25, scope: !3328)
!3381 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3380)
!3382 = !DILocation(line: 0, scope: !474, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 688, column: 25, scope: !3328)
!3384 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3383)
!3385 = !DILocation(line: 0, scope: !474, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 689, column: 25, scope: !3328)
!3387 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3386)
!3388 = !DILocation(line: 0, scope: !1012, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 689, column: 37, scope: !3328)
!3390 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !3389)
!3391 = !DILocation(line: 0, scope: !474, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 689, column: 45, scope: !3328)
!3393 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3392)
!3394 = !DILocation(line: 0, scope: !474, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 690, column: 25, scope: !3328)
!3396 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3395)
!3397 = !DILocation(line: 0, scope: !1012, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 690, column: 37, scope: !3328)
!3399 = !DILocation(line: 114, column: 15, scope: !1012, inlinedAt: !3398)
!3400 = !DILocation(line: 0, scope: !474, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 690, column: 45, scope: !3328)
!3402 = !DILocation(line: 62, column: 19, scope: !480, inlinedAt: !3401)
!3403 = !DILocation(line: 0, scope: !483, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 687, column: 5, scope: !3328)
!3405 = !DILocation(line: 167, column: 13, scope: !490, inlinedAt: !3404)
!3406 = !DILocation(line: 168, column: 13, scope: !488, inlinedAt: !3404)
!3407 = !DILocation(line: 169, column: 9, scope: !488, inlinedAt: !3404)
!3408 = !DILocation(line: 0, scope: !497, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 170, column: 13, scope: !501, inlinedAt: !3404)
!3410 = !DILocation(line: 163, column: 81, scope: !497, inlinedAt: !3409)
!3411 = !DILocation(line: 163, column: 87, scope: !497, inlinedAt: !3409)
!3412 = !DILocation(line: 163, column: 77, scope: !497, inlinedAt: !3409)
!3413 = !DILocation(line: 163, column: 15, scope: !497, inlinedAt: !3409)
!3414 = !DILocation(line: 174, column: 17, scope: !507, inlinedAt: !3404)
!3415 = !DILocation(line: 181, column: 13, scope: !511, inlinedAt: !3404)
!3416 = !DILocation(line: 0, scope: !1067, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 693, column: 1, scope: !3328)
!3418 = !DILocation(line: 20, column: 9, scope: !1072, inlinedAt: !3417)
!3419 = !DILocation(line: 693, column: 1, scope: !3328)
!3420 = distinct !DISubprogram(name: "halide_default_device_release_crop", scope: !5, file: !5, line: 695, type: !198, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !3421)
!3421 = !{!3422, !3423}
!3422 = !DILocalVariable(name: "user_context", arg: 1, scope: !3420, file: !5, line: 695, type: !82)
!3423 = !DILocalVariable(name: "buf", arg: 2, scope: !3420, file: !5, line: 696, type: !195)
!3424 = !DILocation(line: 0, scope: !3420)
!3425 = !DILocation(line: 697, column: 15, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3420, file: !5, line: 697, column: 9)
!3427 = !DILocation(line: 697, column: 10, scope: !3426)
!3428 = !DILocation(line: 697, column: 9, scope: !3420)
!3429 = !DILocation(line: 700, column: 5, scope: !3420)
!3430 = !DILocation(line: 701, column: 5, scope: !3420)
!3431 = !DILocation(line: 702, column: 1, scope: !3420)
!3432 = distinct !DISubprogram(name: "halide_device_release_crop", scope: !5, file: !5, line: 704, type: !198, scopeLine: 705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !3433)
!3433 = !{!3434, !3435, !3436, !3439, !3440}
!3434 = !DILocalVariable(name: "user_context", arg: 1, scope: !3432, file: !5, line: 704, type: !82)
!3435 = !DILocalVariable(name: "buf", arg: 2, scope: !3432, file: !5, line: 705, type: !195)
!3436 = !DILocalVariable(name: "lock", scope: !3437, file: !5, line: 707, type: !952)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !5, line: 706, column: 22)
!3438 = distinct !DILexicalBlock(scope: !3432, file: !5, line: 706, column: 9)
!3439 = !DILocalVariable(name: "interface", scope: !3437, file: !5, line: 708, type: !187)
!3440 = !DILocalVariable(name: "result", scope: !3437, file: !5, line: 709, type: !34)
!3441 = !DILocation(line: 0, scope: !3432)
!3442 = !DILocation(line: 706, column: 14, scope: !3438)
!3443 = !DILocation(line: 706, column: 9, scope: !3438)
!3444 = !DILocation(line: 706, column: 9, scope: !3432)
!3445 = !DILocation(line: 0, scope: !967, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 707, column: 25, scope: !3437)
!3447 = !DILocation(line: 0, scope: !3437)
!3448 = !DILocation(line: 16, column: 9, scope: !974, inlinedAt: !3446)
!3449 = !DILocation(line: 708, column: 66, scope: !3437)
!3450 = !DILocation(line: 709, column: 33, scope: !3437)
!3451 = !DILocation(line: 709, column: 39, scope: !3437)
!3452 = !{!879, !553, i64 52}
!3453 = !DILocation(line: 709, column: 22, scope: !3437)
!3454 = !DILocation(line: 710, column: 21, scope: !3437)
!3455 = !DILocation(line: 711, column: 20, scope: !3437)
!3456 = !DILocation(line: 711, column: 26, scope: !3437)
!3457 = !DILocation(line: 711, column: 9, scope: !3437)
!3458 = !DILocation(line: 712, column: 31, scope: !3437)
!3459 = !DILocation(line: 0, scope: !1067, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 714, column: 5, scope: !3438)
!3461 = !DILocation(line: 20, column: 9, scope: !1072, inlinedAt: !3460)
!3462 = !DILocation(line: 716, column: 1, scope: !3432)
!3463 = !DISubprogram(name: "halide_mutex_lock", scope: !7, file: !7, line: 133, type: !3464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{null, !956}
!3466 = !DISubprogram(name: "halide_error_buffer_is_null", scope: !7, file: !7, line: 1245, type: !3467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!34, !82, !106}
!3469 = !DISubprogram(name: "halide_error_device_interface_no_device", scope: !7, file: !7, line: 1243, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!3470 = !DISubprogram(name: "halide_error_host_and_device_dirty", scope: !7, file: !7, line: 1244, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!3471 = !DISubprogram(name: "halide_mutex_unlock", scope: !7, file: !7, line: 134, type: !3464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!3472 = !DISubprogram(name: "malloc", scope: !12, file: !12, line: 87, type: !3473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!82, !14}
!3475 = !DISubprogram(name: "free", scope: !12, file: !12, line: 86, type: !3476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{null, !82}
!3478 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !7, file: !7, line: 973, type: !3479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!34, !82, !136, !121}
!3481 = !DISubprogram(name: "halide_string_to_string", scope: !12, file: !12, line: 120, type: !3482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!89, !89, !89, !106}
!3484 = !DISubprogram(name: "halide_pointer_to_string", scope: !12, file: !12, line: 124, type: !3485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!89, !89, !89, !136}
!3487 = !DISubprogram(name: "halide_buffer_to_string", scope: !12, file: !12, line: 125, type: !3488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!89, !89, !89, !217}
!3490 = !DISubprogram(name: "halide_int64_to_string", scope: !12, file: !12, line: 122, type: !3491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !438)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!89, !89, !89, !112, !34}
