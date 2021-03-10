; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/device_interface.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/device_interface.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }

@_ZN6Halide7Runtime8Internal17device_copy_mutexE = weak global %struct.halide_mutex zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"halide_copy_to_host\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"halide_copy_to_device\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"halide_copy_to_device does not support switching interfaces\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"halide_device_sync\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"halide_device_malloc\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"halide_device_malloc doesn't support switching interfaces\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"halide_device_free\00", align 1
@.str.22 = private unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/device_interface.cpp:252 Assert failed: buf->device == 0\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"halide_device_and_host_malloc\00", align 1
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
@.str.42 = private unnamed_addr constant [64 x i8] c"halide_buffer_copy does not support switching device interfaces\00", align 1
@.str.58 = private unnamed_addr constant [44 x i8] c"device_interface does not support cropping\0A\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"device_interface does not support slicing\0A\00", align 1
@.str.60 = private unnamed_addr constant [52 x i8] c"destination buffer already has a device allocation\0A\00", align 1
@.str.61 = private unnamed_addr constant [48 x i8] c"src and dst must have identical dimensionality\0A\00", align 1
@.str.64 = private unnamed_addr constant [52 x i8] c"dst must have exactly one fewer dimension than src\0A\00", align 1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8
  %10 = load i64, i64* %9, align 8, !tbaa !3
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1
  %14 = icmp sgt i32 %7, 0
  br i1 %14, label %6, label %27, !llvm.loop !7

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19
  %21 = load i64, i64* %20, align 8, !tbaa !3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %39

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %29 = load i64, i64* %28, align 8, !tbaa !9
  %30 = add i64 %29, %2
  %31 = inttoptr i64 %30 to i8*
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !11
  %34 = add i64 %33, %3
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6
  %37 = load i64, i64* %36, align 8, !tbaa !12
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #6
  br label %50

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %2, %23 ], [ %44, %39 ]
  %42 = phi i64 [ %3, %23 ], [ %46, %39 ]
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %41, i64 %42) #7
  %43 = load i64, i64* %25, align 8, !tbaa !3
  %44 = add i64 %43, %41
  %45 = load i64, i64* %26, align 8, !tbaa !3
  %46 = add i64 %45, %42
  %47 = add nuw i64 %40, 1
  %48 = load i64, i64* %20, align 8, !tbaa !3
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %39, label %50, !llvm.loop !13

50:                                               ; preds = %39, %18, %27
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !11
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !14
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #7
  br label %11

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #8
  br i1 %2, label %8, label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %10 = load i8*, i8** %9, align 8, !tbaa !15
  %11 = ptrtoint i8* %10 to i64
  br label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %14 = load i64, i64* %13, align 8, !tbaa !22
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i64 [ %11, %8 ], [ %14, %12 ]
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 0
  store i64 %16, i64* %17, align 8, !tbaa !9
  br i1 %4, label %18, label %22

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8, !tbaa !15
  %21 = ptrtoint i8* %20 to i64
  br label %25

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !22
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i64 [ %21, %18 ], [ %24, %22 ]
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 1
  store i64 %26, i64* %27, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %29 = load i8, i8* %28, align 1, !tbaa !23
  %30 = zext i8 %29 to i32
  %31 = add nuw nsw i32 %30, 7
  %32 = lshr i32 %31, 3
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 6
  store i64 %33, i64* %34, align 8, !tbaa !12
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 0
  store i64 1, i64* %35, align 8, !tbaa !3
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 0
  store i64 0, i64* %36, align 8, !tbaa !3
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 0
  store i64 0, i64* %37, align 8, !tbaa !3
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 1
  store i64 1, i64* %38, align 8, !tbaa !3
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 1
  store i64 0, i64* %39, align 8, !tbaa !3
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 1
  store i64 0, i64* %40, align 8, !tbaa !3
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 2
  store i64 1, i64* %41, align 8, !tbaa !3
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 2
  store i64 0, i64* %42, align 8, !tbaa !3
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 2
  store i64 0, i64* %43, align 8, !tbaa !3
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 3
  store i64 1, i64* %44, align 8, !tbaa !3
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 3
  store i64 0, i64* %45, align 8, !tbaa !3
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 3
  store i64 0, i64* %46, align 8, !tbaa !3
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 4
  store i64 1, i64* %47, align 8, !tbaa !3
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 4
  store i64 0, i64* %48, align 8, !tbaa !3
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 4
  store i64 0, i64* %49, align 8, !tbaa !3
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 5
  store i64 1, i64* %50, align 8, !tbaa !3
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 5
  store i64 0, i64* %51, align 8, !tbaa !3
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 5
  store i64 0, i64* %52, align 8, !tbaa !3
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 6
  store i64 1, i64* %53, align 8, !tbaa !3
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 6
  store i64 0, i64* %54, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 6
  store i64 0, i64* %55, align 8, !tbaa !3
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 7
  store i64 1, i64* %56, align 8, !tbaa !3
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 7
  store i64 0, i64* %57, align 8, !tbaa !3
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 7
  store i64 0, i64* %58, align 8, !tbaa !3
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 8
  store i64 1, i64* %59, align 8, !tbaa !3
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 8
  store i64 0, i64* %60, align 8, !tbaa !3
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 8
  store i64 0, i64* %61, align 8, !tbaa !3
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 9
  store i64 1, i64* %62, align 8, !tbaa !3
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 9
  store i64 0, i64* %63, align 8, !tbaa !3
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 9
  store i64 0, i64* %64, align 8, !tbaa !3
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 10
  store i64 1, i64* %65, align 8, !tbaa !3
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 10
  store i64 0, i64* %66, align 8, !tbaa !3
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 10
  store i64 0, i64* %67, align 8, !tbaa !3
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 11
  store i64 1, i64* %68, align 8, !tbaa !3
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 11
  store i64 0, i64* %69, align 8, !tbaa !3
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 11
  store i64 0, i64* %70, align 8, !tbaa !3
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 12
  store i64 1, i64* %71, align 8, !tbaa !3
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 12
  store i64 0, i64* %72, align 8, !tbaa !3
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 12
  store i64 0, i64* %73, align 8, !tbaa !3
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 13
  store i64 1, i64* %74, align 8, !tbaa !3
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 13
  store i64 0, i64* %75, align 8, !tbaa !3
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 13
  store i64 0, i64* %76, align 8, !tbaa !3
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 14
  store i64 1, i64* %77, align 8, !tbaa !3
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 14
  store i64 0, i64* %78, align 8, !tbaa !3
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 14
  store i64 0, i64* %79, align 8, !tbaa !3
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 15
  store i64 1, i64* %80, align 8, !tbaa !3
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 15
  store i64 0, i64* %81, align 8, !tbaa !3
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 15
  store i64 0, i64* %82, align 8, !tbaa !3
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 2
  %84 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %85 = load i32, i32* %84, align 4, !tbaa !24
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %25
  %88 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %89 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %88, align 8, !tbaa !25
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !25
  %92 = zext i32 %85 to i64
  br label %100

93:                                               ; preds = %100, %25
  %94 = phi i64 [ 0, %25 ], [ %113, %100 ]
  %95 = load i64, i64* %34, align 8, !tbaa !12
  %96 = mul i64 %94, %95
  store i64 %96, i64* %83, align 8, !tbaa !14
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5
  %98 = load i32, i32* %97, align 4, !tbaa !24
  %99 = icmp eq i32 %85, %98
  br i1 %99, label %116, label %125

100:                                              ; preds = %87, %100
  %101 = phi i64 [ 0, %87 ], [ %114, %100 ]
  %102 = phi i64 [ 0, %87 ], [ %113, %100 ]
  %103 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 2
  %104 = load i32, i32* %103, align 4, !tbaa !26
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i64 %101, i32 0
  %107 = load i32, i32* %106, align 4, !tbaa !28
  %108 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 0
  %109 = load i32, i32* %108, align 4, !tbaa !28
  %110 = sub nsw i32 %107, %109
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, %105
  %113 = add i64 %112, %102
  %114 = add nuw nsw i64 %101, 1
  %115 = icmp eq i64 %114, %92
  br i1 %115, label %93, label %100, !llvm.loop !29

