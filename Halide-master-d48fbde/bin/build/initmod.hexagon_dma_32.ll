; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"struct.Halide::Runtime::Internal::HexagonDma::desc_pool" = type { i8*, i8, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* }
%struct.halide_mutex = type { [1 x i32] }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle" = type { i8*, i16, i16, i16, i16, i8*, i32, i32, i32, i8, i8, i32 }
%struct.stDmaWrapper_RoiAlignInfo = type { i16, i16 }
%struct.stDmaWrapper_DmaTransferSetup = type { i16, i16, i16, i16, i16, i16, i16, i16, i8*, i8*, i8*, i16, i16, i32, i32 }

@_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* null, align 4
@_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE = weak global %struct.halide_mutex zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:374 Assert failed: size != 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"Hexagon: Out of memory (halide_malloc failed for device_malloc)\0A\00", align 1
@.str.9 = private unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:412 Assert failed: dma_engine\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:429 Assert failed: dma_engine\0A\00", align 1
@_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE = weak global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* null, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal10HexagonDma33hexagon_dma_device_interface_implE }, align 4
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
@_ZN6Halide7Runtime8Internal10HexagonDma33hexagon_dma_device_interface_implE = weak global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_sync, i32 (i8*)* @halide_hexagon_dma_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_hexagon_dma_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_hexagon_dma_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_detach_native }, align 4
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
  br i1 %5, label %6, label %14

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7
  %9 = load i64, i64* %8, align 8, !tbaa !3
  %10 = icmp eq i64 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1
  %13 = icmp sgt i32 %7, 0
  br i1 %13, label %6, label %25, !llvm.loop !7

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15
  %19 = load i64, i64* %18, align 8, !tbaa !3
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %51, label %21

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %40

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0
  %27 = load i64, i64* %26, align 8, !tbaa !9
  %28 = add i64 %27, %2
  %29 = trunc i64 %28 to i32
  %30 = inttoptr i32 %29 to i8*
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1
  %32 = load i64, i64* %31, align 8, !tbaa !11
  %33 = add i64 %32, %3
  %34 = trunc i64 %33 to i32
  %35 = inttoptr i32 %34 to i8*
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6
  %37 = load i64, i64* %36, align 8, !tbaa !12
  %38 = trunc i64 %37 to i32
  %39 = tail call i8* @memcpy(i8* %35, i8* %30, i32 %38) #7
  br label %51

40:                                               ; preds = %21, %40
  %41 = phi i64 [ 0, %21 ], [ %48, %40 ]
  %42 = phi i64 [ %2, %21 ], [ %45, %40 ]
  %43 = phi i64 [ %3, %21 ], [ %47, %40 ]
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %42, i64 %43) #8
  %44 = load i64, i64* %23, align 8, !tbaa !3
  %45 = add i64 %44, %42
  %46 = load i64, i64* %24, align 8, !tbaa !3
  %47 = add i64 %46, %43
  %48 = add nuw i64 %41, 1
  %49 = load i64, i64* %18, align 8, !tbaa !3
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %40, label %51, !llvm.loop !13

51:                                               ; preds = %40, %17, %25
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !11
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 2
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
  br i1 %2, label %8, label %13

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %10 = load i8*, i8** %9, align 4, !tbaa !15
  %11 = ptrtoint i8* %10 to i32
  %12 = zext i32 %11 to i64
  br label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !22
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi i64 [ %12, %8 ], [ %15, %13 ]
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 0
  store i64 %17, i64* %18, align 8, !tbaa !9
  br i1 %4, label %19, label %24

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 2
  %21 = load i8*, i8** %20, align 4, !tbaa !15
  %22 = ptrtoint i8* %21 to i32
  %23 = zext i32 %22 to i64
  br label %27

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0
  %26 = load i64, i64* %25, align 8, !tbaa !22
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i64 [ %23, %19 ], [ %26, %24 ]
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 1
  store i64 %28, i64* %29, align 8, !tbaa !11
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %31 = load i8, i8* %30, align 1, !tbaa !23
  %32 = zext i8 %31 to i32
  %33 = add nuw nsw i32 %32, 7
  %34 = lshr i32 %33, 3
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 6
  store i64 %35, i64* %36, align 8, !tbaa !12
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 0
  store i64 1, i64* %37, align 8, !tbaa !3
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 0
  store i64 0, i64* %38, align 8, !tbaa !3
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 0
  store i64 0, i64* %39, align 8, !tbaa !3
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 1
  store i64 1, i64* %40, align 8, !tbaa !3
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 1
  store i64 0, i64* %41, align 8, !tbaa !3
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 1
  store i64 0, i64* %42, align 8, !tbaa !3
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 2
  store i64 1, i64* %43, align 8, !tbaa !3
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 2
  store i64 0, i64* %44, align 8, !tbaa !3
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 2
  store i64 0, i64* %45, align 8, !tbaa !3
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 3
  store i64 1, i64* %46, align 8, !tbaa !3
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 3
  store i64 0, i64* %47, align 8, !tbaa !3
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 3
  store i64 0, i64* %48, align 8, !tbaa !3
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 4
  store i64 1, i64* %49, align 8, !tbaa !3
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 4
  store i64 0, i64* %50, align 8, !tbaa !3
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 4
  store i64 0, i64* %51, align 8, !tbaa !3
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 5
  store i64 1, i64* %52, align 8, !tbaa !3
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 5
  store i64 0, i64* %53, align 8, !tbaa !3
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 5
  store i64 0, i64* %54, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 6
  store i64 1, i64* %55, align 8, !tbaa !3
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 6
  store i64 0, i64* %56, align 8, !tbaa !3
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 6
  store i64 0, i64* %57, align 8, !tbaa !3
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 7
  store i64 1, i64* %58, align 8, !tbaa !3
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 7
  store i64 0, i64* %59, align 8, !tbaa !3
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 7
  store i64 0, i64* %60, align 8, !tbaa !3
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 8
  store i64 1, i64* %61, align 8, !tbaa !3
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 8
  store i64 0, i64* %62, align 8, !tbaa !3
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 8
  store i64 0, i64* %63, align 8, !tbaa !3
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 9
  store i64 1, i64* %64, align 8, !tbaa !3
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 9
  store i64 0, i64* %65, align 8, !tbaa !3
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 9
  store i64 0, i64* %66, align 8, !tbaa !3
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 10
  store i64 1, i64* %67, align 8, !tbaa !3
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 10
  store i64 0, i64* %68, align 8, !tbaa !3
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 10
  store i64 0, i64* %69, align 8, !tbaa !3
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 11
  store i64 1, i64* %70, align 8, !tbaa !3
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 11
  store i64 0, i64* %71, align 8, !tbaa !3
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 11
  store i64 0, i64* %72, align 8, !tbaa !3
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 12
  store i64 1, i64* %73, align 8, !tbaa !3
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 12
  store i64 0, i64* %74, align 8, !tbaa !3
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 12
  store i64 0, i64* %75, align 8, !tbaa !3
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 13
  store i64 1, i64* %76, align 8, !tbaa !3
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 13
  store i64 0, i64* %77, align 8, !tbaa !3
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 13
  store i64 0, i64* %78, align 8, !tbaa !3
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 14
  store i64 1, i64* %79, align 8, !tbaa !3
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 14
  store i64 0, i64* %80, align 8, !tbaa !3
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 14
  store i64 0, i64* %81, align 8, !tbaa !3
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 15
  store i64 1, i64* %82, align 8, !tbaa !3
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 15
  store i64 0, i64* %83, align 8, !tbaa !3
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 15
  store i64 0, i64* %84, align 8, !tbaa !3
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 2
  %86 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %87 = load i32, i32* %86, align 4, !tbaa !24
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %27
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !25
  %92 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %93 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %92, align 8, !tbaa !25
  br label %101

94:                                               ; preds = %101, %27
  %95 = phi i64 [ 0, %27 ], [ %114, %101 ]
  %96 = load i64, i64* %36, align 8, !tbaa !12
  %97 = mul i64 %95, %96
  store i64 %97, i64* %85, align 8, !tbaa !14
  %98 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5
  %99 = load i32, i32* %98, align 4, !tbaa !24
  %100 = icmp eq i32 %87, %99
  br i1 %100, label %117, label %126

101:                                              ; preds = %89, %101
  %102 = phi i64 [ 0, %89 ], [ %114, %101 ]
  %103 = phi i32 [ 0, %89 ], [ %115, %101 ]
  %104 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 2
  %105 = load i32, i32* %104, align 4, !tbaa !26
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %93, i32 %103, i32 0
  %108 = load i32, i32* %107, align 4, !tbaa !28
  %109 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 0
  %110 = load i32, i32* %109, align 4, !tbaa !28
  %111 = sub nsw i32 %108, %110
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 %112, %106
  %114 = add i64 %113, %102
  %115 = add nuw nsw i32 %103, 1
  %116 = icmp slt i32 %115, %87
  br i1 %116, label %101, label %94, !llvm.loop !29

117:                                              ; preds = %94
  %118 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1
  %119 = load i8, i8* %118, align 1, !tbaa !23
  %120 = zext i8 %119 to i32
  %121 = add nuw nsw i32 %120, 7
  %122 = lshr i32 %121, 3
  %123 = icmp ne i32 %34, %122
  %124 = icmp sgt i32 %87, 16
  %125 = or i1 %124, %123
  br i1 %125, label %126, label %128

126:                                              ; preds = %117, %94
  %127 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %127, i8 0, i32 416, i1 false)
  br label %245

