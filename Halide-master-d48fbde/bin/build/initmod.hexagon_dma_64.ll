; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::HexagonDma::desc_pool" = type { i8*, i8, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* }
%struct.halide_mutex = type { [1 x i64] }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle" = type { i8*, i16, i16, i16, i16, i8*, i32, i32, i32, i8, i8, i32, [4 x i8] }
%struct.stDmaWrapper_RoiAlignInfo = type { i16, i16 }
%struct.stDmaWrapper_DmaTransferSetup = type { i16, i16, i16, i16, i16, i16, i16, i16, i8*, i8*, i8*, i16, i16, i32, i32, [4 x i8] }

@_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* null, align 8
@_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE = weak global %struct.halide_mutex zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:374 Assert failed: size != 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"Hexagon: Out of memory (halide_malloc failed for device_malloc)\0A\00", align 1
@.str.9 = private unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:412 Assert failed: dma_engine\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:429 Assert failed: dma_engine\0A\00", align 1
@_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE = weak global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* null, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal10HexagonDma33hexagon_dma_device_interface_implE }, align 8
@.str.22 = private unnamed_addr constant [187 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:498 Assert failed: dst_device_interface == nullptr || dst_device_interface == &hexagon_dma_device_interface\0A\00", align 1
@.str.23 = private unnamed_addr constant [152 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:502 Assert failed: dst_device_interface == &hexagon_dma_device_interface\0A\00", align 1
@.str.25 = private unnamed_addr constant [59 x i8] c"Hexagon: halide_hexagon_dma_buffer_copy (not DMA) failed: \00", align 1
@.str.26 = private unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:518 Assert failed: from_host || src->device\0A\00", align 1
@.str.27 = private unnamed_addr constant [121 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:519 Assert failed: to_host || dst->device\0A\00", align 1
@.str.28 = private unnamed_addr constant [149 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:521 Assert failed: (!from_host && to_host) || (from_host && !to_host)\0A\00", align 1
@.str.35 = private unnamed_addr constant [60 x i8] c"Hexagon: halide_hexagon_dma_copy_to_device not implemented\0A\00", align 1
@.str.37 = private unnamed_addr constant [58 x i8] c"Hexagon: halide_hexagon_dma_copy_to_host not implemented\0A\00", align 1
@.str.43 = private unnamed_addr constant [100 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:591 Assert failed: 0\0A\00", align 1
@.str.44 = private unnamed_addr constant [58 x i8] c"Hexagon: halide_hexagon_dma_device_slice not implemented\0A\00", align 1
@.str.47 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:602 Assert failed: buf->device\0A\00", align 1
@.str.51 = private unnamed_addr constant [115 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:623 Assert failed: buf->device == 0\0A\00", align 1
@.str.52 = private unnamed_addr constant [76 x i8] c"Hexagon: halide_hexagon_dma_device_wrap_native buffer already has a device\0A\00", align 1
@.str.55 = private unnamed_addr constant [74 x i8] c"Hexagon: halide_hexagon_dma_device_detach_native buffer without a device\0A\00", align 1
@.str.56 = private unnamed_addr constant [153 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:653 Assert failed: buf->device_interface == &hexagon_dma_device_interface\0A\00", align 1
@.str.61 = private unnamed_addr constant [54 x i8] c"Hexagon: halide_hexagon_dma_power_voting power mode (\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c") not found\0A\00", align 1
@_ZN6Halide7Runtime8Internal10HexagonDma33hexagon_dma_device_interface_implE = weak global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_sync, i32 (i8*)* @halide_hexagon_dma_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_hexagon_dma_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_hexagon_dma_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_detach_native }, align 8
@.str.63 = private unnamed_addr constant [30 x i8] c"Hexagon: DMA Format Mismatch \00", align 1
@.str.64 = private unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:448 Assert failed: dma_engine\0A\00", align 1
@.str.75 = private unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:222 Assert failed: src->dimensions <= 3\0A\00", align 1
@.str.76 = private unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:229 Assert failed: src->dimensions == 2\0A\00", align 1
@.str.77 = private unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:236 Assert failed: src->dimensions == 3\0A\00", align 1
@.str.78 = private unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:237 Assert failed: src->dim[0].stride == 2\0A\00", align 1
@.str.79 = private unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:238 Assert failed: src->dim[2].stride == 1\0A\00", align 1
@.str.80 = private unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:239 Assert failed: src->dim[2].min == 0\0A\00", align 1
@.str.81 = private unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:240 Assert failed: src->dim[2].extent == 2\0A\00", align 1
@.str.83 = private unnamed_addr constant [139 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:261 Assert failed: ((dst->dim[1].stride % roi_stride) == 0)\0A\00", align 1
@.str.94 = private unnamed_addr constant [30 x i8] c"Hexagon: DMA Transfer Error: \00", align 1
@.str.96 = private unnamed_addr constant [34 x i8] c"Hexagon: nDmaWrapper_Move error: \00", align 1
@.str.98 = private unnamed_addr constant [34 x i8] c"Hexagon: nDmaWrapper_Wait error: \00", align 1
@.str.100 = private unnamed_addr constant [64 x i8] c"Hexagon: Out of memory (malloc failed for DMA descriptor pool)\0A\00", align 1
@.str.101 = private unnamed_addr constant [63 x i8] c"Hexagon: Out of memory (HAP_cache_lock failed for descriptor)\0A\00", align 1
@.str.104 = private unnamed_addr constant [25 x i8] c"Hexagon: desc not found \00", align 1
@.str.105 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1

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
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #7
  br label %50

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %2, %23 ], [ %44, %39 ]
  %42 = phi i64 [ %3, %23 ], [ %46, %39 ]
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %41, i64 %42) #8
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
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #8
  br label %11

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #9
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
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #9
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #8
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_dma_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %90

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %8 = load i32, i32* %7, align 4, !tbaa !24
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %12 = load i8, i8* %11, align 1, !tbaa !23
  br label %56

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %15 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %14, align 8, !tbaa !25
  %16 = zext i32 %8 to i64
  br label %17

17:                                               ; preds = %31, %13
  %18 = phi i64 [ 0, %13 ], [ %33, %31 ]
  %19 = phi i64 [ 0, %13 ], [ %32, %31 ]
  %20 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i64 %18, i32 2
  %21 = load i32, i32* %20, align 4, !tbaa !26
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = zext i32 %21 to i64
  %25 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i64 %18, i32 1
  %26 = load i32, i32* %25, align 4, !tbaa !31
  %27 = add nsw i32 %26, -1
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, %24
  %30 = add nsw i64 %29, %19
  br label %31

31:                                               ; preds = %23, %17
  %32 = phi i64 [ %30, %23 ], [ %19, %17 ]
  %33 = add nuw nsw i64 %18, 1
  %34 = icmp eq i64 %33, %16
  br i1 %34, label %35, label %17, !llvm.loop !37

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %37 = load i8, i8* %36, align 1, !tbaa !23
  br label %38

38:                                               ; preds = %52, %35
  %39 = phi i64 [ 0, %35 ], [ %54, %52 ]
  %40 = phi i64 [ 0, %35 ], [ %53, %52 ]
  %41 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i64 %39, i32 2
  %42 = load i32, i32* %41, align 4, !tbaa !26
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i64 %39, i32 1
  %47 = load i32, i32* %46, align 4, !tbaa !31
  %48 = add nsw i32 %47, -1
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %49, %45
  %51 = add nsw i64 %50, %40
  br label %52

52:                                               ; preds = %44, %38
  %53 = phi i64 [ %51, %44 ], [ %40, %38 ]
  %54 = add nuw nsw i64 %39, 1
  %55 = icmp eq i64 %54, %16
  br i1 %55, label %56, label %38, !llvm.loop !38

56:                                               ; preds = %52, %10
  %57 = phi i8 [ %12, %10 ], [ %37, %52 ]
  %58 = phi i64 [ 0, %10 ], [ %32, %52 ]
  %59 = phi i64 [ 0, %10 ], [ %53, %52 ]
  %60 = zext i8 %57 to i64
  %61 = add nuw nsw i64 %60, 7
  %62 = lshr i64 %61, 3
  %63 = add nsw i64 %58, 1
  %64 = sub i64 %63, %59
  %65 = mul i64 %64, %62
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %68

68:                                               ; preds = %67, %56
  %69 = tail call i8* @halide_malloc(i8* %0, i64 %65) #7
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = tail call i8* @malloc(i64 1024) #7
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = tail call i8* @halide_string_to_string(i8* %72, i8* null, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #7
  br label %84

76:                                               ; preds = %71
  %77 = getelementptr inbounds i8, i8* %72, i64 1023
  store i8 0, i8* %77, align 1, !tbaa !36
  %78 = tail call i8* @halide_string_to_string(i8* nonnull %72, i8* nonnull %77, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0)) #7
  %79 = ptrtoint i8* %78 to i64
  %80 = ptrtoint i8* %72 to i64
  %81 = add i64 %79, 1
  %82 = sub i64 %81, %80
  %83 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %72, i64 %82) #7
  tail call void @halide_error(i8* %0, i8* nonnull %72) #7
  br label %84

84:                                               ; preds = %76, %74
  tail call void @free(i8* %72) #7
  br label %90

85:                                               ; preds = %68
  %86 = ptrtoint i8* %69 to i64
  %87 = tail call i32 @halide_hexagon_dma_device_wrap_native(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %86) #8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void @halide_free(i8* %0, i8* nonnull %69) #7
  br label %90

90:                                               ; preds = %2, %84, %85, %89
  %91 = phi i32 [ -11, %84 ], [ -16, %89 ], [ 0, %85 ], [ 0, %2 ]
  ret i32 %91
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

declare i8* @halide_malloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_hexagon_dma_device_wrap_native(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #4 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.51, i64 0, i64 0)) #7
  tail call void @abort() #7
  %8 = load i64, i64* %4, align 8, !tbaa !22
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %7
  %11 = tail call i8* @malloc(i64 1024) #7
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* null, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.52, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #7
  br label %23

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, i8* %11, i64 1023
  store i8 0, i8* %16, align 1, !tbaa !36
  %17 = tail call i8* @halide_string_to_string(i8* nonnull %11, i8* nonnull %16, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.52, i64 0, i64 0)) #7
  %18 = ptrtoint i8* %17 to i64
  %19 = ptrtoint i8* %11 to i64
  %20 = add i64 %18, 1
  %21 = sub i64 %20, %19
  %22 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %11, i64 %21) #7
  tail call void @halide_error(i8* %0, i8* nonnull %11) #7
  br label %23

23:                                               ; preds = %15, %13
  tail call void @free(i8* %11) #7
  br label %64

24:                                               ; preds = %3, %7
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, %struct.halide_device_interface_t** %25, align 8, !tbaa !39
  %26 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, i64 0, i32 15), align 8, !tbaa !40
  %27 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %26, i64 0, i32 0
  %28 = load void ()*, void ()** %27, align 8, !tbaa !42
  tail call void %28() #7
  %29 = tail call i8* @malloc(i64 48) #7
  %30 = bitcast i8* %29 to i8**
  %31 = getelementptr inbounds i8, i8* %29, i64 8
  %32 = bitcast i8* %31 to i16*
  store i16 0, i16* %32, align 8, !tbaa !44
  %33 = getelementptr inbounds i8, i8* %29, i64 10
  %34 = bitcast i8* %33 to i16*
  store i16 0, i16* %34, align 2, !tbaa !48
  %35 = getelementptr inbounds i8, i8* %29, i64 12
  %36 = bitcast i8* %35 to i16*
  store i16 0, i16* %36, align 4, !tbaa !49
  %37 = getelementptr inbounds i8, i8* %29, i64 14
  %38 = bitcast i8* %37 to i16*
  store i16 0, i16* %38, align 2, !tbaa !50
  %39 = getelementptr inbounds i8, i8* %29, i64 16
  %40 = bitcast i8* %39 to i8**
  %41 = getelementptr inbounds i8, i8* %29, i64 24
  %42 = bitcast i8* %41 to i32*
  %43 = getelementptr inbounds i8, i8* %29, i64 28
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr inbounds i8, i8* %29, i64 32
  %46 = bitcast i8* %45 to i32*
  %47 = getelementptr inbounds i8, i8* %29, i64 36
  store i8 0, i8* %47, align 4, !tbaa !51
  %48 = getelementptr inbounds i8, i8* %29, i64 40
  %49 = bitcast i8* %48 to i32*
  store i32 0, i32* %49, align 8, !tbaa !52
  %50 = getelementptr inbounds i8, i8* %29, i64 37
  store i8 0, i8* %50, align 1, !tbaa !53
  %51 = inttoptr i64 %2 to i8*
  store i8* %51, i8** %30, align 8, !tbaa !54
  store i8* null, i8** %40, align 8, !tbaa !55
  %52 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %53 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %52, align 8, !tbaa !25
  %54 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %53, i64 0, i32 1
  %55 = load i32, i32* %54, align 4, !tbaa !31
  %56 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %53, i64 0, i32 2
  %57 = load i32, i32* %56, align 4, !tbaa !26
  %58 = mul nsw i32 %57, %55
  store i32 %58, i32* %42, align 8, !tbaa !56
  %59 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %53, i64 1, i32 1
  %60 = load i32, i32* %59, align 4, !tbaa !31
  store i32 %60, i32* %44, align 4, !tbaa !57
  %61 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %53, i64 1, i32 2
  %62 = load i32, i32* %61, align 4, !tbaa !26
  store i32 %62, i32* %46, align 8, !tbaa !58
  %63 = ptrtoint i8* %29 to i64
  store i64 %63, i64* %4, align 8, !tbaa !22
  br label %64

64:                                               ; preds = %24, %23
  %65 = phi i32 [ -32, %23 ], [ 0, %24 ]
  ret i32 %65
}