116:                                              ; preds = %93
  %117 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1
  %118 = load i8, i8* %117, align 1, !tbaa !23
  %119 = zext i8 %118 to i32
  %120 = add nuw nsw i32 %119, 7
  %121 = lshr i32 %120, 3
  %122 = icmp ne i32 %32, %121
  %123 = icmp sgt i32 %85, 16
  %124 = or i1 %123, %122
  br i1 %124, label %125, label %127

125:                                              ; preds = %116, %93
  %126 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %126, i8 0, i64 416, i1 false)
  br label %253

127:                                              ; preds = %116
  %128 = icmp eq i64 %95, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %127
  br i1 %86, label %130, label %251

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %132 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %131, align 8, !tbaa !25
  %133 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %134 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %133, align 8, !tbaa !25
  %135 = zext i32 %85 to i64
  br label %144

136:                                              ; preds = %127
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i64 416, i1 false)
  br label %253

138:                                              ; preds = %176
  %139 = load i64, i64* %34, align 8, !tbaa !12
  %140 = load i64, i64* %36, align 8, !tbaa !3
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %251

142:                                              ; preds = %138
  %143 = load i64, i64* %37, align 8, !tbaa !3
  br label %198

144:                                              ; preds = %130, %176
  %145 = phi i64 [ 0, %130 ], [ %183, %176 ]
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 2
  %147 = load i32, i32* %146, align 4, !tbaa !26
  %148 = sext i32 %147 to i64
  %149 = mul nsw i64 %148, %33
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %134, i64 %145, i32 2
  %151 = load i32, i32* %150, align 4, !tbaa !26
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %152, %33
  %154 = icmp eq i64 %145, 0
  br i1 %154, label %170, label %155

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %155
  %158 = trunc i64 %145 to i32
  br label %170

159:                                              ; preds = %155, %164
  %160 = phi i64 [ %165, %164 ], [ 0, %155 ]
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %160
  %162 = load i64, i64* %161, align 8, !tbaa !3
  %163 = icmp ult i64 %149, %162
  br i1 %163, label %167, label %164

164:                                              ; preds = %159
  %165 = add nuw nsw i64 %160, 1
  %166 = icmp eq i64 %165, %145
  br i1 %166, label %167, label %159, !llvm.loop !30

167:                                              ; preds = %159, %164
  %168 = phi i64 [ %145, %164 ], [ %160, %159 ]
  %169 = trunc i64 %168 to i32
  br label %170

170:                                              ; preds = %157, %167, %144
  %171 = phi i32 [ 0, %144 ], [ %169, %167 ], [ %158, %157 ]
  %172 = zext i32 %171 to i64
  %173 = icmp ugt i64 %145, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = sext i32 %171 to i64
  br label %185

176:                                              ; preds = %185, %170
  %177 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 1
  %178 = load i32, i32* %177, align 4, !tbaa !31
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %172
  store i64 %179, i64* %180, align 8, !tbaa !3
  %181 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %172
  store i64 %149, i64* %181, align 8, !tbaa !3
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %172
  store i64 %153, i64* %182, align 8, !tbaa !3
  %183 = add nuw nsw i64 %145, 1
  %184 = icmp eq i64 %183, %135
  br i1 %184, label %138, label %144, !llvm.loop !32

185:                                              ; preds = %174, %185
  %186 = phi i64 [ %145, %174 ], [ %187, %185 ]
  %187 = add nsw i64 %186, -1
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %187
  %189 = load i64, i64* %188, align 8, !tbaa !3
  %190 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %186
  store i64 %189, i64* %190, align 8, !tbaa !3
  %191 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %187
  %192 = load i64, i64* %191, align 8, !tbaa !3
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %186
  store i64 %192, i64* %193, align 8, !tbaa !3
  %194 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %187
  %195 = load i64, i64* %194, align 8, !tbaa !3
  %196 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %186
  store i64 %195, i64* %196, align 8, !tbaa !3
  %197 = icmp sgt i64 %187, %175
  br i1 %197, label %185, label %176, !llvm.loop !33

198:                                              ; preds = %142, %202
  %199 = phi i64 [ %143, %142 ], [ %207, %202 ]
  %200 = phi i64 [ %140, %142 ], [ %204, %202 ]
  %201 = icmp eq i64 %200, %199
  br i1 %201, label %202, label %251

202:                                              ; preds = %198
  %203 = load i64, i64* %35, align 8, !tbaa !3
  %204 = mul i64 %203, %199
  store i64 %204, i64* %34, align 8, !tbaa !12
  %205 = load i64, i64* %38, align 8, !tbaa !3
  store i64 %205, i64* %35, align 8, !tbaa !3
  %206 = load i64, i64* %39, align 8, !tbaa !3
  store i64 %206, i64* %36, align 8, !tbaa !3
  %207 = load i64, i64* %40, align 8, !tbaa !3
  store i64 %207, i64* %37, align 8, !tbaa !3
  %208 = load i64, i64* %41, align 8, !tbaa !3
  store i64 %208, i64* %38, align 8, !tbaa !3
  %209 = load i64, i64* %42, align 8, !tbaa !3
  store i64 %209, i64* %39, align 8, !tbaa !3
  %210 = load i64, i64* %43, align 8, !tbaa !3
  store i64 %210, i64* %40, align 8, !tbaa !3
  %211 = load i64, i64* %44, align 8, !tbaa !3
  store i64 %211, i64* %41, align 8, !tbaa !3
  %212 = load i64, i64* %45, align 8, !tbaa !3
  store i64 %212, i64* %42, align 8, !tbaa !3
  %213 = load i64, i64* %46, align 8, !tbaa !3
  store i64 %213, i64* %43, align 8, !tbaa !3
  %214 = load i64, i64* %47, align 8, !tbaa !3
  store i64 %214, i64* %44, align 8, !tbaa !3
  %215 = load i64, i64* %48, align 8, !tbaa !3
  store i64 %215, i64* %45, align 8, !tbaa !3
  %216 = load i64, i64* %49, align 8, !tbaa !3
  store i64 %216, i64* %46, align 8, !tbaa !3
  %217 = load i64, i64* %50, align 8, !tbaa !3
  store i64 %217, i64* %47, align 8, !tbaa !3
  %218 = load i64, i64* %51, align 8, !tbaa !3
  store i64 %218, i64* %48, align 8, !tbaa !3
  %219 = load i64, i64* %52, align 8, !tbaa !3
  store i64 %219, i64* %49, align 8, !tbaa !3
  %220 = load i64, i64* %53, align 8, !tbaa !3
  store i64 %220, i64* %50, align 8, !tbaa !3
  %221 = load i64, i64* %54, align 8, !tbaa !3
  store i64 %221, i64* %51, align 8, !tbaa !3
  %222 = load i64, i64* %55, align 8, !tbaa !3
  store i64 %222, i64* %52, align 8, !tbaa !3
  %223 = load i64, i64* %56, align 8, !tbaa !3
  store i64 %223, i64* %53, align 8, !tbaa !3
  %224 = load i64, i64* %57, align 8, !tbaa !3
  store i64 %224, i64* %54, align 8, !tbaa !3
  %225 = load i64, i64* %58, align 8, !tbaa !3
  store i64 %225, i64* %55, align 8, !tbaa !3
  %226 = load i64, i64* %59, align 8, !tbaa !3
  store i64 %226, i64* %56, align 8, !tbaa !3
  %227 = load i64, i64* %60, align 8, !tbaa !3
  store i64 %227, i64* %57, align 8, !tbaa !3
  %228 = load i64, i64* %61, align 8, !tbaa !3
  store i64 %228, i64* %58, align 8, !tbaa !3
  %229 = load i64, i64* %62, align 8, !tbaa !3
  store i64 %229, i64* %59, align 8, !tbaa !3
  %230 = load i64, i64* %63, align 8, !tbaa !3
  store i64 %230, i64* %60, align 8, !tbaa !3
  %231 = load i64, i64* %64, align 8, !tbaa !3
  store i64 %231, i64* %61, align 8, !tbaa !3
  %232 = load i64, i64* %65, align 8, !tbaa !3
  store i64 %232, i64* %62, align 8, !tbaa !3
  %233 = load i64, i64* %66, align 8, !tbaa !3
  store i64 %233, i64* %63, align 8, !tbaa !3
  %234 = load i64, i64* %67, align 8, !tbaa !3
  store i64 %234, i64* %64, align 8, !tbaa !3
  %235 = load i64, i64* %68, align 8, !tbaa !3
  store i64 %235, i64* %65, align 8, !tbaa !3
  %236 = load i64, i64* %69, align 8, !tbaa !3
  store i64 %236, i64* %66, align 8, !tbaa !3
  %237 = load i64, i64* %70, align 8, !tbaa !3
  store i64 %237, i64* %67, align 8, !tbaa !3
  %238 = load i64, i64* %71, align 8, !tbaa !3
  store i64 %238, i64* %68, align 8, !tbaa !3
  %239 = load i64, i64* %72, align 8, !tbaa !3
  store i64 %239, i64* %69, align 8, !tbaa !3
  %240 = load i64, i64* %73, align 8, !tbaa !3
  store i64 %240, i64* %70, align 8, !tbaa !3
  %241 = load i64, i64* %74, align 8, !tbaa !3
  store i64 %241, i64* %71, align 8, !tbaa !3
  %242 = load i64, i64* %75, align 8, !tbaa !3
  store i64 %242, i64* %72, align 8, !tbaa !3
  %243 = load i64, i64* %76, align 8, !tbaa !3
  store i64 %243, i64* %73, align 8, !tbaa !3
  %244 = load i64, i64* %77, align 8, !tbaa !3
  store i64 %244, i64* %74, align 8, !tbaa !3
  %245 = load i64, i64* %78, align 8, !tbaa !3
  store i64 %245, i64* %75, align 8, !tbaa !3
  %246 = load i64, i64* %79, align 8, !tbaa !3
  store i64 %246, i64* %76, align 8, !tbaa !3
  %247 = load i64, i64* %80, align 8, !tbaa !3
  store i64 %247, i64* %77, align 8, !tbaa !3
  %248 = load i64, i64* %81, align 8, !tbaa !3
  store i64 %248, i64* %78, align 8, !tbaa !3
  %249 = load i64, i64* %82, align 8, !tbaa !3
  store i64 %249, i64* %79, align 8, !tbaa !3
  store i64 1, i64* %80, align 8, !tbaa !3
  store i64 0, i64* %81, align 8, !tbaa !3
  store i64 0, i64* %82, align 8, !tbaa !3
  %250 = icmp eq i64 %204, %206
  br i1 %250, label %198, label %251, !llvm.loop !34