128:                                              ; preds = %117
  %129 = icmp eq i64 %96, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %128
  br i1 %88, label %131, label %243

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %133 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %132, align 8, !tbaa !25
  %134 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %135 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %134, align 8, !tbaa !25
  br label %144

136:                                              ; preds = %128
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i32 416, i1 false)
  br label %245

138:                                              ; preds = %168
  %139 = load i64, i64* %36, align 8, !tbaa !12
  %140 = load i64, i64* %38, align 8, !tbaa !3
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %243

142:                                              ; preds = %138
  %143 = load i64, i64* %39, align 8, !tbaa !3
  br label %190

144:                                              ; preds = %131, %168
  %145 = phi i32 [ 0, %131 ], [ %175, %168 ]
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 2
  %147 = load i32, i32* %146, align 4, !tbaa !26
  %148 = sext i32 %147 to i64
  %149 = mul nsw i64 %148, %35
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %135, i32 %145, i32 2
  %151 = load i32, i32* %150, align 4, !tbaa !26
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %152, %35
  %154 = icmp eq i32 %145, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %155, %162
  %158 = phi i32 [ %163, %162 ], [ 0, %155 ]
  %159 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %158
  %160 = load i64, i64* %159, align 8, !tbaa !3
  %161 = icmp ult i64 %149, %160
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = add nuw nsw i32 %158, 1
  %164 = icmp ult i32 %163, %145
  br i1 %164, label %157, label %165, !llvm.loop !30

165:                                              ; preds = %162, %157, %155, %144
  %166 = phi i32 [ 0, %144 ], [ %145, %155 ], [ %158, %157 ], [ %145, %162 ]
  %167 = icmp ugt i32 %145, %166
  br i1 %167, label %177, label %168

168:                                              ; preds = %177, %165
  %169 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 1
  %170 = load i32, i32* %169, align 4, !tbaa !31
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %166
  store i64 %171, i64* %172, align 8, !tbaa !3
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %166
  store i64 %149, i64* %173, align 8, !tbaa !3
  %174 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %166
  store i64 %153, i64* %174, align 8, !tbaa !3
  %175 = add nuw nsw i32 %145, 1
  %176 = icmp slt i32 %175, %87
  br i1 %176, label %144, label %138, !llvm.loop !32

177:                                              ; preds = %165, %177
  %178 = phi i32 [ %179, %177 ], [ %145, %165 ]
  %179 = add nsw i32 %178, -1
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %179
  %181 = load i64, i64* %180, align 8, !tbaa !3
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %178
  store i64 %181, i64* %182, align 8, !tbaa !3
  %183 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %179
  %184 = load i64, i64* %183, align 8, !tbaa !3
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %178
  store i64 %184, i64* %185, align 8, !tbaa !3
  %186 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %179
  %187 = load i64, i64* %186, align 8, !tbaa !3
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %178
  store i64 %187, i64* %188, align 8, !tbaa !3
  %189 = icmp sgt i32 %179, %166
  br i1 %189, label %177, label %168, !llvm.loop !33

190:                                              ; preds = %142, %194
  %191 = phi i64 [ %143, %142 ], [ %199, %194 ]
  %192 = phi i64 [ %140, %142 ], [ %196, %194 ]
  %193 = icmp eq i64 %192, %191
  br i1 %193, label %194, label %243

194:                                              ; preds = %190
  %195 = load i64, i64* %37, align 8, !tbaa !3
  %196 = mul i64 %195, %191
  store i64 %196, i64* %36, align 8, !tbaa !12
  %197 = load i64, i64* %40, align 8, !tbaa !3
  store i64 %197, i64* %37, align 8, !tbaa !3
  %198 = load i64, i64* %41, align 8, !tbaa !3
  store i64 %198, i64* %38, align 8, !tbaa !3
  %199 = load i64, i64* %42, align 8, !tbaa !3
  store i64 %199, i64* %39, align 8, !tbaa !3
  %200 = load i64, i64* %43, align 8, !tbaa !3
  store i64 %200, i64* %40, align 8, !tbaa !3
  %201 = load i64, i64* %44, align 8, !tbaa !3
  store i64 %201, i64* %41, align 8, !tbaa !3
  %202 = load i64, i64* %45, align 8, !tbaa !3
  store i64 %202, i64* %42, align 8, !tbaa !3
  %203 = load i64, i64* %46, align 8, !tbaa !3
  store i64 %203, i64* %43, align 8, !tbaa !3
  %204 = load i64, i64* %47, align 8, !tbaa !3
  store i64 %204, i64* %44, align 8, !tbaa !3
  %205 = load i64, i64* %48, align 8, !tbaa !3
  store i64 %205, i64* %45, align 8, !tbaa !3
  %206 = load i64, i64* %49, align 8, !tbaa !3
  store i64 %206, i64* %46, align 8, !tbaa !3
  %207 = load i64, i64* %50, align 8, !tbaa !3
  store i64 %207, i64* %47, align 8, !tbaa !3
  %208 = load i64, i64* %51, align 8, !tbaa !3
  store i64 %208, i64* %48, align 8, !tbaa !3
  %209 = load i64, i64* %52, align 8, !tbaa !3
  store i64 %209, i64* %49, align 8, !tbaa !3
  %210 = load i64, i64* %53, align 8, !tbaa !3
  store i64 %210, i64* %50, align 8, !tbaa !3
  %211 = load i64, i64* %54, align 8, !tbaa !3
  store i64 %211, i64* %51, align 8, !tbaa !3
  %212 = load i64, i64* %55, align 8, !tbaa !3
  store i64 %212, i64* %52, align 8, !tbaa !3
  %213 = load i64, i64* %56, align 8, !tbaa !3
  store i64 %213, i64* %53, align 8, !tbaa !3
  %214 = load i64, i64* %57, align 8, !tbaa !3
  store i64 %214, i64* %54, align 8, !tbaa !3
  %215 = load i64, i64* %58, align 8, !tbaa !3
  store i64 %215, i64* %55, align 8, !tbaa !3
  %216 = load i64, i64* %59, align 8, !tbaa !3
  store i64 %216, i64* %56, align 8, !tbaa !3
  %217 = load i64, i64* %60, align 8, !tbaa !3
  store i64 %217, i64* %57, align 8, !tbaa !3
  %218 = load i64, i64* %61, align 8, !tbaa !3
  store i64 %218, i64* %58, align 8, !tbaa !3
  %219 = load i64, i64* %62, align 8, !tbaa !3
  store i64 %219, i64* %59, align 8, !tbaa !3
  %220 = load i64, i64* %63, align 8, !tbaa !3
  store i64 %220, i64* %60, align 8, !tbaa !3
  %221 = load i64, i64* %64, align 8, !tbaa !3
  store i64 %221, i64* %61, align 8, !tbaa !3
  %222 = load i64, i64* %65, align 8, !tbaa !3
  store i64 %222, i64* %62, align 8, !tbaa !3
  %223 = load i64, i64* %66, align 8, !tbaa !3
  store i64 %223, i64* %63, align 8, !tbaa !3
  %224 = load i64, i64* %67, align 8, !tbaa !3
  store i64 %224, i64* %64, align 8, !tbaa !3
  %225 = load i64, i64* %68, align 8, !tbaa !3
  store i64 %225, i64* %65, align 8, !tbaa !3
  %226 = load i64, i64* %69, align 8, !tbaa !3
  store i64 %226, i64* %66, align 8, !tbaa !3
  %227 = load i64, i64* %70, align 8, !tbaa !3
  store i64 %227, i64* %67, align 8, !tbaa !3
  %228 = load i64, i64* %71, align 8, !tbaa !3
  store i64 %228, i64* %68, align 8, !tbaa !3
  %229 = load i64, i64* %72, align 8, !tbaa !3
  store i64 %229, i64* %69, align 8, !tbaa !3
  %230 = load i64, i64* %73, align 8, !tbaa !3
  store i64 %230, i64* %70, align 8, !tbaa !3
  %231 = load i64, i64* %74, align 8, !tbaa !3
  store i64 %231, i64* %71, align 8, !tbaa !3
  %232 = load i64, i64* %75, align 8, !tbaa !3
  store i64 %232, i64* %72, align 8, !tbaa !3
  %233 = load i64, i64* %76, align 8, !tbaa !3
  store i64 %233, i64* %73, align 8, !tbaa !3
  %234 = load i64, i64* %77, align 8, !tbaa !3
  store i64 %234, i64* %74, align 8, !tbaa !3
  %235 = load i64, i64* %78, align 8, !tbaa !3
  store i64 %235, i64* %75, align 8, !tbaa !3
  %236 = load i64, i64* %79, align 8, !tbaa !3
  store i64 %236, i64* %76, align 8, !tbaa !3
  %237 = load i64, i64* %80, align 8, !tbaa !3
  store i64 %237, i64* %77, align 8, !tbaa !3
  %238 = load i64, i64* %81, align 8, !tbaa !3
  store i64 %238, i64* %78, align 8, !tbaa !3
  %239 = load i64, i64* %82, align 8, !tbaa !3
  store i64 %239, i64* %79, align 8, !tbaa !3
  %240 = load i64, i64* %83, align 8, !tbaa !3
  store i64 %240, i64* %80, align 8, !tbaa !3
  %241 = load i64, i64* %84, align 8, !tbaa !3
  store i64 %241, i64* %81, align 8, !tbaa !3
  store i64 1, i64* %82, align 8, !tbaa !3
  store i64 0, i64* %83, align 8, !tbaa !3
  store i64 0, i64* %84, align 8, !tbaa !3
  %242 = icmp eq i64 %196, %198
  br i1 %242, label %190, label %243, !llvm.loop !34