declare void @halide_free(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_dma_device_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = inttoptr i64 %4 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %5, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !54
  %8 = tail call i32 @halide_hexagon_dma_device_detach_native(i8* %0, %struct.halide_buffer_t* %1) #8
  tail call void @halide_free(i8* %0, i8* %7) #7
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %10 = load i64, i64* %9, align 8, !tbaa !59
  %11 = and i64 %10, -3
  store i64 %11, i64* %9, align 8, !tbaa !59
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_dma_device_detach_native(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = tail call i8* @malloc(i64 1024) #7
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i8* @halide_string_to_string(i8* %7, i8* null, i8* nonnull getelementptr inbounds ([74 x i8], [74 x i8]* @.str.55, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #7
  br label %19

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %7, i64 1023
  store i8 0, i8* %12, align 1, !tbaa !36
  %13 = tail call i8* @halide_string_to_string(i8* nonnull %7, i8* nonnull %12, i8* nonnull getelementptr inbounds ([74 x i8], [74 x i8]* @.str.55, i64 0, i64 0)) #7
  %14 = ptrtoint i8* %13 to i64
  %15 = ptrtoint i8* %7 to i64
  %16 = add i64 %14, 1
  %17 = sub i64 %16, %15
  %18 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %17) #7
  tail call void @halide_error(i8* %0, i8* nonnull %7) #7
  br label %19

19:                                               ; preds = %11, %9
  tail call void @free(i8* %7) #7
  br label %34

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %22 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %21, align 8, !tbaa !39
  %23 = icmp eq %struct.halide_device_interface_t* %22, @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.56, i64 0, i64 0)) #7
  tail call void @abort() #7
  %25 = load i64, i64* %3, align 8, !tbaa !22
  br label %26

26:                                               ; preds = %20, %24
  %27 = phi i64 [ %4, %20 ], [ %25, %24 ]
  %28 = inttoptr i64 %27 to i8*
  tail call void @free(i8* %28) #7
  %29 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %21, align 8, !tbaa !39
  %30 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %29, i64 0, i32 15
  %31 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %30, align 8, !tbaa !40
  %32 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %31, i64 0, i32 1
  %33 = load void ()*, void ()** %32, align 8, !tbaa !60
  tail call void %33() #7
  store i64 0, i64* %3, align 8, !tbaa !22
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %21, align 8, !tbaa !39
  br label %34

34:                                               ; preds = %26, %19
  %35 = phi i32 [ -33, %19 ], [ 0, %26 ]
  ret i32 %35
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_dma_allocate_engine(i8* %0, i8** %1) local_unnamed_addr #0 {
  %3 = icmp eq i8** %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.9, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %5

5:                                                ; preds = %2, %4
  %6 = tail call i8* @halide_hexagon_allocate_dma_resource(i8* %0) #7
  store i8* %6, i8** %1, align 8, !tbaa !61
  %7 = icmp eq i8* %6, null
  %8 = sext i1 %7 to i32
  ret i32 %8
}