251:                                              ; preds = %198, %202, %129, %138
  %252 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %252, i8* nonnull align 8 dereferenceable(416) %7, i64 416, i1 false), !tbaa.struct !35
  br label %253

253:                                              ; preds = %251, %136, %125
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #8
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #7
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #7
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %4 = load i64, i64* %3, align 8, !tbaa !37
  %5 = and i64 %4, 2
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %9 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %8, align 8, !tbaa !38
  %10 = and i64 %4, 1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = icmp eq %struct.halide_device_interface_t* %9, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %9, i64 0, i32 15
  %16 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %15, align 8, !tbaa !39
  %17 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %16, i64 0, i32 6
  %18 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %17, align 8, !tbaa !41
  %19 = tail call i32 %18(i8* %0, %struct.halide_buffer_t* nonnull %1) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8, !tbaa !37
  %23 = and i64 %22, -3
  store i64 %23, i64* %3, align 8, !tbaa !37
  %24 = tail call i32 @halide_msan_annotate_buffer_is_initialized(i8* %0, %struct.halide_buffer_t* nonnull %1) #6
  br label %25

25:                                               ; preds = %14, %12, %7, %21, %2
  %26 = phi i32 [ 0, %2 ], [ 0, %21 ], [ -14, %7 ], [ -19, %12 ], [ -14, %14 ]
  ret i32 %26
}

declare i32 @halide_msan_annotate_buffer_is_initialized(i8*, %struct.halide_buffer_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @halide_device_release(i8* %0, %struct.halide_device_interface_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %1, i64 0, i32 15
  %4 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %4, i64 0, i32 5
  %6 = load i32 (i8*)*, i32 (i8*)** %5, align 8, !tbaa !43
  %7 = tail call i32 %6(i8* %0) #6
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #6
  %3 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)) #6
  br label %29

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !38
  %9 = icmp eq %struct.halide_device_interface_t* %8, null
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !22
  %12 = icmp eq i64 %11, 0
  %13 = xor i1 %9, true
  %14 = or i1 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = tail call i32 @halide_error_no_device_interface(i8* %0) #6
  br label %29

17:                                               ; preds = %6
  %18 = xor i1 %12, true
  %19 = or i1 %9, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #6
  br label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %24 = load i64, i64* %23, align 8, !tbaa !37
  %25 = and i64 %24, 3
  %26 = icmp eq i64 %25, 3
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #6
  br label %29

29:                                               ; preds = %4, %15, %20, %27
  %30 = phi i32 [ %5, %4 ], [ %21, %20 ], [ %16, %15 ], [ %28, %27 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22, %29
  %33 = tail call i32 @_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* %1) #7
  br label %34

34:                                               ; preds = %29, %32
  %35 = phi i32 [ %33, %32 ], [ %30, %29 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #6
  ret i32 %35
}

; Function Attrs: nounwind mustprogress
define weak i32 @copy_to_device_already_locked(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0)) #6
  br label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %9 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %8, align 8, !tbaa !38
  %10 = icmp eq %struct.halide_device_interface_t* %9, null
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !22
  %13 = icmp eq i64 %12, 0
  %14 = xor i1 %10, true
  %15 = or i1 %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = tail call i32 @halide_error_no_device_interface(i8* %0) #6
  br label %30

18:                                               ; preds = %7
  %19 = xor i1 %13, true
  %20 = or i1 %10, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #6
  br label %30

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %25 = load i64, i64* %24, align 8, !tbaa !37
  %26 = and i64 %25, 3
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #6
  br label %30

30:                                               ; preds = %5, %16, %21, %28
  %31 = phi i32 [ %6, %5 ], [ %22, %21 ], [ %17, %16 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %23, %30
  %34 = icmp eq %struct.halide_device_interface_t* %2, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %37 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %36, align 8, !tbaa !38
  %38 = icmp eq %struct.halide_device_interface_t* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = tail call i32 @halide_error_no_device_interface(i8* %0) #6
  br label %72

41:                                               ; preds = %35, %33
  %42 = phi %struct.halide_device_interface_t* [ %2, %33 ], [ %37, %35 ]
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %44 = load i64, i64* %43, align 8, !tbaa !22
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %48 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %47, align 8, !tbaa !38
  %49 = icmp eq %struct.halide_device_interface_t* %48, %42
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0)) #6
  br label %72

51:                                               ; preds = %41
  %52 = tail call i32 @halide_device_malloc(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* nonnull %42) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %46, %51
  %55 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %56 = load i64, i64* %55, align 8, !tbaa !37
  %57 = and i64 %56, 1
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %54
  %60 = and i64 %56, 2
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %42, i64 0, i32 15
  %64 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %63, align 8, !tbaa !39
  %65 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %64, i64 0, i32 7
  %66 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %65, align 8, !tbaa !44
  %67 = tail call i32 %66(i8* %0, %struct.halide_buffer_t* nonnull %1) #6
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i64, i64* %55, align 8, !tbaa !37
  %71 = and i64 %70, -2
  store i64 %71, i64* %55, align 8, !tbaa !37
  br label %72

72:                                               ; preds = %54, %62, %59, %51, %69, %30, %50, %39
  %73 = phi i32 [ %40, %39 ], [ -42, %50 ], [ %31, %30 ], [ 0, %69 ], [ %52, %51 ], [ -15, %59 ], [ -15, %62 ], [ 0, %54 ]
  ret i32 %73
}