243:                                              ; preds = %190, %194, %130, %138
  %244 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %244, i8* nonnull align 8 dereferenceable(416) %7, i32 416, i1 false), !tbaa.struct !35
  br label %245

245:                                              ; preds = %243, %136, %126
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #9
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

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
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %87

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %8 = load i32, i32* %7, align 4, !tbaa !24
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %12 = load i8, i8* %11, align 1, !tbaa !23
  br label %51

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %15 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %14, align 8, !tbaa !25
  br label %16

16:                                               ; preds = %28, %13
  %17 = phi i32 [ 0, %13 ], [ %30, %28 ]
  %18 = phi i32 [ 0, %13 ], [ %29, %28 ]
  %19 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i32 %17, i32 2
  %20 = load i32, i32* %19, align 4, !tbaa !26
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i32 %17, i32 1
  %24 = load i32, i32* %23, align 4, !tbaa !31
  %25 = add nsw i32 %24, -1
  %26 = mul nsw i32 %25, %20
  %27 = add nsw i32 %26, %18
  br label %28

28:                                               ; preds = %22, %16
  %29 = phi i32 [ %27, %22 ], [ %18, %16 ]
  %30 = add nuw nsw i32 %17, 1
  %31 = icmp slt i32 %30, %8
  br i1 %31, label %16, label %32, !llvm.loop !37

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %34 = load i8, i8* %33, align 1, !tbaa !23
  br label %35

35:                                               ; preds = %47, %32
  %36 = phi i32 [ 0, %32 ], [ %49, %47 ]
  %37 = phi i32 [ 0, %32 ], [ %48, %47 ]
  %38 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i32 %36, i32 2
  %39 = load i32, i32* %38, align 4, !tbaa !26
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %15, i32 %36, i32 1
  %43 = load i32, i32* %42, align 4, !tbaa !31
  %44 = add nsw i32 %43, -1
  %45 = mul nsw i32 %44, %39
  %46 = add nsw i32 %45, %37
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i32 [ %46, %41 ], [ %37, %35 ]
  %49 = add nuw nsw i32 %36, 1
  %50 = icmp slt i32 %49, %8
  br i1 %50, label %35, label %51, !llvm.loop !38

51:                                               ; preds = %47, %10
  %52 = phi i8 [ %12, %10 ], [ %34, %47 ]
  %53 = phi i32 [ 0, %10 ], [ %29, %47 ]
  %54 = phi i32 [ 0, %10 ], [ %48, %47 ]
  %55 = zext i8 %52 to i32
  %56 = add nuw nsw i32 %55, 7
  %57 = lshr i32 %56, 3
  %58 = add nsw i32 %53, 1
  %59 = sub i32 %58, %54
  %60 = mul i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %63

63:                                               ; preds = %62, %51
  %64 = tail call i8* @halide_malloc(i8* %0, i32 %60) #7
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = tail call i8* @malloc(i32 1024) #7
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = tail call i8* @halide_string_to_string(i8* %67, i8* null, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %80

71:                                               ; preds = %66
  %72 = getelementptr inbounds i8, i8* %67, i32 1023
  store i8 0, i8* %72, align 1, !tbaa !36
  %73 = tail call i8* @halide_string_to_string(i8* nonnull %67, i8* nonnull %72, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i32 0, i32 0)) #7
  %74 = ptrtoint i8* %73 to i32
  %75 = ptrtoint i8* %67 to i32
  %76 = add i32 %74, 1
  %77 = sub i32 %76, %75
  %78 = sext i32 %77 to i64
  %79 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %67, i64 %78) #7
  tail call void @halide_error(i8* %0, i8* nonnull %67) #7
  br label %80

80:                                               ; preds = %71, %69
  tail call void @free(i8* %67) #7
  br label %87

81:                                               ; preds = %63
  %82 = ptrtoint i8* %64 to i32
  %83 = zext i32 %82 to i64
  %84 = tail call i32 @halide_hexagon_dma_device_wrap_native(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %83) #8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  tail call void @halide_free(i8* %0, i8* nonnull %64) #7
  br label %87

87:                                               ; preds = %2, %80, %81, %86
  %88 = phi i32 [ -11, %80 ], [ -16, %86 ], [ 0, %81 ], [ 0, %2 ]
  ret i32 %88
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

declare i8* @halide_malloc(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_hexagon_dma_device_wrap_native(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #4 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.51, i32 0, i32 0)) #7
  tail call void @abort() #7
  %8 = load i64, i64* %4, align 8, !tbaa !22
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = tail call i8* @malloc(i32 1024) #7
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i8* @halide_string_to_string(i8* %11, i8* null, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.52, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %24

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, i8* %11, i32 1023
  store i8 0, i8* %16, align 1, !tbaa !36
  %17 = tail call i8* @halide_string_to_string(i8* nonnull %11, i8* nonnull %16, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.52, i32 0, i32 0)) #7
  %18 = ptrtoint i8* %17 to i32
  %19 = ptrtoint i8* %11 to i32
  %20 = add i32 %18, 1
  %21 = sub i32 %20, %19
  %22 = sext i32 %21 to i64
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %11, i64 %22) #7
  tail call void @halide_error(i8* %0, i8* nonnull %11) #7
  br label %24

24:                                               ; preds = %15, %13
  tail call void @free(i8* %11) #7
  br label %67

25:                                               ; preds = %3, %7
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, %struct.halide_device_interface_t** %26, align 8, !tbaa !39
  %27 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, i32 0, i32 15), align 4, !tbaa !40
  %28 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %27, i32 0, i32 0
  %29 = load void ()*, void ()** %28, align 4, !tbaa !42
  tail call void %29() #7
  %30 = tail call i8* @malloc(i32 36) #7
  %31 = bitcast i8* %30 to i8**
  %32 = getelementptr inbounds i8, i8* %30, i32 4
  %33 = bitcast i8* %32 to i16*
  store i16 0, i16* %33, align 4, !tbaa !44
  %34 = getelementptr inbounds i8, i8* %30, i32 6
  %35 = bitcast i8* %34 to i16*
  store i16 0, i16* %35, align 2, !tbaa !48
  %36 = getelementptr inbounds i8, i8* %30, i32 8
  %37 = bitcast i8* %36 to i16*
  store i16 0, i16* %37, align 4, !tbaa !49
  %38 = getelementptr inbounds i8, i8* %30, i32 10
  %39 = bitcast i8* %38 to i16*
  store i16 0, i16* %39, align 2, !tbaa !50
  %40 = getelementptr inbounds i8, i8* %30, i32 12
  %41 = bitcast i8* %40 to i8**
  %42 = getelementptr inbounds i8, i8* %30, i32 16
  %43 = bitcast i8* %42 to i32*
  %44 = getelementptr inbounds i8, i8* %30, i32 20
  %45 = bitcast i8* %44 to i32*
  %46 = getelementptr inbounds i8, i8* %30, i32 24
  %47 = bitcast i8* %46 to i32*
  %48 = getelementptr inbounds i8, i8* %30, i32 28
  store i8 0, i8* %48, align 4, !tbaa !51
  %49 = getelementptr inbounds i8, i8* %30, i32 32
  %50 = bitcast i8* %49 to i32*
  store i32 0, i32* %50, align 4, !tbaa !52
  %51 = getelementptr inbounds i8, i8* %30, i32 29
  store i8 0, i8* %51, align 1, !tbaa !53
  %52 = trunc i64 %2 to i32
  %53 = inttoptr i32 %52 to i8*
  store i8* %53, i8** %31, align 4, !tbaa !54
  store i8* null, i8** %41, align 4, !tbaa !55
  %54 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %55 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %54, align 8, !tbaa !25
  %56 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4, !tbaa !31
  %58 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %55, i32 0, i32 2
  %59 = load i32, i32* %58, align 4, !tbaa !26
  %60 = mul nsw i32 %59, %57
  store i32 %60, i32* %43, align 4, !tbaa !56
  %61 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %55, i32 1, i32 1
  %62 = load i32, i32* %61, align 4, !tbaa !31
  store i32 %62, i32* %45, align 4, !tbaa !57
  %63 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %55, i32 1, i32 2
  %64 = load i32, i32* %63, align 4, !tbaa !26
  store i32 %64, i32* %47, align 4, !tbaa !58
  %65 = ptrtoint i8* %30 to i32
  %66 = zext i32 %65 to i64
  store i64 %66, i64* %4, align 8, !tbaa !22
  br label %67

67:                                               ; preds = %25, %24
  %68 = phi i32 [ -32, %24 ], [ 0, %25 ]
  ret i32 %68
}