declare extern_weak i8* @halide_hexagon_allocate_dma_resource(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_hexagon_dma_deallocate_engine(i8* %0, i8* %1) local_unnamed_addr #4 {
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.16, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %5

5:                                                ; preds = %2, %4
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #7
  %6 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 8, !tbaa !61
  %7 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %5, %20
  %9 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ %22, %20 ], [ %6, %5 ]
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %9, i64 0, i32 2
  %11 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %10, align 8, !tbaa !62
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %9, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !64
  %14 = icmp eq i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call i32 @HAP_cache_unlock(i8* nonnull %13) #7
  br label %17

17:                                               ; preds = %15, %8
  %18 = bitcast %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %9 to i8*
  tail call void @free(i8* nonnull %18) #7
  %19 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %11, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %11, i64 0, i32 2
  %22 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %21, align 8, !tbaa !62
  %23 = bitcast %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %11 to i8*
  tail call void @free(i8* nonnull %23) #7
  %24 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %22, null
  br i1 %24, label %25, label %8, !llvm.loop !65

25:                                               ; preds = %17, %20, %5
  store %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* null, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 8, !tbaa !61
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #7
  %26 = tail call i32 @halide_hexagon_free_dma_resource(i8* %0, i8* %1) #7
  %27 = icmp ne i32 %26, 0
  %28 = sext i1 %27 to i32
  ret i32 %28
}

declare extern_weak i32 @halide_hexagon_free_dma_resource(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_dma_prepare_for_copy_to_host(i8* %0, %struct.halide_buffer_t* %1, i8* %2, i1 zeroext %3, i32 %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @_ZN12_GLOBAL__N_129halide_hexagon_get_dma_formatEPv26halide_hexagon_image_fmt_t(i8* %0, i32 %4) #8
  %7 = zext i1 %3 to i8
  %8 = icmp eq i8* %2, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.64, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !22
  %13 = inttoptr i64 %12 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i64 0, i32 5
  store i8* %2, i8** %14, align 8, !tbaa !55
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i64 0, i32 9
  store i8 %7, i8* %15, align 4, !tbaa !51
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i64 0, i32 11
  store i32 %6, i32* %16, align 8, !tbaa !52
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i64 0, i32 10
  store i8 0, i8* %17, align 1, !tbaa !53
  switch i32 %6, label %22 [
    i32 3, label %18
    i32 6, label %18
    i32 9, label %18
    i32 12, label %18
  ]

18:                                               ; preds = %10, %10, %10, %10
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i64 0, i32 7
  %20 = load i32, i32* %19, align 4, !tbaa !57
  %21 = shl nsw i32 %20, 1
  store i32 %21, i32* %19, align 4, !tbaa !57
  br label %22

22:                                               ; preds = %10, %18
  ret i32 0
}

; Function Attrs: inlinehint nounwind
define internal fastcc i32 @_ZN12_GLOBAL__N_129halide_hexagon_get_dma_formatEPv26halide_hexagon_image_fmt_t(i8* %0, i32 %1) unnamed_addr #5 {
  %3 = icmp ult i32 %1, 13
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = tail call i8* @malloc(i64 1024) #7
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !36
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ]
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i64 0, i64 0)) #7
  %12 = sext i32 %1 to i64
  %13 = tail call i8* @halide_int64_to_string(i8* %11, i8* %10, i64 %12, i32 1) #7
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #7
  br i1 %6, label %15, label %16

15:                                               ; preds = %9
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #7
  br label %22

16:                                               ; preds = %9
  %17 = ptrtoint i8* %14 to i64
  %18 = ptrtoint i8* %5 to i64
  %19 = add i64 %17, 1
  %20 = sub i64 %19, %18
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %20) #7
  tail call void @halide_error(i8* %0, i8* nonnull %5) #7
  br label %22

22:                                               ; preds = %16, %15
  tail call void @free(i8* %5) #7
  br label %23

23:                                               ; preds = %2, %22
  %24 = phi i32 [ 14, %22 ], [ %1, %2 ]
  ret i32 %24
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_dma_prepare_for_copy_to_device(i8* %0, %struct.halide_buffer_t* %1, i8* %2, i1 zeroext %3, i32 %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @_ZN12_GLOBAL__N_129halide_hexagon_get_dma_formatEPv26halide_hexagon_image_fmt_t(i8* %0, i32 %4) #8
  %7 = zext i1 %3 to i8
  %8 = icmp eq i8* %2, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.64, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !22
  %13 = inttoptr i64 %12 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i64 0, i32 5
  store i8* %2, i8** %14, align 8, !tbaa !55
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i64 0, i32 9
  store i8 %7, i8* %15, align 4, !tbaa !51
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i64 0, i32 11
  store i32 %6, i32* %16, align 8, !tbaa !52
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i64 0, i32 10
  store i8 1, i8* %17, align 1, !tbaa !53
  switch i32 %6, label %22 [
    i32 3, label %18
    i32 6, label %18
    i32 9, label %18
    i32 12, label %18
  ]

18:                                               ; preds = %10, %10, %10, %10
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i64 0, i32 7
  %20 = load i32, i32* %19, align 4, !tbaa !57
  %21 = shl nsw i32 %20, 1
  store i32 %21, i32* %19, align 4, !tbaa !57
  br label %22

22:                                               ; preds = %10, %18
  ret i32 0
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_hexagon_dma_unprepare(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_dma_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = icmp eq %struct.halide_device_interface_t* %2, null
  %6 = icmp eq %struct.halide_device_interface_t* %2, @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE
  %7 = or i1 %5, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.22, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %11 = load i64, i64* %10, align 8, !tbaa !59
  %12 = and i64 %11, 2
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %51, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %16 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %15, align 8, !tbaa !39
  %17 = icmp eq %struct.halide_device_interface_t* %16, @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE
  br i1 %17, label %51, label %18

18:                                               ; preds = %14
  br i1 %6, label %21, label %19

19:                                               ; preds = %18
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.23, i64 0, i64 0)) #7
  tail call void @abort() #7
  %20 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %15, align 8, !tbaa !39
  br label %21

21:                                               ; preds = %18, %19
  %22 = phi %struct.halide_device_interface_t* [ %16, %18 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %22, i64 0, i32 15
  %24 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %23, align 8, !tbaa !40
  %25 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %24, i64 0, i32 10
  %26 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %25, align 8, !tbaa !66
  %27 = tail call i32 %26(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* %3) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 3
  %31 = load i64, i64* %30, align 8, !tbaa !59
  br label %51

32:                                               ; preds = %21
  %33 = tail call i8* @malloc(i64 1024) #7
  %34 = icmp eq i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, i8* %33, i64 1023
  store i8 0, i8* %36, align 1, !tbaa !36
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi i8* [ %36, %35 ], [ null, %32 ]
  %39 = tail call i8* @halide_string_to_string(i8* %33, i8* %38, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.25, i64 0, i64 0)) #7
  %40 = sext i32 %27 to i64
  %41 = tail call i8* @halide_int64_to_string(i8* %39, i8* %38, i64 %40, i32 1) #7
  %42 = tail call i8* @halide_string_to_string(i8* %41, i8* %38, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #7
  br i1 %34, label %43, label %44

43:                                               ; preds = %37
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #7
  br label %50

44:                                               ; preds = %37
  %45 = ptrtoint i8* %42 to i64
  %46 = ptrtoint i8* %33 to i64
  %47 = add i64 %45, 1
  %48 = sub i64 %47, %46
  %49 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %33, i64 %48) #7
  tail call void @halide_error(i8* %0, i8* nonnull %33) #7
  br label %50

50:                                               ; preds = %44, %43
  tail call void @free(i8* %33) #7
  br label %80