declare i32 @halide_error_no_device_interface(i8*) local_unnamed_addr #2

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_device_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0)) #6
  br label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %9 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %8, align 8, !tbaa !38
  %10 = icmp eq %struct.halide_device_interface_t* %9, null
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !22
  %13 = icmp eq i64 %12, 0
  %14 = xor i1 %10, true
  %15 = or i1 %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = tail call i32 @halide_error_no_device_interface(i8* %0) #6
  br label %30

18:                                               ; preds = %7
  %19 = xor i1 %13, true
  %20 = or i1 %10, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #6
  br label %30

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %25 = load i64, i64* %24, align 8, !tbaa !37
  %26 = and i64 %25, 3
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #6
  br label %30

30:                                               ; preds = %5, %16, %21, %28
  %31 = phi i32 [ %6, %5 ], [ %22, %21 ], [ %17, %16 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %35 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %34, align 8, !tbaa !38
  br label %36

36:                                               ; preds = %33, %23
  %37 = phi %struct.halide_device_interface_t* [ %35, %33 ], [ %9, %23 ]
  %38 = icmp eq %struct.halide_device_interface_t* %37, null
  %39 = icmp eq %struct.halide_device_interface_t* %37, %2
  %40 = or i1 %38, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i64 0, i64 0)) #6
  br label %56

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i64 0, i32 15
  %44 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %43, align 8, !tbaa !39
  %45 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %44, i64 0, i32 0
  %46 = load void ()*, void ()** %45, align 8, !tbaa !45
  tail call void %46() #6
  %47 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %43, align 8, !tbaa !39
  %48 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %47, i64 0, i32 2
  %49 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %48, align 8, !tbaa !46
  %50 = tail call i32 %49(i8* %0, %struct.halide_buffer_t* nonnull %1) #6
  %51 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %43, align 8, !tbaa !39
  %52 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %51, i64 0, i32 1
  %53 = load void ()*, void ()** %52, align 8, !tbaa !47
  tail call void %53() #6
  %54 = icmp eq i32 %50, 0
  %55 = select i1 %54, i32 0, i32 -16
  ret i32 %55

56:                                               ; preds = %41, %30
  %57 = phi i32 [ %31, %30 ], [ -42, %41 ]
  ret i32 %57
}

; Function Attrs: nounwind
define weak i32 @halide_copy_to_device(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #4 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #6
  %4 = tail call i32 @copy_to_device_already_locked(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) #7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #6
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_device_sync(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0)) #6
  br label %29

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !38
  %9 = icmp eq %struct.halide_device_interface_t* %8, null
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !22
  %12 = icmp eq i64 %11, 0
  %13 = xor i1 %9, true
  %14 = or i1 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = tail call i32 @halide_error_no_device_interface(i8* %0) #6
  br label %29

17:                                               ; preds = %6
  %18 = xor i1 %12, true
  %19 = or i1 %9, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #6
  br label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %24 = load i64, i64* %23, align 8, !tbaa !37
  %25 = and i64 %24, 3
  %26 = icmp eq i64 %25, 3
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #6
  br label %29

29:                                               ; preds = %4, %15, %20, %27
  %30 = phi i32 [ %5, %4 ], [ %21, %20 ], [ %16, %15 ], [ %28, %27 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %34 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %33, align 8, !tbaa !38
  br label %35

35:                                               ; preds = %32, %22
  %36 = phi %struct.halide_device_interface_t* [ %34, %32 ], [ %8, %22 ]
  %37 = icmp eq %struct.halide_device_interface_t* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = tail call i32 @halide_error_no_device_interface(i8* %0) #6
  br label %48

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %36, i64 0, i32 15
  %42 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %41, align 8, !tbaa !39
  %43 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %42, i64 0, i32 4
  %44 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %43, align 8, !tbaa !48
  %45 = tail call i32 %44(i8* %0, %struct.halide_buffer_t* nonnull %1) #6
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 0, i32 -17
  ret i32 %47

48:                                               ; preds = %38, %29
  %49 = phi i32 [ %30, %29 ], [ %39, %38 ]
  ret i32 %49
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_device_free(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #6
  br label %29

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !38
  %9 = icmp eq %struct.halide_device_interface_t* %8, null
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !22
  %12 = icmp eq i64 %11, 0
  %13 = xor i1 %9, true
  %14 = or i1 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = tail call i32 @halide_error_no_device_interface(i8* %0) #6
  br label %29

17:                                               ; preds = %6
  %18 = xor i1 %12, true
  %19 = or i1 %9, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #6
  br label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %24 = load i64, i64* %23, align 8, !tbaa !37
  %25 = and i64 %24, 3
  %26 = icmp eq i64 %25, 3
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #6
  br label %29

29:                                               ; preds = %4, %15, %20, %27
  %30 = phi i32 [ %5, %4 ], [ %21, %20 ], [ %16, %15 ], [ %28, %27 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %34 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %33, align 8, !tbaa !38
  br label %35

35:                                               ; preds = %32, %22
  %36 = phi %struct.halide_device_interface_t* [ %34, %32 ], [ %8, %22 ]
  %37 = icmp eq %struct.halide_device_interface_t* %36, null
  br i1 %37, label %57, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %36, i64 0, i32 15
  %40 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %39, align 8, !tbaa !39
  %41 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %40, i64 0, i32 0
  %42 = load void ()*, void ()** %41, align 8, !tbaa !45
  tail call void %42() #6
  %43 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %39, align 8, !tbaa !39
  %44 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %43, i64 0, i32 3
  %45 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %44, align 8, !tbaa !49
  %46 = tail call i32 %45(i8* %0, %struct.halide_buffer_t* nonnull %1) #6
  %47 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %39, align 8, !tbaa !39
  %48 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %47, i64 0, i32 1
  %49 = load void ()*, void ()** %48, align 8, !tbaa !47
  tail call void %49() #6
  %50 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %51 = load i64, i64* %50, align 8, !tbaa !22
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %38
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.22, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %54

54:                                               ; preds = %53, %38
  %55 = icmp eq i32 %46, 0
  %56 = select i1 %55, i32 0, i32 -18
  ret i32 %56

57:                                               ; preds = %35
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %59 = load i64, i64* %58, align 8, !tbaa !37
  %60 = and i64 %59, -3
  store i64 %60, i64* %58, align 8, !tbaa !37
  br label %61

61:                                               ; preds = %57, %29
  %62 = phi i32 [ %30, %29 ], [ 0, %57 ]
  ret i32 %62
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @halide_device_free_as_destructor(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = bitcast i8* %1 to %struct.halide_buffer_t*
  %4 = tail call i32 @halide_device_free(i8* %0, %struct.halide_buffer_t* %3) #7
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0)) #6
  br label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %9 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %8, align 8, !tbaa !38
  %10 = icmp eq %struct.halide_device_interface_t* %9, null
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !22
  %13 = icmp eq i64 %12, 0
  %14 = xor i1 %10, true
  %15 = or i1 %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = tail call i32 @halide_error_no_device_interface(i8* %0) #6
  br label %30

18:                                               ; preds = %7
  %19 = xor i1 %13, true
  %20 = or i1 %10, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #6
  br label %30

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %25 = load i64, i64* %24, align 8, !tbaa !37
  %26 = and i64 %25, 3
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #6
  br label %30

30:                                               ; preds = %5, %16, %21, %28
  %31 = phi i32 [ %6, %5 ], [ %22, %21 ], [ %17, %16 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %35 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %34, align 8, !tbaa !38
  br label %36

36:                                               ; preds = %33, %23
  %37 = phi %struct.halide_device_interface_t* [ %35, %33 ], [ %9, %23 ]
  %38 = icmp eq %struct.halide_device_interface_t* %37, null
  %39 = icmp eq %struct.halide_device_interface_t* %37, %2
  %40 = or i1 %38, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.25, i64 0, i64 0)) #6
  br label %56

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i64 0, i32 15
  %44 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %43, align 8, !tbaa !39
  %45 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %44, i64 0, i32 0
  %46 = load void ()*, void ()** %45, align 8, !tbaa !45
  tail call void %46() #6
  %47 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %43, align 8, !tbaa !39
  %48 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %47, i64 0, i32 8
  %49 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %48, align 8, !tbaa !50
  %50 = tail call i32 %49(i8* %0, %struct.halide_buffer_t* nonnull %1) #6
  %51 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %43, align 8, !tbaa !39
  %52 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %51, i64 0, i32 1
  %53 = load void ()*, void ()** %52, align 8, !tbaa !47
  tail call void %53() #6
  %54 = icmp eq i32 %50, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %42
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0)) #6
  br label %56