declare void @halide_free(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_dma_device_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = trunc i64 %4 to i32
  %6 = inttoptr i32 %5 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 4, !tbaa !54
  %9 = tail call i32 @halide_hexagon_dma_device_detach_native(i8* %0, %struct.halide_buffer_t* %1) #8
  tail call void @halide_free(i8* %0, i8* %8) #7
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3
  %11 = load i64, i64* %10, align 8, !tbaa !59
  %12 = and i64 %11, -3
  store i64 %12, i64* %10, align 8, !tbaa !59
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_dma_device_detach_native(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = tail call i8* @malloc(i32 1024) #7
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i8* @halide_string_to_string(i8* %7, i8* null, i8* nonnull getelementptr inbounds ([74 x i8], [74 x i8]* @.str.55, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %20

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %7, i32 1023
  store i8 0, i8* %12, align 1, !tbaa !36
  %13 = tail call i8* @halide_string_to_string(i8* nonnull %7, i8* nonnull %12, i8* nonnull getelementptr inbounds ([74 x i8], [74 x i8]* @.str.55, i32 0, i32 0)) #7
  %14 = ptrtoint i8* %13 to i32
  %15 = ptrtoint i8* %7 to i32
  %16 = add i32 %14, 1
  %17 = sub i32 %16, %15
  %18 = sext i32 %17 to i64
  %19 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %7, i64 %18) #7
  tail call void @halide_error(i8* %0, i8* nonnull %7) #7
  br label %20

20:                                               ; preds = %11, %9
  tail call void @free(i8* %7) #7
  br label %37

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %23 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %22, align 8, !tbaa !39
  %24 = icmp eq %struct.halide_device_interface_t* %23, @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE
  %25 = trunc i64 %4 to i32
  br i1 %24, label %29, label %26

26:                                               ; preds = %21
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.56, i32 0, i32 0)) #7
  tail call void @abort() #7
  %27 = load i64, i64* %3, align 8, !tbaa !22
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %21, %26
  %30 = phi i32 [ %25, %21 ], [ %28, %26 ]
  %31 = inttoptr i32 %30 to i8*
  tail call void @free(i8* %31) #7
  %32 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %22, align 8, !tbaa !39
  %33 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %32, i32 0, i32 15
  %34 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %33, align 4, !tbaa !40
  %35 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %34, i32 0, i32 1
  %36 = load void ()*, void ()** %35, align 4, !tbaa !60
  tail call void %36() #7
  store i64 0, i64* %3, align 8, !tbaa !22
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %22, align 8, !tbaa !39
  br label %37

37:                                               ; preds = %29, %20
  %38 = phi i32 [ -33, %20 ], [ 0, %29 ]
  ret i32 %38
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_dma_allocate_engine(i8* %0, i8** %1) local_unnamed_addr #0 {
  %3 = icmp eq i8** %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.9, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %5

5:                                                ; preds = %2, %4
  %6 = tail call i8* @halide_hexagon_allocate_dma_resource(i8* %0) #7
  store i8* %6, i8** %1, align 4, !tbaa !61
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
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.16, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %5

5:                                                ; preds = %2, %4
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #7
  %6 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 4, !tbaa !61
  %7 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %5, %20
  %9 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ %22, %20 ], [ %6, %5 ]
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %9, i32 0, i32 2
  %11 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %10, align 4, !tbaa !62
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %9, i32 0, i32 0
  %13 = load i8*, i8** %12, align 4, !tbaa !64
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
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %11, i32 0, i32 2
  %22 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %21, align 4, !tbaa !62
  %23 = bitcast %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %11 to i8*
  tail call void @free(i8* nonnull %23) #7
  %24 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %22, null
  br i1 %24, label %25, label %8, !llvm.loop !65

25:                                               ; preds = %17, %20, %5
  store %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* null, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 4, !tbaa !61
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
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.64, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !22
  %13 = trunc i64 %12 to i32
  %14 = inttoptr i32 %13 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %14, i32 0, i32 5
  store i8* %2, i8** %15, align 4, !tbaa !55
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %14, i32 0, i32 9
  store i8 %7, i8* %16, align 4, !tbaa !51
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %14, i32 0, i32 11
  store i32 %6, i32* %17, align 4, !tbaa !52
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %14, i32 0, i32 10
  store i8 0, i8* %18, align 1, !tbaa !53
  switch i32 %6, label %23 [
    i32 3, label %19
    i32 6, label %19
    i32 9, label %19
    i32 12, label %19
  ]

19:                                               ; preds = %10, %10, %10, %10
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %14, i32 0, i32 7
  %21 = load i32, i32* %20, align 4, !tbaa !57
  %22 = shl nsw i32 %21, 1
  store i32 %22, i32* %20, align 4, !tbaa !57
  br label %23

23:                                               ; preds = %10, %19
  ret i32 0
}

; Function Attrs: inlinehint nounwind
define internal fastcc i32 @_ZN12_GLOBAL__N_129halide_hexagon_get_dma_formatEPv26halide_hexagon_image_fmt_t(i8* %0, i32 %1) unnamed_addr #5 {
  %3 = icmp ult i32 %1, 13
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = tail call i8* @malloc(i32 1024) #7
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023
  store i8 0, i8* %8, align 1, !tbaa !36
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ]
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i32 0, i32 0)) #7
  %12 = sext i32 %1 to i64
  %13 = tail call i8* @halide_int64_to_string(i8* %11, i8* %10, i64 %12, i32 1) #7
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #7
  br i1 %6, label %15, label %16

15:                                               ; preds = %9
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %23

16:                                               ; preds = %9
  %17 = ptrtoint i8* %14 to i32
  %18 = ptrtoint i8* %5 to i32
  %19 = add i32 %17, 1
  %20 = sub i32 %19, %18
  %21 = sext i32 %20 to i64
  %22 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %21) #7
  tail call void @halide_error(i8* %0, i8* nonnull %5) #7
  br label %23

23:                                               ; preds = %16, %15
  tail call void @free(i8* %5) #7
  br label %24

24:                                               ; preds = %2, %23
  %25 = phi i32 [ 14, %23 ], [ %1, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_dma_prepare_for_copy_to_device(i8* %0, %struct.halide_buffer_t* %1, i8* %2, i1 zeroext %3, i32 %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @_ZN12_GLOBAL__N_129halide_hexagon_get_dma_formatEPv26halide_hexagon_image_fmt_t(i8* %0, i32 %4) #8
  %7 = zext i1 %3 to i8
  %8 = icmp eq i8* %2, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.64, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !22
  %13 = trunc i64 %12 to i32
  %14 = inttoptr i32 %13 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %14, i32 0, i32 5
  store i8* %2, i8** %15, align 4, !tbaa !55
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %14, i32 0, i32 9
  store i8 %7, i8* %16, align 4, !tbaa !51
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %14, i32 0, i32 11
  store i32 %6, i32* %17, align 4, !tbaa !52
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %14, i32 0, i32 10
  store i8 1, i8* %18, align 1, !tbaa !53
  switch i32 %6, label %23 [
    i32 3, label %19
    i32 6, label %19
    i32 9, label %19
    i32 12, label %19
  ]

19:                                               ; preds = %10, %10, %10, %10
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %14, i32 0, i32 7
  %21 = load i32, i32* %20, align 4, !tbaa !57
  %22 = shl nsw i32 %21, 1
  store i32 %22, i32* %20, align 4, !tbaa !57
  br label %23

23:                                               ; preds = %10, %19
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
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.22, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3
  %11 = load i64, i64* %10, align 8, !tbaa !59
  %12 = and i64 %11, 2
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %52, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %16 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %15, align 8, !tbaa !39
  %17 = icmp eq %struct.halide_device_interface_t* %16, @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE
  br i1 %17, label %52, label %18

18:                                               ; preds = %14
  br i1 %6, label %21, label %19

19:                                               ; preds = %18
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.23, i32 0, i32 0)) #7
  tail call void @abort() #7
  %20 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %15, align 8, !tbaa !39
  br label %21

21:                                               ; preds = %18, %19
  %22 = phi %struct.halide_device_interface_t* [ %16, %18 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %22, i32 0, i32 15
  %24 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %23, align 4, !tbaa !40
  %25 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %24, i32 0, i32 10
  %26 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %25, align 4, !tbaa !66
  %27 = tail call i32 %26(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* %3) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 3
  %31 = load i64, i64* %30, align 8, !tbaa !59
  br label %52

32:                                               ; preds = %21
  %33 = tail call i8* @malloc(i32 1024) #7
  %34 = icmp eq i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, i8* %33, i32 1023
  store i8 0, i8* %36, align 1, !tbaa !36
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi i8* [ %36, %35 ], [ null, %32 ]
  %39 = tail call i8* @halide_string_to_string(i8* %33, i8* %38, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.25, i32 0, i32 0)) #7
  %40 = sext i32 %27 to i64
  %41 = tail call i8* @halide_int64_to_string(i8* %39, i8* %38, i64 %40, i32 1) #7
  %42 = tail call i8* @halide_string_to_string(i8* %41, i8* %38, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #7
  br i1 %34, label %43, label %44

43:                                               ; preds = %37
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %51

44:                                               ; preds = %37
  %45 = ptrtoint i8* %42 to i32
  %46 = ptrtoint i8* %33 to i32
  %47 = add i32 %45, 1
  %48 = sub i32 %47, %46
  %49 = sext i32 %48 to i64
  %50 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %33, i64 %49) #7
  tail call void @halide_error(i8* %0, i8* nonnull %33) #7
  br label %51

51:                                               ; preds = %44, %43
  tail call void @free(i8* %33) #7
  br label %81

52:                                               ; preds = %29, %14, %9
  %53 = phi i64 [ %11, %14 ], [ %11, %9 ], [ %31, %29 ]
  %54 = phi %struct.halide_buffer_t* [ %1, %14 ], [ %1, %9 ], [ %3, %29 ]
  %55 = and i64 %53, 2
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %54, i32 0, i32 2
  %59 = load i8*, i8** %58, align 4, !tbaa !15
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %52, %57
  %62 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %54, i32 0, i32 0
  %63 = load i64, i64* %62, align 8, !tbaa !22
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.26, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %66