51:                                               ; preds = %29, %14, %9
  %52 = phi i64 [ %11, %14 ], [ %11, %9 ], [ %31, %29 ]
  %53 = phi %struct.halide_buffer_t* [ %1, %14 ], [ %1, %9 ], [ %3, %29 ]
  %54 = and i64 %52, 2
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %53, i64 0, i32 2
  %58 = load i8*, i8** %57, align 8, !tbaa !15
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %51, %56
  %61 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %53, i64 0, i32 0
  %62 = load i64, i64* %61, align 8, !tbaa !22
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.26, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %65

65:                                               ; preds = %56, %60, %64
  %66 = phi i1 [ true, %56 ], [ false, %60 ], [ false, %64 ]
  br i1 %5, label %72, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %69 = load i64, i64* %68, align 8, !tbaa !22
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.27, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %72

72:                                               ; preds = %65, %67, %71
  %73 = xor i1 %5, %66
  br i1 %73, label %75, label %74

74:                                               ; preds = %72
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.28, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %75

75:                                               ; preds = %72, %74
  br i1 %6, label %76, label %78

76:                                               ; preds = %75
  %77 = tail call fastcc i32 @_ZN12_GLOBAL__N_126halide_hexagon_dma_wrapperEPvP15halide_buffer_tS2_(i8* %0, %struct.halide_buffer_t* %3, %struct.halide_buffer_t* nonnull %53) #8
  br label %80

78:                                               ; preds = %75
  %79 = tail call fastcc i32 @_ZN12_GLOBAL__N_126halide_hexagon_dma_wrapperEPvP15halide_buffer_tS2_(i8* %0, %struct.halide_buffer_t* nonnull %53, %struct.halide_buffer_t* %3) #8
  br label %80

80:                                               ; preds = %50, %76, %78
  %81 = phi i32 [ %27, %50 ], [ %77, %76 ], [ %79, %78 ]
  ret i32 %81
}

; Function Attrs: nounwind
define internal fastcc i32 @_ZN12_GLOBAL__N_126halide_hexagon_dma_wrapperEPvP15halide_buffer_tS2_(i8* %0, %struct.halide_buffer_t* nocapture readonly %1, %struct.halide_buffer_t* nocapture readonly %2) unnamed_addr #4 {
  %4 = alloca %struct.stDmaWrapper_RoiAlignInfo, align 2
  %5 = alloca %struct.stDmaWrapper_DmaTransferSetup, align 8
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !22
  %8 = inttoptr i64 %7 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %8, i64 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %8, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %8, i64 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %8, i64 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %8, i64 0, i32 4
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %8, i64 0, i32 6
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %8, i64 0, i32 7
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %8, i64 0, i32 8
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 5
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %8, i64 0, i32 11
  %20 = load i32, i32* %19, align 8, !tbaa !52
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* %17, align 4, !tbaa !24
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %68, label %25

25:                                               ; preds = %22
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.75, i64 0, i64 0)) #7
  tail call void @abort() #7
  %26 = load i32, i32* %19, align 8, !tbaa !52
  br label %27

27:                                               ; preds = %25, %3
  %28 = phi i32 [ %26, %25 ], [ %20, %3 ]
  switch i32 %28, label %34 [
    i32 2, label %29
    i32 5, label %29
    i32 8, label %29
    i32 11, label %29
  ]

29:                                               ; preds = %27, %27, %27, %27
  %30 = load i32, i32* %17, align 4, !tbaa !24
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.76, i64 0, i64 0)) #7
  tail call void @abort() #7
  %33 = load i32, i32* %19, align 8, !tbaa !52
  br label %34

34:                                               ; preds = %27, %29, %32
  %35 = phi i32 [ %28, %27 ], [ %28, %29 ], [ %33, %32 ]
  switch i32 %35, label %68 [
    i32 3, label %36
    i32 6, label %36
    i32 9, label %36
    i32 12, label %36
  ]

36:                                               ; preds = %34, %34, %34, %34
  %37 = load i32, i32* %17, align 4, !tbaa !24
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.77, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %40

40:                                               ; preds = %36, %39
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %42 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %41, align 8, !tbaa !25
  %43 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %42, i64 0, i32 2
  %44 = load i32, i32* %43, align 4, !tbaa !26
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.78, i64 0, i64 0)) #7
  tail call void @abort() #7
  %47 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %41, align 8, !tbaa !25
  br label %48

48:                                               ; preds = %40, %46
  %49 = phi %struct.halide_dimension_t* [ %42, %40 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %49, i64 2, i32 2
  %51 = load i32, i32* %50, align 4, !tbaa !26
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.79, i64 0, i64 0)) #7
  tail call void @abort() #7
  %54 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %41, align 8, !tbaa !25
  br label %55

55:                                               ; preds = %48, %53
  %56 = phi %struct.halide_dimension_t* [ %49, %48 ], [ %54, %53 ]
  %57 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %56, i64 2, i32 0
  %58 = load i32, i32* %57, align 4, !tbaa !28
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.80, i64 0, i64 0)) #7
  tail call void @abort() #7
  %61 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %41, align 8, !tbaa !25
  br label %62

62:                                               ; preds = %55, %60
  %63 = phi %struct.halide_dimension_t* [ %56, %55 ], [ %61, %60 ]
  %64 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %63, i64 2, i32 1
  %65 = load i32, i32* %64, align 4, !tbaa !31
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.81, i64 0, i64 0)) #7
  tail call void @abort() #7
  br label %68

68:                                               ; preds = %22, %34, %62, %67
  %69 = bitcast %struct.stDmaWrapper_RoiAlignInfo* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %69) #9
  %70 = getelementptr inbounds %struct.stDmaWrapper_RoiAlignInfo, %struct.stDmaWrapper_RoiAlignInfo* %4, i64 0, i32 0
  %71 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 6
  %72 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %71, align 8, !tbaa !25
  %73 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %72, i64 0, i32 1
  %74 = load i32, i32* %73, align 4, !tbaa !31
  %75 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %72, i64 0, i32 2
  %76 = load i32, i32* %75, align 4, !tbaa !26
  %77 = mul nsw i32 %76, %74
  %78 = trunc i32 %77 to i16
  store i16 %78, i16* %70, align 2, !tbaa !67
  %79 = getelementptr inbounds %struct.stDmaWrapper_RoiAlignInfo, %struct.stDmaWrapper_RoiAlignInfo* %4, i64 0, i32 1
  %80 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %72, i64 1, i32 1
  %81 = load i32, i32* %80, align 4, !tbaa !31
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %79, align 2, !tbaa !69
  %83 = load i32, i32* %19, align 8, !tbaa !52
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %8, i64 0, i32 9
  %85 = load i8, i8* %84, align 4, !tbaa !51, !range !70
  %86 = icmp ne i8 %85, 0
  %87 = call i32 @nDmaWrapper_GetRecommendedWalkSize(i32 %83, i1 zeroext %86, %struct.stDmaWrapper_RoiAlignInfo* nonnull %4) #7
  %88 = load i32, i32* %19, align 8, !tbaa !52
  %89 = load i8, i8* %84, align 4, !tbaa !51, !range !70
  %90 = icmp ne i8 %89, 0
  %91 = call i32 @nDmaWrapper_GetRecommendedIntermBufStride(i32 %88, %struct.stDmaWrapper_RoiAlignInfo* nonnull %4, i1 zeroext %90) #7
  %92 = load i16, i16* %70, align 2, !tbaa !67
  %93 = load i16, i16* %79, align 2, !tbaa !69
  %94 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %71, align 8, !tbaa !25
  %95 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %94, i64 1, i32 2
  %96 = load i32, i32* %95, align 4, !tbaa !26
  %97 = icmp sgt i32 %96, %91
  %98 = select i1 %97, i32 %96, i32 %91
  %99 = srem i32 %96, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %68
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.83, i64 0, i64 0)) #7
  call void @abort() #7
  br label %102

102:                                              ; preds = %101, %68
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #7
  %103 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 8, !tbaa !61
  %104 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %103, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %102, %112
  %106 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ %114, %112 ], [ %103, %102 ]
  %107 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %106, i64 0, i32 1
  %108 = load i8, i8* %107, align 8, !tbaa !71, !range !70
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  store i8 1, i8* %107, align 8, !tbaa !71
  %111 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %106, i64 0, i32 0
  br label %173