56:                                               ; preds = %41, %55, %42, %30
  %57 = phi i32 [ %31, %30 ], [ -42, %41 ], [ -16, %55 ], [ 0, %42 ]
  ret i32 %57
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0)) #6
  br label %29

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !38
  %9 = icmp eq %struct.halide_device_interface_t* %8, null
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !22
  %12 = icmp eq i64 %11, 0
  %13 = xor i1 %9, true
  %14 = or i1 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = tail call i32 @halide_error_no_device_interface(i8* %0) #6
  br label %29

17:                                               ; preds = %6
  %18 = xor i1 %12, true
  %19 = or i1 %9, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #6
  br label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %24 = load i64, i64* %23, align 8, !tbaa !37
  %25 = and i64 %24, 3
  %26 = icmp eq i64 %25, 3
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #6
  br label %29

29:                                               ; preds = %4, %15, %20, %27
  %30 = phi i32 [ %5, %4 ], [ %21, %20 ], [ %16, %15 ], [ %28, %27 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %34 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %33, align 8, !tbaa !38
  br label %35

35:                                               ; preds = %32, %22
  %36 = phi %struct.halide_device_interface_t* [ %34, %32 ], [ %8, %22 ]
  %37 = icmp eq %struct.halide_device_interface_t* %36, null
  br i1 %37, label %57, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %36, i64 0, i32 15
  %40 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %39, align 8, !tbaa !39
  %41 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %40, i64 0, i32 0
  %42 = load void ()*, void ()** %41, align 8, !tbaa !45
  tail call void %42() #6
  %43 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %39, align 8, !tbaa !39
  %44 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %43, i64 0, i32 9
  %45 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %44, align 8, !tbaa !51
  %46 = tail call i32 %45(i8* %0, %struct.halide_buffer_t* nonnull %1) #6
  %47 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %39, align 8, !tbaa !39
  %48 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %47, i64 0, i32 1
  %49 = load void ()*, void ()** %48, align 8, !tbaa !47
  tail call void %49() #6
  %50 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %51 = load i64, i64* %50, align 8, !tbaa !22
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %38
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.28, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %54

54:                                               ; preds = %53, %38
  %55 = icmp eq i32 %46, 0
  %56 = select i1 %55, i32 0, i32 -18
  ret i32 %56

57:                                               ; preds = %35
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %59 = load i8*, i8** %58, align 8, !tbaa !15
  %60 = icmp eq i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void @halide_free(i8* %0, i8* nonnull %59) #6
  store i8* null, i8** %58, align 8, !tbaa !15
  br label %62

62:                                               ; preds = %57, %61
  %63 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %64 = load i64, i64* %63, align 8, !tbaa !37
  %65 = and i64 %64, -3
  store i64 %65, i64* %63, align 8, !tbaa !37
  br label %66

66:                                               ; preds = %62, %29
  %67 = phi i32 [ %30, %29 ], [ 0, %62 ]
  ret i32 %67
}

declare void @halide_free(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0)) #6
  br label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %9 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %8, align 8, !tbaa !38
  %10 = icmp eq %struct.halide_device_interface_t* %9, null
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !22
  %13 = icmp eq i64 %12, 0
  %14 = xor i1 %10, true
  %15 = or i1 %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = tail call i32 @halide_error_no_device_interface(i8* %0) #6
  br label %30

18:                                               ; preds = %7
  %19 = xor i1 %13, true
  %20 = or i1 %10, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #6
  br label %30

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %25 = load i64, i64* %24, align 8, !tbaa !37
  %26 = and i64 %25, 3
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #6
  br label %30

30:                                               ; preds = %5, %16, %21, %28
  %31 = phi i32 [ %6, %5 ], [ %22, %21 ], [ %17, %16 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %101

33:                                               ; preds = %23, %30
  %34 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %35 = load i32, i32* %34, align 4, !tbaa !24
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %39 = load i8, i8* %38, align 1, !tbaa !23
  br label %83

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %42 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %41, align 8, !tbaa !25
  %43 = zext i32 %35 to i64
  br label %44

44:                                               ; preds = %58, %40
  %45 = phi i64 [ 0, %40 ], [ %60, %58 ]
  %46 = phi i64 [ 0, %40 ], [ %59, %58 ]
  %47 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %42, i64 %45, i32 2
  %48 = load i32, i32* %47, align 4, !tbaa !26
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = zext i32 %48 to i64
  %52 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %42, i64 %45, i32 1
  %53 = load i32, i32* %52, align 4, !tbaa !31
  %54 = add nsw i32 %53, -1
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 %55, %51
  %57 = add nsw i64 %56, %46
  br label %58

58:                                               ; preds = %50, %44
  %59 = phi i64 [ %57, %50 ], [ %46, %44 ]
  %60 = add nuw nsw i64 %45, 1
  %61 = icmp eq i64 %60, %43
  br i1 %61, label %62, label %44, !llvm.loop !52

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %64 = load i8, i8* %63, align 1, !tbaa !23
  br label %65

65:                                               ; preds = %79, %62
  %66 = phi i64 [ 0, %62 ], [ %81, %79 ]
  %67 = phi i64 [ 0, %62 ], [ %80, %79 ]
  %68 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %42, i64 %66, i32 2
  %69 = load i32, i32* %68, align 4, !tbaa !26
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = sext i32 %69 to i64
  %73 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %42, i64 %66, i32 1
  %74 = load i32, i32* %73, align 4, !tbaa !31
  %75 = add nsw i32 %74, -1
  %76 = sext i32 %75 to i64
  %77 = mul nsw i64 %76, %72
  %78 = add nsw i64 %77, %67
  br label %79

79:                                               ; preds = %71, %65
  %80 = phi i64 [ %78, %71 ], [ %67, %65 ]
  %81 = add nuw nsw i64 %66, 1
  %82 = icmp eq i64 %81, %43
  br i1 %82, label %83, label %65, !llvm.loop !53

83:                                               ; preds = %79, %37
  %84 = phi i8 [ %39, %37 ], [ %64, %79 ]
  %85 = phi i64 [ 0, %37 ], [ %59, %79 ]
  %86 = phi i64 [ 0, %37 ], [ %80, %79 ]
  %87 = zext i8 %84 to i64
  %88 = add nuw nsw i64 %87, 7
  %89 = lshr i64 %88, 3
  %90 = add nsw i64 %85, 1
  %91 = sub i64 %90, %86
  %92 = mul i64 %91, %89
  %93 = tail call i8* @halide_malloc(i8* %0, i64 %92) #6
  %94 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  store i8* %93, i8** %94, align 8, !tbaa !15
  %95 = icmp eq i8* %93, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %83
  %97 = tail call i32 @halide_device_malloc(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* %2) #7
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load i8*, i8** %94, align 8, !tbaa !15
  tail call void @halide_free(i8* %0, i8* %100) #6
  store i8* null, i8** %94, align 8, !tbaa !15
  br label %101

101:                                              ; preds = %83, %99, %96, %30
  %102 = phi i32 [ %31, %30 ], [ -1, %83 ], [ %97, %99 ], [ 0, %96 ]
  ret i32 %102
}

declare i8* @halide_malloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0)) #6
  br label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %9 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %8, align 8, !tbaa !38
  %10 = icmp eq %struct.halide_device_interface_t* %9, null
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !22
  %13 = icmp eq i64 %12, 0
  %14 = xor i1 %10, true
  %15 = or i1 %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = tail call i32 @halide_error_no_device_interface(i8* %0) #6
  br label %30