66:                                               ; preds = %57, %61, %65
  %67 = phi i1 [ true, %57 ], [ false, %61 ], [ false, %65 ]
  br i1 %5, label %73, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0
  %70 = load i64, i64* %69, align 8, !tbaa !22
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.27, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %73

73:                                               ; preds = %66, %68, %72
  %74 = xor i1 %5, %67
  br i1 %74, label %76, label %75

75:                                               ; preds = %73
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.28, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %76

76:                                               ; preds = %73, %75
  br i1 %6, label %77, label %79

77:                                               ; preds = %76
  %78 = tail call fastcc i32 @_ZN12_GLOBAL__N_126halide_hexagon_dma_wrapperEPvP15halide_buffer_tS2_(i8* %0, %struct.halide_buffer_t* %3, %struct.halide_buffer_t* nonnull %54) #8
  br label %81

79:                                               ; preds = %76
  %80 = tail call fastcc i32 @_ZN12_GLOBAL__N_126halide_hexagon_dma_wrapperEPvP15halide_buffer_tS2_(i8* %0, %struct.halide_buffer_t* nonnull %54, %struct.halide_buffer_t* %3) #8
  br label %81

81:                                               ; preds = %51, %77, %79
  %82 = phi i32 [ %27, %51 ], [ %78, %77 ], [ %80, %79 ]
  ret i32 %82
}

; Function Attrs: nounwind
define internal fastcc i32 @_ZN12_GLOBAL__N_126halide_hexagon_dma_wrapperEPvP15halide_buffer_tS2_(i8* %0, %struct.halide_buffer_t* nocapture readonly %1, %struct.halide_buffer_t* nocapture readonly %2) unnamed_addr #4 {
  %4 = alloca %struct.stDmaWrapper_RoiAlignInfo, align 2
  %5 = alloca %struct.stDmaWrapper_DmaTransferSetup, align 4
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !22
  %8 = trunc i64 %7 to i32
  %9 = inttoptr i32 %8 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i32 0, i32 1
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i32 0, i32 2
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i32 0, i32 3
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i32 0, i32 4
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i32 0, i32 6
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i32 0, i32 7
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i32 0, i32 8
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 5
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i32 0, i32 11
  %21 = load i32, i32* %20, align 4, !tbaa !52
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i32, i32* %18, align 4, !tbaa !24
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %69, label %26

26:                                               ; preds = %23
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.75, i32 0, i32 0)) #7
  tail call void @abort() #7
  %27 = load i32, i32* %20, align 4, !tbaa !52
  br label %28

28:                                               ; preds = %26, %3
  %29 = phi i32 [ %27, %26 ], [ %21, %3 ]
  switch i32 %29, label %35 [
    i32 2, label %30
    i32 5, label %30
    i32 8, label %30
    i32 11, label %30
  ]

30:                                               ; preds = %28, %28, %28, %28
  %31 = load i32, i32* %18, align 4, !tbaa !24
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.76, i32 0, i32 0)) #7
  tail call void @abort() #7
  %34 = load i32, i32* %20, align 4, !tbaa !52
  br label %35

35:                                               ; preds = %28, %30, %33
  %36 = phi i32 [ %29, %28 ], [ %29, %30 ], [ %34, %33 ]
  switch i32 %36, label %69 [
    i32 3, label %37
    i32 6, label %37
    i32 9, label %37
    i32 12, label %37
  ]

37:                                               ; preds = %35, %35, %35, %35
  %38 = load i32, i32* %18, align 4, !tbaa !24
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.77, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %41

41:                                               ; preds = %37, %40
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %43 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %42, align 8, !tbaa !25
  %44 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4, !tbaa !26
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.78, i32 0, i32 0)) #7
  tail call void @abort() #7
  %48 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %42, align 8, !tbaa !25
  br label %49

49:                                               ; preds = %41, %47
  %50 = phi %struct.halide_dimension_t* [ %43, %41 ], [ %48, %47 ]
  %51 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %50, i32 2, i32 2
  %52 = load i32, i32* %51, align 4, !tbaa !26
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.79, i32 0, i32 0)) #7
  tail call void @abort() #7
  %55 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %42, align 8, !tbaa !25
  br label %56

56:                                               ; preds = %49, %54
  %57 = phi %struct.halide_dimension_t* [ %50, %49 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %57, i32 2, i32 0
  %59 = load i32, i32* %58, align 4, !tbaa !28
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.80, i32 0, i32 0)) #7
  tail call void @abort() #7
  %62 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %42, align 8, !tbaa !25
  br label %63

63:                                               ; preds = %56, %61
  %64 = phi %struct.halide_dimension_t* [ %57, %56 ], [ %62, %61 ]
  %65 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %64, i32 2, i32 1
  %66 = load i32, i32* %65, align 4, !tbaa !31
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.81, i32 0, i32 0)) #7
  tail call void @abort() #7
  br label %69

69:                                               ; preds = %23, %35, %63, %68
  %70 = bitcast %struct.stDmaWrapper_RoiAlignInfo* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %70) #9
  %71 = getelementptr inbounds %struct.stDmaWrapper_RoiAlignInfo, %struct.stDmaWrapper_RoiAlignInfo* %4, i32 0, i32 0
  %72 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 6
  %73 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %72, align 8, !tbaa !25
  %74 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4, !tbaa !31
  %76 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %73, i32 0, i32 2
  %77 = load i32, i32* %76, align 4, !tbaa !26
  %78 = mul nsw i32 %77, %75
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %71, align 2, !tbaa !67
  %80 = getelementptr inbounds %struct.stDmaWrapper_RoiAlignInfo, %struct.stDmaWrapper_RoiAlignInfo* %4, i32 0, i32 1
  %81 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %73, i32 1, i32 1
  %82 = load i32, i32* %81, align 4, !tbaa !31
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %80, align 2, !tbaa !69
  %84 = load i32, i32* %20, align 4, !tbaa !52
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i32 0, i32 9
  %86 = load i8, i8* %85, align 4, !tbaa !51, !range !70
  %87 = icmp ne i8 %86, 0
  %88 = call i32 @nDmaWrapper_GetRecommendedWalkSize(i32 %84, i1 zeroext %87, %struct.stDmaWrapper_RoiAlignInfo* nonnull %4) #7
  %89 = load i32, i32* %20, align 4, !tbaa !52
  %90 = load i8, i8* %85, align 4, !tbaa !51, !range !70
  %91 = icmp ne i8 %90, 0
  %92 = call i32 @nDmaWrapper_GetRecommendedIntermBufStride(i32 %89, %struct.stDmaWrapper_RoiAlignInfo* nonnull %4, i1 zeroext %91) #7
  %93 = load i16, i16* %71, align 2, !tbaa !67
  %94 = load i16, i16* %80, align 2, !tbaa !69
  %95 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %72, align 8, !tbaa !25
  %96 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %95, i32 1, i32 2
  %97 = load i32, i32* %96, align 4, !tbaa !26
  %98 = icmp sgt i32 %97, %92
  %99 = select i1 %98, i32 %97, i32 %92
  %100 = srem i32 %97, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %69
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.83, i32 0, i32 0)) #7
  call void @abort() #7
  br label %103

103:                                              ; preds = %102, %69
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #7
  %104 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 4, !tbaa !61
  %105 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %104, null
  br i1 %105, label %117, label %106

106:                                              ; preds = %103, %113
  %107 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ %115, %113 ], [ %104, %103 ]
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %107, i32 0, i32 1
  %109 = load i8, i8* %108, align 4, !tbaa !71, !range !70
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  store i8 1, i8* %108, align 4, !tbaa !71
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %107, i32 0, i32 0
  br label %176

113:                                              ; preds = %106
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %107, i32 0, i32 2
  %115 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %114, align 4, !tbaa !61
  %116 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %115, null
  br i1 %116, label %117, label %106, !llvm.loop !72

117:                                              ; preds = %113, %103
  %118 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ null, %103 ], [ %107, %113 ]
  %119 = call i8* @malloc(i32 12) #7
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %135

121:                                              ; preds = %117
  %122 = call i8* @malloc(i32 1024) #7
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.100, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %174

126:                                              ; preds = %121
  %127 = getelementptr inbounds i8, i8* %122, i32 1023
  store i8 0, i8* %127, align 1, !tbaa !36
  %128 = call i8* @halide_string_to_string(i8* nonnull %122, i8* nonnull %127, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.100, i32 0, i32 0)) #7
  %129 = ptrtoint i8* %128 to i32
  %130 = ptrtoint i8* %122 to i32
  %131 = sub i32 1, %130
  %132 = add i32 %131, %129
  %133 = sext i32 %132 to i64
  %134 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %122, i64 %133) #7
  call void @halide_error(i8* %0, i8* nonnull %122) #7
  br label %174

135:                                              ; preds = %117
  %136 = call i8* @HAP_cache_lock(i32 128, i8** null) #7
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %152

138:                                              ; preds = %135
  call void @free(i8* nonnull %119) #7
  %139 = call i8* @malloc(i32 1024) #7
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.101, i32 0, i32 0)) #7
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %174

143:                                              ; preds = %138
  %144 = getelementptr inbounds i8, i8* %139, i32 1023
  store i8 0, i8* %144, align 1, !tbaa !36
  %145 = call i8* @halide_string_to_string(i8* nonnull %139, i8* nonnull %144, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.101, i32 0, i32 0)) #7
  %146 = ptrtoint i8* %145 to i32
  %147 = ptrtoint i8* %139 to i32
  %148 = sub i32 1, %147
  %149 = add i32 %148, %146
  %150 = sext i32 %149 to i64
  %151 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %139, i64 %150) #7
  call void @halide_error(i8* %0, i8* nonnull %139) #7
  br label %174