112:                                              ; preds = %105
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %106, i64 0, i32 2
  %114 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %113, align 8, !tbaa !61
  %115 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %114, null
  br i1 %115, label %116, label %105, !llvm.loop !72

116:                                              ; preds = %112, %102
  %117 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ null, %102 ], [ %106, %112 ]
  %118 = call i8* @malloc(i64 24) #7
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = call i8* @malloc(i64 1024) #7
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.100, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #7
  br label %171

125:                                              ; preds = %120
  %126 = getelementptr inbounds i8, i8* %121, i64 1023
  store i8 0, i8* %126, align 1, !tbaa !36
  %127 = call i8* @halide_string_to_string(i8* nonnull %121, i8* nonnull %126, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.100, i64 0, i64 0)) #7
  %128 = ptrtoint i8* %127 to i64
  %129 = ptrtoint i8* %121 to i64
  %130 = sub i64 1, %129
  %131 = add i64 %130, %128
  %132 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %121, i64 %131) #7
  call void @halide_error(i8* %0, i8* nonnull %121) #7
  br label %171

133:                                              ; preds = %116
  %134 = call i8* @HAP_cache_lock(i32 128, i8** null) #7
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %149

136:                                              ; preds = %133
  call void @free(i8* nonnull %118) #7
  %137 = call i8* @malloc(i64 1024) #7
  %138 = icmp eq i8* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.101, i64 0, i64 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #7
  br label %171

141:                                              ; preds = %136
  %142 = getelementptr inbounds i8, i8* %137, i64 1023
  store i8 0, i8* %142, align 1, !tbaa !36
  %143 = call i8* @halide_string_to_string(i8* nonnull %137, i8* nonnull %142, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.101, i64 0, i64 0)) #7
  %144 = ptrtoint i8* %143 to i64
  %145 = ptrtoint i8* %137 to i64
  %146 = sub i64 1, %145
  %147 = add i64 %146, %144
  %148 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %137, i64 %147) #7
  call void @halide_error(i8* %0, i8* nonnull %137) #7
  br label %171

149:                                              ; preds = %133
  %150 = bitcast i8* %118 to i8**
  store i8* %134, i8** %150, align 8, !tbaa !64
  %151 = getelementptr inbounds i8, i8* %118, i64 8
  store i8 1, i8* %151, align 8, !tbaa !71
  %152 = call i8* @malloc(i64 24) #7
  %153 = getelementptr inbounds i8, i8* %118, i64 16
  %154 = bitcast i8* %153 to i8**
  store i8* %152, i8** %154, align 8, !tbaa !62
  %155 = icmp eq i8* %152, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %149
  %157 = getelementptr inbounds i8, i8* %134, i64 64
  %158 = bitcast i8* %152 to i8**
  store i8* %157, i8** %158, align 8, !tbaa !64
  %159 = getelementptr inbounds i8, i8* %152, i64 8
  store i8 0, i8* %159, align 8, !tbaa !71
  %160 = getelementptr inbounds i8, i8* %152, i64 16
  %161 = bitcast i8* %160 to %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"**
  store %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* null, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %161, align 8, !tbaa !62
  br label %162

162:                                              ; preds = %156, %149
  %163 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %117, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %162
  %165 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %117, i64 0, i32 2
  %166 = bitcast %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %165 to i8**
  store i8* %118, i8** %166, align 8, !tbaa !62
  br label %173

167:                                              ; preds = %162
  %168 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 8, !tbaa !61
  %169 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  store i8* %118, i8** bitcast (%"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE to i8**), align 8, !tbaa !61
  br label %173

171:                                              ; preds = %139, %141, %123, %125
  %172 = phi i8* [ %121, %125 ], [ %121, %123 ], [ %137, %141 ], [ %137, %139 ]
  call void @free(i8* %172) #7
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #7
  br label %372

173:                                              ; preds = %164, %167, %170, %110
  %174 = phi i8** [ %111, %110 ], [ %150, %170 ], [ %150, %167 ], [ %150, %164 ]
  %175 = load i8*, i8** %174, align 8, !tbaa !64
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #7
  %176 = icmp eq i8* %175, null
  br i1 %176, label %372, label %177

177:                                              ; preds = %173
  %178 = bitcast %struct.stDmaWrapper_DmaTransferSetup* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %178) #9
  %179 = load i32, i32* %19, align 8, !tbaa !52
  %180 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i64 0, i32 13
  store i32 %179, i32* %180, align 4, !tbaa !73
  %181 = load i32, i32* %14, align 8, !tbaa !56
  %182 = trunc i32 %181 to i16
  %183 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i64 0, i32 0
  store i16 %182, i16* %183, align 8, !tbaa !76
  %184 = load i32, i32* %15, align 4, !tbaa !57
  %185 = trunc i32 %184 to i16
  %186 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i64 0, i32 1
  store i16 %185, i16* %186, align 2, !tbaa !77
  %187 = load i32, i32* %16, align 8, !tbaa !58
  %188 = trunc i32 %187 to i16
  %189 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i64 0, i32 2
  store i16 %188, i16* %189, align 4, !tbaa !78
  %190 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i64 0, i32 5
  store i16 %92, i16* %190, align 2, !tbaa !79
  %191 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i64 0, i32 6
  store i16 %93, i16* %191, align 4, !tbaa !80
  %192 = trunc i32 %98 to i16
  %193 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i64 0, i32 7
  store i16 %192, i16* %193, align 2, !tbaa !81
  %194 = load i8, i8* %84, align 4, !tbaa !51, !range !70
  %195 = zext i8 %194 to i16
  %196 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i64 0, i32 11
  store i16 %195, i16* %196, align 8, !tbaa !82
  %197 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i64 0, i32 12
  store i16 0, i16* %197, align 2, !tbaa !83
  %198 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i64 0, i32 8
  store i8* %175, i8** %198, align 8, !tbaa !84
  %199 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 2
  %200 = load i8*, i8** %199, align 8, !tbaa !15
  %201 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i64 0, i32 9
  store i8* %200, i8** %201, align 8, !tbaa !85
  %202 = load i8*, i8** %9, align 8, !tbaa !54
  %203 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i64 0, i32 10
  store i8* %202, i8** %203, align 8, !tbaa !86
  %204 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %8, i64 0, i32 10
  %205 = load i8, i8* %204, align 1, !tbaa !53, !range !70
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %215, label %207

207:                                              ; preds = %177
  %208 = load i16, i16* %12, align 4, !tbaa !49
  %209 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %71, align 8, !tbaa !25
  %210 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %209, i64 0, i32 2
  %211 = load i32, i32* %210, align 4, !tbaa !26
  %212 = trunc i32 %211 to i16
  %213 = mul i16 %208, %212
  %214 = load i16, i16* %13, align 2, !tbaa !50
  br label %231

215:                                              ; preds = %177
  %216 = load i16, i16* %10, align 8, !tbaa !44
  %217 = zext i16 %216 to i32
  %218 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %71, align 8, !tbaa !25
  %219 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %218, i64 0, i32 0
  %220 = load i32, i32* %219, align 4, !tbaa !28
  %221 = add nsw i32 %220, %217
  %222 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %218, i64 0, i32 2
  %223 = load i32, i32* %222, align 4, !tbaa !26
  %224 = mul nsw i32 %221, %223
  %225 = trunc i32 %224 to i16
  %226 = load i16, i16* %11, align 2, !tbaa !48
  %227 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %218, i64 1, i32 0
  %228 = load i32, i32* %227, align 4, !tbaa !28
  %229 = trunc i32 %228 to i16
  %230 = add i16 %226, %229
  br label %231

231:                                              ; preds = %215, %207
  %232 = phi %struct.halide_dimension_t* [ %218, %215 ], [ %209, %207 ]
  %233 = phi i32 [ 0, %215 ], [ 1, %207 ]
  %234 = phi i16 [ %225, %215 ], [ %213, %207 ]
  %235 = phi i16 [ %230, %215 ], [ %214, %207 ]
  %236 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i64 0, i32 14
  store i32 %233, i32* %236, align 8
  %237 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i64 0, i32 3
  store i16 %234, i16* %237, align 2
  %238 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i64 0, i32 4
  store i16 %235, i16* %238, align 8
  switch i32 %179, label %264 [
    i32 0, label %239
    i32 3, label %257
    i32 6, label %257
    i32 9, label %257
    i32 12, label %257
  ]