18:                                               ; preds = %7
  %19 = xor i1 %13, true
  %20 = or i1 %10, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #6
  br label %30

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %25 = load i64, i64* %24, align 8, !tbaa !37
  %26 = and i64 %25, 3
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #6
  br label %30

30:                                               ; preds = %5, %16, %21, %28
  %31 = phi i32 [ %6, %5 ], [ %22, %21 ], [ %17, %16 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %23, %30
  %34 = tail call i32 @halide_device_free(i8* %0, %struct.halide_buffer_t* %1) #7
  %35 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %36 = load i8*, i8** %35, align 8, !tbaa !15
  %37 = icmp eq i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call void @halide_free(i8* %0, i8* nonnull %36) #6
  store i8* null, i8** %35, align 8, !tbaa !15
  br label %39

39:                                               ; preds = %38, %33
  %40 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %41 = load i64, i64* %40, align 8, !tbaa !37
  %42 = and i64 %41, -4
  store i64 %42, i64* %40, align 8, !tbaa !37
  br label %43

43:                                               ; preds = %30, %39
  %44 = phi i32 [ %34, %39 ], [ %31, %30 ]
  ret i32 %44
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_device_wrap_native(i8* %0, %struct.halide_buffer_t* %1, i64 %2, %struct.halide_device_interface_t* %3) local_unnamed_addr #0 {
  %5 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0)) #6
  br label %31

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %10 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %9, align 8, !tbaa !38
  %11 = icmp eq %struct.halide_device_interface_t* %10, null
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !22
  %14 = icmp eq i64 %13, 0
  %15 = xor i1 %11, true
  %16 = or i1 %14, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %8
  %18 = tail call i32 @halide_error_no_device_interface(i8* %0) #6
  br label %31

19:                                               ; preds = %8
  %20 = xor i1 %14, true
  %21 = or i1 %11, %20
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #6
  br label %31

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %26 = load i64, i64* %25, align 8, !tbaa !37
  %27 = and i64 %26, 3
  %28 = icmp eq i64 %27, 3
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #6
  br label %31

31:                                               ; preds = %6, %17, %22, %29
  %32 = phi i32 [ %7, %6 ], [ %23, %22 ], [ %18, %17 ], [ %30, %29 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %36 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %35, align 8, !tbaa !38
  br label %37

37:                                               ; preds = %34, %24
  %38 = phi %struct.halide_device_interface_t* [ %36, %34 ], [ %10, %24 ]
  %39 = icmp eq %struct.halide_device_interface_t* %38, null
  %40 = icmp eq %struct.halide_device_interface_t* %38, %3
  %41 = or i1 %39, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.32, i64 0, i64 0)) #6
  br label %58

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %45 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %3, i64 0, i32 15
  %46 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %45, align 8, !tbaa !39
  %47 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %46, i64 0, i32 0
  %48 = load void ()*, void ()** %47, align 8, !tbaa !45
  tail call void %48() #6
  store %struct.halide_device_interface_t* %3, %struct.halide_device_interface_t** %44, align 8, !tbaa !38
  %49 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %45, align 8, !tbaa !39
  %50 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %49, i64 0, i32 14
  %51 = load i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*, i64)** %50, align 8, !tbaa !54
  %52 = tail call i32 %51(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %2) #6
  %53 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %45, align 8, !tbaa !39
  %54 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %53, i64 0, i32 1
  %55 = load void ()*, void ()** %54, align 8, !tbaa !47
  tail call void %55() #6
  %56 = icmp eq i32 %52, 0
  %57 = select i1 %56, i32 0, i32 -16
  ret i32 %57

58:                                               ; preds = %42, %31
  %59 = phi i32 [ %32, %31 ], [ -42, %42 ]
  ret i32 %59
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_device_detach_native(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0)) #6
  br label %29

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !38
  %9 = icmp eq %struct.halide_device_interface_t* %8, null
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !22
  %12 = icmp eq i64 %11, 0
  %13 = xor i1 %9, true
  %14 = or i1 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = tail call i32 @halide_error_no_device_interface(i8* %0) #6
  br label %29

17:                                               ; preds = %6
  %18 = xor i1 %12, true
  %19 = or i1 %9, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #6
  br label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %24 = load i64, i64* %23, align 8, !tbaa !37
  %25 = and i64 %24, 3
  %26 = icmp eq i64 %25, 3
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #6
  br label %29

29:                                               ; preds = %4, %15, %20, %27
  %30 = phi i32 [ %5, %4 ], [ %21, %20 ], [ %16, %15 ], [ %28, %27 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %34 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %33, align 8, !tbaa !38
  br label %35

35:                                               ; preds = %32, %22
  %36 = phi %struct.halide_device_interface_t* [ %34, %32 ], [ %8, %22 ]
  %37 = icmp eq %struct.halide_device_interface_t* %36, null
  br i1 %37, label %57, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %36, i64 0, i32 15
  %40 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %39, align 8, !tbaa !39
  %41 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %40, i64 0, i32 0
  %42 = load void ()*, void ()** %41, align 8, !tbaa !45
  tail call void %42() #6
  %43 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %39, align 8, !tbaa !39
  %44 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %43, i64 0, i32 15
  %45 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %44, align 8, !tbaa !55
  %46 = tail call i32 %45(i8* %0, %struct.halide_buffer_t* nonnull %1) #6
  %47 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %39, align 8, !tbaa !39
  %48 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %47, i64 0, i32 1
  %49 = load void ()*, void ()** %48, align 8, !tbaa !47
  tail call void %49() #6
  %50 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %51 = load i64, i64* %50, align 8, !tbaa !22
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %38
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.34, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %54

54:                                               ; preds = %53, %38
  %55 = icmp eq i32 %46, 0
  %56 = select i1 %55, i32 0, i32 -33
  ret i32 %56

57:                                               ; preds = %35, %29
  %58 = phi i32 [ %30, %29 ], [ 0, %35 ]
  ret i32 %58
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_device_wrap_native(i8* %0, %struct.halide_buffer_t* %1, i64 %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i64 0, i64 0)) #6
  br label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %9 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %8, align 8, !tbaa !38
  %10 = icmp eq %struct.halide_device_interface_t* %9, null
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !22
  %13 = icmp eq i64 %12, 0
  %14 = xor i1 %10, true
  %15 = or i1 %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = tail call i32 @halide_error_no_device_interface(i8* %0) #6
  br label %30

18:                                               ; preds = %7
  %19 = xor i1 %13, true
  %20 = or i1 %10, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #6
  br label %30

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %25 = load i64, i64* %24, align 8, !tbaa !37
  %26 = and i64 %25, 3
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #6
  br label %30

