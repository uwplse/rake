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
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle" = type { i8*, i16, i16, i16, i16, i8*, i32, i32, i32, i8, i8, i32, [4 x i8] }
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }
%struct.stDmaWrapper_RoiAlignInfo = type { i16, i16 }
%struct.stDmaWrapper_DmaTransferSetup = type { i16, i16, i16, i16, i16, i16, i16, i16, i8*, i8*, i8*, i16, i16, i32, i32, [4 x i8] }

@.str = private unnamed_addr constant [55 x i8] c"copy_memory: no copy needed as pointers are the same.\0A\00", align 1
@_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* null, align 8, !dbg !0
@_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE = weak dso_local global %struct.halide_mutex zeroinitializer, align 8, !dbg !18
@.str.1 = private unnamed_addr constant [58 x i8] c"Hexagon: halide_hexagon_dma_device_malloc (user_context: \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c", buf: \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"Hexagon: buffer already has a device. No action required\0A\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:374 Assert failed: size != 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"Hexagon: Out of memory (halide_malloc failed for device_malloc)\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Hexagon: halide_hexagon_dma_device_free (user_context: \00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"Hexagon: halide_hexagon_dma_allocate_engine (user_context: \00", align 1
@.str.9 = private unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:412 Assert failed: dma_engine\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"    dma_allocate_dma_engine -> \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"dma_allocate_dma_engine failed.\0A\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"Hexagon: halide_hexagon_dma_deallocate_engine (user_context: \00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c", dma_engine: \00", align 1
@.str.16 = private unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:429 Assert failed: dma_engine\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Hexagon:     dma_free_dma_pool done\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"Hexagon: Free DMA/Cache Pool failed.\0A\00", align 1
@.str.19 = private unnamed_addr constant [69 x i8] c"Hexagon: halide_hexagon_dma_prepare_for_copy_to_host (user_context: \00", align 1
@.str.20 = private unnamed_addr constant [71 x i8] c"Hexagon: halide_hexagon_dma_prepare_for_copy_to_device (user_context: \00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"Hexagon: halide_hexagon_dma_unprepare (user_context: \00", align 1
@_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE = weak dso_local global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* null, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal10HexagonDma33hexagon_dma_device_interface_implE }, align 8, !dbg !31
@.str.22 = private unnamed_addr constant [187 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:498 Assert failed: dst_device_interface == nullptr || dst_device_interface == &hexagon_dma_device_interface\0A\00", align 1
@.str.23 = private unnamed_addr constant [152 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:502 Assert failed: dst_device_interface == &hexagon_dma_device_interface\0A\00", align 1
@.str.24 = private unnamed_addr constant [65 x i8] c"Hexagon: src->device_interface != &hexagon_dma_device_interface\0A\00", align 1
@.str.25 = private unnamed_addr constant [59 x i8] c"Hexagon: halide_hexagon_dma_buffer_copy (not DMA) failed: \00", align 1
@.str.26 = private unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:518 Assert failed: from_host || src->device\0A\00", align 1
@.str.27 = private unnamed_addr constant [121 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:519 Assert failed: to_host || dst->device\0A\00", align 1
@.str.28 = private unnamed_addr constant [149 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:521 Assert failed: (!from_host && to_host) || (from_host && !to_host)\0A\00", align 1
@.str.29 = private unnamed_addr constant [56 x i8] c"Hexagon: halide_hexagon_dma_buffer_copy (user_context: \00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c", src: \00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c", dst: \00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c", DMA Read: \00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c", DMA Write: \00", align 1
@.str.34 = private unnamed_addr constant [59 x i8] c"Hexagon: halide_hexagon_dma_copy_to_device (user_context: \00", align 1
@.str.35 = private unnamed_addr constant [60 x i8] c"Hexagon: halide_hexagon_dma_copy_to_device not implemented\0A\00", align 1
@.str.36 = private unnamed_addr constant [57 x i8] c"Hexagon: halide_hexagon_dma_copy_to_host (user_context: \00", align 1
@.str.37 = private unnamed_addr constant [58 x i8] c"Hexagon: halide_hexagon_dma_copy_to_host not implemented\0A\00", align 1
@.str.38 = private unnamed_addr constant [56 x i8] c"Hexagon: halide_hexagon_dma_device_crop (user_context: \00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c" src: \00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c" dst: \00", align 1
@.str.42 = private unnamed_addr constant [57 x i8] c"Hexagon: halide_hexagon_dma_device_slice (user_context: \00", align 1
@.str.43 = private unnamed_addr constant [100 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:591 Assert failed: 0\0A\00", align 1
@.str.44 = private unnamed_addr constant [58 x i8] c"Hexagon: halide_hexagon_dma_device_slice not implemented\0A\00", align 1
@.str.45 = private unnamed_addr constant [64 x i8] c"Hexagon: halide_hexagon_dma_device_release_crop (user_context: \00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c" buf: \00", align 1
@.str.47 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:602 Assert failed: buf->device\0A\00", align 1
@.str.48 = private unnamed_addr constant [56 x i8] c"Hexagon: halide_hexagon_dma_device_sync (user_context: \00", align 1
@.str.49 = private unnamed_addr constant [63 x i8] c"Hexagon: halide_hexagon_dma_device_wrap_native (user_context: \00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c" handle: \00", align 1
@.str.51 = private unnamed_addr constant [115 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:623 Assert failed: buf->device == 0\0A\00", align 1
@.str.52 = private unnamed_addr constant [76 x i8] c"Hexagon: halide_hexagon_dma_device_wrap_native buffer already has a device\0A\00", align 1
@.str.54 = private unnamed_addr constant [65 x i8] c"Hexagon: halide_hexagon_dma_device_detach_native (user_context: \00", align 1
@.str.55 = private unnamed_addr constant [74 x i8] c"Hexagon: halide_hexagon_dma_device_detach_native buffer without a device\0A\00", align 1
@.str.56 = private unnamed_addr constant [153 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:653 Assert failed: buf->device_interface == &hexagon_dma_device_interface\0A\00", align 1
@.str.57 = private unnamed_addr constant [67 x i8] c"Hexagon: halide_hexagon_dma_device_and_host_malloc (user_context: \00", align 1
@.str.58 = private unnamed_addr constant [65 x i8] c"Hexagon: halide_hexagon_dma_device_and_host_free (user_context: \00", align 1
@.str.59 = private unnamed_addr constant [59 x i8] c"Hexagon: halide_hexagon_dma_device_release (user_context: \00", align 1
@.str.60 = private unnamed_addr constant [57 x i8] c"Hexagon: halide_hexagon_dma_power_voting (user_context: \00", align 1
@.str.61 = private unnamed_addr constant [54 x i8] c"Hexagon: halide_hexagon_dma_power_voting power mode (\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c") not found\0A\00", align 1
@_ZN6Halide7Runtime8Internal10HexagonDma33hexagon_dma_device_interface_implE = weak dso_local global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_sync, i32 (i8*)* @halide_hexagon_dma_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_hexagon_dma_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_hexagon_dma_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_detach_native }, align 8, !dbg !229
@.str.63 = private unnamed_addr constant [30 x i8] c"Hexagon: DMA Format Mismatch \00", align 1
@.str.64 = private unnamed_addr constant [109 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:448 Assert failed: dma_engine\0A\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"Hexagon dev handle: buffer: \00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c" dev_offset(rdx: : \00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c" rdy: \00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c" dev_offset(wrx: : \00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c" wry: \00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c" frame(w: \00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c" h: \00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c" s: \00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"size_in_bytes() src: \00", align 1
@.str.75 = private unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:222 Assert failed: src->dimensions <= 3\0A\00", align 1
@.str.76 = private unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:229 Assert failed: src->dimensions == 2\0A\00", align 1
@.str.77 = private unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:236 Assert failed: src->dimensions == 3\0A\00", align 1
@.str.78 = private unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:237 Assert failed: src->dim[0].stride == 2\0A\00", align 1
@.str.79 = private unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:238 Assert failed: src->dim[2].stride == 1\0A\00", align 1
@.str.80 = private unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:239 Assert failed: src->dim[2].min == 0\0A\00", align 1
@.str.81 = private unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:240 Assert failed: src->dim[2].extent == 2\0A\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"Hexagon: Recommended ROI(w: \00", align 1
@.str.83 = private unnamed_addr constant [139 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp:261 Assert failed: ((dst->dim[1].stride % roi_stride) == 0)\0A\00", align 1
@.str.84 = private unnamed_addr constant [42 x i8] c"Hexagon: DMA descriptor allocation error\0A\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"Hexagon: cache buffer size \00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"Hexagon: u16Roi(X: \00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c" Y: \00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c" W: \00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c" H: \00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c" dst->dim[1].min: \00", align 1
@.str.91 = private unnamed_addr constant [40 x i8] c"Hexagon: Dma Engine Allocation Faliure\0A\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"Hexagon: \00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c" transfer: \00", align 1
@.str.94 = private unnamed_addr constant [30 x i8] c"Hexagon: DMA Transfer Error: \00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c" move\0A\00", align 1
@.str.96 = private unnamed_addr constant [34 x i8] c"Hexagon: nDmaWrapper_Move error: \00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c" wait\0A\00", align 1
@.str.98 = private unnamed_addr constant [34 x i8] c"Hexagon: nDmaWrapper_Wait error: \00", align 1
@.str.99 = private unnamed_addr constant [41 x i8] c"halide_hexagon_free_from_dma_pool error:\00", align 1
@.str.100 = private unnamed_addr constant [64 x i8] c"Hexagon: Out of memory (malloc failed for DMA descriptor pool)\0A\00", align 1
@.str.101 = private unnamed_addr constant [63 x i8] c"Hexagon: Out of memory (HAP_cache_lock failed for descriptor)\0A\00", align 1
@.str.102 = private unnamed_addr constant [24 x i8] c"Hexagon: malloc failed\0A\00", align 1
@.str.104 = private unnamed_addr constant [25 x i8] c"Hexagon: desc not found \00", align 1
@.str.105 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !517 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !536, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i32 %1, metadata !537, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 %2, metadata !538, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 %3, metadata !539, metadata !DIExpression()), !dbg !547
  %5 = icmp sgt i32 %1, -1, !dbg !548
  br i1 %5, label %6, label %15, !dbg !549

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !537, metadata !DIExpression()), !dbg !547
  %8 = zext i32 %7 to i64, !dbg !550
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8, !dbg !550
  %10 = load i64, i64* %9, align 8, !dbg !550, !tbaa !551
  %11 = icmp eq i64 %10, 1, !dbg !555
  br i1 %11, label %12, label %15, !dbg !556

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1, !dbg !557
  call void @llvm.dbg.value(metadata i32 %13, metadata !537, metadata !DIExpression()), !dbg !547
  %14 = icmp sgt i32 %7, 0, !dbg !548
  br i1 %14, label %6, label %27, !dbg !549, !llvm.loop !559

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1, !dbg !562
  br i1 %17, label %27, label %18, !dbg !563

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !544, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 %2, metadata !538, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 %3, metadata !539, metadata !DIExpression()), !dbg !547
  %19 = sext i32 %16 to i64, !dbg !565
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19, !dbg !565
  %21 = load i64, i64* %20, align 8, !dbg !565, !tbaa !551
  %22 = icmp eq i64 %21, 0, !dbg !567
  br i1 %22, label %50, label %23, !dbg !568

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %39, !dbg !568

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !569
  %29 = load i64, i64* %28, align 8, !dbg !569, !tbaa !570
  %30 = add i64 %29, %2, !dbg !572
  %31 = inttoptr i64 %30 to i8*, !dbg !573
  call void @llvm.dbg.value(metadata i8* %31, metadata !540, metadata !DIExpression()), !dbg !574
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !575
  %33 = load i64, i64* %32, align 8, !dbg !575, !tbaa !576
  %34 = add i64 %33, %3, !dbg !577
  %35 = inttoptr i64 %34 to i8*, !dbg !578
  call void @llvm.dbg.value(metadata i8* %35, metadata !543, metadata !DIExpression()), !dbg !574
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6, !dbg !579
  %37 = load i64, i64* %36, align 8, !dbg !579, !tbaa !580
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #8, !dbg !581
  br label %50, !dbg !582

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %2, %23 ], [ %44, %39 ]
  %42 = phi i64 [ %3, %23 ], [ %46, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !544, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i64 %41, metadata !538, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 %42, metadata !539, metadata !DIExpression()), !dbg !547
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %41, i64 %42) #9, !dbg !583
  %43 = load i64, i64* %25, align 8, !dbg !585, !tbaa !551
  %44 = add i64 %43, %41, !dbg !586
  call void @llvm.dbg.value(metadata i64 %44, metadata !538, metadata !DIExpression()), !dbg !547
  %45 = load i64, i64* %26, align 8, !dbg !587, !tbaa !551
  %46 = add i64 %45, %42, !dbg !588
  call void @llvm.dbg.value(metadata i64 %46, metadata !539, metadata !DIExpression()), !dbg !547
  %47 = add nuw i64 %40, 1, !dbg !589
  call void @llvm.dbg.value(metadata i64 %47, metadata !544, metadata !DIExpression()), !dbg !564
  %48 = load i64, i64* %20, align 8, !dbg !565, !tbaa !551
  %49 = icmp ult i64 %47, %48, !dbg !567
  br i1 %49, label %39, label %50, !dbg !568, !llvm.loop !590

50:                                               ; preds = %39, %18, %27
  ret void, !dbg !592
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !593 dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #4 !dbg !597 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !601, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata i8* %1, metadata !602, metadata !DIExpression()), !dbg !603
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !604
  %4 = load i64, i64* %3, align 8, !dbg !604, !tbaa !570
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !606
  %6 = load i64, i64* %5, align 8, !dbg !606, !tbaa !576
  %7 = icmp eq i64 %4, %6, !dbg !607
  br i1 %7, label %11, label %8, !dbg !608

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 2, !dbg !609
  %10 = load i64, i64* %9, align 8, !dbg !609, !tbaa !611
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #9, !dbg !612
  br label %25, !dbg !613

11:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !620
  call void @llvm.dbg.value(metadata i8* %1, metadata !617, metadata !DIExpression()) #10, !dbg !620
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !620
  %12 = tail call i8* @malloc(i64 1024) #8, !dbg !623
  %13 = icmp eq i8* %12, null, !dbg !628
  br i1 %13, label %14, label %16, !dbg !630

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !635
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !635
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0)) #8, !dbg !637
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !643
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !645
  br label %24, !dbg !649

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i64 1023, !dbg !650
  store i8 0, i8* %17, align 1, !dbg !652, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !635
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !635
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0)) #8, !dbg !637
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !643
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !657
  %19 = ptrtoint i8* %18 to i64, !dbg !660
  %20 = ptrtoint i8* %12 to i64, !dbg !660
  %21 = add i64 %19, 1, !dbg !660
  %22 = sub i64 %21, %20, !dbg !661
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %12, i64 %22) #8, !dbg !662
  tail call void @halide_print(i8* %1, i8* nonnull %12) #8, !dbg !663
  br label %24

24:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #8, !dbg !667
  br label %25

25:                                               ; preds = %24, %8
  ret void, !dbg !670
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 !dbg !671 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !676, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i1 %2, metadata !677, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !703
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !678, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i1 %4, metadata !679, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !703
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*, !dbg !704
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #10, !dbg !704
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %6, metadata !680, metadata !DIExpression()), !dbg !705
  br i1 %2, label %8, label %12, !dbg !706

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !707
  %10 = load i8*, i8** %9, align 8, !dbg !707, !tbaa !708
  %11 = ptrtoint i8* %10 to i64, !dbg !715
  br label %15, !dbg !706

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !716
  %14 = load i64, i64* %13, align 8, !dbg !716, !tbaa !717
  br label %15, !dbg !706

15:                                               ; preds = %12, %8
  %16 = phi i64 [ %11, %8 ], [ %14, %12 ], !dbg !706
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 0, !dbg !718
  store i64 %16, i64* %17, align 8, !dbg !719, !tbaa !570
  br i1 %4, label %18, label %22, !dbg !720

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2, !dbg !721
  %20 = load i8*, i8** %19, align 8, !dbg !721, !tbaa !708
  %21 = ptrtoint i8* %20 to i64, !dbg !722
  br label %25, !dbg !720

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0, !dbg !723
  %24 = load i64, i64* %23, align 8, !dbg !723, !tbaa !717
  br label %25, !dbg !720

25:                                               ; preds = %22, %18
  %26 = phi i64 [ %21, %18 ], [ %24, %22 ], !dbg !720
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 1, !dbg !724
  store i64 %26, i64* %27, align 8, !dbg !725, !tbaa !576
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !730
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !732
  %29 = load i8, i8* %28, align 1, !dbg !732, !tbaa !733
  %30 = zext i8 %29 to i32, !dbg !732
  %31 = add nuw nsw i32 %30, 7, !dbg !734
  %32 = lshr i32 %31, 3, !dbg !735
  %33 = zext i32 %32 to i64, !dbg !736
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 6, !dbg !737
  store i64 %33, i64* %34, align 8, !dbg !738, !tbaa !580
  call void @llvm.dbg.value(metadata i32 0, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 0, metadata !681, metadata !DIExpression()), !dbg !739
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 0, !dbg !740
  store i64 1, i64* %35, align 8, !dbg !743, !tbaa !551
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 0, !dbg !744
  store i64 0, i64* %36, align 8, !dbg !745, !tbaa !551
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 0, !dbg !746
  store i64 0, i64* %37, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 1, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 1, metadata !681, metadata !DIExpression()), !dbg !739
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 1, !dbg !740
  store i64 1, i64* %38, align 8, !dbg !743, !tbaa !551
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 1, !dbg !744
  store i64 0, i64* %39, align 8, !dbg !745, !tbaa !551
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 1, !dbg !746
  store i64 0, i64* %40, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 2, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 2, metadata !681, metadata !DIExpression()), !dbg !739
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 2, !dbg !740
  store i64 1, i64* %41, align 8, !dbg !743, !tbaa !551
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 2, !dbg !744
  store i64 0, i64* %42, align 8, !dbg !745, !tbaa !551
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 2, !dbg !746
  store i64 0, i64* %43, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 3, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 3, metadata !681, metadata !DIExpression()), !dbg !739
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 3, !dbg !740
  store i64 1, i64* %44, align 8, !dbg !743, !tbaa !551
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 3, !dbg !744
  store i64 0, i64* %45, align 8, !dbg !745, !tbaa !551
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 3, !dbg !746
  store i64 0, i64* %46, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 4, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 4, metadata !681, metadata !DIExpression()), !dbg !739
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 4, !dbg !740
  store i64 1, i64* %47, align 8, !dbg !743, !tbaa !551
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 4, !dbg !744
  store i64 0, i64* %48, align 8, !dbg !745, !tbaa !551
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 4, !dbg !746
  store i64 0, i64* %49, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 5, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 5, metadata !681, metadata !DIExpression()), !dbg !739
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 5, !dbg !740
  store i64 1, i64* %50, align 8, !dbg !743, !tbaa !551
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 5, !dbg !744
  store i64 0, i64* %51, align 8, !dbg !745, !tbaa !551
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 5, !dbg !746
  store i64 0, i64* %52, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 6, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 6, metadata !681, metadata !DIExpression()), !dbg !739
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 6, !dbg !740
  store i64 1, i64* %53, align 8, !dbg !743, !tbaa !551
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 6, !dbg !744
  store i64 0, i64* %54, align 8, !dbg !745, !tbaa !551
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 6, !dbg !746
  store i64 0, i64* %55, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 7, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 7, metadata !681, metadata !DIExpression()), !dbg !739
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 7, !dbg !740
  store i64 1, i64* %56, align 8, !dbg !743, !tbaa !551
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 7, !dbg !744
  store i64 0, i64* %57, align 8, !dbg !745, !tbaa !551
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 7, !dbg !746
  store i64 0, i64* %58, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 8, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 8, metadata !681, metadata !DIExpression()), !dbg !739
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 8, !dbg !740
  store i64 1, i64* %59, align 8, !dbg !743, !tbaa !551
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 8, !dbg !744
  store i64 0, i64* %60, align 8, !dbg !745, !tbaa !551
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 8, !dbg !746
  store i64 0, i64* %61, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 9, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 9, metadata !681, metadata !DIExpression()), !dbg !739
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 9, !dbg !740
  store i64 1, i64* %62, align 8, !dbg !743, !tbaa !551
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 9, !dbg !744
  store i64 0, i64* %63, align 8, !dbg !745, !tbaa !551
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 9, !dbg !746
  store i64 0, i64* %64, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 10, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 10, metadata !681, metadata !DIExpression()), !dbg !739
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 10, !dbg !740
  store i64 1, i64* %65, align 8, !dbg !743, !tbaa !551
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 10, !dbg !744
  store i64 0, i64* %66, align 8, !dbg !745, !tbaa !551
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 10, !dbg !746
  store i64 0, i64* %67, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 11, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 11, metadata !681, metadata !DIExpression()), !dbg !739
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 11, !dbg !740
  store i64 1, i64* %68, align 8, !dbg !743, !tbaa !551
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 11, !dbg !744
  store i64 0, i64* %69, align 8, !dbg !745, !tbaa !551
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 11, !dbg !746
  store i64 0, i64* %70, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 12, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 12, metadata !681, metadata !DIExpression()), !dbg !739
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 12, !dbg !740
  store i64 1, i64* %71, align 8, !dbg !743, !tbaa !551
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 12, !dbg !744
  store i64 0, i64* %72, align 8, !dbg !745, !tbaa !551
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 12, !dbg !746
  store i64 0, i64* %73, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 13, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 13, metadata !681, metadata !DIExpression()), !dbg !739
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 13, !dbg !740
  store i64 1, i64* %74, align 8, !dbg !743, !tbaa !551
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 13, !dbg !744
  store i64 0, i64* %75, align 8, !dbg !745, !tbaa !551
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 13, !dbg !746
  store i64 0, i64* %76, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 14, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 14, metadata !681, metadata !DIExpression()), !dbg !739
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 14, !dbg !740
  store i64 1, i64* %77, align 8, !dbg !743, !tbaa !551
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 14, !dbg !744
  store i64 0, i64* %78, align 8, !dbg !745, !tbaa !551
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 14, !dbg !746
  store i64 0, i64* %79, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 15, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 15, metadata !681, metadata !DIExpression()), !dbg !739
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 15, !dbg !740
  store i64 1, i64* %80, align 8, !dbg !743, !tbaa !551
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 15, !dbg !744
  store i64 0, i64* %81, align 8, !dbg !745, !tbaa !551
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 15, !dbg !746
  store i64 0, i64* %82, align 8, !dbg !747, !tbaa !551
  call void @llvm.dbg.value(metadata i64 16, metadata !681, metadata !DIExpression()), !dbg !739
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 2, !dbg !748
  call void @llvm.dbg.value(metadata i32 0, metadata !683, metadata !DIExpression()), !dbg !749
  %84 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !750
  %85 = load i32, i32* %84, align 4, !dbg !750, !tbaa !752
  %86 = icmp sgt i32 %85, 0, !dbg !753
  br i1 %86, label %87, label %93, !dbg !754

87:                                               ; preds = %25
  %88 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %89 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %88, align 8, !tbaa !755
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !755
  %92 = zext i32 %85 to i64, !dbg !753
  br label %100, !dbg !754

93:                                               ; preds = %100, %25
  %94 = phi i64 [ 0, %25 ], [ %113, %100 ], !dbg !756
  %95 = load i64, i64* %34, align 8, !dbg !757, !tbaa !580
  %96 = mul i64 %94, %95, !dbg !756
  store i64 %96, i64* %83, align 8, !dbg !756, !tbaa !611
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5, !dbg !758
  %98 = load i32, i32* %97, align 4, !dbg !758, !tbaa !752
  %99 = icmp eq i32 %85, %98, !dbg !759
  br i1 %99, label %116, label %125, !dbg !760

100:                                              ; preds = %87, %100
  %101 = phi i64 [ 0, %87 ], [ %114, %100 ], !dbg !749
  %102 = phi i64 [ 0, %87 ], [ %113, %100 ], !dbg !749
  call void @llvm.dbg.value(metadata i64 %101, metadata !683, metadata !DIExpression()), !dbg !749
  %103 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 2, !dbg !761
  %104 = load i32, i32* %103, align 4, !dbg !761, !tbaa !763
  %105 = sext i32 %104 to i64, !dbg !765
  %106 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i64 %101, i32 0, !dbg !766
  %107 = load i32, i32* %106, align 4, !dbg !766, !tbaa !767
  %108 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 0, !dbg !768
  %109 = load i32, i32* %108, align 4, !dbg !768, !tbaa !767
  %110 = sub nsw i32 %107, %109, !dbg !769
  %111 = sext i32 %110 to i64, !dbg !770
  %112 = mul nsw i64 %111, %105, !dbg !771
  %113 = add i64 %112, %102, !dbg !772
  %114 = add nuw nsw i64 %101, 1, !dbg !773
  call void @llvm.dbg.value(metadata i64 %114, metadata !683, metadata !DIExpression()), !dbg !749
  %115 = icmp eq i64 %114, %92, !dbg !753
  br i1 %115, label %93, label %100, !dbg !754, !llvm.loop !774

116:                                              ; preds = %93
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !776
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !778
  %117 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1, !dbg !780
  %118 = load i8, i8* %117, align 1, !dbg !780, !tbaa !733
  %119 = zext i8 %118 to i32, !dbg !780
  %120 = add nuw nsw i32 %119, 7, !dbg !781
  %121 = lshr i32 %120, 3, !dbg !782
  %122 = icmp ne i32 %32, %121, !dbg !783
  %123 = icmp sgt i32 %85, 16
  %124 = or i1 %123, %122, !dbg !784
  br i1 %124, label %125, label %127, !dbg !784

125:                                              ; preds = %116, %93
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !685, metadata !DIExpression()), !dbg !785
  %126 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !785
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %126, i8 0, i64 416, i1 false), !dbg !785
  br label %253, !dbg !786

127:                                              ; preds = %116
  %128 = icmp eq i64 %95, 0, !dbg !787
  br i1 %128, label %136, label %129, !dbg !788

129:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i32 0, metadata !691, metadata !DIExpression()), !dbg !789
  br i1 %86, label %130, label %251, !dbg !790

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %132 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %131, align 8, !tbaa !755
  %133 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %134 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %133, align 8, !tbaa !755
  %135 = zext i32 %85 to i64, !dbg !791
  br label %144, !dbg !790

136:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !688, metadata !DIExpression()), !dbg !792
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !792
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i64 416, i1 false), !dbg !792
  br label %253, !dbg !793

138:                                              ; preds = %176
  %139 = load i64, i64* %34, align 8, !dbg !794, !tbaa !580
  %140 = load i64, i64* %36, align 8, !dbg !795, !tbaa !551
  %141 = icmp eq i64 %139, %140, !dbg !796
  br i1 %141, label %142, label %251, !dbg !797

142:                                              ; preds = %138
  %143 = load i64, i64* %37, align 8, !dbg !798, !tbaa !551
  br label %198, !dbg !797

144:                                              ; preds = %130, %176
  %145 = phi i64 [ 0, %130 ], [ %183, %176 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !691, metadata !DIExpression()), !dbg !789
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 2, !dbg !799
  %147 = load i32, i32* %146, align 4, !dbg !799, !tbaa !763
  %148 = sext i32 %147 to i64, !dbg !800
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !801
  %149 = mul nsw i64 %148, %33, !dbg !803
  call void @llvm.dbg.value(metadata i64 %149, metadata !693, metadata !DIExpression()), !dbg !804
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %134, i64 %145, i32 2, !dbg !805
  %151 = load i32, i32* %150, align 4, !dbg !805, !tbaa !763
  %152 = sext i32 %151 to i64, !dbg !806
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !807
  %153 = mul nsw i64 %152, %33, !dbg !809
  call void @llvm.dbg.value(metadata i64 %153, metadata !696, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.value(metadata i32 0, metadata !697, metadata !DIExpression()), !dbg !804
  %154 = icmp eq i64 %145, 0, !dbg !810
  br i1 %154, label %170, label %155, !dbg !813

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %157, label %159, !dbg !813

157:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i32 undef, metadata !697, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !804
  %158 = trunc i64 %145 to i32, !dbg !814
  br label %170, !dbg !814

159:                                              ; preds = %155, %164
  %160 = phi i64 [ %165, %164 ], [ 0, %155 ]
  call void @llvm.dbg.value(metadata i64 %160, metadata !697, metadata !DIExpression()), !dbg !804
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %160, !dbg !816
  %162 = load i64, i64* %161, align 8, !dbg !816, !tbaa !551
  %163 = icmp ult i64 %149, %162, !dbg !819
  br i1 %163, label %167, label %164, !dbg !820

164:                                              ; preds = %159
  %165 = add nuw nsw i64 %160, 1, !dbg !821
  call void @llvm.dbg.value(metadata i64 %165, metadata !697, metadata !DIExpression()), !dbg !804
  %166 = icmp eq i64 %165, %145, !dbg !810
  br i1 %166, label %167, label %159, !dbg !813, !llvm.loop !822

167:                                              ; preds = %159, %164
  %168 = phi i64 [ %145, %164 ], [ %160, %159 ]
  %169 = trunc i64 %168 to i32, !dbg !824
  br label %170, !dbg !814

170:                                              ; preds = %157, %167, %144
  %171 = phi i32 [ 0, %144 ], [ %169, %167 ], [ %158, %157 ], !dbg !824
  call void @llvm.dbg.value(metadata i64 %145, metadata !698, metadata !DIExpression()), !dbg !825
  %172 = zext i32 %171 to i64, !dbg !814
  %173 = icmp ugt i64 %145, %172, !dbg !814
  br i1 %173, label %174, label %176, !dbg !826

174:                                              ; preds = %170
  %175 = sext i32 %171 to i64, !dbg !826
  br label %185, !dbg !826

176:                                              ; preds = %185, %170
  %177 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 1, !dbg !827
  %178 = load i32, i32* %177, align 4, !dbg !827, !tbaa !828
  %179 = sext i32 %178 to i64, !dbg !829
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %172, !dbg !830
  store i64 %179, i64* %180, align 8, !dbg !831, !tbaa !551
  %181 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %172, !dbg !832
  store i64 %149, i64* %181, align 8, !dbg !833, !tbaa !551
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %172, !dbg !834
  store i64 %153, i64* %182, align 8, !dbg !835, !tbaa !551
  %183 = add nuw nsw i64 %145, 1, !dbg !836
  call void @llvm.dbg.value(metadata i64 %183, metadata !691, metadata !DIExpression()), !dbg !789
  %184 = icmp eq i64 %183, %135, !dbg !791
  br i1 %184, label %138, label %144, !dbg !790, !llvm.loop !837

185:                                              ; preds = %174, %185
  %186 = phi i64 [ %145, %174 ], [ %187, %185 ]
  call void @llvm.dbg.value(metadata i64 %186, metadata !698, metadata !DIExpression()), !dbg !825
  %187 = add nsw i64 %186, -1, !dbg !839
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %187, !dbg !841
  %189 = load i64, i64* %188, align 8, !dbg !841, !tbaa !551
  %190 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %186, !dbg !842
  store i64 %189, i64* %190, align 8, !dbg !843, !tbaa !551
  %191 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %187, !dbg !844
  %192 = load i64, i64* %191, align 8, !dbg !844, !tbaa !551
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %186, !dbg !845
  store i64 %192, i64* %193, align 8, !dbg !846, !tbaa !551
  %194 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %187, !dbg !847
  %195 = load i64, i64* %194, align 8, !dbg !847, !tbaa !551
  %196 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %186, !dbg !848
  store i64 %195, i64* %196, align 8, !dbg !849, !tbaa !551
  call void @llvm.dbg.value(metadata i64 %187, metadata !698, metadata !DIExpression()), !dbg !825
  %197 = icmp sgt i64 %187, %175, !dbg !814
  br i1 %197, label %185, label %176, !dbg !826, !llvm.loop !850

198:                                              ; preds = %142, %202
  %199 = phi i64 [ %143, %142 ], [ %207, %202 ], !dbg !798
  %200 = phi i64 [ %140, %142 ], [ %204, %202 ]
  %201 = icmp eq i64 %200, %199, !dbg !852
  br i1 %201, label %202, label %251, !dbg !853

202:                                              ; preds = %198
  %203 = load i64, i64* %35, align 8, !dbg !854, !tbaa !551
  %204 = mul i64 %203, %199, !dbg !855
  store i64 %204, i64* %34, align 8, !dbg !855, !tbaa !580
  call void @llvm.dbg.value(metadata i64 1, metadata !700, metadata !DIExpression()), !dbg !856
  %205 = load i64, i64* %38, align 8, !dbg !857, !tbaa !551
  store i64 %205, i64* %35, align 8, !dbg !860, !tbaa !551
  %206 = load i64, i64* %39, align 8, !dbg !861, !tbaa !551
  store i64 %206, i64* %36, align 8, !dbg !862, !tbaa !551
  %207 = load i64, i64* %40, align 8, !dbg !863, !tbaa !551
  store i64 %207, i64* %37, align 8, !dbg !864, !tbaa !551
  call void @llvm.dbg.value(metadata i64 2, metadata !700, metadata !DIExpression()), !dbg !856
  %208 = load i64, i64* %41, align 8, !dbg !857, !tbaa !551
  store i64 %208, i64* %38, align 8, !dbg !860, !tbaa !551
  %209 = load i64, i64* %42, align 8, !dbg !861, !tbaa !551
  store i64 %209, i64* %39, align 8, !dbg !862, !tbaa !551
  %210 = load i64, i64* %43, align 8, !dbg !863, !tbaa !551
  store i64 %210, i64* %40, align 8, !dbg !864, !tbaa !551
  call void @llvm.dbg.value(metadata i64 3, metadata !700, metadata !DIExpression()), !dbg !856
  %211 = load i64, i64* %44, align 8, !dbg !857, !tbaa !551
  store i64 %211, i64* %41, align 8, !dbg !860, !tbaa !551
  %212 = load i64, i64* %45, align 8, !dbg !861, !tbaa !551
  store i64 %212, i64* %42, align 8, !dbg !862, !tbaa !551
  %213 = load i64, i64* %46, align 8, !dbg !863, !tbaa !551
  store i64 %213, i64* %43, align 8, !dbg !864, !tbaa !551
  call void @llvm.dbg.value(metadata i64 4, metadata !700, metadata !DIExpression()), !dbg !856
  %214 = load i64, i64* %47, align 8, !dbg !857, !tbaa !551
  store i64 %214, i64* %44, align 8, !dbg !860, !tbaa !551
  %215 = load i64, i64* %48, align 8, !dbg !861, !tbaa !551
  store i64 %215, i64* %45, align 8, !dbg !862, !tbaa !551
  %216 = load i64, i64* %49, align 8, !dbg !863, !tbaa !551
  store i64 %216, i64* %46, align 8, !dbg !864, !tbaa !551
  call void @llvm.dbg.value(metadata i64 5, metadata !700, metadata !DIExpression()), !dbg !856
  %217 = load i64, i64* %50, align 8, !dbg !857, !tbaa !551
  store i64 %217, i64* %47, align 8, !dbg !860, !tbaa !551
  %218 = load i64, i64* %51, align 8, !dbg !861, !tbaa !551
  store i64 %218, i64* %48, align 8, !dbg !862, !tbaa !551
  %219 = load i64, i64* %52, align 8, !dbg !863, !tbaa !551
  store i64 %219, i64* %49, align 8, !dbg !864, !tbaa !551
  call void @llvm.dbg.value(metadata i64 6, metadata !700, metadata !DIExpression()), !dbg !856
  %220 = load i64, i64* %53, align 8, !dbg !857, !tbaa !551
  store i64 %220, i64* %50, align 8, !dbg !860, !tbaa !551
  %221 = load i64, i64* %54, align 8, !dbg !861, !tbaa !551
  store i64 %221, i64* %51, align 8, !dbg !862, !tbaa !551
  %222 = load i64, i64* %55, align 8, !dbg !863, !tbaa !551
  store i64 %222, i64* %52, align 8, !dbg !864, !tbaa !551
  call void @llvm.dbg.value(metadata i64 7, metadata !700, metadata !DIExpression()), !dbg !856
  %223 = load i64, i64* %56, align 8, !dbg !857, !tbaa !551
  store i64 %223, i64* %53, align 8, !dbg !860, !tbaa !551
  %224 = load i64, i64* %57, align 8, !dbg !861, !tbaa !551
  store i64 %224, i64* %54, align 8, !dbg !862, !tbaa !551
  %225 = load i64, i64* %58, align 8, !dbg !863, !tbaa !551
  store i64 %225, i64* %55, align 8, !dbg !864, !tbaa !551
  call void @llvm.dbg.value(metadata i64 8, metadata !700, metadata !DIExpression()), !dbg !856
  %226 = load i64, i64* %59, align 8, !dbg !857, !tbaa !551
  store i64 %226, i64* %56, align 8, !dbg !860, !tbaa !551
  %227 = load i64, i64* %60, align 8, !dbg !861, !tbaa !551
  store i64 %227, i64* %57, align 8, !dbg !862, !tbaa !551
  %228 = load i64, i64* %61, align 8, !dbg !863, !tbaa !551
  store i64 %228, i64* %58, align 8, !dbg !864, !tbaa !551
  call void @llvm.dbg.value(metadata i64 9, metadata !700, metadata !DIExpression()), !dbg !856
  %229 = load i64, i64* %62, align 8, !dbg !857, !tbaa !551
  store i64 %229, i64* %59, align 8, !dbg !860, !tbaa !551
  %230 = load i64, i64* %63, align 8, !dbg !861, !tbaa !551
  store i64 %230, i64* %60, align 8, !dbg !862, !tbaa !551
  %231 = load i64, i64* %64, align 8, !dbg !863, !tbaa !551
  store i64 %231, i64* %61, align 8, !dbg !864, !tbaa !551
  call void @llvm.dbg.value(metadata i64 10, metadata !700, metadata !DIExpression()), !dbg !856
  %232 = load i64, i64* %65, align 8, !dbg !857, !tbaa !551
  store i64 %232, i64* %62, align 8, !dbg !860, !tbaa !551
  %233 = load i64, i64* %66, align 8, !dbg !861, !tbaa !551
  store i64 %233, i64* %63, align 8, !dbg !862, !tbaa !551
  %234 = load i64, i64* %67, align 8, !dbg !863, !tbaa !551
  store i64 %234, i64* %64, align 8, !dbg !864, !tbaa !551
  call void @llvm.dbg.value(metadata i64 11, metadata !700, metadata !DIExpression()), !dbg !856
  %235 = load i64, i64* %68, align 8, !dbg !857, !tbaa !551
  store i64 %235, i64* %65, align 8, !dbg !860, !tbaa !551
  %236 = load i64, i64* %69, align 8, !dbg !861, !tbaa !551
  store i64 %236, i64* %66, align 8, !dbg !862, !tbaa !551
  %237 = load i64, i64* %70, align 8, !dbg !863, !tbaa !551
  store i64 %237, i64* %67, align 8, !dbg !864, !tbaa !551
  call void @llvm.dbg.value(metadata i64 12, metadata !700, metadata !DIExpression()), !dbg !856
  %238 = load i64, i64* %71, align 8, !dbg !857, !tbaa !551
  store i64 %238, i64* %68, align 8, !dbg !860, !tbaa !551
  %239 = load i64, i64* %72, align 8, !dbg !861, !tbaa !551
  store i64 %239, i64* %69, align 8, !dbg !862, !tbaa !551
  %240 = load i64, i64* %73, align 8, !dbg !863, !tbaa !551
  store i64 %240, i64* %70, align 8, !dbg !864, !tbaa !551
  call void @llvm.dbg.value(metadata i64 13, metadata !700, metadata !DIExpression()), !dbg !856
  %241 = load i64, i64* %74, align 8, !dbg !857, !tbaa !551
  store i64 %241, i64* %71, align 8, !dbg !860, !tbaa !551
  %242 = load i64, i64* %75, align 8, !dbg !861, !tbaa !551
  store i64 %242, i64* %72, align 8, !dbg !862, !tbaa !551
  %243 = load i64, i64* %76, align 8, !dbg !863, !tbaa !551
  store i64 %243, i64* %73, align 8, !dbg !864, !tbaa !551
  call void @llvm.dbg.value(metadata i64 14, metadata !700, metadata !DIExpression()), !dbg !856
  %244 = load i64, i64* %77, align 8, !dbg !857, !tbaa !551
  store i64 %244, i64* %74, align 8, !dbg !860, !tbaa !551
  %245 = load i64, i64* %78, align 8, !dbg !861, !tbaa !551
  store i64 %245, i64* %75, align 8, !dbg !862, !tbaa !551
  %246 = load i64, i64* %79, align 8, !dbg !863, !tbaa !551
  store i64 %246, i64* %76, align 8, !dbg !864, !tbaa !551
  call void @llvm.dbg.value(metadata i64 15, metadata !700, metadata !DIExpression()), !dbg !856
  %247 = load i64, i64* %80, align 8, !dbg !857, !tbaa !551
  store i64 %247, i64* %77, align 8, !dbg !860, !tbaa !551
  %248 = load i64, i64* %81, align 8, !dbg !861, !tbaa !551
  store i64 %248, i64* %78, align 8, !dbg !862, !tbaa !551
  %249 = load i64, i64* %82, align 8, !dbg !863, !tbaa !551
  store i64 %249, i64* %79, align 8, !dbg !864, !tbaa !551
  call void @llvm.dbg.value(metadata i64 16, metadata !700, metadata !DIExpression()), !dbg !856
  store i64 1, i64* %80, align 8, !dbg !865, !tbaa !551
  store i64 0, i64* %81, align 8, !dbg !866, !tbaa !551
  store i64 0, i64* %82, align 8, !dbg !867, !tbaa !551
  %250 = icmp eq i64 %204, %206, !dbg !796
  br i1 %250, label %198, label %251, !dbg !797, !llvm.loop !868

251:                                              ; preds = %198, %202, %129, %138
  %252 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !870
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %252, i8* nonnull align 8 dereferenceable(416) %7, i64 416, i1 false), !dbg !870, !tbaa.struct !871
  br label %253, !dbg !872

253:                                              ; preds = %251, %136, %125
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #10, !dbg !873
  ret void, !dbg !873
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !874 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !878, metadata !DIExpression()), !dbg !879
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #9, !dbg !880
  ret void, !dbg !881
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !882 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !884, metadata !DIExpression()), !dbg !885
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #9, !dbg !886
  ret void, !dbg !887
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !888 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !893, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !894, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !899
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !899
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !899
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !901
  %4 = icmp eq i8* %3, null, !dbg !902
  br i1 %4, label %7, label %5, !dbg !903

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !904
  store i8 0, i8* %6, align 1, !dbg !905, !tbaa !653
  br label %7, !dbg !906

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !907
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !908
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !908
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !910
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !915
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !915
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !917
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !918
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !918
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !920
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !925
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !925
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !927
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !928
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !928
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !930
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !931
  br i1 %4, label %14, label %15, !dbg !933

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !934
  br label %21, !dbg !935

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !936
  %16 = ptrtoint i8* %13 to i64, !dbg !938
  %17 = ptrtoint i8* %3 to i64, !dbg !938
  %18 = add i64 %16, 1, !dbg !938
  %19 = sub i64 %18, %17, !dbg !939
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %19) #8, !dbg !940
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !941
  br label %21

21:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !942
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !943
  %23 = load i64, i64* %22, align 8, !dbg !943, !tbaa !717
  %24 = icmp eq i64 %23, 0, !dbg !945
  br i1 %24, label %39, label %25, !dbg !946

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !947
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !947
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !947
  %26 = call i8* @malloc(i64 1024) #8, !dbg !950
  %27 = icmp eq i8* %26, null, !dbg !951
  br i1 %27, label %28, label %30, !dbg !952

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !953
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !953
  %29 = call i8* @halide_string_to_string(i8* %26, i8* null, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !955
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !956
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !958
  br label %38, !dbg !959

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %26, i64 1023, !dbg !960
  store i8 0, i8* %31, align 1, !dbg !961, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !953
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !953
  %32 = call i8* @halide_string_to_string(i8* nonnull %26, i8* nonnull %31, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !955
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !956
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !962
  %33 = ptrtoint i8* %32 to i64, !dbg !964
  %34 = ptrtoint i8* %26 to i64, !dbg !964
  %35 = add i64 %33, 1, !dbg !964
  %36 = sub i64 %35, %34, !dbg !965
  %37 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %26, i64 %36) #8, !dbg !966
  call void @halide_print(i8* %0, i8* nonnull %26) #8, !dbg !967
  br label %38

38:                                               ; preds = %30, %28
  call void @free(i8* %26) #8, !dbg !968
  br label %123, !dbg !969

39:                                               ; preds = %21
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !970, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !975, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 0, metadata !978, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i32 0, metadata !979, metadata !DIExpression()), !dbg !983
  %40 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !984
  %41 = load i32, i32* %40, align 4, !dbg !984, !tbaa !752
  %42 = icmp sgt i32 %41, 0, !dbg !986
  br i1 %42, label %46, label %43, !dbg !987

43:                                               ; preds = %39
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !988
  %44 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !990
  %45 = load i8, i8* %44, align 1, !dbg !990, !tbaa !733
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !991, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 0, metadata !994, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 0, metadata !995, metadata !DIExpression()), !dbg !999
  br label %89, !dbg !1000

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %48 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %47, align 8, !tbaa !755
  %49 = zext i32 %41 to i64, !dbg !986
  br label %50, !dbg !987

50:                                               ; preds = %64, %46
  %51 = phi i64 [ 0, %46 ], [ %66, %64 ]
  %52 = phi i64 [ 0, %46 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !979, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %52, metadata !978, metadata !DIExpression()), !dbg !981
  %53 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %48, i64 %51, i32 2, !dbg !1001
  %54 = load i32, i32* %53, align 4, !dbg !1001, !tbaa !763
  %55 = icmp sgt i32 %54, 0, !dbg !1004
  br i1 %55, label %56, label %64, !dbg !1005

56:                                               ; preds = %50
  %57 = zext i32 %54 to i64, !dbg !1006
  %58 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %48, i64 %51, i32 1, !dbg !1008
  %59 = load i32, i32* %58, align 4, !dbg !1008, !tbaa !828
  %60 = add nsw i32 %59, -1, !dbg !1009
  %61 = sext i32 %60 to i64, !dbg !1010
  %62 = mul nsw i64 %61, %57, !dbg !1011
  %63 = add nsw i64 %62, %52, !dbg !1012
  call void @llvm.dbg.value(metadata i64 %63, metadata !978, metadata !DIExpression()), !dbg !981
  br label %64, !dbg !1013

64:                                               ; preds = %56, %50
  %65 = phi i64 [ %63, %56 ], [ %52, %50 ], !dbg !981
  call void @llvm.dbg.value(metadata i64 %65, metadata !978, metadata !DIExpression()), !dbg !981
  %66 = add nuw nsw i64 %51, 1, !dbg !1014
  call void @llvm.dbg.value(metadata i64 %66, metadata !979, metadata !DIExpression()), !dbg !983
  %67 = icmp eq i64 %66, %49, !dbg !986
  br i1 %67, label %68, label %50, !dbg !987, !llvm.loop !1015

68:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 %65, metadata !978, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !981
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !988
  %69 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !990
  %70 = load i8, i8* %69, align 1, !dbg !990, !tbaa !733
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !991, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 0, metadata !994, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 0, metadata !995, metadata !DIExpression()), !dbg !999
  br label %71, !dbg !1000

71:                                               ; preds = %85, %68
  %72 = phi i64 [ 0, %68 ], [ %87, %85 ]
  %73 = phi i64 [ 0, %68 ], [ %86, %85 ]
  call void @llvm.dbg.value(metadata i64 %72, metadata !995, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i64 %73, metadata !994, metadata !DIExpression()), !dbg !997
  %74 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %48, i64 %72, i32 2, !dbg !1017
  %75 = load i32, i32* %74, align 4, !dbg !1017, !tbaa !763
  %76 = icmp slt i32 %75, 0, !dbg !1021
  br i1 %76, label %77, label %85, !dbg !1022

77:                                               ; preds = %71
  %78 = sext i32 %75 to i64, !dbg !1023
  %79 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %48, i64 %72, i32 1, !dbg !1025
  %80 = load i32, i32* %79, align 4, !dbg !1025, !tbaa !828
  %81 = add nsw i32 %80, -1, !dbg !1026
  %82 = sext i32 %81 to i64, !dbg !1027
  %83 = mul nsw i64 %82, %78, !dbg !1028
  %84 = add nsw i64 %83, %73, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %84, metadata !994, metadata !DIExpression()), !dbg !997
  br label %85, !dbg !1030

85:                                               ; preds = %77, %71
  %86 = phi i64 [ %84, %77 ], [ %73, %71 ], !dbg !997
  call void @llvm.dbg.value(metadata i64 %86, metadata !994, metadata !DIExpression()), !dbg !997
  %87 = add nuw nsw i64 %72, 1, !dbg !1031
  call void @llvm.dbg.value(metadata i64 %87, metadata !995, metadata !DIExpression()), !dbg !999
  %88 = icmp eq i64 %87, %49, !dbg !1032
  br i1 %88, label %89, label %71, !dbg !1000, !llvm.loop !1033

89:                                               ; preds = %85, %43
  %90 = phi i8 [ %45, %43 ], [ %70, %85 ]
  %91 = phi i64 [ 0, %43 ], [ %65, %85 ]
  %92 = phi i64 [ 0, %43 ], [ %86, %85 ], !dbg !997
  %93 = zext i8 %90 to i64, !dbg !990
  %94 = add nuw nsw i64 %93, 7, !dbg !1035
  %95 = lshr i64 %94, 3, !dbg !1036
  %96 = add nsw i64 %91, 1, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %96, metadata !978, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1038
  %97 = sub i64 %96, %92, !dbg !1040
  %98 = mul i64 %97, %95, !dbg !1040
  call void @llvm.dbg.value(metadata i64 %98, metadata !895, metadata !DIExpression()), !dbg !898
  %99 = icmp eq i64 %98, 0, !dbg !1041
  br i1 %99, label %100, label %101, !dbg !1044

100:                                              ; preds = %89
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1045
  call void @abort() #8, !dbg !1045
  br label %101, !dbg !1045

101:                                              ; preds = %100, %89
  %102 = call i8* @halide_malloc(i8* %0, i64 %98) #8, !dbg !1047
  call void @llvm.dbg.value(metadata i8* %102, metadata !896, metadata !DIExpression()), !dbg !898
  %103 = icmp eq i8* %102, null, !dbg !1048
  br i1 %103, label %104, label %118, !dbg !1050

104:                                              ; preds = %101
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !1057
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()) #10, !dbg !1057
  call void @llvm.dbg.value(metadata i8* null, metadata !1055, metadata !DIExpression()) #10, !dbg !1057
  %105 = call i8* @malloc(i64 1024) #8, !dbg !1060
  %106 = icmp eq i8* %105, null, !dbg !1065
  br i1 %106, label %107, label %109, !dbg !1067

107:                                              ; preds = %104
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !1072
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !1072
  %108 = call i8* @halide_string_to_string(i8* %105, i8* null, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1074
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !1080
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1082
  br label %117, !dbg !1086

109:                                              ; preds = %104
  %110 = getelementptr inbounds i8, i8* %105, i64 1023, !dbg !1087
  store i8 0, i8* %110, align 1, !dbg !1089, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !1072
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !1072
  %111 = call i8* @halide_string_to_string(i8* nonnull %105, i8* nonnull %110, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1074
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !1080
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1090, metadata !DIExpression()) #10, !dbg !1093
  %112 = ptrtoint i8* %111 to i64, !dbg !1096
  %113 = ptrtoint i8* %105 to i64, !dbg !1096
  %114 = add i64 %112, 1, !dbg !1096
  %115 = sub i64 %114, %113, !dbg !1097
  %116 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %105, i64 %115) #8, !dbg !1098
  call void @halide_error(i8* %0, i8* nonnull %105) #8, !dbg !1099
  br label %117

117:                                              ; preds = %109, %107
  call void @free(i8* %105) #8, !dbg !1102
  br label %123, !dbg !1105

118:                                              ; preds = %101
  %119 = ptrtoint i8* %102 to i64, !dbg !1106
  %120 = call i32 @halide_hexagon_dma_device_wrap_native(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %119) #9, !dbg !1107
  call void @llvm.dbg.value(metadata i32 %120, metadata !897, metadata !DIExpression()), !dbg !898
  %121 = icmp eq i32 %120, 0, !dbg !1108
  br i1 %121, label %123, label %122, !dbg !1110

122:                                              ; preds = %118
  call void @halide_free(i8* %0, i8* nonnull %102) #8, !dbg !1111
  br label %123, !dbg !1113

123:                                              ; preds = %117, %118, %122, %38
  %124 = phi i32 [ 0, %38 ], [ -11, %117 ], [ -16, %122 ], [ 0, %118 ], !dbg !898
  ret i32 %124, !dbg !1114
}

declare !dbg !1115 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !1118 dso_local void @abort() local_unnamed_addr #3

declare !dbg !1119 dso_local i8* @halide_malloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_wrap_native(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #4 !dbg !1122 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1124, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1125, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i64 %2, metadata !1126, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !1129
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !1129
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !1129
  %4 = tail call i8* @malloc(i64 1024) #8, !dbg !1131
  %5 = icmp eq i8* %4, null, !dbg !1132
  br i1 %5, label %8, label %6, !dbg !1133

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i64 1023, !dbg !1134
  store i8 0, i8* %7, align 1, !dbg !1135, !tbaa !653
  br label %8, !dbg !1136

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ], !dbg !1137
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1138
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.49, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1138
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.49, i64 0, i64 0)) #8, !dbg !1140
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1141
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1141
  %11 = tail call i8* @halide_pointer_to_string(i8* %10, i8* %9, i8* %0) #8, !dbg !1143
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1144
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1144
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %9, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !1146
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !1147
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !1147
  %13 = tail call i8* @halide_buffer_to_string(i8* %12, i8* %9, %struct.halide_buffer_t* nonnull %1) #8, !dbg !1149
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1150
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1150
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %9, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0)) #8, !dbg !1152
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1153, metadata !DIExpression()) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %2, metadata !1156, metadata !DIExpression()) #10, !dbg !1157
  %15 = tail call i8* @halide_uint64_to_string(i8* %14, i8* %9, i64 %2, i32 1) #8, !dbg !1159
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1160
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1160
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %9, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1162
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1163
  br i1 %5, label %17, label %18, !dbg !1165

17:                                               ; preds = %8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1166
  br label %24, !dbg !1167

18:                                               ; preds = %8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !1168
  %19 = ptrtoint i8* %16 to i64, !dbg !1170
  %20 = ptrtoint i8* %4 to i64, !dbg !1170
  %21 = add i64 %19, 1, !dbg !1170
  %22 = sub i64 %21, %20, !dbg !1171
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %22) #8, !dbg !1172
  tail call void @halide_print(i8* %0, i8* nonnull %4) #8, !dbg !1173
  br label %24

24:                                               ; preds = %17, %18
  call void @free(i8* %4) #8, !dbg !1174
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1175
  %26 = load i64, i64* %25, align 8, !dbg !1175, !tbaa !717
  %27 = icmp eq i64 %26, 0, !dbg !1175
  br i1 %27, label %45, label %28, !dbg !1178

28:                                               ; preds = %24
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !1179
  call void @abort() #8, !dbg !1179
  %29 = load i64, i64* %25, align 8, !dbg !1181, !tbaa !717
  %30 = icmp eq i64 %29, 0, !dbg !1183
  br i1 %30, label %45, label %31, !dbg !1184

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()) #10, !dbg !1185
  call void @llvm.dbg.value(metadata i8* null, metadata !1055, metadata !DIExpression()) #10, !dbg !1185
  %32 = call i8* @malloc(i64 1024) #8, !dbg !1188
  %33 = icmp eq i8* %32, null, !dbg !1189
  br i1 %33, label %34, label %36, !dbg !1190

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !1191
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.52, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !1191
  %35 = call i8* @halide_string_to_string(i8* %32, i8* null, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.52, i64 0, i64 0)) #8, !dbg !1193
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !1194
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1196
  br label %44, !dbg !1197

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i64 1023, !dbg !1198
  store i8 0, i8* %37, align 1, !dbg !1199, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !1191
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.52, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !1191
  %38 = call i8* @halide_string_to_string(i8* nonnull %32, i8* nonnull %37, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.52, i64 0, i64 0)) #8, !dbg !1193
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !1194
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1090, metadata !DIExpression()) #10, !dbg !1200
  %39 = ptrtoint i8* %38 to i64, !dbg !1202
  %40 = ptrtoint i8* %32 to i64, !dbg !1202
  %41 = add i64 %39, 1, !dbg !1202
  %42 = sub i64 %41, %40, !dbg !1203
  %43 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %42) #8, !dbg !1204
  call void @halide_error(i8* %0, i8* nonnull %32) #8, !dbg !1205
  br label %44

44:                                               ; preds = %36, %34
  call void @free(i8* %32) #8, !dbg !1206
  br label %85, !dbg !1207

45:                                               ; preds = %24, %28
  %46 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !1208
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, %struct.halide_device_interface_t** %46, align 8, !dbg !1209, !tbaa !1210
  %47 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, i64 0, i32 15), align 8, !dbg !1211, !tbaa !1212
  %48 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %47, i64 0, i32 0, !dbg !1214
  %49 = load void ()*, void ()** %48, align 8, !dbg !1214, !tbaa !1215
  call void %49() #8, !dbg !1217
  %50 = call i8* @malloc(i64 48) #8, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %50, metadata !1223, metadata !DIExpression()) #10, !dbg !1225
  %51 = bitcast i8* %50 to i8**, !dbg !1226
  %52 = getelementptr inbounds i8, i8* %50, i64 8, !dbg !1227
  %53 = bitcast i8* %52 to i16*, !dbg !1227
  store i16 0, i16* %53, align 8, !dbg !1228, !tbaa !1229
  %54 = getelementptr inbounds i8, i8* %50, i64 10, !dbg !1233
  %55 = bitcast i8* %54 to i16*, !dbg !1233
  store i16 0, i16* %55, align 2, !dbg !1234, !tbaa !1235
  %56 = getelementptr inbounds i8, i8* %50, i64 12, !dbg !1236
  %57 = bitcast i8* %56 to i16*, !dbg !1236
  store i16 0, i16* %57, align 4, !dbg !1237, !tbaa !1238
  %58 = getelementptr inbounds i8, i8* %50, i64 14, !dbg !1239
  %59 = bitcast i8* %58 to i16*, !dbg !1239
  store i16 0, i16* %59, align 2, !dbg !1240, !tbaa !1241
  %60 = getelementptr inbounds i8, i8* %50, i64 16, !dbg !1242
  %61 = bitcast i8* %60 to i8**, !dbg !1242
  %62 = getelementptr inbounds i8, i8* %50, i64 24, !dbg !1243
  %63 = bitcast i8* %62 to i32*, !dbg !1243
  %64 = getelementptr inbounds i8, i8* %50, i64 28, !dbg !1244
  %65 = bitcast i8* %64 to i32*, !dbg !1244
  %66 = getelementptr inbounds i8, i8* %50, i64 32, !dbg !1245
  %67 = bitcast i8* %66 to i32*, !dbg !1245
  %68 = getelementptr inbounds i8, i8* %50, i64 36, !dbg !1246
  store i8 0, i8* %68, align 4, !dbg !1247, !tbaa !1248
  %69 = getelementptr inbounds i8, i8* %50, i64 40, !dbg !1249
  %70 = bitcast i8* %69 to i32*, !dbg !1249
  store i32 0, i32* %70, align 8, !dbg !1250, !tbaa !1251
  %71 = getelementptr inbounds i8, i8* %50, i64 37, !dbg !1252
  store i8 0, i8* %71, align 1, !dbg !1253, !tbaa !1254
  call void @llvm.dbg.value(metadata i8* %50, metadata !1127, metadata !DIExpression()), !dbg !1128
  %72 = inttoptr i64 %2 to i8*, !dbg !1255
  store i8* %72, i8** %51, align 8, !dbg !1256, !tbaa !1257
  store i8* null, i8** %61, align 8, !dbg !1258, !tbaa !1259
  %73 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6, !dbg !1260
  %74 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %73, align 8, !dbg !1260, !tbaa !755
  %75 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %74, i64 0, i32 1, !dbg !1261
  %76 = load i32, i32* %75, align 4, !dbg !1261, !tbaa !828
  %77 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %74, i64 0, i32 2, !dbg !1262
  %78 = load i32, i32* %77, align 4, !dbg !1262, !tbaa !763
  %79 = mul nsw i32 %78, %76, !dbg !1263
  store i32 %79, i32* %63, align 8, !dbg !1264, !tbaa !1265
  %80 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %74, i64 1, i32 1, !dbg !1266
  %81 = load i32, i32* %80, align 4, !dbg !1266, !tbaa !828
  store i32 %81, i32* %65, align 4, !dbg !1267, !tbaa !1268
  %82 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %74, i64 1, i32 2, !dbg !1269
  %83 = load i32, i32* %82, align 4, !dbg !1269, !tbaa !763
  store i32 %83, i32* %67, align 8, !dbg !1270, !tbaa !1271
  %84 = ptrtoint i8* %50 to i64, !dbg !1272
  store i64 %84, i64* %25, align 8, !dbg !1273, !tbaa !717
  br label %85

85:                                               ; preds = %45, %44
  %86 = phi i32 [ -32, %44 ], [ 0, %45 ], !dbg !1128
  ret i32 %86, !dbg !1274
}

declare !dbg !1275 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_free(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !1278 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1280, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1281, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !1285
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !1285
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !1285
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !1287
  %4 = icmp eq i8* %3, null, !dbg !1288
  br i1 %4, label %7, label %5, !dbg !1289

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !1290
  store i8 0, i8* %6, align 1, !dbg !1291, !tbaa !653
  br label %7, !dbg !1292

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1293
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1294
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1294
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1296
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1297
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1297
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !1299
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1300
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1300
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1302
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !1303
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !1303
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !1305
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1306
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1306
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1308
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1309
  br i1 %4, label %14, label %15, !dbg !1311

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1312
  br label %21, !dbg !1313

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !1314
  %16 = ptrtoint i8* %13 to i64, !dbg !1316
  %17 = ptrtoint i8* %3 to i64, !dbg !1316
  %18 = add i64 %16, 1, !dbg !1316
  %19 = sub i64 %18, %17, !dbg !1317
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %19) #8, !dbg !1318
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !1319
  br label %21

21:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !1320
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1321
  %23 = load i64, i64* %22, align 8, !dbg !1321, !tbaa !717
  %24 = inttoptr i64 %23 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*, !dbg !1322
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %24, metadata !1282, metadata !DIExpression()), !dbg !1284
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %24, i64 0, i32 0, !dbg !1323
  %26 = load i8*, i8** %25, align 8, !dbg !1323, !tbaa !1257
  call void @llvm.dbg.value(metadata i8* %26, metadata !1283, metadata !DIExpression()), !dbg !1284
  %27 = call i32 @halide_hexagon_dma_device_detach_native(i8* %0, %struct.halide_buffer_t* nonnull %1) #9, !dbg !1324
  call void @halide_free(i8* %0, i8* %26) #8, !dbg !1325
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1326, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i1 false, metadata !1329, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1330
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1332, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i32 2, metadata !1335, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i1 false, metadata !1336, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1337
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !1339
  %29 = load i64, i64* %28, align 8, !dbg !1342, !tbaa !1343
  %30 = and i64 %29, -3, !dbg !1342
  store i64 %30, i64* %28, align 8, !dbg !1342, !tbaa !1343
  ret i32 0, !dbg !1344
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_detach_native(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !1345 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1347, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1348, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !1351
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !1351
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !1351
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !1353
  %4 = icmp eq i8* %3, null, !dbg !1354
  br i1 %4, label %7, label %5, !dbg !1355

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !1356
  store i8 0, i8* %6, align 1, !dbg !1357, !tbaa !653
  br label %7, !dbg !1358

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1359
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1360
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.54, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1360
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.54, i64 0, i64 0)) #8, !dbg !1362
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1363
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1363
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !1365
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1366
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1366
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !1368
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !1369
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !1369
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !1371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1372
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1372
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1374
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1375
  br i1 %4, label %14, label %15, !dbg !1377

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1378
  br label %21, !dbg !1379

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !1380
  %16 = ptrtoint i8* %13 to i64, !dbg !1382
  %17 = ptrtoint i8* %3 to i64, !dbg !1382
  %18 = add i64 %16, 1, !dbg !1382
  %19 = sub i64 %18, %17, !dbg !1383
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %19) #8, !dbg !1384
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !1385
  br label %21

21:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !1386
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1387
  %23 = load i64, i64* %22, align 8, !dbg !1387, !tbaa !717
  %24 = icmp eq i64 %23, 0, !dbg !1389
  br i1 %24, label %25, label %39, !dbg !1390

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !1391
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()) #10, !dbg !1391
  call void @llvm.dbg.value(metadata i8* null, metadata !1055, metadata !DIExpression()) #10, !dbg !1391
  %26 = call i8* @malloc(i64 1024) #8, !dbg !1394
  %27 = icmp eq i8* %26, null, !dbg !1395
  br i1 %27, label %28, label %30, !dbg !1396

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !1397
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.55, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !1397
  %29 = call i8* @halide_string_to_string(i8* %26, i8* null, i8* nonnull getelementptr inbounds ([74 x i8], [74 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !1399
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !1400
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1402
  br label %38, !dbg !1403

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %26, i64 1023, !dbg !1404
  store i8 0, i8* %31, align 1, !dbg !1405, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !1397
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.55, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !1397
  %32 = call i8* @halide_string_to_string(i8* nonnull %26, i8* nonnull %31, i8* nonnull getelementptr inbounds ([74 x i8], [74 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !1399
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !1400
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1090, metadata !DIExpression()) #10, !dbg !1406
  %33 = ptrtoint i8* %32 to i64, !dbg !1408
  %34 = ptrtoint i8* %26 to i64, !dbg !1408
  %35 = add i64 %33, 1, !dbg !1408
  %36 = sub i64 %35, %34, !dbg !1409
  %37 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %26, i64 %36) #8, !dbg !1410
  call void @halide_error(i8* %0, i8* nonnull %26) #8, !dbg !1411
  br label %38

38:                                               ; preds = %30, %28
  call void @free(i8* %26) #8, !dbg !1412
  br label %53, !dbg !1413

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !1414
  %41 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %40, align 8, !dbg !1414, !tbaa !1210
  %42 = icmp eq %struct.halide_device_interface_t* %41, @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, !dbg !1414
  br i1 %42, label %45, label %43, !dbg !1417

43:                                               ; preds = %39
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.56, i64 0, i64 0)) #8, !dbg !1418
  call void @abort() #8, !dbg !1418
  %44 = load i64, i64* %22, align 8, !dbg !1420, !tbaa !717
  br label %45, !dbg !1418

45:                                               ; preds = %39, %43
  %46 = phi i64 [ %23, %39 ], [ %44, %43 ], !dbg !1420
  %47 = inttoptr i64 %46 to i8*, !dbg !1421
  call void @llvm.dbg.value(metadata i8* %47, metadata !1349, metadata !DIExpression()), !dbg !1350
  call void @free(i8* %47) #8, !dbg !1422
  %48 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %40, align 8, !dbg !1423, !tbaa !1210
  %49 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %48, i64 0, i32 15, !dbg !1424
  %50 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %49, align 8, !dbg !1424, !tbaa !1212
  %51 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %50, i64 0, i32 1, !dbg !1425
  %52 = load void ()*, void ()** %51, align 8, !dbg !1425, !tbaa !1426
  call void %52() #8, !dbg !1427
  store i64 0, i64* %22, align 8, !dbg !1428, !tbaa !717
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %40, align 8, !dbg !1429, !tbaa !1210
  br label %53

53:                                               ; preds = %45, %38
  %54 = phi i32 [ -33, %38 ], [ 0, %45 ], !dbg !1350
  ret i32 %54, !dbg !1430
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_allocate_engine(i8* %0, i8** %1) local_unnamed_addr #4 !dbg !1431 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1436, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8** %1, metadata !1437, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !1439
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !1439
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !1439
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !1441
  %4 = icmp eq i8* %3, null, !dbg !1442
  br i1 %4, label %7, label %5, !dbg !1443

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !1444
  store i8 0, i8* %6, align 1, !dbg !1445, !tbaa !653
  br label %7, !dbg !1446

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1447
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1448
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1448
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !1450
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1451
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1451
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !1453
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1454
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1454
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1456
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1457
  br i1 %4, label %12, label %13, !dbg !1459

12:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1460
  br label %19, !dbg !1461

13:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !1462
  %14 = ptrtoint i8* %11 to i64, !dbg !1464
  %15 = ptrtoint i8* %3 to i64, !dbg !1464
  %16 = add i64 %14, 1, !dbg !1464
  %17 = sub i64 %16, %15, !dbg !1465
  %18 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %17) #8, !dbg !1466
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !1467
  br label %19

19:                                               ; preds = %13, %12
  tail call void @free(i8* %3) #8, !dbg !1468
  %20 = icmp eq i8** %1, null, !dbg !1469
  br i1 %20, label %21, label %22, !dbg !1472

21:                                               ; preds = %19
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !1473
  tail call void @abort() #8, !dbg !1473
  br label %22, !dbg !1473

22:                                               ; preds = %19, %21
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !1475
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !1475
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !1475
  %23 = tail call i8* @malloc(i64 1024) #8, !dbg !1477
  %24 = icmp eq i8* %23, null, !dbg !1478
  br i1 %24, label %25, label %27, !dbg !1479

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1480
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1480
  %26 = tail call i8* @halide_string_to_string(i8* %23, i8* null, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !1482
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1483
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1485
  br label %35, !dbg !1486

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, i8* %23, i64 1023, !dbg !1487
  store i8 0, i8* %28, align 1, !dbg !1488, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1480
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1480
  %29 = tail call i8* @halide_string_to_string(i8* nonnull %23, i8* nonnull %28, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !1482
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1483
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !1489
  %30 = ptrtoint i8* %29 to i64, !dbg !1491
  %31 = ptrtoint i8* %23 to i64, !dbg !1491
  %32 = add i64 %30, 1, !dbg !1491
  %33 = sub i64 %32, %31, !dbg !1492
  %34 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %23, i64 %33) #8, !dbg !1493
  tail call void @halide_print(i8* %0, i8* nonnull %23) #8, !dbg !1494
  br label %35

35:                                               ; preds = %27, %25
  tail call void @free(i8* %23) #8, !dbg !1495
  %36 = tail call i8* @halide_hexagon_allocate_dma_resource(i8* %0) #8, !dbg !1496
  store i8* %36, i8** %1, align 8, !dbg !1497, !tbaa !1498
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !1499
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !1499
  %37 = tail call i8* @malloc(i64 1024) #8, !dbg !1501
  %38 = icmp eq i8* %37, null, !dbg !1502
  br i1 %38, label %41, label %39, !dbg !1503

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, i8* %37, i64 1023, !dbg !1504
  store i8 0, i8* %40, align 1, !dbg !1505, !tbaa !653
  br label %41, !dbg !1506

41:                                               ; preds = %35, %39
  %42 = phi i8* [ %40, %39 ], [ null, %35 ], !dbg !1507
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1508
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1508
  %43 = tail call i8* @halide_string_to_string(i8* %37, i8* %42, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !1510
  %44 = bitcast i8** %1 to i8*, !dbg !1511
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1512
  call void @llvm.dbg.value(metadata i8* %44, metadata !914, metadata !DIExpression()) #10, !dbg !1512
  %45 = tail call i8* @halide_pointer_to_string(i8* %43, i8* %42, i8* nonnull %44) #8, !dbg !1514
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1515
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1515
  %46 = tail call i8* @halide_string_to_string(i8* %45, i8* %42, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !1517
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1518
  br i1 %38, label %47, label %48, !dbg !1520

47:                                               ; preds = %41
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1521
  br label %54, !dbg !1522

48:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !1523
  %49 = ptrtoint i8* %46 to i64, !dbg !1525
  %50 = ptrtoint i8* %37 to i64, !dbg !1525
  %51 = add i64 %49, 1, !dbg !1525
  %52 = sub i64 %51, %50, !dbg !1526
  %53 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %37, i64 %52) #8, !dbg !1527
  tail call void @halide_print(i8* %0, i8* nonnull %37) #8, !dbg !1528
  br label %54

54:                                               ; preds = %48, %47
  tail call void @free(i8* %37) #8, !dbg !1529
  %55 = load i8*, i8** %1, align 8, !dbg !1530, !tbaa !1498
  %56 = icmp eq i8* %55, null, !dbg !1530
  br i1 %56, label %57, label %71, !dbg !1532

57:                                               ; preds = %54
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !1533
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !1533
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !1533
  %58 = tail call i8* @malloc(i64 1024) #8, !dbg !1536
  %59 = icmp eq i8* %58, null, !dbg !1537
  br i1 %59, label %60, label %62, !dbg !1538

60:                                               ; preds = %57
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1539
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1539
  %61 = tail call i8* @halide_string_to_string(i8* %58, i8* null, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !1541
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1542
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1544
  br label %70, !dbg !1545

62:                                               ; preds = %57
  %63 = getelementptr inbounds i8, i8* %58, i64 1023, !dbg !1546
  store i8 0, i8* %63, align 1, !dbg !1547, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1539
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1539
  %64 = tail call i8* @halide_string_to_string(i8* nonnull %58, i8* nonnull %63, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !1541
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1542
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !1548
  %65 = ptrtoint i8* %64 to i64, !dbg !1550
  %66 = ptrtoint i8* %58 to i64, !dbg !1550
  %67 = add i64 %65, 1, !dbg !1550
  %68 = sub i64 %67, %66, !dbg !1551
  %69 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %58, i64 %68) #8, !dbg !1552
  tail call void @halide_print(i8* %0, i8* nonnull %58) #8, !dbg !1553
  br label %70

70:                                               ; preds = %62, %60
  tail call void @free(i8* %58) #8, !dbg !1554
  br label %71, !dbg !1555

71:                                               ; preds = %54, %70
  %72 = phi i32 [ -1, %70 ], [ 0, %54 ], !dbg !1438
  ret i32 %72, !dbg !1556
}

declare !dbg !1557 extern_weak dso_local i8* @halide_hexagon_allocate_dma_resource(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_deallocate_engine(i8* %0, i8* %1) local_unnamed_addr #4 !dbg !1561 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1565, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %1, metadata !1566, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !1569
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !1569
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !1569
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !1571
  %4 = icmp eq i8* %3, null, !dbg !1572
  br i1 %4, label %7, label %5, !dbg !1573

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !1574
  store i8 0, i8* %6, align 1, !dbg !1575, !tbaa !653
  br label %7, !dbg !1576

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1577
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1578
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1578
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !1580
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1581
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1581
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !1583
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1584
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1584
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !1586
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1587
  call void @llvm.dbg.value(metadata i8* %1, metadata !914, metadata !DIExpression()) #10, !dbg !1587
  %12 = tail call i8* @halide_pointer_to_string(i8* %11, i8* %8, i8* %1) #8, !dbg !1589
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1590
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1590
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1592
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1593
  br i1 %4, label %14, label %15, !dbg !1595

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1596
  br label %21, !dbg !1597

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !1598
  %16 = ptrtoint i8* %13 to i64, !dbg !1600
  %17 = ptrtoint i8* %3 to i64, !dbg !1600
  %18 = add i64 %16, 1, !dbg !1600
  %19 = sub i64 %18, %17, !dbg !1601
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %19) #8, !dbg !1602
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !1603
  br label %21

21:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !1604
  %22 = icmp eq i8* %1, null, !dbg !1605
  br i1 %22, label %23, label %24, !dbg !1608

23:                                               ; preds = %21
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1609
  call void @abort() #8, !dbg !1609
  br label %24, !dbg !1609

24:                                               ; preds = %21, %23
  call void @llvm.dbg.value(metadata i8* undef, metadata !1611, metadata !DIExpression()) #10, !dbg !1633
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1635, metadata !DIExpression()) #10, !dbg !1640
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE, metadata !1638, metadata !DIExpression()) #10, !dbg !1640
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE, metadata !1617, metadata !DIExpression()) #10, !dbg !1633
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #8, !dbg !1642
  %25 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 8, !dbg !1644, !tbaa !1498
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %25, metadata !1630, metadata !DIExpression()) #10, !dbg !1633
  %26 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %25, null, !dbg !1645
  br i1 %26, label %44, label %27, !dbg !1646

27:                                               ; preds = %24, %39
  %28 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ %41, %39 ], [ %25, %24 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %28, metadata !1630, metadata !DIExpression()) #10, !dbg !1633
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %28, metadata !1631, metadata !DIExpression()) #10, !dbg !1647
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %28, i64 0, i32 2, !dbg !1648
  %30 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %29, align 8, !dbg !1648, !tbaa !1649
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %30, metadata !1630, metadata !DIExpression()) #10, !dbg !1633
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %28, i64 0, i32 0, !dbg !1651
  %32 = load i8*, i8** %31, align 8, !dbg !1651, !tbaa !1653
  %33 = icmp eq i8* %32, null, !dbg !1654
  br i1 %33, label %36, label %34, !dbg !1655

34:                                               ; preds = %27
  %35 = call i32 @HAP_cache_unlock(i8* nonnull %32) #8, !dbg !1656
  br label %36, !dbg !1658

36:                                               ; preds = %34, %27
  %37 = bitcast %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %28 to i8*, !dbg !1659
  call void @free(i8* nonnull %37) #8, !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %30, metadata !1631, metadata !DIExpression()) #10, !dbg !1647
  %38 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %30, null, !dbg !1661
  br i1 %38, label %44, label %39, !dbg !1663

39:                                               ; preds = %36
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %30, i64 0, i32 2, !dbg !1664
  %41 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %40, align 8, !dbg !1664, !tbaa !1649
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %41, metadata !1630, metadata !DIExpression()) #10, !dbg !1633
  %42 = bitcast %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %30 to i8*, !dbg !1666
  call void @free(i8* nonnull %42) #8, !dbg !1667
  %43 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %41, null, !dbg !1645
  br i1 %43, label %44, label %27, !dbg !1646, !llvm.loop !1668

44:                                               ; preds = %36, %39, %24
  store %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* null, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 8, !dbg !1670, !tbaa !1498
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1671, metadata !DIExpression()) #10, !dbg !1674
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #8, !dbg !1676
  %45 = call i32 @halide_hexagon_free_dma_resource(i8* %0, i8* %1) #8, !dbg !1678
  call void @llvm.dbg.value(metadata i32 %45, metadata !1567, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !1679
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !1679
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !1679
  %46 = call i8* @malloc(i64 1024) #8, !dbg !1681
  %47 = icmp eq i8* %46, null, !dbg !1682
  br i1 %47, label %48, label %50, !dbg !1683

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1684
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1684
  %49 = call i8* @halide_string_to_string(i8* %46, i8* null, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1686
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1687
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1689
  br label %58, !dbg !1690

50:                                               ; preds = %44
  %51 = getelementptr inbounds i8, i8* %46, i64 1023, !dbg !1691
  store i8 0, i8* %51, align 1, !dbg !1692, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1684
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1684
  %52 = call i8* @halide_string_to_string(i8* nonnull %46, i8* nonnull %51, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1686
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1687
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !1693
  %53 = ptrtoint i8* %52 to i64, !dbg !1695
  %54 = ptrtoint i8* %46 to i64, !dbg !1695
  %55 = add i64 %53, 1, !dbg !1695
  %56 = sub i64 %55, %54, !dbg !1696
  %57 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %46, i64 %56) #8, !dbg !1697
  call void @halide_print(i8* %0, i8* nonnull %46) #8, !dbg !1698
  br label %58

58:                                               ; preds = %50, %48
  call void @free(i8* %46) #8, !dbg !1699
  %59 = icmp eq i32 %45, 0, !dbg !1700
  br i1 %59, label %74, label %60, !dbg !1702

60:                                               ; preds = %58
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !1703
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !1703
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !1703
  %61 = call i8* @malloc(i64 1024) #8, !dbg !1706
  %62 = icmp eq i8* %61, null, !dbg !1707
  br i1 %62, label %63, label %65, !dbg !1708

63:                                               ; preds = %60
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1709
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1709
  %64 = call i8* @halide_string_to_string(i8* %61, i8* null, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1711
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1712
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1714
  br label %73, !dbg !1715

65:                                               ; preds = %60
  %66 = getelementptr inbounds i8, i8* %61, i64 1023, !dbg !1716
  store i8 0, i8* %66, align 1, !dbg !1717, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1709
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1709
  %67 = call i8* @halide_string_to_string(i8* nonnull %61, i8* nonnull %66, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1711
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !1718
  %68 = ptrtoint i8* %67 to i64, !dbg !1720
  %69 = ptrtoint i8* %61 to i64, !dbg !1720
  %70 = add i64 %68, 1, !dbg !1720
  %71 = sub i64 %70, %69, !dbg !1721
  %72 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %61, i64 %71) #8, !dbg !1722
  call void @halide_print(i8* %0, i8* nonnull %61) #8, !dbg !1723
  br label %73

73:                                               ; preds = %65, %63
  call void @free(i8* %61) #8, !dbg !1724
  br label %74, !dbg !1725

74:                                               ; preds = %58, %73
  %75 = phi i32 [ -1, %73 ], [ 0, %58 ], !dbg !1568
  ret i32 %75, !dbg !1726
}

declare !dbg !1727 extern_weak dso_local i32 @halide_hexagon_free_dma_resource(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_prepare_for_copy_to_host(i8* %0, %struct.halide_buffer_t* %1, i8* %2, i1 zeroext %3, i32 %4) local_unnamed_addr #4 !dbg !1728 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1733, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1734, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8* %2, metadata !1735, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i1 %3, metadata !1736, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1739
  call void @llvm.dbg.value(metadata i32 %4, metadata !1737, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !1740
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !1740
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !1740
  %6 = tail call i8* @malloc(i64 1024) #8, !dbg !1742
  %7 = icmp eq i8* %6, null, !dbg !1743
  br i1 %7, label %10, label %8, !dbg !1744

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %6, i64 1023, !dbg !1745
  store i8 0, i8* %9, align 1, !dbg !1746, !tbaa !653
  br label %10, !dbg !1747

10:                                               ; preds = %5, %8
  %11 = phi i8* [ %9, %8 ], [ null, %5 ], !dbg !1748
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1749
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.19, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1749
  %12 = tail call i8* @halide_string_to_string(i8* %6, i8* %11, i8* nonnull getelementptr inbounds ([69 x i8], [69 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !1751
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1752
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1752
  %13 = tail call i8* @halide_pointer_to_string(i8* %12, i8* %11, i8* %0) #8, !dbg !1754
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1755
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1755
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %11, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1757
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !1758
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !1758
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %11, %struct.halide_buffer_t* nonnull %1) #8, !dbg !1760
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1761
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1761
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %11, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !1763
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1764
  call void @llvm.dbg.value(metadata i8* %2, metadata !914, metadata !DIExpression()) #10, !dbg !1764
  %17 = tail call i8* @halide_pointer_to_string(i8* %16, i8* %11, i8* %2) #8, !dbg !1766
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1767
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1767
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %11, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1769
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1770
  br i1 %7, label %19, label %20, !dbg !1772

19:                                               ; preds = %10
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1773
  br label %26, !dbg !1774

20:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !1775
  %21 = ptrtoint i8* %18 to i64, !dbg !1777
  %22 = ptrtoint i8* %6 to i64, !dbg !1777
  %23 = add i64 %21, 1, !dbg !1777
  %24 = sub i64 %23, %22, !dbg !1778
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %24) #8, !dbg !1779
  tail call void @halide_print(i8* %0, i8* nonnull %6) #8, !dbg !1780
  br label %26

26:                                               ; preds = %19, %20
  call void @free(i8* %6) #8, !dbg !1781
  %27 = call fastcc i32 @_ZN12_GLOBAL__N_129halide_hexagon_get_dma_formatEPv26halide_hexagon_image_fmt_t(i8* %0, i32 %4) #9, !dbg !1782
  call void @llvm.dbg.value(metadata i32 %27, metadata !1738, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8* %0, metadata !1783, metadata !DIExpression()) #10, !dbg !1794
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1788, metadata !DIExpression()) #10, !dbg !1794
  call void @llvm.dbg.value(metadata i8* %2, metadata !1789, metadata !DIExpression()) #10, !dbg !1794
  %28 = zext i1 %3 to i8
  call void @llvm.dbg.value(metadata i8 %28, metadata !1790, metadata !DIExpression()) #10, !dbg !1794
  call void @llvm.dbg.value(metadata i32 %27, metadata !1791, metadata !DIExpression()) #10, !dbg !1794
  call void @llvm.dbg.value(metadata i8 0, metadata !1792, metadata !DIExpression()) #10, !dbg !1794
  %29 = icmp eq i8* %2, null, !dbg !1796
  br i1 %29, label %30, label %31, !dbg !1799

30:                                               ; preds = %26
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.64, i64 0, i64 0)) #8, !dbg !1800
  call void @abort() #8, !dbg !1800
  br label %31, !dbg !1800

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1802
  %33 = load i64, i64* %32, align 8, !dbg !1802, !tbaa !717
  %34 = inttoptr i64 %33 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*, !dbg !1803
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %34, metadata !1793, metadata !DIExpression()) #10, !dbg !1794
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %34, i64 0, i32 5, !dbg !1804
  store i8* %2, i8** %35, align 8, !dbg !1805, !tbaa !1259
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %34, i64 0, i32 9, !dbg !1806
  store i8 %28, i8* %36, align 4, !dbg !1807, !tbaa !1248
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %34, i64 0, i32 11, !dbg !1808
  store i32 %27, i32* %37, align 8, !dbg !1809, !tbaa !1251
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %34, i64 0, i32 10, !dbg !1810
  store i8 0, i8* %38, align 1, !dbg !1811, !tbaa !1254
  switch i32 %27, label %43 [
    i32 3, label %39
    i32 6, label %39
    i32 9, label %39
    i32 12, label %39
  ], !dbg !1812

39:                                               ; preds = %31, %31, %31, %31
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %34, i64 0, i32 7, !dbg !1814
  %41 = load i32, i32* %40, align 4, !dbg !1814, !tbaa !1268
  %42 = shl nsw i32 %41, 1, !dbg !1816
  store i32 %42, i32* %40, align 4, !dbg !1817, !tbaa !1268
  br label %43, !dbg !1818

43:                                               ; preds = %31, %39
  ret i32 0, !dbg !1819
}

; Function Attrs: inlinehint nounwind
define internal fastcc i32 @_ZN12_GLOBAL__N_129halide_hexagon_get_dma_formatEPv26halide_hexagon_image_fmt_t(i8* %0, i32 %1) unnamed_addr #6 !dbg !1820 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1825, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 %1, metadata !1826, metadata !DIExpression()), !dbg !1827
  %3 = icmp ult i32 %1, 13, !dbg !1828
  br i1 %3, label %23, label %4, !dbg !1828

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !1829
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()) #10, !dbg !1829
  call void @llvm.dbg.value(metadata i8* null, metadata !1055, metadata !DIExpression()) #10, !dbg !1829
  %5 = tail call i8* @malloc(i64 1024) #8, !dbg !1832
  %6 = icmp eq i8* %5, null, !dbg !1833
  br i1 %6, label %9, label %7, !dbg !1834

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !1835
  store i8 0, i8* %8, align 1, !dbg !1836, !tbaa !653
  br label %9, !dbg !1837

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1838
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !1839
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !1839
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i64 0, i64 0)) #8, !dbg !1841
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1842, metadata !DIExpression()) #10, !dbg !1846
  call void @llvm.dbg.value(metadata i32 %1, metadata !1845, metadata !DIExpression()) #10, !dbg !1846
  %12 = sext i32 %1 to i64, !dbg !1848
  %13 = tail call i8* @halide_int64_to_string(i8* %11, i8* %10, i64 %12, i32 1) #8, !dbg !1849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !1850
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !1850
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !1852
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !1853
  br i1 %6, label %15, label %16, !dbg !1855

15:                                               ; preds = %9
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1856
  br label %22, !dbg !1857

16:                                               ; preds = %9
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1090, metadata !DIExpression()) #10, !dbg !1858
  %17 = ptrtoint i8* %14 to i64, !dbg !1860
  %18 = ptrtoint i8* %5 to i64, !dbg !1860
  %19 = add i64 %17, 1, !dbg !1860
  %20 = sub i64 %19, %18, !dbg !1861
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %20) #8, !dbg !1862
  tail call void @halide_error(i8* %0, i8* nonnull %5) #8, !dbg !1863
  br label %22

22:                                               ; preds = %16, %15
  tail call void @free(i8* %5) #8, !dbg !1864
  br label %23, !dbg !1865

23:                                               ; preds = %2, %22
  %24 = phi i32 [ 14, %22 ], [ %1, %2 ], !dbg !1866
  ret i32 %24, !dbg !1867
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_prepare_for_copy_to_device(i8* %0, %struct.halide_buffer_t* %1, i8* %2, i1 zeroext %3, i32 %4) local_unnamed_addr #4 !dbg !1868 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1870, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1871, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8* %2, metadata !1872, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i1 %3, metadata !1873, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1876
  call void @llvm.dbg.value(metadata i32 %4, metadata !1874, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !1877
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !1877
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !1877
  %6 = tail call i8* @malloc(i64 1024) #8, !dbg !1879
  %7 = icmp eq i8* %6, null, !dbg !1880
  br i1 %7, label %10, label %8, !dbg !1881

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %6, i64 1023, !dbg !1882
  store i8 0, i8* %9, align 1, !dbg !1883, !tbaa !653
  br label %10, !dbg !1884

10:                                               ; preds = %5, %8
  %11 = phi i8* [ %9, %8 ], [ null, %5 ], !dbg !1885
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1886
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.20, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1886
  %12 = tail call i8* @halide_string_to_string(i8* %6, i8* %11, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !1888
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1889
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1889
  %13 = tail call i8* @halide_pointer_to_string(i8* %12, i8* %11, i8* %0) #8, !dbg !1891
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1892
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1892
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %11, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1894
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !1895
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !1895
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %11, %struct.halide_buffer_t* nonnull %1) #8, !dbg !1897
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1898
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1898
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %11, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !1900
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1901
  call void @llvm.dbg.value(metadata i8* %2, metadata !914, metadata !DIExpression()) #10, !dbg !1901
  %17 = tail call i8* @halide_pointer_to_string(i8* %16, i8* %11, i8* %2) #8, !dbg !1903
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1904
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1904
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %11, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1906
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1907
  br i1 %7, label %19, label %20, !dbg !1909

19:                                               ; preds = %10
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1910
  br label %26, !dbg !1911

20:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !1912
  %21 = ptrtoint i8* %18 to i64, !dbg !1914
  %22 = ptrtoint i8* %6 to i64, !dbg !1914
  %23 = add i64 %21, 1, !dbg !1914
  %24 = sub i64 %23, %22, !dbg !1915
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %24) #8, !dbg !1916
  tail call void @halide_print(i8* %0, i8* nonnull %6) #8, !dbg !1917
  br label %26

26:                                               ; preds = %19, %20
  call void @free(i8* %6) #8, !dbg !1918
  %27 = call fastcc i32 @_ZN12_GLOBAL__N_129halide_hexagon_get_dma_formatEPv26halide_hexagon_image_fmt_t(i8* %0, i32 %4) #9, !dbg !1919
  call void @llvm.dbg.value(metadata i32 %27, metadata !1875, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8* %0, metadata !1783, metadata !DIExpression()) #10, !dbg !1920
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1788, metadata !DIExpression()) #10, !dbg !1920
  call void @llvm.dbg.value(metadata i8* %2, metadata !1789, metadata !DIExpression()) #10, !dbg !1920
  %28 = zext i1 %3 to i8
  call void @llvm.dbg.value(metadata i8 %28, metadata !1790, metadata !DIExpression()) #10, !dbg !1920
  call void @llvm.dbg.value(metadata i32 %27, metadata !1791, metadata !DIExpression()) #10, !dbg !1920
  call void @llvm.dbg.value(metadata i8 1, metadata !1792, metadata !DIExpression()) #10, !dbg !1920
  %29 = icmp eq i8* %2, null, !dbg !1922
  br i1 %29, label %30, label %31, !dbg !1923

30:                                               ; preds = %26
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.64, i64 0, i64 0)) #8, !dbg !1924
  call void @abort() #8, !dbg !1924
  br label %31, !dbg !1924

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1925
  %33 = load i64, i64* %32, align 8, !dbg !1925, !tbaa !717
  %34 = inttoptr i64 %33 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*, !dbg !1926
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %34, metadata !1793, metadata !DIExpression()) #10, !dbg !1920
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %34, i64 0, i32 5, !dbg !1927
  store i8* %2, i8** %35, align 8, !dbg !1928, !tbaa !1259
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %34, i64 0, i32 9, !dbg !1929
  store i8 %28, i8* %36, align 4, !dbg !1930, !tbaa !1248
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %34, i64 0, i32 11, !dbg !1931
  store i32 %27, i32* %37, align 8, !dbg !1932, !tbaa !1251
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %34, i64 0, i32 10, !dbg !1933
  store i8 1, i8* %38, align 1, !dbg !1934, !tbaa !1254
  switch i32 %27, label %43 [
    i32 3, label %39
    i32 6, label %39
    i32 9, label %39
    i32 12, label %39
  ], !dbg !1935

39:                                               ; preds = %31, %31, %31, %31
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %34, i64 0, i32 7, !dbg !1936
  %41 = load i32, i32* %40, align 4, !dbg !1936, !tbaa !1268
  %42 = shl nsw i32 %41, 1, !dbg !1937
  store i32 %42, i32* %40, align 4, !dbg !1938, !tbaa !1268
  br label %43, !dbg !1939

43:                                               ; preds = %31, %39
  ret i32 0, !dbg !1940
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_unprepare(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !1941 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1943, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1944, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !1946
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !1946
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !1946
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !1948
  %4 = icmp eq i8* %3, null, !dbg !1949
  br i1 %4, label %7, label %5, !dbg !1950

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !1951
  store i8 0, i8* %6, align 1, !dbg !1952, !tbaa !653
  br label %7, !dbg !1953

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1954
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1955
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1955
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1957
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1958
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1958
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !1960
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1961
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1961
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1963
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !1964
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !1964
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !1966
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !1967
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !1967
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1969
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !1970
  br i1 %4, label %14, label %15, !dbg !1972

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !1973
  br label %21, !dbg !1974

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !1975
  %16 = ptrtoint i8* %13 to i64, !dbg !1977
  %17 = ptrtoint i8* %3 to i64, !dbg !1977
  %18 = add i64 %16, 1, !dbg !1977
  %19 = sub i64 %18, %17, !dbg !1978
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %19) #8, !dbg !1979
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !1980
  br label %21

21:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !1981
  ret i32 0, !dbg !1982
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 !dbg !1983 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1985, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1986, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !1987, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1988, metadata !DIExpression()), !dbg !1995
  %5 = icmp eq %struct.halide_device_interface_t* %2, null, !dbg !1996
  %6 = icmp eq %struct.halide_device_interface_t* %2, @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, !dbg !1996
  %7 = or i1 %5, %6, !dbg !1996
  br i1 %7, label %9, label %8, !dbg !1996

8:                                                ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !1999
  tail call void @abort() #8, !dbg !1999
  br label %9, !dbg !1999

9:                                                ; preds = %4, %8
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2001, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2006, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i32 2, metadata !2009, metadata !DIExpression()), !dbg !2010
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !2012
  %11 = load i64, i64* %10, align 8, !dbg !2012, !tbaa !1343
  %12 = and i64 %11, 2, !dbg !2013
  %13 = icmp eq i64 %12, 0, !dbg !2014
  br i1 %13, label %63, label %14, !dbg !2015

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2016
  %16 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %15, align 8, !dbg !2016, !tbaa !1210
  %17 = icmp eq %struct.halide_device_interface_t* %16, @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, !dbg !2017
  br i1 %17, label %63, label %18, !dbg !2018

18:                                               ; preds = %14
  br i1 %6, label %20, label %19, !dbg !2019

19:                                               ; preds = %18
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !2021
  tail call void @abort() #8, !dbg !2021
  br label %20, !dbg !2021

20:                                               ; preds = %18, %19
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !2024
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !2024
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !2024
  %21 = tail call i8* @malloc(i64 1024) #8, !dbg !2026
  %22 = icmp eq i8* %21, null, !dbg !2027
  br i1 %22, label %23, label %25, !dbg !2028

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2029
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.24, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2029
  %24 = tail call i8* @halide_string_to_string(i8* %21, i8* null, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !2031
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !2032
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !2034
  br label %33, !dbg !2035

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, i8* %21, i64 1023, !dbg !2036
  store i8 0, i8* %26, align 1, !dbg !2037, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2029
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.24, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2029
  %27 = tail call i8* @halide_string_to_string(i8* nonnull %21, i8* nonnull %26, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !2031
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !2032
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !2038
  %28 = ptrtoint i8* %27 to i64, !dbg !2040
  %29 = ptrtoint i8* %21 to i64, !dbg !2040
  %30 = add i64 %28, 1, !dbg !2040
  %31 = sub i64 %30, %29, !dbg !2041
  %32 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %21, i64 %31) #8, !dbg !2042
  tail call void @halide_print(i8* %0, i8* nonnull %21) #8, !dbg !2043
  br label %33

33:                                               ; preds = %25, %23
  tail call void @free(i8* %21) #8, !dbg !2044
  %34 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %15, align 8, !dbg !2045, !tbaa !1210
  %35 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %34, i64 0, i32 15, !dbg !2046
  %36 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %35, align 8, !dbg !2046, !tbaa !1212
  %37 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %36, i64 0, i32 10, !dbg !2047
  %38 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %37, align 8, !dbg !2047, !tbaa !2048
  %39 = tail call i32 %38(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* %3) #8, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %39, metadata !1989, metadata !DIExpression()), !dbg !2050
  %40 = icmp eq i32 %39, 0, !dbg !2051
  br i1 %40, label %41, label %44, !dbg !2053

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 3
  %43 = load i64, i64* %42, align 8, !dbg !2054, !tbaa !1343
  br label %63, !dbg !2053

44:                                               ; preds = %33
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !2057
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()) #10, !dbg !2057
  call void @llvm.dbg.value(metadata i8* null, metadata !1055, metadata !DIExpression()) #10, !dbg !2057
  %45 = tail call i8* @malloc(i64 1024) #8, !dbg !2060
  %46 = icmp eq i8* %45, null, !dbg !2061
  br i1 %46, label %49, label %47, !dbg !2062

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, i8* %45, i64 1023, !dbg !2063
  store i8 0, i8* %48, align 1, !dbg !2064, !tbaa !653
  br label %49, !dbg !2065

49:                                               ; preds = %44, %47
  %50 = phi i8* [ %48, %47 ], [ null, %44 ], !dbg !2066
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !2067
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.25, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !2067
  %51 = tail call i8* @halide_string_to_string(i8* %45, i8* %50, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !2069
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1842, metadata !DIExpression()) #10, !dbg !2070
  call void @llvm.dbg.value(metadata i32 %39, metadata !1845, metadata !DIExpression()) #10, !dbg !2070
  %52 = sext i32 %39 to i64, !dbg !2072
  %53 = tail call i8* @halide_int64_to_string(i8* %51, i8* %50, i64 %52, i32 1) #8, !dbg !2073
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !2074
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !2074
  %54 = tail call i8* @halide_string_to_string(i8* %53, i8* %50, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !2076
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !2077
  br i1 %46, label %55, label %56, !dbg !2079

55:                                               ; preds = %49
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !2080
  br label %62, !dbg !2081

56:                                               ; preds = %49
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1090, metadata !DIExpression()) #10, !dbg !2082
  %57 = ptrtoint i8* %54 to i64, !dbg !2084
  %58 = ptrtoint i8* %45 to i64, !dbg !2084
  %59 = add i64 %57, 1, !dbg !2084
  %60 = sub i64 %59, %58, !dbg !2085
  %61 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %45, i64 %60) #8, !dbg !2086
  tail call void @halide_error(i8* %0, i8* nonnull %45) #8, !dbg !2087
  br label %62

62:                                               ; preds = %56, %55
  tail call void @free(i8* %45) #8, !dbg !2088
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1986, metadata !DIExpression()), !dbg !1995
  br label %122

63:                                               ; preds = %41, %14, %9
  %64 = phi i64 [ %11, %14 ], [ %11, %9 ], [ %43, %41 ], !dbg !2054
  %65 = phi %struct.halide_buffer_t* [ %1, %14 ], [ %1, %9 ], [ %3, %41 ]
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %65, metadata !1986, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %65, metadata !2001, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %65, metadata !2006, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i32 2, metadata !2009, metadata !DIExpression()), !dbg !2090
  %66 = and i64 %64, 2, !dbg !2091
  %67 = icmp eq i64 %66, 0, !dbg !2092
  br i1 %67, label %68, label %72, !dbg !2093

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %65, i64 0, i32 2, !dbg !2094
  %70 = load i8*, i8** %69, align 8, !dbg !2094, !tbaa !708
  %71 = icmp eq i8* %70, null, !dbg !2095
  call void @llvm.dbg.value(metadata i1 %71, metadata !1992, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  call void @llvm.dbg.value(metadata i1 %5, metadata !1993, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  br i1 %71, label %72, label %77, !dbg !2096

72:                                               ; preds = %63, %68
  %73 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %65, i64 0, i32 0, !dbg !2096
  %74 = load i64, i64* %73, align 8, !dbg !2096, !tbaa !717
  %75 = icmp eq i64 %74, 0, !dbg !2096
  br i1 %75, label %76, label %77, !dbg !2099

76:                                               ; preds = %72
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.26, i64 0, i64 0)) #8, !dbg !2100
  tail call void @abort() #8, !dbg !2100
  br label %77, !dbg !2100

77:                                               ; preds = %68, %72, %76
  %78 = phi i1 [ true, %68 ], [ false, %72 ], [ false, %76 ]
  br i1 %5, label %84, label %79, !dbg !2102

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0, !dbg !2102
  %81 = load i64, i64* %80, align 8, !dbg !2102, !tbaa !717
  %82 = icmp eq i64 %81, 0, !dbg !2102
  br i1 %82, label %83, label %84, !dbg !2105

83:                                               ; preds = %79
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !2106
  tail call void @abort() #8, !dbg !2106
  br label %84, !dbg !2106

84:                                               ; preds = %77, %79, %83
  %85 = xor i1 %5, %78, !dbg !2108
  br i1 %85, label %87, label %86, !dbg !2108

86:                                               ; preds = %84
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !2111
  tail call void @abort() #8, !dbg !2111
  br label %87, !dbg !2111

87:                                               ; preds = %84, %86
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !2113
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !2113
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !2113
  %88 = tail call i8* @malloc(i64 1024) #8, !dbg !2115
  %89 = icmp eq i8* %88, null, !dbg !2116
  br i1 %89, label %92, label %90, !dbg !2117

90:                                               ; preds = %87
  %91 = getelementptr inbounds i8, i8* %88, i64 1023, !dbg !2118
  store i8 0, i8* %91, align 1, !dbg !2119, !tbaa !653
  br label %92, !dbg !2120

92:                                               ; preds = %87, %90
  %93 = phi i8* [ %91, %90 ], [ null, %87 ], !dbg !2121
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2122
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.29, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2122
  %94 = tail call i8* @halide_string_to_string(i8* %88, i8* %93, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !2124
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !2125
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !2125
  %95 = tail call i8* @halide_pointer_to_string(i8* %94, i8* %93, i8* %0) #8, !dbg !2127
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2128
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2128
  %96 = tail call i8* @halide_string_to_string(i8* %95, i8* %93, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)) #8, !dbg !2130
  %97 = bitcast %struct.halide_buffer_t* %65 to i8*, !dbg !2131
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !2132
  call void @llvm.dbg.value(metadata i8* %97, metadata !914, metadata !DIExpression()) #10, !dbg !2132
  %98 = tail call i8* @halide_pointer_to_string(i8* %96, i8* %93, i8* %97) #8, !dbg !2134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2135
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2135
  %99 = tail call i8* @halide_string_to_string(i8* %98, i8* %93, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !2137
  %100 = bitcast %struct.halide_buffer_t* %3 to i8*, !dbg !2138
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !2139
  call void @llvm.dbg.value(metadata i8* %100, metadata !914, metadata !DIExpression()) #10, !dbg !2139
  %101 = tail call i8* @halide_pointer_to_string(i8* %99, i8* %93, i8* %100) #8, !dbg !2141
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2142
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2142
  %102 = tail call i8* @halide_string_to_string(i8* %101, i8* %93, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !2144
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2145
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2145
  %103 = tail call i8* @halide_string_to_string(i8* %102, i8* %93, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !2147
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2148, metadata !DIExpression()) #10, !dbg !2152
  call void @llvm.dbg.value(metadata i1 %5, metadata !2151, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2152
  %104 = zext i1 %5 to i64, !dbg !2154
  %105 = tail call i8* @halide_int64_to_string(i8* %103, i8* %93, i64 %104, i32 1) #8, !dbg !2155
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2156
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2156
  %106 = tail call i8* @halide_string_to_string(i8* %105, i8* %93, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0)) #8, !dbg !2158
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2148, metadata !DIExpression()) #10, !dbg !2159
  call void @llvm.dbg.value(metadata i1 %78, metadata !2151, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2159
  %107 = zext i1 %78 to i64, !dbg !2161
  %108 = tail call i8* @halide_int64_to_string(i8* %106, i8* %93, i64 %107, i32 1) #8, !dbg !2162
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2163
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2163
  %109 = tail call i8* @halide_string_to_string(i8* %108, i8* %93, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !2165
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !2166
  br i1 %89, label %110, label %111, !dbg !2168

110:                                              ; preds = %92
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !2169
  br label %117, !dbg !2170

111:                                              ; preds = %92
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !2171
  %112 = ptrtoint i8* %109 to i64, !dbg !2173
  %113 = ptrtoint i8* %88 to i64, !dbg !2173
  %114 = add i64 %112, 1, !dbg !2173
  %115 = sub i64 %114, %113, !dbg !2174
  %116 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %88, i64 %115) #8, !dbg !2175
  tail call void @halide_print(i8* %0, i8* nonnull %88) #8, !dbg !2176
  br label %117

117:                                              ; preds = %110, %111
  call void @free(i8* %88) #8, !dbg !2177
  br i1 %6, label %118, label %120, !dbg !2178

118:                                              ; preds = %117
  %119 = call fastcc i32 @_ZN12_GLOBAL__N_126halide_hexagon_dma_wrapperEPvP15halide_buffer_tS2_(i8* %0, %struct.halide_buffer_t* %3, %struct.halide_buffer_t* nonnull %65) #9, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %119, metadata !1994, metadata !DIExpression()), !dbg !1995
  br label %122, !dbg !2182

120:                                              ; preds = %117
  %121 = call fastcc i32 @_ZN12_GLOBAL__N_126halide_hexagon_dma_wrapperEPvP15halide_buffer_tS2_(i8* %0, %struct.halide_buffer_t* nonnull %65, %struct.halide_buffer_t* %3) #9, !dbg !2183
  call void @llvm.dbg.value(metadata i32 %121, metadata !1994, metadata !DIExpression()), !dbg !1995
  br label %122

122:                                              ; preds = %62, %118, %120
  %123 = phi i32 [ %39, %62 ], [ %119, %118 ], [ %121, %120 ], !dbg !1995
  ret i32 %123, !dbg !2185
}

; Function Attrs: nounwind
define internal fastcc i32 @_ZN12_GLOBAL__N_126halide_hexagon_dma_wrapperEPvP15halide_buffer_tS2_(i8* %0, %struct.halide_buffer_t* nocapture readonly %1, %struct.halide_buffer_t* nocapture readonly %2) unnamed_addr #4 !dbg !2186 {
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %5 = alloca %struct.stDmaWrapper_RoiAlignInfo, align 2
  %6 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %7 = alloca %struct.stDmaWrapper_DmaTransferSetup, align 8
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %9 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2190, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2191, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !2192, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* null, metadata !2193, metadata !DIExpression()), !dbg !2227
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2228
  %11 = load i64, i64* %10, align 8, !dbg !2228, !tbaa !717
  %12 = inttoptr i64 %11 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*, !dbg !2229
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %12, metadata !2193, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !2230
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !2230
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !2230
  %13 = tail call i8* @malloc(i64 1024) #8, !dbg !2232
  %14 = icmp eq i8* %13, null, !dbg !2233
  br i1 %14, label %17, label %15, !dbg !2234

15:                                               ; preds = %3
  %16 = getelementptr inbounds i8, i8* %13, i64 1023, !dbg !2235
  store i8 0, i8* %16, align 1, !dbg !2236, !tbaa !653
  br label %17, !dbg !2237

17:                                               ; preds = %3, %15
  %18 = phi i8* [ %16, %15 ], [ null, %3 ], !dbg !2238
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2239
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2239
  %19 = tail call i8* @halide_string_to_string(i8* %13, i8* %18, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i64 0, i64 0)) #8, !dbg !2241
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %12, i64 0, i32 0, !dbg !2242
  %21 = load i8*, i8** %20, align 8, !dbg !2242, !tbaa !1257
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !2243
  call void @llvm.dbg.value(metadata i8* %21, metadata !914, metadata !DIExpression()) #10, !dbg !2243
  %22 = tail call i8* @halide_pointer_to_string(i8* %19, i8* %18, i8* %21) #8, !dbg !2245
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2246
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2246
  %23 = tail call i8* @halide_string_to_string(i8* %22, i8* %18, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i64 0, i64 0)) #8, !dbg !2248
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %12, i64 0, i32 1, !dbg !2249
  %25 = load i16, i16* %24, align 8, !dbg !2249, !tbaa !1229
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2148, metadata !DIExpression()) #10, !dbg !2250
  call void @llvm.dbg.value(metadata i16 %25, metadata !2151, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2250
  %26 = zext i16 %25 to i64, !dbg !2252
  %27 = tail call i8* @halide_int64_to_string(i8* %23, i8* %18, i64 %26, i32 1) #8, !dbg !2253
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2254
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2254
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %18, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0)) #8, !dbg !2256
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %12, i64 0, i32 2, !dbg !2257
  %30 = load i16, i16* %29, align 2, !dbg !2257, !tbaa !1235
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2148, metadata !DIExpression()) #10, !dbg !2258
  call void @llvm.dbg.value(metadata i16 %30, metadata !2151, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2258
  %31 = zext i16 %30 to i64, !dbg !2260
  %32 = tail call i8* @halide_int64_to_string(i8* %28, i8* %18, i64 %31, i32 1) #8, !dbg !2261
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2262
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2262
  %33 = tail call i8* @halide_string_to_string(i8* %32, i8* %18, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #8, !dbg !2264
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2265
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2265
  %34 = tail call i8* @halide_string_to_string(i8* %33, i8* %18, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i64 0, i64 0)) #8, !dbg !2267
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %12, i64 0, i32 3, !dbg !2268
  %36 = load i16, i16* %35, align 4, !dbg !2268, !tbaa !1238
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2148, metadata !DIExpression()) #10, !dbg !2269
  call void @llvm.dbg.value(metadata i16 %36, metadata !2151, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2269
  %37 = zext i16 %36 to i64, !dbg !2271
  %38 = tail call i8* @halide_int64_to_string(i8* %34, i8* %18, i64 %37, i32 1) #8, !dbg !2272
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2273
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2273
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %18, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2275
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %12, i64 0, i32 4, !dbg !2276
  %41 = load i16, i16* %40, align 2, !dbg !2276, !tbaa !1241
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2148, metadata !DIExpression()) #10, !dbg !2277
  call void @llvm.dbg.value(metadata i16 %41, metadata !2151, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2277
  %42 = zext i16 %41 to i64, !dbg !2279
  %43 = tail call i8* @halide_int64_to_string(i8* %39, i8* %18, i64 %42, i32 1) #8, !dbg !2280
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2281
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2281
  %44 = tail call i8* @halide_string_to_string(i8* %43, i8* %18, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #8, !dbg !2283
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2284
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2284
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %18, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !2286
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %12, i64 0, i32 6, !dbg !2287
  %47 = load i32, i32* %46, align 8, !dbg !2287, !tbaa !1265
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2148, metadata !DIExpression()) #10, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %47, metadata !2151, metadata !DIExpression()) #10, !dbg !2288
  %48 = sext i32 %47 to i64, !dbg !2290
  %49 = tail call i8* @halide_int64_to_string(i8* %45, i8* %18, i64 %48, i32 1) #8, !dbg !2291
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2292
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2292
  %50 = tail call i8* @halide_string_to_string(i8* %49, i8* %18, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0)) #8, !dbg !2294
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %12, i64 0, i32 7, !dbg !2295
  %52 = load i32, i32* %51, align 4, !dbg !2295, !tbaa !1268
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2148, metadata !DIExpression()) #10, !dbg !2296
  call void @llvm.dbg.value(metadata i32 %52, metadata !2151, metadata !DIExpression()) #10, !dbg !2296
  %53 = sext i32 %52 to i64, !dbg !2298
  %54 = tail call i8* @halide_int64_to_string(i8* %50, i8* %18, i64 %53, i32 1) #8, !dbg !2299
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2300
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2300
  %55 = tail call i8* @halide_string_to_string(i8* %54, i8* %18, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0)) #8, !dbg !2302
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %12, i64 0, i32 8, !dbg !2303
  %57 = load i32, i32* %56, align 8, !dbg !2303, !tbaa !1271
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2148, metadata !DIExpression()) #10, !dbg !2304
  call void @llvm.dbg.value(metadata i32 %57, metadata !2151, metadata !DIExpression()) #10, !dbg !2304
  %58 = sext i32 %57 to i64, !dbg !2306
  %59 = tail call i8* @halide_int64_to_string(i8* %55, i8* %18, i64 %58, i32 1) #8, !dbg !2307
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2308
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2308
  %60 = tail call i8* @halide_string_to_string(i8* %59, i8* %18, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #8, !dbg !2310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2311
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2311
  %61 = tail call i8* @halide_string_to_string(i8* %60, i8* %18, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !2313
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !2314
  br i1 %14, label %62, label %63, !dbg !2316

62:                                               ; preds = %17
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !2317
  br label %69, !dbg !2318

63:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !2319
  %64 = ptrtoint i8* %61 to i64, !dbg !2321
  %65 = ptrtoint i8* %13 to i64, !dbg !2321
  %66 = add i64 %64, 1, !dbg !2321
  %67 = sub i64 %66, %65, !dbg !2322
  %68 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %13, i64 %67) #8, !dbg !2323
  tail call void @halide_print(i8* %0, i8* nonnull %13) #8, !dbg !2324
  br label %69

69:                                               ; preds = %63, %62
  call void @free(i8* %13) #8, !dbg !2325
  %70 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*, !dbg !2326
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %70) #10, !dbg !2326
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !614, metadata !DIExpression()) #10, !dbg !2327
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !2327
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !2327
  %71 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 3, !dbg !2329
  store i8* %0, i8** %71, align 8, !dbg !2329, !tbaa !2330
  %72 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 4, !dbg !2332
  store i8 1, i8* %72, align 8, !dbg !2332, !tbaa !2333
  %73 = call i8* @malloc(i64 1024) #8, !dbg !2334
  %74 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 0, !dbg !2335
  store i8* %73, i8** %74, align 8, !dbg !2336, !tbaa !2337
  %75 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 1, !dbg !2338
  %76 = icmp eq i8* %73, null, !dbg !2339
  br i1 %76, label %79, label %77, !dbg !2340

77:                                               ; preds = %69
  %78 = getelementptr inbounds i8, i8* %73, i64 1023, !dbg !2341
  store i8 0, i8* %78, align 1, !dbg !2342, !tbaa !653
  br label %79, !dbg !2343

79:                                               ; preds = %69, %77
  %80 = phi i8* [ %78, %77 ], [ null, %69 ], !dbg !2344
  %81 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 2, !dbg !2345
  store i8* %80, i8** %81, align 8, !dbg !2347
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !631, metadata !DIExpression()) #10, !dbg !2348
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.74, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2348
  %82 = call i8* @halide_string_to_string(i8* %73, i8* %80, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.74, i64 0, i64 0)) #8, !dbg !2350
  store i8* %82, i8** %75, align 8, !dbg !2351, !tbaa !2352
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !970, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !975, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 0, metadata !978, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 0, metadata !979, metadata !DIExpression()), !dbg !2357
  %83 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !2358
  %84 = load i32, i32* %83, align 4, !dbg !2358, !tbaa !752
  %85 = icmp sgt i32 %84, 0, !dbg !2359
  br i1 %85, label %89, label %86, !dbg !2360

86:                                               ; preds = %79
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !2361
  %87 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !2363
  %88 = load i8, i8* %87, align 1, !dbg !2363, !tbaa !733
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !991, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i64 0, metadata !994, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i32 0, metadata !995, metadata !DIExpression()), !dbg !2366
  br label %132, !dbg !2367

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !755
  %92 = zext i32 %84 to i64, !dbg !2359
  br label %93, !dbg !2360

93:                                               ; preds = %107, %89
  %94 = phi i64 [ 0, %89 ], [ %109, %107 ]
  %95 = phi i64 [ 0, %89 ], [ %108, %107 ]
  call void @llvm.dbg.value(metadata i64 %94, metadata !979, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i64 %95, metadata !978, metadata !DIExpression()), !dbg !2355
  %96 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i64 %94, i32 2, !dbg !2368
  %97 = load i32, i32* %96, align 4, !dbg !2368, !tbaa !763
  %98 = icmp sgt i32 %97, 0, !dbg !2369
  br i1 %98, label %99, label %107, !dbg !2370

99:                                               ; preds = %93
  %100 = zext i32 %97 to i64, !dbg !2371
  %101 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i64 %94, i32 1, !dbg !2372
  %102 = load i32, i32* %101, align 4, !dbg !2372, !tbaa !828
  %103 = add nsw i32 %102, -1, !dbg !2373
  %104 = zext i32 %103 to i64, !dbg !2374
  %105 = mul nuw nsw i64 %104, %100, !dbg !2375
  %106 = add i64 %105, %95, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %106, metadata !978, metadata !DIExpression()), !dbg !2355
  br label %107, !dbg !2377

107:                                              ; preds = %99, %93
  %108 = phi i64 [ %106, %99 ], [ %95, %93 ], !dbg !2355
  call void @llvm.dbg.value(metadata i64 %108, metadata !978, metadata !DIExpression()), !dbg !2355
  %109 = add nuw nsw i64 %94, 1, !dbg !2378
  call void @llvm.dbg.value(metadata i64 %109, metadata !979, metadata !DIExpression()), !dbg !2357
  %110 = icmp eq i64 %109, %92, !dbg !2359
  br i1 %110, label %111, label %93, !dbg !2360, !llvm.loop !2379

111:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i64 %108, metadata !978, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2355
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !2361
  %112 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !2363
  %113 = load i8, i8* %112, align 1, !dbg !2363, !tbaa !733
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !991, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i64 0, metadata !994, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i32 0, metadata !995, metadata !DIExpression()), !dbg !2366
  br label %114, !dbg !2367

114:                                              ; preds = %128, %111
  %115 = phi i64 [ 0, %111 ], [ %130, %128 ]
  %116 = phi i64 [ 0, %111 ], [ %129, %128 ]
  call void @llvm.dbg.value(metadata i64 %115, metadata !995, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i64 %116, metadata !994, metadata !DIExpression()), !dbg !2364
  %117 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i64 %115, i32 2, !dbg !2381
  %118 = load i32, i32* %117, align 4, !dbg !2381, !tbaa !763
  %119 = icmp slt i32 %118, 0, !dbg !2382
  br i1 %119, label %120, label %128, !dbg !2383

120:                                              ; preds = %114
  %121 = zext i32 %118 to i64, !dbg !2384
  %122 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i64 %115, i32 1, !dbg !2385
  %123 = load i32, i32* %122, align 4, !dbg !2385, !tbaa !828
  %124 = add nsw i32 %123, -1, !dbg !2386
  %125 = zext i32 %124 to i64, !dbg !2387
  %126 = mul nuw i64 %125, %121, !dbg !2388
  %127 = add i64 %126, %116, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %127, metadata !994, metadata !DIExpression()), !dbg !2364
  br label %128, !dbg !2390

128:                                              ; preds = %120, %114
  %129 = phi i64 [ %127, %120 ], [ %116, %114 ], !dbg !2364
  call void @llvm.dbg.value(metadata i64 %129, metadata !994, metadata !DIExpression()), !dbg !2364
  %130 = add nuw nsw i64 %115, 1, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %130, metadata !995, metadata !DIExpression()), !dbg !2366
  %131 = icmp eq i64 %130, %92, !dbg !2392
  br i1 %131, label %132, label %114, !dbg !2367, !llvm.loop !2393

132:                                              ; preds = %128, %86
  %133 = phi i8 [ %88, %86 ], [ %113, %128 ]
  %134 = phi i64 [ 0, %86 ], [ %108, %128 ]
  %135 = phi i64 [ 0, %86 ], [ %129, %128 ], !dbg !2364
  %136 = zext i8 %133 to i64, !dbg !2363
  %137 = add nuw nsw i64 %136, 7, !dbg !2395
  %138 = lshr i64 %137, 3, !dbg !2396
  %139 = add i64 %134, 1, !dbg !2397
  call void @llvm.dbg.value(metadata i64 %139, metadata !978, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !2398
  %140 = sub i64 %139, %135, !dbg !2400
  %141 = mul i64 %140, %138, !dbg !2400
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !2401, metadata !DIExpression()) #10, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %141, metadata !2404, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2405
  %142 = load i8*, i8** %81, align 8, !dbg !2407, !tbaa !2408
  %143 = and i64 %141, 4294967295, !dbg !2409
  %144 = call i8* @halide_uint64_to_string(i8* %82, i8* %142, i64 %143, i32 1) #8, !dbg !2410
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !631, metadata !DIExpression()) #10, !dbg !2411
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2411
  %145 = call i8* @halide_string_to_string(i8* %144, i8* %142, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !2413
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !970, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !975, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i64 0, metadata !978, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 0, metadata !979, metadata !DIExpression()), !dbg !2418
  %146 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 5, !dbg !2419
  %147 = load i32, i32* %146, align 4, !dbg !2419, !tbaa !752
  %148 = icmp sgt i32 %147, 0, !dbg !2420
  br i1 %148, label %152, label %149, !dbg !2421

149:                                              ; preds = %132
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !2422
  %150 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 4, i32 1, !dbg !2424
  %151 = load i8, i8* %150, align 1, !dbg !2424, !tbaa !733
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !991, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 0, metadata !994, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 0, metadata !995, metadata !DIExpression()), !dbg !2427
  br label %195, !dbg !2428

152:                                              ; preds = %132
  %153 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 6
  %154 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %153, align 8, !tbaa !755
  %155 = zext i32 %147 to i64, !dbg !2420
  br label %156, !dbg !2421

156:                                              ; preds = %170, %152
  %157 = phi i64 [ 0, %152 ], [ %172, %170 ]
  %158 = phi i64 [ 0, %152 ], [ %171, %170 ]
  call void @llvm.dbg.value(metadata i64 %157, metadata !979, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i64 %158, metadata !978, metadata !DIExpression()), !dbg !2416
  %159 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %154, i64 %157, i32 2, !dbg !2429
  %160 = load i32, i32* %159, align 4, !dbg !2429, !tbaa !763
  %161 = icmp sgt i32 %160, 0, !dbg !2430
  br i1 %161, label %162, label %170, !dbg !2431

162:                                              ; preds = %156
  %163 = zext i32 %160 to i64, !dbg !2432
  %164 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %154, i64 %157, i32 1, !dbg !2433
  %165 = load i32, i32* %164, align 4, !dbg !2433, !tbaa !828
  %166 = add nsw i32 %165, -1, !dbg !2434
  %167 = zext i32 %166 to i64, !dbg !2435
  %168 = mul nuw nsw i64 %167, %163, !dbg !2436
  %169 = add i64 %168, %158, !dbg !2437
  call void @llvm.dbg.value(metadata i64 %169, metadata !978, metadata !DIExpression()), !dbg !2416
  br label %170, !dbg !2438

170:                                              ; preds = %162, %156
  %171 = phi i64 [ %169, %162 ], [ %158, %156 ], !dbg !2416
  call void @llvm.dbg.value(metadata i64 %171, metadata !978, metadata !DIExpression()), !dbg !2416
  %172 = add nuw nsw i64 %157, 1, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %172, metadata !979, metadata !DIExpression()), !dbg !2418
  %173 = icmp eq i64 %172, %155, !dbg !2420
  br i1 %173, label %174, label %156, !dbg !2421, !llvm.loop !2440

174:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i64 %171, metadata !978, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2416
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !2422
  %175 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 4, i32 1, !dbg !2424
  %176 = load i8, i8* %175, align 1, !dbg !2424, !tbaa !733
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !991, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 0, metadata !994, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 0, metadata !995, metadata !DIExpression()), !dbg !2427
  br label %177, !dbg !2428

177:                                              ; preds = %191, %174
  %178 = phi i64 [ 0, %174 ], [ %193, %191 ]
  %179 = phi i64 [ 0, %174 ], [ %192, %191 ]
  call void @llvm.dbg.value(metadata i64 %178, metadata !995, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i64 %179, metadata !994, metadata !DIExpression()), !dbg !2425
  %180 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %154, i64 %178, i32 2, !dbg !2442
  %181 = load i32, i32* %180, align 4, !dbg !2442, !tbaa !763
  %182 = icmp slt i32 %181, 0, !dbg !2443
  br i1 %182, label %183, label %191, !dbg !2444

183:                                              ; preds = %177
  %184 = zext i32 %181 to i64, !dbg !2445
  %185 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %154, i64 %178, i32 1, !dbg !2446
  %186 = load i32, i32* %185, align 4, !dbg !2446, !tbaa !828
  %187 = add nsw i32 %186, -1, !dbg !2447
  %188 = zext i32 %187 to i64, !dbg !2448
  %189 = mul nuw i64 %188, %184, !dbg !2449
  %190 = add i64 %189, %179, !dbg !2450
  call void @llvm.dbg.value(metadata i64 %190, metadata !994, metadata !DIExpression()), !dbg !2425
  br label %191, !dbg !2451

191:                                              ; preds = %183, %177
  %192 = phi i64 [ %190, %183 ], [ %179, %177 ], !dbg !2425
  call void @llvm.dbg.value(metadata i64 %192, metadata !994, metadata !DIExpression()), !dbg !2425
  %193 = add nuw nsw i64 %178, 1, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %193, metadata !995, metadata !DIExpression()), !dbg !2427
  %194 = icmp eq i64 %193, %155, !dbg !2453
  br i1 %194, label %195, label %177, !dbg !2428, !llvm.loop !2454

195:                                              ; preds = %191, %149
  %196 = phi i8 [ %151, %149 ], [ %176, %191 ]
  %197 = phi i64 [ 0, %149 ], [ %171, %191 ]
  %198 = phi i64 [ 0, %149 ], [ %192, %191 ], !dbg !2425
  %199 = zext i8 %196 to i64, !dbg !2424
  %200 = add nuw nsw i64 %199, 7, !dbg !2456
  %201 = lshr i64 %200, 3, !dbg !2457
  %202 = add i64 %197, 1, !dbg !2458
  call void @llvm.dbg.value(metadata i64 %202, metadata !978, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !2459
  %203 = sub i64 %202, %198, !dbg !2461
  %204 = mul i64 %203, %201, !dbg !2461
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !2401, metadata !DIExpression()) #10, !dbg !2462
  call void @llvm.dbg.value(metadata i64 %204, metadata !2404, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2462
  %205 = load i8*, i8** %81, align 8, !dbg !2464, !tbaa !2408
  %206 = and i64 %204, 4294967295, !dbg !2465
  %207 = call i8* @halide_uint64_to_string(i8* %145, i8* %205, i64 %206, i32 1) #8, !dbg !2466
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !631, metadata !DIExpression()) #10, !dbg !2467
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2467
  %208 = call i8* @halide_string_to_string(i8* %207, i8* %205, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !2469
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !640, metadata !DIExpression()) #10, !dbg !2470
  %209 = load i8*, i8** %74, align 8, !dbg !2472, !tbaa !2337
  %210 = icmp eq i8* %209, null, !dbg !2472
  %211 = load i8*, i8** %71, align 8, !dbg !2473, !tbaa !2330
  br i1 %210, label %212, label %213, !dbg !2474

212:                                              ; preds = %195
  call void @halide_error(i8* %211, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !2475
  br label %220, !dbg !2476

213:                                              ; preds = %195
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !2477
  %214 = ptrtoint i8* %208 to i64, !dbg !2479
  %215 = ptrtoint i8* %209 to i64, !dbg !2479
  %216 = add i64 %214, 1, !dbg !2479
  %217 = sub i64 %216, %215, !dbg !2480
  %218 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %211, i8* nonnull %209, i64 %217) #8, !dbg !2481
  %219 = load i8*, i8** %74, align 8, !dbg !2482, !tbaa !2337
  call void @halide_print(i8* %211, i8* %219) #8, !dbg !2483
  br label %220

220:                                              ; preds = %213, %212
  %221 = load i8, i8* %72, align 8, !dbg !2484, !tbaa !2333, !range !2485
  %222 = icmp eq i8 %221, 0, !dbg !2484
  br i1 %222, label %225, label %223, !dbg !2486

223:                                              ; preds = %220
  %224 = load i8*, i8** %74, align 8, !dbg !2487, !tbaa !2337
  call void @free(i8* %224) #8, !dbg !2488
  br label %225, !dbg !2489

225:                                              ; preds = %220, %223
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %70) #10, !dbg !2326
  %226 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %12, i64 0, i32 11, !dbg !2490
  %227 = load i32, i32* %226, align 8, !dbg !2490, !tbaa !1251
  %228 = icmp eq i32 %227, 0, !dbg !2492
  br i1 %228, label %229, label %234, !dbg !2493

229:                                              ; preds = %225
  %230 = load i32, i32* %83, align 4, !dbg !2494, !tbaa !752
  %231 = icmp slt i32 %230, 4, !dbg !2494
  br i1 %231, label %275, label %232, !dbg !2498

232:                                              ; preds = %229
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.75, i64 0, i64 0)) #8, !dbg !2499
  call void @abort() #8, !dbg !2499
  %233 = load i32, i32* %226, align 8, !dbg !2501, !tbaa !1251
  br label %234, !dbg !2499

234:                                              ; preds = %232, %225
  %235 = phi i32 [ %233, %232 ], [ %227, %225 ], !dbg !2501
  switch i32 %235, label %241 [
    i32 2, label %236
    i32 5, label %236
    i32 8, label %236
    i32 11, label %236
  ], !dbg !2503

236:                                              ; preds = %234, %234, %234, %234
  %237 = load i32, i32* %83, align 4, !dbg !2504, !tbaa !752
  %238 = icmp eq i32 %237, 2, !dbg !2504
  br i1 %238, label %241, label %239, !dbg !2508

239:                                              ; preds = %236
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.76, i64 0, i64 0)) #8, !dbg !2509
  call void @abort() #8, !dbg !2509
  %240 = load i32, i32* %226, align 8, !dbg !2511, !tbaa !1251
  br label %241, !dbg !2509

241:                                              ; preds = %234, %236, %239
  %242 = phi i32 [ %235, %234 ], [ %235, %236 ], [ %240, %239 ], !dbg !2511
  switch i32 %242, label %275 [
    i32 3, label %243
    i32 6, label %243
    i32 9, label %243
    i32 12, label %243
  ], !dbg !2513

243:                                              ; preds = %241, %241, %241, %241
  %244 = load i32, i32* %83, align 4, !dbg !2514, !tbaa !752
  %245 = icmp eq i32 %244, 3, !dbg !2514
  br i1 %245, label %247, label %246, !dbg !2518

246:                                              ; preds = %243
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.77, i64 0, i64 0)) #8, !dbg !2519
  call void @abort() #8, !dbg !2519
  br label %247, !dbg !2519

247:                                              ; preds = %243, %246
  %248 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6, !dbg !2521
  %249 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %248, align 8, !dbg !2521, !tbaa !755
  %250 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %249, i64 0, i32 2, !dbg !2521
  %251 = load i32, i32* %250, align 4, !dbg !2521, !tbaa !763
  %252 = icmp eq i32 %251, 2, !dbg !2521
  br i1 %252, label %255, label %253, !dbg !2524

253:                                              ; preds = %247
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.78, i64 0, i64 0)) #8, !dbg !2525
  call void @abort() #8, !dbg !2525
  %254 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %248, align 8, !dbg !2527, !tbaa !755
  br label %255, !dbg !2525

255:                                              ; preds = %247, %253
  %256 = phi %struct.halide_dimension_t* [ %249, %247 ], [ %254, %253 ], !dbg !2527
  %257 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %256, i64 2, i32 2, !dbg !2527
  %258 = load i32, i32* %257, align 4, !dbg !2527, !tbaa !763
  %259 = icmp eq i32 %258, 1, !dbg !2527
  br i1 %259, label %262, label %260, !dbg !2530

260:                                              ; preds = %255
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.79, i64 0, i64 0)) #8, !dbg !2531
  call void @abort() #8, !dbg !2531
  %261 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %248, align 8, !dbg !2533, !tbaa !755
  br label %262, !dbg !2531

262:                                              ; preds = %255, %260
  %263 = phi %struct.halide_dimension_t* [ %256, %255 ], [ %261, %260 ], !dbg !2533
  %264 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %263, i64 2, i32 0, !dbg !2533
  %265 = load i32, i32* %264, align 4, !dbg !2533, !tbaa !767
  %266 = icmp eq i32 %265, 0, !dbg !2533
  br i1 %266, label %269, label %267, !dbg !2536

267:                                              ; preds = %262
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.80, i64 0, i64 0)) #8, !dbg !2537
  call void @abort() #8, !dbg !2537
  %268 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %248, align 8, !dbg !2539, !tbaa !755
  br label %269, !dbg !2537

269:                                              ; preds = %262, %267
  %270 = phi %struct.halide_dimension_t* [ %263, %262 ], [ %268, %267 ], !dbg !2539
  %271 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %270, i64 2, i32 1, !dbg !2539
  %272 = load i32, i32* %271, align 4, !dbg !2539, !tbaa !828
  %273 = icmp eq i32 %272, 2, !dbg !2539
  br i1 %273, label %275, label %274, !dbg !2542

274:                                              ; preds = %269
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.81, i64 0, i64 0)) #8, !dbg !2543
  call void @abort() #8, !dbg !2543
  br label %275, !dbg !2543

275:                                              ; preds = %229, %241, %269, %274
  %276 = bitcast %struct.stDmaWrapper_RoiAlignInfo* %5 to i8*, !dbg !2545
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %276) #10, !dbg !2545
  call void @llvm.dbg.declare(metadata %struct.stDmaWrapper_RoiAlignInfo* %5, metadata !2194, metadata !DIExpression()), !dbg !2546
  %277 = getelementptr inbounds %struct.stDmaWrapper_RoiAlignInfo, %struct.stDmaWrapper_RoiAlignInfo* %5, i64 0, i32 0, !dbg !2547
  %278 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 6, !dbg !2548
  %279 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %278, align 8, !dbg !2548, !tbaa !755
  %280 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %279, i64 0, i32 1, !dbg !2549
  %281 = load i32, i32* %280, align 4, !dbg !2549, !tbaa !828
  %282 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %279, i64 0, i32 2, !dbg !2550
  %283 = load i32, i32* %282, align 4, !dbg !2550, !tbaa !763
  %284 = mul nsw i32 %283, %281, !dbg !2551
  %285 = trunc i32 %284 to i16, !dbg !2552
  store i16 %285, i16* %277, align 2, !dbg !2547, !tbaa !2553
  %286 = getelementptr inbounds %struct.stDmaWrapper_RoiAlignInfo, %struct.stDmaWrapper_RoiAlignInfo* %5, i64 0, i32 1, !dbg !2547
  %287 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %279, i64 1, i32 1, !dbg !2555
  %288 = load i32, i32* %287, align 4, !dbg !2555, !tbaa !828
  %289 = trunc i32 %288 to i16, !dbg !2556
  store i16 %289, i16* %286, align 2, !dbg !2547, !tbaa !2557
  %290 = load i32, i32* %226, align 8, !dbg !2558, !tbaa !1251
  %291 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %12, i64 0, i32 9, !dbg !2559
  %292 = load i8, i8* %291, align 4, !dbg !2559, !tbaa !1248, !range !2485
  %293 = icmp ne i8 %292, 0, !dbg !2559
  %294 = call i32 @nDmaWrapper_GetRecommendedWalkSize(i32 %290, i1 zeroext %293, %struct.stDmaWrapper_RoiAlignInfo* nonnull %5) #8, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %294, metadata !2200, metadata !DIExpression()), !dbg !2227
  %295 = load i32, i32* %226, align 8, !dbg !2561, !tbaa !1251
  %296 = load i8, i8* %291, align 4, !dbg !2562, !tbaa !1248, !range !2485
  %297 = icmp ne i8 %296, 0, !dbg !2562
  %298 = call i32 @nDmaWrapper_GetRecommendedIntermBufStride(i32 %295, %struct.stDmaWrapper_RoiAlignInfo* nonnull %5, i1 zeroext %297) #8, !dbg !2563
  call void @llvm.dbg.value(metadata i32 %298, metadata !2201, metadata !DIExpression()), !dbg !2227
  %299 = load i16, i16* %277, align 2, !dbg !2564, !tbaa !2553
  call void @llvm.dbg.value(metadata i16 %299, metadata !2202, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2227
  %300 = load i16, i16* %286, align 2, !dbg !2565, !tbaa !2557
  %301 = zext i16 %300 to i32, !dbg !2566
  call void @llvm.dbg.value(metadata i32 %301, metadata !2203, metadata !DIExpression()), !dbg !2227
  %302 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6 to i8*, !dbg !2567
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %302) #10, !dbg !2567
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !614, metadata !DIExpression()) #10, !dbg !2568
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !2568
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !2568
  %303 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 3, !dbg !2570
  store i8* %0, i8** %303, align 8, !dbg !2570, !tbaa !2330
  %304 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 4, !dbg !2571
  store i8 1, i8* %304, align 8, !dbg !2571, !tbaa !2333
  %305 = call i8* @malloc(i64 1024) #8, !dbg !2572
  %306 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 0, !dbg !2573
  store i8* %305, i8** %306, align 8, !dbg !2574, !tbaa !2337
  %307 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 1, !dbg !2575
  store i8* %305, i8** %307, align 8, !dbg !2576, !tbaa !2352
  %308 = icmp eq i8* %305, null, !dbg !2577
  br i1 %308, label %311, label %309, !dbg !2578

309:                                              ; preds = %275
  %310 = getelementptr inbounds i8, i8* %305, i64 1023, !dbg !2579
  store i8 0, i8* %310, align 1, !dbg !2580, !tbaa !653
  br label %311, !dbg !2581

311:                                              ; preds = %275, %309
  %312 = phi i8* [ %310, %309 ], [ null, %275 ], !dbg !2582
  %313 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 2, !dbg !2583
  store i8* %312, i8** %313, align 8, !dbg !2584
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !631, metadata !DIExpression()) #10, !dbg !2585
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.82, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2585
  %314 = call i8* @halide_string_to_string(i8* %305, i8* %312, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.82, i64 0, i64 0)) #8, !dbg !2587
  store i8* %314, i8** %307, align 8, !dbg !2588, !tbaa !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !2148, metadata !DIExpression()) #10, !dbg !2589
  call void @llvm.dbg.value(metadata i16 %299, metadata !2151, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2589
  %315 = load i8*, i8** %313, align 8, !dbg !2591, !tbaa !2408
  %316 = zext i16 %299 to i64, !dbg !2592
  %317 = call i8* @halide_int64_to_string(i8* %314, i8* %315, i64 %316, i32 1) #8, !dbg !2593
  store i8* %317, i8** %307, align 8, !dbg !2594, !tbaa !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !631, metadata !DIExpression()) #10, !dbg !2595
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2595
  %318 = load i8*, i8** %313, align 8, !dbg !2597, !tbaa !2408
  %319 = call i8* @halide_string_to_string(i8* %317, i8* %318, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0)) #8, !dbg !2598
  store i8* %319, i8** %307, align 8, !dbg !2599, !tbaa !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !2148, metadata !DIExpression()) #10, !dbg !2600
  call void @llvm.dbg.value(metadata i32 %301, metadata !2151, metadata !DIExpression()) #10, !dbg !2600
  %320 = load i8*, i8** %313, align 8, !dbg !2602, !tbaa !2408
  %321 = zext i16 %300 to i64, !dbg !2603
  %322 = call i8* @halide_int64_to_string(i8* %319, i8* %320, i64 %321, i32 1) #8, !dbg !2604
  store i8* %322, i8** %307, align 8, !dbg !2605, !tbaa !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !631, metadata !DIExpression()) #10, !dbg !2606
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2606
  %323 = load i8*, i8** %313, align 8, !dbg !2608, !tbaa !2408
  %324 = call i8* @halide_string_to_string(i8* %322, i8* %323, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0)) #8, !dbg !2609
  store i8* %324, i8** %307, align 8, !dbg !2610, !tbaa !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !2148, metadata !DIExpression()) #10, !dbg !2611
  call void @llvm.dbg.value(metadata i32 %298, metadata !2151, metadata !DIExpression()) #10, !dbg !2611
  %325 = load i8*, i8** %313, align 8, !dbg !2613, !tbaa !2408
  %326 = sext i32 %298 to i64, !dbg !2614
  %327 = call i8* @halide_int64_to_string(i8* %324, i8* %325, i64 %326, i32 1) #8, !dbg !2615
  store i8* %327, i8** %307, align 8, !dbg !2616, !tbaa !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !631, metadata !DIExpression()) #10, !dbg !2617
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2617
  %328 = load i8*, i8** %313, align 8, !dbg !2619, !tbaa !2408
  %329 = call i8* @halide_string_to_string(i8* %327, i8* %328, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !2620
  store i8* %329, i8** %307, align 8, !dbg !2621, !tbaa !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !640, metadata !DIExpression()) #10, !dbg !2622
  %330 = load i8*, i8** %306, align 8, !dbg !2624, !tbaa !2337
  %331 = icmp eq i8* %330, null, !dbg !2624
  %332 = load i8*, i8** %303, align 8, !dbg !2625, !tbaa !2330
  br i1 %331, label %333, label %334, !dbg !2626

333:                                              ; preds = %311
  call void @halide_error(i8* %332, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !2627
  br label %342, !dbg !2628

334:                                              ; preds = %311
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !2629
  %335 = ptrtoint i8* %329 to i64, !dbg !2631
  %336 = ptrtoint i8* %330 to i64, !dbg !2631
  %337 = add i64 %335, 1, !dbg !2631
  %338 = sub i64 %337, %336, !dbg !2632
  %339 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %332, i8* nonnull %330, i64 %338) #8, !dbg !2633
  %340 = load i8*, i8** %303, align 8, !dbg !2634, !tbaa !2330
  %341 = load i8*, i8** %306, align 8, !dbg !2635, !tbaa !2337
  call void @halide_print(i8* %340, i8* %341) #8, !dbg !2636
  br label %342

342:                                              ; preds = %334, %333
  %343 = load i8, i8* %304, align 8, !dbg !2637, !tbaa !2333, !range !2485
  %344 = icmp eq i8 %343, 0, !dbg !2637
  br i1 %344, label %350, label %345, !dbg !2638

345:                                              ; preds = %342
  %346 = load i8*, i8** %306, align 8, !dbg !2639, !tbaa !2337
  %347 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 5, i64 0, !dbg !2640
  %348 = icmp eq i8* %346, %347, !dbg !2641
  br i1 %348, label %350, label %349, !dbg !2642

349:                                              ; preds = %345
  call void @free(i8* %346) #8, !dbg !2643
  br label %350, !dbg !2644

350:                                              ; preds = %342, %345, %349
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %302) #10, !dbg !2567
  %351 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %278, align 8, !dbg !2645, !tbaa !755
  %352 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %351, i64 1, i32 2, !dbg !2647
  %353 = load i32, i32* %352, align 4, !dbg !2647, !tbaa !763
  %354 = icmp sgt i32 %353, %298, !dbg !2648
  %355 = select i1 %354, i32 %353, i32 %298, !dbg !2649
  call void @llvm.dbg.value(metadata i32 %355, metadata !2201, metadata !DIExpression()), !dbg !2227
  %356 = srem i32 %353, %355, !dbg !2650
  %357 = icmp eq i32 %356, 0, !dbg !2650
  br i1 %357, label %359, label %358, !dbg !2653

358:                                              ; preds = %350
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.83, i64 0, i64 0)) #8, !dbg !2654
  call void @abort() #8, !dbg !2654
  br label %359, !dbg !2654

359:                                              ; preds = %358, %350
  call void @llvm.dbg.value(metadata i8* %0, metadata !2656, metadata !DIExpression()) #10, !dbg !2663
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1635, metadata !DIExpression()) #10, !dbg !2665
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE, metadata !1638, metadata !DIExpression()) #10, !dbg !2665
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE, metadata !2659, metadata !DIExpression()) #10, !dbg !2663
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #8, !dbg !2667
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* undef, metadata !2660, metadata !DIExpression()) #10, !dbg !2663
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* null, metadata !2661, metadata !DIExpression()) #10, !dbg !2663
  %360 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 8, !dbg !2663, !tbaa !1498
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %360, metadata !2660, metadata !DIExpression()) #10, !dbg !2663
  %361 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %360, null, !dbg !2668
  br i1 %361, label %373, label %362, !dbg !2669

362:                                              ; preds = %359, %369
  %363 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ %371, %369 ], [ %360, %359 ]
  %364 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %363, i64 0, i32 1, !dbg !2670
  %365 = load i8, i8* %364, align 8, !dbg !2670, !tbaa !2673, !range !2485
  %366 = icmp eq i8 %365, 0, !dbg !2670
  br i1 %366, label %367, label %369, !dbg !2674

367:                                              ; preds = %362
  store i8 1, i8* %364, align 8, !dbg !2675, !tbaa !2673
  %368 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %363, i64 0, i32 0, !dbg !2677
  br label %444, !dbg !2678

369:                                              ; preds = %362
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %363, metadata !2661, metadata !DIExpression()) #10, !dbg !2663
  %370 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %363, i64 0, i32 2, !dbg !2679
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* undef, metadata !2660, metadata !DIExpression()) #10, !dbg !2663
  %371 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %370, align 8, !dbg !2663, !tbaa !1498
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %371, metadata !2660, metadata !DIExpression()) #10, !dbg !2663
  %372 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %371, null, !dbg !2668
  br i1 %372, label %373, label %362, !dbg !2669, !llvm.loop !2680

373:                                              ; preds = %369, %359
  %374 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ null, %359 ], [ %363, %369 ], !dbg !2663
  %375 = call i8* @malloc(i64 24) #8, !dbg !2682
  call void @llvm.dbg.value(metadata i8* %375, metadata !2660, metadata !DIExpression()) #10, !dbg !2663
  %376 = icmp eq i8* %375, null, !dbg !2683
  br i1 %376, label %377, label %390, !dbg !2685

377:                                              ; preds = %373
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()) #10, !dbg !2686
  call void @llvm.dbg.value(metadata i8* null, metadata !1055, metadata !DIExpression()) #10, !dbg !2686
  %378 = call i8* @malloc(i64 1024) #8, !dbg !2689
  %379 = icmp eq i8* %378, null, !dbg !2690
  br i1 %379, label %380, label %382, !dbg !2691

380:                                              ; preds = %377
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !2692
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.100, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !2692
  %381 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.100, i64 0, i64 0)) #8, !dbg !2694
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !2695
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !2697
  br label %442, !dbg !2698

382:                                              ; preds = %377
  %383 = getelementptr inbounds i8, i8* %378, i64 1023, !dbg !2699
  store i8 0, i8* %383, align 1, !dbg !2700, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !2692
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.100, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !2692
  %384 = call i8* @halide_string_to_string(i8* nonnull %378, i8* nonnull %383, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.100, i64 0, i64 0)) #8, !dbg !2694
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !2695
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1090, metadata !DIExpression()) #10, !dbg !2701
  %385 = ptrtoint i8* %384 to i64, !dbg !2703
  %386 = ptrtoint i8* %378 to i64, !dbg !2703
  %387 = sub i64 1, %386, !dbg !2703
  %388 = add i64 %387, %385, !dbg !2704
  %389 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %378, i64 %388) #8, !dbg !2705
  call void @halide_error(i8* %0, i8* nonnull %378) #8, !dbg !2706
  br label %442

390:                                              ; preds = %373
  %391 = call i8* @HAP_cache_lock(i32 128, i8** null) #8, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %391, metadata !2662, metadata !DIExpression()) #10, !dbg !2663
  %392 = icmp eq i8* %391, null, !dbg !2708
  br i1 %392, label %393, label %406, !dbg !2710

393:                                              ; preds = %390
  call void @free(i8* nonnull %375) #8, !dbg !2711
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !2713
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()) #10, !dbg !2713
  call void @llvm.dbg.value(metadata i8* null, metadata !1055, metadata !DIExpression()) #10, !dbg !2713
  %394 = call i8* @malloc(i64 1024) #8, !dbg !2715
  %395 = icmp eq i8* %394, null, !dbg !2716
  br i1 %395, label %396, label %398, !dbg !2717

396:                                              ; preds = %393
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !2718
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.101, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !2718
  %397 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.101, i64 0, i64 0)) #8, !dbg !2720
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !2721
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !2723
  br label %442, !dbg !2724

398:                                              ; preds = %393
  %399 = getelementptr inbounds i8, i8* %394, i64 1023, !dbg !2725
  store i8 0, i8* %399, align 1, !dbg !2726, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !2718
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.101, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !2718
  %400 = call i8* @halide_string_to_string(i8* nonnull %394, i8* nonnull %399, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.101, i64 0, i64 0)) #8, !dbg !2720
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !2721
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1090, metadata !DIExpression()) #10, !dbg !2727
  %401 = ptrtoint i8* %400 to i64, !dbg !2729
  %402 = ptrtoint i8* %394 to i64, !dbg !2729
  %403 = sub i64 1, %402, !dbg !2729
  %404 = add i64 %403, %401, !dbg !2730
  %405 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %394, i64 %404) #8, !dbg !2731
  call void @halide_error(i8* %0, i8* nonnull %394) #8, !dbg !2732
  br label %442

406:                                              ; preds = %390
  %407 = bitcast i8* %375 to i8**, !dbg !2733
  store i8* %391, i8** %407, align 8, !dbg !2734, !tbaa !1653
  %408 = getelementptr inbounds i8, i8* %375, i64 8, !dbg !2735
  store i8 1, i8* %408, align 8, !dbg !2736, !tbaa !2673
  %409 = call i8* @malloc(i64 24) #8, !dbg !2737
  %410 = getelementptr inbounds i8, i8* %375, i64 16, !dbg !2738
  %411 = bitcast i8* %410 to i8**, !dbg !2739
  store i8* %409, i8** %411, align 8, !dbg !2739, !tbaa !1649
  %412 = icmp eq i8* %409, null, !dbg !2740
  br i1 %412, label %419, label %413, !dbg !2742

413:                                              ; preds = %406
  %414 = getelementptr inbounds i8, i8* %391, i64 64, !dbg !2743
  %415 = bitcast i8* %409 to i8**, !dbg !2745
  store i8* %414, i8** %415, align 8, !dbg !2746, !tbaa !1653
  %416 = getelementptr inbounds i8, i8* %409, i64 8, !dbg !2747
  store i8 0, i8* %416, align 8, !dbg !2748, !tbaa !2673
  %417 = getelementptr inbounds i8, i8* %409, i64 16, !dbg !2749
  %418 = bitcast i8* %417 to %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"**, !dbg !2749
  store %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* null, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %418, align 8, !dbg !2750, !tbaa !1649
  br label %433, !dbg !2751

419:                                              ; preds = %406
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !2752
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !2752
  %420 = call i8* @malloc(i64 1024) #8, !dbg !2755
  %421 = icmp eq i8* %420, null, !dbg !2756
  br i1 %421, label %422, label %424, !dbg !2757

422:                                              ; preds = %419
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2758
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2758
  %423 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i64 0, i64 0)) #8, !dbg !2760
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !2761
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !2763
  br label %432, !dbg !2764

424:                                              ; preds = %419
  %425 = getelementptr inbounds i8, i8* %420, i64 1023, !dbg !2765
  store i8 0, i8* %425, align 1, !dbg !2766, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2758
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2758
  %426 = call i8* @halide_string_to_string(i8* nonnull %420, i8* nonnull %425, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i64 0, i64 0)) #8, !dbg !2760
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !2761
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !2767
  %427 = ptrtoint i8* %426 to i64, !dbg !2769
  %428 = ptrtoint i8* %420 to i64, !dbg !2769
  %429 = sub i64 1, %428, !dbg !2769
  %430 = add i64 %429, %427, !dbg !2770
  %431 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %420, i64 %430) #8, !dbg !2771
  call void @halide_print(i8* %0, i8* nonnull %420) #8, !dbg !2772
  br label %432

432:                                              ; preds = %424, %422
  call void @free(i8* %420) #8, !dbg !2773
  br label %433

433:                                              ; preds = %432, %413
  %434 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %374, null, !dbg !2774
  br i1 %434, label %438, label %435, !dbg !2776

435:                                              ; preds = %433
  %436 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %374, i64 0, i32 2, !dbg !2777
  %437 = bitcast %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %436 to i8**, !dbg !2779
  store i8* %375, i8** %437, align 8, !dbg !2779, !tbaa !1649
  br label %444, !dbg !2780

438:                                              ; preds = %433
  %439 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 8, !dbg !2781, !tbaa !1498
  %440 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %439, null, !dbg !2783
  br i1 %440, label %441, label %444, !dbg !2784

441:                                              ; preds = %438
  store i8* %375, i8** bitcast (%"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE to i8**), align 8, !dbg !2785, !tbaa !1498
  br label %444, !dbg !2787

442:                                              ; preds = %396, %398, %380, %382
  %443 = phi i8* [ %378, %382 ], [ %378, %380 ], [ %394, %398 ], [ %394, %396 ]
  call void @free(i8* %443) #8, !dbg !2663
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1671, metadata !DIExpression()) #10, !dbg !2788
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #8, !dbg !2790
  call void @llvm.dbg.value(metadata i8* %446, metadata !2204, metadata !DIExpression()), !dbg !2227
  br label %448, !dbg !2791

444:                                              ; preds = %435, %438, %441, %367
  %445 = phi i8** [ %368, %367 ], [ %407, %441 ], [ %407, %438 ], [ %407, %435 ]
  %446 = load i8*, i8** %445, align 8, !dbg !2663, !tbaa !1653
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1671, metadata !DIExpression()) #10, !dbg !2788
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #8, !dbg !2790
  call void @llvm.dbg.value(metadata i8* %446, metadata !2204, metadata !DIExpression()), !dbg !2227
  %447 = icmp eq i8* %446, null, !dbg !2792
  br i1 %447, label %448, label %462, !dbg !2791

448:                                              ; preds = %442, %444
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !2794
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !2794
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !2794
  %449 = call i8* @malloc(i64 1024) #8, !dbg !2797
  %450 = icmp eq i8* %449, null, !dbg !2798
  br i1 %450, label %451, label %453, !dbg !2799

451:                                              ; preds = %448
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2800
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2800
  %452 = call i8* @halide_string_to_string(i8* %449, i8* null, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i64 0, i64 0)) #8, !dbg !2802
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !2803
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !2805
  br label %461, !dbg !2806

453:                                              ; preds = %448
  %454 = getelementptr inbounds i8, i8* %449, i64 1023, !dbg !2807
  store i8 0, i8* %454, align 1, !dbg !2808, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2800
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2800
  %455 = call i8* @halide_string_to_string(i8* nonnull %449, i8* nonnull %454, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i64 0, i64 0)) #8, !dbg !2802
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !2803
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !2809
  %456 = ptrtoint i8* %455 to i64, !dbg !2811
  %457 = ptrtoint i8* %449 to i64, !dbg !2811
  %458 = add i64 %456, 1, !dbg !2811
  %459 = sub i64 %458, %457, !dbg !2812
  %460 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %449, i64 %459) #8, !dbg !2813
  call void @halide_print(i8* %0, i8* nonnull %449) #8, !dbg !2814
  br label %461

461:                                              ; preds = %453, %451
  call void @free(i8* %449) #8, !dbg !2815
  br label %845, !dbg !2816

462:                                              ; preds = %444
  %463 = mul nsw i32 %355, %301, !dbg !2817
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !2818
  %464 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !2820
  %465 = load i8, i8* %464, align 1, !dbg !2820, !tbaa !733
  %466 = zext i8 %465 to i32, !dbg !2820
  %467 = add nuw nsw i32 %466, 7, !dbg !2821
  %468 = lshr i32 %467, 3, !dbg !2822
  %469 = mul nsw i32 %463, %468, !dbg !2823
  call void @llvm.dbg.value(metadata i32 %469, metadata !2205, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !2824
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !2824
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !2824
  %470 = call i8* @malloc(i64 1024) #8, !dbg !2826
  %471 = icmp eq i8* %470, null, !dbg !2827
  br i1 %471, label %474, label %472, !dbg !2828

472:                                              ; preds = %462
  %473 = getelementptr inbounds i8, i8* %470, i64 1023, !dbg !2829
  store i8 0, i8* %473, align 1, !dbg !2830, !tbaa !653
  br label %474, !dbg !2831

474:                                              ; preds = %462, %472
  %475 = phi i8* [ %473, %472 ], [ null, %462 ], !dbg !2832
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2833
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2833
  %476 = call i8* @halide_string_to_string(i8* %470, i8* %475, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i64 0, i64 0)) #8, !dbg !2835
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2148, metadata !DIExpression()) #10, !dbg !2836
  call void @llvm.dbg.value(metadata i32 %469, metadata !2151, metadata !DIExpression()) #10, !dbg !2836
  %477 = sext i32 %469 to i64, !dbg !2838
  %478 = call i8* @halide_int64_to_string(i8* %476, i8* %475, i64 %477, i32 1) #8, !dbg !2839
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !2840
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2840
  %479 = call i8* @halide_string_to_string(i8* %478, i8* %475, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !2842
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !2843
  br i1 %471, label %480, label %481, !dbg !2845

480:                                              ; preds = %474
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !2846
  br label %487, !dbg !2847

481:                                              ; preds = %474
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !2848
  %482 = ptrtoint i8* %479 to i64, !dbg !2850
  %483 = ptrtoint i8* %470 to i64, !dbg !2850
  %484 = add i64 %482, 1, !dbg !2850
  %485 = sub i64 %484, %483, !dbg !2851
  %486 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %470, i64 %485) #8, !dbg !2852
  call void @halide_print(i8* %0, i8* nonnull %470) #8, !dbg !2853
  br label %487

487:                                              ; preds = %481, %480
  call void @free(i8* %470) #8, !dbg !2854
  %488 = bitcast %struct.stDmaWrapper_DmaTransferSetup* %7 to i8*, !dbg !2855
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %488) #10, !dbg !2855
  call void @llvm.dbg.declare(metadata %struct.stDmaWrapper_DmaTransferSetup* %7, metadata !2206, metadata !DIExpression()), !dbg !2856
  %489 = load i32, i32* %226, align 8, !dbg !2857, !tbaa !1251
  %490 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i64 0, i32 13, !dbg !2858
  store i32 %489, i32* %490, align 4, !dbg !2859, !tbaa !2860
  %491 = load i32, i32* %46, align 8, !dbg !2863, !tbaa !1265
  %492 = trunc i32 %491 to i16, !dbg !2864
  %493 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i64 0, i32 0, !dbg !2865
  store i16 %492, i16* %493, align 8, !dbg !2866, !tbaa !2867
  %494 = load i32, i32* %51, align 4, !dbg !2868, !tbaa !1268
  %495 = trunc i32 %494 to i16, !dbg !2869
  %496 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i64 0, i32 1, !dbg !2870
  store i16 %495, i16* %496, align 2, !dbg !2871, !tbaa !2872
  %497 = load i32, i32* %56, align 8, !dbg !2873, !tbaa !1271
  %498 = trunc i32 %497 to i16, !dbg !2874
  %499 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i64 0, i32 2, !dbg !2875
  store i16 %498, i16* %499, align 4, !dbg !2876, !tbaa !2877
  %500 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i64 0, i32 5, !dbg !2878
  store i16 %299, i16* %500, align 2, !dbg !2879, !tbaa !2880
  %501 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i64 0, i32 6, !dbg !2881
  store i16 %300, i16* %501, align 4, !dbg !2882, !tbaa !2883
  %502 = trunc i32 %355 to i16, !dbg !2884
  %503 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i64 0, i32 7, !dbg !2885
  store i16 %502, i16* %503, align 2, !dbg !2886, !tbaa !2887
  %504 = load i8, i8* %291, align 4, !dbg !2888, !tbaa !1248, !range !2485
  %505 = zext i8 %504 to i16, !dbg !2889
  %506 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i64 0, i32 11, !dbg !2890
  store i16 %505, i16* %506, align 8, !dbg !2891, !tbaa !2892
  %507 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i64 0, i32 12, !dbg !2893
  store i16 0, i16* %507, align 2, !dbg !2894, !tbaa !2895
  %508 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i64 0, i32 8, !dbg !2896
  store i8* %446, i8** %508, align 8, !dbg !2897, !tbaa !2898
  %509 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 2, !dbg !2899
  %510 = load i8*, i8** %509, align 8, !dbg !2899, !tbaa !708
  %511 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i64 0, i32 9, !dbg !2900
  store i8* %510, i8** %511, align 8, !dbg !2901, !tbaa !2902
  %512 = load i8*, i8** %20, align 8, !dbg !2903, !tbaa !1257
  %513 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i64 0, i32 10, !dbg !2904
  store i8* %512, i8** %513, align 8, !dbg !2905, !tbaa !2906
  %514 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %12, i64 0, i32 10, !dbg !2907
  %515 = load i8, i8* %514, align 1, !dbg !2907, !tbaa !1254, !range !2485
  %516 = icmp eq i8 %515, 0, !dbg !2907
  br i1 %516, label %525, label %517, !dbg !2909

517:                                              ; preds = %487
  %518 = load i16, i16* %35, align 4, !dbg !2910, !tbaa !1238
  %519 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %278, align 8, !dbg !2912, !tbaa !755
  %520 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %519, i64 0, i32 2, !dbg !2913
  %521 = load i32, i32* %520, align 4, !dbg !2913, !tbaa !763
  %522 = trunc i32 %521 to i16, !dbg !2914
  %523 = mul i16 %518, %522, !dbg !2914
  %524 = load i16, i16* %40, align 2, !dbg !2915, !tbaa !1241
  br label %541, !dbg !2916

525:                                              ; preds = %487
  %526 = load i16, i16* %24, align 8, !dbg !2917, !tbaa !1229
  %527 = zext i16 %526 to i32, !dbg !2919
  %528 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %278, align 8, !dbg !2920, !tbaa !755
  %529 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %528, i64 0, i32 0, !dbg !2921
  %530 = load i32, i32* %529, align 4, !dbg !2921, !tbaa !767
  %531 = add nsw i32 %530, %527, !dbg !2922
  %532 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %528, i64 0, i32 2, !dbg !2923
  %533 = load i32, i32* %532, align 4, !dbg !2923, !tbaa !763
  %534 = mul nsw i32 %531, %533, !dbg !2924
  %535 = trunc i32 %534 to i16, !dbg !2925
  %536 = load i16, i16* %29, align 2, !dbg !2926, !tbaa !1235
  %537 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %528, i64 1, i32 0, !dbg !2927
  %538 = load i32, i32* %537, align 4, !dbg !2927, !tbaa !767
  %539 = trunc i32 %538 to i16, !dbg !2928
  %540 = add i16 %536, %539, !dbg !2928
  br label %541

541:                                              ; preds = %525, %517
  %542 = phi %struct.halide_dimension_t* [ %528, %525 ], [ %519, %517 ]
  %543 = phi i32 [ 0, %525 ], [ 1, %517 ], !dbg !2929
  %544 = phi i16 [ %535, %525 ], [ %523, %517 ], !dbg !2929
  %545 = phi i16 [ %540, %525 ], [ %524, %517 ], !dbg !2929
  %546 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i64 0, i32 14, !dbg !2930
  store i32 %543, i32* %546, align 8, !dbg !2931
  %547 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i64 0, i32 3, !dbg !2932
  store i16 %544, i16* %547, align 2, !dbg !2933
  %548 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i64 0, i32 4, !dbg !2934
  store i16 %545, i16* %548, align 8, !dbg !2935
  switch i32 %489, label %640 [
    i32 0, label %549
    i32 3, label %567
    i32 6, label %567
    i32 9, label %567
    i32 12, label %567
  ], !dbg !2936

549:                                              ; preds = %541
  %550 = load i32, i32* %146, align 4, !dbg !2938, !tbaa !752
  %551 = icmp eq i32 %550, 3, !dbg !2939
  br i1 %551, label %552, label %640, !dbg !2940

552:                                              ; preds = %549
  %553 = load i16, i16* %29, align 2, !dbg !2941, !tbaa !1235
  %554 = zext i16 %553 to i32, !dbg !2943
  %555 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %542, i64 1, i32 0, !dbg !2944
  %556 = load i32, i32* %555, align 4, !dbg !2944, !tbaa !767
  %557 = add nsw i32 %556, %554, !dbg !2945
  %558 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %542, i64 2, i32 0, !dbg !2946
  %559 = load i32, i32* %558, align 4, !dbg !2946, !tbaa !767
  %560 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6, !dbg !2947
  %561 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %560, align 8, !dbg !2947, !tbaa !755
  %562 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %561, i64 1, i32 2, !dbg !2948
  %563 = load i32, i32* %562, align 4, !dbg !2948, !tbaa !763
  %564 = mul nsw i32 %563, %559, !dbg !2949
  %565 = add nsw i32 %557, %564, !dbg !2950
  %566 = trunc i32 %565 to i16, !dbg !2943
  store i16 %566, i16* %548, align 8, !dbg !2951, !tbaa !2952
  br label %640, !dbg !2953

567:                                              ; preds = %541, %541, %541, %541
  %568 = shl i16 %300, 1, !dbg !2954
  store i16 %568, i16* %501, align 4, !dbg !2957, !tbaa !2883
  %569 = select i1 %516, i16 %495, i16 0, !dbg !2958
  %570 = sub i16 %545, %569, !dbg !2958
  %571 = shl i16 %570, 1, !dbg !2959
  store i16 %571, i16* %548, align 8, !dbg !2959, !tbaa !2952
  %572 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8 to i8*, !dbg !2961
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %572) #10, !dbg !2961
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !614, metadata !DIExpression()) #10, !dbg !2962
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !2962
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !2962
  %573 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 3, !dbg !2964
  store i8* %0, i8** %573, align 8, !dbg !2964, !tbaa !2330
  %574 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 4, !dbg !2965
  store i8 1, i8* %574, align 8, !dbg !2965, !tbaa !2333
  %575 = call i8* @malloc(i64 1024) #8, !dbg !2966
  %576 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 0, !dbg !2967
  store i8* %575, i8** %576, align 8, !dbg !2968, !tbaa !2337
  %577 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 1, !dbg !2969
  store i8* %575, i8** %577, align 8, !dbg !2970, !tbaa !2352
  %578 = icmp eq i8* %575, null, !dbg !2971
  br i1 %578, label %581, label %579, !dbg !2972

579:                                              ; preds = %567
  %580 = getelementptr inbounds i8, i8* %575, i64 1023, !dbg !2973
  store i8 0, i8* %580, align 1, !dbg !2974, !tbaa !653
  br label %581, !dbg !2975

581:                                              ; preds = %567, %579
  %582 = phi i8* [ %580, %579 ], [ null, %567 ], !dbg !2976
  %583 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 2, !dbg !2977
  store i8* %582, i8** %583, align 8, !dbg !2978
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !631, metadata !DIExpression()) #10, !dbg !2979
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.86, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2979
  %584 = call i8* @halide_string_to_string(i8* %575, i8* %582, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.86, i64 0, i64 0)) #8, !dbg !2981
  store i8* %584, i8** %577, align 8, !dbg !2982, !tbaa !2352
  %585 = load i16, i16* %547, align 2, !dbg !2983, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !2148, metadata !DIExpression()) #10, !dbg !2985
  call void @llvm.dbg.value(metadata i16 %585, metadata !2151, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2985
  %586 = load i8*, i8** %583, align 8, !dbg !2987, !tbaa !2408
  %587 = zext i16 %585 to i64, !dbg !2988
  %588 = call i8* @halide_int64_to_string(i8* %584, i8* %586, i64 %587, i32 1) #8, !dbg !2989
  store i8* %588, i8** %577, align 8, !dbg !2990, !tbaa !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !631, metadata !DIExpression()) #10, !dbg !2991
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !2991
  %589 = load i8*, i8** %583, align 8, !dbg !2993, !tbaa !2408
  %590 = call i8* @halide_string_to_string(i8* %588, i8* %589, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0)) #8, !dbg !2994
  store i8* %590, i8** %577, align 8, !dbg !2995, !tbaa !2352
  %591 = load i16, i16* %548, align 8, !dbg !2996, !tbaa !2952
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !2148, metadata !DIExpression()) #10, !dbg !2997
  call void @llvm.dbg.value(metadata i16 %591, metadata !2151, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2997
  %592 = load i8*, i8** %583, align 8, !dbg !2999, !tbaa !2408
  %593 = zext i16 %591 to i64, !dbg !3000
  %594 = call i8* @halide_int64_to_string(i8* %590, i8* %592, i64 %593, i32 1) #8, !dbg !3001
  store i8* %594, i8** %577, align 8, !dbg !3002, !tbaa !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !631, metadata !DIExpression()) #10, !dbg !3003
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3003
  %595 = load i8*, i8** %583, align 8, !dbg !3005, !tbaa !2408
  %596 = call i8* @halide_string_to_string(i8* %594, i8* %595, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0)) #8, !dbg !3006
  store i8* %596, i8** %577, align 8, !dbg !3007, !tbaa !2352
  %597 = load i16, i16* %500, align 2, !dbg !3008, !tbaa !2880
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !2148, metadata !DIExpression()) #10, !dbg !3009
  call void @llvm.dbg.value(metadata i16 %597, metadata !2151, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !3009
  %598 = load i8*, i8** %583, align 8, !dbg !3011, !tbaa !2408
  %599 = zext i16 %597 to i64, !dbg !3012
  %600 = call i8* @halide_int64_to_string(i8* %596, i8* %598, i64 %599, i32 1) #8, !dbg !3013
  store i8* %600, i8** %577, align 8, !dbg !3014, !tbaa !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !631, metadata !DIExpression()) #10, !dbg !3015
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3015
  %601 = load i8*, i8** %583, align 8, !dbg !3017, !tbaa !2408
  %602 = call i8* @halide_string_to_string(i8* %600, i8* %601, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i64 0, i64 0)) #8, !dbg !3018
  store i8* %602, i8** %577, align 8, !dbg !3019, !tbaa !2352
  %603 = load i16, i16* %501, align 4, !dbg !3020, !tbaa !2883
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !2148, metadata !DIExpression()) #10, !dbg !3021
  call void @llvm.dbg.value(metadata i16 %603, metadata !2151, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !3021
  %604 = load i8*, i8** %583, align 8, !dbg !3023, !tbaa !2408
  %605 = zext i16 %603 to i64, !dbg !3024
  %606 = call i8* @halide_int64_to_string(i8* %602, i8* %604, i64 %605, i32 1) #8, !dbg !3025
  store i8* %606, i8** %577, align 8, !dbg !3026, !tbaa !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !631, metadata !DIExpression()) #10, !dbg !3027
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3027
  %607 = load i8*, i8** %583, align 8, !dbg !3029, !tbaa !2408
  %608 = call i8* @halide_string_to_string(i8* %606, i8* %607, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #8, !dbg !3030
  store i8* %608, i8** %577, align 8, !dbg !3031, !tbaa !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !631, metadata !DIExpression()) #10, !dbg !3032
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3032
  %609 = load i8*, i8** %583, align 8, !dbg !3034, !tbaa !2408
  %610 = call i8* @halide_string_to_string(i8* %608, i8* %609, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i64 0, i64 0)) #8, !dbg !3035
  store i8* %610, i8** %577, align 8, !dbg !3036, !tbaa !2352
  %611 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %278, align 8, !dbg !3037, !tbaa !755
  %612 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %611, i64 1, i32 0, !dbg !3038
  %613 = load i32, i32* %612, align 4, !dbg !3038, !tbaa !767
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !2148, metadata !DIExpression()) #10, !dbg !3039
  call void @llvm.dbg.value(metadata i32 %613, metadata !2151, metadata !DIExpression()) #10, !dbg !3039
  %614 = load i8*, i8** %583, align 8, !dbg !3041, !tbaa !2408
  %615 = sext i32 %613 to i64, !dbg !3042
  %616 = call i8* @halide_int64_to_string(i8* %610, i8* %614, i64 %615, i32 1) #8, !dbg !3043
  store i8* %616, i8** %577, align 8, !dbg !3044, !tbaa !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !631, metadata !DIExpression()) #10, !dbg !3045
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3045
  %617 = load i8*, i8** %583, align 8, !dbg !3047, !tbaa !2408
  %618 = call i8* @halide_string_to_string(i8* %616, i8* %617, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !3048
  store i8* %618, i8** %577, align 8, !dbg !3049, !tbaa !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !640, metadata !DIExpression()) #10, !dbg !3050
  %619 = load i8*, i8** %576, align 8, !dbg !3052, !tbaa !2337
  %620 = icmp eq i8* %619, null, !dbg !3052
  %621 = load i8*, i8** %573, align 8, !dbg !3053, !tbaa !2330
  br i1 %620, label %622, label %623, !dbg !3054

622:                                              ; preds = %581
  call void @halide_error(i8* %621, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3055
  br label %631, !dbg !3056

623:                                              ; preds = %581
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3057
  %624 = ptrtoint i8* %618 to i64, !dbg !3059
  %625 = ptrtoint i8* %619 to i64, !dbg !3059
  %626 = add i64 %624, 1, !dbg !3059
  %627 = sub i64 %626, %625, !dbg !3060
  %628 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %621, i8* nonnull %619, i64 %627) #8, !dbg !3061
  %629 = load i8*, i8** %573, align 8, !dbg !3062, !tbaa !2330
  %630 = load i8*, i8** %576, align 8, !dbg !3063, !tbaa !2337
  call void @halide_print(i8* %629, i8* %630) #8, !dbg !3064
  br label %631

631:                                              ; preds = %623, %622
  %632 = load i8, i8* %574, align 8, !dbg !3065, !tbaa !2333, !range !2485
  %633 = icmp eq i8 %632, 0, !dbg !3065
  br i1 %633, label %639, label %634, !dbg !3066

634:                                              ; preds = %631
  %635 = load i8*, i8** %576, align 8, !dbg !3067, !tbaa !2337
  %636 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i64 0, i32 5, i64 0, !dbg !3068
  %637 = icmp eq i8* %635, %636, !dbg !3069
  br i1 %637, label %639, label %638, !dbg !3070

638:                                              ; preds = %634
  call void @free(i8* %635) #8, !dbg !3071
  br label %639, !dbg !3072

639:                                              ; preds = %631, %634, %638
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %572) #10, !dbg !2961
  br label %640, !dbg !3073

640:                                              ; preds = %541, %549, %552, %639
  %641 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %12, i64 0, i32 5, !dbg !3074
  %642 = load i8*, i8** %641, align 8, !dbg !3074, !tbaa !1259
  %643 = call i8* @halide_hexagon_allocate_from_dma_pool(i8* %0, i8* %642) #8, !dbg !3075
  call void @llvm.dbg.value(metadata i8* %643, metadata !2226, metadata !DIExpression()), !dbg !2227
  %644 = icmp eq i8* %643, null, !dbg !3076
  br i1 %644, label %645, label %658, !dbg !3078

645:                                              ; preds = %640
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !3079
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !3079
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !3079
  %646 = call i8* @malloc(i64 1024) #8, !dbg !3082
  %647 = icmp eq i8* %646, null, !dbg !3083
  br i1 %647, label %648, label %650, !dbg !3084

648:                                              ; preds = %645
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3085
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.91, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3085
  %649 = call i8* @halide_string_to_string(i8* %646, i8* null, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.91, i64 0, i64 0)) #8, !dbg !3087
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !3088
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3090
  br label %840, !dbg !3091

650:                                              ; preds = %645
  %651 = getelementptr inbounds i8, i8* %646, i64 1023, !dbg !3092
  store i8 0, i8* %651, align 1, !dbg !3093, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3085
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.91, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3085
  %652 = call i8* @halide_string_to_string(i8* nonnull %646, i8* nonnull %651, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.91, i64 0, i64 0)) #8, !dbg !3087
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !3088
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3094
  %653 = ptrtoint i8* %652 to i64, !dbg !3096
  %654 = ptrtoint i8* %646 to i64, !dbg !3096
  %655 = add i64 %653, 1, !dbg !3096
  %656 = sub i64 %655, %654, !dbg !3097
  %657 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %646, i64 %656) #8, !dbg !3098
  call void @halide_print(i8* %0, i8* nonnull %646) #8, !dbg !3099
  br label %840

658:                                              ; preds = %640
  %659 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9 to i8*, !dbg !3100
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %659) #10, !dbg !3100
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !614, metadata !DIExpression()) #10, !dbg !3101
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !3101
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !3101
  %660 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 3, !dbg !3103
  store i8* %0, i8** %660, align 8, !dbg !3103, !tbaa !2330
  %661 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 4, !dbg !3104
  store i8 1, i8* %661, align 8, !dbg !3104, !tbaa !2333
  %662 = call i8* @malloc(i64 1024) #8, !dbg !3105
  %663 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 0, !dbg !3106
  store i8* %662, i8** %663, align 8, !dbg !3107, !tbaa !2337
  %664 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 1, !dbg !3108
  %665 = icmp eq i8* %662, null, !dbg !3109
  br i1 %665, label %668, label %666, !dbg !3110

666:                                              ; preds = %658
  %667 = getelementptr inbounds i8, i8* %662, i64 1023, !dbg !3111
  store i8 0, i8* %667, align 1, !dbg !3112, !tbaa !653
  br label %668, !dbg !3113

668:                                              ; preds = %658, %666
  %669 = phi i8* [ %667, %666 ], [ null, %658 ], !dbg !3114
  %670 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 2, !dbg !3115
  store i8* %669, i8** %670, align 8, !dbg !3116
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !631, metadata !DIExpression()) #10, !dbg !3117
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3117
  %671 = call i8* @halide_string_to_string(i8* %662, i8* %669, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !3119
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !911, metadata !DIExpression()) #10, !dbg !3120
  call void @llvm.dbg.value(metadata i8* %643, metadata !914, metadata !DIExpression()) #10, !dbg !3120
  %672 = call i8* @halide_pointer_to_string(i8* %671, i8* %669, i8* nonnull %643) #8, !dbg !3122
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !631, metadata !DIExpression()) #10, !dbg !3123
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3123
  %673 = call i8* @halide_string_to_string(i8* %672, i8* %669, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i64 0, i64 0)) #8, !dbg !3125
  %674 = load i8*, i8** %508, align 8, !dbg !3126, !tbaa !2898
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !911, metadata !DIExpression()) #10, !dbg !3127
  call void @llvm.dbg.value(metadata i8* %674, metadata !914, metadata !DIExpression()) #10, !dbg !3127
  %675 = call i8* @halide_pointer_to_string(i8* %673, i8* %669, i8* %674) #8, !dbg !3129
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !631, metadata !DIExpression()) #10, !dbg !3130
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3130
  %676 = call i8* @halide_string_to_string(i8* %675, i8* %669, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !3132
  store i8* %676, i8** %664, align 8, !dbg !3133, !tbaa !2352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !640, metadata !DIExpression()) #10, !dbg !3134
  %677 = load i8*, i8** %663, align 8, !dbg !3136, !tbaa !2337
  %678 = icmp eq i8* %677, null, !dbg !3136
  %679 = load i8*, i8** %660, align 8, !dbg !3137, !tbaa !2330
  br i1 %678, label %680, label %681, !dbg !3138

680:                                              ; preds = %668
  call void @halide_error(i8* %679, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3139
  br label %688, !dbg !3140

681:                                              ; preds = %668
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3141
  %682 = ptrtoint i8* %676 to i64, !dbg !3143
  %683 = ptrtoint i8* %677 to i64, !dbg !3143
  %684 = add i64 %682, 1, !dbg !3143
  %685 = sub i64 %684, %683, !dbg !3144
  %686 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %679, i8* nonnull %677, i64 %685) #8, !dbg !3145
  %687 = load i8*, i8** %663, align 8, !dbg !3146, !tbaa !2337
  call void @halide_print(i8* %679, i8* %687) #8, !dbg !3147
  br label %688

688:                                              ; preds = %681, %680
  %689 = load i8, i8* %661, align 8, !dbg !3148, !tbaa !2333, !range !2485
  %690 = icmp eq i8 %689, 0, !dbg !3148
  br i1 %690, label %693, label %691, !dbg !3149

691:                                              ; preds = %688
  %692 = load i8*, i8** %663, align 8, !dbg !3150, !tbaa !2337
  call void @free(i8* %692) #8, !dbg !3151
  br label %693, !dbg !3152

693:                                              ; preds = %688, %691
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %659) #10, !dbg !3100
  %694 = call i32 @nDmaWrapper_DmaTransferSetup(i8* nonnull %643, %struct.stDmaWrapper_DmaTransferSetup* nonnull %7) #8, !dbg !3153
  call void @llvm.dbg.value(metadata i32 %694, metadata !2200, metadata !DIExpression()), !dbg !2227
  %695 = icmp eq i32 %694, 0, !dbg !3154
  %696 = call i8* @malloc(i64 1024) #8, !dbg !2227
  %697 = icmp eq i8* %696, null, !dbg !2227
  br i1 %695, label %714, label %698, !dbg !3156

698:                                              ; preds = %693
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !3157
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()) #10, !dbg !3157
  call void @llvm.dbg.value(metadata i8* null, metadata !1055, metadata !DIExpression()) #10, !dbg !3157
  br i1 %697, label %701, label %699, !dbg !3160

699:                                              ; preds = %698
  %700 = getelementptr inbounds i8, i8* %696, i64 1023, !dbg !3161
  store i8 0, i8* %700, align 1, !dbg !3162, !tbaa !653
  br label %701, !dbg !3163

701:                                              ; preds = %698, %699
  %702 = phi i8* [ %700, %699 ], [ null, %698 ], !dbg !3164
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !3165
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !3165
  %703 = call i8* @halide_string_to_string(i8* %696, i8* %702, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i64 0, i64 0)) #8, !dbg !3167
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1842, metadata !DIExpression()) #10, !dbg !3168
  call void @llvm.dbg.value(metadata i32 %694, metadata !1845, metadata !DIExpression()) #10, !dbg !3168
  %704 = sext i32 %694 to i64, !dbg !3170
  %705 = call i8* @halide_int64_to_string(i8* %703, i8* %702, i64 %704, i32 1) #8, !dbg !3171
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !3172
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !3172
  %706 = call i8* @halide_string_to_string(i8* %705, i8* %702, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !3174
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !3175
  br i1 %697, label %707, label %708, !dbg !3177

707:                                              ; preds = %701
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3178
  br label %840, !dbg !3179

708:                                              ; preds = %701
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1090, metadata !DIExpression()) #10, !dbg !3180
  %709 = ptrtoint i8* %706 to i64, !dbg !3182
  %710 = ptrtoint i8* %696 to i64, !dbg !3182
  %711 = add i64 %709, 1, !dbg !3182
  %712 = sub i64 %711, %710, !dbg !3183
  %713 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %696, i64 %712) #8, !dbg !3184
  call void @halide_error(i8* %0, i8* nonnull %696) #8, !dbg !3185
  br label %840

714:                                              ; preds = %693
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !3186
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !3186
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !3186
  br i1 %697, label %717, label %715, !dbg !3188

715:                                              ; preds = %714
  %716 = getelementptr inbounds i8, i8* %696, i64 1023, !dbg !3189
  store i8 0, i8* %716, align 1, !dbg !3190, !tbaa !653
  br label %717, !dbg !3191

717:                                              ; preds = %714, %715
  %718 = phi i8* [ %716, %715 ], [ null, %714 ], !dbg !3192
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3193
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3193
  %719 = call i8* @halide_string_to_string(i8* %696, i8* %718, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !3195
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3196
  call void @llvm.dbg.value(metadata i8* %643, metadata !914, metadata !DIExpression()) #10, !dbg !3196
  %720 = call i8* @halide_pointer_to_string(i8* %719, i8* %718, i8* nonnull %643) #8, !dbg !3198
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3199
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3199
  %721 = call i8* @halide_string_to_string(i8* %720, i8* %718, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0)) #8, !dbg !3201
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !3202
  br i1 %697, label %722, label %723, !dbg !3204

722:                                              ; preds = %717
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3205
  br label %729, !dbg !3206

723:                                              ; preds = %717
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3207
  %724 = ptrtoint i8* %721 to i64, !dbg !3209
  %725 = ptrtoint i8* %696 to i64, !dbg !3209
  %726 = add i64 %724, 1, !dbg !3209
  %727 = sub i64 %726, %725, !dbg !3210
  %728 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %696, i64 %727) #8, !dbg !3211
  call void @halide_print(i8* %0, i8* nonnull %696) #8, !dbg !3212
  br label %729

729:                                              ; preds = %723, %722
  call void @free(i8* %696) #8, !dbg !3213
  %730 = call i32 @nDmaWrapper_Move(i8* nonnull %643) #8, !dbg !3214
  call void @llvm.dbg.value(metadata i32 %730, metadata !2200, metadata !DIExpression()), !dbg !2227
  %731 = icmp eq i32 %730, 0, !dbg !3215
  %732 = call i8* @malloc(i64 1024) #8, !dbg !2227
  %733 = icmp eq i8* %732, null, !dbg !2227
  br i1 %731, label %750, label %734, !dbg !3217

734:                                              ; preds = %729
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !3218
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()) #10, !dbg !3218
  call void @llvm.dbg.value(metadata i8* null, metadata !1055, metadata !DIExpression()) #10, !dbg !3218
  br i1 %733, label %737, label %735, !dbg !3221

735:                                              ; preds = %734
  %736 = getelementptr inbounds i8, i8* %732, i64 1023, !dbg !3222
  store i8 0, i8* %736, align 1, !dbg !3223, !tbaa !653
  br label %737, !dbg !3224

737:                                              ; preds = %734, %735
  %738 = phi i8* [ %736, %735 ], [ null, %734 ], !dbg !3225
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !3226
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !3226
  %739 = call i8* @halide_string_to_string(i8* %732, i8* %738, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i64 0, i64 0)) #8, !dbg !3228
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1842, metadata !DIExpression()) #10, !dbg !3229
  call void @llvm.dbg.value(metadata i32 %730, metadata !1845, metadata !DIExpression()) #10, !dbg !3229
  %740 = sext i32 %730 to i64, !dbg !3231
  %741 = call i8* @halide_int64_to_string(i8* %739, i8* %738, i64 %740, i32 1) #8, !dbg !3232
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !3233
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !3233
  %742 = call i8* @halide_string_to_string(i8* %741, i8* %738, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !3235
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !3236
  br i1 %733, label %743, label %744, !dbg !3238

743:                                              ; preds = %737
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3239
  br label %840, !dbg !3240

744:                                              ; preds = %737
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1090, metadata !DIExpression()) #10, !dbg !3241
  %745 = ptrtoint i8* %742 to i64, !dbg !3243
  %746 = ptrtoint i8* %732 to i64, !dbg !3243
  %747 = add i64 %745, 1, !dbg !3243
  %748 = sub i64 %747, %746, !dbg !3244
  %749 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %732, i64 %748) #8, !dbg !3245
  call void @halide_error(i8* %0, i8* nonnull %732) #8, !dbg !3246
  br label %840

750:                                              ; preds = %729
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !3247
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !3247
  br i1 %733, label %753, label %751, !dbg !3249

751:                                              ; preds = %750
  %752 = getelementptr inbounds i8, i8* %732, i64 1023, !dbg !3250
  store i8 0, i8* %752, align 1, !dbg !3251, !tbaa !653
  br label %753, !dbg !3252

753:                                              ; preds = %750, %751
  %754 = phi i8* [ %752, %751 ], [ null, %750 ], !dbg !3253
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3254
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3254
  %755 = call i8* @halide_string_to_string(i8* %732, i8* %754, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !3256
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3257
  call void @llvm.dbg.value(metadata i8* %643, metadata !914, metadata !DIExpression()) #10, !dbg !3257
  %756 = call i8* @halide_pointer_to_string(i8* %755, i8* %754, i8* nonnull %643) #8, !dbg !3259
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3260
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3260
  %757 = call i8* @halide_string_to_string(i8* %756, i8* %754, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i64 0, i64 0)) #8, !dbg !3262
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !3263
  br i1 %733, label %758, label %759, !dbg !3265

758:                                              ; preds = %753
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3266
  br label %765, !dbg !3267

759:                                              ; preds = %753
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3268
  %760 = ptrtoint i8* %757 to i64, !dbg !3270
  %761 = ptrtoint i8* %732 to i64, !dbg !3270
  %762 = add i64 %760, 1, !dbg !3270
  %763 = sub i64 %762, %761, !dbg !3271
  %764 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %732, i64 %763) #8, !dbg !3272
  call void @halide_print(i8* %0, i8* nonnull %732) #8, !dbg !3273
  br label %765

765:                                              ; preds = %759, %758
  call void @free(i8* %732) #8, !dbg !3274
  %766 = call i32 @nDmaWrapper_Wait(i8* nonnull %643) #8, !dbg !3275
  call void @llvm.dbg.value(metadata i32 %766, metadata !2200, metadata !DIExpression()), !dbg !2227
  %767 = icmp eq i32 %766, 0, !dbg !3276
  br i1 %767, label %786, label %768, !dbg !3278

768:                                              ; preds = %765
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !3279
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()) #10, !dbg !3279
  call void @llvm.dbg.value(metadata i8* null, metadata !1055, metadata !DIExpression()) #10, !dbg !3279
  %769 = call i8* @malloc(i64 1024) #8, !dbg !3282
  %770 = icmp eq i8* %769, null, !dbg !3283
  br i1 %770, label %773, label %771, !dbg !3284

771:                                              ; preds = %768
  %772 = getelementptr inbounds i8, i8* %769, i64 1023, !dbg !3285
  store i8 0, i8* %772, align 1, !dbg !3286, !tbaa !653
  br label %773, !dbg !3287

773:                                              ; preds = %768, %771
  %774 = phi i8* [ %772, %771 ], [ null, %768 ], !dbg !3288
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !3289
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.98, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !3289
  %775 = call i8* @halide_string_to_string(i8* %769, i8* %774, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.98, i64 0, i64 0)) #8, !dbg !3291
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1842, metadata !DIExpression()) #10, !dbg !3292
  call void @llvm.dbg.value(metadata i32 %766, metadata !1845, metadata !DIExpression()) #10, !dbg !3292
  %776 = sext i32 %766 to i64, !dbg !3294
  %777 = call i8* @halide_int64_to_string(i8* %775, i8* %774, i64 %776, i32 1) #8, !dbg !3295
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !3296
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !3296
  %778 = call i8* @halide_string_to_string(i8* %777, i8* %774, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !3298
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !3299
  br i1 %770, label %779, label %780, !dbg !3301

779:                                              ; preds = %773
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3302
  br label %840, !dbg !3303

780:                                              ; preds = %773
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1090, metadata !DIExpression()) #10, !dbg !3304
  %781 = ptrtoint i8* %778 to i64, !dbg !3306
  %782 = ptrtoint i8* %769 to i64, !dbg !3306
  %783 = add i64 %781, 1, !dbg !3306
  %784 = sub i64 %783, %782, !dbg !3307
  %785 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %769, i64 %784) #8, !dbg !3308
  call void @halide_error(i8* %0, i8* nonnull %769) #8, !dbg !3309
  br label %840

786:                                              ; preds = %765
  call void @llvm.dbg.value(metadata i8* %0, metadata !3310, metadata !DIExpression()) #10, !dbg !3316
  call void @llvm.dbg.value(metadata i8* %446, metadata !3313, metadata !DIExpression()) #10, !dbg !3316
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1635, metadata !DIExpression()) #10, !dbg !3318
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE, metadata !1638, metadata !DIExpression()) #10, !dbg !3318
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE, metadata !3314, metadata !DIExpression()) #10, !dbg !3316
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #8, !dbg !3320
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* undef, metadata !3315, metadata !DIExpression()) #10, !dbg !3316
  %787 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 8, !dbg !3316, !tbaa !1498
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %787, metadata !3315, metadata !DIExpression()) #10, !dbg !3316
  %788 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %787, null, !dbg !3321
  br i1 %788, label %800, label %789, !dbg !3322

789:                                              ; preds = %786, %796
  %790 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ %798, %796 ], [ %787, %786 ]
  %791 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %790, i64 0, i32 0, !dbg !3323
  %792 = load i8*, i8** %791, align 8, !dbg !3323, !tbaa !1653
  %793 = icmp eq i8* %792, %446, !dbg !3326
  br i1 %793, label %794, label %796, !dbg !3327

794:                                              ; preds = %789
  %795 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %790, i64 0, i32 1, !dbg !3328
  store i8 0, i8* %795, align 8, !dbg !3330, !tbaa !2673
  br label %818, !dbg !3331

796:                                              ; preds = %789
  %797 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %790, i64 0, i32 2, !dbg !3332
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* undef, metadata !3315, metadata !DIExpression()) #10, !dbg !3316
  %798 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %797, align 8, !dbg !3316, !tbaa !1498
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %798, metadata !3315, metadata !DIExpression()) #10, !dbg !3316
  %799 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %798, null, !dbg !3321
  br i1 %799, label %800, label %789, !dbg !3322, !llvm.loop !3333

800:                                              ; preds = %796, %786
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !3335
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()) #10, !dbg !3335
  call void @llvm.dbg.value(metadata i8* null, metadata !1055, metadata !DIExpression()) #10, !dbg !3335
  %801 = call i8* @malloc(i64 1024) #8, !dbg !3337
  %802 = icmp eq i8* %801, null, !dbg !3338
  br i1 %802, label %805, label %803, !dbg !3339

803:                                              ; preds = %800
  %804 = getelementptr inbounds i8, i8* %801, i64 1023, !dbg !3340
  store i8 0, i8* %804, align 1, !dbg !3341, !tbaa !653
  br label %805, !dbg !3342

805:                                              ; preds = %803, %800
  %806 = phi i8* [ %804, %803 ], [ null, %800 ], !dbg !3343
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !3344
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.104, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !3344
  %807 = call i8* @halide_string_to_string(i8* %801, i8* %806, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.104, i64 0, i64 0)) #8, !dbg !3346
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !3347, metadata !DIExpression()) #10, !dbg !3351
  call void @llvm.dbg.value(metadata i8* %446, metadata !3350, metadata !DIExpression()) #10, !dbg !3351
  %808 = call i8* @halide_pointer_to_string(i8* %807, i8* %806, i8* nonnull %446) #8, !dbg !3353
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !3354
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !3354
  %809 = call i8* @halide_string_to_string(i8* %808, i8* %806, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !3356
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !3357
  br i1 %802, label %810, label %811, !dbg !3359

810:                                              ; preds = %805
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3360
  br label %817, !dbg !3361

811:                                              ; preds = %805
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1090, metadata !DIExpression()) #10, !dbg !3362
  %812 = ptrtoint i8* %809 to i64, !dbg !3364
  %813 = ptrtoint i8* %801 to i64, !dbg !3364
  %814 = sub i64 1, %813, !dbg !3364
  %815 = add i64 %814, %812, !dbg !3365
  %816 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %801, i64 %815) #8, !dbg !3366
  call void @halide_error(i8* %0, i8* nonnull %801) #8, !dbg !3367
  br label %817

817:                                              ; preds = %811, %810
  call void @free(i8* %801) #8, !dbg !3368
  br label %818, !dbg !3369

818:                                              ; preds = %794, %817
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1671, metadata !DIExpression()) #10, !dbg !3370
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #8, !dbg !3372
  %819 = load i8*, i8** %641, align 8, !dbg !3373, !tbaa !1259
  %820 = call i32 @halide_hexagon_free_to_dma_pool(i8* %0, i8* nonnull %643, i8* %819) #8, !dbg !3374
  call void @llvm.dbg.value(metadata i32 %820, metadata !2200, metadata !DIExpression()), !dbg !2227
  %821 = icmp eq i32 %820, 0, !dbg !3375
  br i1 %821, label %843, label %822, !dbg !3377

822:                                              ; preds = %818
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !3378
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !3378
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !3378
  %823 = call i8* @malloc(i64 1024) #8, !dbg !3381
  %824 = icmp eq i8* %823, null, !dbg !3382
  br i1 %824, label %827, label %825, !dbg !3383

825:                                              ; preds = %822
  %826 = getelementptr inbounds i8, i8* %823, i64 1023, !dbg !3384
  store i8 0, i8* %826, align 1, !dbg !3385, !tbaa !653
  br label %827, !dbg !3386

827:                                              ; preds = %822, %825
  %828 = phi i8* [ %826, %825 ], [ null, %822 ], !dbg !3387
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3388
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.99, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3388
  %829 = call i8* @halide_string_to_string(i8* %823, i8* %828, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.99, i64 0, i64 0)) #8, !dbg !3390
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2148, metadata !DIExpression()) #10, !dbg !3391
  call void @llvm.dbg.value(metadata i32 %820, metadata !2151, metadata !DIExpression()) #10, !dbg !3391
  %830 = sext i32 %820 to i64, !dbg !3393
  %831 = call i8* @halide_int64_to_string(i8* %829, i8* %828, i64 %830, i32 1) #8, !dbg !3394
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3395
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3395
  %832 = call i8* @halide_string_to_string(i8* %831, i8* %828, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !3397
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !3398
  br i1 %824, label %833, label %834, !dbg !3400

833:                                              ; preds = %827
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3401
  br label %840, !dbg !3402

834:                                              ; preds = %827
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3403
  %835 = ptrtoint i8* %832 to i64, !dbg !3405
  %836 = ptrtoint i8* %823 to i64, !dbg !3405
  %837 = add i64 %835, 1, !dbg !3405
  %838 = sub i64 %837, %836, !dbg !3406
  %839 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %823, i64 %838) #8, !dbg !3407
  call void @halide_print(i8* %0, i8* nonnull %823) #8, !dbg !3408
  br label %840

840:                                              ; preds = %833, %834, %779, %780, %743, %744, %707, %708, %648, %650
  %841 = phi i8* [ %646, %650 ], [ %646, %648 ], [ %696, %708 ], [ %696, %707 ], [ %732, %744 ], [ %732, %743 ], [ %769, %780 ], [ %769, %779 ], [ %823, %834 ], [ %823, %833 ]
  %842 = phi i32 [ -39, %650 ], [ -39, %648 ], [ -39, %708 ], [ -39, %707 ], [ -39, %744 ], [ -39, %743 ], [ -39, %780 ], [ -39, %779 ], [ %820, %834 ], [ %820, %833 ]
  call void @free(i8* %841) #8, !dbg !2227
  br label %843, !dbg !3409

843:                                              ; preds = %840, %818
  %844 = phi i32 [ 0, %818 ], [ %842, %840 ], !dbg !2227
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %488) #10, !dbg !3409
  br label %845

845:                                              ; preds = %843, %461
  %846 = phi i32 [ -39, %461 ], [ %844, %843 ], !dbg !2227
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %276) #10, !dbg !3409
  ret i32 %846, !dbg !3409
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3410 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3412, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3413, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !3415
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !3415
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !3415
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !3417
  %4 = icmp eq i8* %3, null, !dbg !3418
  br i1 %4, label %7, label %5, !dbg !3419

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !3420
  store i8 0, i8* %6, align 1, !dbg !3421, !tbaa !653
  br label %7, !dbg !3422

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !3423
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3424
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.34, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3424
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !3426
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3427
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3427
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !3429
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3430
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3430
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3432
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3433
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3433
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3435
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3436
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3436
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3438
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !3439
  br i1 %4, label %14, label %15, !dbg !3441

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3442
  br label %21, !dbg !3443

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3444
  %16 = ptrtoint i8* %13 to i64, !dbg !3446
  %17 = ptrtoint i8* %3 to i64, !dbg !3446
  %18 = add i64 %16, 1, !dbg !3446
  %19 = sub i64 %18, %17, !dbg !3447
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %19) #8, !dbg !3448
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !3449
  br label %21

21:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !3450
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !3451
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()) #10, !dbg !3451
  call void @llvm.dbg.value(metadata i8* null, metadata !1055, metadata !DIExpression()) #10, !dbg !3451
  %22 = call i8* @malloc(i64 1024) #8, !dbg !3453
  %23 = icmp eq i8* %22, null, !dbg !3454
  br i1 %23, label %24, label %26, !dbg !3455

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !3456
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !3456
  %25 = call i8* @halide_string_to_string(i8* %22, i8* null, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i64 0, i64 0)) #8, !dbg !3458
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !3459
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3461
  br label %34, !dbg !3462

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* %22, i64 1023, !dbg !3463
  store i8 0, i8* %27, align 1, !dbg !3464, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !3456
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !3456
  %28 = call i8* @halide_string_to_string(i8* nonnull %22, i8* nonnull %27, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i64 0, i64 0)) #8, !dbg !3458
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !3459
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1090, metadata !DIExpression()) #10, !dbg !3465
  %29 = ptrtoint i8* %28 to i64, !dbg !3467
  %30 = ptrtoint i8* %22 to i64, !dbg !3467
  %31 = add i64 %29, 1, !dbg !3467
  %32 = sub i64 %31, %30, !dbg !3468
  %33 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %22, i64 %32) #8, !dbg !3469
  call void @halide_error(i8* %0, i8* nonnull %22) #8, !dbg !3470
  br label %34

34:                                               ; preds = %26, %24
  call void @free(i8* %22) #8, !dbg !3471
  ret i32 -15, !dbg !3472
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3473 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3475, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3476, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !3478
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !3478
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !3478
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !3480
  %4 = icmp eq i8* %3, null, !dbg !3481
  br i1 %4, label %7, label %5, !dbg !3482

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !3483
  store i8 0, i8* %6, align 1, !dbg !3484, !tbaa !653
  br label %7, !dbg !3485

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !3486
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3487
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.36, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3487
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.36, i64 0, i64 0)) #8, !dbg !3489
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3490
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3490
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !3492
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3493
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3493
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3495
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3496
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3496
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3498
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3499
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3499
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3501
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !3502
  br i1 %4, label %14, label %15, !dbg !3504

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3505
  br label %21, !dbg !3506

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3507
  %16 = ptrtoint i8* %13 to i64, !dbg !3509
  %17 = ptrtoint i8* %3 to i64, !dbg !3509
  %18 = add i64 %16, 1, !dbg !3509
  %19 = sub i64 %18, %17, !dbg !3510
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %19) #8, !dbg !3511
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !3512
  br label %21

21:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !3513
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !3514
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()) #10, !dbg !3514
  call void @llvm.dbg.value(metadata i8* null, metadata !1055, metadata !DIExpression()) #10, !dbg !3514
  %22 = call i8* @malloc(i64 1024) #8, !dbg !3516
  %23 = icmp eq i8* %22, null, !dbg !3517
  br i1 %23, label %24, label %26, !dbg !3518

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !3519
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !3519
  %25 = call i8* @halide_string_to_string(i8* %22, i8* null, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !3521
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !3522
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3524
  br label %34, !dbg !3525

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* %22, i64 1023, !dbg !3526
  store i8 0, i8* %27, align 1, !dbg !3527, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !3519
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !3519
  %28 = call i8* @halide_string_to_string(i8* nonnull %22, i8* nonnull %27, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !3521
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !3522
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1090, metadata !DIExpression()) #10, !dbg !3528
  %29 = ptrtoint i8* %28 to i64, !dbg !3530
  %30 = ptrtoint i8* %22 to i64, !dbg !3530
  %31 = add i64 %29, 1, !dbg !3530
  %32 = sub i64 %31, %30, !dbg !3531
  %33 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %22, i64 %32) #8, !dbg !3532
  call void @halide_error(i8* %0, i8* nonnull %22) #8, !dbg !3533
  br label %34

34:                                               ; preds = %26, %24
  call void @free(i8* %22) #8, !dbg !3534
  ret i32 -15, !dbg !3535
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #4 !dbg !3536 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3538, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3539, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !3540, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !3546
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !3546
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !3546
  %4 = tail call i8* @malloc(i64 1024) #8, !dbg !3548
  %5 = icmp eq i8* %4, null, !dbg !3549
  br i1 %5, label %8, label %6, !dbg !3550

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i64 1023, !dbg !3551
  store i8 0, i8* %7, align 1, !dbg !3552, !tbaa !653
  br label %8, !dbg !3553

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ], !dbg !3554
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3555
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3555
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !3557
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3558
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3558
  %11 = tail call i8* @halide_pointer_to_string(i8* %10, i8* %9, i8* %0) #8, !dbg !3560
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3561
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3561
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %9, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !3563
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3564
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3564
  %13 = tail call i8* @halide_buffer_to_string(i8* %12, i8* %9, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3566
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3567
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3567
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %9, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !3569
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3570
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !924, metadata !DIExpression()) #10, !dbg !3570
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %9, %struct.halide_buffer_t* nonnull %2) #8, !dbg !3572
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3573
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3573
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %9, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3575
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !3576
  br i1 %5, label %17, label %18, !dbg !3578

17:                                               ; preds = %8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3579
  br label %24, !dbg !3580

18:                                               ; preds = %8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3581
  %19 = ptrtoint i8* %16 to i64, !dbg !3583
  %20 = ptrtoint i8* %4 to i64, !dbg !3583
  %21 = add i64 %19, 1, !dbg !3583
  %22 = sub i64 %21, %20, !dbg !3584
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %22) #8, !dbg !3585
  tail call void @halide_print(i8* %0, i8* nonnull %4) #8, !dbg !3586
  br label %24

24:                                               ; preds = %17, %18
  call void @free(i8* %4) #8, !dbg !3587
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !3588
  %26 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %25, align 8, !dbg !3588, !tbaa !1210
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 1, !dbg !3589
  store %struct.halide_device_interface_t* %26, %struct.halide_device_interface_t** %27, align 8, !dbg !3590, !tbaa !1210
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !3591
  %29 = load i64, i64* %28, align 8, !dbg !3591, !tbaa !717
  %30 = inttoptr i64 %29 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*, !dbg !3592
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %30, metadata !3541, metadata !DIExpression()), !dbg !3545
  %31 = call i8* @malloc(i64 48) #8, !dbg !3593
  call void @llvm.dbg.value(metadata i8* %31, metadata !1223, metadata !DIExpression()) #10, !dbg !3595
  %32 = bitcast i8* %31 to i8**, !dbg !3596
  store i8* null, i8** %32, align 8, !dbg !3597, !tbaa !1257
  %33 = getelementptr inbounds i8, i8* %31, i64 8, !dbg !3598
  %34 = bitcast i8* %33 to i16*, !dbg !3598
  store i16 0, i16* %34, align 8, !dbg !3599, !tbaa !1229
  %35 = getelementptr inbounds i8, i8* %31, i64 10, !dbg !3600
  %36 = bitcast i8* %35 to i16*, !dbg !3600
  store i16 0, i16* %36, align 2, !dbg !3601, !tbaa !1235
  %37 = getelementptr inbounds i8, i8* %31, i64 12, !dbg !3602
  %38 = bitcast i8* %37 to i16*, !dbg !3602
  store i16 0, i16* %38, align 4, !dbg !3603, !tbaa !1238
  %39 = getelementptr inbounds i8, i8* %31, i64 14, !dbg !3604
  %40 = bitcast i8* %39 to i16*, !dbg !3604
  store i16 0, i16* %40, align 2, !dbg !3605, !tbaa !1241
  %41 = getelementptr inbounds i8, i8* %31, i64 16, !dbg !3606
  %42 = bitcast i8* %41 to i8**, !dbg !3606
  store i8* null, i8** %42, align 8, !dbg !3607, !tbaa !1259
  %43 = getelementptr inbounds i8, i8* %31, i64 24, !dbg !3608
  %44 = bitcast i8* %43 to i32*, !dbg !3608
  store i32 0, i32* %44, align 8, !dbg !3609, !tbaa !1265
  %45 = getelementptr inbounds i8, i8* %31, i64 28, !dbg !3610
  %46 = bitcast i8* %45 to i32*, !dbg !3610
  store i32 0, i32* %46, align 4, !dbg !3611, !tbaa !1268
  %47 = getelementptr inbounds i8, i8* %31, i64 32, !dbg !3612
  %48 = bitcast i8* %47 to i32*, !dbg !3612
  store i32 0, i32* %48, align 8, !dbg !3613, !tbaa !1271
  %49 = getelementptr inbounds i8, i8* %31, i64 36, !dbg !3614
  store i8 0, i8* %49, align 4, !dbg !3615, !tbaa !1248
  %50 = getelementptr inbounds i8, i8* %31, i64 40, !dbg !3616
  %51 = bitcast i8* %50 to i32*, !dbg !3616
  store i32 0, i32* %51, align 8, !dbg !3617, !tbaa !1251
  %52 = getelementptr inbounds i8, i8* %31, i64 37, !dbg !3618
  store i8 0, i8* %52, align 1, !dbg !3619, !tbaa !1254
  call void @llvm.dbg.value(metadata i8* %31, metadata !3544, metadata !DIExpression()), !dbg !3545
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %30, i64 0, i32 0, !dbg !3620
  %54 = load i8*, i8** %53, align 8, !dbg !3620, !tbaa !1257
  store i8* %54, i8** %32, align 8, !dbg !3621, !tbaa !1257
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %30, i64 0, i32 3, !dbg !3622
  %56 = load i16, i16* %55, align 4, !dbg !3622, !tbaa !1238
  %57 = zext i16 %56 to i32, !dbg !3623
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 6, !dbg !3624
  %59 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %58, align 8, !dbg !3624, !tbaa !755
  %60 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %59, i64 0, i32 0, !dbg !3625
  %61 = load i32, i32* %60, align 4, !dbg !3625, !tbaa !767
  %62 = add nsw i32 %61, %57, !dbg !3626
  %63 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6, !dbg !3627
  %64 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %63, align 8, !dbg !3627, !tbaa !755
  %65 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %64, i64 0, i32 0, !dbg !3628
  %66 = load i32, i32* %65, align 4, !dbg !3628, !tbaa !767
  %67 = sub i32 %62, %66, !dbg !3629
  %68 = trunc i32 %67 to i16, !dbg !3623
  store i16 %68, i16* %38, align 4, !dbg !3630, !tbaa !1238
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %30, i64 0, i32 4, !dbg !3631
  %70 = load i16, i16* %69, align 2, !dbg !3631, !tbaa !1241
  %71 = zext i16 %70 to i32, !dbg !3632
  %72 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %59, i64 1, i32 0, !dbg !3633
  %73 = load i32, i32* %72, align 4, !dbg !3633, !tbaa !767
  %74 = add nsw i32 %73, %71, !dbg !3634
  %75 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %64, i64 1, i32 0, !dbg !3635
  %76 = load i32, i32* %75, align 4, !dbg !3635, !tbaa !767
  %77 = sub i32 %74, %76, !dbg !3636
  %78 = trunc i32 %77 to i16, !dbg !3632
  store i16 %78, i16* %40, align 2, !dbg !3637, !tbaa !1241
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %30, i64 0, i32 5, !dbg !3638
  %80 = load i8*, i8** %79, align 8, !dbg !3638, !tbaa !1259
  store i8* %80, i8** %42, align 8, !dbg !3639, !tbaa !1259
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %30, i64 0, i32 6, !dbg !3640
  %82 = load i32, i32* %81, align 8, !dbg !3640, !tbaa !1265
  store i32 %82, i32* %44, align 8, !dbg !3641, !tbaa !1265
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %30, i64 0, i32 7, !dbg !3642
  %84 = load i32, i32* %83, align 4, !dbg !3642, !tbaa !1268
  store i32 %84, i32* %46, align 4, !dbg !3643, !tbaa !1268
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %30, i64 0, i32 8, !dbg !3644
  %86 = load i32, i32* %85, align 8, !dbg !3644, !tbaa !1271
  store i32 %86, i32* %48, align 8, !dbg !3645, !tbaa !1271
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %30, i64 0, i32 9, !dbg !3646
  %88 = load i8, i8* %87, align 4, !dbg !3646, !tbaa !1248, !range !2485
  store i8 %88, i8* %49, align 4, !dbg !3647, !tbaa !1248
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %30, i64 0, i32 10, !dbg !3648
  %90 = load i8, i8* %89, align 1, !dbg !3648, !tbaa !1254, !range !2485
  store i8 %90, i8* %52, align 1, !dbg !3649, !tbaa !1254
  %91 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %30, i64 0, i32 11, !dbg !3650
  %92 = load i32, i32* %91, align 8, !dbg !3650, !tbaa !1251
  store i32 %92, i32* %51, align 8, !dbg !3651, !tbaa !1251
  %93 = ptrtoint i8* %31 to i64, !dbg !3652
  %94 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 0, !dbg !3653
  store i64 %93, i64* %94, align 8, !dbg !3654, !tbaa !717
  ret i32 0, !dbg !3655
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #4 !dbg !3656 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3658, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3659, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32 %2, metadata !3660, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32 %3, metadata !3661, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !3662, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !3664
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !3664
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !3664
  %6 = tail call i8* @malloc(i64 1024) #8, !dbg !3666
  %7 = icmp eq i8* %6, null, !dbg !3667
  br i1 %7, label %10, label %8, !dbg !3668

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %6, i64 1023, !dbg !3669
  store i8 0, i8* %9, align 1, !dbg !3670, !tbaa !653
  br label %10, !dbg !3671

10:                                               ; preds = %5, %8
  %11 = phi i8* [ %9, %8 ], [ null, %5 ], !dbg !3672
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3673
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3673
  %12 = tail call i8* @halide_string_to_string(i8* %6, i8* %11, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !3675
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3676
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3676
  %13 = tail call i8* @halide_pointer_to_string(i8* %12, i8* %11, i8* %0) #8, !dbg !3678
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3679
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3679
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %11, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !3681
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3682
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3682
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %11, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3684
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3685
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3685
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %11, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !3687
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3688
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !924, metadata !DIExpression()) #10, !dbg !3688
  %17 = tail call i8* @halide_buffer_to_string(i8* %16, i8* %11, %struct.halide_buffer_t* nonnull %4) #8, !dbg !3690
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3691
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3691
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %11, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3693
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !3694
  br i1 %7, label %19, label %20, !dbg !3696

19:                                               ; preds = %10
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3697
  br label %26, !dbg !3698

20:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3699
  %21 = ptrtoint i8* %18 to i64, !dbg !3701
  %22 = ptrtoint i8* %6 to i64, !dbg !3701
  %23 = add i64 %21, 1, !dbg !3701
  %24 = sub i64 %23, %22, !dbg !3702
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %24) #8, !dbg !3703
  tail call void @halide_print(i8* %0, i8* nonnull %6) #8, !dbg !3704
  br label %26

26:                                               ; preds = %19, %20
  call void @free(i8* %6) #8, !dbg !3705
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.43, i64 0, i64 0)) #8, !dbg !3706
  call void @abort() #8, !dbg !3706
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !3710
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()) #10, !dbg !3710
  call void @llvm.dbg.value(metadata i8* null, metadata !1055, metadata !DIExpression()) #10, !dbg !3710
  %27 = call i8* @malloc(i64 1024) #8, !dbg !3712
  %28 = icmp eq i8* %27, null, !dbg !3713
  br i1 %28, label %29, label %31, !dbg !3714

29:                                               ; preds = %26
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !3715
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !3715
  %30 = call i8* @halide_string_to_string(i8* %27, i8* null, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i64 0, i64 0)) #8, !dbg !3717
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !3718
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3720
  br label %39, !dbg !3721

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, i8* %27, i64 1023, !dbg !3722
  store i8 0, i8* %32, align 1, !dbg !3723, !tbaa !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !3715
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !3715
  %33 = call i8* @halide_string_to_string(i8* nonnull %27, i8* nonnull %32, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i64 0, i64 0)) #8, !dbg !3717
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !3718
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1090, metadata !DIExpression()) #10, !dbg !3724
  %34 = ptrtoint i8* %33 to i64, !dbg !3726
  %35 = ptrtoint i8* %27 to i64, !dbg !3726
  %36 = add i64 %34, 1, !dbg !3726
  %37 = sub i64 %36, %35, !dbg !3727
  %38 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %27, i64 %37) #8, !dbg !3728
  call void @halide_error(i8* %0, i8* nonnull %27) #8, !dbg !3729
  br label %39

39:                                               ; preds = %31, %29
  call void @free(i8* %27) #8, !dbg !3730
  ret i32 -1, !dbg !3731
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3732 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3734, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3735, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !3737
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !3737
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !3737
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !3739
  %4 = icmp eq i8* %3, null, !dbg !3740
  br i1 %4, label %7, label %5, !dbg !3741

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !3742
  store i8 0, i8* %6, align 1, !dbg !3743, !tbaa !653
  br label %7, !dbg !3744

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !3745
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3746
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.45, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3746
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !3748
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3749
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !3751
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3752
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3752
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !3754
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3755
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3755
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3757
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3758
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3758
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3760
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !3761
  br i1 %4, label %14, label %15, !dbg !3763

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3764
  br label %21, !dbg !3765

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3766
  %16 = ptrtoint i8* %13 to i64, !dbg !3768
  %17 = ptrtoint i8* %3 to i64, !dbg !3768
  %18 = add i64 %16, 1, !dbg !3768
  %19 = sub i64 %18, %17, !dbg !3769
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %19) #8, !dbg !3770
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !3771
  br label %21

21:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !3772
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !3773
  %23 = load i64, i64* %22, align 8, !dbg !3773, !tbaa !717
  %24 = icmp eq i64 %23, 0, !dbg !3773
  br i1 %24, label %25, label %27, !dbg !3776

25:                                               ; preds = %21
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.47, i64 0, i64 0)) #8, !dbg !3777
  call void @abort() #8, !dbg !3777
  %26 = load i64, i64* %22, align 8, !dbg !3779, !tbaa !717
  br label %27, !dbg !3777

27:                                               ; preds = %21, %25
  %28 = phi i64 [ %23, %21 ], [ %26, %25 ], !dbg !3779
  %29 = inttoptr i64 %28 to i8*, !dbg !3780
  call void @free(i8* %29) #8, !dbg !3781
  store i64 0, i64* %22, align 8, !dbg !3782, !tbaa !717
  ret i32 0, !dbg !3783
}

declare !dbg !3784 dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_sync(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3785 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3787, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3788, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !3790
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !3790
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !3790
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !3792
  %4 = icmp eq i8* %3, null, !dbg !3793
  br i1 %4, label %7, label %5, !dbg !3794

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !3795
  store i8 0, i8* %6, align 1, !dbg !3796, !tbaa !653
  br label %7, !dbg !3797

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !3798
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3799
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3799
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i64 0, i64 0)) #8, !dbg !3801
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3802
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3802
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !3804
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3805
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3805
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !3807
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3808
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3808
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3810
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3811
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3811
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3813
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !3814
  br i1 %4, label %14, label %15, !dbg !3816

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3817
  br label %21, !dbg !3818

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3819
  %16 = ptrtoint i8* %13 to i64, !dbg !3821
  %17 = ptrtoint i8* %3 to i64, !dbg !3821
  %18 = add i64 %16, 1, !dbg !3821
  %19 = sub i64 %18, %17, !dbg !3822
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %19) #8, !dbg !3823
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !3824
  br label %21

21:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !3825
  ret i32 0, !dbg !3826
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3827 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3829, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3830, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !3832
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !3832
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !3832
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !3834
  %4 = icmp eq i8* %3, null, !dbg !3835
  br i1 %4, label %7, label %5, !dbg !3836

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !3837
  store i8 0, i8* %6, align 1, !dbg !3838, !tbaa !653
  br label %7, !dbg !3839

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !3840
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3841
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.57, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3841
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @.str.57, i64 0, i64 0)) #8, !dbg !3843
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3844
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3844
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !3846
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3847
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3847
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !3849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3850
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3850
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3852
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3853
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3853
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3855
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !3856
  br i1 %4, label %14, label %15, !dbg !3858

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3859
  br label %21, !dbg !3860

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3861
  %16 = ptrtoint i8* %13 to i64, !dbg !3863
  %17 = ptrtoint i8* %3 to i64, !dbg !3863
  %18 = add i64 %16, 1, !dbg !3863
  %19 = sub i64 %18, %17, !dbg !3864
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %19) #8, !dbg !3865
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !3866
  br label %21

21:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !3867
  %22 = call i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE) #8, !dbg !3868
  ret i32 %22, !dbg !3869
}

declare !dbg !3870 extern_weak dso_local i32 @halide_default_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3871 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3873, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3874, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !3876
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !3876
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !3876
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !3878
  %4 = icmp eq i8* %3, null, !dbg !3879
  br i1 %4, label %7, label %5, !dbg !3880

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !3881
  store i8 0, i8* %6, align 1, !dbg !3882, !tbaa !653
  br label %7, !dbg !3883

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !3884
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3885
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.58, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3885
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.58, i64 0, i64 0)) #8, !dbg !3887
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3888
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3888
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !3890
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3891
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3891
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !3893
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3894
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3894
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3896
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3897
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3897
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3899
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !3900
  br i1 %4, label %14, label %15, !dbg !3902

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3903
  br label %21, !dbg !3904

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3905
  %16 = ptrtoint i8* %13 to i64, !dbg !3907
  %17 = ptrtoint i8* %3 to i64, !dbg !3907
  %18 = add i64 %16, 1, !dbg !3907
  %19 = sub i64 %18, %17, !dbg !3908
  %20 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %19) #8, !dbg !3909
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !3910
  br label %21

21:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !3911
  %22 = call i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE) #8, !dbg !3912
  ret i32 %22, !dbg !3913
}

declare !dbg !3914 extern_weak dso_local i32 @halide_default_device_and_host_free(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local %struct.halide_device_interface_t* @halide_hexagon_dma_device_interface() local_unnamed_addr #7 !dbg !3915 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, !dbg !3918
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_release(i8* %0) #4 !dbg !3919 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3921, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !3923
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !3923
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !3923
  %2 = tail call i8* @malloc(i64 1024) #8, !dbg !3925
  %3 = icmp eq i8* %2, null, !dbg !3926
  br i1 %3, label %6, label %4, !dbg !3927

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, i8* %2, i64 1023, !dbg !3928
  store i8 0, i8* %5, align 1, !dbg !3929, !tbaa !653
  br label %6, !dbg !3930

6:                                                ; preds = %1, %4
  %7 = phi i8* [ %5, %4 ], [ null, %1 ], !dbg !3931
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3932
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.59, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3932
  %8 = tail call i8* @halide_string_to_string(i8* %2, i8* %7, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.59, i64 0, i64 0)) #8, !dbg !3934
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3935
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3935
  %9 = tail call i8* @halide_pointer_to_string(i8* %8, i8* %7, i8* %0) #8, !dbg !3937
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3938
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3938
  %10 = tail call i8* @halide_string_to_string(i8* %9, i8* %7, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3940
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !3941
  br i1 %3, label %11, label %12, !dbg !3943

11:                                               ; preds = %6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3944
  br label %18, !dbg !3945

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3946
  %13 = ptrtoint i8* %10 to i64, !dbg !3948
  %14 = ptrtoint i8* %2 to i64, !dbg !3948
  %15 = add i64 %13, 1, !dbg !3948
  %16 = sub i64 %15, %14, !dbg !3949
  %17 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %16) #8, !dbg !3950
  tail call void @halide_print(i8* %0, i8* nonnull %2) #8, !dbg !3951
  br label %18

18:                                               ; preds = %12, %11
  tail call void @free(i8* %2) #8, !dbg !3952
  ret i32 0, !dbg !3953
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_power_mode_voting(i8* %0, i32 %1) local_unnamed_addr #4 !dbg !3954 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3959, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i32 %1, metadata !3960, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !614, metadata !DIExpression()) #10, !dbg !3962
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()) #10, !dbg !3962
  call void @llvm.dbg.value(metadata i8* null, metadata !618, metadata !DIExpression()) #10, !dbg !3962
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !3964
  %4 = icmp eq i8* %3, null, !dbg !3965
  br i1 %4, label %7, label %5, !dbg !3966

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !3967
  store i8 0, i8* %6, align 1, !dbg !3968, !tbaa !653
  br label %7, !dbg !3969

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !3970
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3971
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.60, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3971
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.60, i64 0, i64 0)) #8, !dbg !3973
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3974
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3974
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !3976
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !631, metadata !DIExpression()) #10, !dbg !3977
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !634, metadata !DIExpression()) #10, !dbg !3977
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3979
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !640, metadata !DIExpression()) #10, !dbg !3980
  br i1 %4, label %12, label %13, !dbg !3982

12:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !3983
  br label %19, !dbg !3984

13:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !654, metadata !DIExpression()) #10, !dbg !3985
  %14 = ptrtoint i8* %11 to i64, !dbg !3987
  %15 = ptrtoint i8* %3 to i64, !dbg !3987
  %16 = add i64 %14, 1, !dbg !3987
  %17 = sub i64 %16, %15, !dbg !3988
  %18 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %17) #8, !dbg !3989
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !3990
  br label %19

19:                                               ; preds = %13, %12
  tail call void @free(i8* %3) #8, !dbg !3991
  switch i32 %1, label %34 [
    i32 5, label %20
    i32 0, label %22
    i32 4, label %24
    i32 1, label %26
    i32 6, label %28
    i32 2, label %30
    i32 3, label %32
  ], !dbg !3992

20:                                               ; preds = %19
  %21 = tail call i32 @nDmaWrapper_PowerVoting(i32 1) #8, !dbg !3993
  br label %53, !dbg !3995

22:                                               ; preds = %19
  %23 = tail call i32 @nDmaWrapper_PowerVoting(i32 2) #8, !dbg !3996
  br label %53, !dbg !3997

24:                                               ; preds = %19
  %25 = tail call i32 @nDmaWrapper_PowerVoting(i32 3) #8, !dbg !3998
  br label %53, !dbg !3999

26:                                               ; preds = %19
  %27 = tail call i32 @nDmaWrapper_PowerVoting(i32 4) #8, !dbg !4000
  br label %53, !dbg !4001

28:                                               ; preds = %19
  %29 = tail call i32 @nDmaWrapper_PowerVoting(i32 5) #8, !dbg !4002
  br label %53, !dbg !4003

30:                                               ; preds = %19
  %31 = tail call i32 @nDmaWrapper_PowerVoting(i32 6) #8, !dbg !4004
  br label %53, !dbg !4005

32:                                               ; preds = %19
  %33 = tail call i32 @nDmaWrapper_PowerVoting(i32 -3) #8, !dbg !4006
  br label %53, !dbg !4007

34:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !4008
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()) #10, !dbg !4008
  call void @llvm.dbg.value(metadata i8* null, metadata !1055, metadata !DIExpression()) #10, !dbg !4008
  %35 = tail call i8* @malloc(i64 1024) #8, !dbg !4010
  %36 = icmp eq i8* %35, null, !dbg !4011
  br i1 %36, label %39, label %37, !dbg !4012

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, i8* %35, i64 1023, !dbg !4013
  store i8 0, i8* %38, align 1, !dbg !4014, !tbaa !653
  br label %39, !dbg !4015

39:                                               ; preds = %34, %37
  %40 = phi i8* [ %38, %37 ], [ null, %34 ], !dbg !4016
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !4017
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.61, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !4017
  %41 = tail call i8* @halide_string_to_string(i8* %35, i8* %40, i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.61, i64 0, i64 0)) #8, !dbg !4019
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1842, metadata !DIExpression()) #10, !dbg !4020
  call void @llvm.dbg.value(metadata i32 %1, metadata !1845, metadata !DIExpression()) #10, !dbg !4020
  %42 = sext i32 %1 to i64, !dbg !4022
  %43 = tail call i8* @halide_int64_to_string(i8* %41, i8* %40, i64 %42, i32 1) #8, !dbg !4023
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1068, metadata !DIExpression()) #10, !dbg !4024
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), metadata !1071, metadata !DIExpression()) #10, !dbg !4024
  %44 = tail call i8* @halide_string_to_string(i8* %43, i8* %40, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0)) #8, !dbg !4026
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1077, metadata !DIExpression()) #10, !dbg !4027
  br i1 %36, label %45, label %46, !dbg !4029

45:                                               ; preds = %39
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !4030
  br label %52, !dbg !4031

46:                                               ; preds = %39
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1090, metadata !DIExpression()) #10, !dbg !4032
  %47 = ptrtoint i8* %44 to i64, !dbg !4034
  %48 = ptrtoint i8* %35 to i64, !dbg !4034
  %49 = add i64 %47, 1, !dbg !4034
  %50 = sub i64 %49, %48, !dbg !4035
  %51 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %35, i64 %50) #8, !dbg !4036
  tail call void @halide_error(i8* %0, i8* nonnull %35) #8, !dbg !4037
  br label %52

52:                                               ; preds = %46, %45
  tail call void @free(i8* %35) #8, !dbg !4038
  br label %53, !dbg !4039

53:                                               ; preds = %52, %32, %30, %28, %26, %24, %22, %20
  %54 = phi i32 [ -1, %52 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], !dbg !4040
  ret i32 %54, !dbg !4041
}

declare !dbg !4042 dso_local i32 @nDmaWrapper_PowerVoting(i32) local_unnamed_addr #3

declare extern_weak dso_local void @halide_use_jit_module() #3

declare extern_weak dso_local void @halide_release_jit_module() #3

declare dso_local i32 @halide_device_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #3

declare dso_local i32 @halide_device_free(i8*, %struct.halide_buffer_t*) #3

declare dso_local i32 @halide_device_sync(i8*, %struct.halide_buffer_t*) #3

declare dso_local void @halide_device_release(i8*, %struct.halide_device_interface_t*) #3

declare dso_local i32 @halide_copy_to_host(i8*, %struct.halide_buffer_t*) #3

declare dso_local i32 @halide_copy_to_device(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #3

declare extern_weak dso_local i32 @halide_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) #3

declare extern_weak dso_local i32 @halide_device_and_host_free(i8*, %struct.halide_buffer_t*) #3

declare dso_local i32 @halide_buffer_copy(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*) #3

declare dso_local i32 @halide_device_crop(i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*) #3

declare dso_local i32 @halide_device_slice(i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*) #3

declare dso_local i32 @halide_device_release_crop(i8*, %struct.halide_buffer_t*) #3

declare dso_local i32 @halide_device_wrap_native(i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*) #3

declare dso_local i32 @halide_device_detach_native(i8*, %struct.halide_buffer_t*) #3

declare !dbg !4045 dso_local i32 @HAP_cache_unlock(i8*) local_unnamed_addr #3

declare !dbg !4046 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #3

declare !dbg !4049 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #3

declare !dbg !4050 dso_local i32 @nDmaWrapper_GetRecommendedWalkSize(i32, i1 zeroext, %struct.stDmaWrapper_RoiAlignInfo*) local_unnamed_addr #3

declare !dbg !4054 dso_local i32 @nDmaWrapper_GetRecommendedIntermBufStride(i32, %struct.stDmaWrapper_RoiAlignInfo*, i1 zeroext) local_unnamed_addr #3

declare !dbg !4057 extern_weak dso_local i8* @halide_hexagon_allocate_from_dma_pool(i8*, i8*) local_unnamed_addr #3

declare !dbg !4060 dso_local i32 @nDmaWrapper_DmaTransferSetup(i8*, %struct.stDmaWrapper_DmaTransferSetup*) local_unnamed_addr #3

declare !dbg !4064 dso_local i32 @nDmaWrapper_Move(i8*) local_unnamed_addr #3

declare !dbg !4065 dso_local i32 @nDmaWrapper_Wait(i8*) local_unnamed_addr #3

declare !dbg !4066 extern_weak dso_local i32 @halide_hexagon_free_to_dma_pool(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !4069 extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !4072 dso_local i8* @malloc(i64) local_unnamed_addr #3

declare !dbg !4075 dso_local i8* @HAP_cache_lock(i32, i8**) local_unnamed_addr #3

declare !dbg !4078 extern_weak dso_local i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !4081 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

declare !dbg !4082 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !4085 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !4088 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !4091 extern_weak dso_local i8* @halide_buffer_to_string(i8*, i8*, %struct.halide_buffer_t*) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #6 = { inlinehint nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!231}
!llvm.module.flags = !{!513, !514, !515}
!llvm.ident = !{!516}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dma_desc_pool", linkageName: "_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE", scope: !2, file: !6, line: 64, type: !7, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "HexagonDma", scope: !3)
!3 = !DINamespace(name: "Internal", scope: !4)
!4 = !DINamespace(name: "Runtime", scope: !5)
!5 = !DINamespace(name: "Halide", scope: null)
!6 = !DIFile(filename: "src/runtime/hexagon_dma.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "pdesc_pool", scope: !2, file: !6, line: 62, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "desc_pool_t", scope: !2, file: !6, line: 60, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_pool", scope: !2, file: !6, line: 56, size: 192, flags: DIFlagTypePassByValue, elements: !11, identifier: "_ZTSN6Halide7Runtime8Internal10HexagonDma9desc_poolE")
!11 = !{!12, !14, !16}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !10, file: !6, line: 57, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !10, file: !6, line: 58, baseType: !15, size: 8, offset: 64)
!15 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !10, file: !6, line: 59, baseType: !17, size: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "hexagon_desc_mutex", linkageName: "_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE", scope: !2, file: !6, line: 65, type: !20, isLocal: false, isDefinition: true)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !21, line: 120, size: 64, flags: DIFlagTypePassByValue, elements: !22, identifier: "_ZTS12halide_mutex")
!21 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !20, file: !21, line: 121, baseType: !24, size: 64)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !29)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !26, line: 61, baseType: !27)
!26 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !26, line: 10, baseType: !28)
!28 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !{!30}
!30 = !DISubrange(count: 1)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "hexagon_dma_device_interface", linkageName: "_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE", scope: !2, file: !6, line: 740, type: !33, isLocal: false, isDefinition: true)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !21, line: 723, size: 1024, flags: DIFlagTypePassByValue, elements: !34, identifier: "_ZTS25halide_device_interface_t")
!34 = !{!35, !161, !165, !166, !170, !171, !172, !173, !174, !178, !183, !187, !188, !192, !193, !198}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !33, file: !21, line: 724, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !13, !40, !45}
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !21, line: 1423, size: 448, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !42, identifier: "_ZTS15halide_buffer_t")
!42 = !{!43, !44, !47, !51, !52, !94, !96, !119, !120, !130, !134, !137, !138, !141, !142, !147, !150, !151, !152, !157, !160}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !41, file: !21, line: 1425, baseType: !27, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !41, file: !21, line: 1428, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !41, file: !21, line: 1433, baseType: !48, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !26, line: 16, baseType: !50)
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !21, line: 1436, baseType: !27, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !21, line: 1439, baseType: !53, size: 32, offset: 256)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !21, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !54, identifier: "_ZTS13halide_type_t")
!54 = !{!55, !64, !65, !68, !72, !75, !80, !84, !85, !86, !89}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !53, file: !21, line: 434, baseType: !56, size: 8, align: 8)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !21, line: 413, baseType: !57)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !21, line: 403, baseType: !49, size: 8, elements: !58, identifier: "_ZTS18halide_type_code_t")
!58 = !{!59, !60, !61, !62, !63}
!59 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!60 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!61 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!62 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!63 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !53, file: !21, line: 442, baseType: !49, size: 8, align: 8, offset: 8)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !53, file: !21, line: 446, baseType: !66, size: 16, align: 16, offset: 16)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !26, line: 14, baseType: !67)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !DISubprogram(name: "halide_type_t", scope: !53, file: !21, line: 453, type: !69, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !56, !49, !66}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!72 = !DISubprogram(name: "halide_type_t", scope: !53, file: !21, line: 459, type: !73, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !71}
!75 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !53, file: !21, line: 463, type: !76, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!76 = !DISubroutineType(types: !77)
!77 = !{!53, !78, !66}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!80 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !53, file: !21, line: 468, type: !81, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!81 = !DISubroutineType(types: !82)
!82 = !{!15, !78, !83}
!83 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !79, size: 64)
!84 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !53, file: !21, line: 472, type: !81, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !53, file: !21, line: 476, type: !81, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!86 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !53, file: !21, line: 481, type: !87, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!87 = !DISubroutineType(types: !88)
!88 = !{!39, !78}
!89 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !53, file: !21, line: 485, type: !90, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!90 = !DISubroutineType(types: !91)
!91 = !{!92, !78}
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !26, line: 12, baseType: !93)
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !41, file: !21, line: 1442, baseType: !95, size: 32, offset: 288)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !26, line: 11, baseType: !39)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !41, file: !21, line: 1446, baseType: !97, size: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !21, line: 1409, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !21, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !100, identifier: "_ZTS18halide_dimension_t")
!100 = !{!101, !102, !103, !104, !105, !109, !112, !118}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !99, file: !21, line: 1383, baseType: !95, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !99, file: !21, line: 1383, baseType: !95, size: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !99, file: !21, line: 1383, baseType: !95, size: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !21, line: 1386, baseType: !92, size: 32, offset: 96)
!105 = !DISubprogram(name: "halide_dimension_t", scope: !99, file: !21, line: 1388, type: !106, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!109 = !DISubprogram(name: "halide_dimension_t", scope: !99, file: !21, line: 1389, type: !110, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !108, !95, !95, !95, !92}
!112 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !99, file: !21, line: 1393, type: !113, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DISubroutineType(types: !114)
!114 = !{!15, !115, !117}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!117 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !116, size: 64)
!118 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !99, file: !21, line: 1400, type: !113, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !41, file: !21, line: 1449, baseType: !13, size: 64, offset: 384)
!120 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !41, file: !21, line: 1454, type: !121, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = !DISubroutineType(types: !122)
!122 = !{!15, !123, !125}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !21, line: 1416, baseType: !126)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 1415, baseType: !93, size: 32, elements: !127, identifier: "_ZTS19halide_buffer_flags")
!127 = !{!128, !129}
!128 = !DIEnumerator(name: "halide_buffer_flag_host_dirty", value: 1, isUnsigned: true)
!129 = !DIEnumerator(name: "halide_buffer_flag_device_dirty", value: 2, isUnsigned: true)
!130 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !41, file: !21, line: 1458, type: !131, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !133, !125, !15}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!134 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !41, file: !21, line: 1466, type: !135, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!135 = !DISubroutineType(types: !136)
!136 = !{!15, !123}
!137 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !41, file: !21, line: 1470, type: !135, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!138 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !41, file: !21, line: 1474, type: !139, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !133, !15}
!141 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !41, file: !21, line: 1478, type: !139, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!142 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !41, file: !21, line: 1485, type: !143, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !123}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 27, baseType: !146)
!146 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!147 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !41, file: !21, line: 1495, type: !148, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DISubroutineType(types: !149)
!149 = !{!48, !123}
!150 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !41, file: !21, line: 1506, type: !148, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!151 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !41, file: !21, line: 1518, type: !143, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !41, file: !21, line: 1523, type: !153, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!153 = !DISubroutineType(types: !154)
!154 = !{!48, !123, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!157 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !41, file: !21, line: 1534, type: !158, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!158 = !DISubroutineType(types: !159)
!159 = !{!39, !133, !13}
!160 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !41, file: !21, line: 1545, type: !135, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !33, file: !21, line: 726, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!39, !13, !40}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !33, file: !21, line: 727, baseType: !162, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !33, file: !21, line: 728, baseType: !167, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !13, !45}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !33, file: !21, line: 730, baseType: !162, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !33, file: !21, line: 731, baseType: !36, size: 64, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !33, file: !21, line: 733, baseType: !36, size: 64, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !33, file: !21, line: 735, baseType: !162, size: 64, offset: 448)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !33, file: !21, line: 736, baseType: !175, size: 64, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!39, !13, !40, !45, !40}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !33, file: !21, line: 738, baseType: !179, size: 64, offset: 576)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!39, !13, !182, !40}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !33, file: !21, line: 740, baseType: !184, size: 64, offset: 640)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!39, !13, !182, !39, !39, !40}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !33, file: !21, line: 742, baseType: !162, size: 64, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !33, file: !21, line: 743, baseType: !189, size: 64, offset: 768)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!39, !13, !40, !27, !45}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !33, file: !21, line: 745, baseType: !162, size: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !33, file: !21, line: 746, baseType: !194, size: 64, offset: 896)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!39, !13, !197, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !33, file: !21, line: 747, baseType: !199, size: 64, offset: 960)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !202, line: 10, size: 1024, flags: DIFlagTypePassByValue, elements: !203, identifier: "_ZTS30halide_device_interface_impl_t")
!202 = !DIFile(filename: "src/runtime/device_interface.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!203 = !{!204, !208, !209, !210, !211, !212, !216, !217, !218, !219, !220, !221, !222, !223, !224, !228}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "use_module", scope: !201, file: !202, line: 16, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "release_module", scope: !201, file: !202, line: 17, baseType: !205, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !201, file: !202, line: 18, baseType: !162, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !201, file: !202, line: 19, baseType: !162, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !201, file: !202, line: 20, baseType: !162, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !201, file: !202, line: 21, baseType: !213, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!39, !13}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !201, file: !202, line: 22, baseType: !162, size: 64, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !201, file: !202, line: 23, baseType: !162, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !201, file: !202, line: 24, baseType: !162, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !201, file: !202, line: 25, baseType: !162, size: 64, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !201, file: !202, line: 26, baseType: !175, size: 64, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !201, file: !202, line: 28, baseType: !179, size: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !201, file: !202, line: 31, baseType: !184, size: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !201, file: !202, line: 35, baseType: !162, size: 64, offset: 832)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !201, file: !202, line: 37, baseType: !225, size: 64, offset: 896)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!39, !13, !40, !27}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !201, file: !202, line: 38, baseType: !162, size: 64, offset: 960)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "hexagon_dma_device_interface_impl", linkageName: "_ZN6Halide7Runtime8Internal10HexagonDma33hexagon_dma_device_interface_implE", scope: !2, file: !6, line: 721, type: !201, isLocal: false, isDefinition: true)
!231 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !232, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !233, retainedTypes: !336, globals: !509, imports: !510, splitDebugInlining: false, nameTableKind: None)
!232 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!233 = !{!57, !126, !234, !281, !299, !315, !329, !333}
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_error_code_t", file: !21, line: 990, baseType: !39, size: 32, elements: !235, identifier: "_ZTS19halide_error_code_t")
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!236 = !DIEnumerator(name: "halide_error_code_success", value: 0)
!237 = !DIEnumerator(name: "halide_error_code_generic_error", value: -1)
!238 = !DIEnumerator(name: "halide_error_code_explicit_bounds_too_small", value: -2)
!239 = !DIEnumerator(name: "halide_error_code_bad_type", value: -3)
!240 = !DIEnumerator(name: "halide_error_code_access_out_of_bounds", value: -4)
!241 = !DIEnumerator(name: "halide_error_code_buffer_allocation_too_large", value: -5)
!242 = !DIEnumerator(name: "halide_error_code_buffer_extents_too_large", value: -6)
!243 = !DIEnumerator(name: "halide_error_code_constraints_make_required_region_smaller", value: -7)
!244 = !DIEnumerator(name: "halide_error_code_constraint_violated", value: -8)
!245 = !DIEnumerator(name: "halide_error_code_param_too_small", value: -9)
!246 = !DIEnumerator(name: "halide_error_code_param_too_large", value: -10)
!247 = !DIEnumerator(name: "halide_error_code_out_of_memory", value: -11)
!248 = !DIEnumerator(name: "halide_error_code_buffer_argument_is_null", value: -12)
!249 = !DIEnumerator(name: "halide_error_code_debug_to_file_failed", value: -13)
!250 = !DIEnumerator(name: "halide_error_code_copy_to_host_failed", value: -14)
!251 = !DIEnumerator(name: "halide_error_code_copy_to_device_failed", value: -15)
!252 = !DIEnumerator(name: "halide_error_code_device_malloc_failed", value: -16)
!253 = !DIEnumerator(name: "halide_error_code_device_sync_failed", value: -17)
!254 = !DIEnumerator(name: "halide_error_code_device_free_failed", value: -18)
!255 = !DIEnumerator(name: "halide_error_code_no_device_interface", value: -19)
!256 = !DIEnumerator(name: "halide_error_code_matlab_init_failed", value: -20)
!257 = !DIEnumerator(name: "halide_error_code_matlab_bad_param_type", value: -21)
!258 = !DIEnumerator(name: "halide_error_code_internal_error", value: -22)
!259 = !DIEnumerator(name: "halide_error_code_device_run_failed", value: -23)
!260 = !DIEnumerator(name: "halide_error_code_unaligned_host_ptr", value: -24)
!261 = !DIEnumerator(name: "halide_error_code_bad_fold", value: -25)
!262 = !DIEnumerator(name: "halide_error_code_fold_factor_too_small", value: -26)
!263 = !DIEnumerator(name: "halide_error_code_requirement_failed", value: -27)
!264 = !DIEnumerator(name: "halide_error_code_buffer_extents_negative", value: -28)
!265 = !DIEnumerator(name: "halide_error_code_unused_29", value: -29)
!266 = !DIEnumerator(name: "halide_error_code_unused_30", value: -30)
!267 = !DIEnumerator(name: "halide_error_code_specialize_fail", value: -31)
!268 = !DIEnumerator(name: "halide_error_code_device_wrap_native_failed", value: -32)
!269 = !DIEnumerator(name: "halide_error_code_device_detach_native_failed", value: -33)
!270 = !DIEnumerator(name: "halide_error_code_host_is_null", value: -34)
!271 = !DIEnumerator(name: "halide_error_code_bad_extern_fold", value: -35)
!272 = !DIEnumerator(name: "halide_error_code_device_interface_no_device", value: -36)
!273 = !DIEnumerator(name: "halide_error_code_host_and_device_dirty", value: -37)
!274 = !DIEnumerator(name: "halide_error_code_buffer_is_null", value: -38)
!275 = !DIEnumerator(name: "halide_error_code_device_buffer_copy_failed", value: -39)
!276 = !DIEnumerator(name: "halide_error_code_device_crop_unsupported", value: -40)
!277 = !DIEnumerator(name: "halide_error_code_device_crop_failed", value: -41)
!278 = !DIEnumerator(name: "halide_error_code_incompatible_device_interface", value: -42)
!279 = !DIEnumerator(name: "halide_error_code_bad_dimensions", value: -43)
!280 = !DIEnumerator(name: "halide_error_code_device_dirty_with_no_device_support", value: -44)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !282, line: 39, baseType: !93, size: 32, align: 32, elements: !283, identifier: "_ZTS9t_eDmaFmt")
!282 = !DIFile(filename: "src/runtime/mini_hexagon_dma.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!284 = !DIEnumerator(name: "eDmaFmt_RawData", value: 0, isUnsigned: true)
!285 = !DIEnumerator(name: "eDmaFmt_NV12", value: 1, isUnsigned: true)
!286 = !DIEnumerator(name: "eDmaFmt_NV12_Y", value: 2, isUnsigned: true)
!287 = !DIEnumerator(name: "eDmaFmt_NV12_UV", value: 3, isUnsigned: true)
!288 = !DIEnumerator(name: "eDmaFmt_P010", value: 4, isUnsigned: true)
!289 = !DIEnumerator(name: "eDmaFmt_P010_Y", value: 5, isUnsigned: true)
!290 = !DIEnumerator(name: "eDmaFmt_P010_UV", value: 6, isUnsigned: true)
!291 = !DIEnumerator(name: "eDmaFmt_TP10", value: 7, isUnsigned: true)
!292 = !DIEnumerator(name: "eDmaFmt_TP10_Y", value: 8, isUnsigned: true)
!293 = !DIEnumerator(name: "eDmaFmt_TP10_UV", value: 9, isUnsigned: true)
!294 = !DIEnumerator(name: "eDmaFmt_NV124R", value: 10, isUnsigned: true)
!295 = !DIEnumerator(name: "eDmaFmt_NV124R_Y", value: 11, isUnsigned: true)
!296 = !DIEnumerator(name: "eDmaFmt_NV124R_UV", value: 12, isUnsigned: true)
!297 = !DIEnumerator(name: "eDmaFmt_Invalid", value: 13, isUnsigned: true)
!298 = !DIEnumerator(name: "eDmaFmt_MAX", value: 14, isUnsigned: true)
!299 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !300, line: 34, baseType: !93, size: 32, elements: !301, identifier: "_ZTS26halide_hexagon_image_fmt_t")
!300 = !DIFile(filename: "src/runtime/HalideRuntimeHexagonDma.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!302 = !DIEnumerator(name: "halide_hexagon_fmt_RawData", value: 0, isUnsigned: true)
!303 = !DIEnumerator(name: "halide_hexagon_fmt_NV12", value: 1, isUnsigned: true)
!304 = !DIEnumerator(name: "halide_hexagon_fmt_NV12_Y", value: 2, isUnsigned: true)
!305 = !DIEnumerator(name: "halide_hexagon_fmt_NV12_UV", value: 3, isUnsigned: true)
!306 = !DIEnumerator(name: "halide_hexagon_fmt_P010", value: 4, isUnsigned: true)
!307 = !DIEnumerator(name: "halide_hexagon_fmt_P010_Y", value: 5, isUnsigned: true)
!308 = !DIEnumerator(name: "halide_hexagon_fmt_P010_UV", value: 6, isUnsigned: true)
!309 = !DIEnumerator(name: "halide_hexagon_fmt_TP10", value: 7, isUnsigned: true)
!310 = !DIEnumerator(name: "halide_hexagon_fmt_TP10_Y", value: 8, isUnsigned: true)
!311 = !DIEnumerator(name: "halide_hexagon_fmt_TP10_UV", value: 9, isUnsigned: true)
!312 = !DIEnumerator(name: "halide_hexagon_fmt_NV124R", value: 10, isUnsigned: true)
!313 = !DIEnumerator(name: "halide_hexagon_fmt_NV124R_Y", value: 11, isUnsigned: true)
!314 = !DIEnumerator(name: "halide_hexagon_fmt_NV124R_UV", value: 12, isUnsigned: true)
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_hexagon_power_mode_t", file: !316, line: 66, baseType: !93, size: 32, elements: !317, identifier: "_ZTS27halide_hexagon_power_mode_t")
!316 = !DIFile(filename: "src/runtime/HalideRuntimeHexagonHost.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!318 = !DIEnumerator(name: "halide_hexagon_power_low", value: 0, isUnsigned: true)
!319 = !DIEnumerator(name: "halide_hexagon_power_nominal", value: 1, isUnsigned: true)
!320 = !DIEnumerator(name: "halide_hexagon_power_turbo", value: 2, isUnsigned: true)
!321 = !DIEnumerator(name: "halide_hexagon_power_default", value: 3, isUnsigned: true)
!322 = !DIEnumerator(name: "halide_hexagon_power_low_plus", value: 4, isUnsigned: true)
!323 = !DIEnumerator(name: "halide_hexagon_power_low_2", value: 5, isUnsigned: true)
!324 = !DIEnumerator(name: "halide_hexagon_power_nominal_plus", value: 6, isUnsigned: true)
!325 = !DIEnumerator(name: "halide_hvx_power_low", value: 0, isUnsigned: true)
!326 = !DIEnumerator(name: "halide_hvx_power_nominal", value: 1, isUnsigned: true)
!327 = !DIEnumerator(name: "halide_hvx_power_turbo", value: 2, isUnsigned: true)
!328 = !DIEnumerator(name: "halide_hvx_power_default", value: 3, isUnsigned: true)
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eDmaWrapper_TransationType", file: !282, line: 66, baseType: !93, size: 32, align: 32, elements: !330, identifier: "_ZTS26eDmaWrapper_TransationType")
!330 = !{!331, !332}
!331 = !DIEnumerator(name: "eDmaWrapper_DdrToL2", value: 0, isUnsigned: true)
!332 = !DIEnumerator(name: "eDmaWrapper_L2ToDdr", value: 1, isUnsigned: true)
!333 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !282, line: 23, baseType: !93, size: 32, align: 32, elements: !334)
!334 = !{!335}
!335 = !DIEnumerator(name: "QURT_EOK", value: 0, isUnsigned: true)
!336 = !{!13, !337, !27, !422, !489, !48, !145, !505, !507, !508, !7, !343}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !339, file: !338, line: 203, baseType: !340)
!338 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!339 = !DINamespace(scope: !3)
!340 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !339, file: !338, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !341, templateParams: !419)
!341 = !{!342, !345, !346, !347, !348, !349, !351, !355, !361, !366, !369, !372, !375, !379, !383, !388, !392, !395, !401, !404, !407, !412, !413, !416, !417, !418}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !340, file: !338, line: 32, baseType: !343, size: 64, flags: DIFlagPublic)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !340, file: !338, line: 32, baseType: !343, size: 64, offset: 64, flags: DIFlagPublic)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !340, file: !338, line: 32, baseType: !343, size: 64, offset: 128, flags: DIFlagPublic)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !340, file: !338, line: 33, baseType: !13, size: 64, offset: 192, flags: DIFlagPublic)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !340, file: !338, line: 34, baseType: !15, size: 8, offset: 256, flags: DIFlagPublic)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !340, file: !338, line: 35, baseType: !350, size: 8, offset: 264, flags: DIFlagPublic)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 8, elements: !29)
!351 = !DISubprogram(name: "Printer", scope: !340, file: !338, line: 37, type: !352, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !354, !13, !343}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!355 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !340, file: !338, line: 57, type: !356, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!356 = !DISubroutineType(types: !357)
!357 = !{!358, !354, !359}
!358 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !340, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!361 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !340, file: !338, line: 67, type: !362, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DISubroutineType(types: !363)
!363 = !{!358, !354, !364}
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !26, line: 9, baseType: !365)
!365 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!366 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !340, file: !338, line: 72, type: !367, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DISubroutineType(types: !368)
!368 = !{!358, !354, !95}
!369 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !340, file: !338, line: 77, type: !370, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = !DISubroutineType(types: !371)
!371 = !{!358, !354, !27}
!372 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !340, file: !338, line: 82, type: !373, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!373 = !DISubroutineType(types: !374)
!374 = !{!358, !354, !92}
!375 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !340, file: !338, line: 87, type: !376, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!376 = !DISubroutineType(types: !377)
!377 = !{!358, !354, !378}
!378 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!379 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !340, file: !338, line: 92, type: !380, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!380 = !DISubroutineType(types: !381)
!381 = !{!358, !354, !382}
!382 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!383 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !340, file: !338, line: 97, type: !384, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!384 = !DISubroutineType(types: !385)
!385 = !{!358, !354, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!388 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !340, file: !338, line: 102, type: !389, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!389 = !DISubroutineType(types: !390)
!390 = !{!358, !354, !391}
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!392 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !340, file: !338, line: 108, type: !393, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DISubroutineType(types: !394)
!394 = !{!358, !354, !83}
!395 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !340, file: !338, line: 113, type: !396, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!396 = !DISubroutineType(types: !397)
!397 = !{!358, !354, !398}
!398 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !21, line: 1550, baseType: !41)
!401 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !340, file: !338, line: 119, type: !402, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!402 = !DISubroutineType(types: !403)
!403 = !{!359, !354}
!404 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !340, file: !338, line: 131, type: !405, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !354}
!407 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !340, file: !338, line: 139, type: !408, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!408 = !DISubroutineType(types: !409)
!409 = !{!27, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!412 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !340, file: !338, line: 143, type: !408, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !340, file: !338, line: 148, type: !414, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !354, !39}
!416 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !340, file: !338, line: 158, type: !402, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!417 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !340, file: !338, line: 162, type: !405, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!418 = !DISubprogram(name: "~Printer", scope: !340, file: !338, line: 166, type: !405, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!419 = !{!420, !421}
!420 = !DITemplateValueParameter(name: "type", type: !39, value: i32 0)
!421 = !DITemplateValueParameter(name: "length", type: !28, value: i64 1024)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !339, file: !338, line: 199, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !339, file: !338, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !424, templateParams: !487)
!424 = !{!425, !426, !427, !428, !429, !430, !431, !435, !439, !442, !445, !448, !451, !454, !457, !460, !463, !466, !469, !472, !475, !480, !481, !484, !485, !486}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !423, file: !338, line: 32, baseType: !343, size: 64, flags: DIFlagPublic)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !423, file: !338, line: 32, baseType: !343, size: 64, offset: 64, flags: DIFlagPublic)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !423, file: !338, line: 32, baseType: !343, size: 64, offset: 128, flags: DIFlagPublic)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !423, file: !338, line: 33, baseType: !13, size: 64, offset: 192, flags: DIFlagPublic)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !423, file: !338, line: 34, baseType: !15, size: 8, offset: 256, flags: DIFlagPublic)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !423, file: !338, line: 35, baseType: !350, size: 8, offset: 264, flags: DIFlagPublic)
!431 = !DISubprogram(name: "Printer", scope: !423, file: !338, line: 37, type: !432, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !434, !13, !343}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!435 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !423, file: !338, line: 57, type: !436, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DISubroutineType(types: !437)
!437 = !{!438, !434, !359}
!438 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !423, size: 64)
!439 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !423, file: !338, line: 67, type: !440, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!440 = !DISubroutineType(types: !441)
!441 = !{!438, !434, !364}
!442 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !423, file: !338, line: 72, type: !443, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!443 = !DISubroutineType(types: !444)
!444 = !{!438, !434, !95}
!445 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !423, file: !338, line: 77, type: !446, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!446 = !DISubroutineType(types: !447)
!447 = !{!438, !434, !27}
!448 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEj", scope: !423, file: !338, line: 82, type: !449, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!449 = !DISubroutineType(types: !450)
!450 = !{!438, !434, !92}
!451 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !423, file: !338, line: 87, type: !452, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!452 = !DISubroutineType(types: !453)
!453 = !{!438, !434, !378}
!454 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEf", scope: !423, file: !338, line: 92, type: !455, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubroutineType(types: !456)
!456 = !{!438, !434, !382}
!457 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !423, file: !338, line: 97, type: !458, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!458 = !DISubroutineType(types: !459)
!459 = !{!438, !434, !386}
!460 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE23write_float16_from_bitsEt", scope: !423, file: !338, line: 102, type: !461, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DISubroutineType(types: !462)
!462 = !{!438, !434, !391}
!463 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !423, file: !338, line: 108, type: !464, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!464 = !DISubroutineType(types: !465)
!465 = !{!438, !434, !83}
!466 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK15halide_buffer_t", scope: !423, file: !338, line: 113, type: !467, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!467 = !DISubroutineType(types: !468)
!468 = !{!438, !434, !398}
!469 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !423, file: !338, line: 119, type: !470, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!470 = !DISubroutineType(types: !471)
!471 = !{!359, !434}
!472 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !423, file: !338, line: 131, type: !473, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !434}
!475 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !423, file: !338, line: 139, type: !476, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!476 = !DISubroutineType(types: !477)
!477 = !{!27, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!480 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE8capacityEv", scope: !423, file: !338, line: 143, type: !476, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!481 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5eraseEi", scope: !423, file: !338, line: 148, type: !482, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !434, !39}
!484 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE16allocation_errorEv", scope: !423, file: !338, line: 158, type: !470, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!485 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !423, file: !338, line: 162, type: !473, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!486 = !DISubprogram(name: "~Printer", scope: !423, file: !338, line: 166, type: !473, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!487 = !{!488, !421}
!488 = !DITemplateValueParameter(name: "type", type: !39, value: i32 1)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_device_handle", scope: !2, file: !6, line: 21, size: 384, flags: DIFlagTypePassByValue, elements: !491, identifier: "_ZTSN6Halide7Runtime8Internal10HexagonDma17dma_device_handleE")
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !490, file: !6, line: 22, baseType: !48, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "offset_rdx", scope: !490, file: !6, line: 23, baseType: !66, size: 16, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "offset_rdy", scope: !490, file: !6, line: 24, baseType: !66, size: 16, offset: 80)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "offset_wrx", scope: !490, file: !6, line: 25, baseType: !66, size: 16, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "offset_wry", scope: !490, file: !6, line: 26, baseType: !66, size: 16, offset: 112)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dma_engine", scope: !490, file: !6, line: 27, baseType: !13, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "frame_width", scope: !490, file: !6, line: 28, baseType: !39, size: 32, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "frame_height", scope: !490, file: !6, line: 29, baseType: !39, size: 32, offset: 224)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "frame_stride", scope: !490, file: !6, line: 30, baseType: !39, size: 32, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "is_ubwc", scope: !490, file: !6, line: 31, baseType: !15, size: 8, offset: 288)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "is_write", scope: !490, file: !6, line: 32, baseType: !15, size: 8, offset: 296)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !490, file: !6, line: 33, baseType: !504, size: 32, align: 32, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_eDmaFmt", file: !282, line: 55, baseType: !281)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !26, line: 28, baseType: !506)
!506 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !282, line: 11, baseType: !92)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !282, line: 10, baseType: !66)
!509 = !{!0, !18, !229, !31}
!510 = !{!511, !512}
!511 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !231, entity: !3, file: !26, line: 225)
!512 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !231, entity: !2, file: !6, line: 72)
!513 = !{i32 7, !"Dwarf Version", i32 4}
!514 = !{i32 2, !"Debug Info Version", i32 3}
!515 = !{i32 1, !"wchar_size", i32 4}
!516 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!517 = distinct !DISubprogram(name: "copy_memory_helper", linkageName: "_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx", scope: !3, file: !518, line: 47, type: !519, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !535)
!518 = !DIFile(filename: "src/runtime/device_buffer_utils.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!519 = !DISubroutineType(types: !520)
!520 = !{null, !521, !39, !364, !364}
!521 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_copy", scope: !3, file: !518, line: 33, size: 3328, flags: DIFlagTypePassByValue, elements: !524, identifier: "_ZTSN6Halide7Runtime8Internal11device_copyE")
!524 = !{!525, !526, !527, !528, !532, !533, !534}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !523, file: !518, line: 35, baseType: !27, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !523, file: !518, line: 35, baseType: !27, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "src_begin", scope: !523, file: !518, line: 37, baseType: !27, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !523, file: !518, line: 39, baseType: !529, size: 1024, offset: 192)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 1024, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 16)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "src_stride_bytes", scope: !523, file: !518, line: 41, baseType: !529, size: 1024, offset: 1216)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dst_stride_bytes", scope: !523, file: !518, line: 42, baseType: !529, size: 1024, offset: 2240)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !523, file: !518, line: 44, baseType: !27, size: 64, offset: 3264)
!535 = !{!536, !537, !538, !539, !540, !543, !544}
!536 = !DILocalVariable(name: "copy", arg: 1, scope: !517, file: !518, line: 47, type: !521)
!537 = !DILocalVariable(name: "d", arg: 2, scope: !517, file: !518, line: 47, type: !39)
!538 = !DILocalVariable(name: "src_off", arg: 3, scope: !517, file: !518, line: 47, type: !364)
!539 = !DILocalVariable(name: "dst_off", arg: 4, scope: !517, file: !518, line: 47, type: !364)
!540 = !DILocalVariable(name: "from", scope: !541, file: !518, line: 54, type: !386)
!541 = distinct !DILexicalBlock(scope: !542, file: !518, line: 53, column: 18)
!542 = distinct !DILexicalBlock(scope: !517, file: !518, line: 53, column: 9)
!543 = !DILocalVariable(name: "to", scope: !541, file: !518, line: 55, type: !13)
!544 = !DILocalVariable(name: "i", scope: !545, file: !518, line: 58, type: !27)
!545 = distinct !DILexicalBlock(scope: !546, file: !518, line: 58, column: 9)
!546 = distinct !DILexicalBlock(scope: !542, file: !518, line: 57, column: 12)
!547 = !DILocation(line: 0, scope: !517)
!548 = !DILocation(line: 49, column: 14, scope: !517)
!549 = !DILocation(line: 49, column: 19, scope: !517)
!550 = !DILocation(line: 49, column: 22, scope: !517)
!551 = !{!552, !552, i64 0}
!552 = !{!"long long", !553, i64 0}
!553 = !{!"omnipotent char", !554, i64 0}
!554 = !{!"Simple C++ TBAA"}
!555 = !DILocation(line: 49, column: 37, scope: !517)
!556 = !DILocation(line: 49, column: 5, scope: !517)
!557 = !DILocation(line: 50, column: 10, scope: !558)
!558 = distinct !DILexicalBlock(scope: !517, file: !518, line: 49, column: 43)
!559 = distinct !{!559, !556, !560, !561}
!560 = !DILocation(line: 51, column: 5, scope: !517)
!561 = !{!"llvm.loop.mustprogress"}
!562 = !DILocation(line: 53, column: 11, scope: !542)
!563 = !DILocation(line: 53, column: 9, scope: !517)
!564 = !DILocation(line: 0, scope: !545)
!565 = !DILocation(line: 58, column: 34, scope: !566)
!566 = distinct !DILexicalBlock(scope: !545, file: !518, line: 58, column: 9)
!567 = !DILocation(line: 58, column: 32, scope: !566)
!568 = !DILocation(line: 58, column: 9, scope: !545)
!569 = !DILocation(line: 54, column: 42, scope: !541)
!570 = !{!571, !552, i64 0}
!571 = !{!"_ZTSN6Halide7Runtime8Internal11device_copyE", !552, i64 0, !552, i64 8, !552, i64 16, !553, i64 24, !553, i64 152, !553, i64 280, !552, i64 408}
!572 = !DILocation(line: 54, column: 46, scope: !541)
!573 = !DILocation(line: 54, column: 28, scope: !541)
!574 = !DILocation(line: 0, scope: !541)
!575 = !DILocation(line: 55, column: 34, scope: !541)
!576 = !{!571, !552, i64 8}
!577 = !DILocation(line: 55, column: 38, scope: !541)
!578 = !DILocation(line: 55, column: 20, scope: !541)
!579 = !DILocation(line: 56, column: 31, scope: !541)
!580 = !{!571, !552, i64 408}
!581 = !DILocation(line: 56, column: 9, scope: !541)
!582 = !DILocation(line: 57, column: 5, scope: !541)
!583 = !DILocation(line: 59, column: 13, scope: !584)
!584 = distinct !DILexicalBlock(scope: !566, file: !518, line: 58, column: 55)
!585 = !DILocation(line: 60, column: 24, scope: !584)
!586 = !DILocation(line: 60, column: 21, scope: !584)
!587 = !DILocation(line: 61, column: 24, scope: !584)
!588 = !DILocation(line: 61, column: 21, scope: !584)
!589 = !DILocation(line: 58, column: 51, scope: !566)
!590 = distinct !{!590, !568, !591, !561}
!591 = !DILocation(line: 62, column: 9, scope: !545)
!592 = !DILocation(line: 64, column: 1, scope: !517)
!593 = !DISubprogram(name: "memcpy", scope: !26, file: !26, line: 94, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!594 = !DISubroutineType(types: !595)
!595 = !{!13, !13, !386, !146}
!596 = !{}
!597 = distinct !DISubprogram(name: "copy_memory", linkageName: "_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv", scope: !3, file: !518, line: 66, type: !598, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !600)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !521, !13}
!600 = !{!601, !602}
!601 = !DILocalVariable(name: "copy", arg: 1, scope: !597, file: !518, line: 66, type: !521)
!602 = !DILocalVariable(name: "user_context", arg: 2, scope: !597, file: !518, line: 66, type: !13)
!603 = !DILocation(line: 0, scope: !597)
!604 = !DILocation(line: 68, column: 14, scope: !605)
!605 = distinct !DILexicalBlock(scope: !597, file: !518, line: 68, column: 9)
!606 = !DILocation(line: 68, column: 26, scope: !605)
!607 = !DILocation(line: 68, column: 18, scope: !605)
!608 = !DILocation(line: 68, column: 9, scope: !597)
!609 = !DILocation(line: 69, column: 58, scope: !610)
!610 = distinct !DILexicalBlock(scope: !605, file: !518, line: 68, column: 31)
!611 = !{!571, !552, i64 16}
!612 = !DILocation(line: 69, column: 9, scope: !610)
!613 = !DILocation(line: 70, column: 5, scope: !610)
!614 = !DILocalVariable(name: "this", arg: 1, scope: !615, type: !619, flags: DIFlagArtificial | DIFlagObjectPointer)
!615 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !340, file: !338, line: 37, type: !352, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !351, retainedNodes: !616)
!616 = !{!614, !617, !618}
!617 = !DILocalVariable(name: "ctx", arg: 2, scope: !615, file: !338, line: 37, type: !13)
!618 = !DILocalVariable(name: "mem", arg: 3, scope: !615, file: !338, line: 37, type: !343)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!620 = !DILocation(line: 0, scope: !615, inlinedAt: !621)
!621 = distinct !DILocation(line: 71, column: 9, scope: !622)
!622 = distinct !DILexicalBlock(scope: !605, file: !518, line: 70, column: 12)
!623 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !621)
!624 = distinct !DILexicalBlock(scope: !625, file: !338, line: 43, column: 16)
!625 = distinct !DILexicalBlock(scope: !626, file: !338, line: 41, column: 20)
!626 = distinct !DILexicalBlock(scope: !627, file: !338, line: 39, column: 13)
!627 = distinct !DILexicalBlock(scope: !615, file: !338, line: 38, column: 54)
!628 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !621)
!629 = distinct !DILexicalBlock(scope: !627, file: !338, line: 48, column: 13)
!630 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !621)
!631 = !DILocalVariable(name: "this", arg: 1, scope: !632, type: !619, flags: DIFlagArtificial | DIFlagObjectPointer)
!632 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !340, file: !338, line: 57, type: !356, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !355, retainedNodes: !633)
!633 = !{!631, !634}
!634 = !DILocalVariable(name: "arg", arg: 2, scope: !632, file: !338, line: 57, type: !359)
!635 = !DILocation(line: 0, scope: !632, inlinedAt: !636)
!636 = distinct !DILocation(line: 71, column: 29, scope: !622)
!637 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !636)
!638 = distinct !DILexicalBlock(scope: !639, file: !338, line: 61, column: 16)
!639 = distinct !DILexicalBlock(scope: !632, file: !338, line: 59, column: 13)
!640 = !DILocalVariable(name: "this", arg: 1, scope: !641, type: !619, flags: DIFlagArtificial | DIFlagObjectPointer)
!641 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !340, file: !338, line: 166, type: !405, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !418, retainedNodes: !642)
!642 = !{!640}
!643 = !DILocation(line: 0, scope: !641, inlinedAt: !644)
!644 = distinct !DILocation(line: 71, column: 9, scope: !622)
!645 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !644)
!646 = distinct !DILexicalBlock(scope: !647, file: !338, line: 167, column: 19)
!647 = distinct !DILexicalBlock(scope: !648, file: !338, line: 167, column: 13)
!648 = distinct !DILexicalBlock(scope: !641, file: !338, line: 166, column: 16)
!649 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !644)
!650 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !621)
!651 = distinct !DILexicalBlock(scope: !629, file: !338, line: 48, column: 18)
!652 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !621)
!653 = !{!553, !553, i64 0}
!654 = !DILocalVariable(name: "this", arg: 1, scope: !655, type: !619, flags: DIFlagArtificial | DIFlagObjectPointer)
!655 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !340, file: !338, line: 162, type: !405, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !417, retainedNodes: !656)
!656 = !{!654}
!657 = !DILocation(line: 0, scope: !655, inlinedAt: !658)
!658 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !644)
!659 = distinct !DILexicalBlock(scope: !647, file: !338, line: 169, column: 16)
!660 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !658)
!661 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !658)
!662 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !658)
!663 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !644)
!664 = distinct !DILexicalBlock(scope: !665, file: !338, line: 173, column: 46)
!665 = distinct !DILexicalBlock(scope: !666, file: !338, line: 173, column: 24)
!666 = distinct !DILexicalBlock(scope: !659, file: !338, line: 171, column: 17)
!667 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !644)
!668 = distinct !DILexicalBlock(scope: !669, file: !338, line: 180, column: 40)
!669 = distinct !DILexicalBlock(scope: !648, file: !338, line: 180, column: 13)
!670 = !DILocation(line: 73, column: 1, scope: !597)
!671 = distinct !DISubprogram(name: "make_buffer_copy", linkageName: "_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b", scope: !3, file: !518, line: 76, type: !672, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !675)
!672 = !DISubroutineType(types: !673)
!673 = !{!523, !674, !15, !674, !15}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!675 = !{!676, !677, !678, !679, !680, !681, !683, !685, !688, !691, !693, !696, !697, !698, !700}
!676 = !DILocalVariable(name: "src", arg: 1, scope: !671, file: !518, line: 76, type: !674)
!677 = !DILocalVariable(name: "src_host", arg: 2, scope: !671, file: !518, line: 76, type: !15)
!678 = !DILocalVariable(name: "dst", arg: 3, scope: !671, file: !518, line: 77, type: !674)
!679 = !DILocalVariable(name: "dst_host", arg: 4, scope: !671, file: !518, line: 77, type: !15)
!680 = !DILocalVariable(name: "c", scope: !671, file: !518, line: 79, type: !523)
!681 = !DILocalVariable(name: "i", scope: !682, file: !518, line: 83, type: !39)
!682 = distinct !DILexicalBlock(scope: !671, file: !518, line: 83, column: 5)
!683 = !DILocalVariable(name: "i", scope: !684, file: !518, line: 91, type: !39)
!684 = distinct !DILexicalBlock(scope: !671, file: !518, line: 91, column: 5)
!685 = !DILocalVariable(name: "zero", scope: !686, file: !518, line: 100, type: !523)
!686 = distinct !DILexicalBlock(scope: !687, file: !518, line: 98, column: 42)
!687 = distinct !DILexicalBlock(scope: !671, file: !518, line: 96, column: 9)
!688 = !DILocalVariable(name: "zero", scope: !689, file: !518, line: 107, type: !523)
!689 = distinct !DILexicalBlock(scope: !690, file: !518, line: 104, column: 28)
!690 = distinct !DILexicalBlock(scope: !671, file: !518, line: 104, column: 9)
!691 = !DILocalVariable(name: "i", scope: !692, file: !518, line: 115, type: !39)
!692 = distinct !DILexicalBlock(scope: !671, file: !518, line: 115, column: 5)
!693 = !DILocalVariable(name: "dst_stride_bytes", scope: !694, file: !518, line: 117, type: !27)
!694 = distinct !DILexicalBlock(scope: !695, file: !518, line: 115, column: 47)
!695 = distinct !DILexicalBlock(scope: !692, file: !518, line: 115, column: 5)
!696 = !DILocalVariable(name: "src_stride_bytes", scope: !694, file: !518, line: 118, type: !27)
!697 = !DILocalVariable(name: "insert", scope: !694, file: !518, line: 120, type: !39)
!698 = !DILocalVariable(name: "j", scope: !699, file: !518, line: 128, type: !39)
!699 = distinct !DILexicalBlock(scope: !694, file: !518, line: 128, column: 9)
!700 = !DILocalVariable(name: "j", scope: !701, file: !518, line: 151, type: !39)
!701 = distinct !DILexicalBlock(scope: !702, file: !518, line: 151, column: 9)
!702 = distinct !DILexicalBlock(scope: !671, file: !518, line: 145, column: 51)
!703 = !DILocation(line: 0, scope: !671)
!704 = !DILocation(line: 79, column: 5, scope: !671)
!705 = !DILocation(line: 79, column: 17, scope: !671)
!706 = !DILocation(line: 80, column: 13, scope: !671)
!707 = !DILocation(line: 80, column: 39, scope: !671)
!708 = !{!709, !710, i64 16}
!709 = !{!"_ZTS15halide_buffer_t", !552, i64 0, !710, i64 8, !710, i64 16, !552, i64 24, !711, i64 32, !714, i64 36, !710, i64 40, !710, i64 48}
!710 = !{!"any pointer", !553, i64 0}
!711 = !{!"_ZTS13halide_type_t", !712, i64 0, !553, i64 1, !713, i64 2}
!712 = !{!"_ZTS18halide_type_code_t", !553, i64 0}
!713 = !{!"short", !553, i64 0}
!714 = !{!"int", !553, i64 0}
!715 = !DILocation(line: 80, column: 24, scope: !671)
!716 = !DILocation(line: 80, column: 51, scope: !671)
!717 = !{!709, !552, i64 0}
!718 = !DILocation(line: 80, column: 7, scope: !671)
!719 = !DILocation(line: 80, column: 11, scope: !671)
!720 = !DILocation(line: 81, column: 13, scope: !671)
!721 = !DILocation(line: 81, column: 39, scope: !671)
!722 = !DILocation(line: 81, column: 24, scope: !671)
!723 = !DILocation(line: 81, column: 51, scope: !671)
!724 = !DILocation(line: 81, column: 7, scope: !671)
!725 = !DILocation(line: 81, column: 11, scope: !671)
!726 = !DILocalVariable(name: "this", arg: 1, scope: !727, type: !729, flags: DIFlagArtificial | DIFlagObjectPointer)
!727 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !53, file: !21, line: 481, type: !87, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !86, retainedNodes: !728)
!728 = !{!726}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!730 = !DILocation(line: 0, scope: !727, inlinedAt: !731)
!731 = distinct !DILocation(line: 82, column: 30, scope: !671)
!732 = !DILocation(line: 482, column: 17, scope: !727, inlinedAt: !731)
!733 = !{!711, !553, i64 1}
!734 = !DILocation(line: 482, column: 22, scope: !727, inlinedAt: !731)
!735 = !DILocation(line: 482, column: 27, scope: !727, inlinedAt: !731)
!736 = !DILocation(line: 82, column: 20, scope: !671)
!737 = !DILocation(line: 82, column: 7, scope: !671)
!738 = !DILocation(line: 82, column: 18, scope: !671)
!739 = !DILocation(line: 0, scope: !682)
!740 = !DILocation(line: 84, column: 9, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !518, line: 83, column: 45)
!742 = distinct !DILexicalBlock(scope: !682, file: !518, line: 83, column: 5)
!743 = !DILocation(line: 84, column: 21, scope: !741)
!744 = !DILocation(line: 85, column: 9, scope: !741)
!745 = !DILocation(line: 85, column: 31, scope: !741)
!746 = !DILocation(line: 86, column: 9, scope: !741)
!747 = !DILocation(line: 86, column: 31, scope: !741)
!748 = !DILocation(line: 90, column: 7, scope: !671)
!749 = !DILocation(line: 0, scope: !684)
!750 = !DILocation(line: 91, column: 30, scope: !751)
!751 = distinct !DILexicalBlock(scope: !684, file: !518, line: 91, column: 5)
!752 = !{!709, !714, i64 36}
!753 = !DILocation(line: 91, column: 23, scope: !751)
!754 = !DILocation(line: 91, column: 5, scope: !684)
!755 = !{!709, !710, i64 40}
!756 = !DILocation(line: 94, column: 17, scope: !671)
!757 = !DILocation(line: 94, column: 22, scope: !671)
!758 = !DILocation(line: 96, column: 33, scope: !687)
!759 = !DILocation(line: 96, column: 25, scope: !687)
!760 = !DILocation(line: 96, column: 44, scope: !687)
!761 = !DILocation(line: 92, column: 46, scope: !762)
!762 = distinct !DILexicalBlock(scope: !751, file: !518, line: 91, column: 47)
!763 = !{!764, !714, i64 8}
!764 = !{!"_ZTS18halide_dimension_t", !714, i64 0, !714, i64 4, !714, i64 8, !714, i64 12}
!765 = !DILocation(line: 92, column: 34, scope: !762)
!766 = !DILocation(line: 92, column: 68, scope: !762)
!767 = !{!764, !714, i64 0}
!768 = !DILocation(line: 92, column: 86, scope: !762)
!769 = !DILocation(line: 92, column: 72, scope: !762)
!770 = !DILocation(line: 92, column: 55, scope: !762)
!771 = !DILocation(line: 92, column: 53, scope: !762)
!772 = !DILocation(line: 92, column: 21, scope: !762)
!773 = !DILocation(line: 91, column: 43, scope: !751)
!774 = distinct !{!774, !754, !775, !561}
!775 = !DILocation(line: 93, column: 5, scope: !684)
!776 = !DILocation(line: 0, scope: !727, inlinedAt: !777)
!777 = distinct !DILocation(line: 97, column: 19, scope: !687)
!778 = !DILocation(line: 0, scope: !727, inlinedAt: !779)
!779 = distinct !DILocation(line: 97, column: 40, scope: !687)
!780 = !DILocation(line: 482, column: 17, scope: !727, inlinedAt: !779)
!781 = !DILocation(line: 482, column: 22, scope: !727, inlinedAt: !779)
!782 = !DILocation(line: 482, column: 27, scope: !727, inlinedAt: !779)
!783 = !DILocation(line: 97, column: 27, scope: !687)
!784 = !DILocation(line: 97, column: 48, scope: !687)
!785 = !DILocation(line: 100, column: 21, scope: !686)
!786 = !DILocation(line: 101, column: 9, scope: !686)
!787 = !DILocation(line: 104, column: 22, scope: !690)
!788 = !DILocation(line: 104, column: 9, scope: !671)
!789 = !DILocation(line: 0, scope: !692)
!790 = !DILocation(line: 115, column: 5, scope: !692)
!791 = !DILocation(line: 115, column: 23, scope: !695)
!792 = !DILocation(line: 107, column: 21, scope: !689)
!793 = !DILocation(line: 108, column: 9, scope: !689)
!794 = !DILocation(line: 144, column: 14, scope: !671)
!795 = !DILocation(line: 144, column: 28, scope: !671)
!796 = !DILocation(line: 144, column: 25, scope: !671)
!797 = !DILocation(line: 144, column: 50, scope: !671)
!798 = !DILocation(line: 145, column: 28, scope: !671)
!799 = !DILocation(line: 117, column: 59, scope: !694)
!800 = !DILocation(line: 117, column: 47, scope: !694)
!801 = !DILocation(line: 0, scope: !727, inlinedAt: !802)
!802 = distinct !DILocation(line: 117, column: 78, scope: !694)
!803 = !DILocation(line: 117, column: 66, scope: !694)
!804 = !DILocation(line: 0, scope: !694)
!805 = !DILocation(line: 118, column: 59, scope: !694)
!806 = !DILocation(line: 118, column: 47, scope: !694)
!807 = !DILocation(line: 0, scope: !727, inlinedAt: !808)
!808 = distinct !DILocation(line: 118, column: 78, scope: !694)
!809 = !DILocation(line: 118, column: 66, scope: !694)
!810 = !DILocation(line: 121, column: 33, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !518, line: 121, column: 9)
!812 = distinct !DILexicalBlock(scope: !694, file: !518, line: 121, column: 9)
!813 = !DILocation(line: 121, column: 9, scope: !812)
!814 = !DILocation(line: 128, column: 27, scope: !815)
!815 = distinct !DILexicalBlock(scope: !699, file: !518, line: 128, column: 9)
!816 = !DILocation(line: 124, column: 36, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !518, line: 124, column: 17)
!818 = distinct !DILexicalBlock(scope: !811, file: !518, line: 121, column: 48)
!819 = !DILocation(line: 124, column: 34, scope: !817)
!820 = !DILocation(line: 124, column: 63, scope: !817)
!821 = !DILocation(line: 121, column: 44, scope: !811)
!822 = distinct !{!822, !813, !823, !561}
!823 = !DILocation(line: 127, column: 9, scope: !812)
!824 = !DILocation(line: 0, scope: !812)
!825 = !DILocation(line: 0, scope: !699)
!826 = !DILocation(line: 128, column: 9, scope: !699)
!827 = !DILocation(line: 133, column: 40, scope: !694)
!828 = !{!764, !714, i64 4}
!829 = !DILocation(line: 133, column: 28, scope: !694)
!830 = !DILocation(line: 133, column: 9, scope: !694)
!831 = !DILocation(line: 133, column: 26, scope: !694)
!832 = !DILocation(line: 135, column: 9, scope: !694)
!833 = !DILocation(line: 135, column: 36, scope: !694)
!834 = !DILocation(line: 136, column: 9, scope: !694)
!835 = !DILocation(line: 136, column: 36, scope: !694)
!836 = !DILocation(line: 115, column: 43, scope: !695)
!837 = distinct !{!837, !790, !838, !561}
!838 = !DILocation(line: 137, column: 5, scope: !692)
!839 = !DILocation(line: 129, column: 38, scope: !840)
!840 = distinct !DILexicalBlock(scope: !815, file: !518, line: 128, column: 42)
!841 = !DILocation(line: 129, column: 27, scope: !840)
!842 = !DILocation(line: 129, column: 13, scope: !840)
!843 = !DILocation(line: 129, column: 25, scope: !840)
!844 = !DILocation(line: 130, column: 37, scope: !840)
!845 = !DILocation(line: 130, column: 13, scope: !840)
!846 = !DILocation(line: 130, column: 35, scope: !840)
!847 = !DILocation(line: 131, column: 37, scope: !840)
!848 = !DILocation(line: 131, column: 13, scope: !840)
!849 = !DILocation(line: 131, column: 35, scope: !840)
!850 = distinct !{!850, !826, !851, !561}
!851 = !DILocation(line: 132, column: 9, scope: !699)
!852 = !DILocation(line: 145, column: 25, scope: !671)
!853 = !DILocation(line: 144, column: 5, scope: !671)
!854 = !DILocation(line: 147, column: 25, scope: !702)
!855 = !DILocation(line: 147, column: 22, scope: !702)
!856 = !DILocation(line: 0, scope: !701)
!857 = !DILocation(line: 152, column: 31, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !518, line: 151, column: 49)
!859 = distinct !DILexicalBlock(scope: !701, file: !518, line: 151, column: 9)
!860 = !DILocation(line: 152, column: 29, scope: !858)
!861 = !DILocation(line: 153, column: 41, scope: !858)
!862 = !DILocation(line: 153, column: 39, scope: !858)
!863 = !DILocation(line: 154, column: 41, scope: !858)
!864 = !DILocation(line: 154, column: 39, scope: !858)
!865 = !DILocation(line: 156, column: 37, scope: !702)
!866 = !DILocation(line: 157, column: 47, scope: !702)
!867 = !DILocation(line: 158, column: 47, scope: !702)
!868 = distinct !{!868, !853, !869, !561}
!869 = !DILocation(line: 159, column: 5, scope: !671)
!870 = !DILocation(line: 160, column: 12, scope: !671)
!871 = !{i64 0, i64 8, !551, i64 8, i64 8, !551, i64 16, i64 8, !551, i64 24, i64 128, !653, i64 152, i64 128, !653, i64 280, i64 128, !653, i64 408, i64 8, !551}
!872 = !DILocation(line: 160, column: 5, scope: !671)
!873 = !DILocation(line: 161, column: 1, scope: !671)
!874 = distinct !DISubprogram(name: "make_host_to_device_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t", scope: !3, file: !518, line: 163, type: !875, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !877)
!875 = !DISubroutineType(types: !876)
!876 = !{!523, !674}
!877 = !{!878}
!878 = !DILocalVariable(name: "buf", arg: 1, scope: !874, file: !518, line: 163, type: !674)
!879 = !DILocation(line: 0, scope: !874)
!880 = !DILocation(line: 164, column: 12, scope: !874)
!881 = !DILocation(line: 164, column: 5, scope: !874)
!882 = distinct !DISubprogram(name: "make_device_to_host_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t", scope: !3, file: !518, line: 167, type: !875, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !883)
!883 = !{!884}
!884 = !DILocalVariable(name: "buf", arg: 1, scope: !882, file: !518, line: 167, type: !674)
!885 = !DILocation(line: 0, scope: !882)
!886 = !DILocation(line: 168, column: 12, scope: !882)
!887 = !DILocation(line: 168, column: 5, scope: !882)
!888 = distinct !DISubprogram(name: "halide_hexagon_dma_device_malloc", scope: !6, file: !6, line: 363, type: !889, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !892)
!889 = !DISubroutineType(types: !890)
!890 = !{!39, !13, !891}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!892 = !{!893, !894, !895, !896, !897}
!893 = !DILocalVariable(name: "user_context", arg: 1, scope: !888, file: !6, line: 363, type: !13)
!894 = !DILocalVariable(name: "buf", arg: 2, scope: !888, file: !6, line: 363, type: !891)
!895 = !DILocalVariable(name: "size", scope: !888, file: !6, line: 373, type: !145)
!896 = !DILocalVariable(name: "mem", scope: !888, file: !6, line: 376, type: !13)
!897 = !DILocalVariable(name: "err", scope: !888, file: !6, line: 382, type: !39)
!898 = !DILocation(line: 0, scope: !888)
!899 = !DILocation(line: 0, scope: !615, inlinedAt: !900)
!900 = distinct !DILocation(line: 364, column: 5, scope: !888)
!901 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !900)
!902 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !900)
!903 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !900)
!904 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !900)
!905 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !900)
!906 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !900)
!907 = !DILocation(line: 0, scope: !629, inlinedAt: !900)
!908 = !DILocation(line: 0, scope: !632, inlinedAt: !909)
!909 = distinct !DILocation(line: 365, column: 9, scope: !888)
!910 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !909)
!911 = !DILocalVariable(name: "this", arg: 1, scope: !912, type: !619, flags: DIFlagArtificial | DIFlagObjectPointer)
!912 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !340, file: !338, line: 97, type: !384, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !383, retainedNodes: !913)
!913 = !{!911, !914}
!914 = !DILocalVariable(name: "arg", arg: 2, scope: !912, file: !338, line: 97, type: !386)
!915 = !DILocation(line: 0, scope: !912, inlinedAt: !916)
!916 = distinct !DILocation(line: 365, column: 72, scope: !888)
!917 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !916)
!918 = !DILocation(line: 0, scope: !632, inlinedAt: !919)
!919 = distinct !DILocation(line: 366, column: 9, scope: !888)
!920 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !919)
!921 = !DILocalVariable(name: "this", arg: 1, scope: !922, type: !619, flags: DIFlagArtificial | DIFlagObjectPointer)
!922 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !340, file: !338, line: 113, type: !396, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !395, retainedNodes: !923)
!923 = !{!921, !924}
!924 = !DILocalVariable(name: "buf", arg: 2, scope: !922, file: !338, line: 113, type: !398)
!925 = !DILocation(line: 0, scope: !922, inlinedAt: !926)
!926 = distinct !DILocation(line: 366, column: 22, scope: !888)
!927 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !926)
!928 = !DILocation(line: 0, scope: !632, inlinedAt: !929)
!929 = distinct !DILocation(line: 366, column: 30, scope: !888)
!930 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !929)
!931 = !DILocation(line: 0, scope: !641, inlinedAt: !932)
!932 = distinct !DILocation(line: 364, column: 5, scope: !888)
!933 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !932)
!934 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !932)
!935 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !932)
!936 = !DILocation(line: 0, scope: !655, inlinedAt: !937)
!937 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !932)
!938 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !937)
!939 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !937)
!940 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !937)
!941 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !932)
!942 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !932)
!943 = !DILocation(line: 368, column: 14, scope: !944)
!944 = distinct !DILexicalBlock(scope: !888, file: !6, line: 368, column: 9)
!945 = !DILocation(line: 368, column: 9, scope: !944)
!946 = !DILocation(line: 368, column: 9, scope: !888)
!947 = !DILocation(line: 0, scope: !615, inlinedAt: !948)
!948 = distinct !DILocation(line: 369, column: 9, scope: !949)
!949 = distinct !DILexicalBlock(scope: !944, file: !6, line: 368, column: 22)
!950 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !948)
!951 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !948)
!952 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !948)
!953 = !DILocation(line: 0, scope: !632, inlinedAt: !954)
!954 = distinct !DILocation(line: 369, column: 29, scope: !949)
!955 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !954)
!956 = !DILocation(line: 0, scope: !641, inlinedAt: !957)
!957 = distinct !DILocation(line: 369, column: 9, scope: !949)
!958 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !957)
!959 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !957)
!960 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !948)
!961 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !948)
!962 = !DILocation(line: 0, scope: !655, inlinedAt: !963)
!963 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !957)
!964 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !963)
!965 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !963)
!966 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !963)
!967 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !957)
!968 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !957)
!969 = !DILocation(line: 370, column: 9, scope: !949)
!970 = !DILocalVariable(name: "this", arg: 1, scope: !971, type: !182, flags: DIFlagArtificial | DIFlagObjectPointer)
!971 = distinct !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !41, file: !21, line: 1518, type: !143, scopeLine: 1518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !151, retainedNodes: !972)
!972 = !{!970}
!973 = !DILocation(line: 0, scope: !971, inlinedAt: !974)
!974 = distinct !DILocation(line: 373, column: 24, scope: !888)
!975 = !DILocalVariable(name: "this", arg: 1, scope: !976, type: !182, flags: DIFlagArtificial | DIFlagObjectPointer)
!976 = distinct !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !41, file: !21, line: 1506, type: !148, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !150, retainedNodes: !977)
!977 = !{!975, !978, !979}
!978 = !DILocalVariable(name: "index", scope: !976, file: !21, line: 1507, type: !505)
!979 = !DILocalVariable(name: "i", scope: !980, file: !21, line: 1508, type: !39)
!980 = distinct !DILexicalBlock(scope: !976, file: !21, line: 1508, column: 9)
!981 = !DILocation(line: 0, scope: !976, inlinedAt: !982)
!982 = distinct !DILocation(line: 1519, column: 25, scope: !971, inlinedAt: !974)
!983 = !DILocation(line: 0, scope: !980, inlinedAt: !982)
!984 = !DILocation(line: 1508, column: 29, scope: !985, inlinedAt: !982)
!985 = distinct !DILexicalBlock(scope: !980, file: !21, line: 1508, column: 9)
!986 = !DILocation(line: 1508, column: 27, scope: !985, inlinedAt: !982)
!987 = !DILocation(line: 1508, column: 9, scope: !980, inlinedAt: !982)
!988 = !DILocation(line: 0, scope: !727, inlinedAt: !989)
!989 = distinct !DILocation(line: 1514, column: 36, scope: !976, inlinedAt: !982)
!990 = !DILocation(line: 482, column: 17, scope: !727, inlinedAt: !989)
!991 = !DILocalVariable(name: "this", arg: 1, scope: !992, type: !182, flags: DIFlagArtificial | DIFlagObjectPointer)
!992 = distinct !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !41, file: !21, line: 1495, type: !148, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !147, retainedNodes: !993)
!993 = !{!991, !994, !995}
!994 = !DILocalVariable(name: "index", scope: !992, file: !21, line: 1496, type: !505)
!995 = !DILocalVariable(name: "i", scope: !996, file: !21, line: 1497, type: !39)
!996 = distinct !DILexicalBlock(scope: !992, file: !21, line: 1497, column: 9)
!997 = !DILocation(line: 0, scope: !992, inlinedAt: !998)
!998 = distinct !DILocation(line: 1519, column: 33, scope: !971, inlinedAt: !974)
!999 = !DILocation(line: 0, scope: !996, inlinedAt: !998)
!1000 = !DILocation(line: 1497, column: 9, scope: !996, inlinedAt: !998)
!1001 = !DILocation(line: 1509, column: 24, scope: !1002, inlinedAt: !982)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !21, line: 1509, column: 17)
!1003 = distinct !DILexicalBlock(scope: !985, file: !21, line: 1508, column: 46)
!1004 = !DILocation(line: 1509, column: 31, scope: !1002, inlinedAt: !982)
!1005 = !DILocation(line: 1509, column: 17, scope: !1003, inlinedAt: !982)
!1006 = !DILocation(line: 1510, column: 37, scope: !1007, inlinedAt: !982)
!1007 = distinct !DILexicalBlock(scope: !1002, file: !21, line: 1509, column: 36)
!1008 = !DILocation(line: 1510, column: 61, scope: !1007, inlinedAt: !982)
!1009 = !DILocation(line: 1510, column: 68, scope: !1007, inlinedAt: !982)
!1010 = !DILocation(line: 1510, column: 53, scope: !1007, inlinedAt: !982)
!1011 = !DILocation(line: 1510, column: 51, scope: !1007, inlinedAt: !982)
!1012 = !DILocation(line: 1510, column: 23, scope: !1007, inlinedAt: !982)
!1013 = !DILocation(line: 1511, column: 13, scope: !1007, inlinedAt: !982)
!1014 = !DILocation(line: 1508, column: 42, scope: !985, inlinedAt: !982)
!1015 = distinct !{!1015, !987, !1016, !561}
!1016 = !DILocation(line: 1512, column: 9, scope: !980, inlinedAt: !982)
!1017 = !DILocation(line: 1498, column: 24, scope: !1018, inlinedAt: !998)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !21, line: 1498, column: 17)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !21, line: 1497, column: 46)
!1020 = distinct !DILexicalBlock(scope: !996, file: !21, line: 1497, column: 9)
!1021 = !DILocation(line: 1498, column: 31, scope: !1018, inlinedAt: !998)
!1022 = !DILocation(line: 1498, column: 17, scope: !1019, inlinedAt: !998)
!1023 = !DILocation(line: 1499, column: 37, scope: !1024, inlinedAt: !998)
!1024 = distinct !DILexicalBlock(scope: !1018, file: !21, line: 1498, column: 36)
!1025 = !DILocation(line: 1499, column: 61, scope: !1024, inlinedAt: !998)
!1026 = !DILocation(line: 1499, column: 68, scope: !1024, inlinedAt: !998)
!1027 = !DILocation(line: 1499, column: 53, scope: !1024, inlinedAt: !998)
!1028 = !DILocation(line: 1499, column: 51, scope: !1024, inlinedAt: !998)
!1029 = !DILocation(line: 1499, column: 23, scope: !1024, inlinedAt: !998)
!1030 = !DILocation(line: 1500, column: 13, scope: !1024, inlinedAt: !998)
!1031 = !DILocation(line: 1497, column: 42, scope: !1020, inlinedAt: !998)
!1032 = !DILocation(line: 1497, column: 27, scope: !1020, inlinedAt: !998)
!1033 = distinct !{!1033, !1000, !1034, !561}
!1034 = !DILocation(line: 1501, column: 9, scope: !996, inlinedAt: !998)
!1035 = !DILocation(line: 482, column: 22, scope: !727, inlinedAt: !989)
!1036 = !DILocation(line: 482, column: 27, scope: !727, inlinedAt: !989)
!1037 = !DILocation(line: 1513, column: 15, scope: !976, inlinedAt: !982)
!1038 = !DILocation(line: 0, scope: !727, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 1502, column: 36, scope: !992, inlinedAt: !998)
!1040 = !DILocation(line: 1519, column: 31, scope: !971, inlinedAt: !974)
!1041 = !DILocation(line: 374, column: 5, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !6, line: 374, column: 5)
!1043 = distinct !DILexicalBlock(scope: !888, file: !6, line: 374, column: 5)
!1044 = !DILocation(line: 374, column: 5, scope: !1043)
!1045 = !DILocation(line: 374, column: 5, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !6, line: 374, column: 5)
!1047 = !DILocation(line: 376, column: 17, scope: !888)
!1048 = !DILocation(line: 377, column: 10, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !888, file: !6, line: 377, column: 9)
!1050 = !DILocation(line: 377, column: 9, scope: !888)
!1051 = !DILocalVariable(name: "this", arg: 1, scope: !1052, type: !1056, flags: DIFlagArtificial | DIFlagObjectPointer)
!1052 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !423, file: !338, line: 37, type: !432, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !431, retainedNodes: !1053)
!1053 = !{!1051, !1054, !1055}
!1054 = !DILocalVariable(name: "ctx", arg: 2, scope: !1052, file: !338, line: 37, type: !13)
!1055 = !DILocalVariable(name: "mem", arg: 3, scope: !1052, file: !338, line: 37, type: !343)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!1057 = !DILocation(line: 0, scope: !1052, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 378, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1049, file: !6, line: 377, column: 15)
!1060 = !DILocation(line: 44, column: 27, scope: !1061, inlinedAt: !1058)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !338, line: 43, column: 16)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !338, line: 41, column: 20)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !338, line: 39, column: 13)
!1064 = distinct !DILexicalBlock(scope: !1052, file: !338, line: 38, column: 54)
!1065 = !DILocation(line: 48, column: 13, scope: !1066, inlinedAt: !1058)
!1066 = distinct !DILexicalBlock(scope: !1064, file: !338, line: 48, column: 13)
!1067 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !1058)
!1068 = !DILocalVariable(name: "this", arg: 1, scope: !1069, type: !1056, flags: DIFlagArtificial | DIFlagObjectPointer)
!1069 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !423, file: !338, line: 57, type: !436, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !435, retainedNodes: !1070)
!1070 = !{!1068, !1071}
!1071 = !DILocalVariable(name: "arg", arg: 2, scope: !1069, file: !338, line: 57, type: !359)
!1072 = !DILocation(line: 0, scope: !1069, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 378, column: 29, scope: !1059)
!1074 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !1073)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !338, line: 61, column: 16)
!1076 = distinct !DILexicalBlock(scope: !1069, file: !338, line: 59, column: 13)
!1077 = !DILocalVariable(name: "this", arg: 1, scope: !1078, type: !1056, flags: DIFlagArtificial | DIFlagObjectPointer)
!1078 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !423, file: !338, line: 166, type: !473, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !486, retainedNodes: !1079)
!1079 = !{!1077}
!1080 = !DILocation(line: 0, scope: !1078, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 378, column: 9, scope: !1059)
!1082 = !DILocation(line: 168, column: 13, scope: !1083, inlinedAt: !1081)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !338, line: 167, column: 19)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !338, line: 167, column: 13)
!1085 = distinct !DILexicalBlock(scope: !1078, file: !338, line: 166, column: 16)
!1086 = !DILocation(line: 169, column: 9, scope: !1083, inlinedAt: !1081)
!1087 = !DILocation(line: 49, column: 23, scope: !1088, inlinedAt: !1058)
!1088 = distinct !DILexicalBlock(scope: !1066, file: !338, line: 48, column: 18)
!1089 = !DILocation(line: 50, column: 18, scope: !1088, inlinedAt: !1058)
!1090 = !DILocalVariable(name: "this", arg: 1, scope: !1091, type: !1056, flags: DIFlagArtificial | DIFlagObjectPointer)
!1091 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !423, file: !338, line: 162, type: !473, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !485, retainedNodes: !1092)
!1092 = !{!1090}
!1093 = !DILocation(line: 0, scope: !1091, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 170, column: 13, scope: !1095, inlinedAt: !1081)
!1095 = distinct !DILexicalBlock(scope: !1084, file: !338, line: 169, column: 16)
!1096 = !DILocation(line: 163, column: 81, scope: !1091, inlinedAt: !1094)
!1097 = !DILocation(line: 163, column: 87, scope: !1091, inlinedAt: !1094)
!1098 = !DILocation(line: 163, column: 15, scope: !1091, inlinedAt: !1094)
!1099 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !1081)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !338, line: 171, column: 39)
!1101 = distinct !DILexicalBlock(scope: !1095, file: !338, line: 171, column: 17)
!1102 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !1081)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !338, line: 180, column: 40)
!1104 = distinct !DILexicalBlock(scope: !1085, file: !338, line: 180, column: 13)
!1105 = !DILocation(line: 379, column: 9, scope: !1059)
!1106 = !DILocation(line: 383, column: 53, scope: !888)
!1107 = !DILocation(line: 382, column: 15, scope: !888)
!1108 = !DILocation(line: 384, column: 13, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !888, file: !6, line: 384, column: 9)
!1110 = !DILocation(line: 384, column: 9, scope: !888)
!1111 = !DILocation(line: 385, column: 9, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !6, line: 384, column: 19)
!1113 = !DILocation(line: 386, column: 9, scope: !1112)
!1114 = !DILocation(line: 390, column: 1, scope: !888)
!1115 = !DISubprogram(name: "halide_print", scope: !21, file: !21, line: 97, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{null, !13, !359}
!1118 = !DISubprogram(name: "abort", scope: !26, file: !26, line: 108, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!1119 = !DISubprogram(name: "halide_malloc", scope: !21, file: !21, line: 354, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!13, !13, !146}
!1122 = distinct !DISubprogram(name: "halide_hexagon_dma_device_wrap_native", scope: !6, file: !6, line: 617, type: !226, scopeLine: 618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1123)
!1123 = !{!1124, !1125, !1126, !1127}
!1124 = !DILocalVariable(name: "user_context", arg: 1, scope: !1122, file: !6, line: 617, type: !13)
!1125 = !DILocalVariable(name: "buf", arg: 2, scope: !1122, file: !6, line: 617, type: !40)
!1126 = !DILocalVariable(name: "handle", arg: 3, scope: !1122, file: !6, line: 618, type: !27)
!1127 = !DILocalVariable(name: "dev", scope: !1122, file: !6, line: 632, type: !489)
!1128 = !DILocation(line: 0, scope: !1122)
!1129 = !DILocation(line: 0, scope: !615, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 619, column: 5, scope: !1122)
!1131 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !1130)
!1132 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !1130)
!1133 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !1130)
!1134 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !1130)
!1135 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !1130)
!1136 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !1130)
!1137 = !DILocation(line: 0, scope: !629, inlinedAt: !1130)
!1138 = !DILocation(line: 0, scope: !632, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 620, column: 9, scope: !1122)
!1140 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1139)
!1141 = !DILocation(line: 0, scope: !912, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 620, column: 77, scope: !1122)
!1143 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1142)
!1144 = !DILocation(line: 0, scope: !632, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 621, column: 9, scope: !1122)
!1146 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1145)
!1147 = !DILocation(line: 0, scope: !922, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 621, column: 21, scope: !1122)
!1149 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !1148)
!1150 = !DILocation(line: 0, scope: !632, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 621, column: 29, scope: !1122)
!1152 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1151)
!1153 = !DILocalVariable(name: "this", arg: 1, scope: !1154, type: !619, flags: DIFlagArtificial | DIFlagObjectPointer)
!1154 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !340, file: !338, line: 77, type: !370, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !369, retainedNodes: !1155)
!1155 = !{!1153, !1156}
!1156 = !DILocalVariable(name: "arg", arg: 2, scope: !1154, file: !338, line: 77, type: !27)
!1157 = !DILocation(line: 0, scope: !1154, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 621, column: 44, scope: !1122)
!1159 = !DILocation(line: 78, column: 15, scope: !1154, inlinedAt: !1158)
!1160 = !DILocation(line: 0, scope: !632, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 621, column: 54, scope: !1122)
!1162 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1161)
!1163 = !DILocation(line: 0, scope: !641, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 619, column: 5, scope: !1122)
!1165 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !1164)
!1166 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !1164)
!1167 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !1164)
!1168 = !DILocation(line: 0, scope: !655, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !1164)
!1170 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !1169)
!1171 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !1169)
!1172 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !1169)
!1173 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1164)
!1174 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1164)
!1175 = !DILocation(line: 623, column: 5, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !6, line: 623, column: 5)
!1177 = distinct !DILexicalBlock(scope: !1122, file: !6, line: 623, column: 5)
!1178 = !DILocation(line: 623, column: 5, scope: !1177)
!1179 = !DILocation(line: 623, column: 5, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !6, line: 623, column: 5)
!1181 = !DILocation(line: 624, column: 14, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1122, file: !6, line: 624, column: 9)
!1183 = !DILocation(line: 624, column: 21, scope: !1182)
!1184 = !DILocation(line: 624, column: 9, scope: !1122)
!1185 = !DILocation(line: 0, scope: !1052, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 625, column: 9, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1182, file: !6, line: 624, column: 27)
!1188 = !DILocation(line: 44, column: 27, scope: !1061, inlinedAt: !1186)
!1189 = !DILocation(line: 48, column: 13, scope: !1066, inlinedAt: !1186)
!1190 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !1186)
!1191 = !DILocation(line: 0, scope: !1069, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 625, column: 29, scope: !1187)
!1193 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !1192)
!1194 = !DILocation(line: 0, scope: !1078, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 625, column: 9, scope: !1187)
!1196 = !DILocation(line: 168, column: 13, scope: !1083, inlinedAt: !1195)
!1197 = !DILocation(line: 169, column: 9, scope: !1083, inlinedAt: !1195)
!1198 = !DILocation(line: 49, column: 23, scope: !1088, inlinedAt: !1186)
!1199 = !DILocation(line: 50, column: 18, scope: !1088, inlinedAt: !1186)
!1200 = !DILocation(line: 0, scope: !1091, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 170, column: 13, scope: !1095, inlinedAt: !1195)
!1202 = !DILocation(line: 163, column: 81, scope: !1091, inlinedAt: !1201)
!1203 = !DILocation(line: 163, column: 87, scope: !1091, inlinedAt: !1201)
!1204 = !DILocation(line: 163, column: 15, scope: !1091, inlinedAt: !1201)
!1205 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !1195)
!1206 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !1195)
!1207 = !DILocation(line: 626, column: 9, scope: !1187)
!1208 = !DILocation(line: 629, column: 10, scope: !1122)
!1209 = !DILocation(line: 629, column: 27, scope: !1122)
!1210 = !{!709, !710, i64 8}
!1211 = !DILocation(line: 630, column: 28, scope: !1122)
!1212 = !{!1213, !710, i64 120}
!1213 = !{!"_ZTS25halide_device_interface_t", !710, i64 0, !710, i64 8, !710, i64 16, !710, i64 24, !710, i64 32, !710, i64 40, !710, i64 48, !710, i64 56, !710, i64 64, !710, i64 72, !710, i64 80, !710, i64 88, !710, i64 96, !710, i64 104, !710, i64 112, !710, i64 120}
!1214 = !DILocation(line: 630, column: 34, scope: !1122)
!1215 = !{!1216, !710, i64 0}
!1216 = !{!"_ZTS30halide_device_interface_impl_t", !710, i64 0, !710, i64 8, !710, i64 16, !710, i64 24, !710, i64 32, !710, i64 40, !710, i64 48, !710, i64 56, !710, i64 64, !710, i64 72, !710, i64 80, !710, i64 88, !710, i64 96, !710, i64 104, !710, i64 112, !710, i64 120}
!1217 = !DILocation(line: 630, column: 5, scope: !1122)
!1218 = !DILocation(line: 39, column: 51, scope: !1219, inlinedAt: !1224)
!1219 = distinct !DISubprogram(name: "malloc_device_handle", linkageName: "_ZN6Halide7Runtime8Internal10HexagonDma20malloc_device_handleEv", scope: !2, file: !6, line: 38, type: !1220, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!489}
!1222 = !{!1223}
!1223 = !DILocalVariable(name: "dev", scope: !1219, file: !6, line: 39, type: !489)
!1224 = distinct !DILocation(line: 632, column: 30, scope: !1122)
!1225 = !DILocation(line: 0, scope: !1219, inlinedAt: !1224)
!1226 = !DILocation(line: 40, column: 10, scope: !1219, inlinedAt: !1224)
!1227 = !DILocation(line: 41, column: 10, scope: !1219, inlinedAt: !1224)
!1228 = !DILocation(line: 41, column: 21, scope: !1219, inlinedAt: !1224)
!1229 = !{!1230, !713, i64 8}
!1230 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma17dma_device_handleE", !710, i64 0, !713, i64 8, !713, i64 10, !713, i64 12, !713, i64 14, !710, i64 16, !714, i64 24, !714, i64 28, !714, i64 32, !1231, i64 36, !1231, i64 37, !1232, i64 40}
!1231 = !{!"bool", !553, i64 0}
!1232 = !{!"_ZTS9t_eDmaFmt", !553, i64 0}
!1233 = !DILocation(line: 42, column: 10, scope: !1219, inlinedAt: !1224)
!1234 = !DILocation(line: 42, column: 21, scope: !1219, inlinedAt: !1224)
!1235 = !{!1230, !713, i64 10}
!1236 = !DILocation(line: 43, column: 10, scope: !1219, inlinedAt: !1224)
!1237 = !DILocation(line: 43, column: 21, scope: !1219, inlinedAt: !1224)
!1238 = !{!1230, !713, i64 12}
!1239 = !DILocation(line: 44, column: 10, scope: !1219, inlinedAt: !1224)
!1240 = !DILocation(line: 44, column: 21, scope: !1219, inlinedAt: !1224)
!1241 = !{!1230, !713, i64 14}
!1242 = !DILocation(line: 45, column: 10, scope: !1219, inlinedAt: !1224)
!1243 = !DILocation(line: 46, column: 10, scope: !1219, inlinedAt: !1224)
!1244 = !DILocation(line: 47, column: 10, scope: !1219, inlinedAt: !1224)
!1245 = !DILocation(line: 48, column: 10, scope: !1219, inlinedAt: !1224)
!1246 = !DILocation(line: 49, column: 10, scope: !1219, inlinedAt: !1224)
!1247 = !DILocation(line: 49, column: 18, scope: !1219, inlinedAt: !1224)
!1248 = !{!1230, !1231, i64 36}
!1249 = !DILocation(line: 50, column: 10, scope: !1219, inlinedAt: !1224)
!1250 = !DILocation(line: 50, column: 14, scope: !1219, inlinedAt: !1224)
!1251 = !{!1230, !1232, i64 40}
!1252 = !DILocation(line: 51, column: 10, scope: !1219, inlinedAt: !1224)
!1253 = !DILocation(line: 51, column: 19, scope: !1219, inlinedAt: !1224)
!1254 = !{!1230, !1231, i64 37}
!1255 = !DILocation(line: 634, column: 19, scope: !1122)
!1256 = !DILocation(line: 634, column: 17, scope: !1122)
!1257 = !{!1230, !710, i64 0}
!1258 = !DILocation(line: 635, column: 21, scope: !1122)
!1259 = !{!1230, !710, i64 16}
!1260 = !DILocation(line: 636, column: 29, scope: !1122)
!1261 = !DILocation(line: 636, column: 36, scope: !1122)
!1262 = !DILocation(line: 636, column: 57, scope: !1122)
!1263 = !DILocation(line: 636, column: 43, scope: !1122)
!1264 = !DILocation(line: 636, column: 22, scope: !1122)
!1265 = !{!1230, !714, i64 24}
!1266 = !DILocation(line: 637, column: 37, scope: !1122)
!1267 = !DILocation(line: 637, column: 23, scope: !1122)
!1268 = !{!1230, !714, i64 28}
!1269 = !DILocation(line: 638, column: 37, scope: !1122)
!1270 = !DILocation(line: 638, column: 23, scope: !1122)
!1271 = !{!1230, !714, i64 32}
!1272 = !DILocation(line: 639, column: 19, scope: !1122)
!1273 = !DILocation(line: 639, column: 17, scope: !1122)
!1274 = !DILocation(line: 642, column: 1, scope: !1122)
!1275 = !DISubprogram(name: "halide_free", scope: !21, file: !21, line: 355, type: !1276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !13, !13}
!1278 = distinct !DISubprogram(name: "halide_hexagon_dma_device_free", scope: !6, file: !6, line: 392, type: !889, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1279)
!1279 = !{!1280, !1281, !1282, !1283}
!1280 = !DILocalVariable(name: "user_context", arg: 1, scope: !1278, file: !6, line: 392, type: !13)
!1281 = !DILocalVariable(name: "buf", arg: 2, scope: !1278, file: !6, line: 392, type: !891)
!1282 = !DILocalVariable(name: "dev", scope: !1278, file: !6, line: 397, type: !489)
!1283 = !DILocalVariable(name: "mem", scope: !1278, file: !6, line: 398, type: !13)
!1284 = !DILocation(line: 0, scope: !1278)
!1285 = !DILocation(line: 0, scope: !615, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 393, column: 5, scope: !1278)
!1287 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !1286)
!1288 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !1286)
!1289 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !1286)
!1290 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !1286)
!1291 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !1286)
!1292 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !1286)
!1293 = !DILocation(line: 0, scope: !629, inlinedAt: !1286)
!1294 = !DILocation(line: 0, scope: !632, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 394, column: 9, scope: !1278)
!1296 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1295)
!1297 = !DILocation(line: 0, scope: !912, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 394, column: 70, scope: !1278)
!1299 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1298)
!1300 = !DILocation(line: 0, scope: !632, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 395, column: 9, scope: !1278)
!1302 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1301)
!1303 = !DILocation(line: 0, scope: !922, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 395, column: 22, scope: !1278)
!1305 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !1304)
!1306 = !DILocation(line: 0, scope: !632, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 395, column: 30, scope: !1278)
!1308 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1307)
!1309 = !DILocation(line: 0, scope: !641, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 393, column: 5, scope: !1278)
!1311 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !1310)
!1312 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !1310)
!1313 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !1310)
!1314 = !DILocation(line: 0, scope: !655, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !1310)
!1316 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !1315)
!1317 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !1315)
!1318 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !1315)
!1319 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1310)
!1320 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1310)
!1321 = !DILocation(line: 397, column: 56, scope: !1278)
!1322 = !DILocation(line: 397, column: 30, scope: !1278)
!1323 = !DILocation(line: 398, column: 22, scope: !1278)
!1324 = !DILocation(line: 399, column: 5, scope: !1278)
!1325 = !DILocation(line: 401, column: 5, scope: !1278)
!1326 = !DILocalVariable(name: "this", arg: 1, scope: !1327, type: !40, flags: DIFlagArtificial | DIFlagObjectPointer)
!1327 = distinct !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !41, file: !21, line: 1478, type: !139, scopeLine: 1478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !141, retainedNodes: !1328)
!1328 = !{!1326, !1329}
!1329 = !DILocalVariable(name: "v", arg: 2, scope: !1327, file: !21, line: 1478, type: !15)
!1330 = !DILocation(line: 0, scope: !1327, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 404, column: 10, scope: !1278)
!1332 = !DILocalVariable(name: "this", arg: 1, scope: !1333, type: !40, flags: DIFlagArtificial | DIFlagObjectPointer)
!1333 = distinct !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !41, file: !21, line: 1458, type: !131, scopeLine: 1458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !130, retainedNodes: !1334)
!1334 = !{!1332, !1335, !1336}
!1335 = !DILocalVariable(name: "flag", arg: 2, scope: !1333, file: !21, line: 1458, type: !125)
!1336 = !DILocalVariable(name: "value", arg: 3, scope: !1333, file: !21, line: 1458, type: !15)
!1337 = !DILocation(line: 0, scope: !1333, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 1479, column: 9, scope: !1327, inlinedAt: !1331)
!1339 = !DILocation(line: 1462, column: 13, scope: !1340, inlinedAt: !1338)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !21, line: 1461, column: 16)
!1341 = distinct !DILexicalBlock(scope: !1333, file: !21, line: 1459, column: 13)
!1342 = !DILocation(line: 1462, column: 19, scope: !1340, inlinedAt: !1338)
!1343 = !{!709, !552, i64 24}
!1344 = !DILocation(line: 405, column: 5, scope: !1278)
!1345 = distinct !DISubprogram(name: "halide_hexagon_dma_device_detach_native", scope: !6, file: !6, line: 644, type: !163, scopeLine: 644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1346)
!1346 = !{!1347, !1348, !1349}
!1347 = !DILocalVariable(name: "user_context", arg: 1, scope: !1345, file: !6, line: 644, type: !13)
!1348 = !DILocalVariable(name: "buf", arg: 2, scope: !1345, file: !6, line: 644, type: !40)
!1349 = !DILocalVariable(name: "dev", scope: !1345, file: !6, line: 654, type: !489)
!1350 = !DILocation(line: 0, scope: !1345)
!1351 = !DILocation(line: 0, scope: !615, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 645, column: 5, scope: !1345)
!1353 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !1352)
!1354 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !1352)
!1355 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !1352)
!1356 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !1352)
!1357 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !1352)
!1358 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !1352)
!1359 = !DILocation(line: 0, scope: !629, inlinedAt: !1352)
!1360 = !DILocation(line: 0, scope: !632, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 646, column: 9, scope: !1345)
!1362 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1361)
!1363 = !DILocation(line: 0, scope: !912, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 646, column: 79, scope: !1345)
!1365 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1364)
!1366 = !DILocation(line: 0, scope: !632, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 647, column: 9, scope: !1345)
!1368 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1367)
!1369 = !DILocation(line: 0, scope: !922, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 647, column: 21, scope: !1345)
!1371 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !1370)
!1372 = !DILocation(line: 0, scope: !632, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 647, column: 29, scope: !1345)
!1374 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1373)
!1375 = !DILocation(line: 0, scope: !641, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 645, column: 5, scope: !1345)
!1377 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !1376)
!1378 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !1376)
!1379 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !1376)
!1380 = !DILocation(line: 0, scope: !655, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !1376)
!1382 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !1381)
!1383 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !1381)
!1384 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !1381)
!1385 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1376)
!1386 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1376)
!1387 = !DILocation(line: 649, column: 14, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1345, file: !6, line: 649, column: 9)
!1389 = !DILocation(line: 649, column: 21, scope: !1388)
!1390 = !DILocation(line: 649, column: 9, scope: !1345)
!1391 = !DILocation(line: 0, scope: !1052, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 650, column: 9, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !6, line: 649, column: 27)
!1394 = !DILocation(line: 44, column: 27, scope: !1061, inlinedAt: !1392)
!1395 = !DILocation(line: 48, column: 13, scope: !1066, inlinedAt: !1392)
!1396 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !1392)
!1397 = !DILocation(line: 0, scope: !1069, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 650, column: 29, scope: !1393)
!1399 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !1398)
!1400 = !DILocation(line: 0, scope: !1078, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 650, column: 9, scope: !1393)
!1402 = !DILocation(line: 168, column: 13, scope: !1083, inlinedAt: !1401)
!1403 = !DILocation(line: 169, column: 9, scope: !1083, inlinedAt: !1401)
!1404 = !DILocation(line: 49, column: 23, scope: !1088, inlinedAt: !1392)
!1405 = !DILocation(line: 50, column: 18, scope: !1088, inlinedAt: !1392)
!1406 = !DILocation(line: 0, scope: !1091, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 170, column: 13, scope: !1095, inlinedAt: !1401)
!1408 = !DILocation(line: 163, column: 81, scope: !1091, inlinedAt: !1407)
!1409 = !DILocation(line: 163, column: 87, scope: !1091, inlinedAt: !1407)
!1410 = !DILocation(line: 163, column: 15, scope: !1091, inlinedAt: !1407)
!1411 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !1401)
!1412 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !1401)
!1413 = !DILocation(line: 651, column: 9, scope: !1393)
!1414 = !DILocation(line: 653, column: 5, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 653, column: 5)
!1416 = distinct !DILexicalBlock(scope: !1345, file: !6, line: 653, column: 5)
!1417 = !DILocation(line: 653, column: 5, scope: !1416)
!1418 = !DILocation(line: 653, column: 5, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 653, column: 5)
!1420 = !DILocation(line: 654, column: 56, scope: !1345)
!1421 = !DILocation(line: 655, column: 10, scope: !1345)
!1422 = !DILocation(line: 655, column: 5, scope: !1345)
!1423 = !DILocation(line: 656, column: 10, scope: !1345)
!1424 = !DILocation(line: 656, column: 28, scope: !1345)
!1425 = !DILocation(line: 656, column: 34, scope: !1345)
!1426 = !{!1216, !710, i64 8}
!1427 = !DILocation(line: 656, column: 5, scope: !1345)
!1428 = !DILocation(line: 657, column: 17, scope: !1345)
!1429 = !DILocation(line: 658, column: 27, scope: !1345)
!1430 = !DILocation(line: 661, column: 1, scope: !1345)
!1431 = distinct !DISubprogram(name: "halide_hexagon_dma_allocate_engine", scope: !6, file: !6, line: 408, type: !1432, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1435)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!39, !13, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1435 = !{!1436, !1437}
!1436 = !DILocalVariable(name: "user_context", arg: 1, scope: !1431, file: !6, line: 408, type: !13)
!1437 = !DILocalVariable(name: "dma_engine", arg: 2, scope: !1431, file: !6, line: 408, type: !1434)
!1438 = !DILocation(line: 0, scope: !1431)
!1439 = !DILocation(line: 0, scope: !615, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 409, column: 5, scope: !1431)
!1441 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !1440)
!1442 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !1440)
!1443 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !1440)
!1444 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !1440)
!1445 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !1440)
!1446 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !1440)
!1447 = !DILocation(line: 0, scope: !629, inlinedAt: !1440)
!1448 = !DILocation(line: 0, scope: !632, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 410, column: 9, scope: !1431)
!1450 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1449)
!1451 = !DILocation(line: 0, scope: !912, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 410, column: 74, scope: !1431)
!1453 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1452)
!1454 = !DILocation(line: 0, scope: !632, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 410, column: 90, scope: !1431)
!1456 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1455)
!1457 = !DILocation(line: 0, scope: !641, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 409, column: 5, scope: !1431)
!1459 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !1458)
!1460 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !1458)
!1461 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !1458)
!1462 = !DILocation(line: 0, scope: !655, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !1458)
!1464 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !1463)
!1465 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !1463)
!1466 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !1463)
!1467 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1458)
!1468 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1458)
!1469 = !DILocation(line: 412, column: 5, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !6, line: 412, column: 5)
!1471 = distinct !DILexicalBlock(scope: !1431, file: !6, line: 412, column: 5)
!1472 = !DILocation(line: 412, column: 5, scope: !1471)
!1473 = !DILocation(line: 412, column: 5, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 412, column: 5)
!1475 = !DILocation(line: 0, scope: !615, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 413, column: 5, scope: !1431)
!1477 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !1476)
!1478 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !1476)
!1479 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !1476)
!1480 = !DILocation(line: 0, scope: !632, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 413, column: 25, scope: !1431)
!1482 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1481)
!1483 = !DILocation(line: 0, scope: !641, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 413, column: 5, scope: !1431)
!1485 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !1484)
!1486 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !1484)
!1487 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !1476)
!1488 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !1476)
!1489 = !DILocation(line: 0, scope: !655, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !1484)
!1491 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !1490)
!1492 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !1490)
!1493 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !1490)
!1494 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1484)
!1495 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1484)
!1496 = !DILocation(line: 414, column: 19, scope: !1431)
!1497 = !DILocation(line: 414, column: 17, scope: !1431)
!1498 = !{!710, !710, i64 0}
!1499 = !DILocation(line: 0, scope: !615, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 415, column: 5, scope: !1431)
!1501 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !1500)
!1502 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !1500)
!1503 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !1500)
!1504 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !1500)
!1505 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !1500)
!1506 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !1500)
!1507 = !DILocation(line: 0, scope: !629, inlinedAt: !1500)
!1508 = !DILocation(line: 0, scope: !632, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 415, column: 25, scope: !1431)
!1510 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1509)
!1511 = !DILocation(line: 415, column: 42, scope: !1431)
!1512 = !DILocation(line: 0, scope: !912, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 415, column: 39, scope: !1431)
!1514 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1513)
!1515 = !DILocation(line: 0, scope: !632, inlinedAt: !1516)
!1516 = distinct !DILocation(line: 415, column: 53, scope: !1431)
!1517 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1516)
!1518 = !DILocation(line: 0, scope: !641, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 415, column: 5, scope: !1431)
!1520 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !1519)
!1521 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !1519)
!1522 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !1519)
!1523 = !DILocation(line: 0, scope: !655, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !1519)
!1525 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !1524)
!1526 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !1524)
!1527 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !1524)
!1528 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1519)
!1529 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1519)
!1530 = !DILocation(line: 416, column: 10, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1431, file: !6, line: 416, column: 9)
!1532 = !DILocation(line: 416, column: 9, scope: !1431)
!1533 = !DILocation(line: 0, scope: !615, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 417, column: 9, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !6, line: 416, column: 23)
!1536 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !1534)
!1537 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !1534)
!1538 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !1534)
!1539 = !DILocation(line: 0, scope: !632, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 417, column: 29, scope: !1535)
!1541 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1540)
!1542 = !DILocation(line: 0, scope: !641, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 417, column: 9, scope: !1535)
!1544 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !1543)
!1545 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !1543)
!1546 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !1534)
!1547 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !1534)
!1548 = !DILocation(line: 0, scope: !655, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !1543)
!1550 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !1549)
!1551 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !1549)
!1552 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !1549)
!1553 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1543)
!1554 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1543)
!1555 = !DILocation(line: 418, column: 9, scope: !1535)
!1556 = !DILocation(line: 422, column: 1, scope: !1431)
!1557 = !DISubprogram(name: "halide_hexagon_allocate_dma_resource", scope: !1558, file: !1558, line: 14, type: !1559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!1558 = !DIFile(filename: "src/runtime/hexagon_dma_pool.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!13, !13}
!1561 = distinct !DISubprogram(name: "halide_hexagon_dma_deallocate_engine", scope: !6, file: !6, line: 424, type: !1562, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1564)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!39, !13, !13}
!1564 = !{!1565, !1566, !1567}
!1565 = !DILocalVariable(name: "user_context", arg: 1, scope: !1561, file: !6, line: 424, type: !13)
!1566 = !DILocalVariable(name: "dma_engine", arg: 2, scope: !1561, file: !6, line: 424, type: !13)
!1567 = !DILocalVariable(name: "err", scope: !1561, file: !6, line: 436, type: !39)
!1568 = !DILocation(line: 0, scope: !1561)
!1569 = !DILocation(line: 0, scope: !615, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 425, column: 5, scope: !1561)
!1571 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !1570)
!1572 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !1570)
!1573 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !1570)
!1574 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !1570)
!1575 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !1570)
!1576 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !1570)
!1577 = !DILocation(line: 0, scope: !629, inlinedAt: !1570)
!1578 = !DILocation(line: 0, scope: !632, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 426, column: 9, scope: !1561)
!1580 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1579)
!1581 = !DILocation(line: 0, scope: !912, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 426, column: 76, scope: !1561)
!1583 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1582)
!1584 = !DILocation(line: 0, scope: !632, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 427, column: 9, scope: !1561)
!1586 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1585)
!1587 = !DILocation(line: 0, scope: !912, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 427, column: 29, scope: !1561)
!1589 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1588)
!1590 = !DILocation(line: 0, scope: !632, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 427, column: 43, scope: !1561)
!1592 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1591)
!1593 = !DILocation(line: 0, scope: !641, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 425, column: 5, scope: !1561)
!1595 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !1594)
!1596 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !1594)
!1597 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !1594)
!1598 = !DILocation(line: 0, scope: !655, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !1594)
!1600 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !1599)
!1601 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !1599)
!1602 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !1599)
!1603 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1594)
!1604 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1594)
!1605 = !DILocation(line: 429, column: 5, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !6, line: 429, column: 5)
!1607 = distinct !DILexicalBlock(scope: !1561, file: !6, line: 429, column: 5)
!1608 = !DILocation(line: 429, column: 5, scope: !1607)
!1609 = !DILocation(line: 429, column: 5, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1606, file: !6, line: 429, column: 5)
!1611 = !DILocalVariable(name: "user_context", arg: 1, scope: !1612, file: !6, line: 143, type: !13)
!1612 = distinct !DISubprogram(name: "desc_pool_free", linkageName: "_ZN12_GLOBAL__N_114desc_pool_freeEPv", scope: !1613, file: !6, line: 143, type: !1614, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1616)
!1613 = !DINamespace(scope: null)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !13}
!1616 = !{!1611, !1617, !1630, !1631}
!1617 = !DILocalVariable(name: "lock", scope: !1612, file: !6, line: 144, type: !1618)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !3, file: !1619, line: 11, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1620, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!1619 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!1620 = !{!1621, !1623, !1627}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1618, file: !1619, line: 12, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1623 = !DISubprogram(name: "ScopedMutexLock", scope: !1618, file: !1619, line: 14, type: !1624, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !1626, !1622}
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1627 = !DISubprogram(name: "~ScopedMutexLock", scope: !1618, file: !1619, line: 19, type: !1628, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !1626}
!1630 = !DILocalVariable(name: "temp", scope: !1612, file: !6, line: 145, type: !7)
!1631 = !DILocalVariable(name: "temp2", scope: !1632, file: !6, line: 147, type: !7)
!1632 = distinct !DILexicalBlock(scope: !1612, file: !6, line: 146, column: 29)
!1633 = !DILocation(line: 0, scope: !1612, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 433, column: 5, scope: !1561)
!1635 = !DILocalVariable(name: "this", arg: 1, scope: !1636, type: !1639, flags: DIFlagArtificial | DIFlagObjectPointer)
!1636 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !1618, file: !1619, line: 14, type: !1624, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !1623, retainedNodes: !1637)
!1637 = !{!1635, !1638}
!1638 = !DILocalVariable(name: "mutex", arg: 2, scope: !1636, file: !1619, line: 14, type: !1622)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1640 = !DILocation(line: 0, scope: !1636, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 144, column: 21, scope: !1612, inlinedAt: !1634)
!1642 = !DILocation(line: 16, column: 9, scope: !1643, inlinedAt: !1641)
!1643 = distinct !DILexicalBlock(scope: !1636, file: !1619, line: 15, column: 24)
!1644 = !DILocation(line: 145, column: 23, scope: !1612, inlinedAt: !1634)
!1645 = !DILocation(line: 146, column: 17, scope: !1612, inlinedAt: !1634)
!1646 = !DILocation(line: 146, column: 5, scope: !1612, inlinedAt: !1634)
!1647 = !DILocation(line: 0, scope: !1632, inlinedAt: !1634)
!1648 = !DILocation(line: 148, column: 22, scope: !1632, inlinedAt: !1634)
!1649 = !{!1650, !710, i64 16}
!1650 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma9desc_poolE", !710, i64 0, !1231, i64 8, !710, i64 16}
!1651 = !DILocation(line: 149, column: 20, scope: !1652, inlinedAt: !1634)
!1652 = distinct !DILexicalBlock(scope: !1632, file: !6, line: 149, column: 13)
!1653 = !{!1650, !710, i64 0}
!1654 = !DILocation(line: 149, column: 31, scope: !1652, inlinedAt: !1634)
!1655 = !DILocation(line: 149, column: 13, scope: !1632, inlinedAt: !1634)
!1656 = !DILocation(line: 150, column: 13, scope: !1657, inlinedAt: !1634)
!1657 = distinct !DILexicalBlock(scope: !1652, file: !6, line: 149, column: 43)
!1658 = !DILocation(line: 151, column: 9, scope: !1657, inlinedAt: !1634)
!1659 = !DILocation(line: 152, column: 14, scope: !1632, inlinedAt: !1634)
!1660 = !DILocation(line: 152, column: 9, scope: !1632, inlinedAt: !1634)
!1661 = !DILocation(line: 154, column: 18, scope: !1662, inlinedAt: !1634)
!1662 = distinct !DILexicalBlock(scope: !1632, file: !6, line: 154, column: 13)
!1663 = !DILocation(line: 154, column: 13, scope: !1632, inlinedAt: !1634)
!1664 = !DILocation(line: 155, column: 26, scope: !1665, inlinedAt: !1634)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !6, line: 154, column: 30)
!1666 = !DILocation(line: 156, column: 18, scope: !1665, inlinedAt: !1634)
!1667 = !DILocation(line: 156, column: 13, scope: !1665, inlinedAt: !1634)
!1668 = distinct !{!1668, !1646, !1669, !561}
!1669 = !DILocation(line: 158, column: 5, scope: !1612, inlinedAt: !1634)
!1670 = !DILocation(line: 161, column: 19, scope: !1612, inlinedAt: !1634)
!1671 = !DILocalVariable(name: "this", arg: 1, scope: !1672, type: !1639, flags: DIFlagArtificial | DIFlagObjectPointer)
!1672 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !1618, file: !1619, line: 19, type: !1628, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !1627, retainedNodes: !1673)
!1673 = !{!1671}
!1674 = !DILocation(line: 0, scope: !1672, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 162, column: 1, scope: !1612, inlinedAt: !1634)
!1676 = !DILocation(line: 20, column: 9, scope: !1677, inlinedAt: !1675)
!1677 = distinct !DILexicalBlock(scope: !1672, file: !1619, line: 19, column: 38)
!1678 = !DILocation(line: 436, column: 15, scope: !1561)
!1679 = !DILocation(line: 0, scope: !615, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 437, column: 5, scope: !1561)
!1681 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !1680)
!1682 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !1680)
!1683 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !1680)
!1684 = !DILocation(line: 0, scope: !632, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 437, column: 25, scope: !1561)
!1686 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1685)
!1687 = !DILocation(line: 0, scope: !641, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 437, column: 5, scope: !1561)
!1689 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !1688)
!1690 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !1688)
!1691 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !1680)
!1692 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !1680)
!1693 = !DILocation(line: 0, scope: !655, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !1688)
!1695 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !1694)
!1696 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !1694)
!1697 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !1694)
!1698 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1688)
!1699 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1688)
!1700 = !DILocation(line: 438, column: 13, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1561, file: !6, line: 438, column: 9)
!1702 = !DILocation(line: 438, column: 9, scope: !1561)
!1703 = !DILocation(line: 0, scope: !615, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 439, column: 9, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !6, line: 438, column: 19)
!1706 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !1704)
!1707 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !1704)
!1708 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !1704)
!1709 = !DILocation(line: 0, scope: !632, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 439, column: 29, scope: !1705)
!1711 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1710)
!1712 = !DILocation(line: 0, scope: !641, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 439, column: 9, scope: !1705)
!1714 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !1713)
!1715 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !1713)
!1716 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !1704)
!1717 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !1704)
!1718 = !DILocation(line: 0, scope: !655, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !1713)
!1720 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !1719)
!1721 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !1719)
!1722 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !1719)
!1723 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1713)
!1724 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1713)
!1725 = !DILocation(line: 440, column: 9, scope: !1705)
!1726 = !DILocation(line: 443, column: 1, scope: !1561)
!1727 = !DISubprogram(name: "halide_hexagon_free_dma_resource", scope: !1558, file: !1558, line: 20, type: !1562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!1728 = distinct !DISubprogram(name: "halide_hexagon_dma_prepare_for_copy_to_host", scope: !6, file: !6, line: 467, type: !1729, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1732)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!39, !13, !40, !13, !15, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_hexagon_image_fmt_t", file: !300, line: 48, baseType: !299)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738}
!1733 = !DILocalVariable(name: "user_context", arg: 1, scope: !1728, file: !6, line: 467, type: !13)
!1734 = !DILocalVariable(name: "buf", arg: 2, scope: !1728, file: !6, line: 467, type: !40)
!1735 = !DILocalVariable(name: "dma_engine", arg: 3, scope: !1728, file: !6, line: 468, type: !13)
!1736 = !DILocalVariable(name: "is_ubwc", arg: 4, scope: !1728, file: !6, line: 468, type: !15)
!1737 = !DILocalVariable(name: "fmt", arg: 5, scope: !1728, file: !6, line: 468, type: !1731)
!1738 = !DILocalVariable(name: "format", scope: !1728, file: !6, line: 472, type: !504)
!1739 = !DILocation(line: 0, scope: !1728)
!1740 = !DILocation(line: 0, scope: !615, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 469, column: 5, scope: !1728)
!1742 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !1741)
!1743 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !1741)
!1744 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !1741)
!1745 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !1741)
!1746 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !1741)
!1747 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !1741)
!1748 = !DILocation(line: 0, scope: !629, inlinedAt: !1741)
!1749 = !DILocation(line: 0, scope: !632, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 470, column: 9, scope: !1728)
!1751 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1750)
!1752 = !DILocation(line: 0, scope: !912, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 470, column: 83, scope: !1728)
!1754 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1753)
!1755 = !DILocation(line: 0, scope: !632, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 471, column: 9, scope: !1728)
!1757 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1756)
!1758 = !DILocation(line: 0, scope: !922, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 471, column: 22, scope: !1728)
!1760 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !1759)
!1761 = !DILocation(line: 0, scope: !632, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 471, column: 30, scope: !1728)
!1763 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1762)
!1764 = !DILocation(line: 0, scope: !912, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 471, column: 50, scope: !1728)
!1766 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1765)
!1767 = !DILocation(line: 0, scope: !632, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 471, column: 64, scope: !1728)
!1769 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1768)
!1770 = !DILocation(line: 0, scope: !641, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 469, column: 5, scope: !1728)
!1772 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !1771)
!1773 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !1771)
!1774 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !1771)
!1775 = !DILocation(line: 0, scope: !655, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !1771)
!1777 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !1776)
!1778 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !1776)
!1779 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !1776)
!1780 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1771)
!1781 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1771)
!1782 = !DILocation(line: 472, column: 24, scope: !1728)
!1783 = !DILocalVariable(name: "user_context", arg: 1, scope: !1784, file: !6, line: 447, type: !13)
!1784 = distinct !DISubprogram(name: "dma_prepare_for_copy", scope: !1613, file: !6, line: 447, type: !1785, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1787)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!39, !13, !40, !13, !15, !504, !15}
!1787 = !{!1783, !1788, !1789, !1790, !1791, !1792, !1793}
!1788 = !DILocalVariable(name: "buf", arg: 2, scope: !1784, file: !6, line: 447, type: !40)
!1789 = !DILocalVariable(name: "dma_engine", arg: 3, scope: !1784, file: !6, line: 447, type: !13)
!1790 = !DILocalVariable(name: "is_ubwc", arg: 4, scope: !1784, file: !6, line: 447, type: !15)
!1791 = !DILocalVariable(name: "fmt", arg: 5, scope: !1784, file: !6, line: 447, type: !504)
!1792 = !DILocalVariable(name: "is_write", arg: 6, scope: !1784, file: !6, line: 447, type: !15)
!1793 = !DILocalVariable(name: "dev", scope: !1784, file: !6, line: 449, type: !489)
!1794 = !DILocation(line: 0, scope: !1784, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 473, column: 12, scope: !1728)
!1796 = !DILocation(line: 448, column: 5, scope: !1797, inlinedAt: !1795)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !6, line: 448, column: 5)
!1798 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 448, column: 5)
!1799 = !DILocation(line: 448, column: 5, scope: !1798, inlinedAt: !1795)
!1800 = !DILocation(line: 448, column: 5, scope: !1801, inlinedAt: !1795)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !6, line: 448, column: 5)
!1802 = !DILocation(line: 449, column: 73, scope: !1784, inlinedAt: !1795)
!1803 = !DILocation(line: 449, column: 30, scope: !1784, inlinedAt: !1795)
!1804 = !DILocation(line: 450, column: 10, scope: !1784, inlinedAt: !1795)
!1805 = !DILocation(line: 450, column: 21, scope: !1784, inlinedAt: !1795)
!1806 = !DILocation(line: 451, column: 10, scope: !1784, inlinedAt: !1795)
!1807 = !DILocation(line: 451, column: 18, scope: !1784, inlinedAt: !1795)
!1808 = !DILocation(line: 452, column: 10, scope: !1784, inlinedAt: !1795)
!1809 = !DILocation(line: 452, column: 14, scope: !1784, inlinedAt: !1795)
!1810 = !DILocation(line: 453, column: 10, scope: !1784, inlinedAt: !1795)
!1811 = !DILocation(line: 453, column: 19, scope: !1784, inlinedAt: !1795)
!1812 = !DILocation(line: 455, column: 39, scope: !1813, inlinedAt: !1795)
!1813 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 455, column: 9)
!1814 = !DILocation(line: 459, column: 34, scope: !1815, inlinedAt: !1795)
!1815 = distinct !DILexicalBlock(scope: !1813, file: !6, line: 458, column: 42)
!1816 = !DILocation(line: 459, column: 47, scope: !1815, inlinedAt: !1795)
!1817 = !DILocation(line: 459, column: 27, scope: !1815, inlinedAt: !1795)
!1818 = !DILocation(line: 460, column: 5, scope: !1815, inlinedAt: !1795)
!1819 = !DILocation(line: 473, column: 5, scope: !1728)
!1820 = distinct !DISubprogram(name: "halide_hexagon_get_dma_format", linkageName: "_ZN12_GLOBAL__N_129halide_hexagon_get_dma_formatEPv26halide_hexagon_image_fmt_t", scope: !1613, file: !6, line: 165, type: !1821, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1824)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!504, !13, !1823}
!1823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1731)
!1824 = !{!1825, !1826}
!1825 = !DILocalVariable(name: "user_context", arg: 1, scope: !1820, file: !6, line: 165, type: !13)
!1826 = !DILocalVariable(name: "format", arg: 2, scope: !1820, file: !6, line: 165, type: !1823)
!1827 = !DILocation(line: 0, scope: !1820)
!1828 = !DILocation(line: 167, column: 5, scope: !1820)
!1829 = !DILocation(line: 0, scope: !1052, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 195, column: 9, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1820, file: !6, line: 167, column: 21)
!1832 = !DILocation(line: 44, column: 27, scope: !1061, inlinedAt: !1830)
!1833 = !DILocation(line: 48, column: 13, scope: !1066, inlinedAt: !1830)
!1834 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !1830)
!1835 = !DILocation(line: 49, column: 23, scope: !1088, inlinedAt: !1830)
!1836 = !DILocation(line: 50, column: 18, scope: !1088, inlinedAt: !1830)
!1837 = !DILocation(line: 51, column: 9, scope: !1088, inlinedAt: !1830)
!1838 = !DILocation(line: 0, scope: !1066, inlinedAt: !1830)
!1839 = !DILocation(line: 0, scope: !1069, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 195, column: 29, scope: !1831)
!1841 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !1840)
!1842 = !DILocalVariable(name: "this", arg: 1, scope: !1843, type: !1056, flags: DIFlagArtificial | DIFlagObjectPointer)
!1843 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !423, file: !338, line: 72, type: !443, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !442, retainedNodes: !1844)
!1844 = !{!1842, !1845}
!1845 = !DILocalVariable(name: "arg", arg: 2, scope: !1843, file: !338, line: 72, type: !95)
!1846 = !DILocation(line: 0, scope: !1843, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 195, column: 64, scope: !1831)
!1848 = !DILocation(line: 73, column: 48, scope: !1843, inlinedAt: !1847)
!1849 = !DILocation(line: 73, column: 15, scope: !1843, inlinedAt: !1847)
!1850 = !DILocation(line: 0, scope: !1069, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 195, column: 74, scope: !1831)
!1852 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !1851)
!1853 = !DILocation(line: 0, scope: !1078, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 195, column: 9, scope: !1831)
!1855 = !DILocation(line: 167, column: 13, scope: !1085, inlinedAt: !1854)
!1856 = !DILocation(line: 168, column: 13, scope: !1083, inlinedAt: !1854)
!1857 = !DILocation(line: 169, column: 9, scope: !1083, inlinedAt: !1854)
!1858 = !DILocation(line: 0, scope: !1091, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 170, column: 13, scope: !1095, inlinedAt: !1854)
!1860 = !DILocation(line: 163, column: 81, scope: !1091, inlinedAt: !1859)
!1861 = !DILocation(line: 163, column: 87, scope: !1091, inlinedAt: !1859)
!1862 = !DILocation(line: 163, column: 15, scope: !1091, inlinedAt: !1859)
!1863 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !1854)
!1864 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !1854)
!1865 = !DILocation(line: 196, column: 9, scope: !1831)
!1866 = !DILocation(line: 0, scope: !1831)
!1867 = !DILocation(line: 198, column: 1, scope: !1820)
!1868 = distinct !DISubprogram(name: "halide_hexagon_dma_prepare_for_copy_to_device", scope: !6, file: !6, line: 476, type: !1729, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1869)
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875}
!1870 = !DILocalVariable(name: "user_context", arg: 1, scope: !1868, file: !6, line: 476, type: !13)
!1871 = !DILocalVariable(name: "buf", arg: 2, scope: !1868, file: !6, line: 476, type: !40)
!1872 = !DILocalVariable(name: "dma_engine", arg: 3, scope: !1868, file: !6, line: 477, type: !13)
!1873 = !DILocalVariable(name: "is_ubwc", arg: 4, scope: !1868, file: !6, line: 477, type: !15)
!1874 = !DILocalVariable(name: "fmt", arg: 5, scope: !1868, file: !6, line: 477, type: !1731)
!1875 = !DILocalVariable(name: "format", scope: !1868, file: !6, line: 481, type: !504)
!1876 = !DILocation(line: 0, scope: !1868)
!1877 = !DILocation(line: 0, scope: !615, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 478, column: 5, scope: !1868)
!1879 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !1878)
!1880 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !1878)
!1881 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !1878)
!1882 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !1878)
!1883 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !1878)
!1884 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !1878)
!1885 = !DILocation(line: 0, scope: !629, inlinedAt: !1878)
!1886 = !DILocation(line: 0, scope: !632, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 479, column: 9, scope: !1868)
!1888 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1887)
!1889 = !DILocation(line: 0, scope: !912, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 479, column: 85, scope: !1868)
!1891 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1890)
!1892 = !DILocation(line: 0, scope: !632, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 480, column: 9, scope: !1868)
!1894 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1893)
!1895 = !DILocation(line: 0, scope: !922, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 480, column: 22, scope: !1868)
!1897 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !1896)
!1898 = !DILocation(line: 0, scope: !632, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 480, column: 30, scope: !1868)
!1900 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1899)
!1901 = !DILocation(line: 0, scope: !912, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 480, column: 50, scope: !1868)
!1903 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1902)
!1904 = !DILocation(line: 0, scope: !632, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 480, column: 64, scope: !1868)
!1906 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1905)
!1907 = !DILocation(line: 0, scope: !641, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 478, column: 5, scope: !1868)
!1909 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !1908)
!1910 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !1908)
!1911 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !1908)
!1912 = !DILocation(line: 0, scope: !655, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !1908)
!1914 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !1913)
!1915 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !1913)
!1916 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !1913)
!1917 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1908)
!1918 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1908)
!1919 = !DILocation(line: 481, column: 24, scope: !1868)
!1920 = !DILocation(line: 0, scope: !1784, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 482, column: 12, scope: !1868)
!1922 = !DILocation(line: 448, column: 5, scope: !1797, inlinedAt: !1921)
!1923 = !DILocation(line: 448, column: 5, scope: !1798, inlinedAt: !1921)
!1924 = !DILocation(line: 448, column: 5, scope: !1801, inlinedAt: !1921)
!1925 = !DILocation(line: 449, column: 73, scope: !1784, inlinedAt: !1921)
!1926 = !DILocation(line: 449, column: 30, scope: !1784, inlinedAt: !1921)
!1927 = !DILocation(line: 450, column: 10, scope: !1784, inlinedAt: !1921)
!1928 = !DILocation(line: 450, column: 21, scope: !1784, inlinedAt: !1921)
!1929 = !DILocation(line: 451, column: 10, scope: !1784, inlinedAt: !1921)
!1930 = !DILocation(line: 451, column: 18, scope: !1784, inlinedAt: !1921)
!1931 = !DILocation(line: 452, column: 10, scope: !1784, inlinedAt: !1921)
!1932 = !DILocation(line: 452, column: 14, scope: !1784, inlinedAt: !1921)
!1933 = !DILocation(line: 453, column: 10, scope: !1784, inlinedAt: !1921)
!1934 = !DILocation(line: 453, column: 19, scope: !1784, inlinedAt: !1921)
!1935 = !DILocation(line: 455, column: 39, scope: !1813, inlinedAt: !1921)
!1936 = !DILocation(line: 459, column: 34, scope: !1815, inlinedAt: !1921)
!1937 = !DILocation(line: 459, column: 47, scope: !1815, inlinedAt: !1921)
!1938 = !DILocation(line: 459, column: 27, scope: !1815, inlinedAt: !1921)
!1939 = !DILocation(line: 460, column: 5, scope: !1815, inlinedAt: !1921)
!1940 = !DILocation(line: 482, column: 5, scope: !1868)
!1941 = distinct !DISubprogram(name: "halide_hexagon_dma_unprepare", scope: !6, file: !6, line: 485, type: !163, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1942)
!1942 = !{!1943, !1944}
!1943 = !DILocalVariable(name: "user_context", arg: 1, scope: !1941, file: !6, line: 485, type: !13)
!1944 = !DILocalVariable(name: "buf", arg: 2, scope: !1941, file: !6, line: 485, type: !40)
!1945 = !DILocation(line: 0, scope: !1941)
!1946 = !DILocation(line: 0, scope: !615, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 486, column: 5, scope: !1941)
!1948 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !1947)
!1949 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !1947)
!1950 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !1947)
!1951 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !1947)
!1952 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !1947)
!1953 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !1947)
!1954 = !DILocation(line: 0, scope: !629, inlinedAt: !1947)
!1955 = !DILocation(line: 0, scope: !632, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 487, column: 9, scope: !1941)
!1957 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1956)
!1958 = !DILocation(line: 0, scope: !912, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 487, column: 68, scope: !1941)
!1960 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1959)
!1961 = !DILocation(line: 0, scope: !632, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 488, column: 9, scope: !1941)
!1963 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1962)
!1964 = !DILocation(line: 0, scope: !922, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 488, column: 22, scope: !1941)
!1966 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !1965)
!1967 = !DILocation(line: 0, scope: !632, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 488, column: 30, scope: !1941)
!1969 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !1968)
!1970 = !DILocation(line: 0, scope: !641, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 486, column: 5, scope: !1941)
!1972 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !1971)
!1973 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !1971)
!1974 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !1971)
!1975 = !DILocation(line: 0, scope: !655, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !1971)
!1977 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !1976)
!1978 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !1976)
!1979 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !1976)
!1980 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1971)
!1981 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1971)
!1982 = !DILocation(line: 490, column: 5, scope: !1941)
!1983 = distinct !DISubprogram(name: "halide_hexagon_dma_buffer_copy", scope: !6, file: !6, line: 493, type: !176, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1984)
!1984 = !{!1985, !1986, !1987, !1988, !1989, !1992, !1993, !1994}
!1985 = !DILocalVariable(name: "user_context", arg: 1, scope: !1983, file: !6, line: 493, type: !13)
!1986 = !DILocalVariable(name: "src", arg: 2, scope: !1983, file: !6, line: 493, type: !40)
!1987 = !DILocalVariable(name: "dst_device_interface", arg: 3, scope: !1983, file: !6, line: 494, type: !45)
!1988 = !DILocalVariable(name: "dst", arg: 4, scope: !1983, file: !6, line: 495, type: !40)
!1989 = !DILocalVariable(name: "err", scope: !1990, file: !6, line: 506, type: !39)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !6, line: 501, column: 65)
!1991 = distinct !DILexicalBlock(scope: !1983, file: !6, line: 500, column: 9)
!1992 = !DILocalVariable(name: "from_host", scope: !1983, file: !6, line: 515, type: !15)
!1993 = !DILocalVariable(name: "to_host", scope: !1983, file: !6, line: 516, type: !15)
!1994 = !DILocalVariable(name: "nRet", scope: !1983, file: !6, line: 528, type: !39)
!1995 = !DILocation(line: 0, scope: !1983)
!1996 = !DILocation(line: 497, column: 5, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !6, line: 497, column: 5)
!1998 = distinct !DILexicalBlock(scope: !1983, file: !6, line: 497, column: 5)
!1999 = !DILocation(line: 497, column: 5, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1997, file: !6, line: 497, column: 5)
!2001 = !DILocalVariable(name: "this", arg: 1, scope: !2002, type: !182, flags: DIFlagArtificial | DIFlagObjectPointer)
!2002 = distinct !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !41, file: !21, line: 1470, type: !135, scopeLine: 1470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !137, retainedNodes: !2003)
!2003 = !{!2001}
!2004 = !DILocation(line: 0, scope: !2002, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 500, column: 14, scope: !1991)
!2006 = !DILocalVariable(name: "this", arg: 1, scope: !2007, type: !182, flags: DIFlagArtificial | DIFlagObjectPointer)
!2007 = distinct !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !41, file: !21, line: 1454, type: !121, scopeLine: 1454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !120, retainedNodes: !2008)
!2008 = !{!2006, !2009}
!2009 = !DILocalVariable(name: "flag", arg: 2, scope: !2007, file: !21, line: 1454, type: !125)
!2010 = !DILocation(line: 0, scope: !2007, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 1471, column: 16, scope: !2002, inlinedAt: !2005)
!2012 = !DILocation(line: 1455, column: 17, scope: !2007, inlinedAt: !2011)
!2013 = !DILocation(line: 1455, column: 23, scope: !2007, inlinedAt: !2011)
!2014 = !DILocation(line: 1455, column: 31, scope: !2007, inlinedAt: !2011)
!2015 = !DILocation(line: 500, column: 29, scope: !1991)
!2016 = !DILocation(line: 501, column: 14, scope: !1991)
!2017 = !DILocation(line: 501, column: 31, scope: !1991)
!2018 = !DILocation(line: 500, column: 9, scope: !1983)
!2019 = !DILocation(line: 502, column: 9, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1990, file: !6, line: 502, column: 9)
!2021 = !DILocation(line: 502, column: 9, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !6, line: 502, column: 9)
!2023 = distinct !DILexicalBlock(scope: !2020, file: !6, line: 502, column: 9)
!2024 = !DILocation(line: 0, scope: !615, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 505, column: 9, scope: !1990)
!2026 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !2025)
!2027 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !2025)
!2028 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !2025)
!2029 = !DILocation(line: 0, scope: !632, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 505, column: 29, scope: !1990)
!2031 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2030)
!2032 = !DILocation(line: 0, scope: !641, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 505, column: 9, scope: !1990)
!2034 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !2033)
!2035 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !2033)
!2036 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !2025)
!2037 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !2025)
!2038 = !DILocation(line: 0, scope: !655, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !2033)
!2040 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !2039)
!2041 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !2039)
!2042 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !2039)
!2043 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2033)
!2044 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2033)
!2045 = !DILocation(line: 506, column: 24, scope: !1990)
!2046 = !DILocation(line: 506, column: 42, scope: !1990)
!2047 = !DILocation(line: 506, column: 48, scope: !1990)
!2048 = !{!1216, !710, i64 80}
!2049 = !DILocation(line: 506, column: 19, scope: !1990)
!2050 = !DILocation(line: 0, scope: !1990)
!2051 = !DILocation(line: 507, column: 13, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1990, file: !6, line: 507, column: 13)
!2053 = !DILocation(line: 507, column: 13, scope: !1990)
!2054 = !DILocation(line: 1455, column: 17, scope: !2007, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 1471, column: 16, scope: !2002, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 515, column: 28, scope: !1983)
!2057 = !DILocation(line: 0, scope: !1052, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 508, column: 13, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2052, file: !6, line: 507, column: 18)
!2060 = !DILocation(line: 44, column: 27, scope: !1061, inlinedAt: !2058)
!2061 = !DILocation(line: 48, column: 13, scope: !1066, inlinedAt: !2058)
!2062 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !2058)
!2063 = !DILocation(line: 49, column: 23, scope: !1088, inlinedAt: !2058)
!2064 = !DILocation(line: 50, column: 18, scope: !1088, inlinedAt: !2058)
!2065 = !DILocation(line: 51, column: 9, scope: !1088, inlinedAt: !2058)
!2066 = !DILocation(line: 0, scope: !1066, inlinedAt: !2058)
!2067 = !DILocation(line: 0, scope: !1069, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 508, column: 33, scope: !2059)
!2069 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !2068)
!2070 = !DILocation(line: 0, scope: !1843, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 508, column: 97, scope: !2059)
!2072 = !DILocation(line: 73, column: 48, scope: !1843, inlinedAt: !2071)
!2073 = !DILocation(line: 73, column: 15, scope: !1843, inlinedAt: !2071)
!2074 = !DILocation(line: 0, scope: !1069, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 508, column: 104, scope: !2059)
!2076 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !2075)
!2077 = !DILocation(line: 0, scope: !1078, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 508, column: 13, scope: !2059)
!2079 = !DILocation(line: 167, column: 13, scope: !1085, inlinedAt: !2078)
!2080 = !DILocation(line: 168, column: 13, scope: !1083, inlinedAt: !2078)
!2081 = !DILocation(line: 169, column: 9, scope: !1083, inlinedAt: !2078)
!2082 = !DILocation(line: 0, scope: !1091, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 170, column: 13, scope: !1095, inlinedAt: !2078)
!2084 = !DILocation(line: 163, column: 81, scope: !1091, inlinedAt: !2083)
!2085 = !DILocation(line: 163, column: 87, scope: !1091, inlinedAt: !2083)
!2086 = !DILocation(line: 163, column: 15, scope: !1091, inlinedAt: !2083)
!2087 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !2078)
!2088 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !2078)
!2089 = !DILocation(line: 0, scope: !2002, inlinedAt: !2056)
!2090 = !DILocation(line: 0, scope: !2007, inlinedAt: !2055)
!2091 = !DILocation(line: 1455, column: 23, scope: !2007, inlinedAt: !2055)
!2092 = !DILocation(line: 1455, column: 31, scope: !2007, inlinedAt: !2055)
!2093 = !DILocation(line: 515, column: 43, scope: !1983)
!2094 = !DILocation(line: 515, column: 51, scope: !1983)
!2095 = !DILocation(line: 515, column: 56, scope: !1983)
!2096 = !DILocation(line: 518, column: 5, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !6, line: 518, column: 5)
!2098 = distinct !DILexicalBlock(scope: !1983, file: !6, line: 518, column: 5)
!2099 = !DILocation(line: 518, column: 5, scope: !2098)
!2100 = !DILocation(line: 518, column: 5, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !6, line: 518, column: 5)
!2102 = !DILocation(line: 519, column: 5, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !6, line: 519, column: 5)
!2104 = distinct !DILexicalBlock(scope: !1983, file: !6, line: 519, column: 5)
!2105 = !DILocation(line: 519, column: 5, scope: !2104)
!2106 = !DILocation(line: 519, column: 5, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !6, line: 519, column: 5)
!2108 = !DILocation(line: 521, column: 5, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !6, line: 521, column: 5)
!2110 = distinct !DILexicalBlock(scope: !1983, file: !6, line: 521, column: 5)
!2111 = !DILocation(line: 521, column: 5, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2109, file: !6, line: 521, column: 5)
!2113 = !DILocation(line: 0, scope: !615, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 523, column: 5, scope: !1983)
!2115 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !2114)
!2116 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !2114)
!2117 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !2114)
!2118 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !2114)
!2119 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !2114)
!2120 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !2114)
!2121 = !DILocation(line: 0, scope: !629, inlinedAt: !2114)
!2122 = !DILocation(line: 0, scope: !632, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 524, column: 9, scope: !1983)
!2124 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2123)
!2125 = !DILocation(line: 0, scope: !912, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 524, column: 70, scope: !1983)
!2127 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !2126)
!2128 = !DILocation(line: 0, scope: !632, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 525, column: 9, scope: !1983)
!2130 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2129)
!2131 = !DILocation(line: 525, column: 25, scope: !1983)
!2132 = !DILocation(line: 0, scope: !912, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 525, column: 22, scope: !1983)
!2134 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !2133)
!2135 = !DILocation(line: 0, scope: !632, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 525, column: 29, scope: !1983)
!2137 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2136)
!2138 = !DILocation(line: 525, column: 45, scope: !1983)
!2139 = !DILocation(line: 0, scope: !912, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 525, column: 42, scope: !1983)
!2141 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !2140)
!2142 = !DILocation(line: 0, scope: !632, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 525, column: 49, scope: !1983)
!2144 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2143)
!2145 = !DILocation(line: 0, scope: !632, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 526, column: 9, scope: !1983)
!2147 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2146)
!2148 = !DILocalVariable(name: "this", arg: 1, scope: !2149, type: !619, flags: DIFlagArtificial | DIFlagObjectPointer)
!2149 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !340, file: !338, line: 72, type: !367, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !366, retainedNodes: !2150)
!2150 = !{!2148, !2151}
!2151 = !DILocalVariable(name: "arg", arg: 2, scope: !2149, file: !338, line: 72, type: !95)
!2152 = !DILocation(line: 0, scope: !2149, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 526, column: 27, scope: !1983)
!2154 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !2153)
!2155 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !2153)
!2156 = !DILocation(line: 0, scope: !632, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 526, column: 38, scope: !1983)
!2158 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2157)
!2159 = !DILocation(line: 0, scope: !2149, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 526, column: 57, scope: !1983)
!2161 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !2160)
!2162 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !2160)
!2163 = !DILocation(line: 0, scope: !632, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 526, column: 70, scope: !1983)
!2165 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2164)
!2166 = !DILocation(line: 0, scope: !641, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 523, column: 5, scope: !1983)
!2168 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !2167)
!2169 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !2167)
!2170 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !2167)
!2171 = !DILocation(line: 0, scope: !655, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !2167)
!2173 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !2172)
!2174 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !2172)
!2175 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !2172)
!2176 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2167)
!2177 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2167)
!2178 = !DILocation(line: 529, column: 9, scope: !1983)
!2179 = !DILocation(line: 530, column: 16, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !6, line: 529, column: 64)
!2181 = distinct !DILexicalBlock(scope: !1983, file: !6, line: 529, column: 9)
!2182 = !DILocation(line: 531, column: 5, scope: !2180)
!2183 = !DILocation(line: 532, column: 16, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2181, file: !6, line: 531, column: 12)
!2185 = !DILocation(line: 536, column: 1, scope: !1983)
!2186 = distinct !DISubprogram(name: "halide_hexagon_dma_wrapper", linkageName: "_ZN12_GLOBAL__N_126halide_hexagon_dma_wrapperEPvP15halide_buffer_tS2_", scope: !1613, file: !6, line: 202, type: !2187, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!39, !13, !40, !40}
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2226}
!2190 = !DILocalVariable(name: "user_context", arg: 1, scope: !2186, file: !6, line: 202, type: !13)
!2191 = !DILocalVariable(name: "src", arg: 2, scope: !2186, file: !6, line: 202, type: !40)
!2192 = !DILocalVariable(name: "dst", arg: 3, scope: !2186, file: !6, line: 203, type: !40)
!2193 = !DILocalVariable(name: "dev", scope: !2186, file: !6, line: 205, type: !489)
!2194 = !DILocalVariable(name: "stWalkSize", scope: !2186, file: !6, line: 243, type: !2195)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_StDmaWrapper_RoiAlignInfo", file: !282, line: 109, baseType: !2196)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stDmaWrapper_RoiAlignInfo", file: !282, line: 104, size: 32, flags: DIFlagTypePassByValue, elements: !2197, identifier: "_ZTS25stDmaWrapper_RoiAlignInfo")
!2197 = !{!2198, !2199}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "u16W", scope: !2196, file: !282, line: 106, baseType: !508, size: 16)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "u16H", scope: !2196, file: !282, line: 108, baseType: !508, size: 16, offset: 16)
!2200 = !DILocalVariable(name: "nRet", scope: !2186, file: !6, line: 246, type: !39)
!2201 = !DILocalVariable(name: "roi_stride", scope: !2186, file: !6, line: 248, type: !39)
!2202 = !DILocalVariable(name: "roi_width", scope: !2186, file: !6, line: 249, type: !39)
!2203 = !DILocalVariable(name: "roi_height", scope: !2186, file: !6, line: 250, type: !39)
!2204 = !DILocalVariable(name: "desc_addr", scope: !2186, file: !6, line: 264, type: !13)
!2205 = !DILocalVariable(name: "buf_size", scope: !2186, file: !6, line: 270, type: !39)
!2206 = !DILocalVariable(name: "stDmaTransferParm", scope: !2186, file: !6, line: 273, type: !2207)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_StDmaWrapper_DmaTransferSetup", file: !282, line: 145, baseType: !2208)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stDmaWrapper_DmaTransferSetup", file: !282, line: 114, size: 448, flags: DIFlagTypePassByValue, elements: !2209, identifier: "_ZTS29stDmaWrapper_DmaTransferSetup")
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "u16FrameW", scope: !2208, file: !282, line: 116, baseType: !508, size: 16)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "u16FrameH", scope: !2208, file: !282, line: 118, baseType: !508, size: 16, offset: 16)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "u16FrameStride", scope: !2208, file: !282, line: 120, baseType: !508, size: 16, offset: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "u16RoiX", scope: !2208, file: !282, line: 122, baseType: !508, size: 16, offset: 48)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "u16RoiY", scope: !2208, file: !282, line: 124, baseType: !508, size: 16, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "u16RoiW", scope: !2208, file: !282, line: 126, baseType: !508, size: 16, offset: 80)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "u16RoiH", scope: !2208, file: !282, line: 128, baseType: !508, size: 16, offset: 96)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "u16RoiStride", scope: !2208, file: !282, line: 130, baseType: !508, size: 16, offset: 112)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "pDescBuf", scope: !2208, file: !282, line: 132, baseType: !13, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "pTcmDataBuf", scope: !2208, file: !282, line: 134, baseType: !13, size: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "pFrameBuf", scope: !2208, file: !282, line: 136, baseType: !13, size: 64, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "bIsFmtUbwc", scope: !2208, file: !282, line: 138, baseType: !508, size: 16, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "bUse16BitPaddingInL2", scope: !2208, file: !282, line: 140, baseType: !508, size: 16, offset: 336)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "eFmt", scope: !2208, file: !282, line: 142, baseType: !504, size: 32, align: 32, offset: 352)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "eTransferType", scope: !2208, file: !282, line: 144, baseType: !2225, size: 32, align: 32, offset: 384)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_eDmaWrapper_TransationType", file: !282, line: 71, baseType: !329)
!2226 = !DILocalVariable(name: "dma_engine", scope: !2186, file: !6, line: 322, type: !13)
!2227 = !DILocation(line: 0, scope: !2186)
!2228 = !DILocation(line: 206, column: 37, scope: !2186)
!2229 = !DILocation(line: 206, column: 11, scope: !2186)
!2230 = !DILocation(line: 0, scope: !615, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 208, column: 5, scope: !2186)
!2232 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !2231)
!2233 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !2231)
!2234 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !2231)
!2235 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !2231)
!2236 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !2231)
!2237 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !2231)
!2238 = !DILocation(line: 0, scope: !629, inlinedAt: !2231)
!2239 = !DILocation(line: 0, scope: !632, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 209, column: 9, scope: !2186)
!2241 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2240)
!2242 = !DILocation(line: 209, column: 51, scope: !2186)
!2243 = !DILocation(line: 0, scope: !912, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 209, column: 43, scope: !2186)
!2245 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !2244)
!2246 = !DILocation(line: 0, scope: !632, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 210, column: 9, scope: !2186)
!2248 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2247)
!2249 = !DILocation(line: 210, column: 42, scope: !2186)
!2250 = !DILocation(line: 0, scope: !2149, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 210, column: 34, scope: !2186)
!2252 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !2251)
!2253 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !2251)
!2254 = !DILocation(line: 0, scope: !632, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 210, column: 53, scope: !2186)
!2256 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2255)
!2257 = !DILocation(line: 210, column: 73, scope: !2186)
!2258 = !DILocation(line: 0, scope: !2149, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 210, column: 65, scope: !2186)
!2260 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !2259)
!2261 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !2259)
!2262 = !DILocation(line: 0, scope: !632, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 210, column: 84, scope: !2186)
!2264 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2263)
!2265 = !DILocation(line: 0, scope: !632, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 211, column: 9, scope: !2186)
!2267 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2266)
!2268 = !DILocation(line: 211, column: 42, scope: !2186)
!2269 = !DILocation(line: 0, scope: !2149, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 211, column: 34, scope: !2186)
!2271 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !2270)
!2272 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !2270)
!2273 = !DILocation(line: 0, scope: !632, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 211, column: 53, scope: !2186)
!2275 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2274)
!2276 = !DILocation(line: 211, column: 73, scope: !2186)
!2277 = !DILocation(line: 0, scope: !2149, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 211, column: 65, scope: !2186)
!2279 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !2278)
!2280 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !2278)
!2281 = !DILocation(line: 0, scope: !632, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 211, column: 84, scope: !2186)
!2283 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2282)
!2284 = !DILocation(line: 0, scope: !632, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 212, column: 9, scope: !2186)
!2286 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2285)
!2287 = !DILocation(line: 212, column: 33, scope: !2186)
!2288 = !DILocation(line: 0, scope: !2149, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 212, column: 25, scope: !2186)
!2290 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !2289)
!2291 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !2289)
!2292 = !DILocation(line: 0, scope: !632, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 212, column: 45, scope: !2186)
!2294 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2293)
!2295 = !DILocation(line: 212, column: 63, scope: !2186)
!2296 = !DILocation(line: 0, scope: !2149, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 212, column: 55, scope: !2186)
!2298 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !2297)
!2299 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !2297)
!2300 = !DILocation(line: 0, scope: !632, inlinedAt: !2301)
!2301 = distinct !DILocation(line: 212, column: 76, scope: !2186)
!2302 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2301)
!2303 = !DILocation(line: 212, column: 94, scope: !2186)
!2304 = !DILocation(line: 0, scope: !2149, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 212, column: 86, scope: !2186)
!2306 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !2305)
!2307 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !2305)
!2308 = !DILocation(line: 0, scope: !632, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 212, column: 107, scope: !2186)
!2310 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2309)
!2311 = !DILocation(line: 0, scope: !632, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 213, column: 9, scope: !2186)
!2313 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2312)
!2314 = !DILocation(line: 0, scope: !641, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 208, column: 5, scope: !2186)
!2316 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !2315)
!2317 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !2315)
!2318 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !2315)
!2319 = !DILocation(line: 0, scope: !655, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !2315)
!2321 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !2320)
!2322 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !2320)
!2323 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !2320)
!2324 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2315)
!2325 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2315)
!2326 = !DILocation(line: 215, column: 5, scope: !2186)
!2327 = !DILocation(line: 0, scope: !615, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 215, column: 5, scope: !2186)
!2329 = !DILocation(line: 38, column: 11, scope: !615, inlinedAt: !2328)
!2330 = !{!2331, !710, i64 24}
!2331 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEE", !710, i64 0, !710, i64 8, !710, i64 16, !710, i64 24, !1231, i64 32, !553, i64 33}
!2332 = !DILocation(line: 38, column: 30, scope: !615, inlinedAt: !2328)
!2333 = !{!2331, !1231, i64 32}
!2334 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !2328)
!2335 = !DILocation(line: 44, column: 13, scope: !624, inlinedAt: !2328)
!2336 = !DILocation(line: 44, column: 17, scope: !624, inlinedAt: !2328)
!2337 = !{!2331, !710, i64 0}
!2338 = !DILocation(line: 47, column: 9, scope: !627, inlinedAt: !2328)
!2339 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !2328)
!2340 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !2328)
!2341 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !2328)
!2342 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !2328)
!2343 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !2328)
!2344 = !DILocation(line: 0, scope: !629, inlinedAt: !2328)
!2345 = !DILocation(line: 53, column: 13, scope: !2346, inlinedAt: !2328)
!2346 = distinct !DILexicalBlock(scope: !629, file: !338, line: 51, column: 16)
!2347 = !DILocation(line: 53, column: 17, scope: !2346, inlinedAt: !2328)
!2348 = !DILocation(line: 0, scope: !632, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 216, column: 9, scope: !2186)
!2350 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2349)
!2351 = !DILocation(line: 62, column: 17, scope: !638, inlinedAt: !2349)
!2352 = !{!2331, !710, i64 8}
!2353 = !DILocation(line: 0, scope: !971, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 216, column: 64, scope: !2186)
!2355 = !DILocation(line: 0, scope: !976, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 1519, column: 25, scope: !971, inlinedAt: !2354)
!2357 = !DILocation(line: 0, scope: !980, inlinedAt: !2356)
!2358 = !DILocation(line: 1508, column: 29, scope: !985, inlinedAt: !2356)
!2359 = !DILocation(line: 1508, column: 27, scope: !985, inlinedAt: !2356)
!2360 = !DILocation(line: 1508, column: 9, scope: !980, inlinedAt: !2356)
!2361 = !DILocation(line: 0, scope: !727, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 1514, column: 36, scope: !976, inlinedAt: !2356)
!2363 = !DILocation(line: 482, column: 17, scope: !727, inlinedAt: !2362)
!2364 = !DILocation(line: 0, scope: !992, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 1519, column: 33, scope: !971, inlinedAt: !2354)
!2366 = !DILocation(line: 0, scope: !996, inlinedAt: !2365)
!2367 = !DILocation(line: 1497, column: 9, scope: !996, inlinedAt: !2365)
!2368 = !DILocation(line: 1509, column: 24, scope: !1002, inlinedAt: !2356)
!2369 = !DILocation(line: 1509, column: 31, scope: !1002, inlinedAt: !2356)
!2370 = !DILocation(line: 1509, column: 17, scope: !1003, inlinedAt: !2356)
!2371 = !DILocation(line: 1510, column: 37, scope: !1007, inlinedAt: !2356)
!2372 = !DILocation(line: 1510, column: 61, scope: !1007, inlinedAt: !2356)
!2373 = !DILocation(line: 1510, column: 68, scope: !1007, inlinedAt: !2356)
!2374 = !DILocation(line: 1510, column: 53, scope: !1007, inlinedAt: !2356)
!2375 = !DILocation(line: 1510, column: 51, scope: !1007, inlinedAt: !2356)
!2376 = !DILocation(line: 1510, column: 23, scope: !1007, inlinedAt: !2356)
!2377 = !DILocation(line: 1511, column: 13, scope: !1007, inlinedAt: !2356)
!2378 = !DILocation(line: 1508, column: 42, scope: !985, inlinedAt: !2356)
!2379 = distinct !{!2379, !2360, !2380, !561}
!2380 = !DILocation(line: 1512, column: 9, scope: !980, inlinedAt: !2356)
!2381 = !DILocation(line: 1498, column: 24, scope: !1018, inlinedAt: !2365)
!2382 = !DILocation(line: 1498, column: 31, scope: !1018, inlinedAt: !2365)
!2383 = !DILocation(line: 1498, column: 17, scope: !1019, inlinedAt: !2365)
!2384 = !DILocation(line: 1499, column: 37, scope: !1024, inlinedAt: !2365)
!2385 = !DILocation(line: 1499, column: 61, scope: !1024, inlinedAt: !2365)
!2386 = !DILocation(line: 1499, column: 68, scope: !1024, inlinedAt: !2365)
!2387 = !DILocation(line: 1499, column: 53, scope: !1024, inlinedAt: !2365)
!2388 = !DILocation(line: 1499, column: 51, scope: !1024, inlinedAt: !2365)
!2389 = !DILocation(line: 1499, column: 23, scope: !1024, inlinedAt: !2365)
!2390 = !DILocation(line: 1500, column: 13, scope: !1024, inlinedAt: !2365)
!2391 = !DILocation(line: 1497, column: 42, scope: !1020, inlinedAt: !2365)
!2392 = !DILocation(line: 1497, column: 27, scope: !1020, inlinedAt: !2365)
!2393 = distinct !{!2393, !2367, !2394, !561}
!2394 = !DILocation(line: 1501, column: 9, scope: !996, inlinedAt: !2365)
!2395 = !DILocation(line: 482, column: 22, scope: !727, inlinedAt: !2362)
!2396 = !DILocation(line: 482, column: 27, scope: !727, inlinedAt: !2362)
!2397 = !DILocation(line: 1513, column: 15, scope: !976, inlinedAt: !2356)
!2398 = !DILocation(line: 0, scope: !727, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 1502, column: 36, scope: !992, inlinedAt: !2365)
!2400 = !DILocation(line: 1519, column: 31, scope: !971, inlinedAt: !2354)
!2401 = !DILocalVariable(name: "this", arg: 1, scope: !2402, type: !619, flags: DIFlagArtificial | DIFlagObjectPointer)
!2402 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !340, file: !338, line: 82, type: !373, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !372, retainedNodes: !2403)
!2403 = !{!2401, !2404}
!2404 = !DILocalVariable(name: "arg", arg: 2, scope: !2402, file: !338, line: 82, type: !92)
!2405 = !DILocation(line: 0, scope: !2402, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 216, column: 36, scope: !2186)
!2407 = !DILocation(line: 83, column: 44, scope: !2402, inlinedAt: !2406)
!2408 = !{!2331, !710, i64 16}
!2409 = !DILocation(line: 83, column: 49, scope: !2402, inlinedAt: !2406)
!2410 = !DILocation(line: 83, column: 15, scope: !2402, inlinedAt: !2406)
!2411 = !DILocation(line: 0, scope: !632, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 217, column: 9, scope: !2186)
!2413 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2412)
!2414 = !DILocation(line: 0, scope: !971, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 217, column: 49, scope: !2186)
!2416 = !DILocation(line: 0, scope: !976, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 1519, column: 25, scope: !971, inlinedAt: !2415)
!2418 = !DILocation(line: 0, scope: !980, inlinedAt: !2417)
!2419 = !DILocation(line: 1508, column: 29, scope: !985, inlinedAt: !2417)
!2420 = !DILocation(line: 1508, column: 27, scope: !985, inlinedAt: !2417)
!2421 = !DILocation(line: 1508, column: 9, scope: !980, inlinedAt: !2417)
!2422 = !DILocation(line: 0, scope: !727, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 1514, column: 36, scope: !976, inlinedAt: !2417)
!2424 = !DILocation(line: 482, column: 17, scope: !727, inlinedAt: !2423)
!2425 = !DILocation(line: 0, scope: !992, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 1519, column: 33, scope: !971, inlinedAt: !2415)
!2427 = !DILocation(line: 0, scope: !996, inlinedAt: !2426)
!2428 = !DILocation(line: 1497, column: 9, scope: !996, inlinedAt: !2426)
!2429 = !DILocation(line: 1509, column: 24, scope: !1002, inlinedAt: !2417)
!2430 = !DILocation(line: 1509, column: 31, scope: !1002, inlinedAt: !2417)
!2431 = !DILocation(line: 1509, column: 17, scope: !1003, inlinedAt: !2417)
!2432 = !DILocation(line: 1510, column: 37, scope: !1007, inlinedAt: !2417)
!2433 = !DILocation(line: 1510, column: 61, scope: !1007, inlinedAt: !2417)
!2434 = !DILocation(line: 1510, column: 68, scope: !1007, inlinedAt: !2417)
!2435 = !DILocation(line: 1510, column: 53, scope: !1007, inlinedAt: !2417)
!2436 = !DILocation(line: 1510, column: 51, scope: !1007, inlinedAt: !2417)
!2437 = !DILocation(line: 1510, column: 23, scope: !1007, inlinedAt: !2417)
!2438 = !DILocation(line: 1511, column: 13, scope: !1007, inlinedAt: !2417)
!2439 = !DILocation(line: 1508, column: 42, scope: !985, inlinedAt: !2417)
!2440 = distinct !{!2440, !2421, !2441, !561}
!2441 = !DILocation(line: 1512, column: 9, scope: !980, inlinedAt: !2417)
!2442 = !DILocation(line: 1498, column: 24, scope: !1018, inlinedAt: !2426)
!2443 = !DILocation(line: 1498, column: 31, scope: !1018, inlinedAt: !2426)
!2444 = !DILocation(line: 1498, column: 17, scope: !1019, inlinedAt: !2426)
!2445 = !DILocation(line: 1499, column: 37, scope: !1024, inlinedAt: !2426)
!2446 = !DILocation(line: 1499, column: 61, scope: !1024, inlinedAt: !2426)
!2447 = !DILocation(line: 1499, column: 68, scope: !1024, inlinedAt: !2426)
!2448 = !DILocation(line: 1499, column: 53, scope: !1024, inlinedAt: !2426)
!2449 = !DILocation(line: 1499, column: 51, scope: !1024, inlinedAt: !2426)
!2450 = !DILocation(line: 1499, column: 23, scope: !1024, inlinedAt: !2426)
!2451 = !DILocation(line: 1500, column: 13, scope: !1024, inlinedAt: !2426)
!2452 = !DILocation(line: 1497, column: 42, scope: !1020, inlinedAt: !2426)
!2453 = !DILocation(line: 1497, column: 27, scope: !1020, inlinedAt: !2426)
!2454 = distinct !{!2454, !2428, !2455, !561}
!2455 = !DILocation(line: 1501, column: 9, scope: !996, inlinedAt: !2426)
!2456 = !DILocation(line: 482, column: 22, scope: !727, inlinedAt: !2423)
!2457 = !DILocation(line: 482, column: 27, scope: !727, inlinedAt: !2423)
!2458 = !DILocation(line: 1513, column: 15, scope: !976, inlinedAt: !2417)
!2459 = !DILocation(line: 0, scope: !727, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 1502, column: 36, scope: !992, inlinedAt: !2426)
!2461 = !DILocation(line: 1519, column: 31, scope: !971, inlinedAt: !2415)
!2462 = !DILocation(line: 0, scope: !2402, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 217, column: 21, scope: !2186)
!2464 = !DILocation(line: 83, column: 44, scope: !2402, inlinedAt: !2463)
!2465 = !DILocation(line: 83, column: 49, scope: !2402, inlinedAt: !2463)
!2466 = !DILocation(line: 83, column: 15, scope: !2402, inlinedAt: !2463)
!2467 = !DILocation(line: 0, scope: !632, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 218, column: 9, scope: !2186)
!2469 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2468)
!2470 = !DILocation(line: 0, scope: !641, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 215, column: 5, scope: !2186)
!2472 = !DILocation(line: 167, column: 14, scope: !647, inlinedAt: !2471)
!2473 = !DILocation(line: 0, scope: !647, inlinedAt: !2471)
!2474 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !2471)
!2475 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !2471)
!2476 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !2471)
!2477 = !DILocation(line: 0, scope: !655, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !2471)
!2479 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !2478)
!2480 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !2478)
!2481 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !2478)
!2482 = !DILocation(line: 174, column: 44, scope: !664, inlinedAt: !2471)
!2483 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2471)
!2484 = !DILocation(line: 180, column: 13, scope: !669, inlinedAt: !2471)
!2485 = !{i8 0, i8 2}
!2486 = !DILocation(line: 180, column: 21, scope: !669, inlinedAt: !2471)
!2487 = !DILocation(line: 180, column: 24, scope: !669, inlinedAt: !2471)
!2488 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2471)
!2489 = !DILocation(line: 182, column: 9, scope: !668, inlinedAt: !2471)
!2490 = !DILocation(line: 221, column: 14, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 221, column: 9)
!2492 = !DILocation(line: 221, column: 18, scope: !2491)
!2493 = !DILocation(line: 221, column: 9, scope: !2186)
!2494 = !DILocation(line: 222, column: 9, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !6, line: 222, column: 9)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !6, line: 222, column: 9)
!2497 = distinct !DILexicalBlock(scope: !2491, file: !6, line: 221, column: 38)
!2498 = !DILocation(line: 222, column: 9, scope: !2496)
!2499 = !DILocation(line: 222, column: 9, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2495, file: !6, line: 222, column: 9)
!2501 = !DILocation(line: 225, column: 15, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 225, column: 9)
!2503 = !DILocation(line: 225, column: 38, scope: !2502)
!2504 = !DILocation(line: 229, column: 9, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !6, line: 229, column: 9)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !6, line: 229, column: 9)
!2507 = distinct !DILexicalBlock(scope: !2502, file: !6, line: 228, column: 41)
!2508 = !DILocation(line: 229, column: 9, scope: !2506)
!2509 = !DILocation(line: 229, column: 9, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2505, file: !6, line: 229, column: 9)
!2511 = !DILocation(line: 232, column: 15, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 232, column: 9)
!2513 = !DILocation(line: 232, column: 39, scope: !2512)
!2514 = !DILocation(line: 236, column: 9, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !6, line: 236, column: 9)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !6, line: 236, column: 9)
!2517 = distinct !DILexicalBlock(scope: !2512, file: !6, line: 235, column: 42)
!2518 = !DILocation(line: 236, column: 9, scope: !2516)
!2519 = !DILocation(line: 236, column: 9, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2515, file: !6, line: 236, column: 9)
!2521 = !DILocation(line: 237, column: 9, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !6, line: 237, column: 9)
!2523 = distinct !DILexicalBlock(scope: !2517, file: !6, line: 237, column: 9)
!2524 = !DILocation(line: 237, column: 9, scope: !2523)
!2525 = !DILocation(line: 237, column: 9, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2522, file: !6, line: 237, column: 9)
!2527 = !DILocation(line: 238, column: 9, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !6, line: 238, column: 9)
!2529 = distinct !DILexicalBlock(scope: !2517, file: !6, line: 238, column: 9)
!2530 = !DILocation(line: 238, column: 9, scope: !2529)
!2531 = !DILocation(line: 238, column: 9, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2528, file: !6, line: 238, column: 9)
!2533 = !DILocation(line: 239, column: 9, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !6, line: 239, column: 9)
!2535 = distinct !DILexicalBlock(scope: !2517, file: !6, line: 239, column: 9)
!2536 = !DILocation(line: 239, column: 9, scope: !2535)
!2537 = !DILocation(line: 239, column: 9, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2534, file: !6, line: 239, column: 9)
!2539 = !DILocation(line: 240, column: 9, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !6, line: 240, column: 9)
!2541 = distinct !DILexicalBlock(scope: !2517, file: !6, line: 240, column: 9)
!2542 = !DILocation(line: 240, column: 9, scope: !2541)
!2543 = !DILocation(line: 240, column: 9, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2540, file: !6, line: 240, column: 9)
!2545 = !DILocation(line: 243, column: 5, scope: !2186)
!2546 = !DILocation(line: 243, column: 33, scope: !2186)
!2547 = !DILocation(line: 243, column: 46, scope: !2186)
!2548 = !DILocation(line: 244, column: 34, scope: !2186)
!2549 = !DILocation(line: 244, column: 41, scope: !2186)
!2550 = !DILocation(line: 244, column: 62, scope: !2186)
!2551 = !DILocation(line: 244, column: 48, scope: !2186)
!2552 = !DILocation(line: 244, column: 29, scope: !2186)
!2553 = !{!2554, !713, i64 0}
!2554 = !{!"_ZTS25stDmaWrapper_RoiAlignInfo", !713, i64 0, !713, i64 2}
!2555 = !DILocation(line: 245, column: 41, scope: !2186)
!2556 = !DILocation(line: 245, column: 29, scope: !2186)
!2557 = !{!2554, !713, i64 2}
!2558 = !DILocation(line: 246, column: 56, scope: !2186)
!2559 = !DILocation(line: 246, column: 66, scope: !2186)
!2560 = !DILocation(line: 246, column: 16, scope: !2186)
!2561 = !DILocation(line: 248, column: 69, scope: !2186)
!2562 = !DILocation(line: 248, column: 92, scope: !2186)
!2563 = !DILocation(line: 248, column: 22, scope: !2186)
!2564 = !DILocation(line: 249, column: 32, scope: !2186)
!2565 = !DILocation(line: 250, column: 33, scope: !2186)
!2566 = !DILocation(line: 250, column: 22, scope: !2186)
!2567 = !DILocation(line: 252, column: 5, scope: !2186)
!2568 = !DILocation(line: 0, scope: !615, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 252, column: 5, scope: !2186)
!2570 = !DILocation(line: 38, column: 11, scope: !615, inlinedAt: !2569)
!2571 = !DILocation(line: 38, column: 30, scope: !615, inlinedAt: !2569)
!2572 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !2569)
!2573 = !DILocation(line: 44, column: 13, scope: !624, inlinedAt: !2569)
!2574 = !DILocation(line: 44, column: 17, scope: !624, inlinedAt: !2569)
!2575 = !DILocation(line: 47, column: 9, scope: !627, inlinedAt: !2569)
!2576 = !DILocation(line: 47, column: 13, scope: !627, inlinedAt: !2569)
!2577 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !2569)
!2578 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !2569)
!2579 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !2569)
!2580 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !2569)
!2581 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !2569)
!2582 = !DILocation(line: 0, scope: !629, inlinedAt: !2569)
!2583 = !DILocation(line: 53, column: 13, scope: !2346, inlinedAt: !2569)
!2584 = !DILocation(line: 53, column: 17, scope: !2346, inlinedAt: !2569)
!2585 = !DILocation(line: 0, scope: !632, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 253, column: 9, scope: !2186)
!2587 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2586)
!2588 = !DILocation(line: 62, column: 17, scope: !638, inlinedAt: !2586)
!2589 = !DILocation(line: 0, scope: !2149, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 253, column: 43, scope: !2186)
!2591 = !DILocation(line: 73, column: 43, scope: !2149, inlinedAt: !2590)
!2592 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !2590)
!2593 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !2590)
!2594 = !DILocation(line: 73, column: 13, scope: !2149, inlinedAt: !2590)
!2595 = !DILocation(line: 0, scope: !632, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 253, column: 56, scope: !2186)
!2597 = !DILocation(line: 62, column: 48, scope: !638, inlinedAt: !2596)
!2598 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2596)
!2599 = !DILocation(line: 62, column: 17, scope: !638, inlinedAt: !2596)
!2600 = !DILocation(line: 0, scope: !2149, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 253, column: 66, scope: !2186)
!2602 = !DILocation(line: 73, column: 43, scope: !2149, inlinedAt: !2601)
!2603 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !2601)
!2604 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !2601)
!2605 = !DILocation(line: 73, column: 13, scope: !2149, inlinedAt: !2601)
!2606 = !DILocation(line: 0, scope: !632, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 253, column: 80, scope: !2186)
!2608 = !DILocation(line: 62, column: 48, scope: !638, inlinedAt: !2607)
!2609 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2607)
!2610 = !DILocation(line: 62, column: 17, scope: !638, inlinedAt: !2607)
!2611 = !DILocation(line: 0, scope: !2149, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 253, column: 90, scope: !2186)
!2613 = !DILocation(line: 73, column: 43, scope: !2149, inlinedAt: !2612)
!2614 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !2612)
!2615 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !2612)
!2616 = !DILocation(line: 73, column: 13, scope: !2149, inlinedAt: !2612)
!2617 = !DILocation(line: 0, scope: !632, inlinedAt: !2618)
!2618 = distinct !DILocation(line: 253, column: 104, scope: !2186)
!2619 = !DILocation(line: 62, column: 48, scope: !638, inlinedAt: !2618)
!2620 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2618)
!2621 = !DILocation(line: 62, column: 17, scope: !638, inlinedAt: !2618)
!2622 = !DILocation(line: 0, scope: !641, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 252, column: 5, scope: !2186)
!2624 = !DILocation(line: 167, column: 14, scope: !647, inlinedAt: !2623)
!2625 = !DILocation(line: 0, scope: !647, inlinedAt: !2623)
!2626 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !2623)
!2627 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !2623)
!2628 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !2623)
!2629 = !DILocation(line: 0, scope: !655, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !2623)
!2631 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !2630)
!2632 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !2630)
!2633 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !2630)
!2634 = !DILocation(line: 174, column: 30, scope: !664, inlinedAt: !2623)
!2635 = !DILocation(line: 174, column: 44, scope: !664, inlinedAt: !2623)
!2636 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2623)
!2637 = !DILocation(line: 180, column: 13, scope: !669, inlinedAt: !2623)
!2638 = !DILocation(line: 180, column: 21, scope: !669, inlinedAt: !2623)
!2639 = !DILocation(line: 180, column: 24, scope: !669, inlinedAt: !2623)
!2640 = !DILocation(line: 180, column: 31, scope: !669, inlinedAt: !2623)
!2641 = !DILocation(line: 180, column: 28, scope: !669, inlinedAt: !2623)
!2642 = !DILocation(line: 180, column: 13, scope: !648, inlinedAt: !2623)
!2643 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2623)
!2644 = !DILocation(line: 182, column: 9, scope: !668, inlinedAt: !2623)
!2645 = !DILocation(line: 256, column: 14, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 256, column: 9)
!2647 = !DILocation(line: 256, column: 21, scope: !2646)
!2648 = !DILocation(line: 256, column: 28, scope: !2646)
!2649 = !DILocation(line: 256, column: 9, scope: !2186)
!2650 = !DILocation(line: 261, column: 5, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !6, line: 261, column: 5)
!2652 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 261, column: 5)
!2653 = !DILocation(line: 261, column: 5, scope: !2652)
!2654 = !DILocation(line: 261, column: 5, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2651, file: !6, line: 261, column: 5)
!2656 = !DILocalVariable(name: "user_context", arg: 1, scope: !2657, file: !6, line: 79, type: !13)
!2657 = distinct !DISubprogram(name: "desc_pool_get", linkageName: "_ZN12_GLOBAL__N_113desc_pool_getEPv", scope: !1613, file: !6, line: 79, type: !1559, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2658)
!2658 = !{!2656, !2659, !2660, !2661, !2662}
!2659 = !DILocalVariable(name: "lock", scope: !2657, file: !6, line: 80, type: !1618)
!2660 = !DILocalVariable(name: "temp", scope: !2657, file: !6, line: 81, type: !7)
!2661 = !DILocalVariable(name: "prev", scope: !2657, file: !6, line: 82, type: !7)
!2662 = !DILocalVariable(name: "desc", scope: !2657, file: !6, line: 99, type: !48)
!2663 = !DILocation(line: 0, scope: !2657, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 264, column: 23, scope: !2186)
!2665 = !DILocation(line: 0, scope: !1636, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 80, column: 21, scope: !2657, inlinedAt: !2664)
!2667 = !DILocation(line: 16, column: 9, scope: !1643, inlinedAt: !2666)
!2668 = !DILocation(line: 84, column: 17, scope: !2657, inlinedAt: !2664)
!2669 = !DILocation(line: 84, column: 5, scope: !2657, inlinedAt: !2664)
!2670 = !DILocation(line: 85, column: 20, scope: !2671, inlinedAt: !2664)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !6, line: 85, column: 13)
!2672 = distinct !DILexicalBlock(scope: !2657, file: !6, line: 84, column: 29)
!2673 = !{!1650, !1231, i64 8}
!2674 = !DILocation(line: 85, column: 13, scope: !2672, inlinedAt: !2664)
!2675 = !DILocation(line: 86, column: 24, scope: !2676, inlinedAt: !2664)
!2676 = distinct !DILexicalBlock(scope: !2671, file: !6, line: 85, column: 26)
!2677 = !DILocation(line: 87, column: 34, scope: !2676, inlinedAt: !2664)
!2678 = !DILocation(line: 87, column: 13, scope: !2676, inlinedAt: !2664)
!2679 = !DILocation(line: 90, column: 22, scope: !2672, inlinedAt: !2664)
!2680 = distinct !{!2680, !2669, !2681, !561}
!2681 = !DILocation(line: 91, column: 5, scope: !2657, inlinedAt: !2664)
!2682 = !DILocation(line: 94, column: 24, scope: !2657, inlinedAt: !2664)
!2683 = !DILocation(line: 95, column: 14, scope: !2684, inlinedAt: !2664)
!2684 = distinct !DILexicalBlock(scope: !2657, file: !6, line: 95, column: 9)
!2685 = !DILocation(line: 95, column: 9, scope: !2657, inlinedAt: !2664)
!2686 = !DILocation(line: 0, scope: !1052, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 96, column: 9, scope: !2688, inlinedAt: !2664)
!2688 = distinct !DILexicalBlock(scope: !2684, file: !6, line: 95, column: 26)
!2689 = !DILocation(line: 44, column: 27, scope: !1061, inlinedAt: !2687)
!2690 = !DILocation(line: 48, column: 13, scope: !1066, inlinedAt: !2687)
!2691 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !2687)
!2692 = !DILocation(line: 0, scope: !1069, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 96, column: 29, scope: !2688, inlinedAt: !2664)
!2694 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !2693)
!2695 = !DILocation(line: 0, scope: !1078, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 96, column: 9, scope: !2688, inlinedAt: !2664)
!2697 = !DILocation(line: 168, column: 13, scope: !1083, inlinedAt: !2696)
!2698 = !DILocation(line: 169, column: 9, scope: !1083, inlinedAt: !2696)
!2699 = !DILocation(line: 49, column: 23, scope: !1088, inlinedAt: !2687)
!2700 = !DILocation(line: 50, column: 18, scope: !1088, inlinedAt: !2687)
!2701 = !DILocation(line: 0, scope: !1091, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 170, column: 13, scope: !1095, inlinedAt: !2696)
!2703 = !DILocation(line: 163, column: 81, scope: !1091, inlinedAt: !2702)
!2704 = !DILocation(line: 163, column: 87, scope: !1091, inlinedAt: !2702)
!2705 = !DILocation(line: 163, column: 15, scope: !1091, inlinedAt: !2702)
!2706 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !2696)
!2707 = !DILocation(line: 99, column: 32, scope: !2657, inlinedAt: !2664)
!2708 = !DILocation(line: 100, column: 14, scope: !2709, inlinedAt: !2664)
!2709 = distinct !DILexicalBlock(scope: !2657, file: !6, line: 100, column: 9)
!2710 = !DILocation(line: 100, column: 9, scope: !2657, inlinedAt: !2664)
!2711 = !DILocation(line: 101, column: 9, scope: !2712, inlinedAt: !2664)
!2712 = distinct !DILexicalBlock(scope: !2709, file: !6, line: 100, column: 26)
!2713 = !DILocation(line: 0, scope: !1052, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 102, column: 9, scope: !2712, inlinedAt: !2664)
!2715 = !DILocation(line: 44, column: 27, scope: !1061, inlinedAt: !2714)
!2716 = !DILocation(line: 48, column: 13, scope: !1066, inlinedAt: !2714)
!2717 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !2714)
!2718 = !DILocation(line: 0, scope: !1069, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 102, column: 29, scope: !2712, inlinedAt: !2664)
!2720 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !2719)
!2721 = !DILocation(line: 0, scope: !1078, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 102, column: 9, scope: !2712, inlinedAt: !2664)
!2723 = !DILocation(line: 168, column: 13, scope: !1083, inlinedAt: !2722)
!2724 = !DILocation(line: 169, column: 9, scope: !1083, inlinedAt: !2722)
!2725 = !DILocation(line: 49, column: 23, scope: !1088, inlinedAt: !2714)
!2726 = !DILocation(line: 50, column: 18, scope: !1088, inlinedAt: !2714)
!2727 = !DILocation(line: 0, scope: !1091, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 170, column: 13, scope: !1095, inlinedAt: !2722)
!2729 = !DILocation(line: 163, column: 81, scope: !1091, inlinedAt: !2728)
!2730 = !DILocation(line: 163, column: 87, scope: !1091, inlinedAt: !2728)
!2731 = !DILocation(line: 163, column: 15, scope: !1091, inlinedAt: !2728)
!2732 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !2722)
!2733 = !DILocation(line: 105, column: 11, scope: !2657, inlinedAt: !2664)
!2734 = !DILocation(line: 105, column: 22, scope: !2657, inlinedAt: !2664)
!2735 = !DILocation(line: 106, column: 11, scope: !2657, inlinedAt: !2664)
!2736 = !DILocation(line: 106, column: 16, scope: !2657, inlinedAt: !2664)
!2737 = !DILocation(line: 109, column: 30, scope: !2657, inlinedAt: !2664)
!2738 = !DILocation(line: 109, column: 11, scope: !2657, inlinedAt: !2664)
!2739 = !DILocation(line: 109, column: 16, scope: !2657, inlinedAt: !2664)
!2740 = !DILocation(line: 110, column: 20, scope: !2741, inlinedAt: !2664)
!2741 = distinct !DILexicalBlock(scope: !2657, file: !6, line: 110, column: 9)
!2742 = !DILocation(line: 110, column: 9, scope: !2657, inlinedAt: !2664)
!2743 = !DILocation(line: 111, column: 50, scope: !2744, inlinedAt: !2664)
!2744 = distinct !DILexicalBlock(scope: !2741, file: !6, line: 110, column: 32)
!2745 = !DILocation(line: 111, column: 23, scope: !2744, inlinedAt: !2664)
!2746 = !DILocation(line: 111, column: 34, scope: !2744, inlinedAt: !2664)
!2747 = !DILocation(line: 112, column: 23, scope: !2744, inlinedAt: !2664)
!2748 = !DILocation(line: 112, column: 28, scope: !2744, inlinedAt: !2664)
!2749 = !DILocation(line: 113, column: 23, scope: !2744, inlinedAt: !2664)
!2750 = !DILocation(line: 113, column: 28, scope: !2744, inlinedAt: !2664)
!2751 = !DILocation(line: 114, column: 5, scope: !2744, inlinedAt: !2664)
!2752 = !DILocation(line: 0, scope: !615, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 117, column: 9, scope: !2754, inlinedAt: !2664)
!2754 = distinct !DILexicalBlock(scope: !2741, file: !6, line: 114, column: 12)
!2755 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !2753)
!2756 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !2753)
!2757 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !2753)
!2758 = !DILocation(line: 0, scope: !632, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 117, column: 29, scope: !2754, inlinedAt: !2664)
!2760 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2759)
!2761 = !DILocation(line: 0, scope: !641, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 117, column: 9, scope: !2754, inlinedAt: !2664)
!2763 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !2762)
!2764 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !2762)
!2765 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !2753)
!2766 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !2753)
!2767 = !DILocation(line: 0, scope: !655, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !2762)
!2769 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !2768)
!2770 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !2768)
!2771 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !2768)
!2772 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2762)
!2773 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2762)
!2774 = !DILocation(line: 120, column: 14, scope: !2775, inlinedAt: !2664)
!2775 = distinct !DILexicalBlock(scope: !2657, file: !6, line: 120, column: 9)
!2776 = !DILocation(line: 120, column: 9, scope: !2657, inlinedAt: !2664)
!2777 = !DILocation(line: 121, column: 15, scope: !2778, inlinedAt: !2664)
!2778 = distinct !DILexicalBlock(scope: !2775, file: !6, line: 120, column: 26)
!2779 = !DILocation(line: 121, column: 20, scope: !2778, inlinedAt: !2664)
!2780 = !DILocation(line: 122, column: 5, scope: !2778, inlinedAt: !2664)
!2781 = !DILocation(line: 122, column: 16, scope: !2782, inlinedAt: !2664)
!2782 = distinct !DILexicalBlock(scope: !2775, file: !6, line: 122, column: 16)
!2783 = !DILocation(line: 122, column: 30, scope: !2782, inlinedAt: !2664)
!2784 = !DILocation(line: 122, column: 16, scope: !2775, inlinedAt: !2664)
!2785 = !DILocation(line: 123, column: 23, scope: !2786, inlinedAt: !2664)
!2786 = distinct !DILexicalBlock(scope: !2782, file: !6, line: 122, column: 42)
!2787 = !DILocation(line: 124, column: 5, scope: !2786, inlinedAt: !2664)
!2788 = !DILocation(line: 0, scope: !1672, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 126, column: 1, scope: !2657, inlinedAt: !2664)
!2790 = !DILocation(line: 20, column: 9, scope: !1677, inlinedAt: !2789)
!2791 = !DILocation(line: 265, column: 9, scope: !2186)
!2792 = !DILocation(line: 265, column: 19, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 265, column: 9)
!2794 = !DILocation(line: 0, scope: !615, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 266, column: 9, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2793, file: !6, line: 265, column: 31)
!2797 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !2795)
!2798 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !2795)
!2799 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !2795)
!2800 = !DILocation(line: 0, scope: !632, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 266, column: 29, scope: !2796)
!2802 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2801)
!2803 = !DILocation(line: 0, scope: !641, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 266, column: 9, scope: !2796)
!2805 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !2804)
!2806 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !2804)
!2807 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !2795)
!2808 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !2795)
!2809 = !DILocation(line: 0, scope: !655, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !2804)
!2811 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !2810)
!2812 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !2810)
!2813 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !2810)
!2814 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2804)
!2815 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2804)
!2816 = !DILocation(line: 267, column: 9, scope: !2796)
!2817 = !DILocation(line: 270, column: 31, scope: !2186)
!2818 = !DILocation(line: 0, scope: !727, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 270, column: 56, scope: !2186)
!2820 = !DILocation(line: 482, column: 17, scope: !727, inlinedAt: !2819)
!2821 = !DILocation(line: 482, column: 22, scope: !727, inlinedAt: !2819)
!2822 = !DILocation(line: 482, column: 27, scope: !727, inlinedAt: !2819)
!2823 = !DILocation(line: 270, column: 44, scope: !2186)
!2824 = !DILocation(line: 0, scope: !615, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 271, column: 5, scope: !2186)
!2826 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !2825)
!2827 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !2825)
!2828 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !2825)
!2829 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !2825)
!2830 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !2825)
!2831 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !2825)
!2832 = !DILocation(line: 0, scope: !629, inlinedAt: !2825)
!2833 = !DILocation(line: 0, scope: !632, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 271, column: 25, scope: !2186)
!2835 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2834)
!2836 = !DILocation(line: 0, scope: !2149, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 271, column: 58, scope: !2186)
!2838 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !2837)
!2839 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !2837)
!2840 = !DILocation(line: 0, scope: !632, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 271, column: 70, scope: !2186)
!2842 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2841)
!2843 = !DILocation(line: 0, scope: !641, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 271, column: 5, scope: !2186)
!2845 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !2844)
!2846 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !2844)
!2847 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !2844)
!2848 = !DILocation(line: 0, scope: !655, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !2844)
!2850 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !2849)
!2851 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !2849)
!2852 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !2849)
!2853 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2844)
!2854 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2844)
!2855 = !DILocation(line: 273, column: 5, scope: !2186)
!2856 = !DILocation(line: 273, column: 37, scope: !2186)
!2857 = !DILocation(line: 274, column: 35, scope: !2186)
!2858 = !DILocation(line: 274, column: 23, scope: !2186)
!2859 = !DILocation(line: 274, column: 28, scope: !2186)
!2860 = !{!2861, !1232, i64 44}
!2861 = !{!"_ZTS29stDmaWrapper_DmaTransferSetup", !713, i64 0, !713, i64 2, !713, i64 4, !713, i64 6, !713, i64 8, !713, i64 10, !713, i64 12, !713, i64 14, !710, i64 16, !710, i64 24, !710, i64 32, !713, i64 40, !713, i64 42, !1232, i64 44, !2862, i64 48}
!2862 = !{!"_ZTS26eDmaWrapper_TransationType", !553, i64 0}
!2863 = !DILocation(line: 275, column: 40, scope: !2186)
!2864 = !DILocation(line: 275, column: 35, scope: !2186)
!2865 = !DILocation(line: 275, column: 23, scope: !2186)
!2866 = !DILocation(line: 275, column: 33, scope: !2186)
!2867 = !{!2861, !713, i64 0}
!2868 = !DILocation(line: 276, column: 40, scope: !2186)
!2869 = !DILocation(line: 276, column: 35, scope: !2186)
!2870 = !DILocation(line: 276, column: 23, scope: !2186)
!2871 = !DILocation(line: 276, column: 33, scope: !2186)
!2872 = !{!2861, !713, i64 2}
!2873 = !DILocation(line: 277, column: 45, scope: !2186)
!2874 = !DILocation(line: 277, column: 40, scope: !2186)
!2875 = !DILocation(line: 277, column: 23, scope: !2186)
!2876 = !DILocation(line: 277, column: 38, scope: !2186)
!2877 = !{!2861, !713, i64 4}
!2878 = !DILocation(line: 278, column: 23, scope: !2186)
!2879 = !DILocation(line: 278, column: 31, scope: !2186)
!2880 = !{!2861, !713, i64 10}
!2881 = !DILocation(line: 279, column: 23, scope: !2186)
!2882 = !DILocation(line: 279, column: 31, scope: !2186)
!2883 = !{!2861, !713, i64 12}
!2884 = !DILocation(line: 280, column: 38, scope: !2186)
!2885 = !DILocation(line: 280, column: 23, scope: !2186)
!2886 = !DILocation(line: 280, column: 36, scope: !2186)
!2887 = !{!2861, !713, i64 14}
!2888 = !DILocation(line: 281, column: 41, scope: !2186)
!2889 = !DILocation(line: 281, column: 36, scope: !2186)
!2890 = !DILocation(line: 281, column: 23, scope: !2186)
!2891 = !DILocation(line: 281, column: 34, scope: !2186)
!2892 = !{!2861, !713, i64 40}
!2893 = !DILocation(line: 282, column: 23, scope: !2186)
!2894 = !DILocation(line: 282, column: 44, scope: !2186)
!2895 = !{!2861, !713, i64 42}
!2896 = !DILocation(line: 283, column: 23, scope: !2186)
!2897 = !DILocation(line: 283, column: 32, scope: !2186)
!2898 = !{!2861, !710, i64 16}
!2899 = !DILocation(line: 284, column: 67, scope: !2186)
!2900 = !DILocation(line: 284, column: 23, scope: !2186)
!2901 = !DILocation(line: 284, column: 35, scope: !2186)
!2902 = !{!2861, !710, i64 24}
!2903 = !DILocation(line: 285, column: 40, scope: !2186)
!2904 = !DILocation(line: 285, column: 23, scope: !2186)
!2905 = !DILocation(line: 285, column: 33, scope: !2186)
!2906 = !{!2861, !710, i64 32}
!2907 = !DILocation(line: 286, column: 14, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 286, column: 9)
!2909 = !DILocation(line: 286, column: 9, scope: !2186)
!2910 = !DILocation(line: 288, column: 42, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2908, file: !6, line: 286, column: 24)
!2912 = !DILocation(line: 288, column: 60, scope: !2911)
!2913 = !DILocation(line: 288, column: 67, scope: !2911)
!2914 = !DILocation(line: 288, column: 37, scope: !2911)
!2915 = !DILocation(line: 289, column: 42, scope: !2911)
!2916 = !DILocation(line: 290, column: 5, scope: !2911)
!2917 = !DILocation(line: 292, column: 43, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2908, file: !6, line: 290, column: 12)
!2919 = !DILocation(line: 292, column: 38, scope: !2918)
!2920 = !DILocation(line: 292, column: 61, scope: !2918)
!2921 = !DILocation(line: 292, column: 68, scope: !2918)
!2922 = !DILocation(line: 292, column: 54, scope: !2918)
!2923 = !DILocation(line: 292, column: 87, scope: !2918)
!2924 = !DILocation(line: 292, column: 73, scope: !2918)
!2925 = !DILocation(line: 292, column: 37, scope: !2918)
!2926 = !DILocation(line: 293, column: 42, scope: !2918)
!2927 = !DILocation(line: 293, column: 67, scope: !2918)
!2928 = !DILocation(line: 293, column: 37, scope: !2918)
!2929 = !DILocation(line: 0, scope: !2908)
!2930 = !DILocation(line: 291, column: 27, scope: !2918)
!2931 = !DILocation(line: 291, column: 41, scope: !2918)
!2932 = !DILocation(line: 292, column: 27, scope: !2918)
!2933 = !DILocation(line: 292, column: 35, scope: !2918)
!2934 = !DILocation(line: 293, column: 27, scope: !2918)
!2935 = !DILocation(line: 293, column: 35, scope: !2918)
!2936 = !DILocation(line: 297, column: 39, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 297, column: 9)
!2938 = !DILocation(line: 298, column: 15, scope: !2937)
!2939 = !DILocation(line: 298, column: 26, scope: !2937)
!2940 = !DILocation(line: 297, column: 9, scope: !2186)
!2941 = !DILocation(line: 299, column: 42, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2937, file: !6, line: 298, column: 33)
!2943 = !DILocation(line: 299, column: 37, scope: !2942)
!2944 = !DILocation(line: 299, column: 67, scope: !2942)
!2945 = !DILocation(line: 299, column: 53, scope: !2942)
!2946 = !DILocation(line: 299, column: 86, scope: !2942)
!2947 = !DILocation(line: 299, column: 97, scope: !2942)
!2948 = !DILocation(line: 299, column: 104, scope: !2942)
!2949 = !DILocation(line: 299, column: 90, scope: !2942)
!2950 = !DILocation(line: 299, column: 71, scope: !2942)
!2951 = !DILocation(line: 299, column: 35, scope: !2942)
!2952 = !{!2861, !713, i64 8}
!2953 = !DILocation(line: 300, column: 5, scope: !2942)
!2954 = !DILocation(line: 310, column: 48, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !6, line: 309, column: 42)
!2956 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 306, column: 9)
!2957 = !DILocation(line: 310, column: 35, scope: !2955)
!2958 = !DILocation(line: 311, column: 13, scope: !2955)
!2959 = !DILocation(line: 0, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2955, file: !6, line: 311, column: 13)
!2961 = !DILocation(line: 316, column: 9, scope: !2955)
!2962 = !DILocation(line: 0, scope: !615, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 316, column: 9, scope: !2955)
!2964 = !DILocation(line: 38, column: 11, scope: !615, inlinedAt: !2963)
!2965 = !DILocation(line: 38, column: 30, scope: !615, inlinedAt: !2963)
!2966 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !2963)
!2967 = !DILocation(line: 44, column: 13, scope: !624, inlinedAt: !2963)
!2968 = !DILocation(line: 44, column: 17, scope: !624, inlinedAt: !2963)
!2969 = !DILocation(line: 47, column: 9, scope: !627, inlinedAt: !2963)
!2970 = !DILocation(line: 47, column: 13, scope: !627, inlinedAt: !2963)
!2971 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !2963)
!2972 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !2963)
!2973 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !2963)
!2974 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !2963)
!2975 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !2963)
!2976 = !DILocation(line: 0, scope: !629, inlinedAt: !2963)
!2977 = !DILocation(line: 53, column: 13, scope: !2346, inlinedAt: !2963)
!2978 = !DILocation(line: 53, column: 17, scope: !2346, inlinedAt: !2963)
!2979 = !DILocation(line: 0, scope: !632, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 317, column: 13, scope: !2955)
!2981 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2980)
!2982 = !DILocation(line: 62, column: 17, scope: !638, inlinedAt: !2980)
!2983 = !DILocation(line: 317, column: 59, scope: !2955)
!2984 = !{!2861, !713, i64 6}
!2985 = !DILocation(line: 0, scope: !2149, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 317, column: 38, scope: !2955)
!2987 = !DILocation(line: 73, column: 43, scope: !2149, inlinedAt: !2986)
!2988 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !2986)
!2989 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !2986)
!2990 = !DILocation(line: 73, column: 13, scope: !2149, inlinedAt: !2986)
!2991 = !DILocation(line: 0, scope: !632, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 317, column: 67, scope: !2955)
!2993 = !DILocation(line: 62, column: 48, scope: !638, inlinedAt: !2992)
!2994 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !2992)
!2995 = !DILocation(line: 62, column: 17, scope: !638, inlinedAt: !2992)
!2996 = !DILocation(line: 317, column: 98, scope: !2955)
!2997 = !DILocation(line: 0, scope: !2149, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 317, column: 77, scope: !2955)
!2999 = !DILocation(line: 73, column: 43, scope: !2149, inlinedAt: !2998)
!3000 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !2998)
!3001 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !2998)
!3002 = !DILocation(line: 73, column: 13, scope: !2149, inlinedAt: !2998)
!3003 = !DILocation(line: 0, scope: !632, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 318, column: 13, scope: !2955)
!3005 = !DILocation(line: 62, column: 48, scope: !638, inlinedAt: !3004)
!3006 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3004)
!3007 = !DILocation(line: 62, column: 17, scope: !638, inlinedAt: !3004)
!3008 = !DILocation(line: 318, column: 44, scope: !2955)
!3009 = !DILocation(line: 0, scope: !2149, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 318, column: 23, scope: !2955)
!3011 = !DILocation(line: 73, column: 43, scope: !2149, inlinedAt: !3010)
!3012 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !3010)
!3013 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !3010)
!3014 = !DILocation(line: 73, column: 13, scope: !2149, inlinedAt: !3010)
!3015 = !DILocation(line: 0, scope: !632, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 318, column: 52, scope: !2955)
!3017 = !DILocation(line: 62, column: 48, scope: !638, inlinedAt: !3016)
!3018 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3016)
!3019 = !DILocation(line: 62, column: 17, scope: !638, inlinedAt: !3016)
!3020 = !DILocation(line: 318, column: 83, scope: !2955)
!3021 = !DILocation(line: 0, scope: !2149, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 318, column: 62, scope: !2955)
!3023 = !DILocation(line: 73, column: 43, scope: !2149, inlinedAt: !3022)
!3024 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !3022)
!3025 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !3022)
!3026 = !DILocation(line: 73, column: 13, scope: !2149, inlinedAt: !3022)
!3027 = !DILocation(line: 0, scope: !632, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 318, column: 91, scope: !2955)
!3029 = !DILocation(line: 62, column: 48, scope: !638, inlinedAt: !3028)
!3030 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3028)
!3031 = !DILocation(line: 62, column: 17, scope: !638, inlinedAt: !3028)
!3032 = !DILocation(line: 0, scope: !632, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 319, column: 13, scope: !2955)
!3034 = !DILocation(line: 62, column: 48, scope: !638, inlinedAt: !3033)
!3035 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3033)
!3036 = !DILocation(line: 62, column: 17, scope: !638, inlinedAt: !3033)
!3037 = !DILocation(line: 319, column: 45, scope: !2955)
!3038 = !DILocation(line: 319, column: 52, scope: !2955)
!3039 = !DILocation(line: 0, scope: !2149, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 319, column: 37, scope: !2955)
!3041 = !DILocation(line: 73, column: 43, scope: !2149, inlinedAt: !3040)
!3042 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !3040)
!3043 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !3040)
!3044 = !DILocation(line: 73, column: 13, scope: !2149, inlinedAt: !3040)
!3045 = !DILocation(line: 0, scope: !632, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 319, column: 56, scope: !2955)
!3047 = !DILocation(line: 62, column: 48, scope: !638, inlinedAt: !3046)
!3048 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3046)
!3049 = !DILocation(line: 62, column: 17, scope: !638, inlinedAt: !3046)
!3050 = !DILocation(line: 0, scope: !641, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 316, column: 9, scope: !2955)
!3052 = !DILocation(line: 167, column: 14, scope: !647, inlinedAt: !3051)
!3053 = !DILocation(line: 0, scope: !647, inlinedAt: !3051)
!3054 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !3051)
!3055 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3051)
!3056 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3051)
!3057 = !DILocation(line: 0, scope: !655, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3051)
!3059 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3058)
!3060 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3058)
!3061 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3058)
!3062 = !DILocation(line: 174, column: 30, scope: !664, inlinedAt: !3051)
!3063 = !DILocation(line: 174, column: 44, scope: !664, inlinedAt: !3051)
!3064 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3051)
!3065 = !DILocation(line: 180, column: 13, scope: !669, inlinedAt: !3051)
!3066 = !DILocation(line: 180, column: 21, scope: !669, inlinedAt: !3051)
!3067 = !DILocation(line: 180, column: 24, scope: !669, inlinedAt: !3051)
!3068 = !DILocation(line: 180, column: 31, scope: !669, inlinedAt: !3051)
!3069 = !DILocation(line: 180, column: 28, scope: !669, inlinedAt: !3051)
!3070 = !DILocation(line: 180, column: 13, scope: !648, inlinedAt: !3051)
!3071 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3051)
!3072 = !DILocation(line: 182, column: 9, scope: !668, inlinedAt: !3051)
!3073 = !DILocation(line: 320, column: 5, scope: !2955)
!3074 = !DILocation(line: 322, column: 81, scope: !2186)
!3075 = !DILocation(line: 322, column: 24, scope: !2186)
!3076 = !DILocation(line: 323, column: 10, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 323, column: 9)
!3078 = !DILocation(line: 323, column: 9, scope: !2186)
!3079 = !DILocation(line: 0, scope: !615, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 324, column: 9, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3077, file: !6, line: 323, column: 22)
!3082 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !3080)
!3083 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !3080)
!3084 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !3080)
!3085 = !DILocation(line: 0, scope: !632, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 324, column: 29, scope: !3081)
!3087 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3086)
!3088 = !DILocation(line: 0, scope: !641, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 324, column: 9, scope: !3081)
!3090 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3089)
!3091 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3089)
!3092 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !3080)
!3093 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !3080)
!3094 = !DILocation(line: 0, scope: !655, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3089)
!3096 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3095)
!3097 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3095)
!3098 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3095)
!3099 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3089)
!3100 = !DILocation(line: 328, column: 5, scope: !2186)
!3101 = !DILocation(line: 0, scope: !615, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 328, column: 5, scope: !2186)
!3103 = !DILocation(line: 38, column: 11, scope: !615, inlinedAt: !3102)
!3104 = !DILocation(line: 38, column: 30, scope: !615, inlinedAt: !3102)
!3105 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !3102)
!3106 = !DILocation(line: 44, column: 13, scope: !624, inlinedAt: !3102)
!3107 = !DILocation(line: 44, column: 17, scope: !624, inlinedAt: !3102)
!3108 = !DILocation(line: 47, column: 9, scope: !627, inlinedAt: !3102)
!3109 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !3102)
!3110 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !3102)
!3111 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !3102)
!3112 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !3102)
!3113 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !3102)
!3114 = !DILocation(line: 0, scope: !629, inlinedAt: !3102)
!3115 = !DILocation(line: 53, column: 13, scope: !2346, inlinedAt: !3102)
!3116 = !DILocation(line: 53, column: 17, scope: !2346, inlinedAt: !3102)
!3117 = !DILocation(line: 0, scope: !632, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 329, column: 9, scope: !2186)
!3119 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3118)
!3120 = !DILocation(line: 0, scope: !912, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 329, column: 24, scope: !2186)
!3122 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3121)
!3123 = !DILocation(line: 0, scope: !632, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 329, column: 38, scope: !2186)
!3125 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3124)
!3126 = !DILocation(line: 329, column: 76, scope: !2186)
!3127 = !DILocation(line: 0, scope: !912, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 329, column: 55, scope: !2186)
!3129 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3128)
!3130 = !DILocation(line: 0, scope: !632, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 329, column: 85, scope: !2186)
!3132 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3131)
!3133 = !DILocation(line: 62, column: 17, scope: !638, inlinedAt: !3131)
!3134 = !DILocation(line: 0, scope: !641, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 328, column: 5, scope: !2186)
!3136 = !DILocation(line: 167, column: 14, scope: !647, inlinedAt: !3135)
!3137 = !DILocation(line: 0, scope: !647, inlinedAt: !3135)
!3138 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !3135)
!3139 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3135)
!3140 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3135)
!3141 = !DILocation(line: 0, scope: !655, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3135)
!3143 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3142)
!3144 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3142)
!3145 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3142)
!3146 = !DILocation(line: 174, column: 44, scope: !664, inlinedAt: !3135)
!3147 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3135)
!3148 = !DILocation(line: 180, column: 13, scope: !669, inlinedAt: !3135)
!3149 = !DILocation(line: 180, column: 21, scope: !669, inlinedAt: !3135)
!3150 = !DILocation(line: 180, column: 24, scope: !669, inlinedAt: !3135)
!3151 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3135)
!3152 = !DILocation(line: 182, column: 9, scope: !668, inlinedAt: !3135)
!3153 = !DILocation(line: 330, column: 12, scope: !2186)
!3154 = !DILocation(line: 331, column: 14, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 331, column: 9)
!3156 = !DILocation(line: 331, column: 9, scope: !2186)
!3157 = !DILocation(line: 0, scope: !1052, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 332, column: 9, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3155, file: !6, line: 331, column: 27)
!3160 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !3158)
!3161 = !DILocation(line: 49, column: 23, scope: !1088, inlinedAt: !3158)
!3162 = !DILocation(line: 50, column: 18, scope: !1088, inlinedAt: !3158)
!3163 = !DILocation(line: 51, column: 9, scope: !1088, inlinedAt: !3158)
!3164 = !DILocation(line: 0, scope: !1066, inlinedAt: !3158)
!3165 = !DILocation(line: 0, scope: !1069, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 332, column: 29, scope: !3159)
!3167 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !3166)
!3168 = !DILocation(line: 0, scope: !1843, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 332, column: 64, scope: !3159)
!3170 = !DILocation(line: 73, column: 48, scope: !1843, inlinedAt: !3169)
!3171 = !DILocation(line: 73, column: 15, scope: !1843, inlinedAt: !3169)
!3172 = !DILocation(line: 0, scope: !1069, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 332, column: 72, scope: !3159)
!3174 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !3173)
!3175 = !DILocation(line: 0, scope: !1078, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 332, column: 9, scope: !3159)
!3177 = !DILocation(line: 167, column: 13, scope: !1085, inlinedAt: !3176)
!3178 = !DILocation(line: 168, column: 13, scope: !1083, inlinedAt: !3176)
!3179 = !DILocation(line: 169, column: 9, scope: !1083, inlinedAt: !3176)
!3180 = !DILocation(line: 0, scope: !1091, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 170, column: 13, scope: !1095, inlinedAt: !3176)
!3182 = !DILocation(line: 163, column: 81, scope: !1091, inlinedAt: !3181)
!3183 = !DILocation(line: 163, column: 87, scope: !1091, inlinedAt: !3181)
!3184 = !DILocation(line: 163, column: 15, scope: !1091, inlinedAt: !3181)
!3185 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !3176)
!3186 = !DILocation(line: 0, scope: !615, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 336, column: 5, scope: !2186)
!3188 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !3187)
!3189 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !3187)
!3190 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !3187)
!3191 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !3187)
!3192 = !DILocation(line: 0, scope: !629, inlinedAt: !3187)
!3193 = !DILocation(line: 0, scope: !632, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 336, column: 25, scope: !2186)
!3195 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3194)
!3196 = !DILocation(line: 0, scope: !912, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 336, column: 40, scope: !2186)
!3198 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3197)
!3199 = !DILocation(line: 0, scope: !632, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 336, column: 54, scope: !2186)
!3201 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3200)
!3202 = !DILocation(line: 0, scope: !641, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 336, column: 5, scope: !2186)
!3204 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !3203)
!3205 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3203)
!3206 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3203)
!3207 = !DILocation(line: 0, scope: !655, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3203)
!3209 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3208)
!3210 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3208)
!3211 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3208)
!3212 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3203)
!3213 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3203)
!3214 = !DILocation(line: 337, column: 12, scope: !2186)
!3215 = !DILocation(line: 338, column: 14, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 338, column: 9)
!3217 = !DILocation(line: 338, column: 9, scope: !2186)
!3218 = !DILocation(line: 0, scope: !1052, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 339, column: 9, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3216, file: !6, line: 338, column: 27)
!3221 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !3219)
!3222 = !DILocation(line: 49, column: 23, scope: !1088, inlinedAt: !3219)
!3223 = !DILocation(line: 50, column: 18, scope: !1088, inlinedAt: !3219)
!3224 = !DILocation(line: 51, column: 9, scope: !1088, inlinedAt: !3219)
!3225 = !DILocation(line: 0, scope: !1066, inlinedAt: !3219)
!3226 = !DILocation(line: 0, scope: !1069, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 339, column: 29, scope: !3220)
!3228 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !3227)
!3229 = !DILocation(line: 0, scope: !1843, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 339, column: 68, scope: !3220)
!3231 = !DILocation(line: 73, column: 48, scope: !1843, inlinedAt: !3230)
!3232 = !DILocation(line: 73, column: 15, scope: !1843, inlinedAt: !3230)
!3233 = !DILocation(line: 0, scope: !1069, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 339, column: 76, scope: !3220)
!3235 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !3234)
!3236 = !DILocation(line: 0, scope: !1078, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 339, column: 9, scope: !3220)
!3238 = !DILocation(line: 167, column: 13, scope: !1085, inlinedAt: !3237)
!3239 = !DILocation(line: 168, column: 13, scope: !1083, inlinedAt: !3237)
!3240 = !DILocation(line: 169, column: 9, scope: !1083, inlinedAt: !3237)
!3241 = !DILocation(line: 0, scope: !1091, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 170, column: 13, scope: !1095, inlinedAt: !3237)
!3243 = !DILocation(line: 163, column: 81, scope: !1091, inlinedAt: !3242)
!3244 = !DILocation(line: 163, column: 87, scope: !1091, inlinedAt: !3242)
!3245 = !DILocation(line: 163, column: 15, scope: !1091, inlinedAt: !3242)
!3246 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !3237)
!3247 = !DILocation(line: 0, scope: !615, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 343, column: 5, scope: !2186)
!3249 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !3248)
!3250 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !3248)
!3251 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !3248)
!3252 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !3248)
!3253 = !DILocation(line: 0, scope: !629, inlinedAt: !3248)
!3254 = !DILocation(line: 0, scope: !632, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 343, column: 25, scope: !2186)
!3256 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3255)
!3257 = !DILocation(line: 0, scope: !912, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 343, column: 40, scope: !2186)
!3259 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3258)
!3260 = !DILocation(line: 0, scope: !632, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 343, column: 54, scope: !2186)
!3262 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3261)
!3263 = !DILocation(line: 0, scope: !641, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 343, column: 5, scope: !2186)
!3265 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !3264)
!3266 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3264)
!3267 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3264)
!3268 = !DILocation(line: 0, scope: !655, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3264)
!3270 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3269)
!3271 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3269)
!3272 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3269)
!3273 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3264)
!3274 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3264)
!3275 = !DILocation(line: 344, column: 12, scope: !2186)
!3276 = !DILocation(line: 345, column: 14, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 345, column: 9)
!3278 = !DILocation(line: 345, column: 9, scope: !2186)
!3279 = !DILocation(line: 0, scope: !1052, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 346, column: 9, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3277, file: !6, line: 345, column: 27)
!3282 = !DILocation(line: 44, column: 27, scope: !1061, inlinedAt: !3280)
!3283 = !DILocation(line: 48, column: 13, scope: !1066, inlinedAt: !3280)
!3284 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !3280)
!3285 = !DILocation(line: 49, column: 23, scope: !1088, inlinedAt: !3280)
!3286 = !DILocation(line: 50, column: 18, scope: !1088, inlinedAt: !3280)
!3287 = !DILocation(line: 51, column: 9, scope: !1088, inlinedAt: !3280)
!3288 = !DILocation(line: 0, scope: !1066, inlinedAt: !3280)
!3289 = !DILocation(line: 0, scope: !1069, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 346, column: 29, scope: !3281)
!3291 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !3290)
!3292 = !DILocation(line: 0, scope: !1843, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 346, column: 68, scope: !3281)
!3294 = !DILocation(line: 73, column: 48, scope: !1843, inlinedAt: !3293)
!3295 = !DILocation(line: 73, column: 15, scope: !1843, inlinedAt: !3293)
!3296 = !DILocation(line: 0, scope: !1069, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 346, column: 76, scope: !3281)
!3298 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !3297)
!3299 = !DILocation(line: 0, scope: !1078, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 346, column: 9, scope: !3281)
!3301 = !DILocation(line: 167, column: 13, scope: !1085, inlinedAt: !3300)
!3302 = !DILocation(line: 168, column: 13, scope: !1083, inlinedAt: !3300)
!3303 = !DILocation(line: 169, column: 9, scope: !1083, inlinedAt: !3300)
!3304 = !DILocation(line: 0, scope: !1091, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 170, column: 13, scope: !1095, inlinedAt: !3300)
!3306 = !DILocation(line: 163, column: 81, scope: !1091, inlinedAt: !3305)
!3307 = !DILocation(line: 163, column: 87, scope: !1091, inlinedAt: !3305)
!3308 = !DILocation(line: 163, column: 15, scope: !1091, inlinedAt: !3305)
!3309 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !3300)
!3310 = !DILocalVariable(name: "user_context", arg: 1, scope: !3311, file: !6, line: 128, type: !13)
!3311 = distinct !DISubprogram(name: "desc_pool_put", linkageName: "_ZN12_GLOBAL__N_113desc_pool_putEPvS0_", scope: !1613, file: !6, line: 128, type: !1276, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3312)
!3312 = !{!3310, !3313, !3314, !3315}
!3313 = !DILocalVariable(name: "desc", arg: 2, scope: !3311, file: !6, line: 128, type: !13)
!3314 = !DILocalVariable(name: "lock", scope: !3311, file: !6, line: 129, type: !1618)
!3315 = !DILocalVariable(name: "temp", scope: !3311, file: !6, line: 131, type: !7)
!3316 = !DILocation(line: 0, scope: !3311, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 350, column: 5, scope: !2186)
!3318 = !DILocation(line: 0, scope: !1636, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 129, column: 21, scope: !3311, inlinedAt: !3317)
!3320 = !DILocation(line: 16, column: 9, scope: !1643, inlinedAt: !3319)
!3321 = !DILocation(line: 132, column: 17, scope: !3311, inlinedAt: !3317)
!3322 = !DILocation(line: 132, column: 5, scope: !3311, inlinedAt: !3317)
!3323 = !DILocation(line: 133, column: 19, scope: !3324, inlinedAt: !3317)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !6, line: 133, column: 13)
!3325 = distinct !DILexicalBlock(scope: !3311, file: !6, line: 132, column: 29)
!3326 = !DILocation(line: 133, column: 30, scope: !3324, inlinedAt: !3317)
!3327 = !DILocation(line: 133, column: 13, scope: !3325, inlinedAt: !3317)
!3328 = !DILocation(line: 134, column: 19, scope: !3329, inlinedAt: !3317)
!3329 = distinct !DILexicalBlock(scope: !3324, file: !6, line: 133, column: 39)
!3330 = !DILocation(line: 134, column: 24, scope: !3329, inlinedAt: !3317)
!3331 = !DILocation(line: 135, column: 13, scope: !3329, inlinedAt: !3317)
!3332 = !DILocation(line: 137, column: 22, scope: !3325, inlinedAt: !3317)
!3333 = distinct !{!3333, !3322, !3334, !561}
!3334 = !DILocation(line: 138, column: 5, scope: !3311, inlinedAt: !3317)
!3335 = !DILocation(line: 0, scope: !1052, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 139, column: 5, scope: !3311, inlinedAt: !3317)
!3337 = !DILocation(line: 44, column: 27, scope: !1061, inlinedAt: !3336)
!3338 = !DILocation(line: 48, column: 13, scope: !1066, inlinedAt: !3336)
!3339 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !3336)
!3340 = !DILocation(line: 49, column: 23, scope: !1088, inlinedAt: !3336)
!3341 = !DILocation(line: 50, column: 18, scope: !1088, inlinedAt: !3336)
!3342 = !DILocation(line: 51, column: 9, scope: !1088, inlinedAt: !3336)
!3343 = !DILocation(line: 0, scope: !1066, inlinedAt: !3336)
!3344 = !DILocation(line: 0, scope: !1069, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 139, column: 25, scope: !3311, inlinedAt: !3317)
!3346 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !3345)
!3347 = !DILocalVariable(name: "this", arg: 1, scope: !3348, type: !1056, flags: DIFlagArtificial | DIFlagObjectPointer)
!3348 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !423, file: !338, line: 97, type: !458, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, declaration: !457, retainedNodes: !3349)
!3349 = !{!3347, !3350}
!3350 = !DILocalVariable(name: "arg", arg: 2, scope: !3348, file: !338, line: 97, type: !386)
!3351 = !DILocation(line: 0, scope: !3348, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 139, column: 55, scope: !3311, inlinedAt: !3317)
!3353 = !DILocation(line: 98, column: 15, scope: !3348, inlinedAt: !3352)
!3354 = !DILocation(line: 0, scope: !1069, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 139, column: 63, scope: !3311, inlinedAt: !3317)
!3356 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !3355)
!3357 = !DILocation(line: 0, scope: !1078, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 139, column: 5, scope: !3311, inlinedAt: !3317)
!3359 = !DILocation(line: 167, column: 13, scope: !1085, inlinedAt: !3358)
!3360 = !DILocation(line: 168, column: 13, scope: !1083, inlinedAt: !3358)
!3361 = !DILocation(line: 169, column: 9, scope: !1083, inlinedAt: !3358)
!3362 = !DILocation(line: 0, scope: !1091, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 170, column: 13, scope: !1095, inlinedAt: !3358)
!3364 = !DILocation(line: 163, column: 81, scope: !1091, inlinedAt: !3363)
!3365 = !DILocation(line: 163, column: 87, scope: !1091, inlinedAt: !3363)
!3366 = !DILocation(line: 163, column: 15, scope: !1091, inlinedAt: !3363)
!3367 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !3358)
!3368 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !3358)
!3369 = !DILocation(line: 140, column: 1, scope: !3311, inlinedAt: !3317)
!3370 = !DILocation(line: 0, scope: !1672, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 140, column: 1, scope: !3311, inlinedAt: !3317)
!3372 = !DILocation(line: 20, column: 9, scope: !1677, inlinedAt: !3371)
!3373 = !DILocation(line: 351, column: 75, scope: !2186)
!3374 = !DILocation(line: 351, column: 12, scope: !2186)
!3375 = !DILocation(line: 352, column: 14, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 352, column: 9)
!3377 = !DILocation(line: 352, column: 9, scope: !2186)
!3378 = !DILocation(line: 0, scope: !615, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 353, column: 9, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3376, file: !6, line: 352, column: 44)
!3381 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !3379)
!3382 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !3379)
!3383 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !3379)
!3384 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !3379)
!3385 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !3379)
!3386 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !3379)
!3387 = !DILocation(line: 0, scope: !629, inlinedAt: !3379)
!3388 = !DILocation(line: 0, scope: !632, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 353, column: 29, scope: !3380)
!3390 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3389)
!3391 = !DILocation(line: 0, scope: !2149, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 353, column: 75, scope: !3380)
!3393 = !DILocation(line: 73, column: 48, scope: !2149, inlinedAt: !3392)
!3394 = !DILocation(line: 73, column: 15, scope: !2149, inlinedAt: !3392)
!3395 = !DILocation(line: 0, scope: !632, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 353, column: 83, scope: !3380)
!3397 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3396)
!3398 = !DILocation(line: 0, scope: !641, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 353, column: 9, scope: !3380)
!3400 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !3399)
!3401 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3399)
!3402 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3399)
!3403 = !DILocation(line: 0, scope: !655, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3399)
!3405 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3404)
!3406 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3404)
!3407 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3404)
!3408 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3399)
!3409 = !DILocation(line: 357, column: 1, scope: !2186)
!3410 = distinct !DISubprogram(name: "halide_hexagon_dma_copy_to_device", scope: !6, file: !6, line: 538, type: !889, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3411)
!3411 = !{!3412, !3413}
!3412 = !DILocalVariable(name: "user_context", arg: 1, scope: !3410, file: !6, line: 538, type: !13)
!3413 = !DILocalVariable(name: "buf", arg: 2, scope: !3410, file: !6, line: 538, type: !891)
!3414 = !DILocation(line: 0, scope: !3410)
!3415 = !DILocation(line: 0, scope: !615, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 539, column: 5, scope: !3410)
!3417 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !3416)
!3418 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !3416)
!3419 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !3416)
!3420 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !3416)
!3421 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !3416)
!3422 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !3416)
!3423 = !DILocation(line: 0, scope: !629, inlinedAt: !3416)
!3424 = !DILocation(line: 0, scope: !632, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 540, column: 9, scope: !3410)
!3426 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3425)
!3427 = !DILocation(line: 0, scope: !912, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 540, column: 73, scope: !3410)
!3429 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3428)
!3430 = !DILocation(line: 0, scope: !632, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 541, column: 9, scope: !3410)
!3432 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3431)
!3433 = !DILocation(line: 0, scope: !922, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 541, column: 22, scope: !3410)
!3435 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3434)
!3436 = !DILocation(line: 0, scope: !632, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 541, column: 30, scope: !3410)
!3438 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3437)
!3439 = !DILocation(line: 0, scope: !641, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 539, column: 5, scope: !3410)
!3441 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !3440)
!3442 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3440)
!3443 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3440)
!3444 = !DILocation(line: 0, scope: !655, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3440)
!3446 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3445)
!3447 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3445)
!3448 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3445)
!3449 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3440)
!3450 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3440)
!3451 = !DILocation(line: 0, scope: !1052, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 543, column: 5, scope: !3410)
!3453 = !DILocation(line: 44, column: 27, scope: !1061, inlinedAt: !3452)
!3454 = !DILocation(line: 48, column: 13, scope: !1066, inlinedAt: !3452)
!3455 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !3452)
!3456 = !DILocation(line: 0, scope: !1069, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 543, column: 25, scope: !3410)
!3458 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !3457)
!3459 = !DILocation(line: 0, scope: !1078, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 543, column: 5, scope: !3410)
!3461 = !DILocation(line: 168, column: 13, scope: !1083, inlinedAt: !3460)
!3462 = !DILocation(line: 169, column: 9, scope: !1083, inlinedAt: !3460)
!3463 = !DILocation(line: 49, column: 23, scope: !1088, inlinedAt: !3452)
!3464 = !DILocation(line: 50, column: 18, scope: !1088, inlinedAt: !3452)
!3465 = !DILocation(line: 0, scope: !1091, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 170, column: 13, scope: !1095, inlinedAt: !3460)
!3467 = !DILocation(line: 163, column: 81, scope: !1091, inlinedAt: !3466)
!3468 = !DILocation(line: 163, column: 87, scope: !1091, inlinedAt: !3466)
!3469 = !DILocation(line: 163, column: 15, scope: !1091, inlinedAt: !3466)
!3470 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !3460)
!3471 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !3460)
!3472 = !DILocation(line: 544, column: 5, scope: !3410)
!3473 = distinct !DISubprogram(name: "halide_hexagon_dma_copy_to_host", scope: !6, file: !6, line: 547, type: !163, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3474)
!3474 = !{!3475, !3476}
!3475 = !DILocalVariable(name: "user_context", arg: 1, scope: !3473, file: !6, line: 547, type: !13)
!3476 = !DILocalVariable(name: "buf", arg: 2, scope: !3473, file: !6, line: 547, type: !40)
!3477 = !DILocation(line: 0, scope: !3473)
!3478 = !DILocation(line: 0, scope: !615, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 548, column: 5, scope: !3473)
!3480 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !3479)
!3481 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !3479)
!3482 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !3479)
!3483 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !3479)
!3484 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !3479)
!3485 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !3479)
!3486 = !DILocation(line: 0, scope: !629, inlinedAt: !3479)
!3487 = !DILocation(line: 0, scope: !632, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 549, column: 9, scope: !3473)
!3489 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3488)
!3490 = !DILocation(line: 0, scope: !912, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 549, column: 71, scope: !3473)
!3492 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3491)
!3493 = !DILocation(line: 0, scope: !632, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 550, column: 9, scope: !3473)
!3495 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3494)
!3496 = !DILocation(line: 0, scope: !922, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 550, column: 22, scope: !3473)
!3498 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3497)
!3499 = !DILocation(line: 0, scope: !632, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 550, column: 30, scope: !3473)
!3501 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3500)
!3502 = !DILocation(line: 0, scope: !641, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 548, column: 5, scope: !3473)
!3504 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !3503)
!3505 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3503)
!3506 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3503)
!3507 = !DILocation(line: 0, scope: !655, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3503)
!3509 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3508)
!3510 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3508)
!3511 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3508)
!3512 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3503)
!3513 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3503)
!3514 = !DILocation(line: 0, scope: !1052, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 552, column: 5, scope: !3473)
!3516 = !DILocation(line: 44, column: 27, scope: !1061, inlinedAt: !3515)
!3517 = !DILocation(line: 48, column: 13, scope: !1066, inlinedAt: !3515)
!3518 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !3515)
!3519 = !DILocation(line: 0, scope: !1069, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 552, column: 25, scope: !3473)
!3521 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !3520)
!3522 = !DILocation(line: 0, scope: !1078, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 552, column: 5, scope: !3473)
!3524 = !DILocation(line: 168, column: 13, scope: !1083, inlinedAt: !3523)
!3525 = !DILocation(line: 169, column: 9, scope: !1083, inlinedAt: !3523)
!3526 = !DILocation(line: 49, column: 23, scope: !1088, inlinedAt: !3515)
!3527 = !DILocation(line: 50, column: 18, scope: !1088, inlinedAt: !3515)
!3528 = !DILocation(line: 0, scope: !1091, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 170, column: 13, scope: !1095, inlinedAt: !3523)
!3530 = !DILocation(line: 163, column: 81, scope: !1091, inlinedAt: !3529)
!3531 = !DILocation(line: 163, column: 87, scope: !1091, inlinedAt: !3529)
!3532 = !DILocation(line: 163, column: 15, scope: !1091, inlinedAt: !3529)
!3533 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !3523)
!3534 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !3523)
!3535 = !DILocation(line: 553, column: 5, scope: !3473)
!3536 = distinct !DISubprogram(name: "halide_hexagon_dma_device_crop", scope: !6, file: !6, line: 556, type: !180, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3537)
!3537 = !{!3538, !3539, !3540, !3541, !3544}
!3538 = !DILocalVariable(name: "user_context", arg: 1, scope: !3536, file: !6, line: 556, type: !13)
!3539 = !DILocalVariable(name: "src", arg: 2, scope: !3536, file: !6, line: 557, type: !182)
!3540 = !DILocalVariable(name: "dst", arg: 3, scope: !3536, file: !6, line: 558, type: !40)
!3541 = !DILocalVariable(name: "src_dev", scope: !3536, file: !6, line: 565, type: !3542)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!3544 = !DILocalVariable(name: "dst_dev", scope: !3536, file: !6, line: 566, type: !489)
!3545 = !DILocation(line: 0, scope: !3536)
!3546 = !DILocation(line: 0, scope: !615, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 559, column: 5, scope: !3536)
!3548 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !3547)
!3549 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !3547)
!3550 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !3547)
!3551 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !3547)
!3552 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !3547)
!3553 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !3547)
!3554 = !DILocation(line: 0, scope: !629, inlinedAt: !3547)
!3555 = !DILocation(line: 0, scope: !632, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 560, column: 9, scope: !3536)
!3557 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3556)
!3558 = !DILocation(line: 0, scope: !912, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 560, column: 70, scope: !3536)
!3560 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3559)
!3561 = !DILocation(line: 0, scope: !632, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 561, column: 9, scope: !3536)
!3563 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3562)
!3564 = !DILocation(line: 0, scope: !922, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 561, column: 21, scope: !3536)
!3566 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3565)
!3567 = !DILocation(line: 0, scope: !632, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 561, column: 29, scope: !3536)
!3569 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3568)
!3570 = !DILocation(line: 0, scope: !922, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 561, column: 41, scope: !3536)
!3572 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3571)
!3573 = !DILocation(line: 0, scope: !632, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 561, column: 49, scope: !3536)
!3575 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3574)
!3576 = !DILocation(line: 0, scope: !641, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 559, column: 5, scope: !3536)
!3578 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !3577)
!3579 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3577)
!3580 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3577)
!3581 = !DILocation(line: 0, scope: !655, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3577)
!3583 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3582)
!3584 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3582)
!3585 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3582)
!3586 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3577)
!3587 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3577)
!3588 = !DILocation(line: 563, column: 34, scope: !3536)
!3589 = !DILocation(line: 563, column: 10, scope: !3536)
!3590 = !DILocation(line: 563, column: 27, scope: !3536)
!3591 = !DILocation(line: 565, column: 66, scope: !3536)
!3592 = !DILocation(line: 565, column: 40, scope: !3536)
!3593 = !DILocation(line: 39, column: 51, scope: !1219, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 566, column: 34, scope: !3536)
!3595 = !DILocation(line: 0, scope: !1219, inlinedAt: !3594)
!3596 = !DILocation(line: 40, column: 10, scope: !1219, inlinedAt: !3594)
!3597 = !DILocation(line: 40, column: 17, scope: !1219, inlinedAt: !3594)
!3598 = !DILocation(line: 41, column: 10, scope: !1219, inlinedAt: !3594)
!3599 = !DILocation(line: 41, column: 21, scope: !1219, inlinedAt: !3594)
!3600 = !DILocation(line: 42, column: 10, scope: !1219, inlinedAt: !3594)
!3601 = !DILocation(line: 42, column: 21, scope: !1219, inlinedAt: !3594)
!3602 = !DILocation(line: 43, column: 10, scope: !1219, inlinedAt: !3594)
!3603 = !DILocation(line: 43, column: 21, scope: !1219, inlinedAt: !3594)
!3604 = !DILocation(line: 44, column: 10, scope: !1219, inlinedAt: !3594)
!3605 = !DILocation(line: 44, column: 21, scope: !1219, inlinedAt: !3594)
!3606 = !DILocation(line: 45, column: 10, scope: !1219, inlinedAt: !3594)
!3607 = !DILocation(line: 45, column: 21, scope: !1219, inlinedAt: !3594)
!3608 = !DILocation(line: 46, column: 10, scope: !1219, inlinedAt: !3594)
!3609 = !DILocation(line: 46, column: 22, scope: !1219, inlinedAt: !3594)
!3610 = !DILocation(line: 47, column: 10, scope: !1219, inlinedAt: !3594)
!3611 = !DILocation(line: 47, column: 23, scope: !1219, inlinedAt: !3594)
!3612 = !DILocation(line: 48, column: 10, scope: !1219, inlinedAt: !3594)
!3613 = !DILocation(line: 48, column: 23, scope: !1219, inlinedAt: !3594)
!3614 = !DILocation(line: 49, column: 10, scope: !1219, inlinedAt: !3594)
!3615 = !DILocation(line: 49, column: 18, scope: !1219, inlinedAt: !3594)
!3616 = !DILocation(line: 50, column: 10, scope: !1219, inlinedAt: !3594)
!3617 = !DILocation(line: 50, column: 14, scope: !1219, inlinedAt: !3594)
!3618 = !DILocation(line: 51, column: 10, scope: !1219, inlinedAt: !3594)
!3619 = !DILocation(line: 51, column: 19, scope: !1219, inlinedAt: !3594)
!3620 = !DILocation(line: 568, column: 32, scope: !3536)
!3621 = !DILocation(line: 568, column: 21, scope: !3536)
!3622 = !DILocation(line: 569, column: 36, scope: !3536)
!3623 = !DILocation(line: 569, column: 27, scope: !3536)
!3624 = !DILocation(line: 569, column: 54, scope: !3536)
!3625 = !DILocation(line: 569, column: 61, scope: !3536)
!3626 = !DILocation(line: 569, column: 47, scope: !3536)
!3627 = !DILocation(line: 569, column: 72, scope: !3536)
!3628 = !DILocation(line: 569, column: 79, scope: !3536)
!3629 = !DILocation(line: 569, column: 65, scope: !3536)
!3630 = !DILocation(line: 569, column: 25, scope: !3536)
!3631 = !DILocation(line: 570, column: 36, scope: !3536)
!3632 = !DILocation(line: 570, column: 27, scope: !3536)
!3633 = !DILocation(line: 570, column: 61, scope: !3536)
!3634 = !DILocation(line: 570, column: 47, scope: !3536)
!3635 = !DILocation(line: 570, column: 79, scope: !3536)
!3636 = !DILocation(line: 570, column: 65, scope: !3536)
!3637 = !DILocation(line: 570, column: 25, scope: !3536)
!3638 = !DILocation(line: 571, column: 36, scope: !3536)
!3639 = !DILocation(line: 571, column: 25, scope: !3536)
!3640 = !DILocation(line: 572, column: 37, scope: !3536)
!3641 = !DILocation(line: 572, column: 26, scope: !3536)
!3642 = !DILocation(line: 573, column: 38, scope: !3536)
!3643 = !DILocation(line: 573, column: 27, scope: !3536)
!3644 = !DILocation(line: 574, column: 38, scope: !3536)
!3645 = !DILocation(line: 574, column: 27, scope: !3536)
!3646 = !DILocation(line: 575, column: 33, scope: !3536)
!3647 = !DILocation(line: 575, column: 22, scope: !3536)
!3648 = !DILocation(line: 576, column: 34, scope: !3536)
!3649 = !DILocation(line: 576, column: 23, scope: !3536)
!3650 = !DILocation(line: 577, column: 29, scope: !3536)
!3651 = !DILocation(line: 577, column: 18, scope: !3536)
!3652 = !DILocation(line: 579, column: 19, scope: !3536)
!3653 = !DILocation(line: 579, column: 10, scope: !3536)
!3654 = !DILocation(line: 579, column: 17, scope: !3536)
!3655 = !DILocation(line: 581, column: 5, scope: !3536)
!3656 = distinct !DISubprogram(name: "halide_hexagon_dma_device_slice", scope: !6, file: !6, line: 584, type: !185, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3657)
!3657 = !{!3658, !3659, !3660, !3661, !3662}
!3658 = !DILocalVariable(name: "user_context", arg: 1, scope: !3656, file: !6, line: 584, type: !13)
!3659 = !DILocalVariable(name: "src", arg: 2, scope: !3656, file: !6, line: 585, type: !182)
!3660 = !DILocalVariable(name: "slice_dim", arg: 3, scope: !3656, file: !6, line: 586, type: !39)
!3661 = !DILocalVariable(name: "slice_pos", arg: 4, scope: !3656, file: !6, line: 586, type: !39)
!3662 = !DILocalVariable(name: "dst", arg: 5, scope: !3656, file: !6, line: 586, type: !40)
!3663 = !DILocation(line: 0, scope: !3656)
!3664 = !DILocation(line: 0, scope: !615, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 587, column: 5, scope: !3656)
!3666 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !3665)
!3667 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !3665)
!3668 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !3665)
!3669 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !3665)
!3670 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !3665)
!3671 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !3665)
!3672 = !DILocation(line: 0, scope: !629, inlinedAt: !3665)
!3673 = !DILocation(line: 0, scope: !632, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 588, column: 9, scope: !3656)
!3675 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3674)
!3676 = !DILocation(line: 0, scope: !912, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 588, column: 71, scope: !3656)
!3678 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3677)
!3679 = !DILocation(line: 0, scope: !632, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 589, column: 9, scope: !3656)
!3681 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3680)
!3682 = !DILocation(line: 0, scope: !922, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 589, column: 21, scope: !3656)
!3684 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3683)
!3685 = !DILocation(line: 0, scope: !632, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 589, column: 29, scope: !3656)
!3687 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3686)
!3688 = !DILocation(line: 0, scope: !922, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 589, column: 41, scope: !3656)
!3690 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3689)
!3691 = !DILocation(line: 0, scope: !632, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 589, column: 49, scope: !3656)
!3693 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3692)
!3694 = !DILocation(line: 0, scope: !641, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 587, column: 5, scope: !3656)
!3696 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !3695)
!3697 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3695)
!3698 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3695)
!3699 = !DILocation(line: 0, scope: !655, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3695)
!3701 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3700)
!3702 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3700)
!3703 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3700)
!3704 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3695)
!3705 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3695)
!3706 = !DILocation(line: 591, column: 5, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3708, file: !6, line: 591, column: 5)
!3708 = distinct !DILexicalBlock(scope: !3709, file: !6, line: 591, column: 5)
!3709 = distinct !DILexicalBlock(scope: !3656, file: !6, line: 591, column: 5)
!3710 = !DILocation(line: 0, scope: !1052, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 593, column: 5, scope: !3656)
!3712 = !DILocation(line: 44, column: 27, scope: !1061, inlinedAt: !3711)
!3713 = !DILocation(line: 48, column: 13, scope: !1066, inlinedAt: !3711)
!3714 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !3711)
!3715 = !DILocation(line: 0, scope: !1069, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 593, column: 25, scope: !3656)
!3717 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !3716)
!3718 = !DILocation(line: 0, scope: !1078, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 593, column: 5, scope: !3656)
!3720 = !DILocation(line: 168, column: 13, scope: !1083, inlinedAt: !3719)
!3721 = !DILocation(line: 169, column: 9, scope: !1083, inlinedAt: !3719)
!3722 = !DILocation(line: 49, column: 23, scope: !1088, inlinedAt: !3711)
!3723 = !DILocation(line: 50, column: 18, scope: !1088, inlinedAt: !3711)
!3724 = !DILocation(line: 0, scope: !1091, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 170, column: 13, scope: !1095, inlinedAt: !3719)
!3726 = !DILocation(line: 163, column: 81, scope: !1091, inlinedAt: !3725)
!3727 = !DILocation(line: 163, column: 87, scope: !1091, inlinedAt: !3725)
!3728 = !DILocation(line: 163, column: 15, scope: !1091, inlinedAt: !3725)
!3729 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !3719)
!3730 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !3719)
!3731 = !DILocation(line: 594, column: 5, scope: !3656)
!3732 = distinct !DISubprogram(name: "halide_hexagon_dma_device_release_crop", scope: !6, file: !6, line: 597, type: !163, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3733)
!3733 = !{!3734, !3735}
!3734 = !DILocalVariable(name: "user_context", arg: 1, scope: !3732, file: !6, line: 597, type: !13)
!3735 = !DILocalVariable(name: "buf", arg: 2, scope: !3732, file: !6, line: 597, type: !40)
!3736 = !DILocation(line: 0, scope: !3732)
!3737 = !DILocation(line: 0, scope: !615, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 598, column: 5, scope: !3732)
!3739 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !3738)
!3740 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !3738)
!3741 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !3738)
!3742 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !3738)
!3743 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !3738)
!3744 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !3738)
!3745 = !DILocation(line: 0, scope: !629, inlinedAt: !3738)
!3746 = !DILocation(line: 0, scope: !632, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 599, column: 9, scope: !3732)
!3748 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3747)
!3749 = !DILocation(line: 0, scope: !912, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 599, column: 78, scope: !3732)
!3751 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3750)
!3752 = !DILocation(line: 0, scope: !632, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 600, column: 9, scope: !3732)
!3754 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3753)
!3755 = !DILocation(line: 0, scope: !922, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 600, column: 21, scope: !3732)
!3757 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3756)
!3758 = !DILocation(line: 0, scope: !632, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 600, column: 29, scope: !3732)
!3760 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3759)
!3761 = !DILocation(line: 0, scope: !641, inlinedAt: !3762)
!3762 = distinct !DILocation(line: 598, column: 5, scope: !3732)
!3763 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !3762)
!3764 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3762)
!3765 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3762)
!3766 = !DILocation(line: 0, scope: !655, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3762)
!3768 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3767)
!3769 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3767)
!3770 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3767)
!3771 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3762)
!3772 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3762)
!3773 = !DILocation(line: 602, column: 5, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3775, file: !6, line: 602, column: 5)
!3775 = distinct !DILexicalBlock(scope: !3732, file: !6, line: 602, column: 5)
!3776 = !DILocation(line: 602, column: 5, scope: !3775)
!3777 = !DILocation(line: 602, column: 5, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3774, file: !6, line: 602, column: 5)
!3779 = !DILocation(line: 603, column: 36, scope: !3732)
!3780 = !DILocation(line: 603, column: 10, scope: !3732)
!3781 = !DILocation(line: 603, column: 5, scope: !3732)
!3782 = !DILocation(line: 604, column: 17, scope: !3732)
!3783 = !DILocation(line: 606, column: 5, scope: !3732)
!3784 = !DISubprogram(name: "free", scope: !26, file: !26, line: 86, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!3785 = distinct !DISubprogram(name: "halide_hexagon_dma_device_sync", scope: !6, file: !6, line: 609, type: !163, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3786)
!3786 = !{!3787, !3788}
!3787 = !DILocalVariable(name: "user_context", arg: 1, scope: !3785, file: !6, line: 609, type: !13)
!3788 = !DILocalVariable(name: "buf", arg: 2, scope: !3785, file: !6, line: 609, type: !40)
!3789 = !DILocation(line: 0, scope: !3785)
!3790 = !DILocation(line: 0, scope: !615, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 610, column: 5, scope: !3785)
!3792 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !3791)
!3793 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !3791)
!3794 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !3791)
!3795 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !3791)
!3796 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !3791)
!3797 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !3791)
!3798 = !DILocation(line: 0, scope: !629, inlinedAt: !3791)
!3799 = !DILocation(line: 0, scope: !632, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 611, column: 9, scope: !3785)
!3801 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3800)
!3802 = !DILocation(line: 0, scope: !912, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 611, column: 70, scope: !3785)
!3804 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3803)
!3805 = !DILocation(line: 0, scope: !632, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 612, column: 9, scope: !3785)
!3807 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3806)
!3808 = !DILocation(line: 0, scope: !922, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 612, column: 21, scope: !3785)
!3810 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3809)
!3811 = !DILocation(line: 0, scope: !632, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 612, column: 29, scope: !3785)
!3813 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3812)
!3814 = !DILocation(line: 0, scope: !641, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 610, column: 5, scope: !3785)
!3816 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !3815)
!3817 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3815)
!3818 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3815)
!3819 = !DILocation(line: 0, scope: !655, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3815)
!3821 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3820)
!3822 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3820)
!3823 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3820)
!3824 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3815)
!3825 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3815)
!3826 = !DILocation(line: 614, column: 5, scope: !3785)
!3827 = distinct !DISubprogram(name: "halide_hexagon_dma_device_and_host_malloc", scope: !6, file: !6, line: 663, type: !163, scopeLine: 663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3828)
!3828 = !{!3829, !3830}
!3829 = !DILocalVariable(name: "user_context", arg: 1, scope: !3827, file: !6, line: 663, type: !13)
!3830 = !DILocalVariable(name: "buf", arg: 2, scope: !3827, file: !6, line: 663, type: !40)
!3831 = !DILocation(line: 0, scope: !3827)
!3832 = !DILocation(line: 0, scope: !615, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 664, column: 5, scope: !3827)
!3834 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !3833)
!3835 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !3833)
!3836 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !3833)
!3837 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !3833)
!3838 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !3833)
!3839 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !3833)
!3840 = !DILocation(line: 0, scope: !629, inlinedAt: !3833)
!3841 = !DILocation(line: 0, scope: !632, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 665, column: 9, scope: !3827)
!3843 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3842)
!3844 = !DILocation(line: 0, scope: !912, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 665, column: 81, scope: !3827)
!3846 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3845)
!3847 = !DILocation(line: 0, scope: !632, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 666, column: 9, scope: !3827)
!3849 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3848)
!3850 = !DILocation(line: 0, scope: !922, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 666, column: 21, scope: !3827)
!3852 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3851)
!3853 = !DILocation(line: 0, scope: !632, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 666, column: 29, scope: !3827)
!3855 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3854)
!3856 = !DILocation(line: 0, scope: !641, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 664, column: 5, scope: !3827)
!3858 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !3857)
!3859 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3857)
!3860 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3857)
!3861 = !DILocation(line: 0, scope: !655, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3857)
!3863 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3862)
!3864 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3862)
!3865 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3862)
!3866 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3857)
!3867 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3857)
!3868 = !DILocation(line: 668, column: 12, scope: !3827)
!3869 = !DILocation(line: 668, column: 5, scope: !3827)
!3870 = !DISubprogram(name: "halide_default_device_and_host_malloc", scope: !202, file: !202, line: 41, type: !37, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!3871 = distinct !DISubprogram(name: "halide_hexagon_dma_device_and_host_free", scope: !6, file: !6, line: 671, type: !163, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3872)
!3872 = !{!3873, !3874}
!3873 = !DILocalVariable(name: "user_context", arg: 1, scope: !3871, file: !6, line: 671, type: !13)
!3874 = !DILocalVariable(name: "buf", arg: 2, scope: !3871, file: !6, line: 671, type: !40)
!3875 = !DILocation(line: 0, scope: !3871)
!3876 = !DILocation(line: 0, scope: !615, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 672, column: 5, scope: !3871)
!3878 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !3877)
!3879 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !3877)
!3880 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !3877)
!3881 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !3877)
!3882 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !3877)
!3883 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !3877)
!3884 = !DILocation(line: 0, scope: !629, inlinedAt: !3877)
!3885 = !DILocation(line: 0, scope: !632, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 673, column: 9, scope: !3871)
!3887 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3886)
!3888 = !DILocation(line: 0, scope: !912, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 673, column: 79, scope: !3871)
!3890 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3889)
!3891 = !DILocation(line: 0, scope: !632, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 674, column: 9, scope: !3871)
!3893 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3892)
!3894 = !DILocation(line: 0, scope: !922, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 674, column: 21, scope: !3871)
!3896 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3895)
!3897 = !DILocation(line: 0, scope: !632, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 674, column: 29, scope: !3871)
!3899 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3898)
!3900 = !DILocation(line: 0, scope: !641, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 672, column: 5, scope: !3871)
!3902 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !3901)
!3903 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3901)
!3904 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3901)
!3905 = !DILocation(line: 0, scope: !655, inlinedAt: !3906)
!3906 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3901)
!3907 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3906)
!3908 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3906)
!3909 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3906)
!3910 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3901)
!3911 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3901)
!3912 = !DILocation(line: 676, column: 12, scope: !3871)
!3913 = !DILocation(line: 676, column: 5, scope: !3871)
!3914 = !DISubprogram(name: "halide_default_device_and_host_free", scope: !202, file: !202, line: 43, type: !37, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!3915 = distinct !DISubprogram(name: "halide_hexagon_dma_device_interface", scope: !6, file: !6, line: 679, type: !3916, scopeLine: 679, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !596)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!45}
!3918 = !DILocation(line: 680, column: 5, scope: !3915)
!3919 = distinct !DISubprogram(name: "halide_hexagon_dma_device_release", scope: !6, file: !6, line: 683, type: !214, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3920)
!3920 = !{!3921}
!3921 = !DILocalVariable(name: "user_context", arg: 1, scope: !3919, file: !6, line: 683, type: !13)
!3922 = !DILocation(line: 0, scope: !3919)
!3923 = !DILocation(line: 0, scope: !615, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 684, column: 5, scope: !3919)
!3925 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !3924)
!3926 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !3924)
!3927 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !3924)
!3928 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !3924)
!3929 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !3924)
!3930 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !3924)
!3931 = !DILocation(line: 0, scope: !629, inlinedAt: !3924)
!3932 = !DILocation(line: 0, scope: !632, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 685, column: 9, scope: !3919)
!3934 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3933)
!3935 = !DILocation(line: 0, scope: !912, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 685, column: 73, scope: !3919)
!3937 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3936)
!3938 = !DILocation(line: 0, scope: !632, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 685, column: 89, scope: !3919)
!3940 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3939)
!3941 = !DILocation(line: 0, scope: !641, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 684, column: 5, scope: !3919)
!3943 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !3942)
!3944 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3942)
!3945 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3942)
!3946 = !DILocation(line: 0, scope: !655, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3942)
!3948 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3947)
!3949 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3947)
!3950 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3947)
!3951 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3942)
!3952 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3942)
!3953 = !DILocation(line: 687, column: 5, scope: !3919)
!3954 = distinct !DISubprogram(name: "halide_hexagon_dma_power_mode_voting", scope: !6, file: !6, line: 690, type: !3955, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3958)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!39, !13, !3957}
!3957 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_hexagon_power_mode_t", file: !316, line: 80, baseType: !315)
!3958 = !{!3959, !3960}
!3959 = !DILocalVariable(name: "user_context", arg: 1, scope: !3954, file: !6, line: 690, type: !13)
!3960 = !DILocalVariable(name: "cornercase", arg: 2, scope: !3954, file: !6, line: 690, type: !3957)
!3961 = !DILocation(line: 0, scope: !3954)
!3962 = !DILocation(line: 0, scope: !615, inlinedAt: !3963)
!3963 = distinct !DILocation(line: 691, column: 5, scope: !3954)
!3964 = !DILocation(line: 44, column: 27, scope: !624, inlinedAt: !3963)
!3965 = !DILocation(line: 48, column: 13, scope: !629, inlinedAt: !3963)
!3966 = !DILocation(line: 48, column: 13, scope: !627, inlinedAt: !3963)
!3967 = !DILocation(line: 49, column: 23, scope: !651, inlinedAt: !3963)
!3968 = !DILocation(line: 50, column: 18, scope: !651, inlinedAt: !3963)
!3969 = !DILocation(line: 51, column: 9, scope: !651, inlinedAt: !3963)
!3970 = !DILocation(line: 0, scope: !629, inlinedAt: !3963)
!3971 = !DILocation(line: 0, scope: !632, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 692, column: 9, scope: !3954)
!3973 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3972)
!3974 = !DILocation(line: 0, scope: !912, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 692, column: 71, scope: !3954)
!3976 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3975)
!3977 = !DILocation(line: 0, scope: !632, inlinedAt: !3978)
!3978 = distinct !DILocation(line: 692, column: 87, scope: !3954)
!3979 = !DILocation(line: 62, column: 19, scope: !638, inlinedAt: !3978)
!3980 = !DILocation(line: 0, scope: !641, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 691, column: 5, scope: !3954)
!3982 = !DILocation(line: 167, column: 13, scope: !648, inlinedAt: !3981)
!3983 = !DILocation(line: 168, column: 13, scope: !646, inlinedAt: !3981)
!3984 = !DILocation(line: 169, column: 9, scope: !646, inlinedAt: !3981)
!3985 = !DILocation(line: 0, scope: !655, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 170, column: 13, scope: !659, inlinedAt: !3981)
!3987 = !DILocation(line: 163, column: 81, scope: !655, inlinedAt: !3986)
!3988 = !DILocation(line: 163, column: 87, scope: !655, inlinedAt: !3986)
!3989 = !DILocation(line: 163, column: 15, scope: !655, inlinedAt: !3986)
!3990 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3981)
!3991 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3981)
!3992 = !DILocation(line: 693, column: 5, scope: !3954)
!3993 = !DILocation(line: 695, column: 16, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3954, file: !6, line: 693, column: 25)
!3995 = !DILocation(line: 695, column: 9, scope: !3994)
!3996 = !DILocation(line: 697, column: 16, scope: !3994)
!3997 = !DILocation(line: 697, column: 9, scope: !3994)
!3998 = !DILocation(line: 699, column: 16, scope: !3994)
!3999 = !DILocation(line: 699, column: 9, scope: !3994)
!4000 = !DILocation(line: 701, column: 16, scope: !3994)
!4001 = !DILocation(line: 701, column: 9, scope: !3994)
!4002 = !DILocation(line: 703, column: 16, scope: !3994)
!4003 = !DILocation(line: 703, column: 9, scope: !3994)
!4004 = !DILocation(line: 705, column: 16, scope: !3994)
!4005 = !DILocation(line: 705, column: 9, scope: !3994)
!4006 = !DILocation(line: 707, column: 16, scope: !3994)
!4007 = !DILocation(line: 707, column: 9, scope: !3994)
!4008 = !DILocation(line: 0, scope: !1052, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 709, column: 9, scope: !3994)
!4010 = !DILocation(line: 44, column: 27, scope: !1061, inlinedAt: !4009)
!4011 = !DILocation(line: 48, column: 13, scope: !1066, inlinedAt: !4009)
!4012 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !4009)
!4013 = !DILocation(line: 49, column: 23, scope: !1088, inlinedAt: !4009)
!4014 = !DILocation(line: 50, column: 18, scope: !1088, inlinedAt: !4009)
!4015 = !DILocation(line: 51, column: 9, scope: !1088, inlinedAt: !4009)
!4016 = !DILocation(line: 0, scope: !1066, inlinedAt: !4009)
!4017 = !DILocation(line: 0, scope: !1069, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 709, column: 29, scope: !3994)
!4019 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !4018)
!4020 = !DILocation(line: 0, scope: !1843, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 709, column: 88, scope: !3994)
!4022 = !DILocation(line: 73, column: 48, scope: !1843, inlinedAt: !4021)
!4023 = !DILocation(line: 73, column: 15, scope: !1843, inlinedAt: !4021)
!4024 = !DILocation(line: 0, scope: !1069, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 709, column: 102, scope: !3994)
!4026 = !DILocation(line: 62, column: 19, scope: !1075, inlinedAt: !4025)
!4027 = !DILocation(line: 0, scope: !1078, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 709, column: 9, scope: !3994)
!4029 = !DILocation(line: 167, column: 13, scope: !1085, inlinedAt: !4028)
!4030 = !DILocation(line: 168, column: 13, scope: !1083, inlinedAt: !4028)
!4031 = !DILocation(line: 169, column: 9, scope: !1083, inlinedAt: !4028)
!4032 = !DILocation(line: 0, scope: !1091, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 170, column: 13, scope: !1095, inlinedAt: !4028)
!4034 = !DILocation(line: 163, column: 81, scope: !1091, inlinedAt: !4033)
!4035 = !DILocation(line: 163, column: 87, scope: !1091, inlinedAt: !4033)
!4036 = !DILocation(line: 163, column: 15, scope: !1091, inlinedAt: !4033)
!4037 = !DILocation(line: 172, column: 17, scope: !1100, inlinedAt: !4028)
!4038 = !DILocation(line: 181, column: 13, scope: !1103, inlinedAt: !4028)
!4039 = !DILocation(line: 710, column: 9, scope: !3994)
!4040 = !DILocation(line: 0, scope: !3994)
!4041 = !DILocation(line: 712, column: 1, scope: !3954)
!4042 = !DISubprogram(name: "nDmaWrapper_PowerVoting", scope: !282, file: !282, line: 347, type: !4043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!39, !93}
!4045 = !DISubprogram(name: "HAP_cache_unlock", scope: !282, file: !282, line: 163, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4046 = !DISubprogram(name: "halide_mutex_lock", scope: !21, file: !21, line: 133, type: !4047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{null, !1622}
!4049 = !DISubprogram(name: "halide_mutex_unlock", scope: !21, file: !21, line: 134, type: !4047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4050 = !DISubprogram(name: "nDmaWrapper_GetRecommendedWalkSize", scope: !282, file: !282, line: 249, type: !4051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!39, !281, !15, !4053}
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!4054 = !DISubprogram(name: "nDmaWrapper_GetRecommendedIntermBufStride", scope: !282, file: !282, line: 280, type: !4055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!39, !281, !4053, !15}
!4057 = !DISubprogram(name: "halide_hexagon_allocate_from_dma_pool", scope: !1558, file: !1558, line: 16, type: !4058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!13, !13, !13}
!4060 = !DISubprogram(name: "nDmaWrapper_DmaTransferSetup", scope: !282, file: !282, line: 326, type: !4061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!39, !13, !4063}
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!4064 = !DISubprogram(name: "nDmaWrapper_Move", scope: !282, file: !282, line: 204, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4065 = !DISubprogram(name: "nDmaWrapper_Wait", scope: !282, file: !282, line: 218, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4066 = !DISubprogram(name: "halide_hexagon_free_to_dma_pool", scope: !1558, file: !1558, line: 18, type: !4067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!39, !13, !13, !13}
!4069 = !DISubprogram(name: "halide_uint64_to_string", scope: !26, file: !26, line: 123, type: !4070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!343, !343, !343, !28, !39}
!4072 = !DISubprogram(name: "malloc", scope: !26, file: !26, line: 87, type: !4073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!13, !146}
!4075 = !DISubprogram(name: "HAP_cache_lock", scope: !282, file: !282, line: 154, type: !4076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!13, !93, !1434}
!4078 = !DISubprogram(name: "halide_pointer_to_string", scope: !26, file: !26, line: 124, type: !4079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!343, !343, !343, !386}
!4081 = !DISubprogram(name: "halide_error", scope: !21, file: !21, line: 111, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4082 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !21, file: !21, line: 973, type: !4083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!39, !13, !386, !28}
!4085 = !DISubprogram(name: "halide_string_to_string", scope: !26, file: !26, line: 120, type: !4086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!343, !343, !343, !359}
!4088 = !DISubprogram(name: "halide_int64_to_string", scope: !26, file: !26, line: 122, type: !4089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!343, !343, !343, !365, !39}
!4091 = !DISubprogram(name: "halide_buffer_to_string", scope: !26, file: !26, line: 125, type: !4092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !596)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!343, !343, !343, !182}