239:                                              ; preds = %231
  %240 = load i32, i32* %18, align 4, !tbaa !24
  %241 = icmp eq i32 %240, 3
  br i1 %241, label %242, label %264

242:                                              ; preds = %239
  %243 = load i16, i16* %11, align 2, !tbaa !48
  %244 = zext i16 %243 to i32
  %245 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %232, i64 1, i32 0
  %246 = load i32, i32* %245, align 4, !tbaa !28
  %247 = add nsw i32 %246, %244
  %248 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %232, i64 2, i32 0
  %249 = load i32, i32* %248, align 4, !tbaa !28
  %250 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %251 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %250, align 8, !tbaa !25
  %252 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %251, i64 1, i32 2
  %253 = load i32, i32* %252, align 4, !tbaa !26
  %254 = mul nsw i32 %253, %249
  %255 = add nsw i32 %247, %254
  %256 = trunc i32 %255 to i16
  store i16 %256, i16* %238, align 8, !tbaa !87
  br label %264

257:                                              ; preds = %231, %231, %231, %231
  %258 = shl i16 %93, 1
  store i16 %258, i16* %191, align 4, !tbaa !80
  br i1 %206, label %261, label %259

259:                                              ; preds = %257
  %260 = shl i16 %235, 1
  store i16 %260, i16* %238, align 8, !tbaa !87
  br label %264

261:                                              ; preds = %257
  %262 = sub i16 %235, %185
  %263 = shl i16 %262, 1
  store i16 %263, i16* %238, align 8, !tbaa !87
  br label %264

264:                                              ; preds = %231, %239, %242, %259, %261
  %265 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %8, i64 0, i32 5
  %266 = load i8*, i8** %265, align 8, !tbaa !55
  %267 = call i8* @halide_hexagon_allocate_from_dma_pool(i8* %0, i8* %266) #7
  %268 = icmp eq i8* %267, null
  br i1 %268, label %370, label %269

269:                                              ; preds = %264
  %270 = call i32 @nDmaWrapper_DmaTransferSetup(i8* nonnull %267, %struct.stDmaWrapper_DmaTransferSetup* nonnull %5) #7
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %291, label %272

272:                                              ; preds = %269
  %273 = call i8* @malloc(i64 1024) #7
  %274 = icmp eq i8* %273, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, i8* %273, i64 1023
  store i8 0, i8* %276, align 1, !tbaa !36
  br label %277

277:                                              ; preds = %272, %275
  %278 = phi i8* [ %276, %275 ], [ null, %272 ]
  %279 = call i8* @halide_string_to_string(i8* %273, i8* %278, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i64 0, i64 0)) #7
  %280 = sext i32 %270 to i64
  %281 = call i8* @halide_int64_to_string(i8* %279, i8* %278, i64 %280, i32 1) #7
  %282 = call i8* @halide_string_to_string(i8* %281, i8* %278, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #7
  br i1 %274, label %283, label %284

283:                                              ; preds = %277
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #7
  br label %290

284:                                              ; preds = %277
  %285 = ptrtoint i8* %282 to i64
  %286 = ptrtoint i8* %273 to i64
  %287 = add i64 %285, 1
  %288 = sub i64 %287, %286
  %289 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %273, i64 %288) #7
  call void @halide_error(i8* %0, i8* nonnull %273) #7
  br label %290

290:                                              ; preds = %284, %283
  call void @free(i8* %273) #7
  br label %370

291:                                              ; preds = %269
  %292 = call i32 @nDmaWrapper_Move(i8* nonnull %267) #7
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %313, label %294

294:                                              ; preds = %291
  %295 = call i8* @malloc(i64 1024) #7
  %296 = icmp eq i8* %295, null
  br i1 %296, label %299, label %297

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, i8* %295, i64 1023
  store i8 0, i8* %298, align 1, !tbaa !36
  br label %299

299:                                              ; preds = %294, %297
  %300 = phi i8* [ %298, %297 ], [ null, %294 ]
  %301 = call i8* @halide_string_to_string(i8* %295, i8* %300, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i64 0, i64 0)) #7
  %302 = sext i32 %292 to i64
  %303 = call i8* @halide_int64_to_string(i8* %301, i8* %300, i64 %302, i32 1) #7
  %304 = call i8* @halide_string_to_string(i8* %303, i8* %300, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #7
  br i1 %296, label %305, label %306

305:                                              ; preds = %299
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #7
  br label %312

306:                                              ; preds = %299
  %307 = ptrtoint i8* %304 to i64
  %308 = ptrtoint i8* %295 to i64
  %309 = add i64 %307, 1
  %310 = sub i64 %309, %308
  %311 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %295, i64 %310) #7
  call void @halide_error(i8* %0, i8* nonnull %295) #7
  br label %312

312:                                              ; preds = %306, %305
  call void @free(i8* %295) #7
  br label %370

313:                                              ; preds = %291
  %314 = call i32 @nDmaWrapper_Wait(i8* nonnull %267) #7
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %335, label %316

316:                                              ; preds = %313
  %317 = call i8* @malloc(i64 1024) #7
  %318 = icmp eq i8* %317, null
  br i1 %318, label %321, label %319

319:                                              ; preds = %316
  %320 = getelementptr inbounds i8, i8* %317, i64 1023
  store i8 0, i8* %320, align 1, !tbaa !36
  br label %321

321:                                              ; preds = %316, %319
  %322 = phi i8* [ %320, %319 ], [ null, %316 ]
  %323 = call i8* @halide_string_to_string(i8* %317, i8* %322, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.98, i64 0, i64 0)) #7
  %324 = sext i32 %314 to i64
  %325 = call i8* @halide_int64_to_string(i8* %323, i8* %322, i64 %324, i32 1) #7
  %326 = call i8* @halide_string_to_string(i8* %325, i8* %322, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #7
  br i1 %318, label %327, label %328

327:                                              ; preds = %321
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #7
  br label %334

328:                                              ; preds = %321
  %329 = ptrtoint i8* %326 to i64
  %330 = ptrtoint i8* %317 to i64
  %331 = add i64 %329, 1
  %332 = sub i64 %331, %330
  %333 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %317, i64 %332) #7
  call void @halide_error(i8* %0, i8* nonnull %317) #7
  br label %334

334:                                              ; preds = %328, %327
  call void @free(i8* %317) #7
  br label %370

335:                                              ; preds = %313
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #7
  %336 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 8, !tbaa !61
  %337 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %336, null
  br i1 %337, label %349, label %338

338:                                              ; preds = %335, %345
  %339 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ %347, %345 ], [ %336, %335 ]
  %340 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %339, i64 0, i32 0
  %341 = load i8*, i8** %340, align 8, !tbaa !64
  %342 = icmp eq i8* %341, %175
  br i1 %342, label %343, label %345

343:                                              ; preds = %338
  %344 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %339, i64 0, i32 1
  store i8 0, i8* %344, align 8, !tbaa !71
  br label %367

345:                                              ; preds = %338
  %346 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %339, i64 0, i32 2
  %347 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %346, align 8, !tbaa !61
  %348 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %347, null
  br i1 %348, label %349, label %338, !llvm.loop !88

349:                                              ; preds = %345, %335
  %350 = call i8* @malloc(i64 1024) #7
  %351 = icmp eq i8* %350, null
  br i1 %351, label %354, label %352

352:                                              ; preds = %349
  %353 = getelementptr inbounds i8, i8* %350, i64 1023
  store i8 0, i8* %353, align 1, !tbaa !36
  br label %354

354:                                              ; preds = %352, %349
  %355 = phi i8* [ %353, %352 ], [ null, %349 ]
  %356 = call i8* @halide_string_to_string(i8* %350, i8* %355, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.104, i64 0, i64 0)) #7
  %357 = call i8* @halide_pointer_to_string(i8* %356, i8* %355, i8* nonnull %175) #7
  %358 = call i8* @halide_string_to_string(i8* %357, i8* %355, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #7
  br i1 %351, label %359, label %360

359:                                              ; preds = %354
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #7
  br label %366

360:                                              ; preds = %354
  %361 = ptrtoint i8* %358 to i64
  %362 = ptrtoint i8* %350 to i64
  %363 = sub i64 1, %362
  %364 = add i64 %363, %361
  %365 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %350, i64 %364) #7
  call void @halide_error(i8* %0, i8* nonnull %350) #7
  br label %366