30:                                               ; preds = %5, %16, %21, %28
  %31 = phi i32 [ %6, %5 ], [ %22, %21 ], [ %17, %16 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %35 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %34, align 8, !tbaa !38
  br label %36

36:                                               ; preds = %33, %23
  %37 = phi %struct.halide_device_interface_t* [ %35, %33 ], [ %9, %23 ]
  %38 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %37, i64 0, i32 15
  %39 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %38, align 8, !tbaa !39
  %40 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %39, i64 0, i32 0
  %41 = load void ()*, void ()** %40, align 8, !tbaa !45
  tail call void %41() #6
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  store i64 %2, i64* %42, align 8, !tbaa !22
  br label %43

43:                                               ; preds = %30, %36
  %44 = phi i32 [ 0, %36 ], [ %31, %30 ]
  ret i32 %44
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_device_detach_native(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 @halide_error_buffer_is_null(i8* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0)) #6
  br label %29

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !38
  %9 = icmp eq %struct.halide_device_interface_t* %8, null
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !22
  %12 = icmp eq i64 %11, 0
  %13 = xor i1 %9, true
  %14 = or i1 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = tail call i32 @halide_error_no_device_interface(i8* %0) #6
  br label %29

17:                                               ; preds = %6
  %18 = xor i1 %12, true
  %19 = or i1 %9, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @halide_error_device_interface_no_device(i8* %0) #6
  br label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %24 = load i64, i64* %23, align 8, !tbaa !37
  %25 = and i64 %24, 3
  %26 = icmp eq i64 %25, 3
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = tail call i32 @halide_error_host_and_device_dirty(i8* %0) #6
  br label %29

29:                                               ; preds = %4, %15, %20, %27
  %30 = phi i32 [ %5, %4 ], [ %21, %20 ], [ %16, %15 ], [ %28, %27 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %34 = load i64, i64* %33, align 8, !tbaa !22
  br label %35

35:                                               ; preds = %32, %22
  %36 = phi i64 [ %34, %32 ], [ %11, %22 ]
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %40 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %41 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %40, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %41, i64 0, i32 15
  %43 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %42, align 8, !tbaa !39
  %44 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %43, i64 0, i32 1
  %45 = load void ()*, void ()** %44, align 8, !tbaa !47
  tail call void %45() #6
  store i64 0, i64* %39, align 8, !tbaa !22
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %40, align 8, !tbaa !38
  br label %46

46:                                               ; preds = %35, %29, %38
  %47 = phi i32 [ 0, %38 ], [ %30, %29 ], [ 0, %35 ]
  ret i32 %47
}

; Function Attrs: nounwind mustprogress
define weak void @halide_device_and_host_free_as_destructor(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = bitcast i8* %1 to %struct.halide_buffer_t*
  %4 = tail call i32 @halide_device_and_host_free(i8* %0, %struct.halide_buffer_t* %3) #7
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @halide_device_host_nop_free(i8* %0, i8* %1) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_default_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) local_unnamed_addr #5 {
  ret i32 -39
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_buffer_copy_already_locked(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) local_unnamed_addr #0 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %6 = icmp eq %struct.halide_device_interface_t* %2, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 1
  %9 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %8, align 8, !tbaa !38
  %10 = icmp eq %struct.halide_device_interface_t* %9, null
  %11 = icmp eq %struct.halide_device_interface_t* %9, %2
  %12 = or i1 %10, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.42, i64 0, i64 0)) #6
  br label %122

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %16 = load i64, i64* %15, align 8, !tbaa !22
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = tail call i32 @halide_device_malloc(i8* %0, %struct.halide_buffer_t* nonnull %3, %struct.halide_device_interface_t* nonnull %2) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %122

21:                                               ; preds = %4, %18, %14
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %23 = load i64, i64* %22, align 8, !tbaa !22
  %24 = icmp eq i64 %23, 0
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %26 = load i8*, i8** %25, align 8, !tbaa !15
  %27 = icmp eq i8* %26, null
  br i1 %24, label %34, label %28

28:                                               ; preds = %21
  br i1 %27, label %45, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %31 = load i64, i64* %30, align 8, !tbaa !37
  %32 = and i64 %31, 1
  %33 = icmp ne i64 %32, 0
  br label %35

34:                                               ; preds = %21
  br i1 %27, label %45, label %35

35:                                               ; preds = %29, %34
  %36 = phi i1 [ %33, %29 ], [ true, %34 ]
  %37 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %38 = load i64, i64* %37, align 8, !tbaa !37
  %39 = and i64 %38, 2
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %43 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %42, align 8, !tbaa !38
  %44 = icmp ne %struct.halide_device_interface_t* %43, null
  br label %45

45:                                               ; preds = %28, %35, %41, %34
  %46 = phi i1 [ true, %34 ], [ false, %35 ], [ false, %41 ], [ true, %28 ]
  %47 = phi i1 [ true, %34 ], [ %36, %35 ], [ %36, %41 ], [ false, %28 ]
  %48 = phi i1 [ true, %34 ], [ false, %35 ], [ %44, %41 ], [ true, %28 ]
  %49 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2
  %50 = load i8*, i8** %49, align 8, !tbaa !15
  %51 = icmp eq i8* %50, null
  %52 = xor i1 %6, true
  %53 = and i1 %6, %51
  br i1 %53, label %122, label %54

54:                                               ; preds = %45
  %55 = or i1 %6, %47
  br i1 %55, label %63, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i64 0, i32 15
  %58 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %57, align 8, !tbaa !39
  %59 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %58, i64 0, i32 10
  %60 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %59, align 8, !tbaa !56
  %61 = tail call i32 %60(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* nonnull %2, %struct.halide_buffer_t* nonnull %3) #6
  %62 = icmp eq i32 %61, -42
  br i1 %62, label %63, label %109

63:                                               ; preds = %54, %56
  %64 = and i1 %46, %51
  br i1 %64, label %122, label %65

65:                                               ; preds = %63
  %66 = or i1 %48, %52
  br i1 %66, label %69, label %67

67:                                               ; preds = %65
  %68 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %68) #8
  call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext true, %struct.halide_buffer_t* nonnull %3, i1 zeroext true) #7
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #7
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %68) #8
  br label %112

69:                                               ; preds = %65
  br i1 %6, label %70, label %84

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %72 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %71, align 8, !tbaa !38
  %73 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %72, i64 0, i32 15
  %74 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %73, align 8, !tbaa !39
  %75 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %74, i64 0, i32 10
  %76 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %75, align 8, !tbaa !56
  %77 = tail call i32 %76(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* nonnull %3) #6
  %78 = icmp eq i32 %77, -42
  br i1 %78, label %79, label %109

79:                                               ; preds = %70
  %80 = tail call i32 @_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* nonnull %1) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %122

82:                                               ; preds = %79
  %83 = tail call i32 @halide_buffer_copy_already_locked(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* nonnull %3) #7
  br label %109

84:                                               ; preds = %69
  %85 = or i1 %47, %51
  br i1 %85, label %100, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %88 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %87, align 8, !tbaa !38
  %89 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %88, i64 0, i32 15
  %90 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %89, align 8, !tbaa !39
  %91 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %90, i64 0, i32 10
  %92 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %91, align 8, !tbaa !56
  %93 = tail call i32 %92(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* nonnull %3) #6
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %122

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 3
  %97 = load i64, i64* %96, align 8, !tbaa !37
  %98 = or i64 %97, 1
  store i64 %98, i64* %96, align 8, !tbaa !37
  %99 = tail call i32 @copy_to_device_already_locked(i8* %0, %struct.halide_buffer_t* nonnull %3, %struct.halide_device_interface_t* nonnull %2) #7
  br label %109

100:                                              ; preds = %84
  %101 = tail call i32 @_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t(i8* %0, %struct.halide_buffer_t* nonnull %1) #7
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i64 0, i32 15
  %105 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %104, align 8, !tbaa !39
  %106 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %105, i64 0, i32 10
  %107 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %106, align 8, !tbaa !56
  %108 = tail call i32 %107(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* nonnull %2, %struct.halide_buffer_t* nonnull %3) #6
  br label %109

109:                                              ; preds = %95, %103, %70, %82, %56
  %110 = phi i32 [ %83, %82 ], [ %77, %70 ], [ %99, %95 ], [ %108, %103 ], [ %61, %56 ]
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %67, %109
  %113 = icmp eq %struct.halide_buffer_t* %3, %1
  br i1 %113, label %122, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 3
  %116 = load i64, i64* %115, align 8, !tbaa !37
  %117 = and i64 %116, -4
  br i1 %6, label %120, label %118

118:                                              ; preds = %114
  %119 = or i64 %117, 2
  store i64 %119, i64* %115, align 8, !tbaa !37
  br label %122

120:                                              ; preds = %114
  %121 = or i64 %117, 1
  store i64 %121, i64* %115, align 8, !tbaa !37
  br label %122

122:                                              ; preds = %109, %79, %86, %100, %63, %45, %118, %120, %112, %18, %13
  %123 = phi i32 [ -42, %13 ], [ %19, %18 ], [ -34, %45 ], [ 0, %118 ], [ 0, %120 ], [ 0, %112 ], [ -42, %63 ], [ %110, %109 ], [ %101, %100 ], [ %93, %86 ], [ %80, %79 ]
  ret i32 %123
}