152:                                              ; preds = %135
  %153 = bitcast i8* %119 to i8**
  store i8* %136, i8** %153, align 4, !tbaa !64
  %154 = getelementptr inbounds i8, i8* %119, i32 4
  store i8 1, i8* %154, align 4, !tbaa !71
  %155 = call i8* @malloc(i32 12) #7
  %156 = getelementptr inbounds i8, i8* %119, i32 8
  %157 = bitcast i8* %156 to i8**
  store i8* %155, i8** %157, align 4, !tbaa !62
  %158 = icmp eq i8* %155, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %152
  %160 = getelementptr inbounds i8, i8* %136, i32 64
  %161 = bitcast i8* %155 to i8**
  store i8* %160, i8** %161, align 4, !tbaa !64
  %162 = getelementptr inbounds i8, i8* %155, i32 4
  store i8 0, i8* %162, align 4, !tbaa !71
  %163 = getelementptr inbounds i8, i8* %155, i32 8
  %164 = bitcast i8* %163 to %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"**
  store %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* null, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %164, align 4, !tbaa !62
  br label %165

165:                                              ; preds = %159, %152
  %166 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %118, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %118, i32 0, i32 2
  %169 = bitcast %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %168 to i8**
  store i8* %119, i8** %169, align 4, !tbaa !62
  br label %176

170:                                              ; preds = %165
  %171 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 4, !tbaa !61
  %172 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  store i8* %119, i8** bitcast (%"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE to i8**), align 4, !tbaa !61
  br label %176

174:                                              ; preds = %141, %143, %124, %126
  %175 = phi i8* [ %122, %126 ], [ %122, %124 ], [ %139, %143 ], [ %139, %141 ]
  call void @free(i8* %175) #7
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #7
  br label %379

176:                                              ; preds = %167, %170, %173, %111
  %177 = phi i8** [ %112, %111 ], [ %153, %173 ], [ %153, %170 ], [ %153, %167 ]
  %178 = load i8*, i8** %177, align 4, !tbaa !64
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #7
  %179 = icmp eq i8* %178, null
  br i1 %179, label %379, label %180

180:                                              ; preds = %176
  %181 = bitcast %struct.stDmaWrapper_DmaTransferSetup* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %181) #9
  %182 = load i32, i32* %20, align 4, !tbaa !52
  %183 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i32 0, i32 13
  store i32 %182, i32* %183, align 4, !tbaa !73
  %184 = load i32, i32* %15, align 4, !tbaa !56
  %185 = trunc i32 %184 to i16
  %186 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i32 0, i32 0
  store i16 %185, i16* %186, align 4, !tbaa !76
  %187 = load i32, i32* %16, align 4, !tbaa !57
  %188 = trunc i32 %187 to i16
  %189 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i32 0, i32 1
  store i16 %188, i16* %189, align 2, !tbaa !77
  %190 = load i32, i32* %17, align 4, !tbaa !58
  %191 = trunc i32 %190 to i16
  %192 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i32 0, i32 2
  store i16 %191, i16* %192, align 4, !tbaa !78
  %193 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i32 0, i32 5
  store i16 %93, i16* %193, align 2, !tbaa !79
  %194 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i32 0, i32 6
  store i16 %94, i16* %194, align 4, !tbaa !80
  %195 = trunc i32 %99 to i16
  %196 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i32 0, i32 7
  store i16 %195, i16* %196, align 2, !tbaa !81
  %197 = load i8, i8* %85, align 4, !tbaa !51, !range !70
  %198 = zext i8 %197 to i16
  %199 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i32 0, i32 11
  store i16 %198, i16* %199, align 4, !tbaa !82
  %200 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i32 0, i32 12
  store i16 0, i16* %200, align 2, !tbaa !83
  %201 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i32 0, i32 8
  store i8* %178, i8** %201, align 4, !tbaa !84
  %202 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 2
  %203 = load i8*, i8** %202, align 4, !tbaa !15
  %204 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i32 0, i32 9
  store i8* %203, i8** %204, align 4, !tbaa !85
  %205 = load i8*, i8** %10, align 4, !tbaa !54
  %206 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i32 0, i32 10
  store i8* %205, i8** %206, align 4, !tbaa !86
  %207 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i32 0, i32 10
  %208 = load i8, i8* %207, align 1, !tbaa !53, !range !70
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %180
  %211 = load i16, i16* %13, align 4, !tbaa !49
  %212 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %72, align 8, !tbaa !25
  %213 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4, !tbaa !26
  %215 = trunc i32 %214 to i16
  %216 = mul i16 %211, %215
  %217 = load i16, i16* %14, align 2, !tbaa !50
  br label %234

218:                                              ; preds = %180
  %219 = load i16, i16* %11, align 4, !tbaa !44
  %220 = zext i16 %219 to i32
  %221 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %72, align 8, !tbaa !25
  %222 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4, !tbaa !28
  %224 = add nsw i32 %223, %220
  %225 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %221, i32 0, i32 2
  %226 = load i32, i32* %225, align 4, !tbaa !26
  %227 = mul nsw i32 %224, %226
  %228 = trunc i32 %227 to i16
  %229 = load i16, i16* %12, align 2, !tbaa !48
  %230 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %221, i32 1, i32 0
  %231 = load i32, i32* %230, align 4, !tbaa !28
  %232 = trunc i32 %231 to i16
  %233 = add i16 %229, %232
  br label %234

234:                                              ; preds = %218, %210
  %235 = phi %struct.halide_dimension_t* [ %221, %218 ], [ %212, %210 ]
  %236 = phi i32 [ 0, %218 ], [ 1, %210 ]
  %237 = phi i16 [ %228, %218 ], [ %216, %210 ]
  %238 = phi i16 [ %233, %218 ], [ %217, %210 ]
  %239 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i32 0, i32 14
  store i32 %236, i32* %239, align 4
  %240 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i32 0, i32 3
  store i16 %237, i16* %240, align 2
  %241 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %5, i32 0, i32 4
  store i16 %238, i16* %241, align 4
  switch i32 %182, label %267 [
    i32 0, label %242
    i32 3, label %260
    i32 6, label %260
    i32 9, label %260
    i32 12, label %260
  ]

242:                                              ; preds = %234
  %243 = load i32, i32* %19, align 4, !tbaa !24
  %244 = icmp eq i32 %243, 3
  br i1 %244, label %245, label %267

245:                                              ; preds = %242
  %246 = load i16, i16* %12, align 2, !tbaa !48
  %247 = zext i16 %246 to i32
  %248 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %235, i32 1, i32 0
  %249 = load i32, i32* %248, align 4, !tbaa !28
  %250 = add nsw i32 %249, %247
  %251 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %235, i32 2, i32 0
  %252 = load i32, i32* %251, align 4, !tbaa !28
  %253 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %254 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %253, align 8, !tbaa !25
  %255 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %254, i32 1, i32 2
  %256 = load i32, i32* %255, align 4, !tbaa !26
  %257 = mul nsw i32 %256, %252
  %258 = add nsw i32 %250, %257
  %259 = trunc i32 %258 to i16
  store i16 %259, i16* %241, align 4, !tbaa !87
  br label %267

260:                                              ; preds = %234, %234, %234, %234
  %261 = shl i16 %94, 1
  store i16 %261, i16* %194, align 4, !tbaa !80
  br i1 %209, label %264, label %262

262:                                              ; preds = %260
  %263 = shl i16 %238, 1
  store i16 %263, i16* %241, align 4, !tbaa !87
  br label %267

264:                                              ; preds = %260
  %265 = sub i16 %238, %188
  %266 = shl i16 %265, 1
  store i16 %266, i16* %241, align 4, !tbaa !87
  br label %267

267:                                              ; preds = %234, %242, %245, %262, %264
  %268 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %9, i32 0, i32 5
  %269 = load i8*, i8** %268, align 4, !tbaa !55
  %270 = call i8* @halide_hexagon_allocate_from_dma_pool(i8* %0, i8* %269) #7
  %271 = icmp eq i8* %270, null
  br i1 %271, label %377, label %272

272:                                              ; preds = %267
  %273 = call i32 @nDmaWrapper_DmaTransferSetup(i8* nonnull %270, %struct.stDmaWrapper_DmaTransferSetup* nonnull %5) #7
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %295, label %275

275:                                              ; preds = %272
  %276 = call i8* @malloc(i32 1024) #7
  %277 = icmp eq i8* %276, null
  br i1 %277, label %280, label %278

278:                                              ; preds = %275
  %279 = getelementptr inbounds i8, i8* %276, i32 1023
  store i8 0, i8* %279, align 1, !tbaa !36
  br label %280

280:                                              ; preds = %275, %278
  %281 = phi i8* [ %279, %278 ], [ null, %275 ]
  %282 = call i8* @halide_string_to_string(i8* %276, i8* %281, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i32 0, i32 0)) #7
  %283 = sext i32 %273 to i64
  %284 = call i8* @halide_int64_to_string(i8* %282, i8* %281, i64 %283, i32 1) #7
  %285 = call i8* @halide_string_to_string(i8* %284, i8* %281, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #7
  br i1 %277, label %286, label %287

286:                                              ; preds = %280
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %294

287:                                              ; preds = %280
  %288 = ptrtoint i8* %285 to i32
  %289 = ptrtoint i8* %276 to i32
  %290 = add i32 %288, 1
  %291 = sub i32 %290, %289
  %292 = sext i32 %291 to i64
  %293 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %276, i64 %292) #7
  call void @halide_error(i8* %0, i8* nonnull %276) #7
  br label %294