366:                                              ; preds = %360, %359
  call void @free(i8* %350) #7
  br label %367

367:                                              ; preds = %343, %366
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #7
  %368 = load i8*, i8** %265, align 8, !tbaa !55
  %369 = call i32 @halide_hexagon_free_to_dma_pool(i8* %0, i8* nonnull %267, i8* %368) #7
  br label %370

370:                                              ; preds = %367, %264, %334, %312, %290
  %371 = phi i32 [ -39, %290 ], [ -39, %312 ], [ -39, %334 ], [ -39, %264 ], [ %369, %367 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %178) #9
  br label %372

372:                                              ; preds = %173, %171, %370
  %373 = phi i32 [ %371, %370 ], [ -39, %171 ], [ -39, %173 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %69) #9
  ret i32 %373
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_dma_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = tail call i8* @malloc(i64 1024) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #7
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !36
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i64 0, i64 0)) #7
  %10 = ptrtoint i8* %9 to i64
  %11 = ptrtoint i8* %3 to i64
  %12 = add i64 %10, 1
  %13 = sub i64 %12, %11
  %14 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %13) #7
  tail call void @halide_error(i8* %0, i8* nonnull %3) #7
  br label %15

15:                                               ; preds = %7, %5
  tail call void @free(i8* %3) #7
  ret i32 -15
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_dma_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = tail call i8* @malloc(i64 1024) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #7
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i64 1023
  store i8 0, i8* %8, align 1, !tbaa !36
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i64 0, i64 0)) #7
  %10 = ptrtoint i8* %9 to i64
  %11 = ptrtoint i8* %3 to i64
  %12 = add i64 %10, 1
  %13 = sub i64 %12, %11
  %14 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %13) #7
  tail call void @halide_error(i8* %0, i8* nonnull %3) #7
  br label %15

15:                                               ; preds = %7, %5
  tail call void @free(i8* %3) #7
  ret i32 -15
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_dma_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %5 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 1
  store %struct.halide_device_interface_t* %5, %struct.halide_device_interface_t** %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !22
  %9 = inttoptr i64 %8 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*
  %10 = tail call i8* @malloc(i64 48) #7
  %11 = bitcast i8* %10 to i8**
  store i8* null, i8** %11, align 8, !tbaa !54
  %12 = getelementptr inbounds i8, i8* %10, i64 8
  %13 = bitcast i8* %12 to i16*
  store i16 0, i16* %13, align 8, !tbaa !44
  %14 = getelementptr inbounds i8, i8* %10, i64 10
  %15 = bitcast i8* %14 to i16*
  store i16 0, i16* %15, align 2, !tbaa !48
  %16 = getelementptr inbounds i8, i8* %10, i64 12
  %17 = bitcast i8* %16 to i16*
  store i16 0, i16* %17, align 4, !tbaa !49
  %18 = getelementptr inbounds i8, i8* %10, i64 14
  %19 = bitcast i8* %18 to i16*
  store i16 0, i16* %19, align 2, !tbaa !50
  %20 = getelementptr inbounds i8, i8* %10, i64 16
  %21 = bitcast i8* %20 to i8**
  store i8* null, i8** %21, align 8, !tbaa !55
  %22 = getelementptr inbounds i8, i8* %10, i64 24
  %23 = bitcast i8* %22 to i32*
  store i32 0, i32* %23, align 8, !tbaa !56
  %24 = getelementptr inbounds i8, i8* %10, i64 28
  %25 = bitcast i8* %24 to i32*
  store i32 0, i32* %25, align 4, !tbaa !57
  %26 = getelementptr inbounds i8, i8* %10, i64 32
  %27 = bitcast i8* %26 to i32*
  store i32 0, i32* %27, align 8, !tbaa !58
  %28 = getelementptr inbounds i8, i8* %10, i64 36
  store i8 0, i8* %28, align 4, !tbaa !51
  %29 = getelementptr inbounds i8, i8* %10, i64 40
  %30 = bitcast i8* %29 to i32*
  store i32 0, i32* %30, align 8, !tbaa !52
  %31 = getelementptr inbounds i8, i8* %10, i64 37
  store i8 0, i8* %31, align 1, !tbaa !53
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !54
  store i8* %33, i8** %11, align 8, !tbaa !54
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i64 0, i32 3
  %35 = load i16, i16* %34, align 4, !tbaa !49
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 6
  %38 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %37, align 8, !tbaa !25
  %39 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %38, i64 0, i32 0
  %40 = load i32, i32* %39, align 4, !tbaa !28
  %41 = add nsw i32 %40, %36
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %43 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %42, align 8, !tbaa !25
  %44 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %43, i64 0, i32 0
  %45 = load i32, i32* %44, align 4, !tbaa !28
  %46 = sub i32 %41, %45
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %17, align 4, !tbaa !49
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i64 0, i32 4
  %49 = load i16, i16* %48, align 2, !tbaa !50
  %50 = zext i16 %49 to i32
  %51 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %38, i64 1, i32 0
  %52 = load i32, i32* %51, align 4, !tbaa !28
  %53 = add nsw i32 %52, %50
  %54 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %43, i64 1, i32 0
  %55 = load i32, i32* %54, align 4, !tbaa !28
  %56 = sub i32 %53, %55
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %19, align 2, !tbaa !50
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i64 0, i32 5
  %59 = load i8*, i8** %58, align 8, !tbaa !55
  store i8* %59, i8** %21, align 8, !tbaa !55
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i64 0, i32 6
  %61 = load i32, i32* %60, align 8, !tbaa !56
  store i32 %61, i32* %23, align 8, !tbaa !56
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i64 0, i32 7
  %63 = load i32, i32* %62, align 4, !tbaa !57
  store i32 %63, i32* %25, align 4, !tbaa !57
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i64 0, i32 8
  %65 = load i32, i32* %64, align 8, !tbaa !58
  store i32 %65, i32* %27, align 8, !tbaa !58
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i64 0, i32 9
  %67 = load i8, i8* %66, align 4, !tbaa !51, !range !70
  store i8 %67, i8* %28, align 4, !tbaa !51
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i64 0, i32 10
  %69 = load i8, i8* %68, align 1, !tbaa !53, !range !70
  store i8 %69, i8* %31, align 1, !tbaa !53
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i64 0, i32 11
  %71 = load i32, i32* %70, align 8, !tbaa !52
  store i32 %71, i32* %30, align 8, !tbaa !52
  %72 = ptrtoint i8* %10 to i64
  %73 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 0
  store i64 %72, i64* %73, align 8, !tbaa !22
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_dma_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #4 {
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.43, i64 0, i64 0)) #7
  tail call void @abort() #7
  %6 = tail call i8* @malloc(i64 1024) #7
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i8* @halide_string_to_string(i8* %6, i8* null, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i64 0, i64 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #7
  br label %18

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i64 1023
  store i8 0, i8* %11, align 1, !tbaa !36
  %12 = tail call i8* @halide_string_to_string(i8* nonnull %6, i8* nonnull %11, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i64 0, i64 0)) #7
  %13 = ptrtoint i8* %12 to i64
  %14 = ptrtoint i8* %6 to i64
  %15 = add i64 %13, 1
  %16 = sub i64 %15, %14
  %17 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %16) #7
  tail call void @halide_error(i8* %0, i8* nonnull %6) #7
  br label %18

18:                                               ; preds = %10, %8
  tail call void @free(i8* %6) #7
  ret i32 -1
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_dma_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.47, i64 0, i64 0)) #7
  tail call void @abort() #7
  %7 = load i64, i64* %3, align 8, !tbaa !22
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i64 [ %4, %2 ], [ %7, %6 ]
  %10 = inttoptr i64 %9 to i8*
  tail call void @free(i8* %10) #7
  store i64 0, i64* %3, align 8, !tbaa !22
  ret i32 0
}

declare void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_hexagon_dma_device_sync(i8* %0, %struct.halide_buffer_t* %1) #6 {
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_dma_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE) #7
  ret i32 %3
}