; Function Attrs: nounwind
define weak i32 @halide_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #6
  %5 = icmp eq %struct.halide_device_interface_t* %2, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i64 0, i32 15
  %8 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %7, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %8, i64 0, i32 0
  %10 = load void ()*, void ()** %9, align 8, !tbaa !45
  tail call void %10() #6
  br label %11

11:                                               ; preds = %6, %4
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %13 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %12, align 8, !tbaa !38
  %14 = icmp eq %struct.halide_device_interface_t* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %13, i64 0, i32 15
  %17 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %16, align 8, !tbaa !39
  %18 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %17, i64 0, i32 0
  %19 = load void ()*, void ()** %18, align 8, !tbaa !45
  tail call void %19() #6
  br label %20

20:                                               ; preds = %15, %11
  %21 = tail call i32 @halide_buffer_copy_already_locked(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #7
  br i1 %5, label %27, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %2, i64 0, i32 15
  %24 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %23, align 8, !tbaa !39
  %25 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %24, i64 0, i32 1
  %26 = load void ()*, void ()** %25, align 8, !tbaa !47
  tail call void %26() #6
  br label %27

27:                                               ; preds = %22, %20
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %12, align 8, !tbaa !38
  %29 = icmp eq %struct.halide_device_interface_t* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %28, i64 0, i32 15
  %32 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %31, align 8, !tbaa !39
  %33 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %32, i64 0, i32 1
  %34 = load void ()*, void ()** %33, align 8, !tbaa !47
  tail call void %34() #6
  br label %35

35:                                               ; preds = %30, %27
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #6
  ret i32 %21
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) local_unnamed_addr #0 {
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i64 0, i64 0)) #6
  ret i32 -40
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) local_unnamed_addr #0 {
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #6
  ret i32 -40
}

; Function Attrs: nounwind
define weak i32 @halide_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) local_unnamed_addr #4 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #6
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !22
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.60, i64 0, i64 0)) #6
  br label %32

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %14 = load i32, i32* %13, align 4, !tbaa !24
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 5
  %16 = load i32, i32* %15, align 4, !tbaa !24
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.61, i64 0, i64 0)) #6
  br label %32

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %21 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %20, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %21, i64 0, i32 15
  %23 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %22, align 8, !tbaa !39
  %24 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %23, i64 0, i32 0
  %25 = load void ()*, void ()** %24, align 8, !tbaa !45
  tail call void %25() #6
  %26 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %20, align 8, !tbaa !38
  %27 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %26, i64 0, i32 15
  %28 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %27, align 8, !tbaa !39
  %29 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %28, i64 0, i32 11
  %30 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)** %29, align 8, !tbaa !57
  %31 = tail call i32 %30(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_buffer_t* nonnull %2) #6
  br label %32

32:                                               ; preds = %3, %19, %18, %11
  %33 = phi i32 [ -41, %11 ], [ -41, %18 ], [ %31, %19 ], [ 0, %3 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #6
  ret i32 %33
}

; Function Attrs: nounwind
define weak i32 @halide_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) local_unnamed_addr #4 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #6
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !22
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !22
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.60, i64 0, i64 0)) #6
  br label %35

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %16 = load i32, i32* %15, align 4, !tbaa !24
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 5
  %18 = load i32, i32* %17, align 4, !tbaa !24
  %19 = add nsw i32 %18, 1
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.64, i64 0, i64 0)) #6
  br label %35

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %24 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %23, align 8, !tbaa !38
  %25 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %24, i64 0, i32 15
  %26 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %25, align 8, !tbaa !39
  %27 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %26, i64 0, i32 0
  %28 = load void ()*, void ()** %27, align 8, !tbaa !45
  tail call void %28() #6
  %29 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %23, align 8, !tbaa !38
  %30 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %29, i64 0, i32 15
  %31 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %30, align 8, !tbaa !39
  %32 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %31, i64 0, i32 12
  %33 = load i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)** %32, align 8, !tbaa !58
  %34 = tail call i32 %33(i8* %0, %struct.halide_buffer_t* nonnull %1, i32 %2, i32 %3, %struct.halide_buffer_t* nonnull %4) #6
  br label %35

35:                                               ; preds = %5, %22, %21, %13
  %36 = phi i32 [ -41, %13 ], [ -41, %21 ], [ %34, %22 ], [ 0, %5 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #6
  ret i32 %36
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_default_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i64 0, i64 0)) #6
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ -40, %6 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind
define weak i32 @halide_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #6
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %8, i64 0, i32 15
  %10 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %9, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %10, i64 0, i32 13
  %12 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %11, align 8, !tbaa !59
  %13 = tail call i32 %12(i8* %0, %struct.halide_buffer_t* nonnull %1) #6
  store i64 0, i64* %3, align 8, !tbaa !22
  %14 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %9, align 8, !tbaa !39
  %15 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %14, i64 0, i32 1
  %16 = load void ()*, void ()** %15, align 8, !tbaa !47
  tail call void %16() #6
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !tbaa !38
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal17device_copy_mutexE) #6
  br label %17

17:                                               ; preds = %2, %6
  %18 = phi i32 [ %13, %6 ], [ 0, %2 ]
  ret i32 %18
}

declare void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

declare i32 @halide_error_buffer_is_null(i8*, i8*) local_unnamed_addr #2

declare i32 @halide_error_device_interface_no_device(i8*) local_unnamed_addr #2

declare i32 @halide_error_host_and_device_dirty(i8*) local_unnamed_addr #2

declare void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !4, i64 0}
!10 = !{!"_ZTSN6Halide7Runtime8Internal11device_copyE", !4, i64 0, !4, i64 8, !4, i64 16, !5, i64 24, !5, i64 152, !5, i64 280, !4, i64 408}
!11 = !{!10, !4, i64 8}
!12 = !{!10, !4, i64 408}
!13 = distinct !{!13, !8}
!14 = !{!10, !4, i64 16}
!15 = !{!16, !17, i64 16}
!16 = !{!"_ZTS15halide_buffer_t", !4, i64 0, !17, i64 8, !17, i64 16, !4, i64 24, !18, i64 32, !21, i64 36, !17, i64 40, !17, i64 48}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"_ZTS13halide_type_t", !19, i64 0, !5, i64 1, !20, i64 2}
!19 = !{!"_ZTS18halide_type_code_t", !5, i64 0}
!20 = !{!"short", !5, i64 0}
!21 = !{!"int", !5, i64 0}
!22 = !{!16, !4, i64 0}
!23 = !{!18, !5, i64 1}
!24 = !{!16, !21, i64 36}
!25 = !{!16, !17, i64 40}
!26 = !{!27, !21, i64 8}
!27 = !{!"_ZTS18halide_dimension_t", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12}
!28 = !{!27, !21, i64 0}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = !{!27, !21, i64 4}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = !{i64 0, i64 8, !3, i64 8, i64 8, !3, i64 16, i64 8, !3, i64 24, i64 128, !36, i64 152, i64 128, !36, i64 280, i64 128, !36, i64 408, i64 8, !3}
!36 = !{!5, !5, i64 0}
!37 = !{!16, !4, i64 24}
!38 = !{!16, !17, i64 8}
!39 = !{!40, !17, i64 120}
!40 = !{!"_ZTS25halide_device_interface_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120}
!41 = !{!42, !17, i64 48}
!42 = !{!"_ZTS30halide_device_interface_impl_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120}
!43 = !{!42, !17, i64 40}
!44 = !{!42, !17, i64 56}
!45 = !{!42, !17, i64 0}
!46 = !{!42, !17, i64 16}
!47 = !{!42, !17, i64 8}
!48 = !{!42, !17, i64 32}
!49 = !{!42, !17, i64 24}
!50 = !{!42, !17, i64 64}
!51 = !{!42, !17, i64 72}
!52 = distinct !{!52, !8}
!53 = distinct !{!53, !8}
!54 = !{!42, !17, i64 112}
!55 = !{!42, !17, i64 120}
!56 = !{!42, !17, i64 80}
!57 = !{!42, !17, i64 88}
!58 = !{!42, !17, i64 96}
!59 = !{!42, !17, i64 104}