294:                                              ; preds = %287, %286
  call void @free(i8* %276) #7
  br label %377

295:                                              ; preds = %272
  %296 = call i32 @nDmaWrapper_Move(i8* nonnull %270) #7
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %318, label %298

298:                                              ; preds = %295
  %299 = call i8* @malloc(i32 1024) #7
  %300 = icmp eq i8* %299, null
  br i1 %300, label %303, label %301

301:                                              ; preds = %298
  %302 = getelementptr inbounds i8, i8* %299, i32 1023
  store i8 0, i8* %302, align 1, !tbaa !36
  br label %303

303:                                              ; preds = %298, %301
  %304 = phi i8* [ %302, %301 ], [ null, %298 ]
  %305 = call i8* @halide_string_to_string(i8* %299, i8* %304, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i32 0, i32 0)) #7
  %306 = sext i32 %296 to i64
  %307 = call i8* @halide_int64_to_string(i8* %305, i8* %304, i64 %306, i32 1) #7
  %308 = call i8* @halide_string_to_string(i8* %307, i8* %304, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #7
  br i1 %300, label %309, label %310

309:                                              ; preds = %303
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %317

310:                                              ; preds = %303
  %311 = ptrtoint i8* %308 to i32
  %312 = ptrtoint i8* %299 to i32
  %313 = add i32 %311, 1
  %314 = sub i32 %313, %312
  %315 = sext i32 %314 to i64
  %316 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %299, i64 %315) #7
  call void @halide_error(i8* %0, i8* nonnull %299) #7
  br label %317

317:                                              ; preds = %310, %309
  call void @free(i8* %299) #7
  br label %377

318:                                              ; preds = %295
  %319 = call i32 @nDmaWrapper_Wait(i8* nonnull %270) #7
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %341, label %321

321:                                              ; preds = %318
  %322 = call i8* @malloc(i32 1024) #7
  %323 = icmp eq i8* %322, null
  br i1 %323, label %326, label %324

324:                                              ; preds = %321
  %325 = getelementptr inbounds i8, i8* %322, i32 1023
  store i8 0, i8* %325, align 1, !tbaa !36
  br label %326

326:                                              ; preds = %321, %324
  %327 = phi i8* [ %325, %324 ], [ null, %321 ]
  %328 = call i8* @halide_string_to_string(i8* %322, i8* %327, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.98, i32 0, i32 0)) #7
  %329 = sext i32 %319 to i64
  %330 = call i8* @halide_int64_to_string(i8* %328, i8* %327, i64 %329, i32 1) #7
  %331 = call i8* @halide_string_to_string(i8* %330, i8* %327, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #7
  br i1 %323, label %332, label %333

332:                                              ; preds = %326
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %340

333:                                              ; preds = %326
  %334 = ptrtoint i8* %331 to i32
  %335 = ptrtoint i8* %322 to i32
  %336 = add i32 %334, 1
  %337 = sub i32 %336, %335
  %338 = sext i32 %337 to i64
  %339 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %322, i64 %338) #7
  call void @halide_error(i8* %0, i8* nonnull %322) #7
  br label %340

340:                                              ; preds = %333, %332
  call void @free(i8* %322) #7
  br label %377

341:                                              ; preds = %318
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #7
  %342 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 4, !tbaa !61
  %343 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %342, null
  br i1 %343, label %355, label %344

344:                                              ; preds = %341, %351
  %345 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ %353, %351 ], [ %342, %341 ]
  %346 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %345, i32 0, i32 0
  %347 = load i8*, i8** %346, align 4, !tbaa !64
  %348 = icmp eq i8* %347, %178
  br i1 %348, label %349, label %351

349:                                              ; preds = %344
  %350 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %345, i32 0, i32 1
  store i8 0, i8* %350, align 4, !tbaa !71
  br label %374

351:                                              ; preds = %344
  %352 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %345, i32 0, i32 2
  %353 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %352, align 4, !tbaa !61
  %354 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %353, null
  br i1 %354, label %355, label %344, !llvm.loop !88

355:                                              ; preds = %351, %341
  %356 = call i8* @malloc(i32 1024) #7
  %357 = icmp eq i8* %356, null
  br i1 %357, label %360, label %358

358:                                              ; preds = %355
  %359 = getelementptr inbounds i8, i8* %356, i32 1023
  store i8 0, i8* %359, align 1, !tbaa !36
  br label %360

360:                                              ; preds = %358, %355
  %361 = phi i8* [ %359, %358 ], [ null, %355 ]
  %362 = call i8* @halide_string_to_string(i8* %356, i8* %361, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.104, i32 0, i32 0)) #7
  %363 = call i8* @halide_pointer_to_string(i8* %362, i8* %361, i8* nonnull %178) #7
  %364 = call i8* @halide_string_to_string(i8* %363, i8* %361, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #7
  br i1 %357, label %365, label %366

365:                                              ; preds = %360
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %373

366:                                              ; preds = %360
  %367 = ptrtoint i8* %364 to i32
  %368 = ptrtoint i8* %356 to i32
  %369 = sub i32 1, %368
  %370 = add i32 %369, %367
  %371 = sext i32 %370 to i64
  %372 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %356, i64 %371) #7
  call void @halide_error(i8* %0, i8* nonnull %356) #7
  br label %373

373:                                              ; preds = %366, %365
  call void @free(i8* %356) #7
  br label %374

374:                                              ; preds = %349, %373
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #7
  %375 = load i8*, i8** %268, align 4, !tbaa !55
  %376 = call i32 @halide_hexagon_free_to_dma_pool(i8* %0, i8* nonnull %270, i8* %375) #7
  br label %377

377:                                              ; preds = %374, %267, %340, %317, %294
  %378 = phi i32 [ -39, %294 ], [ -39, %317 ], [ -39, %340 ], [ -39, %267 ], [ %376, %374 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %181) #9
  br label %379

379:                                              ; preds = %176, %174, %377
  %380 = phi i32 [ %378, %377 ], [ -39, %174 ], [ -39, %176 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %70) #9
  ret i32 %380
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_dma_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = tail call i8* @malloc(i32 1024) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i32 1023
  store i8 0, i8* %8, align 1, !tbaa !36
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i32 0, i32 0)) #7
  %10 = ptrtoint i8* %9 to i32
  %11 = ptrtoint i8* %3 to i32
  %12 = add i32 %10, 1
  %13 = sub i32 %12, %11
  %14 = sext i32 %13 to i64
  %15 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %14) #7
  tail call void @halide_error(i8* %0, i8* nonnull %3) #7
  br label %16

16:                                               ; preds = %7, %5
  tail call void @free(i8* %3) #7
  ret i32 -15
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_dma_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = tail call i8* @malloc(i32 1024) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i32 1023
  store i8 0, i8* %8, align 1, !tbaa !36
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i32 0, i32 0)) #7
  %10 = ptrtoint i8* %9 to i32
  %11 = ptrtoint i8* %3 to i32
  %12 = add i32 %10, 1
  %13 = sub i32 %12, %11
  %14 = sext i32 %13 to i64
  %15 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %14) #7
  tail call void @halide_error(i8* %0, i8* nonnull %3) #7
  br label %16