declare extern_weak i32 @halide_default_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_dma_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE) #7
  ret i32 %3
}

declare extern_weak i32 @halide_default_device_and_host_free(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak %struct.halide_device_interface_t* @halide_hexagon_dma_device_interface() local_unnamed_addr #6 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE
}

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_hexagon_dma_device_release(i8* %0) #6 {
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_dma_power_mode_voting(i8* %0, i32 %1) local_unnamed_addr #4 {
  switch i32 %1, label %17 [
    i32 5, label %3
    i32 0, label %5
    i32 4, label %7
    i32 1, label %9
    i32 6, label %11
    i32 2, label %13
    i32 3, label %15
  ]

3:                                                ; preds = %2
  %4 = tail call i32 @nDmaWrapper_PowerVoting(i32 1) #7
  br label %36

5:                                                ; preds = %2
  %6 = tail call i32 @nDmaWrapper_PowerVoting(i32 2) #7
  br label %36

7:                                                ; preds = %2
  %8 = tail call i32 @nDmaWrapper_PowerVoting(i32 3) #7
  br label %36

9:                                                ; preds = %2
  %10 = tail call i32 @nDmaWrapper_PowerVoting(i32 4) #7
  br label %36

11:                                               ; preds = %2
  %12 = tail call i32 @nDmaWrapper_PowerVoting(i32 5) #7
  br label %36

13:                                               ; preds = %2
  %14 = tail call i32 @nDmaWrapper_PowerVoting(i32 6) #7
  br label %36

15:                                               ; preds = %2
  %16 = tail call i32 @nDmaWrapper_PowerVoting(i32 -3) #7
  br label %36

17:                                               ; preds = %2
  %18 = tail call i8* @malloc(i64 1024) #7
  %19 = icmp eq i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %18, i64 1023
  store i8 0, i8* %21, align 1, !tbaa !36
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi i8* [ %21, %20 ], [ null, %17 ]
  %24 = tail call i8* @halide_string_to_string(i8* %18, i8* %23, i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.61, i64 0, i64 0)) #7
  %25 = sext i32 %1 to i64
  %26 = tail call i8* @halide_int64_to_string(i8* %24, i8* %23, i64 %25, i32 1) #7
  %27 = tail call i8* @halide_string_to_string(i8* %26, i8* %23, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0)) #7
  br i1 %19, label %28, label %29

28:                                               ; preds = %22
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #7
  br label %35

29:                                               ; preds = %22
  %30 = ptrtoint i8* %27 to i64
  %31 = ptrtoint i8* %18 to i64
  %32 = add i64 %30, 1
  %33 = sub i64 %32, %31
  %34 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %18, i64 %33) #7
  tail call void @halide_error(i8* %0, i8* nonnull %18) #7
  br label %35

35:                                               ; preds = %29, %28
  tail call void @free(i8* %18) #7
  br label %36

36:                                               ; preds = %35, %15, %13, %11, %9, %7, %5, %3
  %37 = phi i32 [ -1, %35 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ %4, %3 ]
  ret i32 %37
}

declare i32 @nDmaWrapper_PowerVoting(i32) local_unnamed_addr #2

declare extern_weak void @halide_use_jit_module() #2

declare extern_weak void @halide_release_jit_module() #2

declare i32 @halide_device_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #2

declare i32 @halide_device_free(i8*, %struct.halide_buffer_t*) #2

declare i32 @halide_device_sync(i8*, %struct.halide_buffer_t*) #2

declare void @halide_device_release(i8*, %struct.halide_device_interface_t*) #2

declare i32 @halide_copy_to_host(i8*, %struct.halide_buffer_t*) #2

declare i32 @halide_copy_to_device(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #2

declare extern_weak i32 @halide_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #2

declare extern_weak i32 @halide_device_and_host_free(i8*, %struct.halide_buffer_t*) #2

declare i32 @halide_buffer_copy(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*) #2

declare i32 @halide_device_crop(i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*) #2

declare i32 @halide_device_slice(i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*) #2

declare i32 @halide_device_release_crop(i8*, %struct.halide_buffer_t*) #2

declare i32 @halide_device_wrap_native(i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*) #2

declare i32 @halide_device_detach_native(i8*, %struct.halide_buffer_t*) #2

declare i32 @HAP_cache_unlock(i8*) local_unnamed_addr #2

declare void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

declare void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

declare i32 @nDmaWrapper_GetRecommendedWalkSize(i32, i1 zeroext, %struct.stDmaWrapper_RoiAlignInfo*) local_unnamed_addr #2

declare i32 @nDmaWrapper_GetRecommendedIntermBufStride(i32, %struct.stDmaWrapper_RoiAlignInfo*, i1 zeroext) local_unnamed_addr #2

declare extern_weak i8* @halide_hexagon_allocate_from_dma_pool(i8*, i8*) local_unnamed_addr #2

declare i32 @nDmaWrapper_DmaTransferSetup(i8*, %struct.stDmaWrapper_DmaTransferSetup*) local_unnamed_addr #2

declare i32 @nDmaWrapper_Move(i8*) local_unnamed_addr #2

declare i32 @nDmaWrapper_Wait(i8*) local_unnamed_addr #2

declare extern_weak i32 @halide_hexagon_free_to_dma_pool(i8*, i8*, i8*) local_unnamed_addr #2

declare i8* @malloc(i64) local_unnamed_addr #2

declare i8* @HAP_cache_lock(i32, i8**) local_unnamed_addr #2

declare extern_weak i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

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
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = !{!16, !17, i64 8}
!40 = !{!41, !17, i64 120}
!41 = !{!"_ZTS25halide_device_interface_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120}
!42 = !{!43, !17, i64 0}
!43 = !{!"_ZTS30halide_device_interface_impl_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120}
!44 = !{!45, !20, i64 8}
!45 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma17dma_device_handleE", !17, i64 0, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !17, i64 16, !21, i64 24, !21, i64 28, !21, i64 32, !46, i64 36, !46, i64 37, !47, i64 40}
!46 = !{!"bool", !5, i64 0}
!47 = !{!"_ZTS9t_eDmaFmt", !5, i64 0}
!48 = !{!45, !20, i64 10}
!49 = !{!45, !20, i64 12}
!50 = !{!45, !20, i64 14}
!51 = !{!45, !46, i64 36}
!52 = !{!45, !47, i64 40}
!53 = !{!45, !46, i64 37}
!54 = !{!45, !17, i64 0}
!55 = !{!45, !17, i64 16}
!56 = !{!45, !21, i64 24}
!57 = !{!45, !21, i64 28}
!58 = !{!45, !21, i64 32}
!59 = !{!16, !4, i64 24}
!60 = !{!43, !17, i64 8}
!61 = !{!17, !17, i64 0}
!62 = !{!63, !17, i64 16}
!63 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma9desc_poolE", !17, i64 0, !46, i64 8, !17, i64 16}
!64 = !{!63, !17, i64 0}
!65 = distinct !{!65, !8}
!66 = !{!43, !17, i64 80}
!67 = !{!68, !20, i64 0}
!68 = !{!"_ZTS25stDmaWrapper_RoiAlignInfo", !20, i64 0, !20, i64 2}
!69 = !{!68, !20, i64 2}
!70 = !{i8 0, i8 2}
!71 = !{!63, !46, i64 8}
!72 = distinct !{!72, !8}
!73 = !{!74, !47, i64 44}
!74 = !{!"_ZTS29stDmaWrapper_DmaTransferSetup", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !17, i64 16, !17, i64 24, !17, i64 32, !20, i64 40, !20, i64 42, !47, i64 44, !75, i64 48}
!75 = !{!"_ZTS26eDmaWrapper_TransationType", !5, i64 0}
!76 = !{!74, !20, i64 0}
!77 = !{!74, !20, i64 2}
!78 = !{!74, !20, i64 4}
!79 = !{!74, !20, i64 10}
!80 = !{!74, !20, i64 12}
!81 = !{!74, !20, i64 14}
!82 = !{!74, !20, i64 40}
!83 = !{!74, !20, i64 42}
!84 = !{!74, !17, i64 16}
!85 = !{!74, !17, i64 24}
!86 = !{!74, !17, i64 32}
!87 = !{!74, !20, i64 8}
!88 = distinct !{!88, !8}