16:                                               ; preds = %7, %5
  tail call void @free(i8* %3) #7
  ret i32 -15
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_dma_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %5 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 1
  store %struct.halide_device_interface_t* %5, %struct.halide_device_interface_t** %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !22
  %9 = trunc i64 %8 to i32
  %10 = inttoptr i32 %9 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*
  %11 = tail call i8* @malloc(i32 36) #7
  %12 = bitcast i8* %11 to i8**
  store i8* null, i8** %12, align 4, !tbaa !54
  %13 = getelementptr inbounds i8, i8* %11, i32 4
  %14 = bitcast i8* %13 to i16*
  store i16 0, i16* %14, align 4, !tbaa !44
  %15 = getelementptr inbounds i8, i8* %11, i32 6
  %16 = bitcast i8* %15 to i16*
  store i16 0, i16* %16, align 2, !tbaa !48
  %17 = getelementptr inbounds i8, i8* %11, i32 8
  %18 = bitcast i8* %17 to i16*
  store i16 0, i16* %18, align 4, !tbaa !49
  %19 = getelementptr inbounds i8, i8* %11, i32 10
  %20 = bitcast i8* %19 to i16*
  store i16 0, i16* %20, align 2, !tbaa !50
  %21 = getelementptr inbounds i8, i8* %11, i32 12
  %22 = bitcast i8* %21 to i8**
  store i8* null, i8** %22, align 4, !tbaa !55
  %23 = getelementptr inbounds i8, i8* %11, i32 16
  %24 = bitcast i8* %23 to i32*
  store i32 0, i32* %24, align 4, !tbaa !56
  %25 = getelementptr inbounds i8, i8* %11, i32 20
  %26 = bitcast i8* %25 to i32*
  store i32 0, i32* %26, align 4, !tbaa !57
  %27 = getelementptr inbounds i8, i8* %11, i32 24
  %28 = bitcast i8* %27 to i32*
  store i32 0, i32* %28, align 4, !tbaa !58
  %29 = getelementptr inbounds i8, i8* %11, i32 28
  store i8 0, i8* %29, align 4, !tbaa !51
  %30 = getelementptr inbounds i8, i8* %11, i32 32
  %31 = bitcast i8* %30 to i32*
  store i32 0, i32* %31, align 4, !tbaa !52
  %32 = getelementptr inbounds i8, i8* %11, i32 29
  store i8 0, i8* %32, align 1, !tbaa !53
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %10, i32 0, i32 0
  %34 = load i8*, i8** %33, align 4, !tbaa !54
  store i8* %34, i8** %12, align 4, !tbaa !54
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %10, i32 0, i32 3
  %36 = load i16, i16* %35, align 4, !tbaa !49
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 6
  %39 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %38, align 8, !tbaa !25
  %40 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4, !tbaa !28
  %42 = add nsw i32 %41, %37
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %44 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %43, align 8, !tbaa !25
  %45 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4, !tbaa !28
  %47 = sub i32 %42, %46
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %18, align 4, !tbaa !49
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %10, i32 0, i32 4
  %50 = load i16, i16* %49, align 2, !tbaa !50
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %39, i32 1, i32 0
  %53 = load i32, i32* %52, align 4, !tbaa !28
  %54 = add nsw i32 %53, %51
  %55 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %44, i32 1, i32 0
  %56 = load i32, i32* %55, align 4, !tbaa !28
  %57 = sub i32 %54, %56
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %20, align 2, !tbaa !50
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %10, i32 0, i32 5
  %60 = load i8*, i8** %59, align 4, !tbaa !55
  store i8* %60, i8** %22, align 4, !tbaa !55
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %10, i32 0, i32 6
  %62 = load i32, i32* %61, align 4, !tbaa !56
  store i32 %62, i32* %24, align 4, !tbaa !56
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %10, i32 0, i32 7
  %64 = load i32, i32* %63, align 4, !tbaa !57
  store i32 %64, i32* %26, align 4, !tbaa !57
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %10, i32 0, i32 8
  %66 = load i32, i32* %65, align 4, !tbaa !58
  store i32 %66, i32* %28, align 4, !tbaa !58
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %10, i32 0, i32 9
  %68 = load i8, i8* %67, align 4, !tbaa !51, !range !70
  store i8 %68, i8* %29, align 4, !tbaa !51
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %10, i32 0, i32 10
  %70 = load i8, i8* %69, align 1, !tbaa !53, !range !70
  store i8 %70, i8* %32, align 1, !tbaa !53
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %10, i32 0, i32 11
  %72 = load i32, i32* %71, align 4, !tbaa !52
  store i32 %72, i32* %31, align 4, !tbaa !52
  %73 = ptrtoint i8* %11 to i32
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 0
  store i64 %74, i64* %75, align 8, !tbaa !22
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_dma_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #4 {
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.43, i32 0, i32 0)) #7
  tail call void @abort() #7
  %6 = tail call i8* @malloc(i32 1024) #7
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i8* @halide_string_to_string(i8* %6, i8* null, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i32 0, i32 0)) #7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %19

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i32 1023
  store i8 0, i8* %11, align 1, !tbaa !36
  %12 = tail call i8* @halide_string_to_string(i8* nonnull %6, i8* nonnull %11, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i32 0, i32 0)) #7
  %13 = ptrtoint i8* %12 to i32
  %14 = ptrtoint i8* %6 to i32
  %15 = add i32 %13, 1
  %16 = sub i32 %15, %14
  %17 = sext i32 %16 to i64
  %18 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %17) #7
  tail call void @halide_error(i8* %0, i8* nonnull %6) #7
  br label %19

19:                                               ; preds = %10, %8
  tail call void @free(i8* %6) #7
  ret i32 -1
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_hexagon_dma_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  %6 = trunc i64 %4 to i32
  br i1 %5, label %7, label %10

7:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.47, i32 0, i32 0)) #7
  tail call void @abort() #7
  %8 = load i64, i64* %3, align 8, !tbaa !22
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %6, %2 ], [ %9, %7 ]
  %12 = inttoptr i32 %11 to i8*
  tail call void @free(i8* %12) #7
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
  br label %37

5:                                                ; preds = %2
  %6 = tail call i32 @nDmaWrapper_PowerVoting(i32 2) #7
  br label %37

7:                                                ; preds = %2
  %8 = tail call i32 @nDmaWrapper_PowerVoting(i32 3) #7
  br label %37

9:                                                ; preds = %2
  %10 = tail call i32 @nDmaWrapper_PowerVoting(i32 4) #7
  br label %37

11:                                               ; preds = %2
  %12 = tail call i32 @nDmaWrapper_PowerVoting(i32 5) #7
  br label %37

13:                                               ; preds = %2
  %14 = tail call i32 @nDmaWrapper_PowerVoting(i32 6) #7
  br label %37

15:                                               ; preds = %2
  %16 = tail call i32 @nDmaWrapper_PowerVoting(i32 -3) #7
  br label %37

17:                                               ; preds = %2
  %18 = tail call i8* @malloc(i32 1024) #7
  %19 = icmp eq i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %18, i32 1023
  store i8 0, i8* %21, align 1, !tbaa !36
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi i8* [ %21, %20 ], [ null, %17 ]
  %24 = tail call i8* @halide_string_to_string(i8* %18, i8* %23, i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.61, i32 0, i32 0)) #7
  %25 = sext i32 %1 to i64
  %26 = tail call i8* @halide_int64_to_string(i8* %24, i8* %23, i64 %25, i32 1) #7
  %27 = tail call i8* @halide_string_to_string(i8* %26, i8* %23, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0)) #7
  br i1 %19, label %28, label %29

28:                                               ; preds = %22
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %36

29:                                               ; preds = %22
  %30 = ptrtoint i8* %27 to i32
  %31 = ptrtoint i8* %18 to i32
  %32 = add i32 %30, 1
  %33 = sub i32 %32, %31
  %34 = sext i32 %33 to i64
  %35 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %18, i64 %34) #7
  tail call void @halide_error(i8* %0, i8* nonnull %18) #7
  br label %36

36:                                               ; preds = %29, %28
  tail call void @free(i8* %18) #7
  br label %37

37:                                               ; preds = %36, %15, %13, %11, %9, %7, %5, %3
  %38 = phi i32 [ -1, %36 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ %4, %3 ]
  ret i32 %38
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

declare i8* @malloc(i32) local_unnamed_addr #2

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
!15 = !{!16, !17, i64 12}
!16 = !{!"_ZTS15halide_buffer_t", !4, i64 0, !17, i64 8, !17, i64 12, !4, i64 16, !18, i64 24, !21, i64 28, !17, i64 32, !17, i64 36}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"_ZTS13halide_type_t", !19, i64 0, !5, i64 1, !20, i64 2}
!19 = !{!"_ZTS18halide_type_code_t", !5, i64 0}
!20 = !{!"short", !5, i64 0}
!21 = !{!"int", !5, i64 0}
!22 = !{!16, !4, i64 0}
!23 = !{!18, !5, i64 1}
!24 = !{!16, !21, i64 28}
!25 = !{!16, !17, i64 32}
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
!40 = !{!41, !17, i64 60}
!41 = !{!"_ZTS25halide_device_interface_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!42 = !{!43, !17, i64 0}
!43 = !{!"_ZTS30halide_device_interface_impl_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!44 = !{!45, !20, i64 4}
!45 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma17dma_device_handleE", !17, i64 0, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !17, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !46, i64 28, !46, i64 29, !47, i64 32}
!46 = !{!"bool", !5, i64 0}
!47 = !{!"_ZTS9t_eDmaFmt", !5, i64 0}
!48 = !{!45, !20, i64 6}
!49 = !{!45, !20, i64 8}
!50 = !{!45, !20, i64 10}
!51 = !{!45, !46, i64 28}
!52 = !{!45, !47, i64 32}
!53 = !{!45, !46, i64 29}
!54 = !{!45, !17, i64 0}
!55 = !{!45, !17, i64 12}
!56 = !{!45, !21, i64 16}
!57 = !{!45, !21, i64 20}
!58 = !{!45, !21, i64 24}
!59 = !{!16, !4, i64 16}
!60 = !{!43, !17, i64 4}
!61 = !{!17, !17, i64 0}
!62 = !{!63, !17, i64 8}
!63 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma9desc_poolE", !17, i64 0, !46, i64 4, !17, i64 8}
!64 = !{!63, !17, i64 0}
!65 = distinct !{!65, !8}
!66 = !{!43, !17, i64 40}
!67 = !{!68, !20, i64 0}
!68 = !{!"_ZTS25stDmaWrapper_RoiAlignInfo", !20, i64 0, !20, i64 2}
!69 = !{!68, !20, i64 2}
!70 = !{i8 0, i8 2}
!71 = !{!63, !46, i64 4}
!72 = distinct !{!72, !8}
!73 = !{!74, !47, i64 32}
!74 = !{!"_ZTS29stDmaWrapper_DmaTransferSetup", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !17, i64 16, !17, i64 20, !17, i64 24, !20, i64 28, !20, i64 30, !47, i64 32, !75, i64 36}
!75 = !{!"_ZTS26eDmaWrapper_TransationType", !5, i64 0}
!76 = !{!74, !20, i64 0}
!77 = !{!74, !20, i64 2}
!78 = !{!74, !20, i64 4}
!79 = !{!74, !20, i64 10}
!80 = !{!74, !20, i64 12}
!81 = !{!74, !20, i64 14}
!82 = !{!74, !20, i64 28}
!83 = !{!74, !20, i64 30}
!84 = !{!74, !17, i64 16}
!85 = !{!74, !17, i64 20}
!86 = !{!74, !17, i64 24}
!87 = !{!74, !20, i64 8}
!88 = distinct !{!88, !8}
