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
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle" = type { i8*, i16, i16, i16, i16, i8*, i32, i32, i32, i8, i8, i32 }
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }
%struct.stDmaWrapper_RoiAlignInfo = type { i16, i16 }
%struct.stDmaWrapper_DmaTransferSetup = type { i16, i16, i16, i16, i16, i16, i16, i16, i8*, i8*, i8*, i16, i16, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"copy_memory: no copy needed as pointers are the same.\0A\00", align 1
@_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* null, align 4, !dbg !0
@_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE = weak dso_local global %struct.halide_mutex zeroinitializer, align 4, !dbg !18
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
@_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE = weak dso_local global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* null, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal10HexagonDma33hexagon_dma_device_interface_implE }, align 4, !dbg !31
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
@_ZN6Halide7Runtime8Internal10HexagonDma33hexagon_dma_device_interface_implE = weak dso_local global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_sync, i32 (i8*)* @halide_hexagon_dma_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_hexagon_dma_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_hexagon_dma_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_hexagon_dma_device_detach_native }, align 4, !dbg !228
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
define weak dso_local void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !515 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !534, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %1, metadata !535, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i64 %2, metadata !536, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i64 %3, metadata !537, metadata !DIExpression()), !dbg !545
  %5 = icmp sgt i32 %1, -1, !dbg !546
  br i1 %5, label %6, label %14, !dbg !547

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !535, metadata !DIExpression()), !dbg !545
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7, !dbg !548
  %9 = load i64, i64* %8, align 8, !dbg !548, !tbaa !549
  %10 = icmp eq i64 %9, 1, !dbg !553
  br i1 %10, label %11, label %14, !dbg !554

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1, !dbg !555
  call void @llvm.dbg.value(metadata i32 %12, metadata !535, metadata !DIExpression()), !dbg !545
  %13 = icmp sgt i32 %7, 0, !dbg !546
  br i1 %13, label %6, label %25, !dbg !547, !llvm.loop !557

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1, !dbg !560
  br i1 %16, label %25, label %17, !dbg !561

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 0, metadata !542, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 %2, metadata !536, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i64 %3, metadata !537, metadata !DIExpression()), !dbg !545
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15, !dbg !563
  %19 = load i64, i64* %18, align 8, !dbg !563, !tbaa !549
  %20 = icmp eq i64 %19, 0, !dbg !565
  br i1 %20, label %51, label %21, !dbg !566

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %40, !dbg !566

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !567
  %27 = load i64, i64* %26, align 8, !dbg !567, !tbaa !568
  %28 = add i64 %27, %2, !dbg !570
  %29 = trunc i64 %28 to i32, !dbg !571
  %30 = inttoptr i32 %29 to i8*, !dbg !571
  call void @llvm.dbg.value(metadata i8* %30, metadata !538, metadata !DIExpression()), !dbg !572
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !573
  %32 = load i64, i64* %31, align 8, !dbg !573, !tbaa !574
  %33 = add i64 %32, %3, !dbg !575
  %34 = trunc i64 %33 to i32, !dbg !576
  %35 = inttoptr i32 %34 to i8*, !dbg !576
  call void @llvm.dbg.value(metadata i8* %35, metadata !541, metadata !DIExpression()), !dbg !572
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6, !dbg !577
  %37 = load i64, i64* %36, align 8, !dbg !577, !tbaa !578
  %38 = trunc i64 %37 to i32, !dbg !579
  %39 = tail call i8* @memcpy(i8* %35, i8* %30, i32 %38) #8, !dbg !580
  br label %51, !dbg !581

40:                                               ; preds = %21, %40
  %41 = phi i64 [ 0, %21 ], [ %48, %40 ]
  %42 = phi i64 [ %2, %21 ], [ %45, %40 ]
  %43 = phi i64 [ %3, %21 ], [ %47, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !542, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 %42, metadata !536, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i64 %43, metadata !537, metadata !DIExpression()), !dbg !545
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %42, i64 %43) #9, !dbg !582
  %44 = load i64, i64* %23, align 8, !dbg !584, !tbaa !549
  %45 = add i64 %44, %42, !dbg !585
  call void @llvm.dbg.value(metadata i64 %45, metadata !536, metadata !DIExpression()), !dbg !545
  %46 = load i64, i64* %24, align 8, !dbg !586, !tbaa !549
  %47 = add i64 %46, %43, !dbg !587
  call void @llvm.dbg.value(metadata i64 %47, metadata !537, metadata !DIExpression()), !dbg !545
  %48 = add nuw i64 %41, 1, !dbg !588
  call void @llvm.dbg.value(metadata i64 %48, metadata !542, metadata !DIExpression()), !dbg !562
  %49 = load i64, i64* %18, align 8, !dbg !563, !tbaa !549
  %50 = icmp ult i64 %48, %49, !dbg !565
  br i1 %50, label %40, label %51, !dbg !566, !llvm.loop !589

51:                                               ; preds = %40, %17, %25
  ret void, !dbg !591
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !592 dso_local i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #4 !dbg !596 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !600, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i8* %1, metadata !601, metadata !DIExpression()), !dbg !602
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !603
  %4 = load i64, i64* %3, align 8, !dbg !603, !tbaa !568
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !605
  %6 = load i64, i64* %5, align 8, !dbg !605, !tbaa !574
  %7 = icmp eq i64 %4, %6, !dbg !606
  br i1 %7, label %11, label %8, !dbg !607

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 2, !dbg !608
  %10 = load i64, i64* %9, align 8, !dbg !608, !tbaa !610
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #9, !dbg !611
  br label %26, !dbg !612

11:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !619
  call void @llvm.dbg.value(metadata i8* %1, metadata !616, metadata !DIExpression()) #10, !dbg !619
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !619
  %12 = tail call i8* @malloc(i32 1024) #8, !dbg !622
  %13 = icmp eq i8* %12, null, !dbg !627
  br i1 %13, label %14, label %16, !dbg !629

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !634
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !634
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0)) #8, !dbg !636
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !642
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !644
  br label %25, !dbg !648

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i32 1023, !dbg !649
  store i8 0, i8* %17, align 1, !dbg !651, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !634
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !634
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0)) #8, !dbg !636
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !642
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !656
  %19 = ptrtoint i8* %18 to i32, !dbg !659
  %20 = ptrtoint i8* %12 to i32, !dbg !659
  %21 = add i32 %19, 1, !dbg !659
  %22 = sub i32 %21, %20, !dbg !660
  %23 = sext i32 %22 to i64, !dbg !661
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %12, i64 %23) #8, !dbg !662
  tail call void @halide_print(i8* %1, i8* nonnull %12) #8, !dbg !663
  br label %25

25:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #8, !dbg !667
  br label %26

26:                                               ; preds = %25, %8
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
  br i1 %2, label %8, label %13, !dbg !706

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !707
  %10 = load i8*, i8** %9, align 4, !dbg !707, !tbaa !708
  %11 = ptrtoint i8* %10 to i32, !dbg !715
  %12 = zext i32 %11 to i64, !dbg !715
  br label %16, !dbg !706

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !716
  %15 = load i64, i64* %14, align 8, !dbg !716, !tbaa !717
  br label %16, !dbg !706

16:                                               ; preds = %13, %8
  %17 = phi i64 [ %12, %8 ], [ %15, %13 ], !dbg !706
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 0, !dbg !718
  store i64 %17, i64* %18, align 8, !dbg !719, !tbaa !568
  br i1 %4, label %19, label %24, !dbg !720

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 2, !dbg !721
  %21 = load i8*, i8** %20, align 4, !dbg !721, !tbaa !708
  %22 = ptrtoint i8* %21 to i32, !dbg !722
  %23 = zext i32 %22 to i64, !dbg !722
  br label %27, !dbg !720

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0, !dbg !723
  %26 = load i64, i64* %25, align 8, !dbg !723, !tbaa !717
  br label %27, !dbg !720

27:                                               ; preds = %24, %19
  %28 = phi i64 [ %23, %19 ], [ %26, %24 ], !dbg !720
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 1, !dbg !724
  store i64 %28, i64* %29, align 8, !dbg !725, !tbaa !574
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !730
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !732
  %31 = load i8, i8* %30, align 1, !dbg !732, !tbaa !733
  %32 = zext i8 %31 to i32, !dbg !732
  %33 = add nuw nsw i32 %32, 7, !dbg !734
  %34 = lshr i32 %33, 3, !dbg !735
  %35 = zext i32 %34 to i64, !dbg !736
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 6, !dbg !737
  store i64 %35, i64* %36, align 8, !dbg !738, !tbaa !578
  call void @llvm.dbg.value(metadata i32 0, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 0, metadata !681, metadata !DIExpression()), !dbg !739
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 0, !dbg !740
  store i64 1, i64* %37, align 8, !dbg !743, !tbaa !549
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 0, !dbg !744
  store i64 0, i64* %38, align 8, !dbg !745, !tbaa !549
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 0, !dbg !746
  store i64 0, i64* %39, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 1, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 1, metadata !681, metadata !DIExpression()), !dbg !739
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 1, !dbg !740
  store i64 1, i64* %40, align 8, !dbg !743, !tbaa !549
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 1, !dbg !744
  store i64 0, i64* %41, align 8, !dbg !745, !tbaa !549
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 1, !dbg !746
  store i64 0, i64* %42, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 2, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 2, metadata !681, metadata !DIExpression()), !dbg !739
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 2, !dbg !740
  store i64 1, i64* %43, align 8, !dbg !743, !tbaa !549
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 2, !dbg !744
  store i64 0, i64* %44, align 8, !dbg !745, !tbaa !549
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 2, !dbg !746
  store i64 0, i64* %45, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 3, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 3, metadata !681, metadata !DIExpression()), !dbg !739
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 3, !dbg !740
  store i64 1, i64* %46, align 8, !dbg !743, !tbaa !549
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 3, !dbg !744
  store i64 0, i64* %47, align 8, !dbg !745, !tbaa !549
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 3, !dbg !746
  store i64 0, i64* %48, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 4, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 4, metadata !681, metadata !DIExpression()), !dbg !739
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 4, !dbg !740
  store i64 1, i64* %49, align 8, !dbg !743, !tbaa !549
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 4, !dbg !744
  store i64 0, i64* %50, align 8, !dbg !745, !tbaa !549
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 4, !dbg !746
  store i64 0, i64* %51, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 5, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 5, metadata !681, metadata !DIExpression()), !dbg !739
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 5, !dbg !740
  store i64 1, i64* %52, align 8, !dbg !743, !tbaa !549
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 5, !dbg !744
  store i64 0, i64* %53, align 8, !dbg !745, !tbaa !549
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 5, !dbg !746
  store i64 0, i64* %54, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 6, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 6, metadata !681, metadata !DIExpression()), !dbg !739
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 6, !dbg !740
  store i64 1, i64* %55, align 8, !dbg !743, !tbaa !549
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 6, !dbg !744
  store i64 0, i64* %56, align 8, !dbg !745, !tbaa !549
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 6, !dbg !746
  store i64 0, i64* %57, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 7, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 7, metadata !681, metadata !DIExpression()), !dbg !739
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 7, !dbg !740
  store i64 1, i64* %58, align 8, !dbg !743, !tbaa !549
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 7, !dbg !744
  store i64 0, i64* %59, align 8, !dbg !745, !tbaa !549
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 7, !dbg !746
  store i64 0, i64* %60, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 8, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 8, metadata !681, metadata !DIExpression()), !dbg !739
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 8, !dbg !740
  store i64 1, i64* %61, align 8, !dbg !743, !tbaa !549
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 8, !dbg !744
  store i64 0, i64* %62, align 8, !dbg !745, !tbaa !549
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 8, !dbg !746
  store i64 0, i64* %63, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 9, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 9, metadata !681, metadata !DIExpression()), !dbg !739
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 9, !dbg !740
  store i64 1, i64* %64, align 8, !dbg !743, !tbaa !549
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 9, !dbg !744
  store i64 0, i64* %65, align 8, !dbg !745, !tbaa !549
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 9, !dbg !746
  store i64 0, i64* %66, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 10, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 10, metadata !681, metadata !DIExpression()), !dbg !739
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 10, !dbg !740
  store i64 1, i64* %67, align 8, !dbg !743, !tbaa !549
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 10, !dbg !744
  store i64 0, i64* %68, align 8, !dbg !745, !tbaa !549
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 10, !dbg !746
  store i64 0, i64* %69, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 11, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 11, metadata !681, metadata !DIExpression()), !dbg !739
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 11, !dbg !740
  store i64 1, i64* %70, align 8, !dbg !743, !tbaa !549
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 11, !dbg !744
  store i64 0, i64* %71, align 8, !dbg !745, !tbaa !549
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 11, !dbg !746
  store i64 0, i64* %72, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 12, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 12, metadata !681, metadata !DIExpression()), !dbg !739
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 12, !dbg !740
  store i64 1, i64* %73, align 8, !dbg !743, !tbaa !549
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 12, !dbg !744
  store i64 0, i64* %74, align 8, !dbg !745, !tbaa !549
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 12, !dbg !746
  store i64 0, i64* %75, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 13, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 13, metadata !681, metadata !DIExpression()), !dbg !739
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 13, !dbg !740
  store i64 1, i64* %76, align 8, !dbg !743, !tbaa !549
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 13, !dbg !744
  store i64 0, i64* %77, align 8, !dbg !745, !tbaa !549
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 13, !dbg !746
  store i64 0, i64* %78, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 14, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 14, metadata !681, metadata !DIExpression()), !dbg !739
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 14, !dbg !740
  store i64 1, i64* %79, align 8, !dbg !743, !tbaa !549
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 14, !dbg !744
  store i64 0, i64* %80, align 8, !dbg !745, !tbaa !549
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 14, !dbg !746
  store i64 0, i64* %81, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 15, metadata !681, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 15, metadata !681, metadata !DIExpression()), !dbg !739
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 15, !dbg !740
  store i64 1, i64* %82, align 8, !dbg !743, !tbaa !549
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 15, !dbg !744
  store i64 0, i64* %83, align 8, !dbg !745, !tbaa !549
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 15, !dbg !746
  store i64 0, i64* %84, align 8, !dbg !747, !tbaa !549
  call void @llvm.dbg.value(metadata i32 16, metadata !681, metadata !DIExpression()), !dbg !739
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 2, !dbg !748
  call void @llvm.dbg.value(metadata i32 0, metadata !683, metadata !DIExpression()), !dbg !749
  %86 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !750
  %87 = load i32, i32* %86, align 4, !dbg !750, !tbaa !752
  %88 = icmp sgt i32 %87, 0, !dbg !753
  br i1 %88, label %89, label %94, !dbg !754

89:                                               ; preds = %27
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !755
  %92 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %93 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %92, align 8, !tbaa !755
  br label %101, !dbg !754

94:                                               ; preds = %101, %27
  %95 = phi i64 [ 0, %27 ], [ %114, %101 ], !dbg !756
  %96 = load i64, i64* %36, align 8, !dbg !757, !tbaa !578
  %97 = mul i64 %95, %96, !dbg !756
  store i64 %97, i64* %85, align 8, !dbg !756, !tbaa !610
  %98 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5, !dbg !758
  %99 = load i32, i32* %98, align 4, !dbg !758, !tbaa !752
  %100 = icmp eq i32 %87, %99, !dbg !759
  br i1 %100, label %117, label %126, !dbg !760

101:                                              ; preds = %89, %101
  %102 = phi i64 [ 0, %89 ], [ %114, %101 ], !dbg !749
  %103 = phi i32 [ 0, %89 ], [ %115, %101 ]
  call void @llvm.dbg.value(metadata i32 %103, metadata !683, metadata !DIExpression()), !dbg !749
  %104 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 2, !dbg !761
  %105 = load i32, i32* %104, align 4, !dbg !761, !tbaa !763
  %106 = sext i32 %105 to i64, !dbg !765
  %107 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %93, i32 %103, i32 0, !dbg !766
  %108 = load i32, i32* %107, align 4, !dbg !766, !tbaa !767
  %109 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 0, !dbg !768
  %110 = load i32, i32* %109, align 4, !dbg !768, !tbaa !767
  %111 = sub nsw i32 %108, %110, !dbg !769
  %112 = sext i32 %111 to i64, !dbg !770
  %113 = mul nsw i64 %112, %106, !dbg !771
  %114 = add i64 %113, %102, !dbg !772
  %115 = add nuw nsw i32 %103, 1, !dbg !773
  call void @llvm.dbg.value(metadata i32 %115, metadata !683, metadata !DIExpression()), !dbg !749
  %116 = icmp slt i32 %115, %87, !dbg !753
  br i1 %116, label %101, label %94, !dbg !754, !llvm.loop !774

117:                                              ; preds = %94
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !776
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !778
  %118 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1, !dbg !780
  %119 = load i8, i8* %118, align 1, !dbg !780, !tbaa !733
  %120 = zext i8 %119 to i32, !dbg !780
  %121 = add nuw nsw i32 %120, 7, !dbg !781
  %122 = lshr i32 %121, 3, !dbg !782
  %123 = icmp ne i32 %34, %122, !dbg !783
  %124 = icmp sgt i32 %87, 16
  %125 = or i1 %124, %123, !dbg !784
  br i1 %125, label %126, label %128, !dbg !784

126:                                              ; preds = %117, %94
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !685, metadata !DIExpression()), !dbg !785
  %127 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !785
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %127, i8 0, i32 416, i1 false), !dbg !785
  br label %245, !dbg !786

128:                                              ; preds = %117
  %129 = icmp eq i64 %96, 0, !dbg !787
  br i1 %129, label %136, label %130, !dbg !788

130:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i32 0, metadata !691, metadata !DIExpression()), !dbg !789
  br i1 %88, label %131, label %243, !dbg !790

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %133 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %132, align 8, !tbaa !755
  %134 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %135 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %134, align 8, !tbaa !755
  br label %144, !dbg !790

136:                                              ; preds = %128
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !688, metadata !DIExpression()), !dbg !791
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !791
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i32 416, i1 false), !dbg !791
  br label %245, !dbg !792

138:                                              ; preds = %168
  %139 = load i64, i64* %36, align 8, !dbg !793, !tbaa !578
  %140 = load i64, i64* %38, align 8, !dbg !794, !tbaa !549
  %141 = icmp eq i64 %139, %140, !dbg !795
  br i1 %141, label %142, label %243, !dbg !796

142:                                              ; preds = %138
  %143 = load i64, i64* %39, align 8, !dbg !797, !tbaa !549
  br label %190, !dbg !796

144:                                              ; preds = %131, %168
  %145 = phi i32 [ 0, %131 ], [ %175, %168 ]
  call void @llvm.dbg.value(metadata i32 %145, metadata !691, metadata !DIExpression()), !dbg !789
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 2, !dbg !798
  %147 = load i32, i32* %146, align 4, !dbg !798, !tbaa !763
  %148 = sext i32 %147 to i64, !dbg !799
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !800
  %149 = mul nsw i64 %148, %35, !dbg !802
  call void @llvm.dbg.value(metadata i64 %149, metadata !693, metadata !DIExpression()), !dbg !803
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %135, i32 %145, i32 2, !dbg !804
  %151 = load i32, i32* %150, align 4, !dbg !804, !tbaa !763
  %152 = sext i32 %151 to i64, !dbg !805
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !806
  %153 = mul nsw i64 %152, %35, !dbg !808
  call void @llvm.dbg.value(metadata i64 %153, metadata !696, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i32 0, metadata !697, metadata !DIExpression()), !dbg !803
  %154 = icmp eq i32 %145, 0, !dbg !809
  br i1 %154, label %165, label %155, !dbg !812

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %165, label %157, !dbg !812

157:                                              ; preds = %155, %162
  %158 = phi i32 [ %163, %162 ], [ 0, %155 ]
  call void @llvm.dbg.value(metadata i32 %158, metadata !697, metadata !DIExpression()), !dbg !803
  %159 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %158, !dbg !813
  %160 = load i64, i64* %159, align 8, !dbg !813, !tbaa !549
  %161 = icmp ult i64 %149, %160, !dbg !816
  br i1 %161, label %165, label %162, !dbg !817

162:                                              ; preds = %157
  %163 = add nuw nsw i32 %158, 1, !dbg !818
  call void @llvm.dbg.value(metadata i32 %163, metadata !697, metadata !DIExpression()), !dbg !803
  %164 = icmp ult i32 %163, %145, !dbg !809
  br i1 %164, label %157, label %165, !dbg !812, !llvm.loop !819

165:                                              ; preds = %162, %157, %155, %144
  %166 = phi i32 [ 0, %144 ], [ %145, %155 ], [ %158, %157 ], [ %145, %162 ], !dbg !821
  call void @llvm.dbg.value(metadata i32 %145, metadata !698, metadata !DIExpression()), !dbg !822
  %167 = icmp ugt i32 %145, %166, !dbg !823
  br i1 %167, label %177, label %168, !dbg !825

168:                                              ; preds = %177, %165
  %169 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 1, !dbg !826
  %170 = load i32, i32* %169, align 4, !dbg !826, !tbaa !827
  %171 = sext i32 %170 to i64, !dbg !828
  %172 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %166, !dbg !829
  store i64 %171, i64* %172, align 8, !dbg !830, !tbaa !549
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %166, !dbg !831
  store i64 %149, i64* %173, align 8, !dbg !832, !tbaa !549
  %174 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %166, !dbg !833
  store i64 %153, i64* %174, align 8, !dbg !834, !tbaa !549
  %175 = add nuw nsw i32 %145, 1, !dbg !835
  call void @llvm.dbg.value(metadata i32 %175, metadata !691, metadata !DIExpression()), !dbg !789
  %176 = icmp slt i32 %175, %87, !dbg !836
  br i1 %176, label %144, label %138, !dbg !790, !llvm.loop !837

177:                                              ; preds = %165, %177
  %178 = phi i32 [ %179, %177 ], [ %145, %165 ]
  call void @llvm.dbg.value(metadata i32 %178, metadata !698, metadata !DIExpression()), !dbg !822
  %179 = add nsw i32 %178, -1, !dbg !839
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %179, !dbg !841
  %181 = load i64, i64* %180, align 8, !dbg !841, !tbaa !549
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %178, !dbg !842
  store i64 %181, i64* %182, align 8, !dbg !843, !tbaa !549
  %183 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %179, !dbg !844
  %184 = load i64, i64* %183, align 8, !dbg !844, !tbaa !549
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %178, !dbg !845
  store i64 %184, i64* %185, align 8, !dbg !846, !tbaa !549
  %186 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %179, !dbg !847
  %187 = load i64, i64* %186, align 8, !dbg !847, !tbaa !549
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %178, !dbg !848
  store i64 %187, i64* %188, align 8, !dbg !849, !tbaa !549
  call void @llvm.dbg.value(metadata i32 %179, metadata !698, metadata !DIExpression()), !dbg !822
  %189 = icmp sgt i32 %179, %166, !dbg !823
  br i1 %189, label %177, label %168, !dbg !825, !llvm.loop !850

190:                                              ; preds = %142, %194
  %191 = phi i64 [ %143, %142 ], [ %199, %194 ], !dbg !797
  %192 = phi i64 [ %140, %142 ], [ %196, %194 ]
  %193 = icmp eq i64 %192, %191, !dbg !852
  br i1 %193, label %194, label %243, !dbg !853

194:                                              ; preds = %190
  %195 = load i64, i64* %37, align 8, !dbg !854, !tbaa !549
  %196 = mul i64 %195, %191, !dbg !855
  store i64 %196, i64* %36, align 8, !dbg !855, !tbaa !578
  call void @llvm.dbg.value(metadata i32 1, metadata !700, metadata !DIExpression()), !dbg !856
  %197 = load i64, i64* %40, align 8, !dbg !857, !tbaa !549
  store i64 %197, i64* %37, align 8, !dbg !860, !tbaa !549
  %198 = load i64, i64* %41, align 8, !dbg !861, !tbaa !549
  store i64 %198, i64* %38, align 8, !dbg !862, !tbaa !549
  %199 = load i64, i64* %42, align 8, !dbg !863, !tbaa !549
  store i64 %199, i64* %39, align 8, !dbg !864, !tbaa !549
  call void @llvm.dbg.value(metadata i32 2, metadata !700, metadata !DIExpression()), !dbg !856
  %200 = load i64, i64* %43, align 8, !dbg !857, !tbaa !549
  store i64 %200, i64* %40, align 8, !dbg !860, !tbaa !549
  %201 = load i64, i64* %44, align 8, !dbg !861, !tbaa !549
  store i64 %201, i64* %41, align 8, !dbg !862, !tbaa !549
  %202 = load i64, i64* %45, align 8, !dbg !863, !tbaa !549
  store i64 %202, i64* %42, align 8, !dbg !864, !tbaa !549
  call void @llvm.dbg.value(metadata i32 3, metadata !700, metadata !DIExpression()), !dbg !856
  %203 = load i64, i64* %46, align 8, !dbg !857, !tbaa !549
  store i64 %203, i64* %43, align 8, !dbg !860, !tbaa !549
  %204 = load i64, i64* %47, align 8, !dbg !861, !tbaa !549
  store i64 %204, i64* %44, align 8, !dbg !862, !tbaa !549
  %205 = load i64, i64* %48, align 8, !dbg !863, !tbaa !549
  store i64 %205, i64* %45, align 8, !dbg !864, !tbaa !549
  call void @llvm.dbg.value(metadata i32 4, metadata !700, metadata !DIExpression()), !dbg !856
  %206 = load i64, i64* %49, align 8, !dbg !857, !tbaa !549
  store i64 %206, i64* %46, align 8, !dbg !860, !tbaa !549
  %207 = load i64, i64* %50, align 8, !dbg !861, !tbaa !549
  store i64 %207, i64* %47, align 8, !dbg !862, !tbaa !549
  %208 = load i64, i64* %51, align 8, !dbg !863, !tbaa !549
  store i64 %208, i64* %48, align 8, !dbg !864, !tbaa !549
  call void @llvm.dbg.value(metadata i32 5, metadata !700, metadata !DIExpression()), !dbg !856
  %209 = load i64, i64* %52, align 8, !dbg !857, !tbaa !549
  store i64 %209, i64* %49, align 8, !dbg !860, !tbaa !549
  %210 = load i64, i64* %53, align 8, !dbg !861, !tbaa !549
  store i64 %210, i64* %50, align 8, !dbg !862, !tbaa !549
  %211 = load i64, i64* %54, align 8, !dbg !863, !tbaa !549
  store i64 %211, i64* %51, align 8, !dbg !864, !tbaa !549
  call void @llvm.dbg.value(metadata i32 6, metadata !700, metadata !DIExpression()), !dbg !856
  %212 = load i64, i64* %55, align 8, !dbg !857, !tbaa !549
  store i64 %212, i64* %52, align 8, !dbg !860, !tbaa !549
  %213 = load i64, i64* %56, align 8, !dbg !861, !tbaa !549
  store i64 %213, i64* %53, align 8, !dbg !862, !tbaa !549
  %214 = load i64, i64* %57, align 8, !dbg !863, !tbaa !549
  store i64 %214, i64* %54, align 8, !dbg !864, !tbaa !549
  call void @llvm.dbg.value(metadata i32 7, metadata !700, metadata !DIExpression()), !dbg !856
  %215 = load i64, i64* %58, align 8, !dbg !857, !tbaa !549
  store i64 %215, i64* %55, align 8, !dbg !860, !tbaa !549
  %216 = load i64, i64* %59, align 8, !dbg !861, !tbaa !549
  store i64 %216, i64* %56, align 8, !dbg !862, !tbaa !549
  %217 = load i64, i64* %60, align 8, !dbg !863, !tbaa !549
  store i64 %217, i64* %57, align 8, !dbg !864, !tbaa !549
  call void @llvm.dbg.value(metadata i32 8, metadata !700, metadata !DIExpression()), !dbg !856
  %218 = load i64, i64* %61, align 8, !dbg !857, !tbaa !549
  store i64 %218, i64* %58, align 8, !dbg !860, !tbaa !549
  %219 = load i64, i64* %62, align 8, !dbg !861, !tbaa !549
  store i64 %219, i64* %59, align 8, !dbg !862, !tbaa !549
  %220 = load i64, i64* %63, align 8, !dbg !863, !tbaa !549
  store i64 %220, i64* %60, align 8, !dbg !864, !tbaa !549
  call void @llvm.dbg.value(metadata i32 9, metadata !700, metadata !DIExpression()), !dbg !856
  %221 = load i64, i64* %64, align 8, !dbg !857, !tbaa !549
  store i64 %221, i64* %61, align 8, !dbg !860, !tbaa !549
  %222 = load i64, i64* %65, align 8, !dbg !861, !tbaa !549
  store i64 %222, i64* %62, align 8, !dbg !862, !tbaa !549
  %223 = load i64, i64* %66, align 8, !dbg !863, !tbaa !549
  store i64 %223, i64* %63, align 8, !dbg !864, !tbaa !549
  call void @llvm.dbg.value(metadata i32 10, metadata !700, metadata !DIExpression()), !dbg !856
  %224 = load i64, i64* %67, align 8, !dbg !857, !tbaa !549
  store i64 %224, i64* %64, align 8, !dbg !860, !tbaa !549
  %225 = load i64, i64* %68, align 8, !dbg !861, !tbaa !549
  store i64 %225, i64* %65, align 8, !dbg !862, !tbaa !549
  %226 = load i64, i64* %69, align 8, !dbg !863, !tbaa !549
  store i64 %226, i64* %66, align 8, !dbg !864, !tbaa !549
  call void @llvm.dbg.value(metadata i32 11, metadata !700, metadata !DIExpression()), !dbg !856
  %227 = load i64, i64* %70, align 8, !dbg !857, !tbaa !549
  store i64 %227, i64* %67, align 8, !dbg !860, !tbaa !549
  %228 = load i64, i64* %71, align 8, !dbg !861, !tbaa !549
  store i64 %228, i64* %68, align 8, !dbg !862, !tbaa !549
  %229 = load i64, i64* %72, align 8, !dbg !863, !tbaa !549
  store i64 %229, i64* %69, align 8, !dbg !864, !tbaa !549
  call void @llvm.dbg.value(metadata i32 12, metadata !700, metadata !DIExpression()), !dbg !856
  %230 = load i64, i64* %73, align 8, !dbg !857, !tbaa !549
  store i64 %230, i64* %70, align 8, !dbg !860, !tbaa !549
  %231 = load i64, i64* %74, align 8, !dbg !861, !tbaa !549
  store i64 %231, i64* %71, align 8, !dbg !862, !tbaa !549
  %232 = load i64, i64* %75, align 8, !dbg !863, !tbaa !549
  store i64 %232, i64* %72, align 8, !dbg !864, !tbaa !549
  call void @llvm.dbg.value(metadata i32 13, metadata !700, metadata !DIExpression()), !dbg !856
  %233 = load i64, i64* %76, align 8, !dbg !857, !tbaa !549
  store i64 %233, i64* %73, align 8, !dbg !860, !tbaa !549
  %234 = load i64, i64* %77, align 8, !dbg !861, !tbaa !549
  store i64 %234, i64* %74, align 8, !dbg !862, !tbaa !549
  %235 = load i64, i64* %78, align 8, !dbg !863, !tbaa !549
  store i64 %235, i64* %75, align 8, !dbg !864, !tbaa !549
  call void @llvm.dbg.value(metadata i32 14, metadata !700, metadata !DIExpression()), !dbg !856
  %236 = load i64, i64* %79, align 8, !dbg !857, !tbaa !549
  store i64 %236, i64* %76, align 8, !dbg !860, !tbaa !549
  %237 = load i64, i64* %80, align 8, !dbg !861, !tbaa !549
  store i64 %237, i64* %77, align 8, !dbg !862, !tbaa !549
  %238 = load i64, i64* %81, align 8, !dbg !863, !tbaa !549
  store i64 %238, i64* %78, align 8, !dbg !864, !tbaa !549
  call void @llvm.dbg.value(metadata i32 15, metadata !700, metadata !DIExpression()), !dbg !856
  %239 = load i64, i64* %82, align 8, !dbg !857, !tbaa !549
  store i64 %239, i64* %79, align 8, !dbg !860, !tbaa !549
  %240 = load i64, i64* %83, align 8, !dbg !861, !tbaa !549
  store i64 %240, i64* %80, align 8, !dbg !862, !tbaa !549
  %241 = load i64, i64* %84, align 8, !dbg !863, !tbaa !549
  store i64 %241, i64* %81, align 8, !dbg !864, !tbaa !549
  call void @llvm.dbg.value(metadata i32 16, metadata !700, metadata !DIExpression()), !dbg !856
  store i64 1, i64* %82, align 8, !dbg !865, !tbaa !549
  store i64 0, i64* %83, align 8, !dbg !866, !tbaa !549
  store i64 0, i64* %84, align 8, !dbg !867, !tbaa !549
  %242 = icmp eq i64 %196, %198, !dbg !795
  br i1 %242, label %190, label %243, !dbg !796, !llvm.loop !868

243:                                              ; preds = %190, %194, %130, %138
  %244 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !870
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %244, i8* nonnull align 8 dereferenceable(416) %7, i32 416, i1 false), !dbg !870, !tbaa.struct !871
  br label %245, !dbg !872

245:                                              ; preds = %243, %136, %126
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #10, !dbg !873
  ret void, !dbg !873
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

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
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !899
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !899
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !899
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !901
  %4 = icmp eq i8* %3, null, !dbg !902
  br i1 %4, label %7, label %5, !dbg !903

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !904
  store i8 0, i8* %6, align 1, !dbg !905, !tbaa !652
  br label %7, !dbg !906

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !907
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !908
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !908
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !910
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !915
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !915
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !917
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !918
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !918
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !920
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !925
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !925
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !927
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !928
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !928
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !930
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !931
  br i1 %4, label %14, label %15, !dbg !933

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !934
  br label %22, !dbg !935

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !936
  %16 = ptrtoint i8* %13 to i32, !dbg !938
  %17 = ptrtoint i8* %3 to i32, !dbg !938
  %18 = add i32 %16, 1, !dbg !938
  %19 = sub i32 %18, %17, !dbg !939
  %20 = sext i32 %19 to i64, !dbg !940
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %20) #8, !dbg !941
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !942
  br label %22

22:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !943
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !944
  %24 = load i64, i64* %23, align 8, !dbg !944, !tbaa !717
  %25 = icmp eq i64 %24, 0, !dbg !946
  br i1 %25, label %41, label %26, !dbg !947

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !948
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !948
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !948
  %27 = call i8* @malloc(i32 1024) #8, !dbg !951
  %28 = icmp eq i8* %27, null, !dbg !952
  br i1 %28, label %29, label %31, !dbg !953

29:                                               ; preds = %26
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !954
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !954
  %30 = call i8* @halide_string_to_string(i8* %27, i8* null, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !956
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !957
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !959
  br label %40, !dbg !960

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, i8* %27, i32 1023, !dbg !961
  store i8 0, i8* %32, align 1, !dbg !962, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !954
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !954
  %33 = call i8* @halide_string_to_string(i8* nonnull %27, i8* nonnull %32, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !956
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !957
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !963
  %34 = ptrtoint i8* %33 to i32, !dbg !965
  %35 = ptrtoint i8* %27 to i32, !dbg !965
  %36 = add i32 %34, 1, !dbg !965
  %37 = sub i32 %36, %35, !dbg !966
  %38 = sext i32 %37 to i64, !dbg !967
  %39 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %27, i64 %38) #8, !dbg !968
  call void @halide_print(i8* %0, i8* nonnull %27) #8, !dbg !969
  br label %40

40:                                               ; preds = %31, %29
  call void @free(i8* %27) #8, !dbg !970
  br label %122, !dbg !971

41:                                               ; preds = %22
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !972, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !977, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i32 0, metadata !980, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !985
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !986
  %43 = load i32, i32* %42, align 4, !dbg !986, !tbaa !752
  %44 = icmp sgt i32 %43, 0, !dbg !988
  br i1 %44, label %48, label %45, !dbg !989

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !990
  %46 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !992
  %47 = load i8, i8* %46, align 1, !dbg !992, !tbaa !733
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !993, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i32 0, metadata !996, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i32 0, metadata !997, metadata !DIExpression()), !dbg !1001
  br label %86, !dbg !1002

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %50 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %49, align 8, !tbaa !755
  br label %51, !dbg !989

51:                                               ; preds = %63, %48
  %52 = phi i32 [ 0, %48 ], [ %65, %63 ]
  %53 = phi i32 [ 0, %48 ], [ %64, %63 ]
  call void @llvm.dbg.value(metadata i32 %52, metadata !981, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 %53, metadata !980, metadata !DIExpression()), !dbg !983
  %54 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %50, i32 %52, i32 2, !dbg !1003
  %55 = load i32, i32* %54, align 4, !dbg !1003, !tbaa !763
  %56 = icmp sgt i32 %55, 0, !dbg !1006
  br i1 %56, label %57, label %63, !dbg !1007

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %50, i32 %52, i32 1, !dbg !1008
  %59 = load i32, i32* %58, align 4, !dbg !1008, !tbaa !827
  %60 = add nsw i32 %59, -1, !dbg !1010
  %61 = mul nsw i32 %60, %55, !dbg !1011
  %62 = add nsw i32 %61, %53, !dbg !1012
  call void @llvm.dbg.value(metadata i32 %62, metadata !980, metadata !DIExpression()), !dbg !983
  br label %63, !dbg !1013

63:                                               ; preds = %57, %51
  %64 = phi i32 [ %62, %57 ], [ %53, %51 ], !dbg !983
  call void @llvm.dbg.value(metadata i32 %64, metadata !980, metadata !DIExpression()), !dbg !983
  %65 = add nuw nsw i32 %52, 1, !dbg !1014
  call void @llvm.dbg.value(metadata i32 %65, metadata !981, metadata !DIExpression()), !dbg !985
  %66 = icmp slt i32 %65, %43, !dbg !988
  br i1 %66, label %51, label %67, !dbg !989, !llvm.loop !1015

67:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i32 %64, metadata !980, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !983
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !990
  %68 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !992
  %69 = load i8, i8* %68, align 1, !dbg !992, !tbaa !733
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !993, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i32 0, metadata !996, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i32 0, metadata !997, metadata !DIExpression()), !dbg !1001
  br label %70, !dbg !1002

70:                                               ; preds = %82, %67
  %71 = phi i32 [ 0, %67 ], [ %84, %82 ]
  %72 = phi i32 [ 0, %67 ], [ %83, %82 ]
  call void @llvm.dbg.value(metadata i32 %71, metadata !997, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i32 %72, metadata !996, metadata !DIExpression()), !dbg !999
  %73 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %50, i32 %71, i32 2, !dbg !1017
  %74 = load i32, i32* %73, align 4, !dbg !1017, !tbaa !763
  %75 = icmp slt i32 %74, 0, !dbg !1021
  br i1 %75, label %76, label %82, !dbg !1022

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %50, i32 %71, i32 1, !dbg !1023
  %78 = load i32, i32* %77, align 4, !dbg !1023, !tbaa !827
  %79 = add nsw i32 %78, -1, !dbg !1025
  %80 = mul nsw i32 %79, %74, !dbg !1026
  %81 = add nsw i32 %80, %72, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %81, metadata !996, metadata !DIExpression()), !dbg !999
  br label %82, !dbg !1028

82:                                               ; preds = %76, %70
  %83 = phi i32 [ %81, %76 ], [ %72, %70 ], !dbg !999
  call void @llvm.dbg.value(metadata i32 %83, metadata !996, metadata !DIExpression()), !dbg !999
  %84 = add nuw nsw i32 %71, 1, !dbg !1029
  call void @llvm.dbg.value(metadata i32 %84, metadata !997, metadata !DIExpression()), !dbg !1001
  %85 = icmp slt i32 %84, %43, !dbg !1030
  br i1 %85, label %70, label %86, !dbg !1002, !llvm.loop !1031

86:                                               ; preds = %82, %45
  %87 = phi i8 [ %47, %45 ], [ %69, %82 ]
  %88 = phi i32 [ 0, %45 ], [ %64, %82 ]
  %89 = phi i32 [ 0, %45 ], [ %83, %82 ], !dbg !999
  %90 = zext i8 %87 to i32, !dbg !992
  %91 = add nuw nsw i32 %90, 7, !dbg !1033
  %92 = lshr i32 %91, 3, !dbg !1034
  %93 = add nsw i32 %88, 1, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %93, metadata !980, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1036
  %94 = sub i32 %93, %89, !dbg !1038
  %95 = mul i32 %94, %92, !dbg !1038
  call void @llvm.dbg.value(metadata i32 %95, metadata !895, metadata !DIExpression()), !dbg !898
  %96 = icmp eq i32 %95, 0, !dbg !1039
  br i1 %96, label %97, label %98, !dbg !1042

97:                                               ; preds = %86
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !1043
  call void @abort() #8, !dbg !1043
  br label %98, !dbg !1043

98:                                               ; preds = %97, %86
  %99 = call i8* @halide_malloc(i8* %0, i32 %95) #8, !dbg !1045
  call void @llvm.dbg.value(metadata i8* %99, metadata !896, metadata !DIExpression()), !dbg !898
  %100 = icmp eq i8* %99, null, !dbg !1046
  br i1 %100, label %101, label %116, !dbg !1048

101:                                              ; preds = %98
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1049, metadata !DIExpression()) #10, !dbg !1055
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()) #10, !dbg !1055
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()) #10, !dbg !1055
  %102 = call i8* @malloc(i32 1024) #8, !dbg !1058
  %103 = icmp eq i8* %102, null, !dbg !1063
  br i1 %103, label %104, label %106, !dbg !1065

104:                                              ; preds = %101
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !1070
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !1070
  %105 = call i8* @halide_string_to_string(i8* %102, i8* null, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !1072
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !1078
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1080
  br label %115, !dbg !1084

106:                                              ; preds = %101
  %107 = getelementptr inbounds i8, i8* %102, i32 1023, !dbg !1085
  store i8 0, i8* %107, align 1, !dbg !1087, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !1070
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !1070
  %108 = call i8* @halide_string_to_string(i8* nonnull %102, i8* nonnull %107, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !1072
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !1078
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1088, metadata !DIExpression()) #10, !dbg !1091
  %109 = ptrtoint i8* %108 to i32, !dbg !1094
  %110 = ptrtoint i8* %102 to i32, !dbg !1094
  %111 = add i32 %109, 1, !dbg !1094
  %112 = sub i32 %111, %110, !dbg !1095
  %113 = sext i32 %112 to i64, !dbg !1096
  %114 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %102, i64 %113) #8, !dbg !1097
  call void @halide_error(i8* %0, i8* nonnull %102) #8, !dbg !1098
  br label %115

115:                                              ; preds = %106, %104
  call void @free(i8* %102) #8, !dbg !1101
  br label %122, !dbg !1104

116:                                              ; preds = %98
  %117 = ptrtoint i8* %99 to i32, !dbg !1105
  %118 = zext i32 %117 to i64, !dbg !1105
  %119 = call i32 @halide_hexagon_dma_device_wrap_native(i8* %0, %struct.halide_buffer_t* nonnull %1, i64 %118) #9, !dbg !1106
  call void @llvm.dbg.value(metadata i32 %119, metadata !897, metadata !DIExpression()), !dbg !898
  %120 = icmp eq i32 %119, 0, !dbg !1107
  br i1 %120, label %122, label %121, !dbg !1109

121:                                              ; preds = %116
  call void @halide_free(i8* %0, i8* nonnull %99) #8, !dbg !1110
  br label %122, !dbg !1112

122:                                              ; preds = %115, %116, %121, %40
  %123 = phi i32 [ 0, %40 ], [ -11, %115 ], [ -16, %121 ], [ 0, %116 ], !dbg !898
  ret i32 %123, !dbg !1113
}

declare !dbg !1114 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !1117 dso_local void @abort() local_unnamed_addr #3

declare !dbg !1118 dso_local i8* @halide_malloc(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_wrap_native(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #4 !dbg !1121 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1123, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1124, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %2, metadata !1125, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !1128
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !1128
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !1128
  %4 = tail call i8* @malloc(i32 1024) #8, !dbg !1130
  %5 = icmp eq i8* %4, null, !dbg !1131
  br i1 %5, label %8, label %6, !dbg !1132

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i32 1023, !dbg !1133
  store i8 0, i8* %7, align 1, !dbg !1134, !tbaa !652
  br label %8, !dbg !1135

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ], !dbg !1136
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1137
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.49, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1137
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.49, i32 0, i32 0)) #8, !dbg !1139
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1140
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1140
  %11 = tail call i8* @halide_pointer_to_string(i8* %10, i8* %9, i8* %0) #8, !dbg !1142
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1143
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1143
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %9, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0)) #8, !dbg !1145
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !1146
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !1146
  %13 = tail call i8* @halide_buffer_to_string(i8* %12, i8* %9, %struct.halide_buffer_t* nonnull %1) #8, !dbg !1148
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1149
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1149
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %9, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0)) #8, !dbg !1151
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1152, metadata !DIExpression()) #10, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %2, metadata !1155, metadata !DIExpression()) #10, !dbg !1156
  %15 = tail call i8* @halide_uint64_to_string(i8* %14, i8* %9, i64 %2, i32 1) #8, !dbg !1158
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1159
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1159
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %9, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !1161
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1162
  br i1 %5, label %17, label %18, !dbg !1164

17:                                               ; preds = %8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1165
  br label %25, !dbg !1166

18:                                               ; preds = %8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !1167
  %19 = ptrtoint i8* %16 to i32, !dbg !1169
  %20 = ptrtoint i8* %4 to i32, !dbg !1169
  %21 = add i32 %19, 1, !dbg !1169
  %22 = sub i32 %21, %20, !dbg !1170
  %23 = sext i32 %22 to i64, !dbg !1171
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %23) #8, !dbg !1172
  tail call void @halide_print(i8* %0, i8* nonnull %4) #8, !dbg !1173
  br label %25

25:                                               ; preds = %17, %18
  call void @free(i8* %4) #8, !dbg !1174
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1175
  %27 = load i64, i64* %26, align 8, !dbg !1175, !tbaa !717
  %28 = icmp eq i64 %27, 0, !dbg !1175
  br i1 %28, label %47, label %29, !dbg !1178

29:                                               ; preds = %25
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !1179
  call void @abort() #8, !dbg !1179
  %30 = load i64, i64* %26, align 8, !dbg !1181, !tbaa !717
  %31 = icmp eq i64 %30, 0, !dbg !1183
  br i1 %31, label %47, label %32, !dbg !1184

32:                                               ; preds = %29
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1049, metadata !DIExpression()) #10, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()) #10, !dbg !1185
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()) #10, !dbg !1185
  %33 = call i8* @malloc(i32 1024) #8, !dbg !1188
  %34 = icmp eq i8* %33, null, !dbg !1189
  br i1 %34, label %35, label %37, !dbg !1190

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !1191
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.52, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !1191
  %36 = call i8* @halide_string_to_string(i8* %33, i8* null, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.52, i32 0, i32 0)) #8, !dbg !1193
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !1194
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1196
  br label %46, !dbg !1197

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, i8* %33, i32 1023, !dbg !1198
  store i8 0, i8* %38, align 1, !dbg !1199, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !1191
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.52, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !1191
  %39 = call i8* @halide_string_to_string(i8* nonnull %33, i8* nonnull %38, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @.str.52, i32 0, i32 0)) #8, !dbg !1193
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !1194
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1088, metadata !DIExpression()) #10, !dbg !1200
  %40 = ptrtoint i8* %39 to i32, !dbg !1202
  %41 = ptrtoint i8* %33 to i32, !dbg !1202
  %42 = add i32 %40, 1, !dbg !1202
  %43 = sub i32 %42, %41, !dbg !1203
  %44 = sext i32 %43 to i64, !dbg !1204
  %45 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %33, i64 %44) #8, !dbg !1205
  call void @halide_error(i8* %0, i8* nonnull %33) #8, !dbg !1206
  br label %46

46:                                               ; preds = %37, %35
  call void @free(i8* %33) #8, !dbg !1207
  br label %89, !dbg !1208

47:                                               ; preds = %25, %29
  %48 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !1209
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, %struct.halide_device_interface_t** %48, align 8, !dbg !1210, !tbaa !1211
  %49 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, i32 0, i32 15), align 4, !dbg !1212, !tbaa !1213
  %50 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %49, i32 0, i32 0, !dbg !1215
  %51 = load void ()*, void ()** %50, align 4, !dbg !1215, !tbaa !1216
  call void %51() #8, !dbg !1218
  %52 = call i8* @malloc(i32 36) #8, !dbg !1219
  call void @llvm.dbg.value(metadata i8* %52, metadata !1224, metadata !DIExpression()) #10, !dbg !1226
  %53 = bitcast i8* %52 to i8**, !dbg !1227
  %54 = getelementptr inbounds i8, i8* %52, i32 4, !dbg !1228
  %55 = bitcast i8* %54 to i16*, !dbg !1228
  store i16 0, i16* %55, align 4, !dbg !1229, !tbaa !1230
  %56 = getelementptr inbounds i8, i8* %52, i32 6, !dbg !1234
  %57 = bitcast i8* %56 to i16*, !dbg !1234
  store i16 0, i16* %57, align 2, !dbg !1235, !tbaa !1236
  %58 = getelementptr inbounds i8, i8* %52, i32 8, !dbg !1237
  %59 = bitcast i8* %58 to i16*, !dbg !1237
  store i16 0, i16* %59, align 4, !dbg !1238, !tbaa !1239
  %60 = getelementptr inbounds i8, i8* %52, i32 10, !dbg !1240
  %61 = bitcast i8* %60 to i16*, !dbg !1240
  store i16 0, i16* %61, align 2, !dbg !1241, !tbaa !1242
  %62 = getelementptr inbounds i8, i8* %52, i32 12, !dbg !1243
  %63 = bitcast i8* %62 to i8**, !dbg !1243
  %64 = getelementptr inbounds i8, i8* %52, i32 16, !dbg !1244
  %65 = bitcast i8* %64 to i32*, !dbg !1244
  %66 = getelementptr inbounds i8, i8* %52, i32 20, !dbg !1245
  %67 = bitcast i8* %66 to i32*, !dbg !1245
  %68 = getelementptr inbounds i8, i8* %52, i32 24, !dbg !1246
  %69 = bitcast i8* %68 to i32*, !dbg !1246
  %70 = getelementptr inbounds i8, i8* %52, i32 28, !dbg !1247
  store i8 0, i8* %70, align 4, !dbg !1248, !tbaa !1249
  %71 = getelementptr inbounds i8, i8* %52, i32 32, !dbg !1250
  %72 = bitcast i8* %71 to i32*, !dbg !1250
  store i32 0, i32* %72, align 4, !dbg !1251, !tbaa !1252
  %73 = getelementptr inbounds i8, i8* %52, i32 29, !dbg !1253
  store i8 0, i8* %73, align 1, !dbg !1254, !tbaa !1255
  call void @llvm.dbg.value(metadata i8* %52, metadata !1126, metadata !DIExpression()), !dbg !1127
  %74 = trunc i64 %2 to i32, !dbg !1256
  %75 = inttoptr i32 %74 to i8*, !dbg !1256
  store i8* %75, i8** %53, align 4, !dbg !1257, !tbaa !1258
  store i8* null, i8** %63, align 4, !dbg !1259, !tbaa !1260
  %76 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6, !dbg !1261
  %77 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %76, align 8, !dbg !1261, !tbaa !755
  %78 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %77, i32 0, i32 1, !dbg !1262
  %79 = load i32, i32* %78, align 4, !dbg !1262, !tbaa !827
  %80 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %77, i32 0, i32 2, !dbg !1263
  %81 = load i32, i32* %80, align 4, !dbg !1263, !tbaa !763
  %82 = mul nsw i32 %81, %79, !dbg !1264
  store i32 %82, i32* %65, align 4, !dbg !1265, !tbaa !1266
  %83 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %77, i32 1, i32 1, !dbg !1267
  %84 = load i32, i32* %83, align 4, !dbg !1267, !tbaa !827
  store i32 %84, i32* %67, align 4, !dbg !1268, !tbaa !1269
  %85 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %77, i32 1, i32 2, !dbg !1270
  %86 = load i32, i32* %85, align 4, !dbg !1270, !tbaa !763
  store i32 %86, i32* %69, align 4, !dbg !1271, !tbaa !1272
  %87 = ptrtoint i8* %52 to i32, !dbg !1273
  %88 = zext i32 %87 to i64, !dbg !1273
  store i64 %88, i64* %26, align 8, !dbg !1274, !tbaa !717
  br label %89

89:                                               ; preds = %47, %46
  %90 = phi i32 [ -32, %46 ], [ 0, %47 ], !dbg !1127
  ret i32 %90, !dbg !1275
}

declare !dbg !1276 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_free(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !1279 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1281, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1282, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !1286
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !1286
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !1286
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !1288
  %4 = icmp eq i8* %3, null, !dbg !1289
  br i1 %4, label %7, label %5, !dbg !1290

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !1291
  store i8 0, i8* %6, align 1, !dbg !1292, !tbaa !652
  br label %7, !dbg !1293

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1294
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1295
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1295
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !1297
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1298
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1298
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !1300
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1301
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1301
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !1303
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !1304
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !1304
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !1306
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1307
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1307
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !1309
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1310
  br i1 %4, label %14, label %15, !dbg !1312

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1313
  br label %22, !dbg !1314

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !1315
  %16 = ptrtoint i8* %13 to i32, !dbg !1317
  %17 = ptrtoint i8* %3 to i32, !dbg !1317
  %18 = add i32 %16, 1, !dbg !1317
  %19 = sub i32 %18, %17, !dbg !1318
  %20 = sext i32 %19 to i64, !dbg !1319
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %20) #8, !dbg !1320
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !1321
  br label %22

22:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !1322
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1323
  %24 = load i64, i64* %23, align 8, !dbg !1323, !tbaa !717
  %25 = trunc i64 %24 to i32, !dbg !1324
  %26 = inttoptr i32 %25 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*, !dbg !1324
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %26, metadata !1283, metadata !DIExpression()), !dbg !1285
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %26, i32 0, i32 0, !dbg !1325
  %28 = load i8*, i8** %27, align 4, !dbg !1325, !tbaa !1258
  call void @llvm.dbg.value(metadata i8* %28, metadata !1284, metadata !DIExpression()), !dbg !1285
  %29 = call i32 @halide_hexagon_dma_device_detach_native(i8* %0, %struct.halide_buffer_t* nonnull %1) #9, !dbg !1326
  call void @halide_free(i8* %0, i8* %28) #8, !dbg !1327
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1328, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i1 false, metadata !1331, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1332
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1334, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i32 2, metadata !1337, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i1 false, metadata !1338, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1339
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !1341
  %31 = load i64, i64* %30, align 8, !dbg !1344, !tbaa !1345
  %32 = and i64 %31, -3, !dbg !1344
  store i64 %32, i64* %30, align 8, !dbg !1344, !tbaa !1345
  ret i32 0, !dbg !1346
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_detach_native(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !1347 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1349, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1350, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !1353
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !1353
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !1353
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !1355
  %4 = icmp eq i8* %3, null, !dbg !1356
  br i1 %4, label %7, label %5, !dbg !1357

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !1358
  store i8 0, i8* %6, align 1, !dbg !1359, !tbaa !652
  br label %7, !dbg !1360

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1361
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1362
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.54, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1362
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.54, i32 0, i32 0)) #8, !dbg !1364
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1365
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1365
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !1367
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1368
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1368
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0)) #8, !dbg !1370
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !1371
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !1371
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !1373
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1374
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1374
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !1376
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1377
  br i1 %4, label %14, label %15, !dbg !1379

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1380
  br label %22, !dbg !1381

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !1382
  %16 = ptrtoint i8* %13 to i32, !dbg !1384
  %17 = ptrtoint i8* %3 to i32, !dbg !1384
  %18 = add i32 %16, 1, !dbg !1384
  %19 = sub i32 %18, %17, !dbg !1385
  %20 = sext i32 %19 to i64, !dbg !1386
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %20) #8, !dbg !1387
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !1388
  br label %22

22:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !1389
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1390
  %24 = load i64, i64* %23, align 8, !dbg !1390, !tbaa !717
  %25 = icmp eq i64 %24, 0, !dbg !1392
  br i1 %25, label %26, label %41, !dbg !1393

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1049, metadata !DIExpression()) #10, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()) #10, !dbg !1394
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()) #10, !dbg !1394
  %27 = call i8* @malloc(i32 1024) #8, !dbg !1397
  %28 = icmp eq i8* %27, null, !dbg !1398
  br i1 %28, label %29, label %31, !dbg !1399

29:                                               ; preds = %26
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !1400
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.55, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !1400
  %30 = call i8* @halide_string_to_string(i8* %27, i8* null, i8* nonnull getelementptr inbounds ([74 x i8], [74 x i8]* @.str.55, i32 0, i32 0)) #8, !dbg !1402
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !1403
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1405
  br label %40, !dbg !1406

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, i8* %27, i32 1023, !dbg !1407
  store i8 0, i8* %32, align 1, !dbg !1408, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !1400
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.55, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !1400
  %33 = call i8* @halide_string_to_string(i8* nonnull %27, i8* nonnull %32, i8* nonnull getelementptr inbounds ([74 x i8], [74 x i8]* @.str.55, i32 0, i32 0)) #8, !dbg !1402
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !1403
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1088, metadata !DIExpression()) #10, !dbg !1409
  %34 = ptrtoint i8* %33 to i32, !dbg !1411
  %35 = ptrtoint i8* %27 to i32, !dbg !1411
  %36 = add i32 %34, 1, !dbg !1411
  %37 = sub i32 %36, %35, !dbg !1412
  %38 = sext i32 %37 to i64, !dbg !1413
  %39 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %27, i64 %38) #8, !dbg !1414
  call void @halide_error(i8* %0, i8* nonnull %27) #8, !dbg !1415
  br label %40

40:                                               ; preds = %31, %29
  call void @free(i8* %27) #8, !dbg !1416
  br label %57, !dbg !1417

41:                                               ; preds = %22
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !1418
  %43 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %42, align 8, !dbg !1418, !tbaa !1211
  %44 = icmp eq %struct.halide_device_interface_t* %43, @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, !dbg !1418
  %45 = trunc i64 %24 to i32, !dbg !1421
  br i1 %44, label %49, label %46, !dbg !1421

46:                                               ; preds = %41
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.56, i32 0, i32 0)) #8, !dbg !1422
  call void @abort() #8, !dbg !1422
  %47 = load i64, i64* %23, align 8, !dbg !1424, !tbaa !717
  %48 = trunc i64 %47 to i32, !dbg !1422
  br label %49, !dbg !1422

49:                                               ; preds = %41, %46
  %50 = phi i32 [ %45, %41 ], [ %48, %46 ]
  %51 = inttoptr i32 %50 to i8*, !dbg !1425
  call void @llvm.dbg.value(metadata i8* %51, metadata !1351, metadata !DIExpression()), !dbg !1352
  call void @free(i8* %51) #8, !dbg !1426
  %52 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %42, align 8, !dbg !1427, !tbaa !1211
  %53 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %52, i32 0, i32 15, !dbg !1428
  %54 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %53, align 4, !dbg !1428, !tbaa !1213
  %55 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %54, i32 0, i32 1, !dbg !1429
  %56 = load void ()*, void ()** %55, align 4, !dbg !1429, !tbaa !1430
  call void %56() #8, !dbg !1431
  store i64 0, i64* %23, align 8, !dbg !1432, !tbaa !717
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %42, align 8, !dbg !1433, !tbaa !1211
  br label %57

57:                                               ; preds = %49, %40
  %58 = phi i32 [ -33, %40 ], [ 0, %49 ], !dbg !1352
  ret i32 %58, !dbg !1434
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_allocate_engine(i8* %0, i8** %1) local_unnamed_addr #4 !dbg !1435 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1440, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8** %1, metadata !1441, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !1443
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !1443
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !1443
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !1445
  %4 = icmp eq i8* %3, null, !dbg !1446
  br i1 %4, label %7, label %5, !dbg !1447

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !1448
  store i8 0, i8* %6, align 1, !dbg !1449, !tbaa !652
  br label %7, !dbg !1450

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1451
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1452
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1452
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !1454
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1455
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1455
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !1457
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1458
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1458
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !1460
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1461
  br i1 %4, label %12, label %13, !dbg !1463

12:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1464
  br label %20, !dbg !1465

13:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !1466
  %14 = ptrtoint i8* %11 to i32, !dbg !1468
  %15 = ptrtoint i8* %3 to i32, !dbg !1468
  %16 = add i32 %14, 1, !dbg !1468
  %17 = sub i32 %16, %15, !dbg !1469
  %18 = sext i32 %17 to i64, !dbg !1470
  %19 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %18) #8, !dbg !1471
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !1472
  br label %20

20:                                               ; preds = %13, %12
  tail call void @free(i8* %3) #8, !dbg !1473
  %21 = icmp eq i8** %1, null, !dbg !1474
  br i1 %21, label %22, label %23, !dbg !1477

22:                                               ; preds = %20
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.9, i32 0, i32 0)) #8, !dbg !1478
  tail call void @abort() #8, !dbg !1478
  br label %23, !dbg !1478

23:                                               ; preds = %20, %22
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !1480
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !1480
  %24 = tail call i8* @malloc(i32 1024) #8, !dbg !1482
  %25 = icmp eq i8* %24, null, !dbg !1483
  br i1 %25, label %26, label %28, !dbg !1484

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1485
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1485
  %27 = tail call i8* @halide_string_to_string(i8* %24, i8* null, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !1487
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1488
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1490
  br label %37, !dbg !1491

28:                                               ; preds = %23
  %29 = getelementptr inbounds i8, i8* %24, i32 1023, !dbg !1492
  store i8 0, i8* %29, align 1, !dbg !1493, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1485
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1485
  %30 = tail call i8* @halide_string_to_string(i8* nonnull %24, i8* nonnull %29, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !1487
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1488
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !1494
  %31 = ptrtoint i8* %30 to i32, !dbg !1496
  %32 = ptrtoint i8* %24 to i32, !dbg !1496
  %33 = add i32 %31, 1, !dbg !1496
  %34 = sub i32 %33, %32, !dbg !1497
  %35 = sext i32 %34 to i64, !dbg !1498
  %36 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %24, i64 %35) #8, !dbg !1499
  tail call void @halide_print(i8* %0, i8* nonnull %24) #8, !dbg !1500
  br label %37

37:                                               ; preds = %28, %26
  tail call void @free(i8* %24) #8, !dbg !1501
  %38 = tail call i8* @halide_hexagon_allocate_dma_resource(i8* %0) #8, !dbg !1502
  store i8* %38, i8** %1, align 4, !dbg !1503, !tbaa !1504
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !1505
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !1505
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !1505
  %39 = tail call i8* @malloc(i32 1024) #8, !dbg !1507
  %40 = icmp eq i8* %39, null, !dbg !1508
  br i1 %40, label %43, label %41, !dbg !1509

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, i8* %39, i32 1023, !dbg !1510
  store i8 0, i8* %42, align 1, !dbg !1511, !tbaa !652
  br label %43, !dbg !1512

43:                                               ; preds = %37, %41
  %44 = phi i8* [ %42, %41 ], [ null, %37 ], !dbg !1513
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1514
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1514
  %45 = tail call i8* @halide_string_to_string(i8* %39, i8* %44, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !1516
  %46 = bitcast i8** %1 to i8*, !dbg !1517
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1518
  call void @llvm.dbg.value(metadata i8* %46, metadata !914, metadata !DIExpression()) #10, !dbg !1518
  %47 = tail call i8* @halide_pointer_to_string(i8* %45, i8* %44, i8* nonnull %46) #8, !dbg !1520
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1521
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1521
  %48 = tail call i8* @halide_string_to_string(i8* %47, i8* %44, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !1523
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1524
  br i1 %40, label %49, label %50, !dbg !1526

49:                                               ; preds = %43
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1527
  br label %57, !dbg !1528

50:                                               ; preds = %43
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !1529
  %51 = ptrtoint i8* %48 to i32, !dbg !1531
  %52 = ptrtoint i8* %39 to i32, !dbg !1531
  %53 = add i32 %51, 1, !dbg !1531
  %54 = sub i32 %53, %52, !dbg !1532
  %55 = sext i32 %54 to i64, !dbg !1533
  %56 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %39, i64 %55) #8, !dbg !1534
  tail call void @halide_print(i8* %0, i8* nonnull %39) #8, !dbg !1535
  br label %57

57:                                               ; preds = %50, %49
  tail call void @free(i8* %39) #8, !dbg !1536
  %58 = load i8*, i8** %1, align 4, !dbg !1537, !tbaa !1504
  %59 = icmp eq i8* %58, null, !dbg !1537
  br i1 %59, label %60, label %75, !dbg !1539

60:                                               ; preds = %57
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !1540
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !1540
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !1540
  %61 = tail call i8* @malloc(i32 1024) #8, !dbg !1543
  %62 = icmp eq i8* %61, null, !dbg !1544
  br i1 %62, label %63, label %65, !dbg !1545

63:                                               ; preds = %60
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1546
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1546
  %64 = tail call i8* @halide_string_to_string(i8* %61, i8* null, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !1548
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1549
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1551
  br label %74, !dbg !1552

65:                                               ; preds = %60
  %66 = getelementptr inbounds i8, i8* %61, i32 1023, !dbg !1553
  store i8 0, i8* %66, align 1, !dbg !1554, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1546
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1546
  %67 = tail call i8* @halide_string_to_string(i8* nonnull %61, i8* nonnull %66, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !1548
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1549
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !1555
  %68 = ptrtoint i8* %67 to i32, !dbg !1557
  %69 = ptrtoint i8* %61 to i32, !dbg !1557
  %70 = add i32 %68, 1, !dbg !1557
  %71 = sub i32 %70, %69, !dbg !1558
  %72 = sext i32 %71 to i64, !dbg !1559
  %73 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %61, i64 %72) #8, !dbg !1560
  tail call void @halide_print(i8* %0, i8* nonnull %61) #8, !dbg !1561
  br label %74

74:                                               ; preds = %65, %63
  tail call void @free(i8* %61) #8, !dbg !1562
  br label %75, !dbg !1563

75:                                               ; preds = %57, %74
  %76 = phi i32 [ -1, %74 ], [ 0, %57 ], !dbg !1442
  ret i32 %76, !dbg !1564
}

declare !dbg !1565 extern_weak dso_local i8* @halide_hexagon_allocate_dma_resource(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_deallocate_engine(i8* %0, i8* %1) local_unnamed_addr #4 !dbg !1569 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1573, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %1, metadata !1574, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !1577
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !1577
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !1577
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !1579
  %4 = icmp eq i8* %3, null, !dbg !1580
  br i1 %4, label %7, label %5, !dbg !1581

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !1582
  store i8 0, i8* %6, align 1, !dbg !1583, !tbaa !652
  br label %7, !dbg !1584

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1585
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1586
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1586
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !1588
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1589
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1589
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !1591
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1592
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1592
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !1594
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1595
  call void @llvm.dbg.value(metadata i8* %1, metadata !914, metadata !DIExpression()) #10, !dbg !1595
  %12 = tail call i8* @halide_pointer_to_string(i8* %11, i8* %8, i8* %1) #8, !dbg !1597
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1598
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1598
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !1600
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1601
  br i1 %4, label %14, label %15, !dbg !1603

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1604
  br label %22, !dbg !1605

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !1606
  %16 = ptrtoint i8* %13 to i32, !dbg !1608
  %17 = ptrtoint i8* %3 to i32, !dbg !1608
  %18 = add i32 %16, 1, !dbg !1608
  %19 = sub i32 %18, %17, !dbg !1609
  %20 = sext i32 %19 to i64, !dbg !1610
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %20) #8, !dbg !1611
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !1612
  br label %22

22:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !1613
  %23 = icmp eq i8* %1, null, !dbg !1614
  br i1 %23, label %24, label %25, !dbg !1617

24:                                               ; preds = %22
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.16, i32 0, i32 0)) #8, !dbg !1618
  call void @abort() #8, !dbg !1618
  br label %25, !dbg !1618

25:                                               ; preds = %22, %24
  call void @llvm.dbg.value(metadata i8* undef, metadata !1620, metadata !DIExpression()) #10, !dbg !1642
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1644, metadata !DIExpression()) #10, !dbg !1649
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE, metadata !1647, metadata !DIExpression()) #10, !dbg !1649
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE, metadata !1626, metadata !DIExpression()) #10, !dbg !1642
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #8, !dbg !1651
  %26 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 4, !dbg !1653, !tbaa !1504
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %26, metadata !1639, metadata !DIExpression()) #10, !dbg !1642
  %27 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %26, null, !dbg !1654
  br i1 %27, label %45, label %28, !dbg !1655

28:                                               ; preds = %25, %40
  %29 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ %42, %40 ], [ %26, %25 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %29, metadata !1639, metadata !DIExpression()) #10, !dbg !1642
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %29, metadata !1640, metadata !DIExpression()) #10, !dbg !1656
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %29, i32 0, i32 2, !dbg !1657
  %31 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %30, align 4, !dbg !1657, !tbaa !1658
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %31, metadata !1639, metadata !DIExpression()) #10, !dbg !1642
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %29, i32 0, i32 0, !dbg !1660
  %33 = load i8*, i8** %32, align 4, !dbg !1660, !tbaa !1662
  %34 = icmp eq i8* %33, null, !dbg !1663
  br i1 %34, label %37, label %35, !dbg !1664

35:                                               ; preds = %28
  %36 = call i32 @HAP_cache_unlock(i8* nonnull %33) #8, !dbg !1665
  br label %37, !dbg !1667

37:                                               ; preds = %35, %28
  %38 = bitcast %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %29 to i8*, !dbg !1668
  call void @free(i8* nonnull %38) #8, !dbg !1669
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %31, metadata !1640, metadata !DIExpression()) #10, !dbg !1656
  %39 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %31, null, !dbg !1670
  br i1 %39, label %45, label %40, !dbg !1672

40:                                               ; preds = %37
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %31, i32 0, i32 2, !dbg !1673
  %42 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %41, align 4, !dbg !1673, !tbaa !1658
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %42, metadata !1639, metadata !DIExpression()) #10, !dbg !1642
  %43 = bitcast %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %31 to i8*, !dbg !1675
  call void @free(i8* nonnull %43) #8, !dbg !1676
  %44 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %42, null, !dbg !1654
  br i1 %44, label %45, label %28, !dbg !1655, !llvm.loop !1677

45:                                               ; preds = %37, %40, %25
  store %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* null, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 4, !dbg !1679, !tbaa !1504
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1680, metadata !DIExpression()) #10, !dbg !1683
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #8, !dbg !1685
  %46 = call i32 @halide_hexagon_free_dma_resource(i8* %0, i8* %1) #8, !dbg !1687
  call void @llvm.dbg.value(metadata i32 %46, metadata !1575, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !1688
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !1688
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !1688
  %47 = call i8* @malloc(i32 1024) #8, !dbg !1690
  %48 = icmp eq i8* %47, null, !dbg !1691
  br i1 %48, label %49, label %51, !dbg !1692

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1693
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1693
  %50 = call i8* @halide_string_to_string(i8* %47, i8* null, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1695
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1696
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1698
  br label %60, !dbg !1699

51:                                               ; preds = %45
  %52 = getelementptr inbounds i8, i8* %47, i32 1023, !dbg !1700
  store i8 0, i8* %52, align 1, !dbg !1701, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1693
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1693
  %53 = call i8* @halide_string_to_string(i8* nonnull %47, i8* nonnull %52, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1695
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1696
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !1702
  %54 = ptrtoint i8* %53 to i32, !dbg !1704
  %55 = ptrtoint i8* %47 to i32, !dbg !1704
  %56 = add i32 %54, 1, !dbg !1704
  %57 = sub i32 %56, %55, !dbg !1705
  %58 = sext i32 %57 to i64, !dbg !1706
  %59 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %47, i64 %58) #8, !dbg !1707
  call void @halide_print(i8* %0, i8* nonnull %47) #8, !dbg !1708
  br label %60

60:                                               ; preds = %51, %49
  call void @free(i8* %47) #8, !dbg !1709
  %61 = icmp eq i32 %46, 0, !dbg !1710
  br i1 %61, label %77, label %62, !dbg !1712

62:                                               ; preds = %60
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !1713
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !1713
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !1713
  %63 = call i8* @malloc(i32 1024) #8, !dbg !1716
  %64 = icmp eq i8* %63, null, !dbg !1717
  br i1 %64, label %65, label %67, !dbg !1718

65:                                               ; preds = %62
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1719
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1719
  %66 = call i8* @halide_string_to_string(i8* %63, i8* null, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0)) #8, !dbg !1721
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1722
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1724
  br label %76, !dbg !1725

67:                                               ; preds = %62
  %68 = getelementptr inbounds i8, i8* %63, i32 1023, !dbg !1726
  store i8 0, i8* %68, align 1, !dbg !1727, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1719
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1719
  %69 = call i8* @halide_string_to_string(i8* nonnull %63, i8* nonnull %68, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0)) #8, !dbg !1721
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1722
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !1728
  %70 = ptrtoint i8* %69 to i32, !dbg !1730
  %71 = ptrtoint i8* %63 to i32, !dbg !1730
  %72 = add i32 %70, 1, !dbg !1730
  %73 = sub i32 %72, %71, !dbg !1731
  %74 = sext i32 %73 to i64, !dbg !1732
  %75 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %63, i64 %74) #8, !dbg !1733
  call void @halide_print(i8* %0, i8* nonnull %63) #8, !dbg !1734
  br label %76

76:                                               ; preds = %67, %65
  call void @free(i8* %63) #8, !dbg !1735
  br label %77, !dbg !1736

77:                                               ; preds = %60, %76
  %78 = phi i32 [ -1, %76 ], [ 0, %60 ], !dbg !1576
  ret i32 %78, !dbg !1737
}

declare !dbg !1738 extern_weak dso_local i32 @halide_hexagon_free_dma_resource(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_prepare_for_copy_to_host(i8* %0, %struct.halide_buffer_t* %1, i8* %2, i1 zeroext %3, i32 %4) local_unnamed_addr #4 !dbg !1739 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1744, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1745, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8* %2, metadata !1746, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i1 %3, metadata !1747, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1750
  call void @llvm.dbg.value(metadata i32 %4, metadata !1748, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !1751
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !1751
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !1751
  %6 = tail call i8* @malloc(i32 1024) #8, !dbg !1753
  %7 = icmp eq i8* %6, null, !dbg !1754
  br i1 %7, label %10, label %8, !dbg !1755

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %6, i32 1023, !dbg !1756
  store i8 0, i8* %9, align 1, !dbg !1757, !tbaa !652
  br label %10, !dbg !1758

10:                                               ; preds = %5, %8
  %11 = phi i8* [ %9, %8 ], [ null, %5 ], !dbg !1759
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1760
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.19, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1760
  %12 = tail call i8* @halide_string_to_string(i8* %6, i8* %11, i8* nonnull getelementptr inbounds ([69 x i8], [69 x i8]* @.str.19, i32 0, i32 0)) #8, !dbg !1762
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1763
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1763
  %13 = tail call i8* @halide_pointer_to_string(i8* %12, i8* %11, i8* %0) #8, !dbg !1765
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1766
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1766
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %11, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !1768
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !1769
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !1769
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %11, %struct.halide_buffer_t* nonnull %1) #8, !dbg !1771
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1772
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1772
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %11, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !1774
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1775
  call void @llvm.dbg.value(metadata i8* %2, metadata !914, metadata !DIExpression()) #10, !dbg !1775
  %17 = tail call i8* @halide_pointer_to_string(i8* %16, i8* %11, i8* %2) #8, !dbg !1777
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1778
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1778
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %11, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !1780
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1781
  br i1 %7, label %19, label %20, !dbg !1783

19:                                               ; preds = %10
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1784
  br label %27, !dbg !1785

20:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !1786
  %21 = ptrtoint i8* %18 to i32, !dbg !1788
  %22 = ptrtoint i8* %6 to i32, !dbg !1788
  %23 = add i32 %21, 1, !dbg !1788
  %24 = sub i32 %23, %22, !dbg !1789
  %25 = sext i32 %24 to i64, !dbg !1790
  %26 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %25) #8, !dbg !1791
  tail call void @halide_print(i8* %0, i8* nonnull %6) #8, !dbg !1792
  br label %27

27:                                               ; preds = %19, %20
  call void @free(i8* %6) #8, !dbg !1793
  %28 = call fastcc i32 @_ZN12_GLOBAL__N_129halide_hexagon_get_dma_formatEPv26halide_hexagon_image_fmt_t(i8* %0, i32 %4) #9, !dbg !1794
  call void @llvm.dbg.value(metadata i32 %28, metadata !1749, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8* %0, metadata !1795, metadata !DIExpression()) #10, !dbg !1806
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1800, metadata !DIExpression()) #10, !dbg !1806
  call void @llvm.dbg.value(metadata i8* %2, metadata !1801, metadata !DIExpression()) #10, !dbg !1806
  %29 = zext i1 %3 to i8
  call void @llvm.dbg.value(metadata i8 %29, metadata !1802, metadata !DIExpression()) #10, !dbg !1806
  call void @llvm.dbg.value(metadata i32 %28, metadata !1803, metadata !DIExpression()) #10, !dbg !1806
  call void @llvm.dbg.value(metadata i8 0, metadata !1804, metadata !DIExpression()) #10, !dbg !1806
  %30 = icmp eq i8* %2, null, !dbg !1808
  br i1 %30, label %31, label %32, !dbg !1811

31:                                               ; preds = %27
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.64, i32 0, i32 0)) #8, !dbg !1812
  call void @abort() #8, !dbg !1812
  br label %32, !dbg !1812

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1814
  %34 = load i64, i64* %33, align 8, !dbg !1814, !tbaa !717
  %35 = trunc i64 %34 to i32, !dbg !1815
  %36 = inttoptr i32 %35 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*, !dbg !1815
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %36, metadata !1805, metadata !DIExpression()) #10, !dbg !1806
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %36, i32 0, i32 5, !dbg !1816
  store i8* %2, i8** %37, align 4, !dbg !1817, !tbaa !1260
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %36, i32 0, i32 9, !dbg !1818
  store i8 %29, i8* %38, align 4, !dbg !1819, !tbaa !1249
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %36, i32 0, i32 11, !dbg !1820
  store i32 %28, i32* %39, align 4, !dbg !1821, !tbaa !1252
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %36, i32 0, i32 10, !dbg !1822
  store i8 0, i8* %40, align 1, !dbg !1823, !tbaa !1255
  switch i32 %28, label %45 [
    i32 3, label %41
    i32 6, label %41
    i32 9, label %41
    i32 12, label %41
  ], !dbg !1824

41:                                               ; preds = %32, %32, %32, %32
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %36, i32 0, i32 7, !dbg !1826
  %43 = load i32, i32* %42, align 4, !dbg !1826, !tbaa !1269
  %44 = shl nsw i32 %43, 1, !dbg !1828
  store i32 %44, i32* %42, align 4, !dbg !1829, !tbaa !1269
  br label %45, !dbg !1830

45:                                               ; preds = %32, %41
  ret i32 0, !dbg !1831
}

; Function Attrs: inlinehint nounwind
define internal fastcc i32 @_ZN12_GLOBAL__N_129halide_hexagon_get_dma_formatEPv26halide_hexagon_image_fmt_t(i8* %0, i32 %1) unnamed_addr #6 !dbg !1832 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1837, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 %1, metadata !1838, metadata !DIExpression()), !dbg !1839
  %3 = icmp ult i32 %1, 13, !dbg !1840
  br i1 %3, label %24, label %4, !dbg !1840

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1049, metadata !DIExpression()) #10, !dbg !1841
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()) #10, !dbg !1841
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()) #10, !dbg !1841
  %5 = tail call i8* @malloc(i32 1024) #8, !dbg !1844
  %6 = icmp eq i8* %5, null, !dbg !1845
  br i1 %6, label %9, label %7, !dbg !1846

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i32 1023, !dbg !1847
  store i8 0, i8* %8, align 1, !dbg !1848, !tbaa !652
  br label %9, !dbg !1849

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !1850
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !1851
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !1851
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i32 0, i32 0)) #8, !dbg !1853
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1854, metadata !DIExpression()) #10, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %1, metadata !1857, metadata !DIExpression()) #10, !dbg !1858
  %12 = sext i32 %1 to i64, !dbg !1860
  %13 = tail call i8* @halide_int64_to_string(i8* %11, i8* %10, i64 %12, i32 1) #8, !dbg !1861
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !1862
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !1862
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !1864
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !1865
  br i1 %6, label %15, label %16, !dbg !1867

15:                                               ; preds = %9
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1868
  br label %23, !dbg !1869

16:                                               ; preds = %9
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1088, metadata !DIExpression()) #10, !dbg !1870
  %17 = ptrtoint i8* %14 to i32, !dbg !1872
  %18 = ptrtoint i8* %5 to i32, !dbg !1872
  %19 = add i32 %17, 1, !dbg !1872
  %20 = sub i32 %19, %18, !dbg !1873
  %21 = sext i32 %20 to i64, !dbg !1874
  %22 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %21) #8, !dbg !1875
  tail call void @halide_error(i8* %0, i8* nonnull %5) #8, !dbg !1876
  br label %23

23:                                               ; preds = %16, %15
  tail call void @free(i8* %5) #8, !dbg !1877
  br label %24, !dbg !1878

24:                                               ; preds = %2, %23
  %25 = phi i32 [ 14, %23 ], [ %1, %2 ], !dbg !1879
  ret i32 %25, !dbg !1880
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_prepare_for_copy_to_device(i8* %0, %struct.halide_buffer_t* %1, i8* %2, i1 zeroext %3, i32 %4) local_unnamed_addr #4 !dbg !1881 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1883, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1884, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8* %2, metadata !1885, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i1 %3, metadata !1886, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1889
  call void @llvm.dbg.value(metadata i32 %4, metadata !1887, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !1890
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !1890
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !1890
  %6 = tail call i8* @malloc(i32 1024) #8, !dbg !1892
  %7 = icmp eq i8* %6, null, !dbg !1893
  br i1 %7, label %10, label %8, !dbg !1894

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %6, i32 1023, !dbg !1895
  store i8 0, i8* %9, align 1, !dbg !1896, !tbaa !652
  br label %10, !dbg !1897

10:                                               ; preds = %5, %8
  %11 = phi i8* [ %9, %8 ], [ null, %5 ], !dbg !1898
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1899
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.20, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1899
  %12 = tail call i8* @halide_string_to_string(i8* %6, i8* %11, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @.str.20, i32 0, i32 0)) #8, !dbg !1901
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1902
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1902
  %13 = tail call i8* @halide_pointer_to_string(i8* %12, i8* %11, i8* %0) #8, !dbg !1904
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1905
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1905
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %11, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !1907
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !1908
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !1908
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %11, %struct.halide_buffer_t* nonnull %1) #8, !dbg !1910
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1911
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1911
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %11, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !1913
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1914
  call void @llvm.dbg.value(metadata i8* %2, metadata !914, metadata !DIExpression()) #10, !dbg !1914
  %17 = tail call i8* @halide_pointer_to_string(i8* %16, i8* %11, i8* %2) #8, !dbg !1916
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1917
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1917
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %11, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !1919
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1920
  br i1 %7, label %19, label %20, !dbg !1922

19:                                               ; preds = %10
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1923
  br label %27, !dbg !1924

20:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !1925
  %21 = ptrtoint i8* %18 to i32, !dbg !1927
  %22 = ptrtoint i8* %6 to i32, !dbg !1927
  %23 = add i32 %21, 1, !dbg !1927
  %24 = sub i32 %23, %22, !dbg !1928
  %25 = sext i32 %24 to i64, !dbg !1929
  %26 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %25) #8, !dbg !1930
  tail call void @halide_print(i8* %0, i8* nonnull %6) #8, !dbg !1931
  br label %27

27:                                               ; preds = %19, %20
  call void @free(i8* %6) #8, !dbg !1932
  %28 = call fastcc i32 @_ZN12_GLOBAL__N_129halide_hexagon_get_dma_formatEPv26halide_hexagon_image_fmt_t(i8* %0, i32 %4) #9, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %28, metadata !1888, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8* %0, metadata !1795, metadata !DIExpression()) #10, !dbg !1934
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1800, metadata !DIExpression()) #10, !dbg !1934
  call void @llvm.dbg.value(metadata i8* %2, metadata !1801, metadata !DIExpression()) #10, !dbg !1934
  %29 = zext i1 %3 to i8
  call void @llvm.dbg.value(metadata i8 %29, metadata !1802, metadata !DIExpression()) #10, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %28, metadata !1803, metadata !DIExpression()) #10, !dbg !1934
  call void @llvm.dbg.value(metadata i8 1, metadata !1804, metadata !DIExpression()) #10, !dbg !1934
  %30 = icmp eq i8* %2, null, !dbg !1936
  br i1 %30, label %31, label %32, !dbg !1937

31:                                               ; preds = %27
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.64, i32 0, i32 0)) #8, !dbg !1938
  call void @abort() #8, !dbg !1938
  br label %32, !dbg !1938

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !1939
  %34 = load i64, i64* %33, align 8, !dbg !1939, !tbaa !717
  %35 = trunc i64 %34 to i32, !dbg !1940
  %36 = inttoptr i32 %35 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*, !dbg !1940
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %36, metadata !1805, metadata !DIExpression()) #10, !dbg !1934
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %36, i32 0, i32 5, !dbg !1941
  store i8* %2, i8** %37, align 4, !dbg !1942, !tbaa !1260
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %36, i32 0, i32 9, !dbg !1943
  store i8 %29, i8* %38, align 4, !dbg !1944, !tbaa !1249
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %36, i32 0, i32 11, !dbg !1945
  store i32 %28, i32* %39, align 4, !dbg !1946, !tbaa !1252
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %36, i32 0, i32 10, !dbg !1947
  store i8 1, i8* %40, align 1, !dbg !1948, !tbaa !1255
  switch i32 %28, label %45 [
    i32 3, label %41
    i32 6, label %41
    i32 9, label %41
    i32 12, label %41
  ], !dbg !1949

41:                                               ; preds = %32, %32, %32, %32
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %36, i32 0, i32 7, !dbg !1950
  %43 = load i32, i32* %42, align 4, !dbg !1950, !tbaa !1269
  %44 = shl nsw i32 %43, 1, !dbg !1951
  store i32 %44, i32* %42, align 4, !dbg !1952, !tbaa !1269
  br label %45, !dbg !1953

45:                                               ; preds = %32, %41
  ret i32 0, !dbg !1954
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_unprepare(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #4 !dbg !1955 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1957, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1958, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !1960
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !1960
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !1960
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !1962
  %4 = icmp eq i8* %3, null, !dbg !1963
  br i1 %4, label %7, label %5, !dbg !1964

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !1965
  store i8 0, i8* %6, align 1, !dbg !1966, !tbaa !652
  br label %7, !dbg !1967

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !1968
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1969
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1969
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !1971
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !1972
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !1972
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !1974
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1975
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1975
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !1977
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !1978
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !1978
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !1980
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !1981
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !1981
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !1983
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !1984
  br i1 %4, label %14, label %15, !dbg !1986

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !1987
  br label %22, !dbg !1988

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !1989
  %16 = ptrtoint i8* %13 to i32, !dbg !1991
  %17 = ptrtoint i8* %3 to i32, !dbg !1991
  %18 = add i32 %16, 1, !dbg !1991
  %19 = sub i32 %18, %17, !dbg !1992
  %20 = sext i32 %19 to i64, !dbg !1993
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %20) #8, !dbg !1994
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !1995
  br label %22

22:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !1996
  ret i32 0, !dbg !1997
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 !dbg !1998 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2000, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2001, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !2002, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !2003, metadata !DIExpression()), !dbg !2010
  %5 = icmp eq %struct.halide_device_interface_t* %2, null, !dbg !2011
  %6 = icmp eq %struct.halide_device_interface_t* %2, @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, !dbg !2011
  %7 = or i1 %5, %6, !dbg !2011
  br i1 %7, label %9, label %8, !dbg !2011

8:                                                ; preds = %4
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.22, i32 0, i32 0)) #8, !dbg !2014
  tail call void @abort() #8, !dbg !2014
  br label %9, !dbg !2014

9:                                                ; preds = %4, %8
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2016, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2021, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 2, metadata !2024, metadata !DIExpression()), !dbg !2025
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !2027
  %11 = load i64, i64* %10, align 8, !dbg !2027, !tbaa !1345
  %12 = and i64 %11, 2, !dbg !2028
  %13 = icmp eq i64 %12, 0, !dbg !2029
  br i1 %13, label %65, label %14, !dbg !2030

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !2031
  %16 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %15, align 8, !dbg !2031, !tbaa !1211
  %17 = icmp eq %struct.halide_device_interface_t* %16, @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, !dbg !2032
  br i1 %17, label %65, label %18, !dbg !2033

18:                                               ; preds = %14
  br i1 %6, label %20, label %19, !dbg !2034

19:                                               ; preds = %18
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.23, i32 0, i32 0)) #8, !dbg !2036
  tail call void @abort() #8, !dbg !2036
  br label %20, !dbg !2036

20:                                               ; preds = %18, %19
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !2039
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !2039
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !2039
  %21 = tail call i8* @malloc(i32 1024) #8, !dbg !2041
  %22 = icmp eq i8* %21, null, !dbg !2042
  br i1 %22, label %23, label %25, !dbg !2043

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2044
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.24, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2044
  %24 = tail call i8* @halide_string_to_string(i8* %21, i8* null, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.24, i32 0, i32 0)) #8, !dbg !2046
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !2047
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !2049
  br label %34, !dbg !2050

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, i8* %21, i32 1023, !dbg !2051
  store i8 0, i8* %26, align 1, !dbg !2052, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2044
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.24, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2044
  %27 = tail call i8* @halide_string_to_string(i8* nonnull %21, i8* nonnull %26, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.24, i32 0, i32 0)) #8, !dbg !2046
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !2047
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !2053
  %28 = ptrtoint i8* %27 to i32, !dbg !2055
  %29 = ptrtoint i8* %21 to i32, !dbg !2055
  %30 = add i32 %28, 1, !dbg !2055
  %31 = sub i32 %30, %29, !dbg !2056
  %32 = sext i32 %31 to i64, !dbg !2057
  %33 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %21, i64 %32) #8, !dbg !2058
  tail call void @halide_print(i8* %0, i8* nonnull %21) #8, !dbg !2059
  br label %34

34:                                               ; preds = %25, %23
  tail call void @free(i8* %21) #8, !dbg !2060
  %35 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %15, align 8, !dbg !2061, !tbaa !1211
  %36 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %35, i32 0, i32 15, !dbg !2062
  %37 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %36, align 4, !dbg !2062, !tbaa !1213
  %38 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %37, i32 0, i32 10, !dbg !2063
  %39 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)** %38, align 4, !dbg !2063, !tbaa !2064
  %40 = tail call i32 %39(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* null, %struct.halide_buffer_t* %3) #8, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %40, metadata !2004, metadata !DIExpression()), !dbg !2066
  %41 = icmp eq i32 %40, 0, !dbg !2067
  br i1 %41, label %42, label %45, !dbg !2069

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 3
  %44 = load i64, i64* %43, align 8, !dbg !2070, !tbaa !1345
  br label %65, !dbg !2069

45:                                               ; preds = %34
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1049, metadata !DIExpression()) #10, !dbg !2073
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()) #10, !dbg !2073
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()) #10, !dbg !2073
  %46 = tail call i8* @malloc(i32 1024) #8, !dbg !2076
  %47 = icmp eq i8* %46, null, !dbg !2077
  br i1 %47, label %50, label %48, !dbg !2078

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, i8* %46, i32 1023, !dbg !2079
  store i8 0, i8* %49, align 1, !dbg !2080, !tbaa !652
  br label %50, !dbg !2081

50:                                               ; preds = %45, %48
  %51 = phi i8* [ %49, %48 ], [ null, %45 ], !dbg !2082
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !2083
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.25, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !2083
  %52 = tail call i8* @halide_string_to_string(i8* %46, i8* %51, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.25, i32 0, i32 0)) #8, !dbg !2085
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1854, metadata !DIExpression()) #10, !dbg !2086
  call void @llvm.dbg.value(metadata i32 %40, metadata !1857, metadata !DIExpression()) #10, !dbg !2086
  %53 = sext i32 %40 to i64, !dbg !2088
  %54 = tail call i8* @halide_int64_to_string(i8* %52, i8* %51, i64 %53, i32 1) #8, !dbg !2089
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !2090
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !2090
  %55 = tail call i8* @halide_string_to_string(i8* %54, i8* %51, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !2092
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !2093
  br i1 %47, label %56, label %57, !dbg !2095

56:                                               ; preds = %50
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !2096
  br label %64, !dbg !2097

57:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1088, metadata !DIExpression()) #10, !dbg !2098
  %58 = ptrtoint i8* %55 to i32, !dbg !2100
  %59 = ptrtoint i8* %46 to i32, !dbg !2100
  %60 = add i32 %58, 1, !dbg !2100
  %61 = sub i32 %60, %59, !dbg !2101
  %62 = sext i32 %61 to i64, !dbg !2102
  %63 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %46, i64 %62) #8, !dbg !2103
  tail call void @halide_error(i8* %0, i8* nonnull %46) #8, !dbg !2104
  br label %64

64:                                               ; preds = %57, %56
  tail call void @free(i8* %46) #8, !dbg !2105
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2001, metadata !DIExpression()), !dbg !2010
  br label %125

65:                                               ; preds = %42, %14, %9
  %66 = phi i64 [ %11, %14 ], [ %11, %9 ], [ %44, %42 ], !dbg !2070
  %67 = phi %struct.halide_buffer_t* [ %1, %14 ], [ %1, %9 ], [ %3, %42 ]
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %67, metadata !2001, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %67, metadata !2016, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %67, metadata !2021, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i32 2, metadata !2024, metadata !DIExpression()), !dbg !2107
  %68 = and i64 %66, 2, !dbg !2108
  %69 = icmp eq i64 %68, 0, !dbg !2109
  br i1 %69, label %70, label %74, !dbg !2110

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %67, i32 0, i32 2, !dbg !2111
  %72 = load i8*, i8** %71, align 4, !dbg !2111, !tbaa !708
  %73 = icmp eq i8* %72, null, !dbg !2112
  call void @llvm.dbg.value(metadata i1 %73, metadata !2007, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2010
  call void @llvm.dbg.value(metadata i1 %5, metadata !2008, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2010
  br i1 %73, label %74, label %79, !dbg !2113

74:                                               ; preds = %65, %70
  %75 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %67, i32 0, i32 0, !dbg !2113
  %76 = load i64, i64* %75, align 8, !dbg !2113, !tbaa !717
  %77 = icmp eq i64 %76, 0, !dbg !2113
  br i1 %77, label %78, label %79, !dbg !2116

78:                                               ; preds = %74
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.26, i32 0, i32 0)) #8, !dbg !2117
  tail call void @abort() #8, !dbg !2117
  br label %79, !dbg !2117

79:                                               ; preds = %70, %74, %78
  %80 = phi i1 [ true, %70 ], [ false, %74 ], [ false, %78 ]
  br i1 %5, label %86, label %81, !dbg !2119

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0, !dbg !2119
  %83 = load i64, i64* %82, align 8, !dbg !2119, !tbaa !717
  %84 = icmp eq i64 %83, 0, !dbg !2119
  br i1 %84, label %85, label %86, !dbg !2122

85:                                               ; preds = %81
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.27, i32 0, i32 0)) #8, !dbg !2123
  tail call void @abort() #8, !dbg !2123
  br label %86, !dbg !2123

86:                                               ; preds = %79, %81, %85
  %87 = xor i1 %5, %80, !dbg !2125
  br i1 %87, label %89, label %88, !dbg !2125

88:                                               ; preds = %86
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.28, i32 0, i32 0)) #8, !dbg !2128
  tail call void @abort() #8, !dbg !2128
  br label %89, !dbg !2128

89:                                               ; preds = %86, %88
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !2130
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !2130
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !2130
  %90 = tail call i8* @malloc(i32 1024) #8, !dbg !2132
  %91 = icmp eq i8* %90, null, !dbg !2133
  br i1 %91, label %94, label %92, !dbg !2134

92:                                               ; preds = %89
  %93 = getelementptr inbounds i8, i8* %90, i32 1023, !dbg !2135
  store i8 0, i8* %93, align 1, !dbg !2136, !tbaa !652
  br label %94, !dbg !2137

94:                                               ; preds = %89, %92
  %95 = phi i8* [ %93, %92 ], [ null, %89 ], !dbg !2138
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2139
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.29, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2139
  %96 = tail call i8* @halide_string_to_string(i8* %90, i8* %95, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.29, i32 0, i32 0)) #8, !dbg !2141
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !2142
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !2142
  %97 = tail call i8* @halide_pointer_to_string(i8* %96, i8* %95, i8* %0) #8, !dbg !2144
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2145
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2145
  %98 = tail call i8* @halide_string_to_string(i8* %97, i8* %95, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0)) #8, !dbg !2147
  %99 = bitcast %struct.halide_buffer_t* %67 to i8*, !dbg !2148
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !2149
  call void @llvm.dbg.value(metadata i8* %99, metadata !914, metadata !DIExpression()) #10, !dbg !2149
  %100 = tail call i8* @halide_pointer_to_string(i8* %98, i8* %95, i8* %99) #8, !dbg !2151
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2152
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2152
  %101 = tail call i8* @halide_string_to_string(i8* %100, i8* %95, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0)) #8, !dbg !2154
  %102 = bitcast %struct.halide_buffer_t* %3 to i8*, !dbg !2155
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !2156
  call void @llvm.dbg.value(metadata i8* %102, metadata !914, metadata !DIExpression()) #10, !dbg !2156
  %103 = tail call i8* @halide_pointer_to_string(i8* %101, i8* %95, i8* %102) #8, !dbg !2158
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2159
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2159
  %104 = tail call i8* @halide_string_to_string(i8* %103, i8* %95, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !2161
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2162
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2162
  %105 = tail call i8* @halide_string_to_string(i8* %104, i8* %95, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0)) #8, !dbg !2164
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2165, metadata !DIExpression()) #10, !dbg !2169
  call void @llvm.dbg.value(metadata i1 %5, metadata !2168, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2169
  %106 = zext i1 %5 to i64, !dbg !2171
  %107 = tail call i8* @halide_int64_to_string(i8* %105, i8* %95, i64 %106, i32 1) #8, !dbg !2172
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2173
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2173
  %108 = tail call i8* @halide_string_to_string(i8* %107, i8* %95, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0)) #8, !dbg !2175
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2165, metadata !DIExpression()) #10, !dbg !2176
  call void @llvm.dbg.value(metadata i1 %80, metadata !2168, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2176
  %109 = zext i1 %80 to i64, !dbg !2178
  %110 = tail call i8* @halide_int64_to_string(i8* %108, i8* %95, i64 %109, i32 1) #8, !dbg !2179
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2180
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2180
  %111 = tail call i8* @halide_string_to_string(i8* %110, i8* %95, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !2182
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !2183
  br i1 %91, label %112, label %113, !dbg !2185

112:                                              ; preds = %94
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !2186
  br label %120, !dbg !2187

113:                                              ; preds = %94
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !2188
  %114 = ptrtoint i8* %111 to i32, !dbg !2190
  %115 = ptrtoint i8* %90 to i32, !dbg !2190
  %116 = add i32 %114, 1, !dbg !2190
  %117 = sub i32 %116, %115, !dbg !2191
  %118 = sext i32 %117 to i64, !dbg !2192
  %119 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %90, i64 %118) #8, !dbg !2193
  tail call void @halide_print(i8* %0, i8* nonnull %90) #8, !dbg !2194
  br label %120

120:                                              ; preds = %112, %113
  call void @free(i8* %90) #8, !dbg !2195
  br i1 %6, label %121, label %123, !dbg !2196

121:                                              ; preds = %120
  %122 = call fastcc i32 @_ZN12_GLOBAL__N_126halide_hexagon_dma_wrapperEPvP15halide_buffer_tS2_(i8* %0, %struct.halide_buffer_t* %3, %struct.halide_buffer_t* nonnull %67) #9, !dbg !2197
  call void @llvm.dbg.value(metadata i32 %122, metadata !2009, metadata !DIExpression()), !dbg !2010
  br label %125, !dbg !2200

123:                                              ; preds = %120
  %124 = call fastcc i32 @_ZN12_GLOBAL__N_126halide_hexagon_dma_wrapperEPvP15halide_buffer_tS2_(i8* %0, %struct.halide_buffer_t* nonnull %67, %struct.halide_buffer_t* %3) #9, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %124, metadata !2009, metadata !DIExpression()), !dbg !2010
  br label %125

125:                                              ; preds = %64, %121, %123
  %126 = phi i32 [ %40, %64 ], [ %122, %121 ], [ %124, %123 ], !dbg !2010
  ret i32 %126, !dbg !2203
}

; Function Attrs: nounwind
define internal fastcc i32 @_ZN12_GLOBAL__N_126halide_hexagon_dma_wrapperEPvP15halide_buffer_tS2_(i8* %0, %struct.halide_buffer_t* nocapture readonly %1, %struct.halide_buffer_t* nocapture readonly %2) unnamed_addr #4 !dbg !2204 {
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %5 = alloca %struct.stDmaWrapper_RoiAlignInfo, align 2
  %6 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %7 = alloca %struct.stDmaWrapper_DmaTransferSetup, align 4
  %8 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %9 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2208, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2209, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !2210, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* null, metadata !2211, metadata !DIExpression()), !dbg !2245
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !2246
  %11 = load i64, i64* %10, align 8, !dbg !2246, !tbaa !717
  %12 = trunc i64 %11 to i32, !dbg !2247
  %13 = inttoptr i32 %12 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*, !dbg !2247
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, metadata !2211, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !2248
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !2248
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !2248
  %14 = tail call i8* @malloc(i32 1024) #8, !dbg !2250
  %15 = icmp eq i8* %14, null, !dbg !2251
  br i1 %15, label %18, label %16, !dbg !2252

16:                                               ; preds = %3
  %17 = getelementptr inbounds i8, i8* %14, i32 1023, !dbg !2253
  store i8 0, i8* %17, align 1, !dbg !2254, !tbaa !652
  br label %18, !dbg !2255

18:                                               ; preds = %3, %16
  %19 = phi i8* [ %17, %16 ], [ null, %3 ], !dbg !2256
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2257
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2257
  %20 = tail call i8* @halide_string_to_string(i8* %14, i8* %19, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i32 0, i32 0)) #8, !dbg !2259
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i32 0, i32 0, !dbg !2260
  %22 = load i8*, i8** %21, align 4, !dbg !2260, !tbaa !1258
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !2261
  call void @llvm.dbg.value(metadata i8* %22, metadata !914, metadata !DIExpression()) #10, !dbg !2261
  %23 = tail call i8* @halide_pointer_to_string(i8* %20, i8* %19, i8* %22) #8, !dbg !2263
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2264
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2264
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %19, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i32 0, i32 0)) #8, !dbg !2266
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i32 0, i32 1, !dbg !2267
  %26 = load i16, i16* %25, align 4, !dbg !2267, !tbaa !1230
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2165, metadata !DIExpression()) #10, !dbg !2268
  call void @llvm.dbg.value(metadata i16 %26, metadata !2168, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2268
  %27 = zext i16 %26 to i64, !dbg !2270
  %28 = tail call i8* @halide_int64_to_string(i8* %24, i8* %19, i64 %27, i32 1) #8, !dbg !2271
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2272
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2272
  %29 = tail call i8* @halide_string_to_string(i8* %28, i8* %19, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0)) #8, !dbg !2274
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i32 0, i32 2, !dbg !2275
  %31 = load i16, i16* %30, align 2, !dbg !2275, !tbaa !1236
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2165, metadata !DIExpression()) #10, !dbg !2276
  call void @llvm.dbg.value(metadata i16 %31, metadata !2168, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2276
  %32 = zext i16 %31 to i64, !dbg !2278
  %33 = tail call i8* @halide_int64_to_string(i8* %29, i8* %19, i64 %32, i32 1) #8, !dbg !2279
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2280
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2280
  %34 = tail call i8* @halide_string_to_string(i8* %33, i8* %19, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)) #8, !dbg !2282
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2283
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2283
  %35 = tail call i8* @halide_string_to_string(i8* %34, i8* %19, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0)) #8, !dbg !2285
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i32 0, i32 3, !dbg !2286
  %37 = load i16, i16* %36, align 4, !dbg !2286, !tbaa !1239
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2165, metadata !DIExpression()) #10, !dbg !2287
  call void @llvm.dbg.value(metadata i16 %37, metadata !2168, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2287
  %38 = zext i16 %37 to i64, !dbg !2289
  %39 = tail call i8* @halide_int64_to_string(i8* %35, i8* %19, i64 %38, i32 1) #8, !dbg !2290
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2291
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2291
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %19, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0)) #8, !dbg !2293
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i32 0, i32 4, !dbg !2294
  %42 = load i16, i16* %41, align 2, !dbg !2294, !tbaa !1242
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2165, metadata !DIExpression()) #10, !dbg !2295
  call void @llvm.dbg.value(metadata i16 %42, metadata !2168, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2295
  %43 = zext i16 %42 to i64, !dbg !2297
  %44 = tail call i8* @halide_int64_to_string(i8* %40, i8* %19, i64 %43, i32 1) #8, !dbg !2298
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2299
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2299
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %19, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)) #8, !dbg !2301
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2302
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2302
  %46 = tail call i8* @halide_string_to_string(i8* %45, i8* %19, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0)) #8, !dbg !2304
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i32 0, i32 6, !dbg !2305
  %48 = load i32, i32* %47, align 4, !dbg !2305, !tbaa !1266
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2165, metadata !DIExpression()) #10, !dbg !2306
  call void @llvm.dbg.value(metadata i32 %48, metadata !2168, metadata !DIExpression()) #10, !dbg !2306
  %49 = sext i32 %48 to i64, !dbg !2308
  %50 = tail call i8* @halide_int64_to_string(i8* %46, i8* %19, i64 %49, i32 1) #8, !dbg !2309
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2310
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2310
  %51 = tail call i8* @halide_string_to_string(i8* %50, i8* %19, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0)) #8, !dbg !2312
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i32 0, i32 7, !dbg !2313
  %53 = load i32, i32* %52, align 4, !dbg !2313, !tbaa !1269
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2165, metadata !DIExpression()) #10, !dbg !2314
  call void @llvm.dbg.value(metadata i32 %53, metadata !2168, metadata !DIExpression()) #10, !dbg !2314
  %54 = sext i32 %53 to i64, !dbg !2316
  %55 = tail call i8* @halide_int64_to_string(i8* %51, i8* %19, i64 %54, i32 1) #8, !dbg !2317
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2318
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2318
  %56 = tail call i8* @halide_string_to_string(i8* %55, i8* %19, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0)) #8, !dbg !2320
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i32 0, i32 8, !dbg !2321
  %58 = load i32, i32* %57, align 4, !dbg !2321, !tbaa !1272
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2165, metadata !DIExpression()) #10, !dbg !2322
  call void @llvm.dbg.value(metadata i32 %58, metadata !2168, metadata !DIExpression()) #10, !dbg !2322
  %59 = sext i32 %58 to i64, !dbg !2324
  %60 = tail call i8* @halide_int64_to_string(i8* %56, i8* %19, i64 %59, i32 1) #8, !dbg !2325
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2326
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2326
  %61 = tail call i8* @halide_string_to_string(i8* %60, i8* %19, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)) #8, !dbg !2328
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2329
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2329
  %62 = tail call i8* @halide_string_to_string(i8* %61, i8* %19, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !2331
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !2332
  br i1 %15, label %63, label %64, !dbg !2334

63:                                               ; preds = %18
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !2335
  br label %71, !dbg !2336

64:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !2337
  %65 = ptrtoint i8* %62 to i32, !dbg !2339
  %66 = ptrtoint i8* %14 to i32, !dbg !2339
  %67 = add i32 %65, 1, !dbg !2339
  %68 = sub i32 %67, %66, !dbg !2340
  %69 = sext i32 %68 to i64, !dbg !2341
  %70 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %14, i64 %69) #8, !dbg !2342
  tail call void @halide_print(i8* %0, i8* nonnull %14) #8, !dbg !2343
  br label %71

71:                                               ; preds = %64, %63
  call void @free(i8* %14) #8, !dbg !2344
  %72 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*, !dbg !2345
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %72) #10, !dbg !2345
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !613, metadata !DIExpression()) #10, !dbg !2346
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !2346
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !2346
  %73 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 3, !dbg !2348
  store i8* %0, i8** %73, align 4, !dbg !2348, !tbaa !2349
  %74 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 4, !dbg !2351
  store i8 1, i8* %74, align 4, !dbg !2351, !tbaa !2352
  %75 = call i8* @malloc(i32 1024) #8, !dbg !2353
  %76 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 0, !dbg !2354
  store i8* %75, i8** %76, align 4, !dbg !2355, !tbaa !2356
  %77 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 1, !dbg !2357
  %78 = icmp eq i8* %75, null, !dbg !2358
  br i1 %78, label %81, label %79, !dbg !2359

79:                                               ; preds = %71
  %80 = getelementptr inbounds i8, i8* %75, i32 1023, !dbg !2360
  store i8 0, i8* %80, align 1, !dbg !2361, !tbaa !652
  br label %81, !dbg !2362

81:                                               ; preds = %71, %79
  %82 = phi i8* [ %80, %79 ], [ null, %71 ], !dbg !2363
  %83 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i32 0, i32 2, !dbg !2364
  store i8* %82, i8** %83, align 4, !dbg !2366
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !630, metadata !DIExpression()) #10, !dbg !2367
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.74, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2367
  %84 = call i8* @halide_string_to_string(i8* %75, i8* %82, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.74, i32 0, i32 0)) #8, !dbg !2369
  store i8* %84, i8** %77, align 4, !dbg !2370, !tbaa !2371
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !972, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !977, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i32 0, metadata !980, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !2376
  %85 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !2377
  %86 = load i32, i32* %85, align 4, !dbg !2377, !tbaa !752
  %87 = icmp sgt i32 %86, 0, !dbg !2378
  br i1 %87, label %91, label %88, !dbg !2379

88:                                               ; preds = %81
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !2380
  %89 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !2382
  %90 = load i8, i8* %89, align 1, !dbg !2382, !tbaa !733
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !993, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 0, metadata !996, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 0, metadata !997, metadata !DIExpression()), !dbg !2385
  br label %129, !dbg !2386

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %93 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %92, align 8, !tbaa !755
  br label %94, !dbg !2379

94:                                               ; preds = %106, %91
  %95 = phi i32 [ 0, %91 ], [ %108, %106 ]
  %96 = phi i32 [ 0, %91 ], [ %107, %106 ]
  call void @llvm.dbg.value(metadata i32 %95, metadata !981, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %96, metadata !980, metadata !DIExpression()), !dbg !2374
  %97 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %93, i32 %95, i32 2, !dbg !2387
  %98 = load i32, i32* %97, align 4, !dbg !2387, !tbaa !763
  %99 = icmp sgt i32 %98, 0, !dbg !2388
  br i1 %99, label %100, label %106, !dbg !2389

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %93, i32 %95, i32 1, !dbg !2390
  %102 = load i32, i32* %101, align 4, !dbg !2390, !tbaa !827
  %103 = add nsw i32 %102, -1, !dbg !2391
  %104 = mul nsw i32 %103, %98, !dbg !2392
  %105 = add nsw i32 %104, %96, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %105, metadata !980, metadata !DIExpression()), !dbg !2374
  br label %106, !dbg !2394

106:                                              ; preds = %100, %94
  %107 = phi i32 [ %105, %100 ], [ %96, %94 ], !dbg !2374
  call void @llvm.dbg.value(metadata i32 %107, metadata !980, metadata !DIExpression()), !dbg !2374
  %108 = add nuw nsw i32 %95, 1, !dbg !2395
  call void @llvm.dbg.value(metadata i32 %108, metadata !981, metadata !DIExpression()), !dbg !2376
  %109 = icmp slt i32 %108, %86, !dbg !2378
  br i1 %109, label %94, label %110, !dbg !2379, !llvm.loop !2396

110:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i32 %107, metadata !980, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2374
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !2380
  %111 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !2382
  %112 = load i8, i8* %111, align 1, !dbg !2382, !tbaa !733
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !993, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 0, metadata !996, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 0, metadata !997, metadata !DIExpression()), !dbg !2385
  br label %113, !dbg !2386

113:                                              ; preds = %125, %110
  %114 = phi i32 [ 0, %110 ], [ %127, %125 ]
  %115 = phi i32 [ 0, %110 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i32 %114, metadata !997, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i32 %115, metadata !996, metadata !DIExpression()), !dbg !2383
  %116 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %93, i32 %114, i32 2, !dbg !2398
  %117 = load i32, i32* %116, align 4, !dbg !2398, !tbaa !763
  %118 = icmp slt i32 %117, 0, !dbg !2399
  br i1 %118, label %119, label %125, !dbg !2400

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %93, i32 %114, i32 1, !dbg !2401
  %121 = load i32, i32* %120, align 4, !dbg !2401, !tbaa !827
  %122 = add nsw i32 %121, -1, !dbg !2402
  %123 = mul nsw i32 %122, %117, !dbg !2403
  %124 = add nsw i32 %123, %115, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %124, metadata !996, metadata !DIExpression()), !dbg !2383
  br label %125, !dbg !2405

125:                                              ; preds = %119, %113
  %126 = phi i32 [ %124, %119 ], [ %115, %113 ], !dbg !2383
  call void @llvm.dbg.value(metadata i32 %126, metadata !996, metadata !DIExpression()), !dbg !2383
  %127 = add nuw nsw i32 %114, 1, !dbg !2406
  call void @llvm.dbg.value(metadata i32 %127, metadata !997, metadata !DIExpression()), !dbg !2385
  %128 = icmp slt i32 %127, %86, !dbg !2407
  br i1 %128, label %113, label %129, !dbg !2386, !llvm.loop !2408

129:                                              ; preds = %125, %88
  %130 = phi i8 [ %90, %88 ], [ %112, %125 ]
  %131 = phi i32 [ 0, %88 ], [ %107, %125 ]
  %132 = phi i32 [ 0, %88 ], [ %126, %125 ], !dbg !2383
  %133 = zext i8 %130 to i32, !dbg !2382
  %134 = add nuw nsw i32 %133, 7, !dbg !2410
  %135 = lshr i32 %134, 3, !dbg !2411
  %136 = add nsw i32 %131, 1, !dbg !2412
  call void @llvm.dbg.value(metadata i32 %136, metadata !980, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !2413
  %137 = sub i32 %136, %132, !dbg !2415
  %138 = mul i32 %137, %135, !dbg !2415
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !2416, metadata !DIExpression()) #10, !dbg !2420
  call void @llvm.dbg.value(metadata i32 %138, metadata !2419, metadata !DIExpression()) #10, !dbg !2420
  %139 = load i8*, i8** %83, align 4, !dbg !2422, !tbaa !2423
  %140 = zext i32 %138 to i64, !dbg !2424
  %141 = call i8* @halide_uint64_to_string(i8* %84, i8* %139, i64 %140, i32 1) #8, !dbg !2425
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !630, metadata !DIExpression()) #10, !dbg !2426
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2426
  %142 = call i8* @halide_string_to_string(i8* %141, i8* %139, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)) #8, !dbg !2428
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !972, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !977, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i32 0, metadata !980, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !2433
  %143 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 5, !dbg !2434
  %144 = load i32, i32* %143, align 4, !dbg !2434, !tbaa !752
  %145 = icmp sgt i32 %144, 0, !dbg !2435
  br i1 %145, label %149, label %146, !dbg !2436

146:                                              ; preds = %129
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !2437
  %147 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 4, i32 1, !dbg !2439
  %148 = load i8, i8* %147, align 1, !dbg !2439, !tbaa !733
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !993, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 0, metadata !996, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 0, metadata !997, metadata !DIExpression()), !dbg !2442
  br label %187, !dbg !2443

149:                                              ; preds = %129
  %150 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 6
  %151 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %150, align 8, !tbaa !755
  br label %152, !dbg !2436

152:                                              ; preds = %164, %149
  %153 = phi i32 [ 0, %149 ], [ %166, %164 ]
  %154 = phi i32 [ 0, %149 ], [ %165, %164 ]
  call void @llvm.dbg.value(metadata i32 %153, metadata !981, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %154, metadata !980, metadata !DIExpression()), !dbg !2431
  %155 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %151, i32 %153, i32 2, !dbg !2444
  %156 = load i32, i32* %155, align 4, !dbg !2444, !tbaa !763
  %157 = icmp sgt i32 %156, 0, !dbg !2445
  br i1 %157, label %158, label %164, !dbg !2446

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %151, i32 %153, i32 1, !dbg !2447
  %160 = load i32, i32* %159, align 4, !dbg !2447, !tbaa !827
  %161 = add nsw i32 %160, -1, !dbg !2448
  %162 = mul nsw i32 %161, %156, !dbg !2449
  %163 = add nsw i32 %162, %154, !dbg !2450
  call void @llvm.dbg.value(metadata i32 %163, metadata !980, metadata !DIExpression()), !dbg !2431
  br label %164, !dbg !2451

164:                                              ; preds = %158, %152
  %165 = phi i32 [ %163, %158 ], [ %154, %152 ], !dbg !2431
  call void @llvm.dbg.value(metadata i32 %165, metadata !980, metadata !DIExpression()), !dbg !2431
  %166 = add nuw nsw i32 %153, 1, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %166, metadata !981, metadata !DIExpression()), !dbg !2433
  %167 = icmp slt i32 %166, %144, !dbg !2435
  br i1 %167, label %152, label %168, !dbg !2436, !llvm.loop !2453

168:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i32 %165, metadata !980, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2431
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !2437
  %169 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 4, i32 1, !dbg !2439
  %170 = load i8, i8* %169, align 1, !dbg !2439, !tbaa !733
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !993, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 0, metadata !996, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 0, metadata !997, metadata !DIExpression()), !dbg !2442
  br label %171, !dbg !2443

171:                                              ; preds = %183, %168
  %172 = phi i32 [ 0, %168 ], [ %185, %183 ]
  %173 = phi i32 [ 0, %168 ], [ %184, %183 ]
  call void @llvm.dbg.value(metadata i32 %172, metadata !997, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i32 %173, metadata !996, metadata !DIExpression()), !dbg !2440
  %174 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %151, i32 %172, i32 2, !dbg !2455
  %175 = load i32, i32* %174, align 4, !dbg !2455, !tbaa !763
  %176 = icmp slt i32 %175, 0, !dbg !2456
  br i1 %176, label %177, label %183, !dbg !2457

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %151, i32 %172, i32 1, !dbg !2458
  %179 = load i32, i32* %178, align 4, !dbg !2458, !tbaa !827
  %180 = add nsw i32 %179, -1, !dbg !2459
  %181 = mul nsw i32 %180, %175, !dbg !2460
  %182 = add nsw i32 %181, %173, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %182, metadata !996, metadata !DIExpression()), !dbg !2440
  br label %183, !dbg !2462

183:                                              ; preds = %177, %171
  %184 = phi i32 [ %182, %177 ], [ %173, %171 ], !dbg !2440
  call void @llvm.dbg.value(metadata i32 %184, metadata !996, metadata !DIExpression()), !dbg !2440
  %185 = add nuw nsw i32 %172, 1, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %185, metadata !997, metadata !DIExpression()), !dbg !2442
  %186 = icmp slt i32 %185, %144, !dbg !2464
  br i1 %186, label %171, label %187, !dbg !2443, !llvm.loop !2465

187:                                              ; preds = %183, %146
  %188 = phi i8 [ %148, %146 ], [ %170, %183 ]
  %189 = phi i32 [ 0, %146 ], [ %165, %183 ]
  %190 = phi i32 [ 0, %146 ], [ %184, %183 ], !dbg !2440
  %191 = zext i8 %188 to i32, !dbg !2439
  %192 = add nuw nsw i32 %191, 7, !dbg !2467
  %193 = lshr i32 %192, 3, !dbg !2468
  %194 = add nsw i32 %189, 1, !dbg !2469
  call void @llvm.dbg.value(metadata i32 %194, metadata !980, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !2470
  %195 = sub i32 %194, %190, !dbg !2472
  %196 = mul i32 %195, %193, !dbg !2472
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !2416, metadata !DIExpression()) #10, !dbg !2473
  call void @llvm.dbg.value(metadata i32 %196, metadata !2419, metadata !DIExpression()) #10, !dbg !2473
  %197 = load i8*, i8** %83, align 4, !dbg !2475, !tbaa !2423
  %198 = zext i32 %196 to i64, !dbg !2476
  %199 = call i8* @halide_uint64_to_string(i8* %142, i8* %197, i64 %198, i32 1) #8, !dbg !2477
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !630, metadata !DIExpression()) #10, !dbg !2478
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2478
  %200 = call i8* @halide_string_to_string(i8* %199, i8* %197, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !2480
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !639, metadata !DIExpression()) #10, !dbg !2481
  %201 = load i8*, i8** %76, align 4, !dbg !2483, !tbaa !2356
  %202 = icmp eq i8* %201, null, !dbg !2483
  %203 = load i8*, i8** %73, align 4, !dbg !2484, !tbaa !2349
  br i1 %202, label %204, label %205, !dbg !2485

204:                                              ; preds = %187
  call void @halide_error(i8* %203, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !2486
  br label %214, !dbg !2487

205:                                              ; preds = %187
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !2488
  %206 = ptrtoint i8* %200 to i32, !dbg !2490
  %207 = ptrtoint i8* %201 to i32, !dbg !2490
  %208 = add i32 %206, 1, !dbg !2490
  %209 = sub i32 %208, %207, !dbg !2491
  %210 = sext i32 %209 to i64, !dbg !2492
  %211 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %203, i8* nonnull %201, i64 %210) #8, !dbg !2493
  %212 = load i8*, i8** %73, align 4, !dbg !2494, !tbaa !2349
  %213 = load i8*, i8** %76, align 4, !dbg !2495, !tbaa !2356
  call void @halide_print(i8* %212, i8* %213) #8, !dbg !2496
  br label %214

214:                                              ; preds = %205, %204
  %215 = load i8, i8* %74, align 4, !dbg !2497, !tbaa !2352, !range !2498
  %216 = icmp eq i8 %215, 0, !dbg !2497
  br i1 %216, label %219, label %217, !dbg !2499

217:                                              ; preds = %214
  %218 = load i8*, i8** %76, align 4, !dbg !2500, !tbaa !2356
  call void @free(i8* %218) #8, !dbg !2501
  br label %219, !dbg !2502

219:                                              ; preds = %214, %217
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %72) #10, !dbg !2345
  %220 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i32 0, i32 11, !dbg !2503
  %221 = load i32, i32* %220, align 4, !dbg !2503, !tbaa !1252
  %222 = icmp eq i32 %221, 0, !dbg !2505
  br i1 %222, label %223, label %228, !dbg !2506

223:                                              ; preds = %219
  %224 = load i32, i32* %85, align 4, !dbg !2507, !tbaa !752
  %225 = icmp slt i32 %224, 4, !dbg !2507
  br i1 %225, label %269, label %226, !dbg !2511

226:                                              ; preds = %223
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.75, i32 0, i32 0)) #8, !dbg !2512
  call void @abort() #8, !dbg !2512
  %227 = load i32, i32* %220, align 4, !dbg !2514, !tbaa !1252
  br label %228, !dbg !2512

228:                                              ; preds = %226, %219
  %229 = phi i32 [ %227, %226 ], [ %221, %219 ], !dbg !2514
  switch i32 %229, label %235 [
    i32 2, label %230
    i32 5, label %230
    i32 8, label %230
    i32 11, label %230
  ], !dbg !2516

230:                                              ; preds = %228, %228, %228, %228
  %231 = load i32, i32* %85, align 4, !dbg !2517, !tbaa !752
  %232 = icmp eq i32 %231, 2, !dbg !2517
  br i1 %232, label %235, label %233, !dbg !2521

233:                                              ; preds = %230
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.76, i32 0, i32 0)) #8, !dbg !2522
  call void @abort() #8, !dbg !2522
  %234 = load i32, i32* %220, align 4, !dbg !2524, !tbaa !1252
  br label %235, !dbg !2522

235:                                              ; preds = %228, %230, %233
  %236 = phi i32 [ %229, %228 ], [ %229, %230 ], [ %234, %233 ], !dbg !2524
  switch i32 %236, label %269 [
    i32 3, label %237
    i32 6, label %237
    i32 9, label %237
    i32 12, label %237
  ], !dbg !2526

237:                                              ; preds = %235, %235, %235, %235
  %238 = load i32, i32* %85, align 4, !dbg !2527, !tbaa !752
  %239 = icmp eq i32 %238, 3, !dbg !2527
  br i1 %239, label %241, label %240, !dbg !2531

240:                                              ; preds = %237
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.77, i32 0, i32 0)) #8, !dbg !2532
  call void @abort() #8, !dbg !2532
  br label %241, !dbg !2532

241:                                              ; preds = %237, %240
  %242 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6, !dbg !2534
  %243 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %242, align 8, !dbg !2534, !tbaa !755
  %244 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %243, i32 0, i32 2, !dbg !2534
  %245 = load i32, i32* %244, align 4, !dbg !2534, !tbaa !763
  %246 = icmp eq i32 %245, 2, !dbg !2534
  br i1 %246, label %249, label %247, !dbg !2537

247:                                              ; preds = %241
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.78, i32 0, i32 0)) #8, !dbg !2538
  call void @abort() #8, !dbg !2538
  %248 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %242, align 8, !dbg !2540, !tbaa !755
  br label %249, !dbg !2538

249:                                              ; preds = %241, %247
  %250 = phi %struct.halide_dimension_t* [ %243, %241 ], [ %248, %247 ], !dbg !2540
  %251 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %250, i32 2, i32 2, !dbg !2540
  %252 = load i32, i32* %251, align 4, !dbg !2540, !tbaa !763
  %253 = icmp eq i32 %252, 1, !dbg !2540
  br i1 %253, label %256, label %254, !dbg !2543

254:                                              ; preds = %249
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.79, i32 0, i32 0)) #8, !dbg !2544
  call void @abort() #8, !dbg !2544
  %255 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %242, align 8, !dbg !2546, !tbaa !755
  br label %256, !dbg !2544

256:                                              ; preds = %249, %254
  %257 = phi %struct.halide_dimension_t* [ %250, %249 ], [ %255, %254 ], !dbg !2546
  %258 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %257, i32 2, i32 0, !dbg !2546
  %259 = load i32, i32* %258, align 4, !dbg !2546, !tbaa !767
  %260 = icmp eq i32 %259, 0, !dbg !2546
  br i1 %260, label %263, label %261, !dbg !2549

261:                                              ; preds = %256
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.80, i32 0, i32 0)) #8, !dbg !2550
  call void @abort() #8, !dbg !2550
  %262 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %242, align 8, !dbg !2552, !tbaa !755
  br label %263, !dbg !2550

263:                                              ; preds = %256, %261
  %264 = phi %struct.halide_dimension_t* [ %257, %256 ], [ %262, %261 ], !dbg !2552
  %265 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %264, i32 2, i32 1, !dbg !2552
  %266 = load i32, i32* %265, align 4, !dbg !2552, !tbaa !827
  %267 = icmp eq i32 %266, 2, !dbg !2552
  br i1 %267, label %269, label %268, !dbg !2555

268:                                              ; preds = %263
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.81, i32 0, i32 0)) #8, !dbg !2556
  call void @abort() #8, !dbg !2556
  br label %269, !dbg !2556

269:                                              ; preds = %223, %235, %263, %268
  %270 = bitcast %struct.stDmaWrapper_RoiAlignInfo* %5 to i8*, !dbg !2558
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %270) #10, !dbg !2558
  call void @llvm.dbg.declare(metadata %struct.stDmaWrapper_RoiAlignInfo* %5, metadata !2212, metadata !DIExpression()), !dbg !2559
  %271 = getelementptr inbounds %struct.stDmaWrapper_RoiAlignInfo, %struct.stDmaWrapper_RoiAlignInfo* %5, i32 0, i32 0, !dbg !2560
  %272 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 6, !dbg !2561
  %273 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %272, align 8, !dbg !2561, !tbaa !755
  %274 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %273, i32 0, i32 1, !dbg !2562
  %275 = load i32, i32* %274, align 4, !dbg !2562, !tbaa !827
  %276 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %273, i32 0, i32 2, !dbg !2563
  %277 = load i32, i32* %276, align 4, !dbg !2563, !tbaa !763
  %278 = mul nsw i32 %277, %275, !dbg !2564
  %279 = trunc i32 %278 to i16, !dbg !2565
  store i16 %279, i16* %271, align 2, !dbg !2560, !tbaa !2566
  %280 = getelementptr inbounds %struct.stDmaWrapper_RoiAlignInfo, %struct.stDmaWrapper_RoiAlignInfo* %5, i32 0, i32 1, !dbg !2560
  %281 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %273, i32 1, i32 1, !dbg !2568
  %282 = load i32, i32* %281, align 4, !dbg !2568, !tbaa !827
  %283 = trunc i32 %282 to i16, !dbg !2569
  store i16 %283, i16* %280, align 2, !dbg !2560, !tbaa !2570
  %284 = load i32, i32* %220, align 4, !dbg !2571, !tbaa !1252
  %285 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i32 0, i32 9, !dbg !2572
  %286 = load i8, i8* %285, align 4, !dbg !2572, !tbaa !1249, !range !2498
  %287 = icmp ne i8 %286, 0, !dbg !2572
  %288 = call i32 @nDmaWrapper_GetRecommendedWalkSize(i32 %284, i1 zeroext %287, %struct.stDmaWrapper_RoiAlignInfo* nonnull %5) #8, !dbg !2573
  call void @llvm.dbg.value(metadata i32 %288, metadata !2218, metadata !DIExpression()), !dbg !2245
  %289 = load i32, i32* %220, align 4, !dbg !2574, !tbaa !1252
  %290 = load i8, i8* %285, align 4, !dbg !2575, !tbaa !1249, !range !2498
  %291 = icmp ne i8 %290, 0, !dbg !2575
  %292 = call i32 @nDmaWrapper_GetRecommendedIntermBufStride(i32 %289, %struct.stDmaWrapper_RoiAlignInfo* nonnull %5, i1 zeroext %291) #8, !dbg !2576
  call void @llvm.dbg.value(metadata i32 %292, metadata !2219, metadata !DIExpression()), !dbg !2245
  %293 = load i16, i16* %271, align 2, !dbg !2577, !tbaa !2566
  call void @llvm.dbg.value(metadata i16 %293, metadata !2220, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2245
  %294 = load i16, i16* %280, align 2, !dbg !2578, !tbaa !2570
  %295 = zext i16 %294 to i32, !dbg !2579
  call void @llvm.dbg.value(metadata i32 %295, metadata !2221, metadata !DIExpression()), !dbg !2245
  %296 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6 to i8*, !dbg !2580
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %296) #10, !dbg !2580
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !613, metadata !DIExpression()) #10, !dbg !2581
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !2581
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !2581
  %297 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 3, !dbg !2583
  store i8* %0, i8** %297, align 4, !dbg !2583, !tbaa !2349
  %298 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 4, !dbg !2584
  store i8 1, i8* %298, align 4, !dbg !2584, !tbaa !2352
  %299 = call i8* @malloc(i32 1024) #8, !dbg !2585
  %300 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 0, !dbg !2586
  store i8* %299, i8** %300, align 4, !dbg !2587, !tbaa !2356
  %301 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 1, !dbg !2588
  store i8* %299, i8** %301, align 4, !dbg !2589, !tbaa !2371
  %302 = icmp eq i8* %299, null, !dbg !2590
  br i1 %302, label %305, label %303, !dbg !2591

303:                                              ; preds = %269
  %304 = getelementptr inbounds i8, i8* %299, i32 1023, !dbg !2592
  store i8 0, i8* %304, align 1, !dbg !2593, !tbaa !652
  br label %305, !dbg !2594

305:                                              ; preds = %269, %303
  %306 = phi i8* [ %304, %303 ], [ null, %269 ], !dbg !2595
  %307 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 2, !dbg !2596
  store i8* %306, i8** %307, align 4, !dbg !2597
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !630, metadata !DIExpression()) #10, !dbg !2598
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.82, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2598
  %308 = call i8* @halide_string_to_string(i8* %299, i8* %306, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.82, i32 0, i32 0)) #8, !dbg !2600
  store i8* %308, i8** %301, align 4, !dbg !2601, !tbaa !2371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !2165, metadata !DIExpression()) #10, !dbg !2602
  call void @llvm.dbg.value(metadata i16 %293, metadata !2168, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2602
  %309 = load i8*, i8** %307, align 4, !dbg !2604, !tbaa !2423
  %310 = zext i16 %293 to i64, !dbg !2605
  %311 = call i8* @halide_int64_to_string(i8* %308, i8* %309, i64 %310, i32 1) #8, !dbg !2606
  store i8* %311, i8** %301, align 4, !dbg !2607, !tbaa !2371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !630, metadata !DIExpression()) #10, !dbg !2608
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2608
  %312 = load i8*, i8** %307, align 4, !dbg !2610, !tbaa !2423
  %313 = call i8* @halide_string_to_string(i8* %311, i8* %312, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0)) #8, !dbg !2611
  store i8* %313, i8** %301, align 4, !dbg !2612, !tbaa !2371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !2165, metadata !DIExpression()) #10, !dbg !2613
  call void @llvm.dbg.value(metadata i32 %295, metadata !2168, metadata !DIExpression()) #10, !dbg !2613
  %314 = load i8*, i8** %307, align 4, !dbg !2615, !tbaa !2423
  %315 = zext i16 %294 to i64, !dbg !2616
  %316 = call i8* @halide_int64_to_string(i8* %313, i8* %314, i64 %315, i32 1) #8, !dbg !2617
  store i8* %316, i8** %301, align 4, !dbg !2618, !tbaa !2371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !630, metadata !DIExpression()) #10, !dbg !2619
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2619
  %317 = load i8*, i8** %307, align 4, !dbg !2621, !tbaa !2423
  %318 = call i8* @halide_string_to_string(i8* %316, i8* %317, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0)) #8, !dbg !2622
  store i8* %318, i8** %301, align 4, !dbg !2623, !tbaa !2371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !2165, metadata !DIExpression()) #10, !dbg !2624
  call void @llvm.dbg.value(metadata i32 %292, metadata !2168, metadata !DIExpression()) #10, !dbg !2624
  %319 = load i8*, i8** %307, align 4, !dbg !2626, !tbaa !2423
  %320 = sext i32 %292 to i64, !dbg !2627
  %321 = call i8* @halide_int64_to_string(i8* %318, i8* %319, i64 %320, i32 1) #8, !dbg !2628
  store i8* %321, i8** %301, align 4, !dbg !2629, !tbaa !2371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !630, metadata !DIExpression()) #10, !dbg !2630
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2630
  %322 = load i8*, i8** %307, align 4, !dbg !2632, !tbaa !2423
  %323 = call i8* @halide_string_to_string(i8* %321, i8* %322, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !2633
  store i8* %323, i8** %301, align 4, !dbg !2634, !tbaa !2371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !639, metadata !DIExpression()) #10, !dbg !2635
  %324 = load i8*, i8** %300, align 4, !dbg !2637, !tbaa !2356
  %325 = icmp eq i8* %324, null, !dbg !2637
  %326 = load i8*, i8** %297, align 4, !dbg !2638, !tbaa !2349
  br i1 %325, label %327, label %328, !dbg !2639

327:                                              ; preds = %305
  call void @halide_error(i8* %326, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !2640
  br label %337, !dbg !2641

328:                                              ; preds = %305
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !2642
  %329 = ptrtoint i8* %323 to i32, !dbg !2644
  %330 = ptrtoint i8* %324 to i32, !dbg !2644
  %331 = add i32 %329, 1, !dbg !2644
  %332 = sub i32 %331, %330, !dbg !2645
  %333 = sext i32 %332 to i64, !dbg !2646
  %334 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %326, i8* nonnull %324, i64 %333) #8, !dbg !2647
  %335 = load i8*, i8** %297, align 4, !dbg !2648, !tbaa !2349
  %336 = load i8*, i8** %300, align 4, !dbg !2649, !tbaa !2356
  call void @halide_print(i8* %335, i8* %336) #8, !dbg !2650
  br label %337

337:                                              ; preds = %328, %327
  %338 = load i8, i8* %298, align 4, !dbg !2651, !tbaa !2352, !range !2498
  %339 = icmp eq i8 %338, 0, !dbg !2651
  br i1 %339, label %345, label %340, !dbg !2652

340:                                              ; preds = %337
  %341 = load i8*, i8** %300, align 4, !dbg !2653, !tbaa !2356
  %342 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i32 0, i32 5, i32 0, !dbg !2654
  %343 = icmp eq i8* %341, %342, !dbg !2655
  br i1 %343, label %345, label %344, !dbg !2656

344:                                              ; preds = %340
  call void @free(i8* %341) #8, !dbg !2657
  br label %345, !dbg !2658

345:                                              ; preds = %337, %340, %344
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %296) #10, !dbg !2580
  %346 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %272, align 8, !dbg !2659, !tbaa !755
  %347 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %346, i32 1, i32 2, !dbg !2661
  %348 = load i32, i32* %347, align 4, !dbg !2661, !tbaa !763
  %349 = icmp sgt i32 %348, %292, !dbg !2662
  %350 = select i1 %349, i32 %348, i32 %292, !dbg !2663
  call void @llvm.dbg.value(metadata i32 %350, metadata !2219, metadata !DIExpression()), !dbg !2245
  %351 = srem i32 %348, %350, !dbg !2664
  %352 = icmp eq i32 %351, 0, !dbg !2664
  br i1 %352, label %354, label %353, !dbg !2667

353:                                              ; preds = %345
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.83, i32 0, i32 0)) #8, !dbg !2668
  call void @abort() #8, !dbg !2668
  br label %354, !dbg !2668

354:                                              ; preds = %353, %345
  call void @llvm.dbg.value(metadata i8* %0, metadata !2670, metadata !DIExpression()) #10, !dbg !2677
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1644, metadata !DIExpression()) #10, !dbg !2679
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE, metadata !1647, metadata !DIExpression()) #10, !dbg !2679
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE, metadata !2673, metadata !DIExpression()) #10, !dbg !2677
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #8, !dbg !2681
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* undef, metadata !2674, metadata !DIExpression()) #10, !dbg !2677
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* null, metadata !2675, metadata !DIExpression()) #10, !dbg !2677
  %355 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 4, !dbg !2677, !tbaa !1504
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %355, metadata !2674, metadata !DIExpression()) #10, !dbg !2677
  %356 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %355, null, !dbg !2682
  br i1 %356, label %368, label %357, !dbg !2683

357:                                              ; preds = %354, %364
  %358 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ %366, %364 ], [ %355, %354 ]
  %359 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %358, i32 0, i32 1, !dbg !2684
  %360 = load i8, i8* %359, align 4, !dbg !2684, !tbaa !2687, !range !2498
  %361 = icmp eq i8 %360, 0, !dbg !2684
  br i1 %361, label %362, label %364, !dbg !2688

362:                                              ; preds = %357
  store i8 1, i8* %359, align 4, !dbg !2689, !tbaa !2687
  %363 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %358, i32 0, i32 0, !dbg !2691
  br label %442, !dbg !2692

364:                                              ; preds = %357
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %358, metadata !2675, metadata !DIExpression()) #10, !dbg !2677
  %365 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %358, i32 0, i32 2, !dbg !2693
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* undef, metadata !2674, metadata !DIExpression()) #10, !dbg !2677
  %366 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %365, align 4, !dbg !2677, !tbaa !1504
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %366, metadata !2674, metadata !DIExpression()) #10, !dbg !2677
  %367 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %366, null, !dbg !2682
  br i1 %367, label %368, label %357, !dbg !2683, !llvm.loop !2694

368:                                              ; preds = %364, %354
  %369 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ null, %354 ], [ %358, %364 ], !dbg !2677
  %370 = call i8* @malloc(i32 12) #8, !dbg !2696
  call void @llvm.dbg.value(metadata i8* %370, metadata !2674, metadata !DIExpression()) #10, !dbg !2677
  %371 = icmp eq i8* %370, null, !dbg !2697
  br i1 %371, label %372, label %386, !dbg !2699

372:                                              ; preds = %368
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1049, metadata !DIExpression()) #10, !dbg !2700
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()) #10, !dbg !2700
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()) #10, !dbg !2700
  %373 = call i8* @malloc(i32 1024) #8, !dbg !2703
  %374 = icmp eq i8* %373, null, !dbg !2704
  br i1 %374, label %375, label %377, !dbg !2705

375:                                              ; preds = %372
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !2706
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.100, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !2706
  %376 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.100, i32 0, i32 0)) #8, !dbg !2708
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !2709
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !2711
  br label %440, !dbg !2712

377:                                              ; preds = %372
  %378 = getelementptr inbounds i8, i8* %373, i32 1023, !dbg !2713
  store i8 0, i8* %378, align 1, !dbg !2714, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !2706
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.100, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !2706
  %379 = call i8* @halide_string_to_string(i8* nonnull %373, i8* nonnull %378, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.100, i32 0, i32 0)) #8, !dbg !2708
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !2709
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1088, metadata !DIExpression()) #10, !dbg !2715
  %380 = ptrtoint i8* %379 to i32, !dbg !2717
  %381 = ptrtoint i8* %373 to i32, !dbg !2717
  %382 = sub i32 1, %381, !dbg !2717
  %383 = add i32 %382, %380, !dbg !2718
  %384 = sext i32 %383 to i64, !dbg !2719
  %385 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %373, i64 %384) #8, !dbg !2720
  call void @halide_error(i8* %0, i8* nonnull %373) #8, !dbg !2721
  br label %440

386:                                              ; preds = %368
  %387 = call i8* @HAP_cache_lock(i32 128, i8** null) #8, !dbg !2722
  call void @llvm.dbg.value(metadata i8* %387, metadata !2676, metadata !DIExpression()) #10, !dbg !2677
  %388 = icmp eq i8* %387, null, !dbg !2723
  br i1 %388, label %389, label %403, !dbg !2725

389:                                              ; preds = %386
  call void @free(i8* nonnull %370) #8, !dbg !2726
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1049, metadata !DIExpression()) #10, !dbg !2728
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()) #10, !dbg !2728
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()) #10, !dbg !2728
  %390 = call i8* @malloc(i32 1024) #8, !dbg !2730
  %391 = icmp eq i8* %390, null, !dbg !2731
  br i1 %391, label %392, label %394, !dbg !2732

392:                                              ; preds = %389
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !2733
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.101, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !2733
  %393 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.101, i32 0, i32 0)) #8, !dbg !2735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !2736
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !2738
  br label %440, !dbg !2739

394:                                              ; preds = %389
  %395 = getelementptr inbounds i8, i8* %390, i32 1023, !dbg !2740
  store i8 0, i8* %395, align 1, !dbg !2741, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !2733
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.101, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !2733
  %396 = call i8* @halide_string_to_string(i8* nonnull %390, i8* nonnull %395, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.101, i32 0, i32 0)) #8, !dbg !2735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !2736
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1088, metadata !DIExpression()) #10, !dbg !2742
  %397 = ptrtoint i8* %396 to i32, !dbg !2744
  %398 = ptrtoint i8* %390 to i32, !dbg !2744
  %399 = sub i32 1, %398, !dbg !2744
  %400 = add i32 %399, %397, !dbg !2745
  %401 = sext i32 %400 to i64, !dbg !2746
  %402 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %390, i64 %401) #8, !dbg !2747
  call void @halide_error(i8* %0, i8* nonnull %390) #8, !dbg !2748
  br label %440

403:                                              ; preds = %386
  %404 = bitcast i8* %370 to i8**, !dbg !2749
  store i8* %387, i8** %404, align 4, !dbg !2750, !tbaa !1662
  %405 = getelementptr inbounds i8, i8* %370, i32 4, !dbg !2751
  store i8 1, i8* %405, align 4, !dbg !2752, !tbaa !2687
  %406 = call i8* @malloc(i32 12) #8, !dbg !2753
  %407 = getelementptr inbounds i8, i8* %370, i32 8, !dbg !2754
  %408 = bitcast i8* %407 to i8**, !dbg !2755
  store i8* %406, i8** %408, align 4, !dbg !2755, !tbaa !1658
  %409 = icmp eq i8* %406, null, !dbg !2756
  br i1 %409, label %416, label %410, !dbg !2758

410:                                              ; preds = %403
  %411 = getelementptr inbounds i8, i8* %387, i32 64, !dbg !2759
  %412 = bitcast i8* %406 to i8**, !dbg !2761
  store i8* %411, i8** %412, align 4, !dbg !2762, !tbaa !1662
  %413 = getelementptr inbounds i8, i8* %406, i32 4, !dbg !2763
  store i8 0, i8* %413, align 4, !dbg !2764, !tbaa !2687
  %414 = getelementptr inbounds i8, i8* %406, i32 8, !dbg !2765
  %415 = bitcast i8* %414 to %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"**, !dbg !2765
  store %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* null, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %415, align 4, !dbg !2766, !tbaa !1658
  br label %431, !dbg !2767

416:                                              ; preds = %403
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !2768
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !2768
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !2768
  %417 = call i8* @malloc(i32 1024) #8, !dbg !2771
  %418 = icmp eq i8* %417, null, !dbg !2772
  br i1 %418, label %419, label %421, !dbg !2773

419:                                              ; preds = %416
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2774
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2774
  %420 = call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i32 0, i32 0)) #8, !dbg !2776
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !2777
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !2779
  br label %430, !dbg !2780

421:                                              ; preds = %416
  %422 = getelementptr inbounds i8, i8* %417, i32 1023, !dbg !2781
  store i8 0, i8* %422, align 1, !dbg !2782, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2774
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2774
  %423 = call i8* @halide_string_to_string(i8* nonnull %417, i8* nonnull %422, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i32 0, i32 0)) #8, !dbg !2776
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !2777
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !2783
  %424 = ptrtoint i8* %423 to i32, !dbg !2785
  %425 = ptrtoint i8* %417 to i32, !dbg !2785
  %426 = sub i32 1, %425, !dbg !2785
  %427 = add i32 %426, %424, !dbg !2786
  %428 = sext i32 %427 to i64, !dbg !2787
  %429 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %417, i64 %428) #8, !dbg !2788
  call void @halide_print(i8* %0, i8* nonnull %417) #8, !dbg !2789
  br label %430

430:                                              ; preds = %421, %419
  call void @free(i8* %417) #8, !dbg !2790
  br label %431

431:                                              ; preds = %430, %410
  %432 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %369, null, !dbg !2791
  br i1 %432, label %436, label %433, !dbg !2793

433:                                              ; preds = %431
  %434 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %369, i32 0, i32 2, !dbg !2794
  %435 = bitcast %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %434 to i8**, !dbg !2796
  store i8* %370, i8** %435, align 4, !dbg !2796, !tbaa !1658
  br label %442, !dbg !2797

436:                                              ; preds = %431
  %437 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 4, !dbg !2798, !tbaa !1504
  %438 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %437, null, !dbg !2800
  br i1 %438, label %439, label %442, !dbg !2801

439:                                              ; preds = %436
  store i8* %370, i8** bitcast (%"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE to i8**), align 4, !dbg !2802, !tbaa !1504
  br label %442, !dbg !2804

440:                                              ; preds = %392, %394, %375, %377
  %441 = phi i8* [ %373, %377 ], [ %373, %375 ], [ %390, %394 ], [ %390, %392 ]
  call void @free(i8* %441) #8, !dbg !2677
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1680, metadata !DIExpression()) #10, !dbg !2805
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #8, !dbg !2807
  call void @llvm.dbg.value(metadata i8* %444, metadata !2222, metadata !DIExpression()), !dbg !2245
  br label %446, !dbg !2808

442:                                              ; preds = %433, %436, %439, %362
  %443 = phi i8** [ %363, %362 ], [ %404, %439 ], [ %404, %436 ], [ %404, %433 ]
  %444 = load i8*, i8** %443, align 4, !dbg !2677, !tbaa !1662
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1680, metadata !DIExpression()) #10, !dbg !2805
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #8, !dbg !2807
  call void @llvm.dbg.value(metadata i8* %444, metadata !2222, metadata !DIExpression()), !dbg !2245
  %445 = icmp eq i8* %444, null, !dbg !2809
  br i1 %445, label %446, label %461, !dbg !2808

446:                                              ; preds = %440, %442
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !2811
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !2811
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !2811
  %447 = call i8* @malloc(i32 1024) #8, !dbg !2814
  %448 = icmp eq i8* %447, null, !dbg !2815
  br i1 %448, label %449, label %451, !dbg !2816

449:                                              ; preds = %446
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2817
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2817
  %450 = call i8* @halide_string_to_string(i8* %447, i8* null, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i32 0, i32 0)) #8, !dbg !2819
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !2820
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !2822
  br label %460, !dbg !2823

451:                                              ; preds = %446
  %452 = getelementptr inbounds i8, i8* %447, i32 1023, !dbg !2824
  store i8 0, i8* %452, align 1, !dbg !2825, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2817
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2817
  %453 = call i8* @halide_string_to_string(i8* nonnull %447, i8* nonnull %452, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i32 0, i32 0)) #8, !dbg !2819
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !2820
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !2826
  %454 = ptrtoint i8* %453 to i32, !dbg !2828
  %455 = ptrtoint i8* %447 to i32, !dbg !2828
  %456 = add i32 %454, 1, !dbg !2828
  %457 = sub i32 %456, %455, !dbg !2829
  %458 = sext i32 %457 to i64, !dbg !2830
  %459 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %447, i64 %458) #8, !dbg !2831
  call void @halide_print(i8* %0, i8* nonnull %447) #8, !dbg !2832
  br label %460

460:                                              ; preds = %451, %449
  call void @free(i8* %447) #8, !dbg !2833
  br label %856, !dbg !2834

461:                                              ; preds = %442
  %462 = mul nsw i32 %350, %295, !dbg !2835
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !726, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !2836
  %463 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !2838
  %464 = load i8, i8* %463, align 1, !dbg !2838, !tbaa !733
  %465 = zext i8 %464 to i32, !dbg !2838
  %466 = add nuw nsw i32 %465, 7, !dbg !2839
  %467 = lshr i32 %466, 3, !dbg !2840
  %468 = mul nsw i32 %462, %467, !dbg !2841
  call void @llvm.dbg.value(metadata i32 %468, metadata !2223, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !2842
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !2842
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !2842
  %469 = call i8* @malloc(i32 1024) #8, !dbg !2844
  %470 = icmp eq i8* %469, null, !dbg !2845
  br i1 %470, label %473, label %471, !dbg !2846

471:                                              ; preds = %461
  %472 = getelementptr inbounds i8, i8* %469, i32 1023, !dbg !2847
  store i8 0, i8* %472, align 1, !dbg !2848, !tbaa !652
  br label %473, !dbg !2849

473:                                              ; preds = %461, %471
  %474 = phi i8* [ %472, %471 ], [ null, %461 ], !dbg !2850
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2851
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2851
  %475 = call i8* @halide_string_to_string(i8* %469, i8* %474, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i32 0, i32 0)) #8, !dbg !2853
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2165, metadata !DIExpression()) #10, !dbg !2854
  call void @llvm.dbg.value(metadata i32 %468, metadata !2168, metadata !DIExpression()) #10, !dbg !2854
  %476 = sext i32 %468 to i64, !dbg !2856
  %477 = call i8* @halide_int64_to_string(i8* %475, i8* %474, i64 %476, i32 1) #8, !dbg !2857
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !2858
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2858
  %478 = call i8* @halide_string_to_string(i8* %477, i8* %474, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !2860
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !2861
  br i1 %470, label %479, label %480, !dbg !2863

479:                                              ; preds = %473
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !2864
  br label %487, !dbg !2865

480:                                              ; preds = %473
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !2866
  %481 = ptrtoint i8* %478 to i32, !dbg !2868
  %482 = ptrtoint i8* %469 to i32, !dbg !2868
  %483 = add i32 %481, 1, !dbg !2868
  %484 = sub i32 %483, %482, !dbg !2869
  %485 = sext i32 %484 to i64, !dbg !2870
  %486 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %469, i64 %485) #8, !dbg !2871
  call void @halide_print(i8* %0, i8* nonnull %469) #8, !dbg !2872
  br label %487

487:                                              ; preds = %480, %479
  call void @free(i8* %469) #8, !dbg !2873
  %488 = bitcast %struct.stDmaWrapper_DmaTransferSetup* %7 to i8*, !dbg !2874
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %488) #10, !dbg !2874
  call void @llvm.dbg.declare(metadata %struct.stDmaWrapper_DmaTransferSetup* %7, metadata !2224, metadata !DIExpression()), !dbg !2875
  %489 = load i32, i32* %220, align 4, !dbg !2876, !tbaa !1252
  %490 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i32 0, i32 13, !dbg !2877
  store i32 %489, i32* %490, align 4, !dbg !2878, !tbaa !2879
  %491 = load i32, i32* %47, align 4, !dbg !2882, !tbaa !1266
  %492 = trunc i32 %491 to i16, !dbg !2883
  %493 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i32 0, i32 0, !dbg !2884
  store i16 %492, i16* %493, align 4, !dbg !2885, !tbaa !2886
  %494 = load i32, i32* %52, align 4, !dbg !2887, !tbaa !1269
  %495 = trunc i32 %494 to i16, !dbg !2888
  %496 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i32 0, i32 1, !dbg !2889
  store i16 %495, i16* %496, align 2, !dbg !2890, !tbaa !2891
  %497 = load i32, i32* %57, align 4, !dbg !2892, !tbaa !1272
  %498 = trunc i32 %497 to i16, !dbg !2893
  %499 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i32 0, i32 2, !dbg !2894
  store i16 %498, i16* %499, align 4, !dbg !2895, !tbaa !2896
  %500 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i32 0, i32 5, !dbg !2897
  store i16 %293, i16* %500, align 2, !dbg !2898, !tbaa !2899
  %501 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i32 0, i32 6, !dbg !2900
  store i16 %294, i16* %501, align 4, !dbg !2901, !tbaa !2902
  %502 = trunc i32 %350 to i16, !dbg !2903
  %503 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i32 0, i32 7, !dbg !2904
  store i16 %502, i16* %503, align 2, !dbg !2905, !tbaa !2906
  %504 = load i8, i8* %285, align 4, !dbg !2907, !tbaa !1249, !range !2498
  %505 = zext i8 %504 to i16, !dbg !2908
  %506 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i32 0, i32 11, !dbg !2909
  store i16 %505, i16* %506, align 4, !dbg !2910, !tbaa !2911
  %507 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i32 0, i32 12, !dbg !2912
  store i16 0, i16* %507, align 2, !dbg !2913, !tbaa !2914
  %508 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i32 0, i32 8, !dbg !2915
  store i8* %444, i8** %508, align 4, !dbg !2916, !tbaa !2917
  %509 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 2, !dbg !2918
  %510 = load i8*, i8** %509, align 4, !dbg !2918, !tbaa !708
  %511 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i32 0, i32 9, !dbg !2919
  store i8* %510, i8** %511, align 4, !dbg !2920, !tbaa !2921
  %512 = load i8*, i8** %21, align 4, !dbg !2922, !tbaa !1258
  %513 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i32 0, i32 10, !dbg !2923
  store i8* %512, i8** %513, align 4, !dbg !2924, !tbaa !2925
  %514 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i32 0, i32 10, !dbg !2926
  %515 = load i8, i8* %514, align 1, !dbg !2926, !tbaa !1255, !range !2498
  %516 = icmp eq i8 %515, 0, !dbg !2926
  br i1 %516, label %525, label %517, !dbg !2928

517:                                              ; preds = %487
  %518 = load i16, i16* %36, align 4, !dbg !2929, !tbaa !1239
  %519 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %272, align 8, !dbg !2931, !tbaa !755
  %520 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %519, i32 0, i32 2, !dbg !2932
  %521 = load i32, i32* %520, align 4, !dbg !2932, !tbaa !763
  %522 = trunc i32 %521 to i16, !dbg !2933
  %523 = mul i16 %518, %522, !dbg !2933
  %524 = load i16, i16* %41, align 2, !dbg !2934, !tbaa !1242
  br label %541, !dbg !2935

525:                                              ; preds = %487
  %526 = load i16, i16* %25, align 4, !dbg !2936, !tbaa !1230
  %527 = zext i16 %526 to i32, !dbg !2938
  %528 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %272, align 8, !dbg !2939, !tbaa !755
  %529 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %528, i32 0, i32 0, !dbg !2940
  %530 = load i32, i32* %529, align 4, !dbg !2940, !tbaa !767
  %531 = add nsw i32 %530, %527, !dbg !2941
  %532 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %528, i32 0, i32 2, !dbg !2942
  %533 = load i32, i32* %532, align 4, !dbg !2942, !tbaa !763
  %534 = mul nsw i32 %531, %533, !dbg !2943
  %535 = trunc i32 %534 to i16, !dbg !2944
  %536 = load i16, i16* %30, align 2, !dbg !2945, !tbaa !1236
  %537 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %528, i32 1, i32 0, !dbg !2946
  %538 = load i32, i32* %537, align 4, !dbg !2946, !tbaa !767
  %539 = trunc i32 %538 to i16, !dbg !2947
  %540 = add i16 %536, %539, !dbg !2947
  br label %541

541:                                              ; preds = %525, %517
  %542 = phi %struct.halide_dimension_t* [ %528, %525 ], [ %519, %517 ]
  %543 = phi i32 [ 0, %525 ], [ 1, %517 ], !dbg !2948
  %544 = phi i16 [ %535, %525 ], [ %523, %517 ], !dbg !2948
  %545 = phi i16 [ %540, %525 ], [ %524, %517 ], !dbg !2948
  %546 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i32 0, i32 14, !dbg !2949
  store i32 %543, i32* %546, align 4, !dbg !2950
  %547 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i32 0, i32 3, !dbg !2951
  store i16 %544, i16* %547, align 2, !dbg !2952
  %548 = getelementptr inbounds %struct.stDmaWrapper_DmaTransferSetup, %struct.stDmaWrapper_DmaTransferSetup* %7, i32 0, i32 4, !dbg !2953
  store i16 %545, i16* %548, align 4, !dbg !2954
  switch i32 %489, label %641 [
    i32 0, label %549
    i32 3, label %567
    i32 6, label %567
    i32 9, label %567
    i32 12, label %567
  ], !dbg !2955

549:                                              ; preds = %541
  %550 = load i32, i32* %143, align 4, !dbg !2957, !tbaa !752
  %551 = icmp eq i32 %550, 3, !dbg !2958
  br i1 %551, label %552, label %641, !dbg !2959

552:                                              ; preds = %549
  %553 = load i16, i16* %30, align 2, !dbg !2960, !tbaa !1236
  %554 = zext i16 %553 to i32, !dbg !2962
  %555 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %542, i32 1, i32 0, !dbg !2963
  %556 = load i32, i32* %555, align 4, !dbg !2963, !tbaa !767
  %557 = add nsw i32 %556, %554, !dbg !2964
  %558 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %542, i32 2, i32 0, !dbg !2965
  %559 = load i32, i32* %558, align 4, !dbg !2965, !tbaa !767
  %560 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6, !dbg !2966
  %561 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %560, align 8, !dbg !2966, !tbaa !755
  %562 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %561, i32 1, i32 2, !dbg !2967
  %563 = load i32, i32* %562, align 4, !dbg !2967, !tbaa !763
  %564 = mul nsw i32 %563, %559, !dbg !2968
  %565 = add nsw i32 %557, %564, !dbg !2969
  %566 = trunc i32 %565 to i16, !dbg !2962
  store i16 %566, i16* %548, align 4, !dbg !2970, !tbaa !2971
  br label %641, !dbg !2972

567:                                              ; preds = %541, %541, %541, %541
  %568 = shl i16 %294, 1, !dbg !2973
  store i16 %568, i16* %501, align 4, !dbg !2976, !tbaa !2902
  %569 = select i1 %516, i16 %495, i16 0, !dbg !2977
  %570 = sub i16 %545, %569, !dbg !2977
  %571 = shl i16 %570, 1, !dbg !2978
  store i16 %571, i16* %548, align 4, !dbg !2978, !tbaa !2971
  %572 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8 to i8*, !dbg !2980
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %572) #10, !dbg !2980
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !613, metadata !DIExpression()) #10, !dbg !2981
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !2981
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !2981
  %573 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 3, !dbg !2983
  store i8* %0, i8** %573, align 4, !dbg !2983, !tbaa !2349
  %574 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 4, !dbg !2984
  store i8 1, i8* %574, align 4, !dbg !2984, !tbaa !2352
  %575 = call i8* @malloc(i32 1024) #8, !dbg !2985
  %576 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 0, !dbg !2986
  store i8* %575, i8** %576, align 4, !dbg !2987, !tbaa !2356
  %577 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 1, !dbg !2988
  store i8* %575, i8** %577, align 4, !dbg !2989, !tbaa !2371
  %578 = icmp eq i8* %575, null, !dbg !2990
  br i1 %578, label %581, label %579, !dbg !2991

579:                                              ; preds = %567
  %580 = getelementptr inbounds i8, i8* %575, i32 1023, !dbg !2992
  store i8 0, i8* %580, align 1, !dbg !2993, !tbaa !652
  br label %581, !dbg !2994

581:                                              ; preds = %567, %579
  %582 = phi i8* [ %580, %579 ], [ null, %567 ], !dbg !2995
  %583 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 2, !dbg !2996
  store i8* %582, i8** %583, align 4, !dbg !2997
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !630, metadata !DIExpression()) #10, !dbg !2998
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.86, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !2998
  %584 = call i8* @halide_string_to_string(i8* %575, i8* %582, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.86, i32 0, i32 0)) #8, !dbg !3000
  store i8* %584, i8** %577, align 4, !dbg !3001, !tbaa !2371
  %585 = load i16, i16* %547, align 2, !dbg !3002, !tbaa !3003
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !2165, metadata !DIExpression()) #10, !dbg !3004
  call void @llvm.dbg.value(metadata i16 %585, metadata !2168, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !3004
  %586 = load i8*, i8** %583, align 4, !dbg !3006, !tbaa !2423
  %587 = zext i16 %585 to i64, !dbg !3007
  %588 = call i8* @halide_int64_to_string(i8* %584, i8* %586, i64 %587, i32 1) #8, !dbg !3008
  store i8* %588, i8** %577, align 4, !dbg !3009, !tbaa !2371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !630, metadata !DIExpression()) #10, !dbg !3010
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3010
  %589 = load i8*, i8** %583, align 4, !dbg !3012, !tbaa !2423
  %590 = call i8* @halide_string_to_string(i8* %588, i8* %589, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0)) #8, !dbg !3013
  store i8* %590, i8** %577, align 4, !dbg !3014, !tbaa !2371
  %591 = load i16, i16* %548, align 4, !dbg !3015, !tbaa !2971
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !2165, metadata !DIExpression()) #10, !dbg !3016
  call void @llvm.dbg.value(metadata i16 %591, metadata !2168, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !3016
  %592 = load i8*, i8** %583, align 4, !dbg !3018, !tbaa !2423
  %593 = zext i16 %591 to i64, !dbg !3019
  %594 = call i8* @halide_int64_to_string(i8* %590, i8* %592, i64 %593, i32 1) #8, !dbg !3020
  store i8* %594, i8** %577, align 4, !dbg !3021, !tbaa !2371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !630, metadata !DIExpression()) #10, !dbg !3022
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3022
  %595 = load i8*, i8** %583, align 4, !dbg !3024, !tbaa !2423
  %596 = call i8* @halide_string_to_string(i8* %594, i8* %595, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0)) #8, !dbg !3025
  store i8* %596, i8** %577, align 4, !dbg !3026, !tbaa !2371
  %597 = load i16, i16* %500, align 2, !dbg !3027, !tbaa !2899
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !2165, metadata !DIExpression()) #10, !dbg !3028
  call void @llvm.dbg.value(metadata i16 %597, metadata !2168, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !3028
  %598 = load i8*, i8** %583, align 4, !dbg !3030, !tbaa !2423
  %599 = zext i16 %597 to i64, !dbg !3031
  %600 = call i8* @halide_int64_to_string(i8* %596, i8* %598, i64 %599, i32 1) #8, !dbg !3032
  store i8* %600, i8** %577, align 4, !dbg !3033, !tbaa !2371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !630, metadata !DIExpression()) #10, !dbg !3034
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3034
  %601 = load i8*, i8** %583, align 4, !dbg !3036, !tbaa !2423
  %602 = call i8* @halide_string_to_string(i8* %600, i8* %601, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0)) #8, !dbg !3037
  store i8* %602, i8** %577, align 4, !dbg !3038, !tbaa !2371
  %603 = load i16, i16* %501, align 4, !dbg !3039, !tbaa !2902
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !2165, metadata !DIExpression()) #10, !dbg !3040
  call void @llvm.dbg.value(metadata i16 %603, metadata !2168, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !3040
  %604 = load i8*, i8** %583, align 4, !dbg !3042, !tbaa !2423
  %605 = zext i16 %603 to i64, !dbg !3043
  %606 = call i8* @halide_int64_to_string(i8* %602, i8* %604, i64 %605, i32 1) #8, !dbg !3044
  store i8* %606, i8** %577, align 4, !dbg !3045, !tbaa !2371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !630, metadata !DIExpression()) #10, !dbg !3046
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3046
  %607 = load i8*, i8** %583, align 4, !dbg !3048, !tbaa !2423
  %608 = call i8* @halide_string_to_string(i8* %606, i8* %607, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)) #8, !dbg !3049
  store i8* %608, i8** %577, align 4, !dbg !3050, !tbaa !2371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !630, metadata !DIExpression()) #10, !dbg !3051
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3051
  %609 = load i8*, i8** %583, align 4, !dbg !3053, !tbaa !2423
  %610 = call i8* @halide_string_to_string(i8* %608, i8* %609, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i32 0, i32 0)) #8, !dbg !3054
  store i8* %610, i8** %577, align 4, !dbg !3055, !tbaa !2371
  %611 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %272, align 8, !dbg !3056, !tbaa !755
  %612 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %611, i32 1, i32 0, !dbg !3057
  %613 = load i32, i32* %612, align 4, !dbg !3057, !tbaa !767
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !2165, metadata !DIExpression()) #10, !dbg !3058
  call void @llvm.dbg.value(metadata i32 %613, metadata !2168, metadata !DIExpression()) #10, !dbg !3058
  %614 = load i8*, i8** %583, align 4, !dbg !3060, !tbaa !2423
  %615 = sext i32 %613 to i64, !dbg !3061
  %616 = call i8* @halide_int64_to_string(i8* %610, i8* %614, i64 %615, i32 1) #8, !dbg !3062
  store i8* %616, i8** %577, align 4, !dbg !3063, !tbaa !2371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !630, metadata !DIExpression()) #10, !dbg !3064
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3064
  %617 = load i8*, i8** %583, align 4, !dbg !3066, !tbaa !2423
  %618 = call i8* @halide_string_to_string(i8* %616, i8* %617, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !3067
  store i8* %618, i8** %577, align 4, !dbg !3068, !tbaa !2371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, metadata !639, metadata !DIExpression()) #10, !dbg !3069
  %619 = load i8*, i8** %576, align 4, !dbg !3071, !tbaa !2356
  %620 = icmp eq i8* %619, null, !dbg !3071
  %621 = load i8*, i8** %573, align 4, !dbg !3072, !tbaa !2349
  br i1 %620, label %622, label %623, !dbg !3073

622:                                              ; preds = %581
  call void @halide_error(i8* %621, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3074
  br label %632, !dbg !3075

623:                                              ; preds = %581
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !3076
  %624 = ptrtoint i8* %618 to i32, !dbg !3078
  %625 = ptrtoint i8* %619 to i32, !dbg !3078
  %626 = add i32 %624, 1, !dbg !3078
  %627 = sub i32 %626, %625, !dbg !3079
  %628 = sext i32 %627 to i64, !dbg !3080
  %629 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %621, i8* nonnull %619, i64 %628) #8, !dbg !3081
  %630 = load i8*, i8** %573, align 4, !dbg !3082, !tbaa !2349
  %631 = load i8*, i8** %576, align 4, !dbg !3083, !tbaa !2356
  call void @halide_print(i8* %630, i8* %631) #8, !dbg !3084
  br label %632

632:                                              ; preds = %623, %622
  %633 = load i8, i8* %574, align 4, !dbg !3085, !tbaa !2352, !range !2498
  %634 = icmp eq i8 %633, 0, !dbg !3085
  br i1 %634, label %640, label %635, !dbg !3086

635:                                              ; preds = %632
  %636 = load i8*, i8** %576, align 4, !dbg !3087, !tbaa !2356
  %637 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %8, i32 0, i32 5, i32 0, !dbg !3088
  %638 = icmp eq i8* %636, %637, !dbg !3089
  br i1 %638, label %640, label %639, !dbg !3090

639:                                              ; preds = %635
  call void @free(i8* %636) #8, !dbg !3091
  br label %640, !dbg !3092

640:                                              ; preds = %632, %635, %639
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %572) #10, !dbg !2980
  br label %641, !dbg !3093

641:                                              ; preds = %541, %549, %552, %640
  %642 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %13, i32 0, i32 5, !dbg !3094
  %643 = load i8*, i8** %642, align 4, !dbg !3094, !tbaa !1260
  %644 = call i8* @halide_hexagon_allocate_from_dma_pool(i8* %0, i8* %643) #8, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %644, metadata !2244, metadata !DIExpression()), !dbg !2245
  %645 = icmp eq i8* %644, null, !dbg !3096
  br i1 %645, label %646, label %660, !dbg !3098

646:                                              ; preds = %641
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !3099
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !3099
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !3099
  %647 = call i8* @malloc(i32 1024) #8, !dbg !3102
  %648 = icmp eq i8* %647, null, !dbg !3103
  br i1 %648, label %649, label %651, !dbg !3104

649:                                              ; preds = %646
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3105
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.91, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3105
  %650 = call i8* @halide_string_to_string(i8* %647, i8* null, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.91, i32 0, i32 0)) #8, !dbg !3107
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !3108
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3110
  br label %851, !dbg !3111

651:                                              ; preds = %646
  %652 = getelementptr inbounds i8, i8* %647, i32 1023, !dbg !3112
  store i8 0, i8* %652, align 1, !dbg !3113, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3105
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.91, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3105
  %653 = call i8* @halide_string_to_string(i8* nonnull %647, i8* nonnull %652, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.91, i32 0, i32 0)) #8, !dbg !3107
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !3108
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !3114
  %654 = ptrtoint i8* %653 to i32, !dbg !3116
  %655 = ptrtoint i8* %647 to i32, !dbg !3116
  %656 = add i32 %654, 1, !dbg !3116
  %657 = sub i32 %656, %655, !dbg !3117
  %658 = sext i32 %657 to i64, !dbg !3118
  %659 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %647, i64 %658) #8, !dbg !3119
  call void @halide_print(i8* %0, i8* nonnull %647) #8, !dbg !3120
  br label %851

660:                                              ; preds = %641
  %661 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9 to i8*, !dbg !3121
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %661) #10, !dbg !3121
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !613, metadata !DIExpression()) #10, !dbg !3122
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !3122
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !3122
  %662 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 3, !dbg !3124
  store i8* %0, i8** %662, align 4, !dbg !3124, !tbaa !2349
  %663 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 4, !dbg !3125
  store i8 1, i8* %663, align 4, !dbg !3125, !tbaa !2352
  %664 = call i8* @malloc(i32 1024) #8, !dbg !3126
  %665 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 0, !dbg !3127
  store i8* %664, i8** %665, align 4, !dbg !3128, !tbaa !2356
  %666 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 1, !dbg !3129
  %667 = icmp eq i8* %664, null, !dbg !3130
  br i1 %667, label %670, label %668, !dbg !3131

668:                                              ; preds = %660
  %669 = getelementptr inbounds i8, i8* %664, i32 1023, !dbg !3132
  store i8 0, i8* %669, align 1, !dbg !3133, !tbaa !652
  br label %670, !dbg !3134

670:                                              ; preds = %660, %668
  %671 = phi i8* [ %669, %668 ], [ null, %660 ], !dbg !3135
  %672 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 2, !dbg !3136
  store i8* %671, i8** %672, align 4, !dbg !3137
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !630, metadata !DIExpression()) #10, !dbg !3138
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3138
  %673 = call i8* @halide_string_to_string(i8* %664, i8* %671, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0)) #8, !dbg !3140
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !911, metadata !DIExpression()) #10, !dbg !3141
  call void @llvm.dbg.value(metadata i8* %644, metadata !914, metadata !DIExpression()) #10, !dbg !3141
  %674 = call i8* @halide_pointer_to_string(i8* %673, i8* %671, i8* nonnull %644) #8, !dbg !3143
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !630, metadata !DIExpression()) #10, !dbg !3144
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3144
  %675 = call i8* @halide_string_to_string(i8* %674, i8* %671, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0)) #8, !dbg !3146
  %676 = load i8*, i8** %508, align 4, !dbg !3147, !tbaa !2917
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !911, metadata !DIExpression()) #10, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %676, metadata !914, metadata !DIExpression()) #10, !dbg !3148
  %677 = call i8* @halide_pointer_to_string(i8* %675, i8* %671, i8* %676) #8, !dbg !3150
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !630, metadata !DIExpression()) #10, !dbg !3151
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3151
  %678 = call i8* @halide_string_to_string(i8* %677, i8* %671, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !3153
  store i8* %678, i8** %666, align 4, !dbg !3154, !tbaa !2371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !639, metadata !DIExpression()) #10, !dbg !3155
  %679 = load i8*, i8** %665, align 4, !dbg !3157, !tbaa !2356
  %680 = icmp eq i8* %679, null, !dbg !3157
  %681 = load i8*, i8** %662, align 4, !dbg !3158, !tbaa !2349
  br i1 %680, label %682, label %683, !dbg !3159

682:                                              ; preds = %670
  call void @halide_error(i8* %681, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3160
  br label %692, !dbg !3161

683:                                              ; preds = %670
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !3162
  %684 = ptrtoint i8* %678 to i32, !dbg !3164
  %685 = ptrtoint i8* %679 to i32, !dbg !3164
  %686 = add i32 %684, 1, !dbg !3164
  %687 = sub i32 %686, %685, !dbg !3165
  %688 = sext i32 %687 to i64, !dbg !3166
  %689 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %681, i8* nonnull %679, i64 %688) #8, !dbg !3167
  %690 = load i8*, i8** %662, align 4, !dbg !3168, !tbaa !2349
  %691 = load i8*, i8** %665, align 4, !dbg !3169, !tbaa !2356
  call void @halide_print(i8* %690, i8* %691) #8, !dbg !3170
  br label %692

692:                                              ; preds = %683, %682
  %693 = load i8, i8* %663, align 4, !dbg !3171, !tbaa !2352, !range !2498
  %694 = icmp eq i8 %693, 0, !dbg !3171
  br i1 %694, label %697, label %695, !dbg !3172

695:                                              ; preds = %692
  %696 = load i8*, i8** %665, align 4, !dbg !3173, !tbaa !2356
  call void @free(i8* %696) #8, !dbg !3174
  br label %697, !dbg !3175

697:                                              ; preds = %692, %695
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %661) #10, !dbg !3121
  %698 = call i32 @nDmaWrapper_DmaTransferSetup(i8* nonnull %644, %struct.stDmaWrapper_DmaTransferSetup* nonnull %7) #8, !dbg !3176
  call void @llvm.dbg.value(metadata i32 %698, metadata !2218, metadata !DIExpression()), !dbg !2245
  %699 = icmp eq i32 %698, 0, !dbg !3177
  %700 = call i8* @malloc(i32 1024) #8, !dbg !2245
  %701 = icmp eq i8* %700, null, !dbg !2245
  br i1 %699, label %719, label %702, !dbg !3179

702:                                              ; preds = %697
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1049, metadata !DIExpression()) #10, !dbg !3180
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()) #10, !dbg !3180
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()) #10, !dbg !3180
  br i1 %701, label %705, label %703, !dbg !3183

703:                                              ; preds = %702
  %704 = getelementptr inbounds i8, i8* %700, i32 1023, !dbg !3184
  store i8 0, i8* %704, align 1, !dbg !3185, !tbaa !652
  br label %705, !dbg !3186

705:                                              ; preds = %702, %703
  %706 = phi i8* [ %704, %703 ], [ null, %702 ], !dbg !3187
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !3188
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !3188
  %707 = call i8* @halide_string_to_string(i8* %700, i8* %706, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i32 0, i32 0)) #8, !dbg !3190
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1854, metadata !DIExpression()) #10, !dbg !3191
  call void @llvm.dbg.value(metadata i32 %698, metadata !1857, metadata !DIExpression()) #10, !dbg !3191
  %708 = sext i32 %698 to i64, !dbg !3193
  %709 = call i8* @halide_int64_to_string(i8* %707, i8* %706, i64 %708, i32 1) #8, !dbg !3194
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !3195
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !3195
  %710 = call i8* @halide_string_to_string(i8* %709, i8* %706, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !3197
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !3198
  br i1 %701, label %711, label %712, !dbg !3200

711:                                              ; preds = %705
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3201
  br label %851, !dbg !3202

712:                                              ; preds = %705
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1088, metadata !DIExpression()) #10, !dbg !3203
  %713 = ptrtoint i8* %710 to i32, !dbg !3205
  %714 = ptrtoint i8* %700 to i32, !dbg !3205
  %715 = add i32 %713, 1, !dbg !3205
  %716 = sub i32 %715, %714, !dbg !3206
  %717 = sext i32 %716 to i64, !dbg !3207
  %718 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %700, i64 %717) #8, !dbg !3208
  call void @halide_error(i8* %0, i8* nonnull %700) #8, !dbg !3209
  br label %851

719:                                              ; preds = %697
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !3210
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !3210
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !3210
  br i1 %701, label %722, label %720, !dbg !3212

720:                                              ; preds = %719
  %721 = getelementptr inbounds i8, i8* %700, i32 1023, !dbg !3213
  store i8 0, i8* %721, align 1, !dbg !3214, !tbaa !652
  br label %722, !dbg !3215

722:                                              ; preds = %719, %720
  %723 = phi i8* [ %721, %720 ], [ null, %719 ], !dbg !3216
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3217
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3217
  %724 = call i8* @halide_string_to_string(i8* %700, i8* %723, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0)) #8, !dbg !3219
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3220
  call void @llvm.dbg.value(metadata i8* %644, metadata !914, metadata !DIExpression()) #10, !dbg !3220
  %725 = call i8* @halide_pointer_to_string(i8* %724, i8* %723, i8* nonnull %644) #8, !dbg !3222
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3223
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3223
  %726 = call i8* @halide_string_to_string(i8* %725, i8* %723, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0)) #8, !dbg !3225
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !3226
  br i1 %701, label %727, label %728, !dbg !3228

727:                                              ; preds = %722
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3229
  br label %735, !dbg !3230

728:                                              ; preds = %722
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !3231
  %729 = ptrtoint i8* %726 to i32, !dbg !3233
  %730 = ptrtoint i8* %700 to i32, !dbg !3233
  %731 = add i32 %729, 1, !dbg !3233
  %732 = sub i32 %731, %730, !dbg !3234
  %733 = sext i32 %732 to i64, !dbg !3235
  %734 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %700, i64 %733) #8, !dbg !3236
  call void @halide_print(i8* %0, i8* nonnull %700) #8, !dbg !3237
  br label %735

735:                                              ; preds = %728, %727
  call void @free(i8* %700) #8, !dbg !3238
  %736 = call i32 @nDmaWrapper_Move(i8* nonnull %644) #8, !dbg !3239
  call void @llvm.dbg.value(metadata i32 %736, metadata !2218, metadata !DIExpression()), !dbg !2245
  %737 = icmp eq i32 %736, 0, !dbg !3240
  %738 = call i8* @malloc(i32 1024) #8, !dbg !2245
  %739 = icmp eq i8* %738, null, !dbg !2245
  br i1 %737, label %757, label %740, !dbg !3242

740:                                              ; preds = %735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1049, metadata !DIExpression()) #10, !dbg !3243
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()) #10, !dbg !3243
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()) #10, !dbg !3243
  br i1 %739, label %743, label %741, !dbg !3246

741:                                              ; preds = %740
  %742 = getelementptr inbounds i8, i8* %738, i32 1023, !dbg !3247
  store i8 0, i8* %742, align 1, !dbg !3248, !tbaa !652
  br label %743, !dbg !3249

743:                                              ; preds = %740, %741
  %744 = phi i8* [ %742, %741 ], [ null, %740 ], !dbg !3250
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !3251
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !3251
  %745 = call i8* @halide_string_to_string(i8* %738, i8* %744, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i32 0, i32 0)) #8, !dbg !3253
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1854, metadata !DIExpression()) #10, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %736, metadata !1857, metadata !DIExpression()) #10, !dbg !3254
  %746 = sext i32 %736 to i64, !dbg !3256
  %747 = call i8* @halide_int64_to_string(i8* %745, i8* %744, i64 %746, i32 1) #8, !dbg !3257
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !3258
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !3258
  %748 = call i8* @halide_string_to_string(i8* %747, i8* %744, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !3260
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !3261
  br i1 %739, label %749, label %750, !dbg !3263

749:                                              ; preds = %743
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3264
  br label %851, !dbg !3265

750:                                              ; preds = %743
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1088, metadata !DIExpression()) #10, !dbg !3266
  %751 = ptrtoint i8* %748 to i32, !dbg !3268
  %752 = ptrtoint i8* %738 to i32, !dbg !3268
  %753 = add i32 %751, 1, !dbg !3268
  %754 = sub i32 %753, %752, !dbg !3269
  %755 = sext i32 %754 to i64, !dbg !3270
  %756 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %738, i64 %755) #8, !dbg !3271
  call void @halide_error(i8* %0, i8* nonnull %738) #8, !dbg !3272
  br label %851

757:                                              ; preds = %735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !3273
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !3273
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !3273
  br i1 %739, label %760, label %758, !dbg !3275

758:                                              ; preds = %757
  %759 = getelementptr inbounds i8, i8* %738, i32 1023, !dbg !3276
  store i8 0, i8* %759, align 1, !dbg !3277, !tbaa !652
  br label %760, !dbg !3278

760:                                              ; preds = %757, %758
  %761 = phi i8* [ %759, %758 ], [ null, %757 ], !dbg !3279
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3280
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3280
  %762 = call i8* @halide_string_to_string(i8* %738, i8* %761, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0)) #8, !dbg !3282
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3283
  call void @llvm.dbg.value(metadata i8* %644, metadata !914, metadata !DIExpression()) #10, !dbg !3283
  %763 = call i8* @halide_pointer_to_string(i8* %762, i8* %761, i8* nonnull %644) #8, !dbg !3285
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3286
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3286
  %764 = call i8* @halide_string_to_string(i8* %763, i8* %761, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0)) #8, !dbg !3288
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !3289
  br i1 %739, label %765, label %766, !dbg !3291

765:                                              ; preds = %760
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3292
  br label %773, !dbg !3293

766:                                              ; preds = %760
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !3294
  %767 = ptrtoint i8* %764 to i32, !dbg !3296
  %768 = ptrtoint i8* %738 to i32, !dbg !3296
  %769 = add i32 %767, 1, !dbg !3296
  %770 = sub i32 %769, %768, !dbg !3297
  %771 = sext i32 %770 to i64, !dbg !3298
  %772 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %738, i64 %771) #8, !dbg !3299
  call void @halide_print(i8* %0, i8* nonnull %738) #8, !dbg !3300
  br label %773

773:                                              ; preds = %766, %765
  call void @free(i8* %738) #8, !dbg !3301
  %774 = call i32 @nDmaWrapper_Wait(i8* nonnull %644) #8, !dbg !3302
  call void @llvm.dbg.value(metadata i32 %774, metadata !2218, metadata !DIExpression()), !dbg !2245
  %775 = icmp eq i32 %774, 0, !dbg !3303
  br i1 %775, label %795, label %776, !dbg !3305

776:                                              ; preds = %773
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1049, metadata !DIExpression()) #10, !dbg !3306
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()) #10, !dbg !3306
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()) #10, !dbg !3306
  %777 = call i8* @malloc(i32 1024) #8, !dbg !3309
  %778 = icmp eq i8* %777, null, !dbg !3310
  br i1 %778, label %781, label %779, !dbg !3311

779:                                              ; preds = %776
  %780 = getelementptr inbounds i8, i8* %777, i32 1023, !dbg !3312
  store i8 0, i8* %780, align 1, !dbg !3313, !tbaa !652
  br label %781, !dbg !3314

781:                                              ; preds = %776, %779
  %782 = phi i8* [ %780, %779 ], [ null, %776 ], !dbg !3315
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !3316
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.98, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !3316
  %783 = call i8* @halide_string_to_string(i8* %777, i8* %782, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.98, i32 0, i32 0)) #8, !dbg !3318
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1854, metadata !DIExpression()) #10, !dbg !3319
  call void @llvm.dbg.value(metadata i32 %774, metadata !1857, metadata !DIExpression()) #10, !dbg !3319
  %784 = sext i32 %774 to i64, !dbg !3321
  %785 = call i8* @halide_int64_to_string(i8* %783, i8* %782, i64 %784, i32 1) #8, !dbg !3322
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !3323
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !3323
  %786 = call i8* @halide_string_to_string(i8* %785, i8* %782, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !3325
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !3326
  br i1 %778, label %787, label %788, !dbg !3328

787:                                              ; preds = %781
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3329
  br label %851, !dbg !3330

788:                                              ; preds = %781
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1088, metadata !DIExpression()) #10, !dbg !3331
  %789 = ptrtoint i8* %786 to i32, !dbg !3333
  %790 = ptrtoint i8* %777 to i32, !dbg !3333
  %791 = add i32 %789, 1, !dbg !3333
  %792 = sub i32 %791, %790, !dbg !3334
  %793 = sext i32 %792 to i64, !dbg !3335
  %794 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %777, i64 %793) #8, !dbg !3336
  call void @halide_error(i8* %0, i8* nonnull %777) #8, !dbg !3337
  br label %851

795:                                              ; preds = %773
  call void @llvm.dbg.value(metadata i8* %0, metadata !3338, metadata !DIExpression()) #10, !dbg !3344
  call void @llvm.dbg.value(metadata i8* %444, metadata !3341, metadata !DIExpression()) #10, !dbg !3344
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1644, metadata !DIExpression()) #10, !dbg !3346
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE, metadata !1647, metadata !DIExpression()) #10, !dbg !3346
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE, metadata !3342, metadata !DIExpression()) #10, !dbg !3344
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #8, !dbg !3348
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* undef, metadata !3343, metadata !DIExpression()) #10, !dbg !3344
  %796 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** @_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE, align 4, !dbg !3344, !tbaa !1504
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %796, metadata !3343, metadata !DIExpression()) #10, !dbg !3344
  %797 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %796, null, !dbg !3349
  br i1 %797, label %809, label %798, !dbg !3350

798:                                              ; preds = %795, %805
  %799 = phi %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* [ %807, %805 ], [ %796, %795 ]
  %800 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %799, i32 0, i32 0, !dbg !3351
  %801 = load i8*, i8** %800, align 4, !dbg !3351, !tbaa !1662
  %802 = icmp eq i8* %801, %444, !dbg !3354
  br i1 %802, label %803, label %805, !dbg !3355

803:                                              ; preds = %798
  %804 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %799, i32 0, i32 1, !dbg !3356
  store i8 0, i8* %804, align 4, !dbg !3358, !tbaa !2687
  br label %828, !dbg !3359

805:                                              ; preds = %798
  %806 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool", %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %799, i32 0, i32 2, !dbg !3360
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* undef, metadata !3343, metadata !DIExpression()) #10, !dbg !3344
  %807 = load %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"*, %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"** %806, align 4, !dbg !3344, !tbaa !1504
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %807, metadata !3343, metadata !DIExpression()) #10, !dbg !3344
  %808 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::desc_pool"* %807, null, !dbg !3349
  br i1 %808, label %809, label %798, !dbg !3350, !llvm.loop !3361

809:                                              ; preds = %805, %795
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1049, metadata !DIExpression()) #10, !dbg !3363
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()) #10, !dbg !3363
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()) #10, !dbg !3363
  %810 = call i8* @malloc(i32 1024) #8, !dbg !3365
  %811 = icmp eq i8* %810, null, !dbg !3366
  br i1 %811, label %814, label %812, !dbg !3367

812:                                              ; preds = %809
  %813 = getelementptr inbounds i8, i8* %810, i32 1023, !dbg !3368
  store i8 0, i8* %813, align 1, !dbg !3369, !tbaa !652
  br label %814, !dbg !3370

814:                                              ; preds = %812, %809
  %815 = phi i8* [ %813, %812 ], [ null, %809 ], !dbg !3371
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !3372
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.104, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !3372
  %816 = call i8* @halide_string_to_string(i8* %810, i8* %815, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.104, i32 0, i32 0)) #8, !dbg !3374
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !3375, metadata !DIExpression()) #10, !dbg !3379
  call void @llvm.dbg.value(metadata i8* %444, metadata !3378, metadata !DIExpression()) #10, !dbg !3379
  %817 = call i8* @halide_pointer_to_string(i8* %816, i8* %815, i8* nonnull %444) #8, !dbg !3381
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !3382
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !3382
  %818 = call i8* @halide_string_to_string(i8* %817, i8* %815, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !3384
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !3385
  br i1 %811, label %819, label %820, !dbg !3387

819:                                              ; preds = %814
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3388
  br label %827, !dbg !3389

820:                                              ; preds = %814
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1088, metadata !DIExpression()) #10, !dbg !3390
  %821 = ptrtoint i8* %818 to i32, !dbg !3392
  %822 = ptrtoint i8* %810 to i32, !dbg !3392
  %823 = sub i32 1, %822, !dbg !3392
  %824 = add i32 %823, %821, !dbg !3393
  %825 = sext i32 %824 to i64, !dbg !3394
  %826 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %810, i64 %825) #8, !dbg !3395
  call void @halide_error(i8* %0, i8* nonnull %810) #8, !dbg !3396
  br label %827

827:                                              ; preds = %820, %819
  call void @free(i8* %810) #8, !dbg !3397
  br label %828, !dbg !3398

828:                                              ; preds = %803, %827
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1680, metadata !DIExpression()) #10, !dbg !3399
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE) #8, !dbg !3401
  %829 = load i8*, i8** %642, align 4, !dbg !3402, !tbaa !1260
  %830 = call i32 @halide_hexagon_free_to_dma_pool(i8* %0, i8* nonnull %644, i8* %829) #8, !dbg !3403
  call void @llvm.dbg.value(metadata i32 %830, metadata !2218, metadata !DIExpression()), !dbg !2245
  %831 = icmp eq i32 %830, 0, !dbg !3404
  br i1 %831, label %854, label %832, !dbg !3406

832:                                              ; preds = %828
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !3407
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !3407
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !3407
  %833 = call i8* @malloc(i32 1024) #8, !dbg !3410
  %834 = icmp eq i8* %833, null, !dbg !3411
  br i1 %834, label %837, label %835, !dbg !3412

835:                                              ; preds = %832
  %836 = getelementptr inbounds i8, i8* %833, i32 1023, !dbg !3413
  store i8 0, i8* %836, align 1, !dbg !3414, !tbaa !652
  br label %837, !dbg !3415

837:                                              ; preds = %832, %835
  %838 = phi i8* [ %836, %835 ], [ null, %832 ], !dbg !3416
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3417
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.99, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3417
  %839 = call i8* @halide_string_to_string(i8* %833, i8* %838, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.99, i32 0, i32 0)) #8, !dbg !3419
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2165, metadata !DIExpression()) #10, !dbg !3420
  call void @llvm.dbg.value(metadata i32 %830, metadata !2168, metadata !DIExpression()) #10, !dbg !3420
  %840 = sext i32 %830 to i64, !dbg !3422
  %841 = call i8* @halide_int64_to_string(i8* %839, i8* %838, i64 %840, i32 1) #8, !dbg !3423
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3424
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3424
  %842 = call i8* @halide_string_to_string(i8* %841, i8* %838, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !3426
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !3427
  br i1 %834, label %843, label %844, !dbg !3429

843:                                              ; preds = %837
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3430
  br label %851, !dbg !3431

844:                                              ; preds = %837
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !3432
  %845 = ptrtoint i8* %842 to i32, !dbg !3434
  %846 = ptrtoint i8* %833 to i32, !dbg !3434
  %847 = add i32 %845, 1, !dbg !3434
  %848 = sub i32 %847, %846, !dbg !3435
  %849 = sext i32 %848 to i64, !dbg !3436
  %850 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %833, i64 %849) #8, !dbg !3437
  call void @halide_print(i8* %0, i8* nonnull %833) #8, !dbg !3438
  br label %851

851:                                              ; preds = %843, %844, %787, %788, %749, %750, %711, %712, %649, %651
  %852 = phi i8* [ %647, %651 ], [ %647, %649 ], [ %700, %712 ], [ %700, %711 ], [ %738, %750 ], [ %738, %749 ], [ %777, %788 ], [ %777, %787 ], [ %833, %844 ], [ %833, %843 ]
  %853 = phi i32 [ -39, %651 ], [ -39, %649 ], [ -39, %712 ], [ -39, %711 ], [ -39, %750 ], [ -39, %749 ], [ -39, %788 ], [ -39, %787 ], [ %830, %844 ], [ %830, %843 ]
  call void @free(i8* %852) #8, !dbg !2245
  br label %854, !dbg !3439

854:                                              ; preds = %851, %828
  %855 = phi i32 [ 0, %828 ], [ %853, %851 ], !dbg !2245
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %488) #10, !dbg !3439
  br label %856

856:                                              ; preds = %854, %460
  %857 = phi i32 [ -39, %460 ], [ %855, %854 ], !dbg !2245
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %270) #10, !dbg !3439
  ret i32 %857, !dbg !3439
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3440 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3442, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3443, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !3445
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !3445
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !3447
  %4 = icmp eq i8* %3, null, !dbg !3448
  br i1 %4, label %7, label %5, !dbg !3449

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !3450
  store i8 0, i8* %6, align 1, !dbg !3451, !tbaa !652
  br label %7, !dbg !3452

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !3453
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3454
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.34, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3454
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.34, i32 0, i32 0)) #8, !dbg !3456
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3457
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3457
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !3459
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3460
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3460
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !3462
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3463
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3463
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3465
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3466
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3466
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !3468
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !3469
  br i1 %4, label %14, label %15, !dbg !3471

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3472
  br label %22, !dbg !3473

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !3474
  %16 = ptrtoint i8* %13 to i32, !dbg !3476
  %17 = ptrtoint i8* %3 to i32, !dbg !3476
  %18 = add i32 %16, 1, !dbg !3476
  %19 = sub i32 %18, %17, !dbg !3477
  %20 = sext i32 %19 to i64, !dbg !3478
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %20) #8, !dbg !3479
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !3480
  br label %22

22:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !3481
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1049, metadata !DIExpression()) #10, !dbg !3482
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()) #10, !dbg !3482
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()) #10, !dbg !3482
  %23 = call i8* @malloc(i32 1024) #8, !dbg !3484
  %24 = icmp eq i8* %23, null, !dbg !3485
  br i1 %24, label %25, label %27, !dbg !3486

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !3487
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !3487
  %26 = call i8* @halide_string_to_string(i8* %23, i8* null, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i32 0, i32 0)) #8, !dbg !3489
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !3490
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3492
  br label %36, !dbg !3493

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, i8* %23, i32 1023, !dbg !3494
  store i8 0, i8* %28, align 1, !dbg !3495, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !3487
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !3487
  %29 = call i8* @halide_string_to_string(i8* nonnull %23, i8* nonnull %28, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i32 0, i32 0)) #8, !dbg !3489
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !3490
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1088, metadata !DIExpression()) #10, !dbg !3496
  %30 = ptrtoint i8* %29 to i32, !dbg !3498
  %31 = ptrtoint i8* %23 to i32, !dbg !3498
  %32 = add i32 %30, 1, !dbg !3498
  %33 = sub i32 %32, %31, !dbg !3499
  %34 = sext i32 %33 to i64, !dbg !3500
  %35 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %23, i64 %34) #8, !dbg !3501
  call void @halide_error(i8* %0, i8* nonnull %23) #8, !dbg !3502
  br label %36

36:                                               ; preds = %27, %25
  call void @free(i8* %23) #8, !dbg !3503
  ret i32 -15, !dbg !3504
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3505 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3507, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3508, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !3510
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !3510
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !3510
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !3512
  %4 = icmp eq i8* %3, null, !dbg !3513
  br i1 %4, label %7, label %5, !dbg !3514

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !3515
  store i8 0, i8* %6, align 1, !dbg !3516, !tbaa !652
  br label %7, !dbg !3517

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !3518
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3519
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.36, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3519
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.36, i32 0, i32 0)) #8, !dbg !3521
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3522
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3522
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !3524
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3525
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3525
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !3527
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3528
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3528
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3530
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3531
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3531
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !3533
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !3534
  br i1 %4, label %14, label %15, !dbg !3536

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3537
  br label %22, !dbg !3538

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !3539
  %16 = ptrtoint i8* %13 to i32, !dbg !3541
  %17 = ptrtoint i8* %3 to i32, !dbg !3541
  %18 = add i32 %16, 1, !dbg !3541
  %19 = sub i32 %18, %17, !dbg !3542
  %20 = sext i32 %19 to i64, !dbg !3543
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %20) #8, !dbg !3544
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !3545
  br label %22

22:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !3546
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1049, metadata !DIExpression()) #10, !dbg !3547
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()) #10, !dbg !3547
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()) #10, !dbg !3547
  %23 = call i8* @malloc(i32 1024) #8, !dbg !3549
  %24 = icmp eq i8* %23, null, !dbg !3550
  br i1 %24, label %25, label %27, !dbg !3551

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !3552
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !3552
  %26 = call i8* @halide_string_to_string(i8* %23, i8* null, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i32 0, i32 0)) #8, !dbg !3554
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !3555
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3557
  br label %36, !dbg !3558

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, i8* %23, i32 1023, !dbg !3559
  store i8 0, i8* %28, align 1, !dbg !3560, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !3552
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !3552
  %29 = call i8* @halide_string_to_string(i8* nonnull %23, i8* nonnull %28, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i32 0, i32 0)) #8, !dbg !3554
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !3555
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1088, metadata !DIExpression()) #10, !dbg !3561
  %30 = ptrtoint i8* %29 to i32, !dbg !3563
  %31 = ptrtoint i8* %23 to i32, !dbg !3563
  %32 = add i32 %30, 1, !dbg !3563
  %33 = sub i32 %32, %31, !dbg !3564
  %34 = sext i32 %33 to i64, !dbg !3565
  %35 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %23, i64 %34) #8, !dbg !3566
  call void @halide_error(i8* %0, i8* nonnull %23) #8, !dbg !3567
  br label %36

36:                                               ; preds = %27, %25
  call void @free(i8* %23) #8, !dbg !3568
  ret i32 -15, !dbg !3569
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #4 !dbg !3570 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3572, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3573, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !3574, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !3580
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !3580
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !3580
  %4 = tail call i8* @malloc(i32 1024) #8, !dbg !3582
  %5 = icmp eq i8* %4, null, !dbg !3583
  br i1 %5, label %8, label %6, !dbg !3584

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i32 1023, !dbg !3585
  store i8 0, i8* %7, align 1, !dbg !3586, !tbaa !652
  br label %8, !dbg !3587

8:                                                ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ null, %3 ], !dbg !3588
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3589
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3589
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i32 0, i32 0)) #8, !dbg !3591
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3592
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3592
  %11 = tail call i8* @halide_pointer_to_string(i8* %10, i8* %9, i8* %0) #8, !dbg !3594
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3595
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3595
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %9, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0)) #8, !dbg !3597
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3598
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3598
  %13 = tail call i8* @halide_buffer_to_string(i8* %12, i8* %9, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3600
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3601
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3601
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %9, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)) #8, !dbg !3603
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3604
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !924, metadata !DIExpression()) #10, !dbg !3604
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %9, %struct.halide_buffer_t* nonnull %2) #8, !dbg !3606
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3607
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3607
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %9, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !3609
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !3610
  br i1 %5, label %17, label %18, !dbg !3612

17:                                               ; preds = %8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3613
  br label %25, !dbg !3614

18:                                               ; preds = %8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !3615
  %19 = ptrtoint i8* %16 to i32, !dbg !3617
  %20 = ptrtoint i8* %4 to i32, !dbg !3617
  %21 = add i32 %19, 1, !dbg !3617
  %22 = sub i32 %21, %20, !dbg !3618
  %23 = sext i32 %22 to i64, !dbg !3619
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %23) #8, !dbg !3620
  tail call void @halide_print(i8* %0, i8* nonnull %4) #8, !dbg !3621
  br label %25

25:                                               ; preds = %17, %18
  call void @free(i8* %4) #8, !dbg !3622
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !3623
  %27 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %26, align 8, !dbg !3623, !tbaa !1211
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 1, !dbg !3624
  store %struct.halide_device_interface_t* %27, %struct.halide_device_interface_t** %28, align 8, !dbg !3625, !tbaa !1211
  %29 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !3626
  %30 = load i64, i64* %29, align 8, !dbg !3626, !tbaa !717
  %31 = trunc i64 %30 to i32, !dbg !3627
  %32 = inttoptr i32 %31 to %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"*, !dbg !3627
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %32, metadata !3575, metadata !DIExpression()), !dbg !3579
  %33 = call i8* @malloc(i32 36) #8, !dbg !3628
  call void @llvm.dbg.value(metadata i8* %33, metadata !1224, metadata !DIExpression()) #10, !dbg !3630
  %34 = bitcast i8* %33 to i8**, !dbg !3631
  store i8* null, i8** %34, align 4, !dbg !3632, !tbaa !1258
  %35 = getelementptr inbounds i8, i8* %33, i32 4, !dbg !3633
  %36 = bitcast i8* %35 to i16*, !dbg !3633
  store i16 0, i16* %36, align 4, !dbg !3634, !tbaa !1230
  %37 = getelementptr inbounds i8, i8* %33, i32 6, !dbg !3635
  %38 = bitcast i8* %37 to i16*, !dbg !3635
  store i16 0, i16* %38, align 2, !dbg !3636, !tbaa !1236
  %39 = getelementptr inbounds i8, i8* %33, i32 8, !dbg !3637
  %40 = bitcast i8* %39 to i16*, !dbg !3637
  store i16 0, i16* %40, align 4, !dbg !3638, !tbaa !1239
  %41 = getelementptr inbounds i8, i8* %33, i32 10, !dbg !3639
  %42 = bitcast i8* %41 to i16*, !dbg !3639
  store i16 0, i16* %42, align 2, !dbg !3640, !tbaa !1242
  %43 = getelementptr inbounds i8, i8* %33, i32 12, !dbg !3641
  %44 = bitcast i8* %43 to i8**, !dbg !3641
  store i8* null, i8** %44, align 4, !dbg !3642, !tbaa !1260
  %45 = getelementptr inbounds i8, i8* %33, i32 16, !dbg !3643
  %46 = bitcast i8* %45 to i32*, !dbg !3643
  store i32 0, i32* %46, align 4, !dbg !3644, !tbaa !1266
  %47 = getelementptr inbounds i8, i8* %33, i32 20, !dbg !3645
  %48 = bitcast i8* %47 to i32*, !dbg !3645
  store i32 0, i32* %48, align 4, !dbg !3646, !tbaa !1269
  %49 = getelementptr inbounds i8, i8* %33, i32 24, !dbg !3647
  %50 = bitcast i8* %49 to i32*, !dbg !3647
  store i32 0, i32* %50, align 4, !dbg !3648, !tbaa !1272
  %51 = getelementptr inbounds i8, i8* %33, i32 28, !dbg !3649
  store i8 0, i8* %51, align 4, !dbg !3650, !tbaa !1249
  %52 = getelementptr inbounds i8, i8* %33, i32 32, !dbg !3651
  %53 = bitcast i8* %52 to i32*, !dbg !3651
  store i32 0, i32* %53, align 4, !dbg !3652, !tbaa !1252
  %54 = getelementptr inbounds i8, i8* %33, i32 29, !dbg !3653
  store i8 0, i8* %54, align 1, !dbg !3654, !tbaa !1255
  call void @llvm.dbg.value(metadata i8* %33, metadata !3578, metadata !DIExpression()), !dbg !3579
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %32, i32 0, i32 0, !dbg !3655
  %56 = load i8*, i8** %55, align 4, !dbg !3655, !tbaa !1258
  store i8* %56, i8** %34, align 4, !dbg !3656, !tbaa !1258
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %32, i32 0, i32 3, !dbg !3657
  %58 = load i16, i16* %57, align 4, !dbg !3657, !tbaa !1239
  %59 = zext i16 %58 to i32, !dbg !3658
  %60 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 6, !dbg !3659
  %61 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %60, align 8, !dbg !3659, !tbaa !755
  %62 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %61, i32 0, i32 0, !dbg !3660
  %63 = load i32, i32* %62, align 4, !dbg !3660, !tbaa !767
  %64 = add nsw i32 %63, %59, !dbg !3661
  %65 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6, !dbg !3662
  %66 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %65, align 8, !dbg !3662, !tbaa !755
  %67 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %66, i32 0, i32 0, !dbg !3663
  %68 = load i32, i32* %67, align 4, !dbg !3663, !tbaa !767
  %69 = sub i32 %64, %68, !dbg !3664
  %70 = trunc i32 %69 to i16, !dbg !3658
  store i16 %70, i16* %40, align 4, !dbg !3665, !tbaa !1239
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %32, i32 0, i32 4, !dbg !3666
  %72 = load i16, i16* %71, align 2, !dbg !3666, !tbaa !1242
  %73 = zext i16 %72 to i32, !dbg !3667
  %74 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %61, i32 1, i32 0, !dbg !3668
  %75 = load i32, i32* %74, align 4, !dbg !3668, !tbaa !767
  %76 = add nsw i32 %75, %73, !dbg !3669
  %77 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %66, i32 1, i32 0, !dbg !3670
  %78 = load i32, i32* %77, align 4, !dbg !3670, !tbaa !767
  %79 = sub i32 %76, %78, !dbg !3671
  %80 = trunc i32 %79 to i16, !dbg !3667
  store i16 %80, i16* %42, align 2, !dbg !3672, !tbaa !1242
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %32, i32 0, i32 5, !dbg !3673
  %82 = load i8*, i8** %81, align 4, !dbg !3673, !tbaa !1260
  store i8* %82, i8** %44, align 4, !dbg !3674, !tbaa !1260
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %32, i32 0, i32 6, !dbg !3675
  %84 = load i32, i32* %83, align 4, !dbg !3675, !tbaa !1266
  store i32 %84, i32* %46, align 4, !dbg !3676, !tbaa !1266
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %32, i32 0, i32 7, !dbg !3677
  %86 = load i32, i32* %85, align 4, !dbg !3677, !tbaa !1269
  store i32 %86, i32* %48, align 4, !dbg !3678, !tbaa !1269
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %32, i32 0, i32 8, !dbg !3679
  %88 = load i32, i32* %87, align 4, !dbg !3679, !tbaa !1272
  store i32 %88, i32* %50, align 4, !dbg !3680, !tbaa !1272
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %32, i32 0, i32 9, !dbg !3681
  %90 = load i8, i8* %89, align 4, !dbg !3681, !tbaa !1249, !range !2498
  store i8 %90, i8* %51, align 4, !dbg !3682, !tbaa !1249
  %91 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %32, i32 0, i32 10, !dbg !3683
  %92 = load i8, i8* %91, align 1, !dbg !3683, !tbaa !1255, !range !2498
  store i8 %92, i8* %54, align 1, !dbg !3684, !tbaa !1255
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle", %"struct.Halide::Runtime::Internal::HexagonDma::dma_device_handle"* %32, i32 0, i32 11, !dbg !3685
  %94 = load i32, i32* %93, align 4, !dbg !3685, !tbaa !1252
  store i32 %94, i32* %53, align 4, !dbg !3686, !tbaa !1252
  %95 = ptrtoint i8* %33 to i32, !dbg !3687
  %96 = zext i32 %95 to i64, !dbg !3687
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 0, !dbg !3688
  store i64 %96, i64* %97, align 8, !dbg !3689, !tbaa !717
  ret i32 0, !dbg !3690
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #4 !dbg !3691 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3693, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3694, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i32 %2, metadata !3695, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i32 %3, metadata !3696, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !3697, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !3699
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !3699
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !3699
  %6 = tail call i8* @malloc(i32 1024) #8, !dbg !3701
  %7 = icmp eq i8* %6, null, !dbg !3702
  br i1 %7, label %10, label %8, !dbg !3703

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %6, i32 1023, !dbg !3704
  store i8 0, i8* %9, align 1, !dbg !3705, !tbaa !652
  br label %10, !dbg !3706

10:                                               ; preds = %5, %8
  %11 = phi i8* [ %9, %8 ], [ null, %5 ], !dbg !3707
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3708
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3708
  %12 = tail call i8* @halide_string_to_string(i8* %6, i8* %11, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i32 0, i32 0)) #8, !dbg !3710
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3711
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3711
  %13 = tail call i8* @halide_pointer_to_string(i8* %12, i8* %11, i8* %0) #8, !dbg !3713
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3714
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3714
  %14 = tail call i8* @halide_string_to_string(i8* %13, i8* %11, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0)) #8, !dbg !3716
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3717
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3717
  %15 = tail call i8* @halide_buffer_to_string(i8* %14, i8* %11, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3719
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3720
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %11, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)) #8, !dbg !3722
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3723
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !924, metadata !DIExpression()) #10, !dbg !3723
  %17 = tail call i8* @halide_buffer_to_string(i8* %16, i8* %11, %struct.halide_buffer_t* nonnull %4) #8, !dbg !3725
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3726
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3726
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %11, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !3728
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !3729
  br i1 %7, label %19, label %20, !dbg !3731

19:                                               ; preds = %10
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3732
  br label %27, !dbg !3733

20:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !3734
  %21 = ptrtoint i8* %18 to i32, !dbg !3736
  %22 = ptrtoint i8* %6 to i32, !dbg !3736
  %23 = add i32 %21, 1, !dbg !3736
  %24 = sub i32 %23, %22, !dbg !3737
  %25 = sext i32 %24 to i64, !dbg !3738
  %26 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %6, i64 %25) #8, !dbg !3739
  tail call void @halide_print(i8* %0, i8* nonnull %6) #8, !dbg !3740
  br label %27

27:                                               ; preds = %19, %20
  call void @free(i8* %6) #8, !dbg !3741
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.43, i32 0, i32 0)) #8, !dbg !3742
  call void @abort() #8, !dbg !3742
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1049, metadata !DIExpression()) #10, !dbg !3746
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()) #10, !dbg !3746
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()) #10, !dbg !3746
  %28 = call i8* @malloc(i32 1024) #8, !dbg !3748
  %29 = icmp eq i8* %28, null, !dbg !3749
  br i1 %29, label %30, label %32, !dbg !3750

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !3751
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !3751
  %31 = call i8* @halide_string_to_string(i8* %28, i8* null, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i32 0, i32 0)) #8, !dbg !3753
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !3754
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3756
  br label %41, !dbg !3757

32:                                               ; preds = %27
  %33 = getelementptr inbounds i8, i8* %28, i32 1023, !dbg !3758
  store i8 0, i8* %33, align 1, !dbg !3759, !tbaa !652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !3751
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !3751
  %34 = call i8* @halide_string_to_string(i8* nonnull %28, i8* nonnull %33, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i32 0, i32 0)) #8, !dbg !3753
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !3754
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1088, metadata !DIExpression()) #10, !dbg !3760
  %35 = ptrtoint i8* %34 to i32, !dbg !3762
  %36 = ptrtoint i8* %28 to i32, !dbg !3762
  %37 = add i32 %35, 1, !dbg !3762
  %38 = sub i32 %37, %36, !dbg !3763
  %39 = sext i32 %38 to i64, !dbg !3764
  %40 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %28, i64 %39) #8, !dbg !3765
  call void @halide_error(i8* %0, i8* nonnull %28) #8, !dbg !3766
  br label %41

41:                                               ; preds = %32, %30
  call void @free(i8* %28) #8, !dbg !3767
  ret i32 -1, !dbg !3768
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3769 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3771, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3772, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !3774
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !3774
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !3774
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !3776
  %4 = icmp eq i8* %3, null, !dbg !3777
  br i1 %4, label %7, label %5, !dbg !3778

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !3779
  store i8 0, i8* %6, align 1, !dbg !3780, !tbaa !652
  br label %7, !dbg !3781

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !3782
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3783
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.45, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3783
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @.str.45, i32 0, i32 0)) #8, !dbg !3785
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3786
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3786
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !3788
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3789
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3789
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0)) #8, !dbg !3791
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3792
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3792
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3794
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3795
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3795
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !3797
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !3798
  br i1 %4, label %14, label %15, !dbg !3800

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3801
  br label %22, !dbg !3802

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !3803
  %16 = ptrtoint i8* %13 to i32, !dbg !3805
  %17 = ptrtoint i8* %3 to i32, !dbg !3805
  %18 = add i32 %16, 1, !dbg !3805
  %19 = sub i32 %18, %17, !dbg !3806
  %20 = sext i32 %19 to i64, !dbg !3807
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %20) #8, !dbg !3808
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !3809
  br label %22

22:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !3810
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !3811
  %24 = load i64, i64* %23, align 8, !dbg !3811, !tbaa !717
  %25 = icmp eq i64 %24, 0, !dbg !3811
  %26 = trunc i64 %24 to i32, !dbg !3814
  br i1 %25, label %27, label %30, !dbg !3814

27:                                               ; preds = %22
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.47, i32 0, i32 0)) #8, !dbg !3815
  call void @abort() #8, !dbg !3815
  %28 = load i64, i64* %23, align 8, !dbg !3817, !tbaa !717
  %29 = trunc i64 %28 to i32, !dbg !3815
  br label %30, !dbg !3815

30:                                               ; preds = %22, %27
  %31 = phi i32 [ %26, %22 ], [ %29, %27 ]
  %32 = inttoptr i32 %31 to i8*, !dbg !3818
  call void @free(i8* %32) #8, !dbg !3819
  store i64 0, i64* %23, align 8, !dbg !3820, !tbaa !717
  ret i32 0, !dbg !3821
}

declare !dbg !3822 dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_sync(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3823 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3825, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3826, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !3828
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !3828
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !3828
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !3830
  %4 = icmp eq i8* %3, null, !dbg !3831
  br i1 %4, label %7, label %5, !dbg !3832

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !3833
  store i8 0, i8* %6, align 1, !dbg !3834, !tbaa !652
  br label %7, !dbg !3835

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !3836
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3837
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3837
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i32 0, i32 0)) #8, !dbg !3839
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3840
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3840
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !3842
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3843
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3843
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0)) #8, !dbg !3845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3846
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3846
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3848
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3849
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3849
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !3851
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !3852
  br i1 %4, label %14, label %15, !dbg !3854

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3855
  br label %22, !dbg !3856

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !3857
  %16 = ptrtoint i8* %13 to i32, !dbg !3859
  %17 = ptrtoint i8* %3 to i32, !dbg !3859
  %18 = add i32 %16, 1, !dbg !3859
  %19 = sub i32 %18, %17, !dbg !3860
  %20 = sext i32 %19 to i64, !dbg !3861
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %20) #8, !dbg !3862
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !3863
  br label %22

22:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !3864
  ret i32 0, !dbg !3865
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3866 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3868, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3869, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !3871
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !3871
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !3871
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !3873
  %4 = icmp eq i8* %3, null, !dbg !3874
  br i1 %4, label %7, label %5, !dbg !3875

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !3876
  store i8 0, i8* %6, align 1, !dbg !3877, !tbaa !652
  br label %7, !dbg !3878

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !3879
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3880
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.57, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3880
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @.str.57, i32 0, i32 0)) #8, !dbg !3882
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3883
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3883
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !3885
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3886
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3886
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0)) #8, !dbg !3888
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3889
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3889
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3891
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3892
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3892
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !3894
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !3895
  br i1 %4, label %14, label %15, !dbg !3897

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3898
  br label %22, !dbg !3899

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !3900
  %16 = ptrtoint i8* %13 to i32, !dbg !3902
  %17 = ptrtoint i8* %3 to i32, !dbg !3902
  %18 = add i32 %16, 1, !dbg !3902
  %19 = sub i32 %18, %17, !dbg !3903
  %20 = sext i32 %19 to i64, !dbg !3904
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %20) #8, !dbg !3905
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !3906
  br label %22

22:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !3907
  %23 = call i32 @halide_default_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE) #8, !dbg !3908
  ret i32 %23, !dbg !3909
}

declare !dbg !3910 extern_weak dso_local i32 @halide_default_device_and_host_malloc(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3911 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3913, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3914, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !3916
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !3916
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !3916
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !3918
  %4 = icmp eq i8* %3, null, !dbg !3919
  br i1 %4, label %7, label %5, !dbg !3920

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !3921
  store i8 0, i8* %6, align 1, !dbg !3922, !tbaa !652
  br label %7, !dbg !3923

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !3924
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3925
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.58, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3925
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.58, i32 0, i32 0)) #8, !dbg !3927
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3928
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3928
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !3930
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3931
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3931
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0)) #8, !dbg !3933
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !921, metadata !DIExpression()) #10, !dbg !3934
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !924, metadata !DIExpression()) #10, !dbg !3934
  %12 = tail call i8* @halide_buffer_to_string(i8* %11, i8* %8, %struct.halide_buffer_t* nonnull %1) #8, !dbg !3936
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3937
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3937
  %13 = tail call i8* @halide_string_to_string(i8* %12, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !3939
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !3940
  br i1 %4, label %14, label %15, !dbg !3942

14:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3943
  br label %22, !dbg !3944

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !3945
  %16 = ptrtoint i8* %13 to i32, !dbg !3947
  %17 = ptrtoint i8* %3 to i32, !dbg !3947
  %18 = add i32 %16, 1, !dbg !3947
  %19 = sub i32 %18, %17, !dbg !3948
  %20 = sext i32 %19 to i64, !dbg !3949
  %21 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %20) #8, !dbg !3950
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !3951
  br label %22

22:                                               ; preds = %14, %15
  call void @free(i8* %3) #8, !dbg !3952
  %23 = call i32 @halide_default_device_and_host_free(i8* %0, %struct.halide_buffer_t* nonnull %1, %struct.halide_device_interface_t* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE) #8, !dbg !3953
  ret i32 %23, !dbg !3954
}

declare !dbg !3955 extern_weak dso_local i32 @halide_default_device_and_host_free(i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local %struct.halide_device_interface_t* @halide_hexagon_dma_device_interface() local_unnamed_addr #7 !dbg !3956 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE, !dbg !3959
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_device_release(i8* %0) #4 !dbg !3960 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3962, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !3964
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !3964
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !3964
  %2 = tail call i8* @malloc(i32 1024) #8, !dbg !3966
  %3 = icmp eq i8* %2, null, !dbg !3967
  br i1 %3, label %6, label %4, !dbg !3968

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, i8* %2, i32 1023, !dbg !3969
  store i8 0, i8* %5, align 1, !dbg !3970, !tbaa !652
  br label %6, !dbg !3971

6:                                                ; preds = %1, %4
  %7 = phi i8* [ %5, %4 ], [ null, %1 ], !dbg !3972
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3973
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.59, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3973
  %8 = tail call i8* @halide_string_to_string(i8* %2, i8* %7, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.59, i32 0, i32 0)) #8, !dbg !3975
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !3976
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !3976
  %9 = tail call i8* @halide_pointer_to_string(i8* %8, i8* %7, i8* %0) #8, !dbg !3978
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !3979
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !3979
  %10 = tail call i8* @halide_string_to_string(i8* %9, i8* %7, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !3981
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !3982
  br i1 %3, label %11, label %12, !dbg !3984

11:                                               ; preds = %6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !3985
  br label %19, !dbg !3986

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !3987
  %13 = ptrtoint i8* %10 to i32, !dbg !3989
  %14 = ptrtoint i8* %2 to i32, !dbg !3989
  %15 = add i32 %13, 1, !dbg !3989
  %16 = sub i32 %15, %14, !dbg !3990
  %17 = sext i32 %16 to i64, !dbg !3991
  %18 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %17) #8, !dbg !3992
  tail call void @halide_print(i8* %0, i8* nonnull %2) #8, !dbg !3993
  br label %19

19:                                               ; preds = %12, %11
  tail call void @free(i8* %2) #8, !dbg !3994
  ret i32 0, !dbg !3995
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_dma_power_mode_voting(i8* %0, i32 %1) local_unnamed_addr #4 !dbg !3996 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4001, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i32 %1, metadata !4002, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !613, metadata !DIExpression()) #10, !dbg !4004
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()) #10, !dbg !4004
  call void @llvm.dbg.value(metadata i8* null, metadata !617, metadata !DIExpression()) #10, !dbg !4004
  %3 = tail call i8* @malloc(i32 1024) #8, !dbg !4006
  %4 = icmp eq i8* %3, null, !dbg !4007
  br i1 %4, label %7, label %5, !dbg !4008

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !4009
  store i8 0, i8* %6, align 1, !dbg !4010, !tbaa !652
  br label %7, !dbg !4011

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !4012
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !4013
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.60, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !4013
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.60, i32 0, i32 0)) #8, !dbg !4015
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !911, metadata !DIExpression()) #10, !dbg !4016
  call void @llvm.dbg.value(metadata i8* %0, metadata !914, metadata !DIExpression()) #10, !dbg !4016
  %10 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %0) #8, !dbg !4018
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !630, metadata !DIExpression()) #10, !dbg !4019
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), metadata !633, metadata !DIExpression()) #10, !dbg !4019
  %11 = tail call i8* @halide_string_to_string(i8* %10, i8* %8, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !4021
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !639, metadata !DIExpression()) #10, !dbg !4022
  br i1 %4, label %12, label %13, !dbg !4024

12:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !4025
  br label %20, !dbg !4026

13:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !653, metadata !DIExpression()) #10, !dbg !4027
  %14 = ptrtoint i8* %11 to i32, !dbg !4029
  %15 = ptrtoint i8* %3 to i32, !dbg !4029
  %16 = add i32 %14, 1, !dbg !4029
  %17 = sub i32 %16, %15, !dbg !4030
  %18 = sext i32 %17 to i64, !dbg !4031
  %19 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %18) #8, !dbg !4032
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !4033
  br label %20

20:                                               ; preds = %13, %12
  tail call void @free(i8* %3) #8, !dbg !4034
  switch i32 %1, label %35 [
    i32 5, label %21
    i32 0, label %23
    i32 4, label %25
    i32 1, label %27
    i32 6, label %29
    i32 2, label %31
    i32 3, label %33
  ], !dbg !4035

21:                                               ; preds = %20
  %22 = tail call i32 @nDmaWrapper_PowerVoting(i32 1) #8, !dbg !4036
  br label %55, !dbg !4038

23:                                               ; preds = %20
  %24 = tail call i32 @nDmaWrapper_PowerVoting(i32 2) #8, !dbg !4039
  br label %55, !dbg !4040

25:                                               ; preds = %20
  %26 = tail call i32 @nDmaWrapper_PowerVoting(i32 3) #8, !dbg !4041
  br label %55, !dbg !4042

27:                                               ; preds = %20
  %28 = tail call i32 @nDmaWrapper_PowerVoting(i32 4) #8, !dbg !4043
  br label %55, !dbg !4044

29:                                               ; preds = %20
  %30 = tail call i32 @nDmaWrapper_PowerVoting(i32 5) #8, !dbg !4045
  br label %55, !dbg !4046

31:                                               ; preds = %20
  %32 = tail call i32 @nDmaWrapper_PowerVoting(i32 6) #8, !dbg !4047
  br label %55, !dbg !4048

33:                                               ; preds = %20
  %34 = tail call i32 @nDmaWrapper_PowerVoting(i32 -3) #8, !dbg !4049
  br label %55, !dbg !4050

35:                                               ; preds = %20
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1049, metadata !DIExpression()) #10, !dbg !4051
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()) #10, !dbg !4051
  call void @llvm.dbg.value(metadata i8* null, metadata !1053, metadata !DIExpression()) #10, !dbg !4051
  %36 = tail call i8* @malloc(i32 1024) #8, !dbg !4053
  %37 = icmp eq i8* %36, null, !dbg !4054
  br i1 %37, label %40, label %38, !dbg !4055

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, i8* %36, i32 1023, !dbg !4056
  store i8 0, i8* %39, align 1, !dbg !4057, !tbaa !652
  br label %40, !dbg !4058

40:                                               ; preds = %35, %38
  %41 = phi i8* [ %39, %38 ], [ null, %35 ], !dbg !4059
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !4060
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.61, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !4060
  %42 = tail call i8* @halide_string_to_string(i8* %36, i8* %41, i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.61, i32 0, i32 0)) #8, !dbg !4062
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1854, metadata !DIExpression()) #10, !dbg !4063
  call void @llvm.dbg.value(metadata i32 %1, metadata !1857, metadata !DIExpression()) #10, !dbg !4063
  %43 = sext i32 %1 to i64, !dbg !4065
  %44 = tail call i8* @halide_int64_to_string(i8* %42, i8* %41, i64 %43, i32 1) #8, !dbg !4066
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1066, metadata !DIExpression()) #10, !dbg !4067
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), metadata !1069, metadata !DIExpression()) #10, !dbg !4067
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %41, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0)) #8, !dbg !4069
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1075, metadata !DIExpression()) #10, !dbg !4070
  br i1 %37, label %46, label %47, !dbg !4072

46:                                               ; preds = %40
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !4073
  br label %54, !dbg !4074

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1088, metadata !DIExpression()) #10, !dbg !4075
  %48 = ptrtoint i8* %45 to i32, !dbg !4077
  %49 = ptrtoint i8* %36 to i32, !dbg !4077
  %50 = add i32 %48, 1, !dbg !4077
  %51 = sub i32 %50, %49, !dbg !4078
  %52 = sext i32 %51 to i64, !dbg !4079
  %53 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %36, i64 %52) #8, !dbg !4080
  tail call void @halide_error(i8* %0, i8* nonnull %36) #8, !dbg !4081
  br label %54

54:                                               ; preds = %47, %46
  tail call void @free(i8* %36) #8, !dbg !4082
  br label %55, !dbg !4083

55:                                               ; preds = %54, %33, %31, %29, %27, %25, %23, %21
  %56 = phi i32 [ -1, %54 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], !dbg !4084
  ret i32 %56, !dbg !4085
}

declare !dbg !4086 dso_local i32 @nDmaWrapper_PowerVoting(i32) local_unnamed_addr #3

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

declare !dbg !4089 dso_local i32 @HAP_cache_unlock(i8*) local_unnamed_addr #3

declare !dbg !4090 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #3

declare !dbg !4093 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #3

declare !dbg !4094 dso_local i32 @nDmaWrapper_GetRecommendedWalkSize(i32, i1 zeroext, %struct.stDmaWrapper_RoiAlignInfo*) local_unnamed_addr #3

declare !dbg !4098 dso_local i32 @nDmaWrapper_GetRecommendedIntermBufStride(i32, %struct.stDmaWrapper_RoiAlignInfo*, i1 zeroext) local_unnamed_addr #3

declare !dbg !4101 extern_weak dso_local i8* @halide_hexagon_allocate_from_dma_pool(i8*, i8*) local_unnamed_addr #3

declare !dbg !4104 dso_local i32 @nDmaWrapper_DmaTransferSetup(i8*, %struct.stDmaWrapper_DmaTransferSetup*) local_unnamed_addr #3

declare !dbg !4108 dso_local i32 @nDmaWrapper_Move(i8*) local_unnamed_addr #3

declare !dbg !4109 dso_local i32 @nDmaWrapper_Wait(i8*) local_unnamed_addr #3

declare !dbg !4110 extern_weak dso_local i32 @halide_hexagon_free_to_dma_pool(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !4113 extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !4116 dso_local i8* @malloc(i32) local_unnamed_addr #3

declare !dbg !4119 dso_local i8* @HAP_cache_lock(i32, i8**) local_unnamed_addr #3

declare !dbg !4122 extern_weak dso_local i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !4125 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

declare !dbg !4126 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !4129 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !4132 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !4135 extern_weak dso_local i8* @halide_buffer_to_string(i8*, i8*, %struct.halide_buffer_t*) local_unnamed_addr #3

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

!llvm.dbg.cu = !{!230}
!llvm.module.flags = !{!511, !512, !513}
!llvm.ident = !{!514}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dma_desc_pool", linkageName: "_ZN6Halide7Runtime8Internal10HexagonDma13dma_desc_poolE", scope: !2, file: !6, line: 64, type: !7, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "HexagonDma", scope: !3)
!3 = !DINamespace(name: "Internal", scope: !4)
!4 = !DINamespace(name: "Runtime", scope: !5)
!5 = !DINamespace(name: "Halide", scope: null)
!6 = !DIFile(filename: "src/runtime/hexagon_dma.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "pdesc_pool", scope: !2, file: !6, line: 62, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "desc_pool_t", scope: !2, file: !6, line: 60, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_pool", scope: !2, file: !6, line: 56, size: 96, flags: DIFlagTypePassByValue, elements: !11, identifier: "_ZTSN6Halide7Runtime8Internal10HexagonDma9desc_poolE")
!11 = !{!12, !14, !16}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !10, file: !6, line: 57, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !10, file: !6, line: 58, baseType: !15, size: 8, offset: 32)
!15 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !10, file: !6, line: 59, baseType: !17, size: 32, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 32)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "hexagon_desc_mutex", linkageName: "_ZN6Halide7Runtime8Internal10HexagonDma18hexagon_desc_mutexE", scope: !2, file: !6, line: 65, type: !20, isLocal: false, isDefinition: true)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !21, line: 120, size: 32, flags: DIFlagTypePassByValue, elements: !22, identifier: "_ZTS12halide_mutex")
!21 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !20, file: !21, line: 121, baseType: !24, size: 32)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !29)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !26, line: 68, baseType: !27)
!26 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !26, line: 12, baseType: !28)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30}
!30 = !DISubrange(count: 1)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "hexagon_dma_device_interface", linkageName: "_ZN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_device_interfaceE", scope: !2, file: !6, line: 740, type: !33, isLocal: false, isDefinition: true)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !21, line: 723, size: 512, flags: DIFlagTypePassByValue, elements: !34, identifier: "_ZTS25halide_device_interface_t")
!34 = !{!35, !160, !164, !165, !169, !170, !171, !172, !173, !177, !182, !186, !187, !191, !192, !197}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !33, file: !21, line: 724, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 32)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !13, !40, !47}
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !21, line: 1423, size: 320, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !42, identifier: "_ZTS15halide_buffer_t")
!42 = !{!43, !46, !49, !53, !54, !94, !96, !119, !120, !130, !134, !137, !138, !141, !142, !146, !149, !150, !151, !156, !159}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !41, file: !21, line: 1425, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !26, line: 10, baseType: !45)
!45 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !41, file: !21, line: 1428, baseType: !47, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !41, file: !21, line: 1433, baseType: !50, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !26, line: 16, baseType: !52)
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !21, line: 1436, baseType: !44, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !21, line: 1439, baseType: !55, size: 32, offset: 192)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !21, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !56, identifier: "_ZTS13halide_type_t")
!56 = !{!57, !66, !67, !70, !74, !77, !82, !86, !87, !88, !91}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !55, file: !21, line: 434, baseType: !58, size: 8, align: 8)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !21, line: 413, baseType: !59)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !21, line: 403, baseType: !51, size: 8, elements: !60, identifier: "_ZTS18halide_type_code_t")
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!64 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!65 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !55, file: !21, line: 442, baseType: !51, size: 8, align: 8, offset: 8)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !55, file: !21, line: 446, baseType: !68, size: 16, align: 16, offset: 16)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !26, line: 14, baseType: !69)
!69 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!70 = !DISubprogram(name: "halide_type_t", scope: !55, file: !21, line: 453, type: !71, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !58, !51, !68}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!74 = !DISubprogram(name: "halide_type_t", scope: !55, file: !21, line: 459, type: !75, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !73}
!77 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !55, file: !21, line: 463, type: !78, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!78 = !DISubroutineType(types: !79)
!79 = !{!55, !80, !68}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!82 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !55, file: !21, line: 468, type: !83, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!83 = !DISubroutineType(types: !84)
!84 = !{!15, !80, !85}
!85 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !81, size: 32)
!86 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !55, file: !21, line: 472, type: !83, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!87 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !55, file: !21, line: 476, type: !83, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!88 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !55, file: !21, line: 481, type: !89, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!89 = !DISubroutineType(types: !90)
!90 = !{!39, !80}
!91 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !55, file: !21, line: 485, type: !92, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!92 = !DISubroutineType(types: !93)
!93 = !{!27, !80}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !41, file: !21, line: 1442, baseType: !95, size: 32, offset: 224)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !26, line: 11, baseType: !39)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !41, file: !21, line: 1446, baseType: !97, size: 32, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !21, line: 1409, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !21, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !100, identifier: "_ZTS18halide_dimension_t")
!100 = !{!101, !102, !103, !104, !105, !109, !112, !118}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !99, file: !21, line: 1383, baseType: !95, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !99, file: !21, line: 1383, baseType: !95, size: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !99, file: !21, line: 1383, baseType: !95, size: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !21, line: 1386, baseType: !27, size: 32, offset: 96)
!105 = !DISubprogram(name: "halide_dimension_t", scope: !99, file: !21, line: 1388, type: !106, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!109 = !DISubprogram(name: "halide_dimension_t", scope: !99, file: !21, line: 1389, type: !110, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !108, !95, !95, !95, !27}
!112 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !99, file: !21, line: 1393, type: !113, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DISubroutineType(types: !114)
!114 = !{!15, !115, !117}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!117 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !116, size: 32)
!118 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !99, file: !21, line: 1400, type: !113, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !41, file: !21, line: 1449, baseType: !13, size: 32, offset: 288)
!120 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !41, file: !21, line: 1454, type: !121, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = !DISubroutineType(types: !122)
!122 = !{!15, !123, !125}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !21, line: 1416, baseType: !126)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 1415, baseType: !28, size: 32, elements: !127, identifier: "_ZTS19halide_buffer_flags")
!127 = !{!128, !129}
!128 = !DIEnumerator(name: "halide_buffer_flag_host_dirty", value: 1, isUnsigned: true)
!129 = !DIEnumerator(name: "halide_buffer_flag_device_dirty", value: 2, isUnsigned: true)
!130 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !41, file: !21, line: 1458, type: !131, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !133, !125, !15}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 27, baseType: !28)
!146 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !41, file: !21, line: 1495, type: !147, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!147 = !DISubroutineType(types: !148)
!148 = !{!50, !123}
!149 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !41, file: !21, line: 1506, type: !147, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!150 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !41, file: !21, line: 1518, type: !143, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!151 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !41, file: !21, line: 1523, type: !152, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DISubroutineType(types: !153)
!153 = !{!50, !123, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!156 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !41, file: !21, line: 1534, type: !157, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!157 = !DISubroutineType(types: !158)
!158 = !{!39, !133, !13}
!159 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !41, file: !21, line: 1545, type: !135, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !33, file: !21, line: 726, baseType: !161, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 32)
!162 = !DISubroutineType(types: !163)
!163 = !{!39, !13, !40}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !33, file: !21, line: 727, baseType: !161, size: 32, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !33, file: !21, line: 728, baseType: !166, size: 32, offset: 96)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 32)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !13, !47}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !33, file: !21, line: 730, baseType: !161, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !33, file: !21, line: 731, baseType: !36, size: 32, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !33, file: !21, line: 733, baseType: !36, size: 32, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !33, file: !21, line: 735, baseType: !161, size: 32, offset: 224)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !33, file: !21, line: 736, baseType: !174, size: 32, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 32)
!175 = !DISubroutineType(types: !176)
!176 = !{!39, !13, !40, !47, !40}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !33, file: !21, line: 738, baseType: !178, size: 32, offset: 288)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 32)
!179 = !DISubroutineType(types: !180)
!180 = !{!39, !13, !181, !40}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !33, file: !21, line: 740, baseType: !183, size: 32, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 32)
!184 = !DISubroutineType(types: !185)
!185 = !{!39, !13, !181, !39, !39, !40}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !33, file: !21, line: 742, baseType: !161, size: 32, offset: 352)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !33, file: !21, line: 743, baseType: !188, size: 32, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 32)
!189 = !DISubroutineType(types: !190)
!190 = !{!39, !13, !40, !44, !47}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !33, file: !21, line: 745, baseType: !161, size: 32, offset: 416)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !33, file: !21, line: 746, baseType: !193, size: 32, offset: 448)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 32)
!194 = !DISubroutineType(types: !195)
!195 = !{!39, !13, !196, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !33, file: !21, line: 747, baseType: !198, size: 32, offset: 480)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !201, line: 10, size: 512, flags: DIFlagTypePassByValue, elements: !202, identifier: "_ZTS30halide_device_interface_impl_t")
!201 = !DIFile(filename: "src/runtime/device_interface.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!202 = !{!203, !207, !208, !209, !210, !211, !215, !216, !217, !218, !219, !220, !221, !222, !223, !227}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "use_module", scope: !200, file: !201, line: 16, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 32)
!205 = !DISubroutineType(types: !206)
!206 = !{null}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "release_module", scope: !200, file: !201, line: 17, baseType: !204, size: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !200, file: !201, line: 18, baseType: !161, size: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !200, file: !201, line: 19, baseType: !161, size: 32, offset: 96)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !200, file: !201, line: 20, baseType: !161, size: 32, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !200, file: !201, line: 21, baseType: !212, size: 32, offset: 160)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 32)
!213 = !DISubroutineType(types: !214)
!214 = !{!39, !13}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !200, file: !201, line: 22, baseType: !161, size: 32, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !200, file: !201, line: 23, baseType: !161, size: 32, offset: 224)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !200, file: !201, line: 24, baseType: !161, size: 32, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !200, file: !201, line: 25, baseType: !161, size: 32, offset: 288)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !200, file: !201, line: 26, baseType: !174, size: 32, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !200, file: !201, line: 28, baseType: !178, size: 32, offset: 352)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !200, file: !201, line: 31, baseType: !183, size: 32, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !200, file: !201, line: 35, baseType: !161, size: 32, offset: 416)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !200, file: !201, line: 37, baseType: !224, size: 32, offset: 448)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 32)
!225 = !DISubroutineType(types: !226)
!226 = !{!39, !13, !40, !44}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !200, file: !201, line: 38, baseType: !161, size: 32, offset: 480)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "hexagon_dma_device_interface_impl", linkageName: "_ZN6Halide7Runtime8Internal10HexagonDma33hexagon_dma_device_interface_implE", scope: !2, file: !6, line: 721, type: !200, isLocal: false, isDefinition: true)
!230 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !231, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !335, globals: !507, imports: !508, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!232 = !{!59, !126, !233, !280, !298, !314, !328, !332}
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_error_code_t", file: !21, line: 990, baseType: !39, size: 32, elements: !234, identifier: "_ZTS19halide_error_code_t")
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279}
!235 = !DIEnumerator(name: "halide_error_code_success", value: 0)
!236 = !DIEnumerator(name: "halide_error_code_generic_error", value: -1)
!237 = !DIEnumerator(name: "halide_error_code_explicit_bounds_too_small", value: -2)
!238 = !DIEnumerator(name: "halide_error_code_bad_type", value: -3)
!239 = !DIEnumerator(name: "halide_error_code_access_out_of_bounds", value: -4)
!240 = !DIEnumerator(name: "halide_error_code_buffer_allocation_too_large", value: -5)
!241 = !DIEnumerator(name: "halide_error_code_buffer_extents_too_large", value: -6)
!242 = !DIEnumerator(name: "halide_error_code_constraints_make_required_region_smaller", value: -7)
!243 = !DIEnumerator(name: "halide_error_code_constraint_violated", value: -8)
!244 = !DIEnumerator(name: "halide_error_code_param_too_small", value: -9)
!245 = !DIEnumerator(name: "halide_error_code_param_too_large", value: -10)
!246 = !DIEnumerator(name: "halide_error_code_out_of_memory", value: -11)
!247 = !DIEnumerator(name: "halide_error_code_buffer_argument_is_null", value: -12)
!248 = !DIEnumerator(name: "halide_error_code_debug_to_file_failed", value: -13)
!249 = !DIEnumerator(name: "halide_error_code_copy_to_host_failed", value: -14)
!250 = !DIEnumerator(name: "halide_error_code_copy_to_device_failed", value: -15)
!251 = !DIEnumerator(name: "halide_error_code_device_malloc_failed", value: -16)
!252 = !DIEnumerator(name: "halide_error_code_device_sync_failed", value: -17)
!253 = !DIEnumerator(name: "halide_error_code_device_free_failed", value: -18)
!254 = !DIEnumerator(name: "halide_error_code_no_device_interface", value: -19)
!255 = !DIEnumerator(name: "halide_error_code_matlab_init_failed", value: -20)
!256 = !DIEnumerator(name: "halide_error_code_matlab_bad_param_type", value: -21)
!257 = !DIEnumerator(name: "halide_error_code_internal_error", value: -22)
!258 = !DIEnumerator(name: "halide_error_code_device_run_failed", value: -23)
!259 = !DIEnumerator(name: "halide_error_code_unaligned_host_ptr", value: -24)
!260 = !DIEnumerator(name: "halide_error_code_bad_fold", value: -25)
!261 = !DIEnumerator(name: "halide_error_code_fold_factor_too_small", value: -26)
!262 = !DIEnumerator(name: "halide_error_code_requirement_failed", value: -27)
!263 = !DIEnumerator(name: "halide_error_code_buffer_extents_negative", value: -28)
!264 = !DIEnumerator(name: "halide_error_code_unused_29", value: -29)
!265 = !DIEnumerator(name: "halide_error_code_unused_30", value: -30)
!266 = !DIEnumerator(name: "halide_error_code_specialize_fail", value: -31)
!267 = !DIEnumerator(name: "halide_error_code_device_wrap_native_failed", value: -32)
!268 = !DIEnumerator(name: "halide_error_code_device_detach_native_failed", value: -33)
!269 = !DIEnumerator(name: "halide_error_code_host_is_null", value: -34)
!270 = !DIEnumerator(name: "halide_error_code_bad_extern_fold", value: -35)
!271 = !DIEnumerator(name: "halide_error_code_device_interface_no_device", value: -36)
!272 = !DIEnumerator(name: "halide_error_code_host_and_device_dirty", value: -37)
!273 = !DIEnumerator(name: "halide_error_code_buffer_is_null", value: -38)
!274 = !DIEnumerator(name: "halide_error_code_device_buffer_copy_failed", value: -39)
!275 = !DIEnumerator(name: "halide_error_code_device_crop_unsupported", value: -40)
!276 = !DIEnumerator(name: "halide_error_code_device_crop_failed", value: -41)
!277 = !DIEnumerator(name: "halide_error_code_incompatible_device_interface", value: -42)
!278 = !DIEnumerator(name: "halide_error_code_bad_dimensions", value: -43)
!279 = !DIEnumerator(name: "halide_error_code_device_dirty_with_no_device_support", value: -44)
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !281, line: 39, baseType: !28, size: 32, align: 32, elements: !282, identifier: "_ZTS9t_eDmaFmt")
!281 = !DIFile(filename: "src/runtime/mini_hexagon_dma.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!283 = !DIEnumerator(name: "eDmaFmt_RawData", value: 0, isUnsigned: true)
!284 = !DIEnumerator(name: "eDmaFmt_NV12", value: 1, isUnsigned: true)
!285 = !DIEnumerator(name: "eDmaFmt_NV12_Y", value: 2, isUnsigned: true)
!286 = !DIEnumerator(name: "eDmaFmt_NV12_UV", value: 3, isUnsigned: true)
!287 = !DIEnumerator(name: "eDmaFmt_P010", value: 4, isUnsigned: true)
!288 = !DIEnumerator(name: "eDmaFmt_P010_Y", value: 5, isUnsigned: true)
!289 = !DIEnumerator(name: "eDmaFmt_P010_UV", value: 6, isUnsigned: true)
!290 = !DIEnumerator(name: "eDmaFmt_TP10", value: 7, isUnsigned: true)
!291 = !DIEnumerator(name: "eDmaFmt_TP10_Y", value: 8, isUnsigned: true)
!292 = !DIEnumerator(name: "eDmaFmt_TP10_UV", value: 9, isUnsigned: true)
!293 = !DIEnumerator(name: "eDmaFmt_NV124R", value: 10, isUnsigned: true)
!294 = !DIEnumerator(name: "eDmaFmt_NV124R_Y", value: 11, isUnsigned: true)
!295 = !DIEnumerator(name: "eDmaFmt_NV124R_UV", value: 12, isUnsigned: true)
!296 = !DIEnumerator(name: "eDmaFmt_Invalid", value: 13, isUnsigned: true)
!297 = !DIEnumerator(name: "eDmaFmt_MAX", value: 14, isUnsigned: true)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 34, baseType: !28, size: 32, elements: !300, identifier: "_ZTS26halide_hexagon_image_fmt_t")
!299 = !DIFile(filename: "src/runtime/HalideRuntimeHexagonDma.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313}
!301 = !DIEnumerator(name: "halide_hexagon_fmt_RawData", value: 0, isUnsigned: true)
!302 = !DIEnumerator(name: "halide_hexagon_fmt_NV12", value: 1, isUnsigned: true)
!303 = !DIEnumerator(name: "halide_hexagon_fmt_NV12_Y", value: 2, isUnsigned: true)
!304 = !DIEnumerator(name: "halide_hexagon_fmt_NV12_UV", value: 3, isUnsigned: true)
!305 = !DIEnumerator(name: "halide_hexagon_fmt_P010", value: 4, isUnsigned: true)
!306 = !DIEnumerator(name: "halide_hexagon_fmt_P010_Y", value: 5, isUnsigned: true)
!307 = !DIEnumerator(name: "halide_hexagon_fmt_P010_UV", value: 6, isUnsigned: true)
!308 = !DIEnumerator(name: "halide_hexagon_fmt_TP10", value: 7, isUnsigned: true)
!309 = !DIEnumerator(name: "halide_hexagon_fmt_TP10_Y", value: 8, isUnsigned: true)
!310 = !DIEnumerator(name: "halide_hexagon_fmt_TP10_UV", value: 9, isUnsigned: true)
!311 = !DIEnumerator(name: "halide_hexagon_fmt_NV124R", value: 10, isUnsigned: true)
!312 = !DIEnumerator(name: "halide_hexagon_fmt_NV124R_Y", value: 11, isUnsigned: true)
!313 = !DIEnumerator(name: "halide_hexagon_fmt_NV124R_UV", value: 12, isUnsigned: true)
!314 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_hexagon_power_mode_t", file: !315, line: 66, baseType: !28, size: 32, elements: !316, identifier: "_ZTS27halide_hexagon_power_mode_t")
!315 = !DIFile(filename: "src/runtime/HalideRuntimeHexagonHost.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327}
!317 = !DIEnumerator(name: "halide_hexagon_power_low", value: 0, isUnsigned: true)
!318 = !DIEnumerator(name: "halide_hexagon_power_nominal", value: 1, isUnsigned: true)
!319 = !DIEnumerator(name: "halide_hexagon_power_turbo", value: 2, isUnsigned: true)
!320 = !DIEnumerator(name: "halide_hexagon_power_default", value: 3, isUnsigned: true)
!321 = !DIEnumerator(name: "halide_hexagon_power_low_plus", value: 4, isUnsigned: true)
!322 = !DIEnumerator(name: "halide_hexagon_power_low_2", value: 5, isUnsigned: true)
!323 = !DIEnumerator(name: "halide_hexagon_power_nominal_plus", value: 6, isUnsigned: true)
!324 = !DIEnumerator(name: "halide_hvx_power_low", value: 0, isUnsigned: true)
!325 = !DIEnumerator(name: "halide_hvx_power_nominal", value: 1, isUnsigned: true)
!326 = !DIEnumerator(name: "halide_hvx_power_turbo", value: 2, isUnsigned: true)
!327 = !DIEnumerator(name: "halide_hvx_power_default", value: 3, isUnsigned: true)
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eDmaWrapper_TransationType", file: !281, line: 66, baseType: !28, size: 32, align: 32, elements: !329, identifier: "_ZTS26eDmaWrapper_TransationType")
!329 = !{!330, !331}
!330 = !DIEnumerator(name: "eDmaWrapper_DdrToL2", value: 0, isUnsigned: true)
!331 = !DIEnumerator(name: "eDmaWrapper_L2ToDdr", value: 1, isUnsigned: true)
!332 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !281, line: 23, baseType: !28, size: 32, align: 32, elements: !333)
!333 = !{!334}
!334 = !DIEnumerator(name: "QURT_EOK", value: 0, isUnsigned: true)
!335 = !{!13, !336, !44, !421, !488, !50, !145, !504, !505, !506, !7, !342}
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !338, file: !337, line: 203, baseType: !339)
!337 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!338 = !DINamespace(scope: !3)
!339 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !338, file: !337, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !340, templateParams: !418)
!340 = !{!341, !344, !345, !346, !347, !348, !350, !354, !360, !365, !368, !371, !374, !378, !382, !387, !391, !394, !400, !403, !406, !411, !412, !415, !416, !417}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !339, file: !337, line: 32, baseType: !342, size: 32, flags: DIFlagPublic)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 32)
!343 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !339, file: !337, line: 32, baseType: !342, size: 32, offset: 32, flags: DIFlagPublic)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !339, file: !337, line: 32, baseType: !342, size: 32, offset: 64, flags: DIFlagPublic)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !339, file: !337, line: 33, baseType: !13, size: 32, offset: 96, flags: DIFlagPublic)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !339, file: !337, line: 34, baseType: !15, size: 8, offset: 128, flags: DIFlagPublic)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !339, file: !337, line: 35, baseType: !349, size: 8, offset: 136, flags: DIFlagPublic)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 8, elements: !29)
!350 = !DISubprogram(name: "Printer", scope: !339, file: !337, line: 37, type: !351, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !353, !13, !342}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!354 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !339, file: !337, line: 57, type: !355, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DISubroutineType(types: !356)
!356 = !{!357, !353, !358}
!357 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !339, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!360 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !339, file: !337, line: 67, type: !361, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!361 = !DISubroutineType(types: !362)
!362 = !{!357, !353, !363}
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !26, line: 9, baseType: !364)
!364 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!365 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !339, file: !337, line: 72, type: !366, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!366 = !DISubroutineType(types: !367)
!367 = !{!357, !353, !95}
!368 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !339, file: !337, line: 77, type: !369, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!369 = !DISubroutineType(types: !370)
!370 = !{!357, !353, !44}
!371 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !339, file: !337, line: 82, type: !372, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!372 = !DISubroutineType(types: !373)
!373 = !{!357, !353, !27}
!374 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !339, file: !337, line: 87, type: !375, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DISubroutineType(types: !376)
!376 = !{!357, !353, !377}
!377 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!378 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !339, file: !337, line: 92, type: !379, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!379 = !DISubroutineType(types: !380)
!380 = !{!357, !353, !381}
!381 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!382 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !339, file: !337, line: 97, type: !383, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!383 = !DISubroutineType(types: !384)
!384 = !{!357, !353, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!387 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !339, file: !337, line: 102, type: !388, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!388 = !DISubroutineType(types: !389)
!389 = !{!357, !353, !390}
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!391 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !339, file: !337, line: 108, type: !392, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!392 = !DISubroutineType(types: !393)
!393 = !{!357, !353, !85}
!394 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !339, file: !337, line: 113, type: !395, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!395 = !DISubroutineType(types: !396)
!396 = !{!357, !353, !397}
!397 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !398, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !21, line: 1550, baseType: !41)
!400 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !339, file: !337, line: 119, type: !401, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!401 = !DISubroutineType(types: !402)
!402 = !{!358, !353}
!403 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !339, file: !337, line: 131, type: !404, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !353}
!406 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !339, file: !337, line: 139, type: !407, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!407 = !DISubroutineType(types: !408)
!408 = !{!44, !409}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!411 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !339, file: !337, line: 143, type: !407, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!412 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !339, file: !337, line: 148, type: !413, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !353, !39}
!415 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !339, file: !337, line: 158, type: !401, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!416 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !339, file: !337, line: 162, type: !404, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!417 = !DISubprogram(name: "~Printer", scope: !339, file: !337, line: 166, type: !404, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!418 = !{!419, !420}
!419 = !DITemplateValueParameter(name: "type", type: !39, value: i32 0)
!420 = !DITemplateValueParameter(name: "length", type: !45, value: i64 1024)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !338, file: !337, line: 199, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !338, file: !337, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !423, templateParams: !486)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !434, !438, !441, !444, !447, !450, !453, !456, !459, !462, !465, !468, !471, !474, !479, !480, !483, !484, !485}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !422, file: !337, line: 32, baseType: !342, size: 32, flags: DIFlagPublic)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !422, file: !337, line: 32, baseType: !342, size: 32, offset: 32, flags: DIFlagPublic)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !422, file: !337, line: 32, baseType: !342, size: 32, offset: 64, flags: DIFlagPublic)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !422, file: !337, line: 33, baseType: !13, size: 32, offset: 96, flags: DIFlagPublic)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !422, file: !337, line: 34, baseType: !15, size: 8, offset: 128, flags: DIFlagPublic)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !422, file: !337, line: 35, baseType: !349, size: 8, offset: 136, flags: DIFlagPublic)
!430 = !DISubprogram(name: "Printer", scope: !422, file: !337, line: 37, type: !431, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !433, !13, !342}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!434 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !422, file: !337, line: 57, type: !435, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!435 = !DISubroutineType(types: !436)
!436 = !{!437, !433, !358}
!437 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !422, size: 32)
!438 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !422, file: !337, line: 67, type: !439, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!439 = !DISubroutineType(types: !440)
!440 = !{!437, !433, !363}
!441 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !422, file: !337, line: 72, type: !442, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = !DISubroutineType(types: !443)
!443 = !{!437, !433, !95}
!444 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !422, file: !337, line: 77, type: !445, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!445 = !DISubroutineType(types: !446)
!446 = !{!437, !433, !44}
!447 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEj", scope: !422, file: !337, line: 82, type: !448, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!448 = !DISubroutineType(types: !449)
!449 = !{!437, !433, !27}
!450 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !422, file: !337, line: 87, type: !451, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!451 = !DISubroutineType(types: !452)
!452 = !{!437, !433, !377}
!453 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEf", scope: !422, file: !337, line: 92, type: !454, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DISubroutineType(types: !455)
!455 = !{!437, !433, !381}
!456 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !422, file: !337, line: 97, type: !457, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!457 = !DISubroutineType(types: !458)
!458 = !{!437, !433, !385}
!459 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE23write_float16_from_bitsEt", scope: !422, file: !337, line: 102, type: !460, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!460 = !DISubroutineType(types: !461)
!461 = !{!437, !433, !390}
!462 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !422, file: !337, line: 108, type: !463, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!463 = !DISubroutineType(types: !464)
!464 = !{!437, !433, !85}
!465 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK15halide_buffer_t", scope: !422, file: !337, line: 113, type: !466, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!466 = !DISubroutineType(types: !467)
!467 = !{!437, !433, !397}
!468 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !422, file: !337, line: 119, type: !469, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!469 = !DISubroutineType(types: !470)
!470 = !{!358, !433}
!471 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !422, file: !337, line: 131, type: !472, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !433}
!474 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !422, file: !337, line: 139, type: !475, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!475 = !DISubroutineType(types: !476)
!476 = !{!44, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!479 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE8capacityEv", scope: !422, file: !337, line: 143, type: !475, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!480 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5eraseEi", scope: !422, file: !337, line: 148, type: !481, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !433, !39}
!483 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE16allocation_errorEv", scope: !422, file: !337, line: 158, type: !469, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!484 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !422, file: !337, line: 162, type: !472, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!485 = !DISubprogram(name: "~Printer", scope: !422, file: !337, line: 166, type: !472, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!486 = !{!487, !420}
!487 = !DITemplateValueParameter(name: "type", type: !39, value: i32 1)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 32)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_device_handle", scope: !2, file: !6, line: 21, size: 288, flags: DIFlagTypePassByValue, elements: !490, identifier: "_ZTSN6Halide7Runtime8Internal10HexagonDma17dma_device_handleE")
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !489, file: !6, line: 22, baseType: !50, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "offset_rdx", scope: !489, file: !6, line: 23, baseType: !68, size: 16, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "offset_rdy", scope: !489, file: !6, line: 24, baseType: !68, size: 16, offset: 48)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "offset_wrx", scope: !489, file: !6, line: 25, baseType: !68, size: 16, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "offset_wry", scope: !489, file: !6, line: 26, baseType: !68, size: 16, offset: 80)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "dma_engine", scope: !489, file: !6, line: 27, baseType: !13, size: 32, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "frame_width", scope: !489, file: !6, line: 28, baseType: !39, size: 32, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "frame_height", scope: !489, file: !6, line: 29, baseType: !39, size: 32, offset: 160)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "frame_stride", scope: !489, file: !6, line: 30, baseType: !39, size: 32, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "is_ubwc", scope: !489, file: !6, line: 31, baseType: !15, size: 8, offset: 224)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "is_write", scope: !489, file: !6, line: 32, baseType: !15, size: 8, offset: 232)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !489, file: !6, line: 33, baseType: !503, size: 32, align: 32, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_eDmaFmt", file: !281, line: 55, baseType: !280)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !26, line: 28, baseType: !39)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !281, line: 11, baseType: !27)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !281, line: 10, baseType: !68)
!507 = !{!0, !18, !228, !31}
!508 = !{!509, !510}
!509 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !230, entity: !3, file: !26, line: 225)
!510 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !230, entity: !2, file: !6, line: 72)
!511 = !{i32 7, !"Dwarf Version", i32 4}
!512 = !{i32 2, !"Debug Info Version", i32 3}
!513 = !{i32 1, !"wchar_size", i32 4}
!514 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!515 = distinct !DISubprogram(name: "copy_memory_helper", linkageName: "_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx", scope: !3, file: !516, line: 47, type: !517, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !533)
!516 = !DIFile(filename: "src/runtime/device_buffer_utils.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!517 = !DISubroutineType(types: !518)
!518 = !{null, !519, !39, !363, !363}
!519 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !520, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_copy", scope: !3, file: !516, line: 33, size: 3328, flags: DIFlagTypePassByValue, elements: !522, identifier: "_ZTSN6Halide7Runtime8Internal11device_copyE")
!522 = !{!523, !524, !525, !526, !530, !531, !532}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !521, file: !516, line: 35, baseType: !44, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !521, file: !516, line: 35, baseType: !44, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "src_begin", scope: !521, file: !516, line: 37, baseType: !44, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !521, file: !516, line: 39, baseType: !527, size: 1024, offset: 192)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 1024, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 16)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "src_stride_bytes", scope: !521, file: !516, line: 41, baseType: !527, size: 1024, offset: 1216)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dst_stride_bytes", scope: !521, file: !516, line: 42, baseType: !527, size: 1024, offset: 2240)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !521, file: !516, line: 44, baseType: !44, size: 64, offset: 3264)
!533 = !{!534, !535, !536, !537, !538, !541, !542}
!534 = !DILocalVariable(name: "copy", arg: 1, scope: !515, file: !516, line: 47, type: !519)
!535 = !DILocalVariable(name: "d", arg: 2, scope: !515, file: !516, line: 47, type: !39)
!536 = !DILocalVariable(name: "src_off", arg: 3, scope: !515, file: !516, line: 47, type: !363)
!537 = !DILocalVariable(name: "dst_off", arg: 4, scope: !515, file: !516, line: 47, type: !363)
!538 = !DILocalVariable(name: "from", scope: !539, file: !516, line: 54, type: !385)
!539 = distinct !DILexicalBlock(scope: !540, file: !516, line: 53, column: 18)
!540 = distinct !DILexicalBlock(scope: !515, file: !516, line: 53, column: 9)
!541 = !DILocalVariable(name: "to", scope: !539, file: !516, line: 55, type: !13)
!542 = !DILocalVariable(name: "i", scope: !543, file: !516, line: 58, type: !44)
!543 = distinct !DILexicalBlock(scope: !544, file: !516, line: 58, column: 9)
!544 = distinct !DILexicalBlock(scope: !540, file: !516, line: 57, column: 12)
!545 = !DILocation(line: 0, scope: !515)
!546 = !DILocation(line: 49, column: 14, scope: !515)
!547 = !DILocation(line: 49, column: 19, scope: !515)
!548 = !DILocation(line: 49, column: 22, scope: !515)
!549 = !{!550, !550, i64 0}
!550 = !{!"long long", !551, i64 0}
!551 = !{!"omnipotent char", !552, i64 0}
!552 = !{!"Simple C++ TBAA"}
!553 = !DILocation(line: 49, column: 37, scope: !515)
!554 = !DILocation(line: 49, column: 5, scope: !515)
!555 = !DILocation(line: 50, column: 10, scope: !556)
!556 = distinct !DILexicalBlock(scope: !515, file: !516, line: 49, column: 43)
!557 = distinct !{!557, !554, !558, !559}
!558 = !DILocation(line: 51, column: 5, scope: !515)
!559 = !{!"llvm.loop.mustprogress"}
!560 = !DILocation(line: 53, column: 11, scope: !540)
!561 = !DILocation(line: 53, column: 9, scope: !515)
!562 = !DILocation(line: 0, scope: !543)
!563 = !DILocation(line: 58, column: 34, scope: !564)
!564 = distinct !DILexicalBlock(scope: !543, file: !516, line: 58, column: 9)
!565 = !DILocation(line: 58, column: 32, scope: !564)
!566 = !DILocation(line: 58, column: 9, scope: !543)
!567 = !DILocation(line: 54, column: 42, scope: !539)
!568 = !{!569, !550, i64 0}
!569 = !{!"_ZTSN6Halide7Runtime8Internal11device_copyE", !550, i64 0, !550, i64 8, !550, i64 16, !551, i64 24, !551, i64 152, !551, i64 280, !550, i64 408}
!570 = !DILocation(line: 54, column: 46, scope: !539)
!571 = !DILocation(line: 54, column: 28, scope: !539)
!572 = !DILocation(line: 0, scope: !539)
!573 = !DILocation(line: 55, column: 34, scope: !539)
!574 = !{!569, !550, i64 8}
!575 = !DILocation(line: 55, column: 38, scope: !539)
!576 = !DILocation(line: 55, column: 20, scope: !539)
!577 = !DILocation(line: 56, column: 31, scope: !539)
!578 = !{!569, !550, i64 408}
!579 = !DILocation(line: 56, column: 26, scope: !539)
!580 = !DILocation(line: 56, column: 9, scope: !539)
!581 = !DILocation(line: 57, column: 5, scope: !539)
!582 = !DILocation(line: 59, column: 13, scope: !583)
!583 = distinct !DILexicalBlock(scope: !564, file: !516, line: 58, column: 55)
!584 = !DILocation(line: 60, column: 24, scope: !583)
!585 = !DILocation(line: 60, column: 21, scope: !583)
!586 = !DILocation(line: 61, column: 24, scope: !583)
!587 = !DILocation(line: 61, column: 21, scope: !583)
!588 = !DILocation(line: 58, column: 51, scope: !564)
!589 = distinct !{!589, !566, !590, !559}
!590 = !DILocation(line: 62, column: 9, scope: !543)
!591 = !DILocation(line: 64, column: 1, scope: !515)
!592 = !DISubprogram(name: "memcpy", scope: !26, file: !26, line: 94, type: !593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!593 = !DISubroutineType(types: !594)
!594 = !{!13, !13, !385, !28}
!595 = !{}
!596 = distinct !DISubprogram(name: "copy_memory", linkageName: "_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv", scope: !3, file: !516, line: 66, type: !597, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !599)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !519, !13}
!599 = !{!600, !601}
!600 = !DILocalVariable(name: "copy", arg: 1, scope: !596, file: !516, line: 66, type: !519)
!601 = !DILocalVariable(name: "user_context", arg: 2, scope: !596, file: !516, line: 66, type: !13)
!602 = !DILocation(line: 0, scope: !596)
!603 = !DILocation(line: 68, column: 14, scope: !604)
!604 = distinct !DILexicalBlock(scope: !596, file: !516, line: 68, column: 9)
!605 = !DILocation(line: 68, column: 26, scope: !604)
!606 = !DILocation(line: 68, column: 18, scope: !604)
!607 = !DILocation(line: 68, column: 9, scope: !596)
!608 = !DILocation(line: 69, column: 58, scope: !609)
!609 = distinct !DILexicalBlock(scope: !604, file: !516, line: 68, column: 31)
!610 = !{!569, !550, i64 16}
!611 = !DILocation(line: 69, column: 9, scope: !609)
!612 = !DILocation(line: 70, column: 5, scope: !609)
!613 = !DILocalVariable(name: "this", arg: 1, scope: !614, type: !618, flags: DIFlagArtificial | DIFlagObjectPointer)
!614 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !339, file: !337, line: 37, type: !351, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !350, retainedNodes: !615)
!615 = !{!613, !616, !617}
!616 = !DILocalVariable(name: "ctx", arg: 2, scope: !614, file: !337, line: 37, type: !13)
!617 = !DILocalVariable(name: "mem", arg: 3, scope: !614, file: !337, line: 37, type: !342)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 32)
!619 = !DILocation(line: 0, scope: !614, inlinedAt: !620)
!620 = distinct !DILocation(line: 71, column: 9, scope: !621)
!621 = distinct !DILexicalBlock(scope: !604, file: !516, line: 70, column: 12)
!622 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !620)
!623 = distinct !DILexicalBlock(scope: !624, file: !337, line: 43, column: 16)
!624 = distinct !DILexicalBlock(scope: !625, file: !337, line: 41, column: 20)
!625 = distinct !DILexicalBlock(scope: !626, file: !337, line: 39, column: 13)
!626 = distinct !DILexicalBlock(scope: !614, file: !337, line: 38, column: 54)
!627 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !620)
!628 = distinct !DILexicalBlock(scope: !626, file: !337, line: 48, column: 13)
!629 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !620)
!630 = !DILocalVariable(name: "this", arg: 1, scope: !631, type: !618, flags: DIFlagArtificial | DIFlagObjectPointer)
!631 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !339, file: !337, line: 57, type: !355, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !354, retainedNodes: !632)
!632 = !{!630, !633}
!633 = !DILocalVariable(name: "arg", arg: 2, scope: !631, file: !337, line: 57, type: !358)
!634 = !DILocation(line: 0, scope: !631, inlinedAt: !635)
!635 = distinct !DILocation(line: 71, column: 29, scope: !621)
!636 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !635)
!637 = distinct !DILexicalBlock(scope: !638, file: !337, line: 61, column: 16)
!638 = distinct !DILexicalBlock(scope: !631, file: !337, line: 59, column: 13)
!639 = !DILocalVariable(name: "this", arg: 1, scope: !640, type: !618, flags: DIFlagArtificial | DIFlagObjectPointer)
!640 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !339, file: !337, line: 166, type: !404, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !417, retainedNodes: !641)
!641 = !{!639}
!642 = !DILocation(line: 0, scope: !640, inlinedAt: !643)
!643 = distinct !DILocation(line: 71, column: 9, scope: !621)
!644 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !643)
!645 = distinct !DILexicalBlock(scope: !646, file: !337, line: 167, column: 19)
!646 = distinct !DILexicalBlock(scope: !647, file: !337, line: 167, column: 13)
!647 = distinct !DILexicalBlock(scope: !640, file: !337, line: 166, column: 16)
!648 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !643)
!649 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !620)
!650 = distinct !DILexicalBlock(scope: !628, file: !337, line: 48, column: 18)
!651 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !620)
!652 = !{!551, !551, i64 0}
!653 = !DILocalVariable(name: "this", arg: 1, scope: !654, type: !618, flags: DIFlagArtificial | DIFlagObjectPointer)
!654 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !339, file: !337, line: 162, type: !404, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !416, retainedNodes: !655)
!655 = !{!653}
!656 = !DILocation(line: 0, scope: !654, inlinedAt: !657)
!657 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !643)
!658 = distinct !DILexicalBlock(scope: !646, file: !337, line: 169, column: 16)
!659 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !657)
!660 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !657)
!661 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !657)
!662 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !657)
!663 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !643)
!664 = distinct !DILexicalBlock(scope: !665, file: !337, line: 173, column: 46)
!665 = distinct !DILexicalBlock(scope: !666, file: !337, line: 173, column: 24)
!666 = distinct !DILexicalBlock(scope: !658, file: !337, line: 171, column: 17)
!667 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !643)
!668 = distinct !DILexicalBlock(scope: !669, file: !337, line: 180, column: 40)
!669 = distinct !DILexicalBlock(scope: !647, file: !337, line: 180, column: 13)
!670 = !DILocation(line: 73, column: 1, scope: !596)
!671 = distinct !DISubprogram(name: "make_buffer_copy", linkageName: "_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b", scope: !3, file: !516, line: 76, type: !672, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !675)
!672 = !DISubroutineType(types: !673)
!673 = !{!521, !674, !15, !674, !15}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 32)
!675 = !{!676, !677, !678, !679, !680, !681, !683, !685, !688, !691, !693, !696, !697, !698, !700}
!676 = !DILocalVariable(name: "src", arg: 1, scope: !671, file: !516, line: 76, type: !674)
!677 = !DILocalVariable(name: "src_host", arg: 2, scope: !671, file: !516, line: 76, type: !15)
!678 = !DILocalVariable(name: "dst", arg: 3, scope: !671, file: !516, line: 77, type: !674)
!679 = !DILocalVariable(name: "dst_host", arg: 4, scope: !671, file: !516, line: 77, type: !15)
!680 = !DILocalVariable(name: "c", scope: !671, file: !516, line: 79, type: !521)
!681 = !DILocalVariable(name: "i", scope: !682, file: !516, line: 83, type: !39)
!682 = distinct !DILexicalBlock(scope: !671, file: !516, line: 83, column: 5)
!683 = !DILocalVariable(name: "i", scope: !684, file: !516, line: 91, type: !39)
!684 = distinct !DILexicalBlock(scope: !671, file: !516, line: 91, column: 5)
!685 = !DILocalVariable(name: "zero", scope: !686, file: !516, line: 100, type: !521)
!686 = distinct !DILexicalBlock(scope: !687, file: !516, line: 98, column: 42)
!687 = distinct !DILexicalBlock(scope: !671, file: !516, line: 96, column: 9)
!688 = !DILocalVariable(name: "zero", scope: !689, file: !516, line: 107, type: !521)
!689 = distinct !DILexicalBlock(scope: !690, file: !516, line: 104, column: 28)
!690 = distinct !DILexicalBlock(scope: !671, file: !516, line: 104, column: 9)
!691 = !DILocalVariable(name: "i", scope: !692, file: !516, line: 115, type: !39)
!692 = distinct !DILexicalBlock(scope: !671, file: !516, line: 115, column: 5)
!693 = !DILocalVariable(name: "dst_stride_bytes", scope: !694, file: !516, line: 117, type: !44)
!694 = distinct !DILexicalBlock(scope: !695, file: !516, line: 115, column: 47)
!695 = distinct !DILexicalBlock(scope: !692, file: !516, line: 115, column: 5)
!696 = !DILocalVariable(name: "src_stride_bytes", scope: !694, file: !516, line: 118, type: !44)
!697 = !DILocalVariable(name: "insert", scope: !694, file: !516, line: 120, type: !39)
!698 = !DILocalVariable(name: "j", scope: !699, file: !516, line: 128, type: !39)
!699 = distinct !DILexicalBlock(scope: !694, file: !516, line: 128, column: 9)
!700 = !DILocalVariable(name: "j", scope: !701, file: !516, line: 151, type: !39)
!701 = distinct !DILexicalBlock(scope: !702, file: !516, line: 151, column: 9)
!702 = distinct !DILexicalBlock(scope: !671, file: !516, line: 145, column: 51)
!703 = !DILocation(line: 0, scope: !671)
!704 = !DILocation(line: 79, column: 5, scope: !671)
!705 = !DILocation(line: 79, column: 17, scope: !671)
!706 = !DILocation(line: 80, column: 13, scope: !671)
!707 = !DILocation(line: 80, column: 39, scope: !671)
!708 = !{!709, !710, i64 12}
!709 = !{!"_ZTS15halide_buffer_t", !550, i64 0, !710, i64 8, !710, i64 12, !550, i64 16, !711, i64 24, !714, i64 28, !710, i64 32, !710, i64 36}
!710 = !{!"any pointer", !551, i64 0}
!711 = !{!"_ZTS13halide_type_t", !712, i64 0, !551, i64 1, !713, i64 2}
!712 = !{!"_ZTS18halide_type_code_t", !551, i64 0}
!713 = !{!"short", !551, i64 0}
!714 = !{!"int", !551, i64 0}
!715 = !DILocation(line: 80, column: 24, scope: !671)
!716 = !DILocation(line: 80, column: 51, scope: !671)
!717 = !{!709, !550, i64 0}
!718 = !DILocation(line: 80, column: 7, scope: !671)
!719 = !DILocation(line: 80, column: 11, scope: !671)
!720 = !DILocation(line: 81, column: 13, scope: !671)
!721 = !DILocation(line: 81, column: 39, scope: !671)
!722 = !DILocation(line: 81, column: 24, scope: !671)
!723 = !DILocation(line: 81, column: 51, scope: !671)
!724 = !DILocation(line: 81, column: 7, scope: !671)
!725 = !DILocation(line: 81, column: 11, scope: !671)
!726 = !DILocalVariable(name: "this", arg: 1, scope: !727, type: !729, flags: DIFlagArtificial | DIFlagObjectPointer)
!727 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !55, file: !21, line: 481, type: !89, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !88, retainedNodes: !728)
!728 = !{!726}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 32)
!730 = !DILocation(line: 0, scope: !727, inlinedAt: !731)
!731 = distinct !DILocation(line: 82, column: 30, scope: !671)
!732 = !DILocation(line: 482, column: 17, scope: !727, inlinedAt: !731)
!733 = !{!711, !551, i64 1}
!734 = !DILocation(line: 482, column: 22, scope: !727, inlinedAt: !731)
!735 = !DILocation(line: 482, column: 27, scope: !727, inlinedAt: !731)
!736 = !DILocation(line: 82, column: 20, scope: !671)
!737 = !DILocation(line: 82, column: 7, scope: !671)
!738 = !DILocation(line: 82, column: 18, scope: !671)
!739 = !DILocation(line: 0, scope: !682)
!740 = !DILocation(line: 84, column: 9, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !516, line: 83, column: 45)
!742 = distinct !DILexicalBlock(scope: !682, file: !516, line: 83, column: 5)
!743 = !DILocation(line: 84, column: 21, scope: !741)
!744 = !DILocation(line: 85, column: 9, scope: !741)
!745 = !DILocation(line: 85, column: 31, scope: !741)
!746 = !DILocation(line: 86, column: 9, scope: !741)
!747 = !DILocation(line: 86, column: 31, scope: !741)
!748 = !DILocation(line: 90, column: 7, scope: !671)
!749 = !DILocation(line: 0, scope: !684)
!750 = !DILocation(line: 91, column: 30, scope: !751)
!751 = distinct !DILexicalBlock(scope: !684, file: !516, line: 91, column: 5)
!752 = !{!709, !714, i64 28}
!753 = !DILocation(line: 91, column: 23, scope: !751)
!754 = !DILocation(line: 91, column: 5, scope: !684)
!755 = !{!709, !710, i64 32}
!756 = !DILocation(line: 94, column: 17, scope: !671)
!757 = !DILocation(line: 94, column: 22, scope: !671)
!758 = !DILocation(line: 96, column: 33, scope: !687)
!759 = !DILocation(line: 96, column: 25, scope: !687)
!760 = !DILocation(line: 96, column: 44, scope: !687)
!761 = !DILocation(line: 92, column: 46, scope: !762)
!762 = distinct !DILexicalBlock(scope: !751, file: !516, line: 91, column: 47)
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
!774 = distinct !{!774, !754, !775, !559}
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
!791 = !DILocation(line: 107, column: 21, scope: !689)
!792 = !DILocation(line: 108, column: 9, scope: !689)
!793 = !DILocation(line: 144, column: 14, scope: !671)
!794 = !DILocation(line: 144, column: 28, scope: !671)
!795 = !DILocation(line: 144, column: 25, scope: !671)
!796 = !DILocation(line: 144, column: 50, scope: !671)
!797 = !DILocation(line: 145, column: 28, scope: !671)
!798 = !DILocation(line: 117, column: 59, scope: !694)
!799 = !DILocation(line: 117, column: 47, scope: !694)
!800 = !DILocation(line: 0, scope: !727, inlinedAt: !801)
!801 = distinct !DILocation(line: 117, column: 78, scope: !694)
!802 = !DILocation(line: 117, column: 66, scope: !694)
!803 = !DILocation(line: 0, scope: !694)
!804 = !DILocation(line: 118, column: 59, scope: !694)
!805 = !DILocation(line: 118, column: 47, scope: !694)
!806 = !DILocation(line: 0, scope: !727, inlinedAt: !807)
!807 = distinct !DILocation(line: 118, column: 78, scope: !694)
!808 = !DILocation(line: 118, column: 66, scope: !694)
!809 = !DILocation(line: 121, column: 33, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !516, line: 121, column: 9)
!811 = distinct !DILexicalBlock(scope: !694, file: !516, line: 121, column: 9)
!812 = !DILocation(line: 121, column: 9, scope: !811)
!813 = !DILocation(line: 124, column: 36, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !516, line: 124, column: 17)
!815 = distinct !DILexicalBlock(scope: !810, file: !516, line: 121, column: 48)
!816 = !DILocation(line: 124, column: 34, scope: !814)
!817 = !DILocation(line: 124, column: 63, scope: !814)
!818 = !DILocation(line: 121, column: 44, scope: !810)
!819 = distinct !{!819, !812, !820, !559}
!820 = !DILocation(line: 127, column: 9, scope: !811)
!821 = !DILocation(line: 0, scope: !811)
!822 = !DILocation(line: 0, scope: !699)
!823 = !DILocation(line: 128, column: 27, scope: !824)
!824 = distinct !DILexicalBlock(scope: !699, file: !516, line: 128, column: 9)
!825 = !DILocation(line: 128, column: 9, scope: !699)
!826 = !DILocation(line: 133, column: 40, scope: !694)
!827 = !{!764, !714, i64 4}
!828 = !DILocation(line: 133, column: 28, scope: !694)
!829 = !DILocation(line: 133, column: 9, scope: !694)
!830 = !DILocation(line: 133, column: 26, scope: !694)
!831 = !DILocation(line: 135, column: 9, scope: !694)
!832 = !DILocation(line: 135, column: 36, scope: !694)
!833 = !DILocation(line: 136, column: 9, scope: !694)
!834 = !DILocation(line: 136, column: 36, scope: !694)
!835 = !DILocation(line: 115, column: 43, scope: !695)
!836 = !DILocation(line: 115, column: 23, scope: !695)
!837 = distinct !{!837, !790, !838, !559}
!838 = !DILocation(line: 137, column: 5, scope: !692)
!839 = !DILocation(line: 129, column: 38, scope: !840)
!840 = distinct !DILexicalBlock(scope: !824, file: !516, line: 128, column: 42)
!841 = !DILocation(line: 129, column: 27, scope: !840)
!842 = !DILocation(line: 129, column: 13, scope: !840)
!843 = !DILocation(line: 129, column: 25, scope: !840)
!844 = !DILocation(line: 130, column: 37, scope: !840)
!845 = !DILocation(line: 130, column: 13, scope: !840)
!846 = !DILocation(line: 130, column: 35, scope: !840)
!847 = !DILocation(line: 131, column: 37, scope: !840)
!848 = !DILocation(line: 131, column: 13, scope: !840)
!849 = !DILocation(line: 131, column: 35, scope: !840)
!850 = distinct !{!850, !825, !851, !559}
!851 = !DILocation(line: 132, column: 9, scope: !699)
!852 = !DILocation(line: 145, column: 25, scope: !671)
!853 = !DILocation(line: 144, column: 5, scope: !671)
!854 = !DILocation(line: 147, column: 25, scope: !702)
!855 = !DILocation(line: 147, column: 22, scope: !702)
!856 = !DILocation(line: 0, scope: !701)
!857 = !DILocation(line: 152, column: 31, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !516, line: 151, column: 49)
!859 = distinct !DILexicalBlock(scope: !701, file: !516, line: 151, column: 9)
!860 = !DILocation(line: 152, column: 29, scope: !858)
!861 = !DILocation(line: 153, column: 41, scope: !858)
!862 = !DILocation(line: 153, column: 39, scope: !858)
!863 = !DILocation(line: 154, column: 41, scope: !858)
!864 = !DILocation(line: 154, column: 39, scope: !858)
!865 = !DILocation(line: 156, column: 37, scope: !702)
!866 = !DILocation(line: 157, column: 47, scope: !702)
!867 = !DILocation(line: 158, column: 47, scope: !702)
!868 = distinct !{!868, !853, !869, !559}
!869 = !DILocation(line: 159, column: 5, scope: !671)
!870 = !DILocation(line: 160, column: 12, scope: !671)
!871 = !{i64 0, i64 8, !549, i64 8, i64 8, !549, i64 16, i64 8, !549, i64 24, i64 128, !652, i64 152, i64 128, !652, i64 280, i64 128, !652, i64 408, i64 8, !549}
!872 = !DILocation(line: 160, column: 5, scope: !671)
!873 = !DILocation(line: 161, column: 1, scope: !671)
!874 = distinct !DISubprogram(name: "make_host_to_device_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t", scope: !3, file: !516, line: 163, type: !875, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !877)
!875 = !DISubroutineType(types: !876)
!876 = !{!521, !674}
!877 = !{!878}
!878 = !DILocalVariable(name: "buf", arg: 1, scope: !874, file: !516, line: 163, type: !674)
!879 = !DILocation(line: 0, scope: !874)
!880 = !DILocation(line: 164, column: 12, scope: !874)
!881 = !DILocation(line: 164, column: 5, scope: !874)
!882 = distinct !DISubprogram(name: "make_device_to_host_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t", scope: !3, file: !516, line: 167, type: !875, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !883)
!883 = !{!884}
!884 = !DILocalVariable(name: "buf", arg: 1, scope: !882, file: !516, line: 167, type: !674)
!885 = !DILocation(line: 0, scope: !882)
!886 = !DILocation(line: 168, column: 12, scope: !882)
!887 = !DILocation(line: 168, column: 5, scope: !882)
!888 = distinct !DISubprogram(name: "halide_hexagon_dma_device_malloc", scope: !6, file: !6, line: 363, type: !889, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !892)
!889 = !DISubroutineType(types: !890)
!890 = !{!39, !13, !891}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 32)
!892 = !{!893, !894, !895, !896, !897}
!893 = !DILocalVariable(name: "user_context", arg: 1, scope: !888, file: !6, line: 363, type: !13)
!894 = !DILocalVariable(name: "buf", arg: 2, scope: !888, file: !6, line: 363, type: !891)
!895 = !DILocalVariable(name: "size", scope: !888, file: !6, line: 373, type: !145)
!896 = !DILocalVariable(name: "mem", scope: !888, file: !6, line: 376, type: !13)
!897 = !DILocalVariable(name: "err", scope: !888, file: !6, line: 382, type: !39)
!898 = !DILocation(line: 0, scope: !888)
!899 = !DILocation(line: 0, scope: !614, inlinedAt: !900)
!900 = distinct !DILocation(line: 364, column: 5, scope: !888)
!901 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !900)
!902 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !900)
!903 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !900)
!904 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !900)
!905 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !900)
!906 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !900)
!907 = !DILocation(line: 0, scope: !628, inlinedAt: !900)
!908 = !DILocation(line: 0, scope: !631, inlinedAt: !909)
!909 = distinct !DILocation(line: 365, column: 9, scope: !888)
!910 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !909)
!911 = !DILocalVariable(name: "this", arg: 1, scope: !912, type: !618, flags: DIFlagArtificial | DIFlagObjectPointer)
!912 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !339, file: !337, line: 97, type: !383, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !382, retainedNodes: !913)
!913 = !{!911, !914}
!914 = !DILocalVariable(name: "arg", arg: 2, scope: !912, file: !337, line: 97, type: !385)
!915 = !DILocation(line: 0, scope: !912, inlinedAt: !916)
!916 = distinct !DILocation(line: 365, column: 72, scope: !888)
!917 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !916)
!918 = !DILocation(line: 0, scope: !631, inlinedAt: !919)
!919 = distinct !DILocation(line: 366, column: 9, scope: !888)
!920 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !919)
!921 = !DILocalVariable(name: "this", arg: 1, scope: !922, type: !618, flags: DIFlagArtificial | DIFlagObjectPointer)
!922 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !339, file: !337, line: 113, type: !395, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !394, retainedNodes: !923)
!923 = !{!921, !924}
!924 = !DILocalVariable(name: "buf", arg: 2, scope: !922, file: !337, line: 113, type: !397)
!925 = !DILocation(line: 0, scope: !922, inlinedAt: !926)
!926 = distinct !DILocation(line: 366, column: 22, scope: !888)
!927 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !926)
!928 = !DILocation(line: 0, scope: !631, inlinedAt: !929)
!929 = distinct !DILocation(line: 366, column: 30, scope: !888)
!930 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !929)
!931 = !DILocation(line: 0, scope: !640, inlinedAt: !932)
!932 = distinct !DILocation(line: 364, column: 5, scope: !888)
!933 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !932)
!934 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !932)
!935 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !932)
!936 = !DILocation(line: 0, scope: !654, inlinedAt: !937)
!937 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !932)
!938 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !937)
!939 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !937)
!940 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !937)
!941 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !937)
!942 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !932)
!943 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !932)
!944 = !DILocation(line: 368, column: 14, scope: !945)
!945 = distinct !DILexicalBlock(scope: !888, file: !6, line: 368, column: 9)
!946 = !DILocation(line: 368, column: 9, scope: !945)
!947 = !DILocation(line: 368, column: 9, scope: !888)
!948 = !DILocation(line: 0, scope: !614, inlinedAt: !949)
!949 = distinct !DILocation(line: 369, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !945, file: !6, line: 368, column: 22)
!951 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !949)
!952 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !949)
!953 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !949)
!954 = !DILocation(line: 0, scope: !631, inlinedAt: !955)
!955 = distinct !DILocation(line: 369, column: 29, scope: !950)
!956 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !955)
!957 = !DILocation(line: 0, scope: !640, inlinedAt: !958)
!958 = distinct !DILocation(line: 369, column: 9, scope: !950)
!959 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !958)
!960 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !958)
!961 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !949)
!962 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !949)
!963 = !DILocation(line: 0, scope: !654, inlinedAt: !964)
!964 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !958)
!965 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !964)
!966 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !964)
!967 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !964)
!968 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !964)
!969 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !958)
!970 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !958)
!971 = !DILocation(line: 370, column: 9, scope: !950)
!972 = !DILocalVariable(name: "this", arg: 1, scope: !973, type: !181, flags: DIFlagArtificial | DIFlagObjectPointer)
!973 = distinct !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !41, file: !21, line: 1518, type: !143, scopeLine: 1518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !150, retainedNodes: !974)
!974 = !{!972}
!975 = !DILocation(line: 0, scope: !973, inlinedAt: !976)
!976 = distinct !DILocation(line: 373, column: 24, scope: !888)
!977 = !DILocalVariable(name: "this", arg: 1, scope: !978, type: !181, flags: DIFlagArtificial | DIFlagObjectPointer)
!978 = distinct !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !41, file: !21, line: 1506, type: !147, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !149, retainedNodes: !979)
!979 = !{!977, !980, !981}
!980 = !DILocalVariable(name: "index", scope: !978, file: !21, line: 1507, type: !504)
!981 = !DILocalVariable(name: "i", scope: !982, file: !21, line: 1508, type: !39)
!982 = distinct !DILexicalBlock(scope: !978, file: !21, line: 1508, column: 9)
!983 = !DILocation(line: 0, scope: !978, inlinedAt: !984)
!984 = distinct !DILocation(line: 1519, column: 25, scope: !973, inlinedAt: !976)
!985 = !DILocation(line: 0, scope: !982, inlinedAt: !984)
!986 = !DILocation(line: 1508, column: 29, scope: !987, inlinedAt: !984)
!987 = distinct !DILexicalBlock(scope: !982, file: !21, line: 1508, column: 9)
!988 = !DILocation(line: 1508, column: 27, scope: !987, inlinedAt: !984)
!989 = !DILocation(line: 1508, column: 9, scope: !982, inlinedAt: !984)
!990 = !DILocation(line: 0, scope: !727, inlinedAt: !991)
!991 = distinct !DILocation(line: 1514, column: 36, scope: !978, inlinedAt: !984)
!992 = !DILocation(line: 482, column: 17, scope: !727, inlinedAt: !991)
!993 = !DILocalVariable(name: "this", arg: 1, scope: !994, type: !181, flags: DIFlagArtificial | DIFlagObjectPointer)
!994 = distinct !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !41, file: !21, line: 1495, type: !147, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !146, retainedNodes: !995)
!995 = !{!993, !996, !997}
!996 = !DILocalVariable(name: "index", scope: !994, file: !21, line: 1496, type: !504)
!997 = !DILocalVariable(name: "i", scope: !998, file: !21, line: 1497, type: !39)
!998 = distinct !DILexicalBlock(scope: !994, file: !21, line: 1497, column: 9)
!999 = !DILocation(line: 0, scope: !994, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 1519, column: 33, scope: !973, inlinedAt: !976)
!1001 = !DILocation(line: 0, scope: !998, inlinedAt: !1000)
!1002 = !DILocation(line: 1497, column: 9, scope: !998, inlinedAt: !1000)
!1003 = !DILocation(line: 1509, column: 24, scope: !1004, inlinedAt: !984)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !21, line: 1509, column: 17)
!1005 = distinct !DILexicalBlock(scope: !987, file: !21, line: 1508, column: 46)
!1006 = !DILocation(line: 1509, column: 31, scope: !1004, inlinedAt: !984)
!1007 = !DILocation(line: 1509, column: 17, scope: !1005, inlinedAt: !984)
!1008 = !DILocation(line: 1510, column: 61, scope: !1009, inlinedAt: !984)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !21, line: 1509, column: 36)
!1010 = !DILocation(line: 1510, column: 68, scope: !1009, inlinedAt: !984)
!1011 = !DILocation(line: 1510, column: 51, scope: !1009, inlinedAt: !984)
!1012 = !DILocation(line: 1510, column: 23, scope: !1009, inlinedAt: !984)
!1013 = !DILocation(line: 1511, column: 13, scope: !1009, inlinedAt: !984)
!1014 = !DILocation(line: 1508, column: 42, scope: !987, inlinedAt: !984)
!1015 = distinct !{!1015, !989, !1016, !559}
!1016 = !DILocation(line: 1512, column: 9, scope: !982, inlinedAt: !984)
!1017 = !DILocation(line: 1498, column: 24, scope: !1018, inlinedAt: !1000)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !21, line: 1498, column: 17)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !21, line: 1497, column: 46)
!1020 = distinct !DILexicalBlock(scope: !998, file: !21, line: 1497, column: 9)
!1021 = !DILocation(line: 1498, column: 31, scope: !1018, inlinedAt: !1000)
!1022 = !DILocation(line: 1498, column: 17, scope: !1019, inlinedAt: !1000)
!1023 = !DILocation(line: 1499, column: 61, scope: !1024, inlinedAt: !1000)
!1024 = distinct !DILexicalBlock(scope: !1018, file: !21, line: 1498, column: 36)
!1025 = !DILocation(line: 1499, column: 68, scope: !1024, inlinedAt: !1000)
!1026 = !DILocation(line: 1499, column: 51, scope: !1024, inlinedAt: !1000)
!1027 = !DILocation(line: 1499, column: 23, scope: !1024, inlinedAt: !1000)
!1028 = !DILocation(line: 1500, column: 13, scope: !1024, inlinedAt: !1000)
!1029 = !DILocation(line: 1497, column: 42, scope: !1020, inlinedAt: !1000)
!1030 = !DILocation(line: 1497, column: 27, scope: !1020, inlinedAt: !1000)
!1031 = distinct !{!1031, !1002, !1032, !559}
!1032 = !DILocation(line: 1501, column: 9, scope: !998, inlinedAt: !1000)
!1033 = !DILocation(line: 482, column: 22, scope: !727, inlinedAt: !991)
!1034 = !DILocation(line: 482, column: 27, scope: !727, inlinedAt: !991)
!1035 = !DILocation(line: 1513, column: 15, scope: !978, inlinedAt: !984)
!1036 = !DILocation(line: 0, scope: !727, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 1502, column: 36, scope: !994, inlinedAt: !1000)
!1038 = !DILocation(line: 1519, column: 31, scope: !973, inlinedAt: !976)
!1039 = !DILocation(line: 374, column: 5, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !6, line: 374, column: 5)
!1041 = distinct !DILexicalBlock(scope: !888, file: !6, line: 374, column: 5)
!1042 = !DILocation(line: 374, column: 5, scope: !1041)
!1043 = !DILocation(line: 374, column: 5, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !6, line: 374, column: 5)
!1045 = !DILocation(line: 376, column: 17, scope: !888)
!1046 = !DILocation(line: 377, column: 10, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !888, file: !6, line: 377, column: 9)
!1048 = !DILocation(line: 377, column: 9, scope: !888)
!1049 = !DILocalVariable(name: "this", arg: 1, scope: !1050, type: !1054, flags: DIFlagArtificial | DIFlagObjectPointer)
!1050 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !422, file: !337, line: 37, type: !431, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !430, retainedNodes: !1051)
!1051 = !{!1049, !1052, !1053}
!1052 = !DILocalVariable(name: "ctx", arg: 2, scope: !1050, file: !337, line: 37, type: !13)
!1053 = !DILocalVariable(name: "mem", arg: 3, scope: !1050, file: !337, line: 37, type: !342)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 32)
!1055 = !DILocation(line: 0, scope: !1050, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 378, column: 9, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1047, file: !6, line: 377, column: 15)
!1058 = !DILocation(line: 44, column: 27, scope: !1059, inlinedAt: !1056)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !337, line: 43, column: 16)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !337, line: 41, column: 20)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !337, line: 39, column: 13)
!1062 = distinct !DILexicalBlock(scope: !1050, file: !337, line: 38, column: 54)
!1063 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !1056)
!1064 = distinct !DILexicalBlock(scope: !1062, file: !337, line: 48, column: 13)
!1065 = !DILocation(line: 48, column: 13, scope: !1062, inlinedAt: !1056)
!1066 = !DILocalVariable(name: "this", arg: 1, scope: !1067, type: !1054, flags: DIFlagArtificial | DIFlagObjectPointer)
!1067 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !422, file: !337, line: 57, type: !435, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !434, retainedNodes: !1068)
!1068 = !{!1066, !1069}
!1069 = !DILocalVariable(name: "arg", arg: 2, scope: !1067, file: !337, line: 57, type: !358)
!1070 = !DILocation(line: 0, scope: !1067, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 378, column: 29, scope: !1057)
!1072 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !1071)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !337, line: 61, column: 16)
!1074 = distinct !DILexicalBlock(scope: !1067, file: !337, line: 59, column: 13)
!1075 = !DILocalVariable(name: "this", arg: 1, scope: !1076, type: !1054, flags: DIFlagArtificial | DIFlagObjectPointer)
!1076 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !422, file: !337, line: 166, type: !472, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !485, retainedNodes: !1077)
!1077 = !{!1075}
!1078 = !DILocation(line: 0, scope: !1076, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 378, column: 9, scope: !1057)
!1080 = !DILocation(line: 168, column: 13, scope: !1081, inlinedAt: !1079)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !337, line: 167, column: 19)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !337, line: 167, column: 13)
!1083 = distinct !DILexicalBlock(scope: !1076, file: !337, line: 166, column: 16)
!1084 = !DILocation(line: 169, column: 9, scope: !1081, inlinedAt: !1079)
!1085 = !DILocation(line: 49, column: 23, scope: !1086, inlinedAt: !1056)
!1086 = distinct !DILexicalBlock(scope: !1064, file: !337, line: 48, column: 18)
!1087 = !DILocation(line: 50, column: 18, scope: !1086, inlinedAt: !1056)
!1088 = !DILocalVariable(name: "this", arg: 1, scope: !1089, type: !1054, flags: DIFlagArtificial | DIFlagObjectPointer)
!1089 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !422, file: !337, line: 162, type: !472, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !484, retainedNodes: !1090)
!1090 = !{!1088}
!1091 = !DILocation(line: 0, scope: !1089, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 170, column: 13, scope: !1093, inlinedAt: !1079)
!1093 = distinct !DILexicalBlock(scope: !1082, file: !337, line: 169, column: 16)
!1094 = !DILocation(line: 163, column: 81, scope: !1089, inlinedAt: !1092)
!1095 = !DILocation(line: 163, column: 87, scope: !1089, inlinedAt: !1092)
!1096 = !DILocation(line: 163, column: 77, scope: !1089, inlinedAt: !1092)
!1097 = !DILocation(line: 163, column: 15, scope: !1089, inlinedAt: !1092)
!1098 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !1079)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !337, line: 171, column: 39)
!1100 = distinct !DILexicalBlock(scope: !1093, file: !337, line: 171, column: 17)
!1101 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !1079)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !337, line: 180, column: 40)
!1103 = distinct !DILexicalBlock(scope: !1083, file: !337, line: 180, column: 13)
!1104 = !DILocation(line: 379, column: 9, scope: !1057)
!1105 = !DILocation(line: 383, column: 53, scope: !888)
!1106 = !DILocation(line: 382, column: 15, scope: !888)
!1107 = !DILocation(line: 384, column: 13, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !888, file: !6, line: 384, column: 9)
!1109 = !DILocation(line: 384, column: 9, scope: !888)
!1110 = !DILocation(line: 385, column: 9, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !6, line: 384, column: 19)
!1112 = !DILocation(line: 386, column: 9, scope: !1111)
!1113 = !DILocation(line: 390, column: 1, scope: !888)
!1114 = !DISubprogram(name: "halide_print", scope: !21, file: !21, line: 97, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !13, !358}
!1117 = !DISubprogram(name: "abort", scope: !26, file: !26, line: 108, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!1118 = !DISubprogram(name: "halide_malloc", scope: !21, file: !21, line: 354, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!13, !13, !28}
!1121 = distinct !DISubprogram(name: "halide_hexagon_dma_device_wrap_native", scope: !6, file: !6, line: 617, type: !225, scopeLine: 618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1122)
!1122 = !{!1123, !1124, !1125, !1126}
!1123 = !DILocalVariable(name: "user_context", arg: 1, scope: !1121, file: !6, line: 617, type: !13)
!1124 = !DILocalVariable(name: "buf", arg: 2, scope: !1121, file: !6, line: 617, type: !40)
!1125 = !DILocalVariable(name: "handle", arg: 3, scope: !1121, file: !6, line: 618, type: !44)
!1126 = !DILocalVariable(name: "dev", scope: !1121, file: !6, line: 632, type: !488)
!1127 = !DILocation(line: 0, scope: !1121)
!1128 = !DILocation(line: 0, scope: !614, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 619, column: 5, scope: !1121)
!1130 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !1129)
!1131 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !1129)
!1132 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !1129)
!1133 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !1129)
!1134 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !1129)
!1135 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !1129)
!1136 = !DILocation(line: 0, scope: !628, inlinedAt: !1129)
!1137 = !DILocation(line: 0, scope: !631, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 620, column: 9, scope: !1121)
!1139 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1138)
!1140 = !DILocation(line: 0, scope: !912, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 620, column: 77, scope: !1121)
!1142 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1141)
!1143 = !DILocation(line: 0, scope: !631, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 621, column: 9, scope: !1121)
!1145 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1144)
!1146 = !DILocation(line: 0, scope: !922, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 621, column: 21, scope: !1121)
!1148 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !1147)
!1149 = !DILocation(line: 0, scope: !631, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 621, column: 29, scope: !1121)
!1151 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1150)
!1152 = !DILocalVariable(name: "this", arg: 1, scope: !1153, type: !618, flags: DIFlagArtificial | DIFlagObjectPointer)
!1153 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !339, file: !337, line: 77, type: !369, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !368, retainedNodes: !1154)
!1154 = !{!1152, !1155}
!1155 = !DILocalVariable(name: "arg", arg: 2, scope: !1153, file: !337, line: 77, type: !44)
!1156 = !DILocation(line: 0, scope: !1153, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 621, column: 44, scope: !1121)
!1158 = !DILocation(line: 78, column: 15, scope: !1153, inlinedAt: !1157)
!1159 = !DILocation(line: 0, scope: !631, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 621, column: 54, scope: !1121)
!1161 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1160)
!1162 = !DILocation(line: 0, scope: !640, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 619, column: 5, scope: !1121)
!1164 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !1163)
!1165 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !1163)
!1166 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !1163)
!1167 = !DILocation(line: 0, scope: !654, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !1163)
!1169 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !1168)
!1170 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !1168)
!1171 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !1168)
!1172 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !1168)
!1173 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1163)
!1174 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1163)
!1175 = !DILocation(line: 623, column: 5, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !6, line: 623, column: 5)
!1177 = distinct !DILexicalBlock(scope: !1121, file: !6, line: 623, column: 5)
!1178 = !DILocation(line: 623, column: 5, scope: !1177)
!1179 = !DILocation(line: 623, column: 5, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !6, line: 623, column: 5)
!1181 = !DILocation(line: 624, column: 14, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1121, file: !6, line: 624, column: 9)
!1183 = !DILocation(line: 624, column: 21, scope: !1182)
!1184 = !DILocation(line: 624, column: 9, scope: !1121)
!1185 = !DILocation(line: 0, scope: !1050, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 625, column: 9, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1182, file: !6, line: 624, column: 27)
!1188 = !DILocation(line: 44, column: 27, scope: !1059, inlinedAt: !1186)
!1189 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !1186)
!1190 = !DILocation(line: 48, column: 13, scope: !1062, inlinedAt: !1186)
!1191 = !DILocation(line: 0, scope: !1067, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 625, column: 29, scope: !1187)
!1193 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !1192)
!1194 = !DILocation(line: 0, scope: !1076, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 625, column: 9, scope: !1187)
!1196 = !DILocation(line: 168, column: 13, scope: !1081, inlinedAt: !1195)
!1197 = !DILocation(line: 169, column: 9, scope: !1081, inlinedAt: !1195)
!1198 = !DILocation(line: 49, column: 23, scope: !1086, inlinedAt: !1186)
!1199 = !DILocation(line: 50, column: 18, scope: !1086, inlinedAt: !1186)
!1200 = !DILocation(line: 0, scope: !1089, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 170, column: 13, scope: !1093, inlinedAt: !1195)
!1202 = !DILocation(line: 163, column: 81, scope: !1089, inlinedAt: !1201)
!1203 = !DILocation(line: 163, column: 87, scope: !1089, inlinedAt: !1201)
!1204 = !DILocation(line: 163, column: 77, scope: !1089, inlinedAt: !1201)
!1205 = !DILocation(line: 163, column: 15, scope: !1089, inlinedAt: !1201)
!1206 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !1195)
!1207 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !1195)
!1208 = !DILocation(line: 626, column: 9, scope: !1187)
!1209 = !DILocation(line: 629, column: 10, scope: !1121)
!1210 = !DILocation(line: 629, column: 27, scope: !1121)
!1211 = !{!709, !710, i64 8}
!1212 = !DILocation(line: 630, column: 28, scope: !1121)
!1213 = !{!1214, !710, i64 60}
!1214 = !{!"_ZTS25halide_device_interface_t", !710, i64 0, !710, i64 4, !710, i64 8, !710, i64 12, !710, i64 16, !710, i64 20, !710, i64 24, !710, i64 28, !710, i64 32, !710, i64 36, !710, i64 40, !710, i64 44, !710, i64 48, !710, i64 52, !710, i64 56, !710, i64 60}
!1215 = !DILocation(line: 630, column: 34, scope: !1121)
!1216 = !{!1217, !710, i64 0}
!1217 = !{!"_ZTS30halide_device_interface_impl_t", !710, i64 0, !710, i64 4, !710, i64 8, !710, i64 12, !710, i64 16, !710, i64 20, !710, i64 24, !710, i64 28, !710, i64 32, !710, i64 36, !710, i64 40, !710, i64 44, !710, i64 48, !710, i64 52, !710, i64 56, !710, i64 60}
!1218 = !DILocation(line: 630, column: 5, scope: !1121)
!1219 = !DILocation(line: 39, column: 51, scope: !1220, inlinedAt: !1225)
!1220 = distinct !DISubprogram(name: "malloc_device_handle", linkageName: "_ZN6Halide7Runtime8Internal10HexagonDma20malloc_device_handleEv", scope: !2, file: !6, line: 38, type: !1221, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1223)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!488}
!1223 = !{!1224}
!1224 = !DILocalVariable(name: "dev", scope: !1220, file: !6, line: 39, type: !488)
!1225 = distinct !DILocation(line: 632, column: 30, scope: !1121)
!1226 = !DILocation(line: 0, scope: !1220, inlinedAt: !1225)
!1227 = !DILocation(line: 40, column: 10, scope: !1220, inlinedAt: !1225)
!1228 = !DILocation(line: 41, column: 10, scope: !1220, inlinedAt: !1225)
!1229 = !DILocation(line: 41, column: 21, scope: !1220, inlinedAt: !1225)
!1230 = !{!1231, !713, i64 4}
!1231 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma17dma_device_handleE", !710, i64 0, !713, i64 4, !713, i64 6, !713, i64 8, !713, i64 10, !710, i64 12, !714, i64 16, !714, i64 20, !714, i64 24, !1232, i64 28, !1232, i64 29, !1233, i64 32}
!1232 = !{!"bool", !551, i64 0}
!1233 = !{!"_ZTS9t_eDmaFmt", !551, i64 0}
!1234 = !DILocation(line: 42, column: 10, scope: !1220, inlinedAt: !1225)
!1235 = !DILocation(line: 42, column: 21, scope: !1220, inlinedAt: !1225)
!1236 = !{!1231, !713, i64 6}
!1237 = !DILocation(line: 43, column: 10, scope: !1220, inlinedAt: !1225)
!1238 = !DILocation(line: 43, column: 21, scope: !1220, inlinedAt: !1225)
!1239 = !{!1231, !713, i64 8}
!1240 = !DILocation(line: 44, column: 10, scope: !1220, inlinedAt: !1225)
!1241 = !DILocation(line: 44, column: 21, scope: !1220, inlinedAt: !1225)
!1242 = !{!1231, !713, i64 10}
!1243 = !DILocation(line: 45, column: 10, scope: !1220, inlinedAt: !1225)
!1244 = !DILocation(line: 46, column: 10, scope: !1220, inlinedAt: !1225)
!1245 = !DILocation(line: 47, column: 10, scope: !1220, inlinedAt: !1225)
!1246 = !DILocation(line: 48, column: 10, scope: !1220, inlinedAt: !1225)
!1247 = !DILocation(line: 49, column: 10, scope: !1220, inlinedAt: !1225)
!1248 = !DILocation(line: 49, column: 18, scope: !1220, inlinedAt: !1225)
!1249 = !{!1231, !1232, i64 28}
!1250 = !DILocation(line: 50, column: 10, scope: !1220, inlinedAt: !1225)
!1251 = !DILocation(line: 50, column: 14, scope: !1220, inlinedAt: !1225)
!1252 = !{!1231, !1233, i64 32}
!1253 = !DILocation(line: 51, column: 10, scope: !1220, inlinedAt: !1225)
!1254 = !DILocation(line: 51, column: 19, scope: !1220, inlinedAt: !1225)
!1255 = !{!1231, !1232, i64 29}
!1256 = !DILocation(line: 634, column: 19, scope: !1121)
!1257 = !DILocation(line: 634, column: 17, scope: !1121)
!1258 = !{!1231, !710, i64 0}
!1259 = !DILocation(line: 635, column: 21, scope: !1121)
!1260 = !{!1231, !710, i64 12}
!1261 = !DILocation(line: 636, column: 29, scope: !1121)
!1262 = !DILocation(line: 636, column: 36, scope: !1121)
!1263 = !DILocation(line: 636, column: 57, scope: !1121)
!1264 = !DILocation(line: 636, column: 43, scope: !1121)
!1265 = !DILocation(line: 636, column: 22, scope: !1121)
!1266 = !{!1231, !714, i64 16}
!1267 = !DILocation(line: 637, column: 37, scope: !1121)
!1268 = !DILocation(line: 637, column: 23, scope: !1121)
!1269 = !{!1231, !714, i64 20}
!1270 = !DILocation(line: 638, column: 37, scope: !1121)
!1271 = !DILocation(line: 638, column: 23, scope: !1121)
!1272 = !{!1231, !714, i64 24}
!1273 = !DILocation(line: 639, column: 19, scope: !1121)
!1274 = !DILocation(line: 639, column: 17, scope: !1121)
!1275 = !DILocation(line: 642, column: 1, scope: !1121)
!1276 = !DISubprogram(name: "halide_free", scope: !21, file: !21, line: 355, type: !1277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !13, !13}
!1279 = distinct !DISubprogram(name: "halide_hexagon_dma_device_free", scope: !6, file: !6, line: 392, type: !889, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1280)
!1280 = !{!1281, !1282, !1283, !1284}
!1281 = !DILocalVariable(name: "user_context", arg: 1, scope: !1279, file: !6, line: 392, type: !13)
!1282 = !DILocalVariable(name: "buf", arg: 2, scope: !1279, file: !6, line: 392, type: !891)
!1283 = !DILocalVariable(name: "dev", scope: !1279, file: !6, line: 397, type: !488)
!1284 = !DILocalVariable(name: "mem", scope: !1279, file: !6, line: 398, type: !13)
!1285 = !DILocation(line: 0, scope: !1279)
!1286 = !DILocation(line: 0, scope: !614, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 393, column: 5, scope: !1279)
!1288 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !1287)
!1289 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !1287)
!1290 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !1287)
!1291 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !1287)
!1292 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !1287)
!1293 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !1287)
!1294 = !DILocation(line: 0, scope: !628, inlinedAt: !1287)
!1295 = !DILocation(line: 0, scope: !631, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 394, column: 9, scope: !1279)
!1297 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1296)
!1298 = !DILocation(line: 0, scope: !912, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 394, column: 70, scope: !1279)
!1300 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1299)
!1301 = !DILocation(line: 0, scope: !631, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 395, column: 9, scope: !1279)
!1303 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1302)
!1304 = !DILocation(line: 0, scope: !922, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 395, column: 22, scope: !1279)
!1306 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !1305)
!1307 = !DILocation(line: 0, scope: !631, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 395, column: 30, scope: !1279)
!1309 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1308)
!1310 = !DILocation(line: 0, scope: !640, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 393, column: 5, scope: !1279)
!1312 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !1311)
!1313 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !1311)
!1314 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !1311)
!1315 = !DILocation(line: 0, scope: !654, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !1311)
!1317 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !1316)
!1318 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !1316)
!1319 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !1316)
!1320 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !1316)
!1321 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1311)
!1322 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1311)
!1323 = !DILocation(line: 397, column: 56, scope: !1279)
!1324 = !DILocation(line: 397, column: 30, scope: !1279)
!1325 = !DILocation(line: 398, column: 22, scope: !1279)
!1326 = !DILocation(line: 399, column: 5, scope: !1279)
!1327 = !DILocation(line: 401, column: 5, scope: !1279)
!1328 = !DILocalVariable(name: "this", arg: 1, scope: !1329, type: !40, flags: DIFlagArtificial | DIFlagObjectPointer)
!1329 = distinct !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !41, file: !21, line: 1478, type: !139, scopeLine: 1478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !141, retainedNodes: !1330)
!1330 = !{!1328, !1331}
!1331 = !DILocalVariable(name: "v", arg: 2, scope: !1329, file: !21, line: 1478, type: !15)
!1332 = !DILocation(line: 0, scope: !1329, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 404, column: 10, scope: !1279)
!1334 = !DILocalVariable(name: "this", arg: 1, scope: !1335, type: !40, flags: DIFlagArtificial | DIFlagObjectPointer)
!1335 = distinct !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !41, file: !21, line: 1458, type: !131, scopeLine: 1458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !130, retainedNodes: !1336)
!1336 = !{!1334, !1337, !1338}
!1337 = !DILocalVariable(name: "flag", arg: 2, scope: !1335, file: !21, line: 1458, type: !125)
!1338 = !DILocalVariable(name: "value", arg: 3, scope: !1335, file: !21, line: 1458, type: !15)
!1339 = !DILocation(line: 0, scope: !1335, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 1479, column: 9, scope: !1329, inlinedAt: !1333)
!1341 = !DILocation(line: 1462, column: 13, scope: !1342, inlinedAt: !1340)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !21, line: 1461, column: 16)
!1343 = distinct !DILexicalBlock(scope: !1335, file: !21, line: 1459, column: 13)
!1344 = !DILocation(line: 1462, column: 19, scope: !1342, inlinedAt: !1340)
!1345 = !{!709, !550, i64 16}
!1346 = !DILocation(line: 405, column: 5, scope: !1279)
!1347 = distinct !DISubprogram(name: "halide_hexagon_dma_device_detach_native", scope: !6, file: !6, line: 644, type: !162, scopeLine: 644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1348)
!1348 = !{!1349, !1350, !1351}
!1349 = !DILocalVariable(name: "user_context", arg: 1, scope: !1347, file: !6, line: 644, type: !13)
!1350 = !DILocalVariable(name: "buf", arg: 2, scope: !1347, file: !6, line: 644, type: !40)
!1351 = !DILocalVariable(name: "dev", scope: !1347, file: !6, line: 654, type: !488)
!1352 = !DILocation(line: 0, scope: !1347)
!1353 = !DILocation(line: 0, scope: !614, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 645, column: 5, scope: !1347)
!1355 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !1354)
!1356 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !1354)
!1357 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !1354)
!1358 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !1354)
!1359 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !1354)
!1360 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !1354)
!1361 = !DILocation(line: 0, scope: !628, inlinedAt: !1354)
!1362 = !DILocation(line: 0, scope: !631, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 646, column: 9, scope: !1347)
!1364 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1363)
!1365 = !DILocation(line: 0, scope: !912, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 646, column: 79, scope: !1347)
!1367 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1366)
!1368 = !DILocation(line: 0, scope: !631, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 647, column: 9, scope: !1347)
!1370 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1369)
!1371 = !DILocation(line: 0, scope: !922, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 647, column: 21, scope: !1347)
!1373 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !1372)
!1374 = !DILocation(line: 0, scope: !631, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 647, column: 29, scope: !1347)
!1376 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1375)
!1377 = !DILocation(line: 0, scope: !640, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 645, column: 5, scope: !1347)
!1379 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !1378)
!1380 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !1378)
!1381 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !1378)
!1382 = !DILocation(line: 0, scope: !654, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !1378)
!1384 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !1383)
!1385 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !1383)
!1386 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !1383)
!1387 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !1383)
!1388 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1378)
!1389 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1378)
!1390 = !DILocation(line: 649, column: 14, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1347, file: !6, line: 649, column: 9)
!1392 = !DILocation(line: 649, column: 21, scope: !1391)
!1393 = !DILocation(line: 649, column: 9, scope: !1347)
!1394 = !DILocation(line: 0, scope: !1050, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 650, column: 9, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !6, line: 649, column: 27)
!1397 = !DILocation(line: 44, column: 27, scope: !1059, inlinedAt: !1395)
!1398 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !1395)
!1399 = !DILocation(line: 48, column: 13, scope: !1062, inlinedAt: !1395)
!1400 = !DILocation(line: 0, scope: !1067, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 650, column: 29, scope: !1396)
!1402 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !1401)
!1403 = !DILocation(line: 0, scope: !1076, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 650, column: 9, scope: !1396)
!1405 = !DILocation(line: 168, column: 13, scope: !1081, inlinedAt: !1404)
!1406 = !DILocation(line: 169, column: 9, scope: !1081, inlinedAt: !1404)
!1407 = !DILocation(line: 49, column: 23, scope: !1086, inlinedAt: !1395)
!1408 = !DILocation(line: 50, column: 18, scope: !1086, inlinedAt: !1395)
!1409 = !DILocation(line: 0, scope: !1089, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 170, column: 13, scope: !1093, inlinedAt: !1404)
!1411 = !DILocation(line: 163, column: 81, scope: !1089, inlinedAt: !1410)
!1412 = !DILocation(line: 163, column: 87, scope: !1089, inlinedAt: !1410)
!1413 = !DILocation(line: 163, column: 77, scope: !1089, inlinedAt: !1410)
!1414 = !DILocation(line: 163, column: 15, scope: !1089, inlinedAt: !1410)
!1415 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !1404)
!1416 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !1404)
!1417 = !DILocation(line: 651, column: 9, scope: !1396)
!1418 = !DILocation(line: 653, column: 5, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !6, line: 653, column: 5)
!1420 = distinct !DILexicalBlock(scope: !1347, file: !6, line: 653, column: 5)
!1421 = !DILocation(line: 653, column: 5, scope: !1420)
!1422 = !DILocation(line: 653, column: 5, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1419, file: !6, line: 653, column: 5)
!1424 = !DILocation(line: 654, column: 56, scope: !1347)
!1425 = !DILocation(line: 655, column: 10, scope: !1347)
!1426 = !DILocation(line: 655, column: 5, scope: !1347)
!1427 = !DILocation(line: 656, column: 10, scope: !1347)
!1428 = !DILocation(line: 656, column: 28, scope: !1347)
!1429 = !DILocation(line: 656, column: 34, scope: !1347)
!1430 = !{!1217, !710, i64 4}
!1431 = !DILocation(line: 656, column: 5, scope: !1347)
!1432 = !DILocation(line: 657, column: 17, scope: !1347)
!1433 = !DILocation(line: 658, column: 27, scope: !1347)
!1434 = !DILocation(line: 661, column: 1, scope: !1347)
!1435 = distinct !DISubprogram(name: "halide_hexagon_dma_allocate_engine", scope: !6, file: !6, line: 408, type: !1436, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1439)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!39, !13, !1438}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!1439 = !{!1440, !1441}
!1440 = !DILocalVariable(name: "user_context", arg: 1, scope: !1435, file: !6, line: 408, type: !13)
!1441 = !DILocalVariable(name: "dma_engine", arg: 2, scope: !1435, file: !6, line: 408, type: !1438)
!1442 = !DILocation(line: 0, scope: !1435)
!1443 = !DILocation(line: 0, scope: !614, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 409, column: 5, scope: !1435)
!1445 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !1444)
!1446 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !1444)
!1447 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !1444)
!1448 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !1444)
!1449 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !1444)
!1450 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !1444)
!1451 = !DILocation(line: 0, scope: !628, inlinedAt: !1444)
!1452 = !DILocation(line: 0, scope: !631, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 410, column: 9, scope: !1435)
!1454 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1453)
!1455 = !DILocation(line: 0, scope: !912, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 410, column: 74, scope: !1435)
!1457 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1456)
!1458 = !DILocation(line: 0, scope: !631, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 410, column: 90, scope: !1435)
!1460 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1459)
!1461 = !DILocation(line: 0, scope: !640, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 409, column: 5, scope: !1435)
!1463 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !1462)
!1464 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !1462)
!1465 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !1462)
!1466 = !DILocation(line: 0, scope: !654, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !1462)
!1468 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !1467)
!1469 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !1467)
!1470 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !1467)
!1471 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !1467)
!1472 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1462)
!1473 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1462)
!1474 = !DILocation(line: 412, column: 5, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !6, line: 412, column: 5)
!1476 = distinct !DILexicalBlock(scope: !1435, file: !6, line: 412, column: 5)
!1477 = !DILocation(line: 412, column: 5, scope: !1476)
!1478 = !DILocation(line: 412, column: 5, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1475, file: !6, line: 412, column: 5)
!1480 = !DILocation(line: 0, scope: !614, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 413, column: 5, scope: !1435)
!1482 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !1481)
!1483 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !1481)
!1484 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !1481)
!1485 = !DILocation(line: 0, scope: !631, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 413, column: 25, scope: !1435)
!1487 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1486)
!1488 = !DILocation(line: 0, scope: !640, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 413, column: 5, scope: !1435)
!1490 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !1489)
!1491 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !1489)
!1492 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !1481)
!1493 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !1481)
!1494 = !DILocation(line: 0, scope: !654, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !1489)
!1496 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !1495)
!1497 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !1495)
!1498 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !1495)
!1499 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !1495)
!1500 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1489)
!1501 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1489)
!1502 = !DILocation(line: 414, column: 19, scope: !1435)
!1503 = !DILocation(line: 414, column: 17, scope: !1435)
!1504 = !{!710, !710, i64 0}
!1505 = !DILocation(line: 0, scope: !614, inlinedAt: !1506)
!1506 = distinct !DILocation(line: 415, column: 5, scope: !1435)
!1507 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !1506)
!1508 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !1506)
!1509 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !1506)
!1510 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !1506)
!1511 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !1506)
!1512 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !1506)
!1513 = !DILocation(line: 0, scope: !628, inlinedAt: !1506)
!1514 = !DILocation(line: 0, scope: !631, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 415, column: 25, scope: !1435)
!1516 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1515)
!1517 = !DILocation(line: 415, column: 42, scope: !1435)
!1518 = !DILocation(line: 0, scope: !912, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 415, column: 39, scope: !1435)
!1520 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1519)
!1521 = !DILocation(line: 0, scope: !631, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 415, column: 53, scope: !1435)
!1523 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1522)
!1524 = !DILocation(line: 0, scope: !640, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 415, column: 5, scope: !1435)
!1526 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !1525)
!1527 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !1525)
!1528 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !1525)
!1529 = !DILocation(line: 0, scope: !654, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !1525)
!1531 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !1530)
!1532 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !1530)
!1533 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !1530)
!1534 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !1530)
!1535 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1525)
!1536 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1525)
!1537 = !DILocation(line: 416, column: 10, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1435, file: !6, line: 416, column: 9)
!1539 = !DILocation(line: 416, column: 9, scope: !1435)
!1540 = !DILocation(line: 0, scope: !614, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 417, column: 9, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1538, file: !6, line: 416, column: 23)
!1543 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !1541)
!1544 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !1541)
!1545 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !1541)
!1546 = !DILocation(line: 0, scope: !631, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 417, column: 29, scope: !1542)
!1548 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1547)
!1549 = !DILocation(line: 0, scope: !640, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 417, column: 9, scope: !1542)
!1551 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !1550)
!1552 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !1550)
!1553 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !1541)
!1554 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !1541)
!1555 = !DILocation(line: 0, scope: !654, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !1550)
!1557 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !1556)
!1558 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !1556)
!1559 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !1556)
!1560 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !1556)
!1561 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1550)
!1562 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1550)
!1563 = !DILocation(line: 418, column: 9, scope: !1542)
!1564 = !DILocation(line: 422, column: 1, scope: !1435)
!1565 = !DISubprogram(name: "halide_hexagon_allocate_dma_resource", scope: !1566, file: !1566, line: 14, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!1566 = !DIFile(filename: "src/runtime/hexagon_dma_pool.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!13, !13}
!1569 = distinct !DISubprogram(name: "halide_hexagon_dma_deallocate_engine", scope: !6, file: !6, line: 424, type: !1570, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1572)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!39, !13, !13}
!1572 = !{!1573, !1574, !1575}
!1573 = !DILocalVariable(name: "user_context", arg: 1, scope: !1569, file: !6, line: 424, type: !13)
!1574 = !DILocalVariable(name: "dma_engine", arg: 2, scope: !1569, file: !6, line: 424, type: !13)
!1575 = !DILocalVariable(name: "err", scope: !1569, file: !6, line: 436, type: !39)
!1576 = !DILocation(line: 0, scope: !1569)
!1577 = !DILocation(line: 0, scope: !614, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 425, column: 5, scope: !1569)
!1579 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !1578)
!1580 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !1578)
!1581 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !1578)
!1582 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !1578)
!1583 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !1578)
!1584 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !1578)
!1585 = !DILocation(line: 0, scope: !628, inlinedAt: !1578)
!1586 = !DILocation(line: 0, scope: !631, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 426, column: 9, scope: !1569)
!1588 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1587)
!1589 = !DILocation(line: 0, scope: !912, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 426, column: 76, scope: !1569)
!1591 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1590)
!1592 = !DILocation(line: 0, scope: !631, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 427, column: 9, scope: !1569)
!1594 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1593)
!1595 = !DILocation(line: 0, scope: !912, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 427, column: 29, scope: !1569)
!1597 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1596)
!1598 = !DILocation(line: 0, scope: !631, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 427, column: 43, scope: !1569)
!1600 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1599)
!1601 = !DILocation(line: 0, scope: !640, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 425, column: 5, scope: !1569)
!1603 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !1602)
!1604 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !1602)
!1605 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !1602)
!1606 = !DILocation(line: 0, scope: !654, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !1602)
!1608 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !1607)
!1609 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !1607)
!1610 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !1607)
!1611 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !1607)
!1612 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1602)
!1613 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1602)
!1614 = !DILocation(line: 429, column: 5, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !6, line: 429, column: 5)
!1616 = distinct !DILexicalBlock(scope: !1569, file: !6, line: 429, column: 5)
!1617 = !DILocation(line: 429, column: 5, scope: !1616)
!1618 = !DILocation(line: 429, column: 5, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !6, line: 429, column: 5)
!1620 = !DILocalVariable(name: "user_context", arg: 1, scope: !1621, file: !6, line: 143, type: !13)
!1621 = distinct !DISubprogram(name: "desc_pool_free", linkageName: "_ZN12_GLOBAL__N_114desc_pool_freeEPv", scope: !1622, file: !6, line: 143, type: !1623, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1625)
!1622 = !DINamespace(scope: null)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !13}
!1625 = !{!1620, !1626, !1639, !1640}
!1626 = !DILocalVariable(name: "lock", scope: !1621, file: !6, line: 144, type: !1627)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !3, file: !1628, line: 11, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1629, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!1628 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!1629 = !{!1630, !1632, !1636}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1627, file: !1628, line: 12, baseType: !1631, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 32)
!1632 = !DISubprogram(name: "ScopedMutexLock", scope: !1627, file: !1628, line: 14, type: !1633, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null, !1635, !1631}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1636 = !DISubprogram(name: "~ScopedMutexLock", scope: !1627, file: !1628, line: 19, type: !1637, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null, !1635}
!1639 = !DILocalVariable(name: "temp", scope: !1621, file: !6, line: 145, type: !7)
!1640 = !DILocalVariable(name: "temp2", scope: !1641, file: !6, line: 147, type: !7)
!1641 = distinct !DILexicalBlock(scope: !1621, file: !6, line: 146, column: 29)
!1642 = !DILocation(line: 0, scope: !1621, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 433, column: 5, scope: !1569)
!1644 = !DILocalVariable(name: "this", arg: 1, scope: !1645, type: !1648, flags: DIFlagArtificial | DIFlagObjectPointer)
!1645 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !1627, file: !1628, line: 14, type: !1633, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !1632, retainedNodes: !1646)
!1646 = !{!1644, !1647}
!1647 = !DILocalVariable(name: "mutex", arg: 2, scope: !1645, file: !1628, line: 14, type: !1631)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 32)
!1649 = !DILocation(line: 0, scope: !1645, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 144, column: 21, scope: !1621, inlinedAt: !1643)
!1651 = !DILocation(line: 16, column: 9, scope: !1652, inlinedAt: !1650)
!1652 = distinct !DILexicalBlock(scope: !1645, file: !1628, line: 15, column: 24)
!1653 = !DILocation(line: 145, column: 23, scope: !1621, inlinedAt: !1643)
!1654 = !DILocation(line: 146, column: 17, scope: !1621, inlinedAt: !1643)
!1655 = !DILocation(line: 146, column: 5, scope: !1621, inlinedAt: !1643)
!1656 = !DILocation(line: 0, scope: !1641, inlinedAt: !1643)
!1657 = !DILocation(line: 148, column: 22, scope: !1641, inlinedAt: !1643)
!1658 = !{!1659, !710, i64 8}
!1659 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma9desc_poolE", !710, i64 0, !1232, i64 4, !710, i64 8}
!1660 = !DILocation(line: 149, column: 20, scope: !1661, inlinedAt: !1643)
!1661 = distinct !DILexicalBlock(scope: !1641, file: !6, line: 149, column: 13)
!1662 = !{!1659, !710, i64 0}
!1663 = !DILocation(line: 149, column: 31, scope: !1661, inlinedAt: !1643)
!1664 = !DILocation(line: 149, column: 13, scope: !1641, inlinedAt: !1643)
!1665 = !DILocation(line: 150, column: 13, scope: !1666, inlinedAt: !1643)
!1666 = distinct !DILexicalBlock(scope: !1661, file: !6, line: 149, column: 43)
!1667 = !DILocation(line: 151, column: 9, scope: !1666, inlinedAt: !1643)
!1668 = !DILocation(line: 152, column: 14, scope: !1641, inlinedAt: !1643)
!1669 = !DILocation(line: 152, column: 9, scope: !1641, inlinedAt: !1643)
!1670 = !DILocation(line: 154, column: 18, scope: !1671, inlinedAt: !1643)
!1671 = distinct !DILexicalBlock(scope: !1641, file: !6, line: 154, column: 13)
!1672 = !DILocation(line: 154, column: 13, scope: !1641, inlinedAt: !1643)
!1673 = !DILocation(line: 155, column: 26, scope: !1674, inlinedAt: !1643)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !6, line: 154, column: 30)
!1675 = !DILocation(line: 156, column: 18, scope: !1674, inlinedAt: !1643)
!1676 = !DILocation(line: 156, column: 13, scope: !1674, inlinedAt: !1643)
!1677 = distinct !{!1677, !1655, !1678, !559}
!1678 = !DILocation(line: 158, column: 5, scope: !1621, inlinedAt: !1643)
!1679 = !DILocation(line: 161, column: 19, scope: !1621, inlinedAt: !1643)
!1680 = !DILocalVariable(name: "this", arg: 1, scope: !1681, type: !1648, flags: DIFlagArtificial | DIFlagObjectPointer)
!1681 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !1627, file: !1628, line: 19, type: !1637, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !1636, retainedNodes: !1682)
!1682 = !{!1680}
!1683 = !DILocation(line: 0, scope: !1681, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 162, column: 1, scope: !1621, inlinedAt: !1643)
!1685 = !DILocation(line: 20, column: 9, scope: !1686, inlinedAt: !1684)
!1686 = distinct !DILexicalBlock(scope: !1681, file: !1628, line: 19, column: 38)
!1687 = !DILocation(line: 436, column: 15, scope: !1569)
!1688 = !DILocation(line: 0, scope: !614, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 437, column: 5, scope: !1569)
!1690 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !1689)
!1691 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !1689)
!1692 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !1689)
!1693 = !DILocation(line: 0, scope: !631, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 437, column: 25, scope: !1569)
!1695 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1694)
!1696 = !DILocation(line: 0, scope: !640, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 437, column: 5, scope: !1569)
!1698 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !1697)
!1699 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !1697)
!1700 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !1689)
!1701 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !1689)
!1702 = !DILocation(line: 0, scope: !654, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !1697)
!1704 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !1703)
!1705 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !1703)
!1706 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !1703)
!1707 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !1703)
!1708 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1697)
!1709 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1697)
!1710 = !DILocation(line: 438, column: 13, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1569, file: !6, line: 438, column: 9)
!1712 = !DILocation(line: 438, column: 9, scope: !1569)
!1713 = !DILocation(line: 0, scope: !614, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 439, column: 9, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1711, file: !6, line: 438, column: 19)
!1716 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !1714)
!1717 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !1714)
!1718 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !1714)
!1719 = !DILocation(line: 0, scope: !631, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 439, column: 29, scope: !1715)
!1721 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1720)
!1722 = !DILocation(line: 0, scope: !640, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 439, column: 9, scope: !1715)
!1724 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !1723)
!1725 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !1723)
!1726 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !1714)
!1727 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !1714)
!1728 = !DILocation(line: 0, scope: !654, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !1723)
!1730 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !1729)
!1731 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !1729)
!1732 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !1729)
!1733 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !1729)
!1734 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1723)
!1735 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1723)
!1736 = !DILocation(line: 440, column: 9, scope: !1715)
!1737 = !DILocation(line: 443, column: 1, scope: !1569)
!1738 = !DISubprogram(name: "halide_hexagon_free_dma_resource", scope: !1566, file: !1566, line: 20, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!1739 = distinct !DISubprogram(name: "halide_hexagon_dma_prepare_for_copy_to_host", scope: !6, file: !6, line: 467, type: !1740, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1743)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!39, !13, !40, !13, !15, !1742}
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_hexagon_image_fmt_t", file: !299, line: 48, baseType: !298)
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749}
!1744 = !DILocalVariable(name: "user_context", arg: 1, scope: !1739, file: !6, line: 467, type: !13)
!1745 = !DILocalVariable(name: "buf", arg: 2, scope: !1739, file: !6, line: 467, type: !40)
!1746 = !DILocalVariable(name: "dma_engine", arg: 3, scope: !1739, file: !6, line: 468, type: !13)
!1747 = !DILocalVariable(name: "is_ubwc", arg: 4, scope: !1739, file: !6, line: 468, type: !15)
!1748 = !DILocalVariable(name: "fmt", arg: 5, scope: !1739, file: !6, line: 468, type: !1742)
!1749 = !DILocalVariable(name: "format", scope: !1739, file: !6, line: 472, type: !503)
!1750 = !DILocation(line: 0, scope: !1739)
!1751 = !DILocation(line: 0, scope: !614, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 469, column: 5, scope: !1739)
!1753 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !1752)
!1754 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !1752)
!1755 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !1752)
!1756 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !1752)
!1757 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !1752)
!1758 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !1752)
!1759 = !DILocation(line: 0, scope: !628, inlinedAt: !1752)
!1760 = !DILocation(line: 0, scope: !631, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 470, column: 9, scope: !1739)
!1762 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1761)
!1763 = !DILocation(line: 0, scope: !912, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 470, column: 83, scope: !1739)
!1765 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1764)
!1766 = !DILocation(line: 0, scope: !631, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 471, column: 9, scope: !1739)
!1768 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1767)
!1769 = !DILocation(line: 0, scope: !922, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 471, column: 22, scope: !1739)
!1771 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !1770)
!1772 = !DILocation(line: 0, scope: !631, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 471, column: 30, scope: !1739)
!1774 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1773)
!1775 = !DILocation(line: 0, scope: !912, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 471, column: 50, scope: !1739)
!1777 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1776)
!1778 = !DILocation(line: 0, scope: !631, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 471, column: 64, scope: !1739)
!1780 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1779)
!1781 = !DILocation(line: 0, scope: !640, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 469, column: 5, scope: !1739)
!1783 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !1782)
!1784 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !1782)
!1785 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !1782)
!1786 = !DILocation(line: 0, scope: !654, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !1782)
!1788 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !1787)
!1789 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !1787)
!1790 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !1787)
!1791 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !1787)
!1792 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1782)
!1793 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1782)
!1794 = !DILocation(line: 472, column: 24, scope: !1739)
!1795 = !DILocalVariable(name: "user_context", arg: 1, scope: !1796, file: !6, line: 447, type: !13)
!1796 = distinct !DISubprogram(name: "dma_prepare_for_copy", scope: !1622, file: !6, line: 447, type: !1797, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!39, !13, !40, !13, !15, !503, !15}
!1799 = !{!1795, !1800, !1801, !1802, !1803, !1804, !1805}
!1800 = !DILocalVariable(name: "buf", arg: 2, scope: !1796, file: !6, line: 447, type: !40)
!1801 = !DILocalVariable(name: "dma_engine", arg: 3, scope: !1796, file: !6, line: 447, type: !13)
!1802 = !DILocalVariable(name: "is_ubwc", arg: 4, scope: !1796, file: !6, line: 447, type: !15)
!1803 = !DILocalVariable(name: "fmt", arg: 5, scope: !1796, file: !6, line: 447, type: !503)
!1804 = !DILocalVariable(name: "is_write", arg: 6, scope: !1796, file: !6, line: 447, type: !15)
!1805 = !DILocalVariable(name: "dev", scope: !1796, file: !6, line: 449, type: !488)
!1806 = !DILocation(line: 0, scope: !1796, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 473, column: 12, scope: !1739)
!1808 = !DILocation(line: 448, column: 5, scope: !1809, inlinedAt: !1807)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !6, line: 448, column: 5)
!1810 = distinct !DILexicalBlock(scope: !1796, file: !6, line: 448, column: 5)
!1811 = !DILocation(line: 448, column: 5, scope: !1810, inlinedAt: !1807)
!1812 = !DILocation(line: 448, column: 5, scope: !1813, inlinedAt: !1807)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !6, line: 448, column: 5)
!1814 = !DILocation(line: 449, column: 73, scope: !1796, inlinedAt: !1807)
!1815 = !DILocation(line: 449, column: 30, scope: !1796, inlinedAt: !1807)
!1816 = !DILocation(line: 450, column: 10, scope: !1796, inlinedAt: !1807)
!1817 = !DILocation(line: 450, column: 21, scope: !1796, inlinedAt: !1807)
!1818 = !DILocation(line: 451, column: 10, scope: !1796, inlinedAt: !1807)
!1819 = !DILocation(line: 451, column: 18, scope: !1796, inlinedAt: !1807)
!1820 = !DILocation(line: 452, column: 10, scope: !1796, inlinedAt: !1807)
!1821 = !DILocation(line: 452, column: 14, scope: !1796, inlinedAt: !1807)
!1822 = !DILocation(line: 453, column: 10, scope: !1796, inlinedAt: !1807)
!1823 = !DILocation(line: 453, column: 19, scope: !1796, inlinedAt: !1807)
!1824 = !DILocation(line: 455, column: 39, scope: !1825, inlinedAt: !1807)
!1825 = distinct !DILexicalBlock(scope: !1796, file: !6, line: 455, column: 9)
!1826 = !DILocation(line: 459, column: 34, scope: !1827, inlinedAt: !1807)
!1827 = distinct !DILexicalBlock(scope: !1825, file: !6, line: 458, column: 42)
!1828 = !DILocation(line: 459, column: 47, scope: !1827, inlinedAt: !1807)
!1829 = !DILocation(line: 459, column: 27, scope: !1827, inlinedAt: !1807)
!1830 = !DILocation(line: 460, column: 5, scope: !1827, inlinedAt: !1807)
!1831 = !DILocation(line: 473, column: 5, scope: !1739)
!1832 = distinct !DISubprogram(name: "halide_hexagon_get_dma_format", linkageName: "_ZN12_GLOBAL__N_129halide_hexagon_get_dma_formatEPv26halide_hexagon_image_fmt_t", scope: !1622, file: !6, line: 165, type: !1833, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1836)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!503, !13, !1835}
!1835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1742)
!1836 = !{!1837, !1838}
!1837 = !DILocalVariable(name: "user_context", arg: 1, scope: !1832, file: !6, line: 165, type: !13)
!1838 = !DILocalVariable(name: "format", arg: 2, scope: !1832, file: !6, line: 165, type: !1835)
!1839 = !DILocation(line: 0, scope: !1832)
!1840 = !DILocation(line: 167, column: 5, scope: !1832)
!1841 = !DILocation(line: 0, scope: !1050, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 195, column: 9, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1832, file: !6, line: 167, column: 21)
!1844 = !DILocation(line: 44, column: 27, scope: !1059, inlinedAt: !1842)
!1845 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !1842)
!1846 = !DILocation(line: 48, column: 13, scope: !1062, inlinedAt: !1842)
!1847 = !DILocation(line: 49, column: 23, scope: !1086, inlinedAt: !1842)
!1848 = !DILocation(line: 50, column: 18, scope: !1086, inlinedAt: !1842)
!1849 = !DILocation(line: 51, column: 9, scope: !1086, inlinedAt: !1842)
!1850 = !DILocation(line: 0, scope: !1064, inlinedAt: !1842)
!1851 = !DILocation(line: 0, scope: !1067, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 195, column: 29, scope: !1843)
!1853 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !1852)
!1854 = !DILocalVariable(name: "this", arg: 1, scope: !1855, type: !1054, flags: DIFlagArtificial | DIFlagObjectPointer)
!1855 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !422, file: !337, line: 72, type: !442, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !441, retainedNodes: !1856)
!1856 = !{!1854, !1857}
!1857 = !DILocalVariable(name: "arg", arg: 2, scope: !1855, file: !337, line: 72, type: !95)
!1858 = !DILocation(line: 0, scope: !1855, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 195, column: 64, scope: !1843)
!1860 = !DILocation(line: 73, column: 48, scope: !1855, inlinedAt: !1859)
!1861 = !DILocation(line: 73, column: 15, scope: !1855, inlinedAt: !1859)
!1862 = !DILocation(line: 0, scope: !1067, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 195, column: 74, scope: !1843)
!1864 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !1863)
!1865 = !DILocation(line: 0, scope: !1076, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 195, column: 9, scope: !1843)
!1867 = !DILocation(line: 167, column: 13, scope: !1083, inlinedAt: !1866)
!1868 = !DILocation(line: 168, column: 13, scope: !1081, inlinedAt: !1866)
!1869 = !DILocation(line: 169, column: 9, scope: !1081, inlinedAt: !1866)
!1870 = !DILocation(line: 0, scope: !1089, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 170, column: 13, scope: !1093, inlinedAt: !1866)
!1872 = !DILocation(line: 163, column: 81, scope: !1089, inlinedAt: !1871)
!1873 = !DILocation(line: 163, column: 87, scope: !1089, inlinedAt: !1871)
!1874 = !DILocation(line: 163, column: 77, scope: !1089, inlinedAt: !1871)
!1875 = !DILocation(line: 163, column: 15, scope: !1089, inlinedAt: !1871)
!1876 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !1866)
!1877 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !1866)
!1878 = !DILocation(line: 196, column: 9, scope: !1843)
!1879 = !DILocation(line: 0, scope: !1843)
!1880 = !DILocation(line: 198, column: 1, scope: !1832)
!1881 = distinct !DISubprogram(name: "halide_hexagon_dma_prepare_for_copy_to_device", scope: !6, file: !6, line: 476, type: !1740, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1882)
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888}
!1883 = !DILocalVariable(name: "user_context", arg: 1, scope: !1881, file: !6, line: 476, type: !13)
!1884 = !DILocalVariable(name: "buf", arg: 2, scope: !1881, file: !6, line: 476, type: !40)
!1885 = !DILocalVariable(name: "dma_engine", arg: 3, scope: !1881, file: !6, line: 477, type: !13)
!1886 = !DILocalVariable(name: "is_ubwc", arg: 4, scope: !1881, file: !6, line: 477, type: !15)
!1887 = !DILocalVariable(name: "fmt", arg: 5, scope: !1881, file: !6, line: 477, type: !1742)
!1888 = !DILocalVariable(name: "format", scope: !1881, file: !6, line: 481, type: !503)
!1889 = !DILocation(line: 0, scope: !1881)
!1890 = !DILocation(line: 0, scope: !614, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 478, column: 5, scope: !1881)
!1892 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !1891)
!1893 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !1891)
!1894 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !1891)
!1895 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !1891)
!1896 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !1891)
!1897 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !1891)
!1898 = !DILocation(line: 0, scope: !628, inlinedAt: !1891)
!1899 = !DILocation(line: 0, scope: !631, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 479, column: 9, scope: !1881)
!1901 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1900)
!1902 = !DILocation(line: 0, scope: !912, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 479, column: 85, scope: !1881)
!1904 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1903)
!1905 = !DILocation(line: 0, scope: !631, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 480, column: 9, scope: !1881)
!1907 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1906)
!1908 = !DILocation(line: 0, scope: !922, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 480, column: 22, scope: !1881)
!1910 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !1909)
!1911 = !DILocation(line: 0, scope: !631, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 480, column: 30, scope: !1881)
!1913 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1912)
!1914 = !DILocation(line: 0, scope: !912, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 480, column: 50, scope: !1881)
!1916 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1915)
!1917 = !DILocation(line: 0, scope: !631, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 480, column: 64, scope: !1881)
!1919 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1918)
!1920 = !DILocation(line: 0, scope: !640, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 478, column: 5, scope: !1881)
!1922 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !1921)
!1923 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !1921)
!1924 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !1921)
!1925 = !DILocation(line: 0, scope: !654, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !1921)
!1927 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !1926)
!1928 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !1926)
!1929 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !1926)
!1930 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !1926)
!1931 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1921)
!1932 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1921)
!1933 = !DILocation(line: 481, column: 24, scope: !1881)
!1934 = !DILocation(line: 0, scope: !1796, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 482, column: 12, scope: !1881)
!1936 = !DILocation(line: 448, column: 5, scope: !1809, inlinedAt: !1935)
!1937 = !DILocation(line: 448, column: 5, scope: !1810, inlinedAt: !1935)
!1938 = !DILocation(line: 448, column: 5, scope: !1813, inlinedAt: !1935)
!1939 = !DILocation(line: 449, column: 73, scope: !1796, inlinedAt: !1935)
!1940 = !DILocation(line: 449, column: 30, scope: !1796, inlinedAt: !1935)
!1941 = !DILocation(line: 450, column: 10, scope: !1796, inlinedAt: !1935)
!1942 = !DILocation(line: 450, column: 21, scope: !1796, inlinedAt: !1935)
!1943 = !DILocation(line: 451, column: 10, scope: !1796, inlinedAt: !1935)
!1944 = !DILocation(line: 451, column: 18, scope: !1796, inlinedAt: !1935)
!1945 = !DILocation(line: 452, column: 10, scope: !1796, inlinedAt: !1935)
!1946 = !DILocation(line: 452, column: 14, scope: !1796, inlinedAt: !1935)
!1947 = !DILocation(line: 453, column: 10, scope: !1796, inlinedAt: !1935)
!1948 = !DILocation(line: 453, column: 19, scope: !1796, inlinedAt: !1935)
!1949 = !DILocation(line: 455, column: 39, scope: !1825, inlinedAt: !1935)
!1950 = !DILocation(line: 459, column: 34, scope: !1827, inlinedAt: !1935)
!1951 = !DILocation(line: 459, column: 47, scope: !1827, inlinedAt: !1935)
!1952 = !DILocation(line: 459, column: 27, scope: !1827, inlinedAt: !1935)
!1953 = !DILocation(line: 460, column: 5, scope: !1827, inlinedAt: !1935)
!1954 = !DILocation(line: 482, column: 5, scope: !1881)
!1955 = distinct !DISubprogram(name: "halide_hexagon_dma_unprepare", scope: !6, file: !6, line: 485, type: !162, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1956)
!1956 = !{!1957, !1958}
!1957 = !DILocalVariable(name: "user_context", arg: 1, scope: !1955, file: !6, line: 485, type: !13)
!1958 = !DILocalVariable(name: "buf", arg: 2, scope: !1955, file: !6, line: 485, type: !40)
!1959 = !DILocation(line: 0, scope: !1955)
!1960 = !DILocation(line: 0, scope: !614, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 486, column: 5, scope: !1955)
!1962 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !1961)
!1963 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !1961)
!1964 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !1961)
!1965 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !1961)
!1966 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !1961)
!1967 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !1961)
!1968 = !DILocation(line: 0, scope: !628, inlinedAt: !1961)
!1969 = !DILocation(line: 0, scope: !631, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 487, column: 9, scope: !1955)
!1971 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1970)
!1972 = !DILocation(line: 0, scope: !912, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 487, column: 68, scope: !1955)
!1974 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !1973)
!1975 = !DILocation(line: 0, scope: !631, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 488, column: 9, scope: !1955)
!1977 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1976)
!1978 = !DILocation(line: 0, scope: !922, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 488, column: 22, scope: !1955)
!1980 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !1979)
!1981 = !DILocation(line: 0, scope: !631, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 488, column: 30, scope: !1955)
!1983 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !1982)
!1984 = !DILocation(line: 0, scope: !640, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 486, column: 5, scope: !1955)
!1986 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !1985)
!1987 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !1985)
!1988 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !1985)
!1989 = !DILocation(line: 0, scope: !654, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !1985)
!1991 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !1990)
!1992 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !1990)
!1993 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !1990)
!1994 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !1990)
!1995 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !1985)
!1996 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !1985)
!1997 = !DILocation(line: 490, column: 5, scope: !1955)
!1998 = distinct !DISubprogram(name: "halide_hexagon_dma_buffer_copy", scope: !6, file: !6, line: 493, type: !175, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1999)
!1999 = !{!2000, !2001, !2002, !2003, !2004, !2007, !2008, !2009}
!2000 = !DILocalVariable(name: "user_context", arg: 1, scope: !1998, file: !6, line: 493, type: !13)
!2001 = !DILocalVariable(name: "src", arg: 2, scope: !1998, file: !6, line: 493, type: !40)
!2002 = !DILocalVariable(name: "dst_device_interface", arg: 3, scope: !1998, file: !6, line: 494, type: !47)
!2003 = !DILocalVariable(name: "dst", arg: 4, scope: !1998, file: !6, line: 495, type: !40)
!2004 = !DILocalVariable(name: "err", scope: !2005, file: !6, line: 506, type: !39)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !6, line: 501, column: 65)
!2006 = distinct !DILexicalBlock(scope: !1998, file: !6, line: 500, column: 9)
!2007 = !DILocalVariable(name: "from_host", scope: !1998, file: !6, line: 515, type: !15)
!2008 = !DILocalVariable(name: "to_host", scope: !1998, file: !6, line: 516, type: !15)
!2009 = !DILocalVariable(name: "nRet", scope: !1998, file: !6, line: 528, type: !39)
!2010 = !DILocation(line: 0, scope: !1998)
!2011 = !DILocation(line: 497, column: 5, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !6, line: 497, column: 5)
!2013 = distinct !DILexicalBlock(scope: !1998, file: !6, line: 497, column: 5)
!2014 = !DILocation(line: 497, column: 5, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2012, file: !6, line: 497, column: 5)
!2016 = !DILocalVariable(name: "this", arg: 1, scope: !2017, type: !181, flags: DIFlagArtificial | DIFlagObjectPointer)
!2017 = distinct !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !41, file: !21, line: 1470, type: !135, scopeLine: 1470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !137, retainedNodes: !2018)
!2018 = !{!2016}
!2019 = !DILocation(line: 0, scope: !2017, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 500, column: 14, scope: !2006)
!2021 = !DILocalVariable(name: "this", arg: 1, scope: !2022, type: !181, flags: DIFlagArtificial | DIFlagObjectPointer)
!2022 = distinct !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !41, file: !21, line: 1454, type: !121, scopeLine: 1454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !120, retainedNodes: !2023)
!2023 = !{!2021, !2024}
!2024 = !DILocalVariable(name: "flag", arg: 2, scope: !2022, file: !21, line: 1454, type: !125)
!2025 = !DILocation(line: 0, scope: !2022, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 1471, column: 16, scope: !2017, inlinedAt: !2020)
!2027 = !DILocation(line: 1455, column: 17, scope: !2022, inlinedAt: !2026)
!2028 = !DILocation(line: 1455, column: 23, scope: !2022, inlinedAt: !2026)
!2029 = !DILocation(line: 1455, column: 31, scope: !2022, inlinedAt: !2026)
!2030 = !DILocation(line: 500, column: 29, scope: !2006)
!2031 = !DILocation(line: 501, column: 14, scope: !2006)
!2032 = !DILocation(line: 501, column: 31, scope: !2006)
!2033 = !DILocation(line: 500, column: 9, scope: !1998)
!2034 = !DILocation(line: 502, column: 9, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2005, file: !6, line: 502, column: 9)
!2036 = !DILocation(line: 502, column: 9, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !6, line: 502, column: 9)
!2038 = distinct !DILexicalBlock(scope: !2035, file: !6, line: 502, column: 9)
!2039 = !DILocation(line: 0, scope: !614, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 505, column: 9, scope: !2005)
!2041 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !2040)
!2042 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !2040)
!2043 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !2040)
!2044 = !DILocation(line: 0, scope: !631, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 505, column: 29, scope: !2005)
!2046 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2045)
!2047 = !DILocation(line: 0, scope: !640, inlinedAt: !2048)
!2048 = distinct !DILocation(line: 505, column: 9, scope: !2005)
!2049 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !2048)
!2050 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !2048)
!2051 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !2040)
!2052 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !2040)
!2053 = !DILocation(line: 0, scope: !654, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !2048)
!2055 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !2054)
!2056 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !2054)
!2057 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !2054)
!2058 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !2054)
!2059 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2048)
!2060 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2048)
!2061 = !DILocation(line: 506, column: 24, scope: !2005)
!2062 = !DILocation(line: 506, column: 42, scope: !2005)
!2063 = !DILocation(line: 506, column: 48, scope: !2005)
!2064 = !{!1217, !710, i64 40}
!2065 = !DILocation(line: 506, column: 19, scope: !2005)
!2066 = !DILocation(line: 0, scope: !2005)
!2067 = !DILocation(line: 507, column: 13, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2005, file: !6, line: 507, column: 13)
!2069 = !DILocation(line: 507, column: 13, scope: !2005)
!2070 = !DILocation(line: 1455, column: 17, scope: !2022, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 1471, column: 16, scope: !2017, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 515, column: 28, scope: !1998)
!2073 = !DILocation(line: 0, scope: !1050, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 508, column: 13, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2068, file: !6, line: 507, column: 18)
!2076 = !DILocation(line: 44, column: 27, scope: !1059, inlinedAt: !2074)
!2077 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !2074)
!2078 = !DILocation(line: 48, column: 13, scope: !1062, inlinedAt: !2074)
!2079 = !DILocation(line: 49, column: 23, scope: !1086, inlinedAt: !2074)
!2080 = !DILocation(line: 50, column: 18, scope: !1086, inlinedAt: !2074)
!2081 = !DILocation(line: 51, column: 9, scope: !1086, inlinedAt: !2074)
!2082 = !DILocation(line: 0, scope: !1064, inlinedAt: !2074)
!2083 = !DILocation(line: 0, scope: !1067, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 508, column: 33, scope: !2075)
!2085 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !2084)
!2086 = !DILocation(line: 0, scope: !1855, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 508, column: 97, scope: !2075)
!2088 = !DILocation(line: 73, column: 48, scope: !1855, inlinedAt: !2087)
!2089 = !DILocation(line: 73, column: 15, scope: !1855, inlinedAt: !2087)
!2090 = !DILocation(line: 0, scope: !1067, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 508, column: 104, scope: !2075)
!2092 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !2091)
!2093 = !DILocation(line: 0, scope: !1076, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 508, column: 13, scope: !2075)
!2095 = !DILocation(line: 167, column: 13, scope: !1083, inlinedAt: !2094)
!2096 = !DILocation(line: 168, column: 13, scope: !1081, inlinedAt: !2094)
!2097 = !DILocation(line: 169, column: 9, scope: !1081, inlinedAt: !2094)
!2098 = !DILocation(line: 0, scope: !1089, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 170, column: 13, scope: !1093, inlinedAt: !2094)
!2100 = !DILocation(line: 163, column: 81, scope: !1089, inlinedAt: !2099)
!2101 = !DILocation(line: 163, column: 87, scope: !1089, inlinedAt: !2099)
!2102 = !DILocation(line: 163, column: 77, scope: !1089, inlinedAt: !2099)
!2103 = !DILocation(line: 163, column: 15, scope: !1089, inlinedAt: !2099)
!2104 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !2094)
!2105 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !2094)
!2106 = !DILocation(line: 0, scope: !2017, inlinedAt: !2072)
!2107 = !DILocation(line: 0, scope: !2022, inlinedAt: !2071)
!2108 = !DILocation(line: 1455, column: 23, scope: !2022, inlinedAt: !2071)
!2109 = !DILocation(line: 1455, column: 31, scope: !2022, inlinedAt: !2071)
!2110 = !DILocation(line: 515, column: 43, scope: !1998)
!2111 = !DILocation(line: 515, column: 51, scope: !1998)
!2112 = !DILocation(line: 515, column: 56, scope: !1998)
!2113 = !DILocation(line: 518, column: 5, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !6, line: 518, column: 5)
!2115 = distinct !DILexicalBlock(scope: !1998, file: !6, line: 518, column: 5)
!2116 = !DILocation(line: 518, column: 5, scope: !2115)
!2117 = !DILocation(line: 518, column: 5, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2114, file: !6, line: 518, column: 5)
!2119 = !DILocation(line: 519, column: 5, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !6, line: 519, column: 5)
!2121 = distinct !DILexicalBlock(scope: !1998, file: !6, line: 519, column: 5)
!2122 = !DILocation(line: 519, column: 5, scope: !2121)
!2123 = !DILocation(line: 519, column: 5, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2120, file: !6, line: 519, column: 5)
!2125 = !DILocation(line: 521, column: 5, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !6, line: 521, column: 5)
!2127 = distinct !DILexicalBlock(scope: !1998, file: !6, line: 521, column: 5)
!2128 = !DILocation(line: 521, column: 5, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2126, file: !6, line: 521, column: 5)
!2130 = !DILocation(line: 0, scope: !614, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 523, column: 5, scope: !1998)
!2132 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !2131)
!2133 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !2131)
!2134 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !2131)
!2135 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !2131)
!2136 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !2131)
!2137 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !2131)
!2138 = !DILocation(line: 0, scope: !628, inlinedAt: !2131)
!2139 = !DILocation(line: 0, scope: !631, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 524, column: 9, scope: !1998)
!2141 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2140)
!2142 = !DILocation(line: 0, scope: !912, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 524, column: 70, scope: !1998)
!2144 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !2143)
!2145 = !DILocation(line: 0, scope: !631, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 525, column: 9, scope: !1998)
!2147 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2146)
!2148 = !DILocation(line: 525, column: 25, scope: !1998)
!2149 = !DILocation(line: 0, scope: !912, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 525, column: 22, scope: !1998)
!2151 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !2150)
!2152 = !DILocation(line: 0, scope: !631, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 525, column: 29, scope: !1998)
!2154 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2153)
!2155 = !DILocation(line: 525, column: 45, scope: !1998)
!2156 = !DILocation(line: 0, scope: !912, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 525, column: 42, scope: !1998)
!2158 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !2157)
!2159 = !DILocation(line: 0, scope: !631, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 525, column: 49, scope: !1998)
!2161 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2160)
!2162 = !DILocation(line: 0, scope: !631, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 526, column: 9, scope: !1998)
!2164 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2163)
!2165 = !DILocalVariable(name: "this", arg: 1, scope: !2166, type: !618, flags: DIFlagArtificial | DIFlagObjectPointer)
!2166 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !339, file: !337, line: 72, type: !366, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !365, retainedNodes: !2167)
!2167 = !{!2165, !2168}
!2168 = !DILocalVariable(name: "arg", arg: 2, scope: !2166, file: !337, line: 72, type: !95)
!2169 = !DILocation(line: 0, scope: !2166, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 526, column: 27, scope: !1998)
!2171 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !2170)
!2172 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !2170)
!2173 = !DILocation(line: 0, scope: !631, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 526, column: 38, scope: !1998)
!2175 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2174)
!2176 = !DILocation(line: 0, scope: !2166, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 526, column: 57, scope: !1998)
!2178 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !2177)
!2179 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !2177)
!2180 = !DILocation(line: 0, scope: !631, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 526, column: 70, scope: !1998)
!2182 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2181)
!2183 = !DILocation(line: 0, scope: !640, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 523, column: 5, scope: !1998)
!2185 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !2184)
!2186 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !2184)
!2187 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !2184)
!2188 = !DILocation(line: 0, scope: !654, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !2184)
!2190 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !2189)
!2191 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !2189)
!2192 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !2189)
!2193 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !2189)
!2194 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2184)
!2195 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2184)
!2196 = !DILocation(line: 529, column: 9, scope: !1998)
!2197 = !DILocation(line: 530, column: 16, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !6, line: 529, column: 64)
!2199 = distinct !DILexicalBlock(scope: !1998, file: !6, line: 529, column: 9)
!2200 = !DILocation(line: 531, column: 5, scope: !2198)
!2201 = !DILocation(line: 532, column: 16, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2199, file: !6, line: 531, column: 12)
!2203 = !DILocation(line: 536, column: 1, scope: !1998)
!2204 = distinct !DISubprogram(name: "halide_hexagon_dma_wrapper", linkageName: "_ZN12_GLOBAL__N_126halide_hexagon_dma_wrapperEPvP15halide_buffer_tS2_", scope: !1622, file: !6, line: 202, type: !2205, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!39, !13, !40, !40}
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2244}
!2208 = !DILocalVariable(name: "user_context", arg: 1, scope: !2204, file: !6, line: 202, type: !13)
!2209 = !DILocalVariable(name: "src", arg: 2, scope: !2204, file: !6, line: 202, type: !40)
!2210 = !DILocalVariable(name: "dst", arg: 3, scope: !2204, file: !6, line: 203, type: !40)
!2211 = !DILocalVariable(name: "dev", scope: !2204, file: !6, line: 205, type: !488)
!2212 = !DILocalVariable(name: "stWalkSize", scope: !2204, file: !6, line: 243, type: !2213)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_StDmaWrapper_RoiAlignInfo", file: !281, line: 109, baseType: !2214)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stDmaWrapper_RoiAlignInfo", file: !281, line: 104, size: 32, flags: DIFlagTypePassByValue, elements: !2215, identifier: "_ZTS25stDmaWrapper_RoiAlignInfo")
!2215 = !{!2216, !2217}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "u16W", scope: !2214, file: !281, line: 106, baseType: !506, size: 16)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "u16H", scope: !2214, file: !281, line: 108, baseType: !506, size: 16, offset: 16)
!2218 = !DILocalVariable(name: "nRet", scope: !2204, file: !6, line: 246, type: !39)
!2219 = !DILocalVariable(name: "roi_stride", scope: !2204, file: !6, line: 248, type: !39)
!2220 = !DILocalVariable(name: "roi_width", scope: !2204, file: !6, line: 249, type: !39)
!2221 = !DILocalVariable(name: "roi_height", scope: !2204, file: !6, line: 250, type: !39)
!2222 = !DILocalVariable(name: "desc_addr", scope: !2204, file: !6, line: 264, type: !13)
!2223 = !DILocalVariable(name: "buf_size", scope: !2204, file: !6, line: 270, type: !39)
!2224 = !DILocalVariable(name: "stDmaTransferParm", scope: !2204, file: !6, line: 273, type: !2225)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_StDmaWrapper_DmaTransferSetup", file: !281, line: 145, baseType: !2226)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stDmaWrapper_DmaTransferSetup", file: !281, line: 114, size: 320, flags: DIFlagTypePassByValue, elements: !2227, identifier: "_ZTS29stDmaWrapper_DmaTransferSetup")
!2227 = !{!2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "u16FrameW", scope: !2226, file: !281, line: 116, baseType: !506, size: 16)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "u16FrameH", scope: !2226, file: !281, line: 118, baseType: !506, size: 16, offset: 16)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "u16FrameStride", scope: !2226, file: !281, line: 120, baseType: !506, size: 16, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "u16RoiX", scope: !2226, file: !281, line: 122, baseType: !506, size: 16, offset: 48)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "u16RoiY", scope: !2226, file: !281, line: 124, baseType: !506, size: 16, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "u16RoiW", scope: !2226, file: !281, line: 126, baseType: !506, size: 16, offset: 80)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "u16RoiH", scope: !2226, file: !281, line: 128, baseType: !506, size: 16, offset: 96)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "u16RoiStride", scope: !2226, file: !281, line: 130, baseType: !506, size: 16, offset: 112)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "pDescBuf", scope: !2226, file: !281, line: 132, baseType: !13, size: 32, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "pTcmDataBuf", scope: !2226, file: !281, line: 134, baseType: !13, size: 32, offset: 160)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pFrameBuf", scope: !2226, file: !281, line: 136, baseType: !13, size: 32, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "bIsFmtUbwc", scope: !2226, file: !281, line: 138, baseType: !506, size: 16, offset: 224)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "bUse16BitPaddingInL2", scope: !2226, file: !281, line: 140, baseType: !506, size: 16, offset: 240)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "eFmt", scope: !2226, file: !281, line: 142, baseType: !503, size: 32, align: 32, offset: 256)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "eTransferType", scope: !2226, file: !281, line: 144, baseType: !2243, size: 32, align: 32, offset: 288)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_eDmaWrapper_TransationType", file: !281, line: 71, baseType: !328)
!2244 = !DILocalVariable(name: "dma_engine", scope: !2204, file: !6, line: 322, type: !13)
!2245 = !DILocation(line: 0, scope: !2204)
!2246 = !DILocation(line: 206, column: 37, scope: !2204)
!2247 = !DILocation(line: 206, column: 11, scope: !2204)
!2248 = !DILocation(line: 0, scope: !614, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 208, column: 5, scope: !2204)
!2250 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !2249)
!2251 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !2249)
!2252 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !2249)
!2253 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !2249)
!2254 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !2249)
!2255 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !2249)
!2256 = !DILocation(line: 0, scope: !628, inlinedAt: !2249)
!2257 = !DILocation(line: 0, scope: !631, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 209, column: 9, scope: !2204)
!2259 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2258)
!2260 = !DILocation(line: 209, column: 51, scope: !2204)
!2261 = !DILocation(line: 0, scope: !912, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 209, column: 43, scope: !2204)
!2263 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !2262)
!2264 = !DILocation(line: 0, scope: !631, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 210, column: 9, scope: !2204)
!2266 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2265)
!2267 = !DILocation(line: 210, column: 42, scope: !2204)
!2268 = !DILocation(line: 0, scope: !2166, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 210, column: 34, scope: !2204)
!2270 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !2269)
!2271 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !2269)
!2272 = !DILocation(line: 0, scope: !631, inlinedAt: !2273)
!2273 = distinct !DILocation(line: 210, column: 53, scope: !2204)
!2274 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2273)
!2275 = !DILocation(line: 210, column: 73, scope: !2204)
!2276 = !DILocation(line: 0, scope: !2166, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 210, column: 65, scope: !2204)
!2278 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !2277)
!2279 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !2277)
!2280 = !DILocation(line: 0, scope: !631, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 210, column: 84, scope: !2204)
!2282 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2281)
!2283 = !DILocation(line: 0, scope: !631, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 211, column: 9, scope: !2204)
!2285 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2284)
!2286 = !DILocation(line: 211, column: 42, scope: !2204)
!2287 = !DILocation(line: 0, scope: !2166, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 211, column: 34, scope: !2204)
!2289 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !2288)
!2290 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !2288)
!2291 = !DILocation(line: 0, scope: !631, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 211, column: 53, scope: !2204)
!2293 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2292)
!2294 = !DILocation(line: 211, column: 73, scope: !2204)
!2295 = !DILocation(line: 0, scope: !2166, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 211, column: 65, scope: !2204)
!2297 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !2296)
!2298 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !2296)
!2299 = !DILocation(line: 0, scope: !631, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 211, column: 84, scope: !2204)
!2301 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2300)
!2302 = !DILocation(line: 0, scope: !631, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 212, column: 9, scope: !2204)
!2304 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2303)
!2305 = !DILocation(line: 212, column: 33, scope: !2204)
!2306 = !DILocation(line: 0, scope: !2166, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 212, column: 25, scope: !2204)
!2308 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !2307)
!2309 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !2307)
!2310 = !DILocation(line: 0, scope: !631, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 212, column: 45, scope: !2204)
!2312 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2311)
!2313 = !DILocation(line: 212, column: 63, scope: !2204)
!2314 = !DILocation(line: 0, scope: !2166, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 212, column: 55, scope: !2204)
!2316 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !2315)
!2317 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !2315)
!2318 = !DILocation(line: 0, scope: !631, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 212, column: 76, scope: !2204)
!2320 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2319)
!2321 = !DILocation(line: 212, column: 94, scope: !2204)
!2322 = !DILocation(line: 0, scope: !2166, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 212, column: 86, scope: !2204)
!2324 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !2323)
!2325 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !2323)
!2326 = !DILocation(line: 0, scope: !631, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 212, column: 107, scope: !2204)
!2328 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2327)
!2329 = !DILocation(line: 0, scope: !631, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 213, column: 9, scope: !2204)
!2331 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2330)
!2332 = !DILocation(line: 0, scope: !640, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 208, column: 5, scope: !2204)
!2334 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !2333)
!2335 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !2333)
!2336 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !2333)
!2337 = !DILocation(line: 0, scope: !654, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !2333)
!2339 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !2338)
!2340 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !2338)
!2341 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !2338)
!2342 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !2338)
!2343 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2333)
!2344 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2333)
!2345 = !DILocation(line: 215, column: 5, scope: !2204)
!2346 = !DILocation(line: 0, scope: !614, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 215, column: 5, scope: !2204)
!2348 = !DILocation(line: 38, column: 11, scope: !614, inlinedAt: !2347)
!2349 = !{!2350, !710, i64 12}
!2350 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEE", !710, i64 0, !710, i64 4, !710, i64 8, !710, i64 12, !1232, i64 16, !551, i64 17}
!2351 = !DILocation(line: 38, column: 30, scope: !614, inlinedAt: !2347)
!2352 = !{!2350, !1232, i64 16}
!2353 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !2347)
!2354 = !DILocation(line: 44, column: 13, scope: !623, inlinedAt: !2347)
!2355 = !DILocation(line: 44, column: 17, scope: !623, inlinedAt: !2347)
!2356 = !{!2350, !710, i64 0}
!2357 = !DILocation(line: 47, column: 9, scope: !626, inlinedAt: !2347)
!2358 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !2347)
!2359 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !2347)
!2360 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !2347)
!2361 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !2347)
!2362 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !2347)
!2363 = !DILocation(line: 0, scope: !628, inlinedAt: !2347)
!2364 = !DILocation(line: 53, column: 13, scope: !2365, inlinedAt: !2347)
!2365 = distinct !DILexicalBlock(scope: !628, file: !337, line: 51, column: 16)
!2366 = !DILocation(line: 53, column: 17, scope: !2365, inlinedAt: !2347)
!2367 = !DILocation(line: 0, scope: !631, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 216, column: 9, scope: !2204)
!2369 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2368)
!2370 = !DILocation(line: 62, column: 17, scope: !637, inlinedAt: !2368)
!2371 = !{!2350, !710, i64 4}
!2372 = !DILocation(line: 0, scope: !973, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 216, column: 64, scope: !2204)
!2374 = !DILocation(line: 0, scope: !978, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 1519, column: 25, scope: !973, inlinedAt: !2373)
!2376 = !DILocation(line: 0, scope: !982, inlinedAt: !2375)
!2377 = !DILocation(line: 1508, column: 29, scope: !987, inlinedAt: !2375)
!2378 = !DILocation(line: 1508, column: 27, scope: !987, inlinedAt: !2375)
!2379 = !DILocation(line: 1508, column: 9, scope: !982, inlinedAt: !2375)
!2380 = !DILocation(line: 0, scope: !727, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 1514, column: 36, scope: !978, inlinedAt: !2375)
!2382 = !DILocation(line: 482, column: 17, scope: !727, inlinedAt: !2381)
!2383 = !DILocation(line: 0, scope: !994, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 1519, column: 33, scope: !973, inlinedAt: !2373)
!2385 = !DILocation(line: 0, scope: !998, inlinedAt: !2384)
!2386 = !DILocation(line: 1497, column: 9, scope: !998, inlinedAt: !2384)
!2387 = !DILocation(line: 1509, column: 24, scope: !1004, inlinedAt: !2375)
!2388 = !DILocation(line: 1509, column: 31, scope: !1004, inlinedAt: !2375)
!2389 = !DILocation(line: 1509, column: 17, scope: !1005, inlinedAt: !2375)
!2390 = !DILocation(line: 1510, column: 61, scope: !1009, inlinedAt: !2375)
!2391 = !DILocation(line: 1510, column: 68, scope: !1009, inlinedAt: !2375)
!2392 = !DILocation(line: 1510, column: 51, scope: !1009, inlinedAt: !2375)
!2393 = !DILocation(line: 1510, column: 23, scope: !1009, inlinedAt: !2375)
!2394 = !DILocation(line: 1511, column: 13, scope: !1009, inlinedAt: !2375)
!2395 = !DILocation(line: 1508, column: 42, scope: !987, inlinedAt: !2375)
!2396 = distinct !{!2396, !2379, !2397, !559}
!2397 = !DILocation(line: 1512, column: 9, scope: !982, inlinedAt: !2375)
!2398 = !DILocation(line: 1498, column: 24, scope: !1018, inlinedAt: !2384)
!2399 = !DILocation(line: 1498, column: 31, scope: !1018, inlinedAt: !2384)
!2400 = !DILocation(line: 1498, column: 17, scope: !1019, inlinedAt: !2384)
!2401 = !DILocation(line: 1499, column: 61, scope: !1024, inlinedAt: !2384)
!2402 = !DILocation(line: 1499, column: 68, scope: !1024, inlinedAt: !2384)
!2403 = !DILocation(line: 1499, column: 51, scope: !1024, inlinedAt: !2384)
!2404 = !DILocation(line: 1499, column: 23, scope: !1024, inlinedAt: !2384)
!2405 = !DILocation(line: 1500, column: 13, scope: !1024, inlinedAt: !2384)
!2406 = !DILocation(line: 1497, column: 42, scope: !1020, inlinedAt: !2384)
!2407 = !DILocation(line: 1497, column: 27, scope: !1020, inlinedAt: !2384)
!2408 = distinct !{!2408, !2386, !2409, !559}
!2409 = !DILocation(line: 1501, column: 9, scope: !998, inlinedAt: !2384)
!2410 = !DILocation(line: 482, column: 22, scope: !727, inlinedAt: !2381)
!2411 = !DILocation(line: 482, column: 27, scope: !727, inlinedAt: !2381)
!2412 = !DILocation(line: 1513, column: 15, scope: !978, inlinedAt: !2375)
!2413 = !DILocation(line: 0, scope: !727, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 1502, column: 36, scope: !994, inlinedAt: !2384)
!2415 = !DILocation(line: 1519, column: 31, scope: !973, inlinedAt: !2373)
!2416 = !DILocalVariable(name: "this", arg: 1, scope: !2417, type: !618, flags: DIFlagArtificial | DIFlagObjectPointer)
!2417 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !339, file: !337, line: 82, type: !372, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !371, retainedNodes: !2418)
!2418 = !{!2416, !2419}
!2419 = !DILocalVariable(name: "arg", arg: 2, scope: !2417, file: !337, line: 82, type: !27)
!2420 = !DILocation(line: 0, scope: !2417, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 216, column: 36, scope: !2204)
!2422 = !DILocation(line: 83, column: 44, scope: !2417, inlinedAt: !2421)
!2423 = !{!2350, !710, i64 8}
!2424 = !DILocation(line: 83, column: 49, scope: !2417, inlinedAt: !2421)
!2425 = !DILocation(line: 83, column: 15, scope: !2417, inlinedAt: !2421)
!2426 = !DILocation(line: 0, scope: !631, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 217, column: 9, scope: !2204)
!2428 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2427)
!2429 = !DILocation(line: 0, scope: !973, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 217, column: 49, scope: !2204)
!2431 = !DILocation(line: 0, scope: !978, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 1519, column: 25, scope: !973, inlinedAt: !2430)
!2433 = !DILocation(line: 0, scope: !982, inlinedAt: !2432)
!2434 = !DILocation(line: 1508, column: 29, scope: !987, inlinedAt: !2432)
!2435 = !DILocation(line: 1508, column: 27, scope: !987, inlinedAt: !2432)
!2436 = !DILocation(line: 1508, column: 9, scope: !982, inlinedAt: !2432)
!2437 = !DILocation(line: 0, scope: !727, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 1514, column: 36, scope: !978, inlinedAt: !2432)
!2439 = !DILocation(line: 482, column: 17, scope: !727, inlinedAt: !2438)
!2440 = !DILocation(line: 0, scope: !994, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 1519, column: 33, scope: !973, inlinedAt: !2430)
!2442 = !DILocation(line: 0, scope: !998, inlinedAt: !2441)
!2443 = !DILocation(line: 1497, column: 9, scope: !998, inlinedAt: !2441)
!2444 = !DILocation(line: 1509, column: 24, scope: !1004, inlinedAt: !2432)
!2445 = !DILocation(line: 1509, column: 31, scope: !1004, inlinedAt: !2432)
!2446 = !DILocation(line: 1509, column: 17, scope: !1005, inlinedAt: !2432)
!2447 = !DILocation(line: 1510, column: 61, scope: !1009, inlinedAt: !2432)
!2448 = !DILocation(line: 1510, column: 68, scope: !1009, inlinedAt: !2432)
!2449 = !DILocation(line: 1510, column: 51, scope: !1009, inlinedAt: !2432)
!2450 = !DILocation(line: 1510, column: 23, scope: !1009, inlinedAt: !2432)
!2451 = !DILocation(line: 1511, column: 13, scope: !1009, inlinedAt: !2432)
!2452 = !DILocation(line: 1508, column: 42, scope: !987, inlinedAt: !2432)
!2453 = distinct !{!2453, !2436, !2454, !559}
!2454 = !DILocation(line: 1512, column: 9, scope: !982, inlinedAt: !2432)
!2455 = !DILocation(line: 1498, column: 24, scope: !1018, inlinedAt: !2441)
!2456 = !DILocation(line: 1498, column: 31, scope: !1018, inlinedAt: !2441)
!2457 = !DILocation(line: 1498, column: 17, scope: !1019, inlinedAt: !2441)
!2458 = !DILocation(line: 1499, column: 61, scope: !1024, inlinedAt: !2441)
!2459 = !DILocation(line: 1499, column: 68, scope: !1024, inlinedAt: !2441)
!2460 = !DILocation(line: 1499, column: 51, scope: !1024, inlinedAt: !2441)
!2461 = !DILocation(line: 1499, column: 23, scope: !1024, inlinedAt: !2441)
!2462 = !DILocation(line: 1500, column: 13, scope: !1024, inlinedAt: !2441)
!2463 = !DILocation(line: 1497, column: 42, scope: !1020, inlinedAt: !2441)
!2464 = !DILocation(line: 1497, column: 27, scope: !1020, inlinedAt: !2441)
!2465 = distinct !{!2465, !2443, !2466, !559}
!2466 = !DILocation(line: 1501, column: 9, scope: !998, inlinedAt: !2441)
!2467 = !DILocation(line: 482, column: 22, scope: !727, inlinedAt: !2438)
!2468 = !DILocation(line: 482, column: 27, scope: !727, inlinedAt: !2438)
!2469 = !DILocation(line: 1513, column: 15, scope: !978, inlinedAt: !2432)
!2470 = !DILocation(line: 0, scope: !727, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 1502, column: 36, scope: !994, inlinedAt: !2441)
!2472 = !DILocation(line: 1519, column: 31, scope: !973, inlinedAt: !2430)
!2473 = !DILocation(line: 0, scope: !2417, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 217, column: 21, scope: !2204)
!2475 = !DILocation(line: 83, column: 44, scope: !2417, inlinedAt: !2474)
!2476 = !DILocation(line: 83, column: 49, scope: !2417, inlinedAt: !2474)
!2477 = !DILocation(line: 83, column: 15, scope: !2417, inlinedAt: !2474)
!2478 = !DILocation(line: 0, scope: !631, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 218, column: 9, scope: !2204)
!2480 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2479)
!2481 = !DILocation(line: 0, scope: !640, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 215, column: 5, scope: !2204)
!2483 = !DILocation(line: 167, column: 14, scope: !646, inlinedAt: !2482)
!2484 = !DILocation(line: 0, scope: !646, inlinedAt: !2482)
!2485 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !2482)
!2486 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !2482)
!2487 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !2482)
!2488 = !DILocation(line: 0, scope: !654, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !2482)
!2490 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !2489)
!2491 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !2489)
!2492 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !2489)
!2493 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !2489)
!2494 = !DILocation(line: 174, column: 30, scope: !664, inlinedAt: !2482)
!2495 = !DILocation(line: 174, column: 44, scope: !664, inlinedAt: !2482)
!2496 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2482)
!2497 = !DILocation(line: 180, column: 13, scope: !669, inlinedAt: !2482)
!2498 = !{i8 0, i8 2}
!2499 = !DILocation(line: 180, column: 21, scope: !669, inlinedAt: !2482)
!2500 = !DILocation(line: 180, column: 24, scope: !669, inlinedAt: !2482)
!2501 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2482)
!2502 = !DILocation(line: 182, column: 9, scope: !668, inlinedAt: !2482)
!2503 = !DILocation(line: 221, column: 14, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2204, file: !6, line: 221, column: 9)
!2505 = !DILocation(line: 221, column: 18, scope: !2504)
!2506 = !DILocation(line: 221, column: 9, scope: !2204)
!2507 = !DILocation(line: 222, column: 9, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !6, line: 222, column: 9)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !6, line: 222, column: 9)
!2510 = distinct !DILexicalBlock(scope: !2504, file: !6, line: 221, column: 38)
!2511 = !DILocation(line: 222, column: 9, scope: !2509)
!2512 = !DILocation(line: 222, column: 9, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2508, file: !6, line: 222, column: 9)
!2514 = !DILocation(line: 225, column: 15, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2204, file: !6, line: 225, column: 9)
!2516 = !DILocation(line: 225, column: 38, scope: !2515)
!2517 = !DILocation(line: 229, column: 9, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !6, line: 229, column: 9)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !6, line: 229, column: 9)
!2520 = distinct !DILexicalBlock(scope: !2515, file: !6, line: 228, column: 41)
!2521 = !DILocation(line: 229, column: 9, scope: !2519)
!2522 = !DILocation(line: 229, column: 9, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2518, file: !6, line: 229, column: 9)
!2524 = !DILocation(line: 232, column: 15, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2204, file: !6, line: 232, column: 9)
!2526 = !DILocation(line: 232, column: 39, scope: !2525)
!2527 = !DILocation(line: 236, column: 9, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !6, line: 236, column: 9)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !6, line: 236, column: 9)
!2530 = distinct !DILexicalBlock(scope: !2525, file: !6, line: 235, column: 42)
!2531 = !DILocation(line: 236, column: 9, scope: !2529)
!2532 = !DILocation(line: 236, column: 9, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2528, file: !6, line: 236, column: 9)
!2534 = !DILocation(line: 237, column: 9, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !6, line: 237, column: 9)
!2536 = distinct !DILexicalBlock(scope: !2530, file: !6, line: 237, column: 9)
!2537 = !DILocation(line: 237, column: 9, scope: !2536)
!2538 = !DILocation(line: 237, column: 9, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2535, file: !6, line: 237, column: 9)
!2540 = !DILocation(line: 238, column: 9, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !6, line: 238, column: 9)
!2542 = distinct !DILexicalBlock(scope: !2530, file: !6, line: 238, column: 9)
!2543 = !DILocation(line: 238, column: 9, scope: !2542)
!2544 = !DILocation(line: 238, column: 9, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2541, file: !6, line: 238, column: 9)
!2546 = !DILocation(line: 239, column: 9, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !6, line: 239, column: 9)
!2548 = distinct !DILexicalBlock(scope: !2530, file: !6, line: 239, column: 9)
!2549 = !DILocation(line: 239, column: 9, scope: !2548)
!2550 = !DILocation(line: 239, column: 9, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2547, file: !6, line: 239, column: 9)
!2552 = !DILocation(line: 240, column: 9, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !6, line: 240, column: 9)
!2554 = distinct !DILexicalBlock(scope: !2530, file: !6, line: 240, column: 9)
!2555 = !DILocation(line: 240, column: 9, scope: !2554)
!2556 = !DILocation(line: 240, column: 9, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !6, line: 240, column: 9)
!2558 = !DILocation(line: 243, column: 5, scope: !2204)
!2559 = !DILocation(line: 243, column: 33, scope: !2204)
!2560 = !DILocation(line: 243, column: 46, scope: !2204)
!2561 = !DILocation(line: 244, column: 34, scope: !2204)
!2562 = !DILocation(line: 244, column: 41, scope: !2204)
!2563 = !DILocation(line: 244, column: 62, scope: !2204)
!2564 = !DILocation(line: 244, column: 48, scope: !2204)
!2565 = !DILocation(line: 244, column: 29, scope: !2204)
!2566 = !{!2567, !713, i64 0}
!2567 = !{!"_ZTS25stDmaWrapper_RoiAlignInfo", !713, i64 0, !713, i64 2}
!2568 = !DILocation(line: 245, column: 41, scope: !2204)
!2569 = !DILocation(line: 245, column: 29, scope: !2204)
!2570 = !{!2567, !713, i64 2}
!2571 = !DILocation(line: 246, column: 56, scope: !2204)
!2572 = !DILocation(line: 246, column: 66, scope: !2204)
!2573 = !DILocation(line: 246, column: 16, scope: !2204)
!2574 = !DILocation(line: 248, column: 69, scope: !2204)
!2575 = !DILocation(line: 248, column: 92, scope: !2204)
!2576 = !DILocation(line: 248, column: 22, scope: !2204)
!2577 = !DILocation(line: 249, column: 32, scope: !2204)
!2578 = !DILocation(line: 250, column: 33, scope: !2204)
!2579 = !DILocation(line: 250, column: 22, scope: !2204)
!2580 = !DILocation(line: 252, column: 5, scope: !2204)
!2581 = !DILocation(line: 0, scope: !614, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 252, column: 5, scope: !2204)
!2583 = !DILocation(line: 38, column: 11, scope: !614, inlinedAt: !2582)
!2584 = !DILocation(line: 38, column: 30, scope: !614, inlinedAt: !2582)
!2585 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !2582)
!2586 = !DILocation(line: 44, column: 13, scope: !623, inlinedAt: !2582)
!2587 = !DILocation(line: 44, column: 17, scope: !623, inlinedAt: !2582)
!2588 = !DILocation(line: 47, column: 9, scope: !626, inlinedAt: !2582)
!2589 = !DILocation(line: 47, column: 13, scope: !626, inlinedAt: !2582)
!2590 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !2582)
!2591 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !2582)
!2592 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !2582)
!2593 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !2582)
!2594 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !2582)
!2595 = !DILocation(line: 0, scope: !628, inlinedAt: !2582)
!2596 = !DILocation(line: 53, column: 13, scope: !2365, inlinedAt: !2582)
!2597 = !DILocation(line: 53, column: 17, scope: !2365, inlinedAt: !2582)
!2598 = !DILocation(line: 0, scope: !631, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 253, column: 9, scope: !2204)
!2600 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2599)
!2601 = !DILocation(line: 62, column: 17, scope: !637, inlinedAt: !2599)
!2602 = !DILocation(line: 0, scope: !2166, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 253, column: 43, scope: !2204)
!2604 = !DILocation(line: 73, column: 43, scope: !2166, inlinedAt: !2603)
!2605 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !2603)
!2606 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !2603)
!2607 = !DILocation(line: 73, column: 13, scope: !2166, inlinedAt: !2603)
!2608 = !DILocation(line: 0, scope: !631, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 253, column: 56, scope: !2204)
!2610 = !DILocation(line: 62, column: 48, scope: !637, inlinedAt: !2609)
!2611 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2609)
!2612 = !DILocation(line: 62, column: 17, scope: !637, inlinedAt: !2609)
!2613 = !DILocation(line: 0, scope: !2166, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 253, column: 66, scope: !2204)
!2615 = !DILocation(line: 73, column: 43, scope: !2166, inlinedAt: !2614)
!2616 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !2614)
!2617 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !2614)
!2618 = !DILocation(line: 73, column: 13, scope: !2166, inlinedAt: !2614)
!2619 = !DILocation(line: 0, scope: !631, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 253, column: 80, scope: !2204)
!2621 = !DILocation(line: 62, column: 48, scope: !637, inlinedAt: !2620)
!2622 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2620)
!2623 = !DILocation(line: 62, column: 17, scope: !637, inlinedAt: !2620)
!2624 = !DILocation(line: 0, scope: !2166, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 253, column: 90, scope: !2204)
!2626 = !DILocation(line: 73, column: 43, scope: !2166, inlinedAt: !2625)
!2627 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !2625)
!2628 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !2625)
!2629 = !DILocation(line: 73, column: 13, scope: !2166, inlinedAt: !2625)
!2630 = !DILocation(line: 0, scope: !631, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 253, column: 104, scope: !2204)
!2632 = !DILocation(line: 62, column: 48, scope: !637, inlinedAt: !2631)
!2633 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2631)
!2634 = !DILocation(line: 62, column: 17, scope: !637, inlinedAt: !2631)
!2635 = !DILocation(line: 0, scope: !640, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 252, column: 5, scope: !2204)
!2637 = !DILocation(line: 167, column: 14, scope: !646, inlinedAt: !2636)
!2638 = !DILocation(line: 0, scope: !646, inlinedAt: !2636)
!2639 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !2636)
!2640 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !2636)
!2641 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !2636)
!2642 = !DILocation(line: 0, scope: !654, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !2636)
!2644 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !2643)
!2645 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !2643)
!2646 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !2643)
!2647 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !2643)
!2648 = !DILocation(line: 174, column: 30, scope: !664, inlinedAt: !2636)
!2649 = !DILocation(line: 174, column: 44, scope: !664, inlinedAt: !2636)
!2650 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2636)
!2651 = !DILocation(line: 180, column: 13, scope: !669, inlinedAt: !2636)
!2652 = !DILocation(line: 180, column: 21, scope: !669, inlinedAt: !2636)
!2653 = !DILocation(line: 180, column: 24, scope: !669, inlinedAt: !2636)
!2654 = !DILocation(line: 180, column: 31, scope: !669, inlinedAt: !2636)
!2655 = !DILocation(line: 180, column: 28, scope: !669, inlinedAt: !2636)
!2656 = !DILocation(line: 180, column: 13, scope: !647, inlinedAt: !2636)
!2657 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2636)
!2658 = !DILocation(line: 182, column: 9, scope: !668, inlinedAt: !2636)
!2659 = !DILocation(line: 256, column: 14, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2204, file: !6, line: 256, column: 9)
!2661 = !DILocation(line: 256, column: 21, scope: !2660)
!2662 = !DILocation(line: 256, column: 28, scope: !2660)
!2663 = !DILocation(line: 256, column: 9, scope: !2204)
!2664 = !DILocation(line: 261, column: 5, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !6, line: 261, column: 5)
!2666 = distinct !DILexicalBlock(scope: !2204, file: !6, line: 261, column: 5)
!2667 = !DILocation(line: 261, column: 5, scope: !2666)
!2668 = !DILocation(line: 261, column: 5, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2665, file: !6, line: 261, column: 5)
!2670 = !DILocalVariable(name: "user_context", arg: 1, scope: !2671, file: !6, line: 79, type: !13)
!2671 = distinct !DISubprogram(name: "desc_pool_get", linkageName: "_ZN12_GLOBAL__N_113desc_pool_getEPv", scope: !1622, file: !6, line: 79, type: !1567, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2672)
!2672 = !{!2670, !2673, !2674, !2675, !2676}
!2673 = !DILocalVariable(name: "lock", scope: !2671, file: !6, line: 80, type: !1627)
!2674 = !DILocalVariable(name: "temp", scope: !2671, file: !6, line: 81, type: !7)
!2675 = !DILocalVariable(name: "prev", scope: !2671, file: !6, line: 82, type: !7)
!2676 = !DILocalVariable(name: "desc", scope: !2671, file: !6, line: 99, type: !50)
!2677 = !DILocation(line: 0, scope: !2671, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 264, column: 23, scope: !2204)
!2679 = !DILocation(line: 0, scope: !1645, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 80, column: 21, scope: !2671, inlinedAt: !2678)
!2681 = !DILocation(line: 16, column: 9, scope: !1652, inlinedAt: !2680)
!2682 = !DILocation(line: 84, column: 17, scope: !2671, inlinedAt: !2678)
!2683 = !DILocation(line: 84, column: 5, scope: !2671, inlinedAt: !2678)
!2684 = !DILocation(line: 85, column: 20, scope: !2685, inlinedAt: !2678)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !6, line: 85, column: 13)
!2686 = distinct !DILexicalBlock(scope: !2671, file: !6, line: 84, column: 29)
!2687 = !{!1659, !1232, i64 4}
!2688 = !DILocation(line: 85, column: 13, scope: !2686, inlinedAt: !2678)
!2689 = !DILocation(line: 86, column: 24, scope: !2690, inlinedAt: !2678)
!2690 = distinct !DILexicalBlock(scope: !2685, file: !6, line: 85, column: 26)
!2691 = !DILocation(line: 87, column: 34, scope: !2690, inlinedAt: !2678)
!2692 = !DILocation(line: 87, column: 13, scope: !2690, inlinedAt: !2678)
!2693 = !DILocation(line: 90, column: 22, scope: !2686, inlinedAt: !2678)
!2694 = distinct !{!2694, !2683, !2695, !559}
!2695 = !DILocation(line: 91, column: 5, scope: !2671, inlinedAt: !2678)
!2696 = !DILocation(line: 94, column: 24, scope: !2671, inlinedAt: !2678)
!2697 = !DILocation(line: 95, column: 14, scope: !2698, inlinedAt: !2678)
!2698 = distinct !DILexicalBlock(scope: !2671, file: !6, line: 95, column: 9)
!2699 = !DILocation(line: 95, column: 9, scope: !2671, inlinedAt: !2678)
!2700 = !DILocation(line: 0, scope: !1050, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 96, column: 9, scope: !2702, inlinedAt: !2678)
!2702 = distinct !DILexicalBlock(scope: !2698, file: !6, line: 95, column: 26)
!2703 = !DILocation(line: 44, column: 27, scope: !1059, inlinedAt: !2701)
!2704 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !2701)
!2705 = !DILocation(line: 48, column: 13, scope: !1062, inlinedAt: !2701)
!2706 = !DILocation(line: 0, scope: !1067, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 96, column: 29, scope: !2702, inlinedAt: !2678)
!2708 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !2707)
!2709 = !DILocation(line: 0, scope: !1076, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 96, column: 9, scope: !2702, inlinedAt: !2678)
!2711 = !DILocation(line: 168, column: 13, scope: !1081, inlinedAt: !2710)
!2712 = !DILocation(line: 169, column: 9, scope: !1081, inlinedAt: !2710)
!2713 = !DILocation(line: 49, column: 23, scope: !1086, inlinedAt: !2701)
!2714 = !DILocation(line: 50, column: 18, scope: !1086, inlinedAt: !2701)
!2715 = !DILocation(line: 0, scope: !1089, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 170, column: 13, scope: !1093, inlinedAt: !2710)
!2717 = !DILocation(line: 163, column: 81, scope: !1089, inlinedAt: !2716)
!2718 = !DILocation(line: 163, column: 87, scope: !1089, inlinedAt: !2716)
!2719 = !DILocation(line: 163, column: 77, scope: !1089, inlinedAt: !2716)
!2720 = !DILocation(line: 163, column: 15, scope: !1089, inlinedAt: !2716)
!2721 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !2710)
!2722 = !DILocation(line: 99, column: 32, scope: !2671, inlinedAt: !2678)
!2723 = !DILocation(line: 100, column: 14, scope: !2724, inlinedAt: !2678)
!2724 = distinct !DILexicalBlock(scope: !2671, file: !6, line: 100, column: 9)
!2725 = !DILocation(line: 100, column: 9, scope: !2671, inlinedAt: !2678)
!2726 = !DILocation(line: 101, column: 9, scope: !2727, inlinedAt: !2678)
!2727 = distinct !DILexicalBlock(scope: !2724, file: !6, line: 100, column: 26)
!2728 = !DILocation(line: 0, scope: !1050, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 102, column: 9, scope: !2727, inlinedAt: !2678)
!2730 = !DILocation(line: 44, column: 27, scope: !1059, inlinedAt: !2729)
!2731 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !2729)
!2732 = !DILocation(line: 48, column: 13, scope: !1062, inlinedAt: !2729)
!2733 = !DILocation(line: 0, scope: !1067, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 102, column: 29, scope: !2727, inlinedAt: !2678)
!2735 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !2734)
!2736 = !DILocation(line: 0, scope: !1076, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 102, column: 9, scope: !2727, inlinedAt: !2678)
!2738 = !DILocation(line: 168, column: 13, scope: !1081, inlinedAt: !2737)
!2739 = !DILocation(line: 169, column: 9, scope: !1081, inlinedAt: !2737)
!2740 = !DILocation(line: 49, column: 23, scope: !1086, inlinedAt: !2729)
!2741 = !DILocation(line: 50, column: 18, scope: !1086, inlinedAt: !2729)
!2742 = !DILocation(line: 0, scope: !1089, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 170, column: 13, scope: !1093, inlinedAt: !2737)
!2744 = !DILocation(line: 163, column: 81, scope: !1089, inlinedAt: !2743)
!2745 = !DILocation(line: 163, column: 87, scope: !1089, inlinedAt: !2743)
!2746 = !DILocation(line: 163, column: 77, scope: !1089, inlinedAt: !2743)
!2747 = !DILocation(line: 163, column: 15, scope: !1089, inlinedAt: !2743)
!2748 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !2737)
!2749 = !DILocation(line: 105, column: 11, scope: !2671, inlinedAt: !2678)
!2750 = !DILocation(line: 105, column: 22, scope: !2671, inlinedAt: !2678)
!2751 = !DILocation(line: 106, column: 11, scope: !2671, inlinedAt: !2678)
!2752 = !DILocation(line: 106, column: 16, scope: !2671, inlinedAt: !2678)
!2753 = !DILocation(line: 109, column: 30, scope: !2671, inlinedAt: !2678)
!2754 = !DILocation(line: 109, column: 11, scope: !2671, inlinedAt: !2678)
!2755 = !DILocation(line: 109, column: 16, scope: !2671, inlinedAt: !2678)
!2756 = !DILocation(line: 110, column: 20, scope: !2757, inlinedAt: !2678)
!2757 = distinct !DILexicalBlock(scope: !2671, file: !6, line: 110, column: 9)
!2758 = !DILocation(line: 110, column: 9, scope: !2671, inlinedAt: !2678)
!2759 = !DILocation(line: 111, column: 50, scope: !2760, inlinedAt: !2678)
!2760 = distinct !DILexicalBlock(scope: !2757, file: !6, line: 110, column: 32)
!2761 = !DILocation(line: 111, column: 23, scope: !2760, inlinedAt: !2678)
!2762 = !DILocation(line: 111, column: 34, scope: !2760, inlinedAt: !2678)
!2763 = !DILocation(line: 112, column: 23, scope: !2760, inlinedAt: !2678)
!2764 = !DILocation(line: 112, column: 28, scope: !2760, inlinedAt: !2678)
!2765 = !DILocation(line: 113, column: 23, scope: !2760, inlinedAt: !2678)
!2766 = !DILocation(line: 113, column: 28, scope: !2760, inlinedAt: !2678)
!2767 = !DILocation(line: 114, column: 5, scope: !2760, inlinedAt: !2678)
!2768 = !DILocation(line: 0, scope: !614, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 117, column: 9, scope: !2770, inlinedAt: !2678)
!2770 = distinct !DILexicalBlock(scope: !2757, file: !6, line: 114, column: 12)
!2771 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !2769)
!2772 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !2769)
!2773 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !2769)
!2774 = !DILocation(line: 0, scope: !631, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 117, column: 29, scope: !2770, inlinedAt: !2678)
!2776 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2775)
!2777 = !DILocation(line: 0, scope: !640, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 117, column: 9, scope: !2770, inlinedAt: !2678)
!2779 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !2778)
!2780 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !2778)
!2781 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !2769)
!2782 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !2769)
!2783 = !DILocation(line: 0, scope: !654, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !2778)
!2785 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !2784)
!2786 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !2784)
!2787 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !2784)
!2788 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !2784)
!2789 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2778)
!2790 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2778)
!2791 = !DILocation(line: 120, column: 14, scope: !2792, inlinedAt: !2678)
!2792 = distinct !DILexicalBlock(scope: !2671, file: !6, line: 120, column: 9)
!2793 = !DILocation(line: 120, column: 9, scope: !2671, inlinedAt: !2678)
!2794 = !DILocation(line: 121, column: 15, scope: !2795, inlinedAt: !2678)
!2795 = distinct !DILexicalBlock(scope: !2792, file: !6, line: 120, column: 26)
!2796 = !DILocation(line: 121, column: 20, scope: !2795, inlinedAt: !2678)
!2797 = !DILocation(line: 122, column: 5, scope: !2795, inlinedAt: !2678)
!2798 = !DILocation(line: 122, column: 16, scope: !2799, inlinedAt: !2678)
!2799 = distinct !DILexicalBlock(scope: !2792, file: !6, line: 122, column: 16)
!2800 = !DILocation(line: 122, column: 30, scope: !2799, inlinedAt: !2678)
!2801 = !DILocation(line: 122, column: 16, scope: !2792, inlinedAt: !2678)
!2802 = !DILocation(line: 123, column: 23, scope: !2803, inlinedAt: !2678)
!2803 = distinct !DILexicalBlock(scope: !2799, file: !6, line: 122, column: 42)
!2804 = !DILocation(line: 124, column: 5, scope: !2803, inlinedAt: !2678)
!2805 = !DILocation(line: 0, scope: !1681, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 126, column: 1, scope: !2671, inlinedAt: !2678)
!2807 = !DILocation(line: 20, column: 9, scope: !1686, inlinedAt: !2806)
!2808 = !DILocation(line: 265, column: 9, scope: !2204)
!2809 = !DILocation(line: 265, column: 19, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2204, file: !6, line: 265, column: 9)
!2811 = !DILocation(line: 0, scope: !614, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 266, column: 9, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2810, file: !6, line: 265, column: 31)
!2814 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !2812)
!2815 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !2812)
!2816 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !2812)
!2817 = !DILocation(line: 0, scope: !631, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 266, column: 29, scope: !2813)
!2819 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2818)
!2820 = !DILocation(line: 0, scope: !640, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 266, column: 9, scope: !2813)
!2822 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !2821)
!2823 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !2821)
!2824 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !2812)
!2825 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !2812)
!2826 = !DILocation(line: 0, scope: !654, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !2821)
!2828 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !2827)
!2829 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !2827)
!2830 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !2827)
!2831 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !2827)
!2832 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2821)
!2833 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2821)
!2834 = !DILocation(line: 267, column: 9, scope: !2813)
!2835 = !DILocation(line: 270, column: 31, scope: !2204)
!2836 = !DILocation(line: 0, scope: !727, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 270, column: 56, scope: !2204)
!2838 = !DILocation(line: 482, column: 17, scope: !727, inlinedAt: !2837)
!2839 = !DILocation(line: 482, column: 22, scope: !727, inlinedAt: !2837)
!2840 = !DILocation(line: 482, column: 27, scope: !727, inlinedAt: !2837)
!2841 = !DILocation(line: 270, column: 44, scope: !2204)
!2842 = !DILocation(line: 0, scope: !614, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 271, column: 5, scope: !2204)
!2844 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !2843)
!2845 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !2843)
!2846 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !2843)
!2847 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !2843)
!2848 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !2843)
!2849 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !2843)
!2850 = !DILocation(line: 0, scope: !628, inlinedAt: !2843)
!2851 = !DILocation(line: 0, scope: !631, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 271, column: 25, scope: !2204)
!2853 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2852)
!2854 = !DILocation(line: 0, scope: !2166, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 271, column: 58, scope: !2204)
!2856 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !2855)
!2857 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !2855)
!2858 = !DILocation(line: 0, scope: !631, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 271, column: 70, scope: !2204)
!2860 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2859)
!2861 = !DILocation(line: 0, scope: !640, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 271, column: 5, scope: !2204)
!2863 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !2862)
!2864 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !2862)
!2865 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !2862)
!2866 = !DILocation(line: 0, scope: !654, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !2862)
!2868 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !2867)
!2869 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !2867)
!2870 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !2867)
!2871 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !2867)
!2872 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !2862)
!2873 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !2862)
!2874 = !DILocation(line: 273, column: 5, scope: !2204)
!2875 = !DILocation(line: 273, column: 37, scope: !2204)
!2876 = !DILocation(line: 274, column: 35, scope: !2204)
!2877 = !DILocation(line: 274, column: 23, scope: !2204)
!2878 = !DILocation(line: 274, column: 28, scope: !2204)
!2879 = !{!2880, !1233, i64 32}
!2880 = !{!"_ZTS29stDmaWrapper_DmaTransferSetup", !713, i64 0, !713, i64 2, !713, i64 4, !713, i64 6, !713, i64 8, !713, i64 10, !713, i64 12, !713, i64 14, !710, i64 16, !710, i64 20, !710, i64 24, !713, i64 28, !713, i64 30, !1233, i64 32, !2881, i64 36}
!2881 = !{!"_ZTS26eDmaWrapper_TransationType", !551, i64 0}
!2882 = !DILocation(line: 275, column: 40, scope: !2204)
!2883 = !DILocation(line: 275, column: 35, scope: !2204)
!2884 = !DILocation(line: 275, column: 23, scope: !2204)
!2885 = !DILocation(line: 275, column: 33, scope: !2204)
!2886 = !{!2880, !713, i64 0}
!2887 = !DILocation(line: 276, column: 40, scope: !2204)
!2888 = !DILocation(line: 276, column: 35, scope: !2204)
!2889 = !DILocation(line: 276, column: 23, scope: !2204)
!2890 = !DILocation(line: 276, column: 33, scope: !2204)
!2891 = !{!2880, !713, i64 2}
!2892 = !DILocation(line: 277, column: 45, scope: !2204)
!2893 = !DILocation(line: 277, column: 40, scope: !2204)
!2894 = !DILocation(line: 277, column: 23, scope: !2204)
!2895 = !DILocation(line: 277, column: 38, scope: !2204)
!2896 = !{!2880, !713, i64 4}
!2897 = !DILocation(line: 278, column: 23, scope: !2204)
!2898 = !DILocation(line: 278, column: 31, scope: !2204)
!2899 = !{!2880, !713, i64 10}
!2900 = !DILocation(line: 279, column: 23, scope: !2204)
!2901 = !DILocation(line: 279, column: 31, scope: !2204)
!2902 = !{!2880, !713, i64 12}
!2903 = !DILocation(line: 280, column: 38, scope: !2204)
!2904 = !DILocation(line: 280, column: 23, scope: !2204)
!2905 = !DILocation(line: 280, column: 36, scope: !2204)
!2906 = !{!2880, !713, i64 14}
!2907 = !DILocation(line: 281, column: 41, scope: !2204)
!2908 = !DILocation(line: 281, column: 36, scope: !2204)
!2909 = !DILocation(line: 281, column: 23, scope: !2204)
!2910 = !DILocation(line: 281, column: 34, scope: !2204)
!2911 = !{!2880, !713, i64 28}
!2912 = !DILocation(line: 282, column: 23, scope: !2204)
!2913 = !DILocation(line: 282, column: 44, scope: !2204)
!2914 = !{!2880, !713, i64 30}
!2915 = !DILocation(line: 283, column: 23, scope: !2204)
!2916 = !DILocation(line: 283, column: 32, scope: !2204)
!2917 = !{!2880, !710, i64 16}
!2918 = !DILocation(line: 284, column: 67, scope: !2204)
!2919 = !DILocation(line: 284, column: 23, scope: !2204)
!2920 = !DILocation(line: 284, column: 35, scope: !2204)
!2921 = !{!2880, !710, i64 20}
!2922 = !DILocation(line: 285, column: 40, scope: !2204)
!2923 = !DILocation(line: 285, column: 23, scope: !2204)
!2924 = !DILocation(line: 285, column: 33, scope: !2204)
!2925 = !{!2880, !710, i64 24}
!2926 = !DILocation(line: 286, column: 14, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2204, file: !6, line: 286, column: 9)
!2928 = !DILocation(line: 286, column: 9, scope: !2204)
!2929 = !DILocation(line: 288, column: 42, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2927, file: !6, line: 286, column: 24)
!2931 = !DILocation(line: 288, column: 60, scope: !2930)
!2932 = !DILocation(line: 288, column: 67, scope: !2930)
!2933 = !DILocation(line: 288, column: 37, scope: !2930)
!2934 = !DILocation(line: 289, column: 42, scope: !2930)
!2935 = !DILocation(line: 290, column: 5, scope: !2930)
!2936 = !DILocation(line: 292, column: 43, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2927, file: !6, line: 290, column: 12)
!2938 = !DILocation(line: 292, column: 38, scope: !2937)
!2939 = !DILocation(line: 292, column: 61, scope: !2937)
!2940 = !DILocation(line: 292, column: 68, scope: !2937)
!2941 = !DILocation(line: 292, column: 54, scope: !2937)
!2942 = !DILocation(line: 292, column: 87, scope: !2937)
!2943 = !DILocation(line: 292, column: 73, scope: !2937)
!2944 = !DILocation(line: 292, column: 37, scope: !2937)
!2945 = !DILocation(line: 293, column: 42, scope: !2937)
!2946 = !DILocation(line: 293, column: 67, scope: !2937)
!2947 = !DILocation(line: 293, column: 37, scope: !2937)
!2948 = !DILocation(line: 0, scope: !2927)
!2949 = !DILocation(line: 291, column: 27, scope: !2937)
!2950 = !DILocation(line: 291, column: 41, scope: !2937)
!2951 = !DILocation(line: 292, column: 27, scope: !2937)
!2952 = !DILocation(line: 292, column: 35, scope: !2937)
!2953 = !DILocation(line: 293, column: 27, scope: !2937)
!2954 = !DILocation(line: 293, column: 35, scope: !2937)
!2955 = !DILocation(line: 297, column: 39, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2204, file: !6, line: 297, column: 9)
!2957 = !DILocation(line: 298, column: 15, scope: !2956)
!2958 = !DILocation(line: 298, column: 26, scope: !2956)
!2959 = !DILocation(line: 297, column: 9, scope: !2204)
!2960 = !DILocation(line: 299, column: 42, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2956, file: !6, line: 298, column: 33)
!2962 = !DILocation(line: 299, column: 37, scope: !2961)
!2963 = !DILocation(line: 299, column: 67, scope: !2961)
!2964 = !DILocation(line: 299, column: 53, scope: !2961)
!2965 = !DILocation(line: 299, column: 86, scope: !2961)
!2966 = !DILocation(line: 299, column: 97, scope: !2961)
!2967 = !DILocation(line: 299, column: 104, scope: !2961)
!2968 = !DILocation(line: 299, column: 90, scope: !2961)
!2969 = !DILocation(line: 299, column: 71, scope: !2961)
!2970 = !DILocation(line: 299, column: 35, scope: !2961)
!2971 = !{!2880, !713, i64 8}
!2972 = !DILocation(line: 300, column: 5, scope: !2961)
!2973 = !DILocation(line: 310, column: 48, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !6, line: 309, column: 42)
!2975 = distinct !DILexicalBlock(scope: !2204, file: !6, line: 306, column: 9)
!2976 = !DILocation(line: 310, column: 35, scope: !2974)
!2977 = !DILocation(line: 311, column: 13, scope: !2974)
!2978 = !DILocation(line: 0, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2974, file: !6, line: 311, column: 13)
!2980 = !DILocation(line: 316, column: 9, scope: !2974)
!2981 = !DILocation(line: 0, scope: !614, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 316, column: 9, scope: !2974)
!2983 = !DILocation(line: 38, column: 11, scope: !614, inlinedAt: !2982)
!2984 = !DILocation(line: 38, column: 30, scope: !614, inlinedAt: !2982)
!2985 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !2982)
!2986 = !DILocation(line: 44, column: 13, scope: !623, inlinedAt: !2982)
!2987 = !DILocation(line: 44, column: 17, scope: !623, inlinedAt: !2982)
!2988 = !DILocation(line: 47, column: 9, scope: !626, inlinedAt: !2982)
!2989 = !DILocation(line: 47, column: 13, scope: !626, inlinedAt: !2982)
!2990 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !2982)
!2991 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !2982)
!2992 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !2982)
!2993 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !2982)
!2994 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !2982)
!2995 = !DILocation(line: 0, scope: !628, inlinedAt: !2982)
!2996 = !DILocation(line: 53, column: 13, scope: !2365, inlinedAt: !2982)
!2997 = !DILocation(line: 53, column: 17, scope: !2365, inlinedAt: !2982)
!2998 = !DILocation(line: 0, scope: !631, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 317, column: 13, scope: !2974)
!3000 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !2999)
!3001 = !DILocation(line: 62, column: 17, scope: !637, inlinedAt: !2999)
!3002 = !DILocation(line: 317, column: 59, scope: !2974)
!3003 = !{!2880, !713, i64 6}
!3004 = !DILocation(line: 0, scope: !2166, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 317, column: 38, scope: !2974)
!3006 = !DILocation(line: 73, column: 43, scope: !2166, inlinedAt: !3005)
!3007 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !3005)
!3008 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !3005)
!3009 = !DILocation(line: 73, column: 13, scope: !2166, inlinedAt: !3005)
!3010 = !DILocation(line: 0, scope: !631, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 317, column: 67, scope: !2974)
!3012 = !DILocation(line: 62, column: 48, scope: !637, inlinedAt: !3011)
!3013 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3011)
!3014 = !DILocation(line: 62, column: 17, scope: !637, inlinedAt: !3011)
!3015 = !DILocation(line: 317, column: 98, scope: !2974)
!3016 = !DILocation(line: 0, scope: !2166, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 317, column: 77, scope: !2974)
!3018 = !DILocation(line: 73, column: 43, scope: !2166, inlinedAt: !3017)
!3019 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !3017)
!3020 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !3017)
!3021 = !DILocation(line: 73, column: 13, scope: !2166, inlinedAt: !3017)
!3022 = !DILocation(line: 0, scope: !631, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 318, column: 13, scope: !2974)
!3024 = !DILocation(line: 62, column: 48, scope: !637, inlinedAt: !3023)
!3025 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3023)
!3026 = !DILocation(line: 62, column: 17, scope: !637, inlinedAt: !3023)
!3027 = !DILocation(line: 318, column: 44, scope: !2974)
!3028 = !DILocation(line: 0, scope: !2166, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 318, column: 23, scope: !2974)
!3030 = !DILocation(line: 73, column: 43, scope: !2166, inlinedAt: !3029)
!3031 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !3029)
!3032 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !3029)
!3033 = !DILocation(line: 73, column: 13, scope: !2166, inlinedAt: !3029)
!3034 = !DILocation(line: 0, scope: !631, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 318, column: 52, scope: !2974)
!3036 = !DILocation(line: 62, column: 48, scope: !637, inlinedAt: !3035)
!3037 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3035)
!3038 = !DILocation(line: 62, column: 17, scope: !637, inlinedAt: !3035)
!3039 = !DILocation(line: 318, column: 83, scope: !2974)
!3040 = !DILocation(line: 0, scope: !2166, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 318, column: 62, scope: !2974)
!3042 = !DILocation(line: 73, column: 43, scope: !2166, inlinedAt: !3041)
!3043 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !3041)
!3044 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !3041)
!3045 = !DILocation(line: 73, column: 13, scope: !2166, inlinedAt: !3041)
!3046 = !DILocation(line: 0, scope: !631, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 318, column: 91, scope: !2974)
!3048 = !DILocation(line: 62, column: 48, scope: !637, inlinedAt: !3047)
!3049 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3047)
!3050 = !DILocation(line: 62, column: 17, scope: !637, inlinedAt: !3047)
!3051 = !DILocation(line: 0, scope: !631, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 319, column: 13, scope: !2974)
!3053 = !DILocation(line: 62, column: 48, scope: !637, inlinedAt: !3052)
!3054 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3052)
!3055 = !DILocation(line: 62, column: 17, scope: !637, inlinedAt: !3052)
!3056 = !DILocation(line: 319, column: 45, scope: !2974)
!3057 = !DILocation(line: 319, column: 52, scope: !2974)
!3058 = !DILocation(line: 0, scope: !2166, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 319, column: 37, scope: !2974)
!3060 = !DILocation(line: 73, column: 43, scope: !2166, inlinedAt: !3059)
!3061 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !3059)
!3062 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !3059)
!3063 = !DILocation(line: 73, column: 13, scope: !2166, inlinedAt: !3059)
!3064 = !DILocation(line: 0, scope: !631, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 319, column: 56, scope: !2974)
!3066 = !DILocation(line: 62, column: 48, scope: !637, inlinedAt: !3065)
!3067 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3065)
!3068 = !DILocation(line: 62, column: 17, scope: !637, inlinedAt: !3065)
!3069 = !DILocation(line: 0, scope: !640, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 316, column: 9, scope: !2974)
!3071 = !DILocation(line: 167, column: 14, scope: !646, inlinedAt: !3070)
!3072 = !DILocation(line: 0, scope: !646, inlinedAt: !3070)
!3073 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !3070)
!3074 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !3070)
!3075 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !3070)
!3076 = !DILocation(line: 0, scope: !654, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !3070)
!3078 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !3077)
!3079 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !3077)
!3080 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !3077)
!3081 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !3077)
!3082 = !DILocation(line: 174, column: 30, scope: !664, inlinedAt: !3070)
!3083 = !DILocation(line: 174, column: 44, scope: !664, inlinedAt: !3070)
!3084 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3070)
!3085 = !DILocation(line: 180, column: 13, scope: !669, inlinedAt: !3070)
!3086 = !DILocation(line: 180, column: 21, scope: !669, inlinedAt: !3070)
!3087 = !DILocation(line: 180, column: 24, scope: !669, inlinedAt: !3070)
!3088 = !DILocation(line: 180, column: 31, scope: !669, inlinedAt: !3070)
!3089 = !DILocation(line: 180, column: 28, scope: !669, inlinedAt: !3070)
!3090 = !DILocation(line: 180, column: 13, scope: !647, inlinedAt: !3070)
!3091 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3070)
!3092 = !DILocation(line: 182, column: 9, scope: !668, inlinedAt: !3070)
!3093 = !DILocation(line: 320, column: 5, scope: !2974)
!3094 = !DILocation(line: 322, column: 81, scope: !2204)
!3095 = !DILocation(line: 322, column: 24, scope: !2204)
!3096 = !DILocation(line: 323, column: 10, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !2204, file: !6, line: 323, column: 9)
!3098 = !DILocation(line: 323, column: 9, scope: !2204)
!3099 = !DILocation(line: 0, scope: !614, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 324, column: 9, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3097, file: !6, line: 323, column: 22)
!3102 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !3100)
!3103 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !3100)
!3104 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !3100)
!3105 = !DILocation(line: 0, scope: !631, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 324, column: 29, scope: !3101)
!3107 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3106)
!3108 = !DILocation(line: 0, scope: !640, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 324, column: 9, scope: !3101)
!3110 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !3109)
!3111 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !3109)
!3112 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !3100)
!3113 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !3100)
!3114 = !DILocation(line: 0, scope: !654, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !3109)
!3116 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !3115)
!3117 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !3115)
!3118 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !3115)
!3119 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !3115)
!3120 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3109)
!3121 = !DILocation(line: 328, column: 5, scope: !2204)
!3122 = !DILocation(line: 0, scope: !614, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 328, column: 5, scope: !2204)
!3124 = !DILocation(line: 38, column: 11, scope: !614, inlinedAt: !3123)
!3125 = !DILocation(line: 38, column: 30, scope: !614, inlinedAt: !3123)
!3126 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !3123)
!3127 = !DILocation(line: 44, column: 13, scope: !623, inlinedAt: !3123)
!3128 = !DILocation(line: 44, column: 17, scope: !623, inlinedAt: !3123)
!3129 = !DILocation(line: 47, column: 9, scope: !626, inlinedAt: !3123)
!3130 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !3123)
!3131 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !3123)
!3132 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !3123)
!3133 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !3123)
!3134 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !3123)
!3135 = !DILocation(line: 0, scope: !628, inlinedAt: !3123)
!3136 = !DILocation(line: 53, column: 13, scope: !2365, inlinedAt: !3123)
!3137 = !DILocation(line: 53, column: 17, scope: !2365, inlinedAt: !3123)
!3138 = !DILocation(line: 0, scope: !631, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 329, column: 9, scope: !2204)
!3140 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3139)
!3141 = !DILocation(line: 0, scope: !912, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 329, column: 24, scope: !2204)
!3143 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3142)
!3144 = !DILocation(line: 0, scope: !631, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 329, column: 38, scope: !2204)
!3146 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3145)
!3147 = !DILocation(line: 329, column: 76, scope: !2204)
!3148 = !DILocation(line: 0, scope: !912, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 329, column: 55, scope: !2204)
!3150 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3149)
!3151 = !DILocation(line: 0, scope: !631, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 329, column: 85, scope: !2204)
!3153 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3152)
!3154 = !DILocation(line: 62, column: 17, scope: !637, inlinedAt: !3152)
!3155 = !DILocation(line: 0, scope: !640, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 328, column: 5, scope: !2204)
!3157 = !DILocation(line: 167, column: 14, scope: !646, inlinedAt: !3156)
!3158 = !DILocation(line: 0, scope: !646, inlinedAt: !3156)
!3159 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !3156)
!3160 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !3156)
!3161 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !3156)
!3162 = !DILocation(line: 0, scope: !654, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !3156)
!3164 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !3163)
!3165 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !3163)
!3166 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !3163)
!3167 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !3163)
!3168 = !DILocation(line: 174, column: 30, scope: !664, inlinedAt: !3156)
!3169 = !DILocation(line: 174, column: 44, scope: !664, inlinedAt: !3156)
!3170 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3156)
!3171 = !DILocation(line: 180, column: 13, scope: !669, inlinedAt: !3156)
!3172 = !DILocation(line: 180, column: 21, scope: !669, inlinedAt: !3156)
!3173 = !DILocation(line: 180, column: 24, scope: !669, inlinedAt: !3156)
!3174 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3156)
!3175 = !DILocation(line: 182, column: 9, scope: !668, inlinedAt: !3156)
!3176 = !DILocation(line: 330, column: 12, scope: !2204)
!3177 = !DILocation(line: 331, column: 14, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !2204, file: !6, line: 331, column: 9)
!3179 = !DILocation(line: 331, column: 9, scope: !2204)
!3180 = !DILocation(line: 0, scope: !1050, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 332, column: 9, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3178, file: !6, line: 331, column: 27)
!3183 = !DILocation(line: 48, column: 13, scope: !1062, inlinedAt: !3181)
!3184 = !DILocation(line: 49, column: 23, scope: !1086, inlinedAt: !3181)
!3185 = !DILocation(line: 50, column: 18, scope: !1086, inlinedAt: !3181)
!3186 = !DILocation(line: 51, column: 9, scope: !1086, inlinedAt: !3181)
!3187 = !DILocation(line: 0, scope: !1064, inlinedAt: !3181)
!3188 = !DILocation(line: 0, scope: !1067, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 332, column: 29, scope: !3182)
!3190 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !3189)
!3191 = !DILocation(line: 0, scope: !1855, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 332, column: 64, scope: !3182)
!3193 = !DILocation(line: 73, column: 48, scope: !1855, inlinedAt: !3192)
!3194 = !DILocation(line: 73, column: 15, scope: !1855, inlinedAt: !3192)
!3195 = !DILocation(line: 0, scope: !1067, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 332, column: 72, scope: !3182)
!3197 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !3196)
!3198 = !DILocation(line: 0, scope: !1076, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 332, column: 9, scope: !3182)
!3200 = !DILocation(line: 167, column: 13, scope: !1083, inlinedAt: !3199)
!3201 = !DILocation(line: 168, column: 13, scope: !1081, inlinedAt: !3199)
!3202 = !DILocation(line: 169, column: 9, scope: !1081, inlinedAt: !3199)
!3203 = !DILocation(line: 0, scope: !1089, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 170, column: 13, scope: !1093, inlinedAt: !3199)
!3205 = !DILocation(line: 163, column: 81, scope: !1089, inlinedAt: !3204)
!3206 = !DILocation(line: 163, column: 87, scope: !1089, inlinedAt: !3204)
!3207 = !DILocation(line: 163, column: 77, scope: !1089, inlinedAt: !3204)
!3208 = !DILocation(line: 163, column: 15, scope: !1089, inlinedAt: !3204)
!3209 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !3199)
!3210 = !DILocation(line: 0, scope: !614, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 336, column: 5, scope: !2204)
!3212 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !3211)
!3213 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !3211)
!3214 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !3211)
!3215 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !3211)
!3216 = !DILocation(line: 0, scope: !628, inlinedAt: !3211)
!3217 = !DILocation(line: 0, scope: !631, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 336, column: 25, scope: !2204)
!3219 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3218)
!3220 = !DILocation(line: 0, scope: !912, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 336, column: 40, scope: !2204)
!3222 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3221)
!3223 = !DILocation(line: 0, scope: !631, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 336, column: 54, scope: !2204)
!3225 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3224)
!3226 = !DILocation(line: 0, scope: !640, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 336, column: 5, scope: !2204)
!3228 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !3227)
!3229 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !3227)
!3230 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !3227)
!3231 = !DILocation(line: 0, scope: !654, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !3227)
!3233 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !3232)
!3234 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !3232)
!3235 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !3232)
!3236 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !3232)
!3237 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3227)
!3238 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3227)
!3239 = !DILocation(line: 337, column: 12, scope: !2204)
!3240 = !DILocation(line: 338, column: 14, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !2204, file: !6, line: 338, column: 9)
!3242 = !DILocation(line: 338, column: 9, scope: !2204)
!3243 = !DILocation(line: 0, scope: !1050, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 339, column: 9, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3241, file: !6, line: 338, column: 27)
!3246 = !DILocation(line: 48, column: 13, scope: !1062, inlinedAt: !3244)
!3247 = !DILocation(line: 49, column: 23, scope: !1086, inlinedAt: !3244)
!3248 = !DILocation(line: 50, column: 18, scope: !1086, inlinedAt: !3244)
!3249 = !DILocation(line: 51, column: 9, scope: !1086, inlinedAt: !3244)
!3250 = !DILocation(line: 0, scope: !1064, inlinedAt: !3244)
!3251 = !DILocation(line: 0, scope: !1067, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 339, column: 29, scope: !3245)
!3253 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !3252)
!3254 = !DILocation(line: 0, scope: !1855, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 339, column: 68, scope: !3245)
!3256 = !DILocation(line: 73, column: 48, scope: !1855, inlinedAt: !3255)
!3257 = !DILocation(line: 73, column: 15, scope: !1855, inlinedAt: !3255)
!3258 = !DILocation(line: 0, scope: !1067, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 339, column: 76, scope: !3245)
!3260 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !3259)
!3261 = !DILocation(line: 0, scope: !1076, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 339, column: 9, scope: !3245)
!3263 = !DILocation(line: 167, column: 13, scope: !1083, inlinedAt: !3262)
!3264 = !DILocation(line: 168, column: 13, scope: !1081, inlinedAt: !3262)
!3265 = !DILocation(line: 169, column: 9, scope: !1081, inlinedAt: !3262)
!3266 = !DILocation(line: 0, scope: !1089, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 170, column: 13, scope: !1093, inlinedAt: !3262)
!3268 = !DILocation(line: 163, column: 81, scope: !1089, inlinedAt: !3267)
!3269 = !DILocation(line: 163, column: 87, scope: !1089, inlinedAt: !3267)
!3270 = !DILocation(line: 163, column: 77, scope: !1089, inlinedAt: !3267)
!3271 = !DILocation(line: 163, column: 15, scope: !1089, inlinedAt: !3267)
!3272 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !3262)
!3273 = !DILocation(line: 0, scope: !614, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 343, column: 5, scope: !2204)
!3275 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !3274)
!3276 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !3274)
!3277 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !3274)
!3278 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !3274)
!3279 = !DILocation(line: 0, scope: !628, inlinedAt: !3274)
!3280 = !DILocation(line: 0, scope: !631, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 343, column: 25, scope: !2204)
!3282 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3281)
!3283 = !DILocation(line: 0, scope: !912, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 343, column: 40, scope: !2204)
!3285 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3284)
!3286 = !DILocation(line: 0, scope: !631, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 343, column: 54, scope: !2204)
!3288 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3287)
!3289 = !DILocation(line: 0, scope: !640, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 343, column: 5, scope: !2204)
!3291 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !3290)
!3292 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !3290)
!3293 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !3290)
!3294 = !DILocation(line: 0, scope: !654, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !3290)
!3296 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !3295)
!3297 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !3295)
!3298 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !3295)
!3299 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !3295)
!3300 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3290)
!3301 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3290)
!3302 = !DILocation(line: 344, column: 12, scope: !2204)
!3303 = !DILocation(line: 345, column: 14, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !2204, file: !6, line: 345, column: 9)
!3305 = !DILocation(line: 345, column: 9, scope: !2204)
!3306 = !DILocation(line: 0, scope: !1050, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 346, column: 9, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3304, file: !6, line: 345, column: 27)
!3309 = !DILocation(line: 44, column: 27, scope: !1059, inlinedAt: !3307)
!3310 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !3307)
!3311 = !DILocation(line: 48, column: 13, scope: !1062, inlinedAt: !3307)
!3312 = !DILocation(line: 49, column: 23, scope: !1086, inlinedAt: !3307)
!3313 = !DILocation(line: 50, column: 18, scope: !1086, inlinedAt: !3307)
!3314 = !DILocation(line: 51, column: 9, scope: !1086, inlinedAt: !3307)
!3315 = !DILocation(line: 0, scope: !1064, inlinedAt: !3307)
!3316 = !DILocation(line: 0, scope: !1067, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 346, column: 29, scope: !3308)
!3318 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !3317)
!3319 = !DILocation(line: 0, scope: !1855, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 346, column: 68, scope: !3308)
!3321 = !DILocation(line: 73, column: 48, scope: !1855, inlinedAt: !3320)
!3322 = !DILocation(line: 73, column: 15, scope: !1855, inlinedAt: !3320)
!3323 = !DILocation(line: 0, scope: !1067, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 346, column: 76, scope: !3308)
!3325 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !3324)
!3326 = !DILocation(line: 0, scope: !1076, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 346, column: 9, scope: !3308)
!3328 = !DILocation(line: 167, column: 13, scope: !1083, inlinedAt: !3327)
!3329 = !DILocation(line: 168, column: 13, scope: !1081, inlinedAt: !3327)
!3330 = !DILocation(line: 169, column: 9, scope: !1081, inlinedAt: !3327)
!3331 = !DILocation(line: 0, scope: !1089, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 170, column: 13, scope: !1093, inlinedAt: !3327)
!3333 = !DILocation(line: 163, column: 81, scope: !1089, inlinedAt: !3332)
!3334 = !DILocation(line: 163, column: 87, scope: !1089, inlinedAt: !3332)
!3335 = !DILocation(line: 163, column: 77, scope: !1089, inlinedAt: !3332)
!3336 = !DILocation(line: 163, column: 15, scope: !1089, inlinedAt: !3332)
!3337 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !3327)
!3338 = !DILocalVariable(name: "user_context", arg: 1, scope: !3339, file: !6, line: 128, type: !13)
!3339 = distinct !DISubprogram(name: "desc_pool_put", linkageName: "_ZN12_GLOBAL__N_113desc_pool_putEPvS0_", scope: !1622, file: !6, line: 128, type: !1277, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3340)
!3340 = !{!3338, !3341, !3342, !3343}
!3341 = !DILocalVariable(name: "desc", arg: 2, scope: !3339, file: !6, line: 128, type: !13)
!3342 = !DILocalVariable(name: "lock", scope: !3339, file: !6, line: 129, type: !1627)
!3343 = !DILocalVariable(name: "temp", scope: !3339, file: !6, line: 131, type: !7)
!3344 = !DILocation(line: 0, scope: !3339, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 350, column: 5, scope: !2204)
!3346 = !DILocation(line: 0, scope: !1645, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 129, column: 21, scope: !3339, inlinedAt: !3345)
!3348 = !DILocation(line: 16, column: 9, scope: !1652, inlinedAt: !3347)
!3349 = !DILocation(line: 132, column: 17, scope: !3339, inlinedAt: !3345)
!3350 = !DILocation(line: 132, column: 5, scope: !3339, inlinedAt: !3345)
!3351 = !DILocation(line: 133, column: 19, scope: !3352, inlinedAt: !3345)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !6, line: 133, column: 13)
!3353 = distinct !DILexicalBlock(scope: !3339, file: !6, line: 132, column: 29)
!3354 = !DILocation(line: 133, column: 30, scope: !3352, inlinedAt: !3345)
!3355 = !DILocation(line: 133, column: 13, scope: !3353, inlinedAt: !3345)
!3356 = !DILocation(line: 134, column: 19, scope: !3357, inlinedAt: !3345)
!3357 = distinct !DILexicalBlock(scope: !3352, file: !6, line: 133, column: 39)
!3358 = !DILocation(line: 134, column: 24, scope: !3357, inlinedAt: !3345)
!3359 = !DILocation(line: 135, column: 13, scope: !3357, inlinedAt: !3345)
!3360 = !DILocation(line: 137, column: 22, scope: !3353, inlinedAt: !3345)
!3361 = distinct !{!3361, !3350, !3362, !559}
!3362 = !DILocation(line: 138, column: 5, scope: !3339, inlinedAt: !3345)
!3363 = !DILocation(line: 0, scope: !1050, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 139, column: 5, scope: !3339, inlinedAt: !3345)
!3365 = !DILocation(line: 44, column: 27, scope: !1059, inlinedAt: !3364)
!3366 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !3364)
!3367 = !DILocation(line: 48, column: 13, scope: !1062, inlinedAt: !3364)
!3368 = !DILocation(line: 49, column: 23, scope: !1086, inlinedAt: !3364)
!3369 = !DILocation(line: 50, column: 18, scope: !1086, inlinedAt: !3364)
!3370 = !DILocation(line: 51, column: 9, scope: !1086, inlinedAt: !3364)
!3371 = !DILocation(line: 0, scope: !1064, inlinedAt: !3364)
!3372 = !DILocation(line: 0, scope: !1067, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 139, column: 25, scope: !3339, inlinedAt: !3345)
!3374 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !3373)
!3375 = !DILocalVariable(name: "this", arg: 1, scope: !3376, type: !1054, flags: DIFlagArtificial | DIFlagObjectPointer)
!3376 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !422, file: !337, line: 97, type: !457, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, declaration: !456, retainedNodes: !3377)
!3377 = !{!3375, !3378}
!3378 = !DILocalVariable(name: "arg", arg: 2, scope: !3376, file: !337, line: 97, type: !385)
!3379 = !DILocation(line: 0, scope: !3376, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 139, column: 55, scope: !3339, inlinedAt: !3345)
!3381 = !DILocation(line: 98, column: 15, scope: !3376, inlinedAt: !3380)
!3382 = !DILocation(line: 0, scope: !1067, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 139, column: 63, scope: !3339, inlinedAt: !3345)
!3384 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !3383)
!3385 = !DILocation(line: 0, scope: !1076, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 139, column: 5, scope: !3339, inlinedAt: !3345)
!3387 = !DILocation(line: 167, column: 13, scope: !1083, inlinedAt: !3386)
!3388 = !DILocation(line: 168, column: 13, scope: !1081, inlinedAt: !3386)
!3389 = !DILocation(line: 169, column: 9, scope: !1081, inlinedAt: !3386)
!3390 = !DILocation(line: 0, scope: !1089, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 170, column: 13, scope: !1093, inlinedAt: !3386)
!3392 = !DILocation(line: 163, column: 81, scope: !1089, inlinedAt: !3391)
!3393 = !DILocation(line: 163, column: 87, scope: !1089, inlinedAt: !3391)
!3394 = !DILocation(line: 163, column: 77, scope: !1089, inlinedAt: !3391)
!3395 = !DILocation(line: 163, column: 15, scope: !1089, inlinedAt: !3391)
!3396 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !3386)
!3397 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !3386)
!3398 = !DILocation(line: 140, column: 1, scope: !3339, inlinedAt: !3345)
!3399 = !DILocation(line: 0, scope: !1681, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 140, column: 1, scope: !3339, inlinedAt: !3345)
!3401 = !DILocation(line: 20, column: 9, scope: !1686, inlinedAt: !3400)
!3402 = !DILocation(line: 351, column: 75, scope: !2204)
!3403 = !DILocation(line: 351, column: 12, scope: !2204)
!3404 = !DILocation(line: 352, column: 14, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !2204, file: !6, line: 352, column: 9)
!3406 = !DILocation(line: 352, column: 9, scope: !2204)
!3407 = !DILocation(line: 0, scope: !614, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 353, column: 9, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3405, file: !6, line: 352, column: 44)
!3410 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !3408)
!3411 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !3408)
!3412 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !3408)
!3413 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !3408)
!3414 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !3408)
!3415 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !3408)
!3416 = !DILocation(line: 0, scope: !628, inlinedAt: !3408)
!3417 = !DILocation(line: 0, scope: !631, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 353, column: 29, scope: !3409)
!3419 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3418)
!3420 = !DILocation(line: 0, scope: !2166, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 353, column: 75, scope: !3409)
!3422 = !DILocation(line: 73, column: 48, scope: !2166, inlinedAt: !3421)
!3423 = !DILocation(line: 73, column: 15, scope: !2166, inlinedAt: !3421)
!3424 = !DILocation(line: 0, scope: !631, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 353, column: 83, scope: !3409)
!3426 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3425)
!3427 = !DILocation(line: 0, scope: !640, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 353, column: 9, scope: !3409)
!3429 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !3428)
!3430 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !3428)
!3431 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !3428)
!3432 = !DILocation(line: 0, scope: !654, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !3428)
!3434 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !3433)
!3435 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !3433)
!3436 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !3433)
!3437 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !3433)
!3438 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3428)
!3439 = !DILocation(line: 357, column: 1, scope: !2204)
!3440 = distinct !DISubprogram(name: "halide_hexagon_dma_copy_to_device", scope: !6, file: !6, line: 538, type: !889, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3441)
!3441 = !{!3442, !3443}
!3442 = !DILocalVariable(name: "user_context", arg: 1, scope: !3440, file: !6, line: 538, type: !13)
!3443 = !DILocalVariable(name: "buf", arg: 2, scope: !3440, file: !6, line: 538, type: !891)
!3444 = !DILocation(line: 0, scope: !3440)
!3445 = !DILocation(line: 0, scope: !614, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 539, column: 5, scope: !3440)
!3447 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !3446)
!3448 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !3446)
!3449 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !3446)
!3450 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !3446)
!3451 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !3446)
!3452 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !3446)
!3453 = !DILocation(line: 0, scope: !628, inlinedAt: !3446)
!3454 = !DILocation(line: 0, scope: !631, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 540, column: 9, scope: !3440)
!3456 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3455)
!3457 = !DILocation(line: 0, scope: !912, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 540, column: 73, scope: !3440)
!3459 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3458)
!3460 = !DILocation(line: 0, scope: !631, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 541, column: 9, scope: !3440)
!3462 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3461)
!3463 = !DILocation(line: 0, scope: !922, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 541, column: 22, scope: !3440)
!3465 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3464)
!3466 = !DILocation(line: 0, scope: !631, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 541, column: 30, scope: !3440)
!3468 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3467)
!3469 = !DILocation(line: 0, scope: !640, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 539, column: 5, scope: !3440)
!3471 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !3470)
!3472 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !3470)
!3473 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !3470)
!3474 = !DILocation(line: 0, scope: !654, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !3470)
!3476 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !3475)
!3477 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !3475)
!3478 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !3475)
!3479 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !3475)
!3480 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3470)
!3481 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3470)
!3482 = !DILocation(line: 0, scope: !1050, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 543, column: 5, scope: !3440)
!3484 = !DILocation(line: 44, column: 27, scope: !1059, inlinedAt: !3483)
!3485 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !3483)
!3486 = !DILocation(line: 48, column: 13, scope: !1062, inlinedAt: !3483)
!3487 = !DILocation(line: 0, scope: !1067, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 543, column: 25, scope: !3440)
!3489 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !3488)
!3490 = !DILocation(line: 0, scope: !1076, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 543, column: 5, scope: !3440)
!3492 = !DILocation(line: 168, column: 13, scope: !1081, inlinedAt: !3491)
!3493 = !DILocation(line: 169, column: 9, scope: !1081, inlinedAt: !3491)
!3494 = !DILocation(line: 49, column: 23, scope: !1086, inlinedAt: !3483)
!3495 = !DILocation(line: 50, column: 18, scope: !1086, inlinedAt: !3483)
!3496 = !DILocation(line: 0, scope: !1089, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 170, column: 13, scope: !1093, inlinedAt: !3491)
!3498 = !DILocation(line: 163, column: 81, scope: !1089, inlinedAt: !3497)
!3499 = !DILocation(line: 163, column: 87, scope: !1089, inlinedAt: !3497)
!3500 = !DILocation(line: 163, column: 77, scope: !1089, inlinedAt: !3497)
!3501 = !DILocation(line: 163, column: 15, scope: !1089, inlinedAt: !3497)
!3502 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !3491)
!3503 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !3491)
!3504 = !DILocation(line: 544, column: 5, scope: !3440)
!3505 = distinct !DISubprogram(name: "halide_hexagon_dma_copy_to_host", scope: !6, file: !6, line: 547, type: !162, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3506)
!3506 = !{!3507, !3508}
!3507 = !DILocalVariable(name: "user_context", arg: 1, scope: !3505, file: !6, line: 547, type: !13)
!3508 = !DILocalVariable(name: "buf", arg: 2, scope: !3505, file: !6, line: 547, type: !40)
!3509 = !DILocation(line: 0, scope: !3505)
!3510 = !DILocation(line: 0, scope: !614, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 548, column: 5, scope: !3505)
!3512 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !3511)
!3513 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !3511)
!3514 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !3511)
!3515 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !3511)
!3516 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !3511)
!3517 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !3511)
!3518 = !DILocation(line: 0, scope: !628, inlinedAt: !3511)
!3519 = !DILocation(line: 0, scope: !631, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 549, column: 9, scope: !3505)
!3521 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3520)
!3522 = !DILocation(line: 0, scope: !912, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 549, column: 71, scope: !3505)
!3524 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3523)
!3525 = !DILocation(line: 0, scope: !631, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 550, column: 9, scope: !3505)
!3527 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3526)
!3528 = !DILocation(line: 0, scope: !922, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 550, column: 22, scope: !3505)
!3530 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3529)
!3531 = !DILocation(line: 0, scope: !631, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 550, column: 30, scope: !3505)
!3533 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3532)
!3534 = !DILocation(line: 0, scope: !640, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 548, column: 5, scope: !3505)
!3536 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !3535)
!3537 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !3535)
!3538 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !3535)
!3539 = !DILocation(line: 0, scope: !654, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !3535)
!3541 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !3540)
!3542 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !3540)
!3543 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !3540)
!3544 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !3540)
!3545 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3535)
!3546 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3535)
!3547 = !DILocation(line: 0, scope: !1050, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 552, column: 5, scope: !3505)
!3549 = !DILocation(line: 44, column: 27, scope: !1059, inlinedAt: !3548)
!3550 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !3548)
!3551 = !DILocation(line: 48, column: 13, scope: !1062, inlinedAt: !3548)
!3552 = !DILocation(line: 0, scope: !1067, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 552, column: 25, scope: !3505)
!3554 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !3553)
!3555 = !DILocation(line: 0, scope: !1076, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 552, column: 5, scope: !3505)
!3557 = !DILocation(line: 168, column: 13, scope: !1081, inlinedAt: !3556)
!3558 = !DILocation(line: 169, column: 9, scope: !1081, inlinedAt: !3556)
!3559 = !DILocation(line: 49, column: 23, scope: !1086, inlinedAt: !3548)
!3560 = !DILocation(line: 50, column: 18, scope: !1086, inlinedAt: !3548)
!3561 = !DILocation(line: 0, scope: !1089, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 170, column: 13, scope: !1093, inlinedAt: !3556)
!3563 = !DILocation(line: 163, column: 81, scope: !1089, inlinedAt: !3562)
!3564 = !DILocation(line: 163, column: 87, scope: !1089, inlinedAt: !3562)
!3565 = !DILocation(line: 163, column: 77, scope: !1089, inlinedAt: !3562)
!3566 = !DILocation(line: 163, column: 15, scope: !1089, inlinedAt: !3562)
!3567 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !3556)
!3568 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !3556)
!3569 = !DILocation(line: 553, column: 5, scope: !3505)
!3570 = distinct !DISubprogram(name: "halide_hexagon_dma_device_crop", scope: !6, file: !6, line: 556, type: !179, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3571)
!3571 = !{!3572, !3573, !3574, !3575, !3578}
!3572 = !DILocalVariable(name: "user_context", arg: 1, scope: !3570, file: !6, line: 556, type: !13)
!3573 = !DILocalVariable(name: "src", arg: 2, scope: !3570, file: !6, line: 557, type: !181)
!3574 = !DILocalVariable(name: "dst", arg: 3, scope: !3570, file: !6, line: 558, type: !40)
!3575 = !DILocalVariable(name: "src_dev", scope: !3570, file: !6, line: 565, type: !3576)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 32)
!3577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!3578 = !DILocalVariable(name: "dst_dev", scope: !3570, file: !6, line: 566, type: !488)
!3579 = !DILocation(line: 0, scope: !3570)
!3580 = !DILocation(line: 0, scope: !614, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 559, column: 5, scope: !3570)
!3582 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !3581)
!3583 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !3581)
!3584 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !3581)
!3585 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !3581)
!3586 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !3581)
!3587 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !3581)
!3588 = !DILocation(line: 0, scope: !628, inlinedAt: !3581)
!3589 = !DILocation(line: 0, scope: !631, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 560, column: 9, scope: !3570)
!3591 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3590)
!3592 = !DILocation(line: 0, scope: !912, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 560, column: 70, scope: !3570)
!3594 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3593)
!3595 = !DILocation(line: 0, scope: !631, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 561, column: 9, scope: !3570)
!3597 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3596)
!3598 = !DILocation(line: 0, scope: !922, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 561, column: 21, scope: !3570)
!3600 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3599)
!3601 = !DILocation(line: 0, scope: !631, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 561, column: 29, scope: !3570)
!3603 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3602)
!3604 = !DILocation(line: 0, scope: !922, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 561, column: 41, scope: !3570)
!3606 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3605)
!3607 = !DILocation(line: 0, scope: !631, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 561, column: 49, scope: !3570)
!3609 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3608)
!3610 = !DILocation(line: 0, scope: !640, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 559, column: 5, scope: !3570)
!3612 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !3611)
!3613 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !3611)
!3614 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !3611)
!3615 = !DILocation(line: 0, scope: !654, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !3611)
!3617 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !3616)
!3618 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !3616)
!3619 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !3616)
!3620 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !3616)
!3621 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3611)
!3622 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3611)
!3623 = !DILocation(line: 563, column: 34, scope: !3570)
!3624 = !DILocation(line: 563, column: 10, scope: !3570)
!3625 = !DILocation(line: 563, column: 27, scope: !3570)
!3626 = !DILocation(line: 565, column: 66, scope: !3570)
!3627 = !DILocation(line: 565, column: 40, scope: !3570)
!3628 = !DILocation(line: 39, column: 51, scope: !1220, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 566, column: 34, scope: !3570)
!3630 = !DILocation(line: 0, scope: !1220, inlinedAt: !3629)
!3631 = !DILocation(line: 40, column: 10, scope: !1220, inlinedAt: !3629)
!3632 = !DILocation(line: 40, column: 17, scope: !1220, inlinedAt: !3629)
!3633 = !DILocation(line: 41, column: 10, scope: !1220, inlinedAt: !3629)
!3634 = !DILocation(line: 41, column: 21, scope: !1220, inlinedAt: !3629)
!3635 = !DILocation(line: 42, column: 10, scope: !1220, inlinedAt: !3629)
!3636 = !DILocation(line: 42, column: 21, scope: !1220, inlinedAt: !3629)
!3637 = !DILocation(line: 43, column: 10, scope: !1220, inlinedAt: !3629)
!3638 = !DILocation(line: 43, column: 21, scope: !1220, inlinedAt: !3629)
!3639 = !DILocation(line: 44, column: 10, scope: !1220, inlinedAt: !3629)
!3640 = !DILocation(line: 44, column: 21, scope: !1220, inlinedAt: !3629)
!3641 = !DILocation(line: 45, column: 10, scope: !1220, inlinedAt: !3629)
!3642 = !DILocation(line: 45, column: 21, scope: !1220, inlinedAt: !3629)
!3643 = !DILocation(line: 46, column: 10, scope: !1220, inlinedAt: !3629)
!3644 = !DILocation(line: 46, column: 22, scope: !1220, inlinedAt: !3629)
!3645 = !DILocation(line: 47, column: 10, scope: !1220, inlinedAt: !3629)
!3646 = !DILocation(line: 47, column: 23, scope: !1220, inlinedAt: !3629)
!3647 = !DILocation(line: 48, column: 10, scope: !1220, inlinedAt: !3629)
!3648 = !DILocation(line: 48, column: 23, scope: !1220, inlinedAt: !3629)
!3649 = !DILocation(line: 49, column: 10, scope: !1220, inlinedAt: !3629)
!3650 = !DILocation(line: 49, column: 18, scope: !1220, inlinedAt: !3629)
!3651 = !DILocation(line: 50, column: 10, scope: !1220, inlinedAt: !3629)
!3652 = !DILocation(line: 50, column: 14, scope: !1220, inlinedAt: !3629)
!3653 = !DILocation(line: 51, column: 10, scope: !1220, inlinedAt: !3629)
!3654 = !DILocation(line: 51, column: 19, scope: !1220, inlinedAt: !3629)
!3655 = !DILocation(line: 568, column: 32, scope: !3570)
!3656 = !DILocation(line: 568, column: 21, scope: !3570)
!3657 = !DILocation(line: 569, column: 36, scope: !3570)
!3658 = !DILocation(line: 569, column: 27, scope: !3570)
!3659 = !DILocation(line: 569, column: 54, scope: !3570)
!3660 = !DILocation(line: 569, column: 61, scope: !3570)
!3661 = !DILocation(line: 569, column: 47, scope: !3570)
!3662 = !DILocation(line: 569, column: 72, scope: !3570)
!3663 = !DILocation(line: 569, column: 79, scope: !3570)
!3664 = !DILocation(line: 569, column: 65, scope: !3570)
!3665 = !DILocation(line: 569, column: 25, scope: !3570)
!3666 = !DILocation(line: 570, column: 36, scope: !3570)
!3667 = !DILocation(line: 570, column: 27, scope: !3570)
!3668 = !DILocation(line: 570, column: 61, scope: !3570)
!3669 = !DILocation(line: 570, column: 47, scope: !3570)
!3670 = !DILocation(line: 570, column: 79, scope: !3570)
!3671 = !DILocation(line: 570, column: 65, scope: !3570)
!3672 = !DILocation(line: 570, column: 25, scope: !3570)
!3673 = !DILocation(line: 571, column: 36, scope: !3570)
!3674 = !DILocation(line: 571, column: 25, scope: !3570)
!3675 = !DILocation(line: 572, column: 37, scope: !3570)
!3676 = !DILocation(line: 572, column: 26, scope: !3570)
!3677 = !DILocation(line: 573, column: 38, scope: !3570)
!3678 = !DILocation(line: 573, column: 27, scope: !3570)
!3679 = !DILocation(line: 574, column: 38, scope: !3570)
!3680 = !DILocation(line: 574, column: 27, scope: !3570)
!3681 = !DILocation(line: 575, column: 33, scope: !3570)
!3682 = !DILocation(line: 575, column: 22, scope: !3570)
!3683 = !DILocation(line: 576, column: 34, scope: !3570)
!3684 = !DILocation(line: 576, column: 23, scope: !3570)
!3685 = !DILocation(line: 577, column: 29, scope: !3570)
!3686 = !DILocation(line: 577, column: 18, scope: !3570)
!3687 = !DILocation(line: 579, column: 19, scope: !3570)
!3688 = !DILocation(line: 579, column: 10, scope: !3570)
!3689 = !DILocation(line: 579, column: 17, scope: !3570)
!3690 = !DILocation(line: 581, column: 5, scope: !3570)
!3691 = distinct !DISubprogram(name: "halide_hexagon_dma_device_slice", scope: !6, file: !6, line: 584, type: !184, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3692)
!3692 = !{!3693, !3694, !3695, !3696, !3697}
!3693 = !DILocalVariable(name: "user_context", arg: 1, scope: !3691, file: !6, line: 584, type: !13)
!3694 = !DILocalVariable(name: "src", arg: 2, scope: !3691, file: !6, line: 585, type: !181)
!3695 = !DILocalVariable(name: "slice_dim", arg: 3, scope: !3691, file: !6, line: 586, type: !39)
!3696 = !DILocalVariable(name: "slice_pos", arg: 4, scope: !3691, file: !6, line: 586, type: !39)
!3697 = !DILocalVariable(name: "dst", arg: 5, scope: !3691, file: !6, line: 586, type: !40)
!3698 = !DILocation(line: 0, scope: !3691)
!3699 = !DILocation(line: 0, scope: !614, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 587, column: 5, scope: !3691)
!3701 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !3700)
!3702 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !3700)
!3703 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !3700)
!3704 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !3700)
!3705 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !3700)
!3706 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !3700)
!3707 = !DILocation(line: 0, scope: !628, inlinedAt: !3700)
!3708 = !DILocation(line: 0, scope: !631, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 588, column: 9, scope: !3691)
!3710 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3709)
!3711 = !DILocation(line: 0, scope: !912, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 588, column: 71, scope: !3691)
!3713 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3712)
!3714 = !DILocation(line: 0, scope: !631, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 589, column: 9, scope: !3691)
!3716 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3715)
!3717 = !DILocation(line: 0, scope: !922, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 589, column: 21, scope: !3691)
!3719 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3718)
!3720 = !DILocation(line: 0, scope: !631, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 589, column: 29, scope: !3691)
!3722 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3721)
!3723 = !DILocation(line: 0, scope: !922, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 589, column: 41, scope: !3691)
!3725 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3724)
!3726 = !DILocation(line: 0, scope: !631, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 589, column: 49, scope: !3691)
!3728 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3727)
!3729 = !DILocation(line: 0, scope: !640, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 587, column: 5, scope: !3691)
!3731 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !3730)
!3732 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !3730)
!3733 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !3730)
!3734 = !DILocation(line: 0, scope: !654, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !3730)
!3736 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !3735)
!3737 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !3735)
!3738 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !3735)
!3739 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !3735)
!3740 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3730)
!3741 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3730)
!3742 = !DILocation(line: 591, column: 5, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !6, line: 591, column: 5)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !6, line: 591, column: 5)
!3745 = distinct !DILexicalBlock(scope: !3691, file: !6, line: 591, column: 5)
!3746 = !DILocation(line: 0, scope: !1050, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 593, column: 5, scope: !3691)
!3748 = !DILocation(line: 44, column: 27, scope: !1059, inlinedAt: !3747)
!3749 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !3747)
!3750 = !DILocation(line: 48, column: 13, scope: !1062, inlinedAt: !3747)
!3751 = !DILocation(line: 0, scope: !1067, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 593, column: 25, scope: !3691)
!3753 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !3752)
!3754 = !DILocation(line: 0, scope: !1076, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 593, column: 5, scope: !3691)
!3756 = !DILocation(line: 168, column: 13, scope: !1081, inlinedAt: !3755)
!3757 = !DILocation(line: 169, column: 9, scope: !1081, inlinedAt: !3755)
!3758 = !DILocation(line: 49, column: 23, scope: !1086, inlinedAt: !3747)
!3759 = !DILocation(line: 50, column: 18, scope: !1086, inlinedAt: !3747)
!3760 = !DILocation(line: 0, scope: !1089, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 170, column: 13, scope: !1093, inlinedAt: !3755)
!3762 = !DILocation(line: 163, column: 81, scope: !1089, inlinedAt: !3761)
!3763 = !DILocation(line: 163, column: 87, scope: !1089, inlinedAt: !3761)
!3764 = !DILocation(line: 163, column: 77, scope: !1089, inlinedAt: !3761)
!3765 = !DILocation(line: 163, column: 15, scope: !1089, inlinedAt: !3761)
!3766 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !3755)
!3767 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !3755)
!3768 = !DILocation(line: 594, column: 5, scope: !3691)
!3769 = distinct !DISubprogram(name: "halide_hexagon_dma_device_release_crop", scope: !6, file: !6, line: 597, type: !162, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3770)
!3770 = !{!3771, !3772}
!3771 = !DILocalVariable(name: "user_context", arg: 1, scope: !3769, file: !6, line: 597, type: !13)
!3772 = !DILocalVariable(name: "buf", arg: 2, scope: !3769, file: !6, line: 597, type: !40)
!3773 = !DILocation(line: 0, scope: !3769)
!3774 = !DILocation(line: 0, scope: !614, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 598, column: 5, scope: !3769)
!3776 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !3775)
!3777 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !3775)
!3778 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !3775)
!3779 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !3775)
!3780 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !3775)
!3781 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !3775)
!3782 = !DILocation(line: 0, scope: !628, inlinedAt: !3775)
!3783 = !DILocation(line: 0, scope: !631, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 599, column: 9, scope: !3769)
!3785 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3784)
!3786 = !DILocation(line: 0, scope: !912, inlinedAt: !3787)
!3787 = distinct !DILocation(line: 599, column: 78, scope: !3769)
!3788 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3787)
!3789 = !DILocation(line: 0, scope: !631, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 600, column: 9, scope: !3769)
!3791 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3790)
!3792 = !DILocation(line: 0, scope: !922, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 600, column: 21, scope: !3769)
!3794 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3793)
!3795 = !DILocation(line: 0, scope: !631, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 600, column: 29, scope: !3769)
!3797 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3796)
!3798 = !DILocation(line: 0, scope: !640, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 598, column: 5, scope: !3769)
!3800 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !3799)
!3801 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !3799)
!3802 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !3799)
!3803 = !DILocation(line: 0, scope: !654, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !3799)
!3805 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !3804)
!3806 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !3804)
!3807 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !3804)
!3808 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !3804)
!3809 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3799)
!3810 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3799)
!3811 = !DILocation(line: 602, column: 5, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3813, file: !6, line: 602, column: 5)
!3813 = distinct !DILexicalBlock(scope: !3769, file: !6, line: 602, column: 5)
!3814 = !DILocation(line: 602, column: 5, scope: !3813)
!3815 = !DILocation(line: 602, column: 5, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3812, file: !6, line: 602, column: 5)
!3817 = !DILocation(line: 603, column: 36, scope: !3769)
!3818 = !DILocation(line: 603, column: 10, scope: !3769)
!3819 = !DILocation(line: 603, column: 5, scope: !3769)
!3820 = !DILocation(line: 604, column: 17, scope: !3769)
!3821 = !DILocation(line: 606, column: 5, scope: !3769)
!3822 = !DISubprogram(name: "free", scope: !26, file: !26, line: 86, type: !1623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!3823 = distinct !DISubprogram(name: "halide_hexagon_dma_device_sync", scope: !6, file: !6, line: 609, type: !162, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3824)
!3824 = !{!3825, !3826}
!3825 = !DILocalVariable(name: "user_context", arg: 1, scope: !3823, file: !6, line: 609, type: !13)
!3826 = !DILocalVariable(name: "buf", arg: 2, scope: !3823, file: !6, line: 609, type: !40)
!3827 = !DILocation(line: 0, scope: !3823)
!3828 = !DILocation(line: 0, scope: !614, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 610, column: 5, scope: !3823)
!3830 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !3829)
!3831 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !3829)
!3832 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !3829)
!3833 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !3829)
!3834 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !3829)
!3835 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !3829)
!3836 = !DILocation(line: 0, scope: !628, inlinedAt: !3829)
!3837 = !DILocation(line: 0, scope: !631, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 611, column: 9, scope: !3823)
!3839 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3838)
!3840 = !DILocation(line: 0, scope: !912, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 611, column: 70, scope: !3823)
!3842 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3841)
!3843 = !DILocation(line: 0, scope: !631, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 612, column: 9, scope: !3823)
!3845 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3844)
!3846 = !DILocation(line: 0, scope: !922, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 612, column: 21, scope: !3823)
!3848 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3847)
!3849 = !DILocation(line: 0, scope: !631, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 612, column: 29, scope: !3823)
!3851 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3850)
!3852 = !DILocation(line: 0, scope: !640, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 610, column: 5, scope: !3823)
!3854 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !3853)
!3855 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !3853)
!3856 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !3853)
!3857 = !DILocation(line: 0, scope: !654, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !3853)
!3859 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !3858)
!3860 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !3858)
!3861 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !3858)
!3862 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !3858)
!3863 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3853)
!3864 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3853)
!3865 = !DILocation(line: 614, column: 5, scope: !3823)
!3866 = distinct !DISubprogram(name: "halide_hexagon_dma_device_and_host_malloc", scope: !6, file: !6, line: 663, type: !162, scopeLine: 663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3867)
!3867 = !{!3868, !3869}
!3868 = !DILocalVariable(name: "user_context", arg: 1, scope: !3866, file: !6, line: 663, type: !13)
!3869 = !DILocalVariable(name: "buf", arg: 2, scope: !3866, file: !6, line: 663, type: !40)
!3870 = !DILocation(line: 0, scope: !3866)
!3871 = !DILocation(line: 0, scope: !614, inlinedAt: !3872)
!3872 = distinct !DILocation(line: 664, column: 5, scope: !3866)
!3873 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !3872)
!3874 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !3872)
!3875 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !3872)
!3876 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !3872)
!3877 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !3872)
!3878 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !3872)
!3879 = !DILocation(line: 0, scope: !628, inlinedAt: !3872)
!3880 = !DILocation(line: 0, scope: !631, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 665, column: 9, scope: !3866)
!3882 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3881)
!3883 = !DILocation(line: 0, scope: !912, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 665, column: 81, scope: !3866)
!3885 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3884)
!3886 = !DILocation(line: 0, scope: !631, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 666, column: 9, scope: !3866)
!3888 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3887)
!3889 = !DILocation(line: 0, scope: !922, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 666, column: 21, scope: !3866)
!3891 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3890)
!3892 = !DILocation(line: 0, scope: !631, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 666, column: 29, scope: !3866)
!3894 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3893)
!3895 = !DILocation(line: 0, scope: !640, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 664, column: 5, scope: !3866)
!3897 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !3896)
!3898 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !3896)
!3899 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !3896)
!3900 = !DILocation(line: 0, scope: !654, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !3896)
!3902 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !3901)
!3903 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !3901)
!3904 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !3901)
!3905 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !3901)
!3906 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3896)
!3907 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3896)
!3908 = !DILocation(line: 668, column: 12, scope: !3866)
!3909 = !DILocation(line: 668, column: 5, scope: !3866)
!3910 = !DISubprogram(name: "halide_default_device_and_host_malloc", scope: !201, file: !201, line: 41, type: !37, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!3911 = distinct !DISubprogram(name: "halide_hexagon_dma_device_and_host_free", scope: !6, file: !6, line: 671, type: !162, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3912)
!3912 = !{!3913, !3914}
!3913 = !DILocalVariable(name: "user_context", arg: 1, scope: !3911, file: !6, line: 671, type: !13)
!3914 = !DILocalVariable(name: "buf", arg: 2, scope: !3911, file: !6, line: 671, type: !40)
!3915 = !DILocation(line: 0, scope: !3911)
!3916 = !DILocation(line: 0, scope: !614, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 672, column: 5, scope: !3911)
!3918 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !3917)
!3919 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !3917)
!3920 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !3917)
!3921 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !3917)
!3922 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !3917)
!3923 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !3917)
!3924 = !DILocation(line: 0, scope: !628, inlinedAt: !3917)
!3925 = !DILocation(line: 0, scope: !631, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 673, column: 9, scope: !3911)
!3927 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3926)
!3928 = !DILocation(line: 0, scope: !912, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 673, column: 79, scope: !3911)
!3930 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3929)
!3931 = !DILocation(line: 0, scope: !631, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 674, column: 9, scope: !3911)
!3933 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3932)
!3934 = !DILocation(line: 0, scope: !922, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 674, column: 21, scope: !3911)
!3936 = !DILocation(line: 114, column: 15, scope: !922, inlinedAt: !3935)
!3937 = !DILocation(line: 0, scope: !631, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 674, column: 29, scope: !3911)
!3939 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3938)
!3940 = !DILocation(line: 0, scope: !640, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 672, column: 5, scope: !3911)
!3942 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !3941)
!3943 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !3941)
!3944 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !3941)
!3945 = !DILocation(line: 0, scope: !654, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !3941)
!3947 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !3946)
!3948 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !3946)
!3949 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !3946)
!3950 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !3946)
!3951 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3941)
!3952 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3941)
!3953 = !DILocation(line: 676, column: 12, scope: !3911)
!3954 = !DILocation(line: 676, column: 5, scope: !3911)
!3955 = !DISubprogram(name: "halide_default_device_and_host_free", scope: !201, file: !201, line: 43, type: !37, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!3956 = distinct !DISubprogram(name: "halide_hexagon_dma_device_interface", scope: !6, file: !6, line: 679, type: !3957, scopeLine: 679, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !595)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!47}
!3959 = !DILocation(line: 680, column: 5, scope: !3956)
!3960 = distinct !DISubprogram(name: "halide_hexagon_dma_device_release", scope: !6, file: !6, line: 683, type: !213, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3961)
!3961 = !{!3962}
!3962 = !DILocalVariable(name: "user_context", arg: 1, scope: !3960, file: !6, line: 683, type: !13)
!3963 = !DILocation(line: 0, scope: !3960)
!3964 = !DILocation(line: 0, scope: !614, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 684, column: 5, scope: !3960)
!3966 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !3965)
!3967 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !3965)
!3968 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !3965)
!3969 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !3965)
!3970 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !3965)
!3971 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !3965)
!3972 = !DILocation(line: 0, scope: !628, inlinedAt: !3965)
!3973 = !DILocation(line: 0, scope: !631, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 685, column: 9, scope: !3960)
!3975 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3974)
!3976 = !DILocation(line: 0, scope: !912, inlinedAt: !3977)
!3977 = distinct !DILocation(line: 685, column: 73, scope: !3960)
!3978 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !3977)
!3979 = !DILocation(line: 0, scope: !631, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 685, column: 89, scope: !3960)
!3981 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !3980)
!3982 = !DILocation(line: 0, scope: !640, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 684, column: 5, scope: !3960)
!3984 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !3983)
!3985 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !3983)
!3986 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !3983)
!3987 = !DILocation(line: 0, scope: !654, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !3983)
!3989 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !3988)
!3990 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !3988)
!3991 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !3988)
!3992 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !3988)
!3993 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !3983)
!3994 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !3983)
!3995 = !DILocation(line: 687, column: 5, scope: !3960)
!3996 = distinct !DISubprogram(name: "halide_hexagon_dma_power_mode_voting", scope: !6, file: !6, line: 690, type: !3997, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !4000)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!39, !13, !3999}
!3999 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_hexagon_power_mode_t", file: !315, line: 80, baseType: !314)
!4000 = !{!4001, !4002}
!4001 = !DILocalVariable(name: "user_context", arg: 1, scope: !3996, file: !6, line: 690, type: !13)
!4002 = !DILocalVariable(name: "cornercase", arg: 2, scope: !3996, file: !6, line: 690, type: !3999)
!4003 = !DILocation(line: 0, scope: !3996)
!4004 = !DILocation(line: 0, scope: !614, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 691, column: 5, scope: !3996)
!4006 = !DILocation(line: 44, column: 27, scope: !623, inlinedAt: !4005)
!4007 = !DILocation(line: 48, column: 13, scope: !628, inlinedAt: !4005)
!4008 = !DILocation(line: 48, column: 13, scope: !626, inlinedAt: !4005)
!4009 = !DILocation(line: 49, column: 23, scope: !650, inlinedAt: !4005)
!4010 = !DILocation(line: 50, column: 18, scope: !650, inlinedAt: !4005)
!4011 = !DILocation(line: 51, column: 9, scope: !650, inlinedAt: !4005)
!4012 = !DILocation(line: 0, scope: !628, inlinedAt: !4005)
!4013 = !DILocation(line: 0, scope: !631, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 692, column: 9, scope: !3996)
!4015 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !4014)
!4016 = !DILocation(line: 0, scope: !912, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 692, column: 71, scope: !3996)
!4018 = !DILocation(line: 98, column: 15, scope: !912, inlinedAt: !4017)
!4019 = !DILocation(line: 0, scope: !631, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 692, column: 87, scope: !3996)
!4021 = !DILocation(line: 62, column: 19, scope: !637, inlinedAt: !4020)
!4022 = !DILocation(line: 0, scope: !640, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 691, column: 5, scope: !3996)
!4024 = !DILocation(line: 167, column: 13, scope: !647, inlinedAt: !4023)
!4025 = !DILocation(line: 168, column: 13, scope: !645, inlinedAt: !4023)
!4026 = !DILocation(line: 169, column: 9, scope: !645, inlinedAt: !4023)
!4027 = !DILocation(line: 0, scope: !654, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 170, column: 13, scope: !658, inlinedAt: !4023)
!4029 = !DILocation(line: 163, column: 81, scope: !654, inlinedAt: !4028)
!4030 = !DILocation(line: 163, column: 87, scope: !654, inlinedAt: !4028)
!4031 = !DILocation(line: 163, column: 77, scope: !654, inlinedAt: !4028)
!4032 = !DILocation(line: 163, column: 15, scope: !654, inlinedAt: !4028)
!4033 = !DILocation(line: 174, column: 17, scope: !664, inlinedAt: !4023)
!4034 = !DILocation(line: 181, column: 13, scope: !668, inlinedAt: !4023)
!4035 = !DILocation(line: 693, column: 5, scope: !3996)
!4036 = !DILocation(line: 695, column: 16, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !3996, file: !6, line: 693, column: 25)
!4038 = !DILocation(line: 695, column: 9, scope: !4037)
!4039 = !DILocation(line: 697, column: 16, scope: !4037)
!4040 = !DILocation(line: 697, column: 9, scope: !4037)
!4041 = !DILocation(line: 699, column: 16, scope: !4037)
!4042 = !DILocation(line: 699, column: 9, scope: !4037)
!4043 = !DILocation(line: 701, column: 16, scope: !4037)
!4044 = !DILocation(line: 701, column: 9, scope: !4037)
!4045 = !DILocation(line: 703, column: 16, scope: !4037)
!4046 = !DILocation(line: 703, column: 9, scope: !4037)
!4047 = !DILocation(line: 705, column: 16, scope: !4037)
!4048 = !DILocation(line: 705, column: 9, scope: !4037)
!4049 = !DILocation(line: 707, column: 16, scope: !4037)
!4050 = !DILocation(line: 707, column: 9, scope: !4037)
!4051 = !DILocation(line: 0, scope: !1050, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 709, column: 9, scope: !4037)
!4053 = !DILocation(line: 44, column: 27, scope: !1059, inlinedAt: !4052)
!4054 = !DILocation(line: 48, column: 13, scope: !1064, inlinedAt: !4052)
!4055 = !DILocation(line: 48, column: 13, scope: !1062, inlinedAt: !4052)
!4056 = !DILocation(line: 49, column: 23, scope: !1086, inlinedAt: !4052)
!4057 = !DILocation(line: 50, column: 18, scope: !1086, inlinedAt: !4052)
!4058 = !DILocation(line: 51, column: 9, scope: !1086, inlinedAt: !4052)
!4059 = !DILocation(line: 0, scope: !1064, inlinedAt: !4052)
!4060 = !DILocation(line: 0, scope: !1067, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 709, column: 29, scope: !4037)
!4062 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !4061)
!4063 = !DILocation(line: 0, scope: !1855, inlinedAt: !4064)
!4064 = distinct !DILocation(line: 709, column: 88, scope: !4037)
!4065 = !DILocation(line: 73, column: 48, scope: !1855, inlinedAt: !4064)
!4066 = !DILocation(line: 73, column: 15, scope: !1855, inlinedAt: !4064)
!4067 = !DILocation(line: 0, scope: !1067, inlinedAt: !4068)
!4068 = distinct !DILocation(line: 709, column: 102, scope: !4037)
!4069 = !DILocation(line: 62, column: 19, scope: !1073, inlinedAt: !4068)
!4070 = !DILocation(line: 0, scope: !1076, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 709, column: 9, scope: !4037)
!4072 = !DILocation(line: 167, column: 13, scope: !1083, inlinedAt: !4071)
!4073 = !DILocation(line: 168, column: 13, scope: !1081, inlinedAt: !4071)
!4074 = !DILocation(line: 169, column: 9, scope: !1081, inlinedAt: !4071)
!4075 = !DILocation(line: 0, scope: !1089, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 170, column: 13, scope: !1093, inlinedAt: !4071)
!4077 = !DILocation(line: 163, column: 81, scope: !1089, inlinedAt: !4076)
!4078 = !DILocation(line: 163, column: 87, scope: !1089, inlinedAt: !4076)
!4079 = !DILocation(line: 163, column: 77, scope: !1089, inlinedAt: !4076)
!4080 = !DILocation(line: 163, column: 15, scope: !1089, inlinedAt: !4076)
!4081 = !DILocation(line: 172, column: 17, scope: !1099, inlinedAt: !4071)
!4082 = !DILocation(line: 181, column: 13, scope: !1102, inlinedAt: !4071)
!4083 = !DILocation(line: 710, column: 9, scope: !4037)
!4084 = !DILocation(line: 0, scope: !4037)
!4085 = !DILocation(line: 712, column: 1, scope: !3996)
!4086 = !DISubprogram(name: "nDmaWrapper_PowerVoting", scope: !281, file: !281, line: 347, type: !4087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!39, !28}
!4089 = !DISubprogram(name: "HAP_cache_unlock", scope: !281, file: !281, line: 163, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4090 = !DISubprogram(name: "halide_mutex_lock", scope: !21, file: !21, line: 133, type: !4091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{null, !1631}
!4093 = !DISubprogram(name: "halide_mutex_unlock", scope: !21, file: !21, line: 134, type: !4091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4094 = !DISubprogram(name: "nDmaWrapper_GetRecommendedWalkSize", scope: !281, file: !281, line: 249, type: !4095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!39, !280, !15, !4097}
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 32)
!4098 = !DISubprogram(name: "nDmaWrapper_GetRecommendedIntermBufStride", scope: !281, file: !281, line: 280, type: !4099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!39, !280, !4097, !15}
!4101 = !DISubprogram(name: "halide_hexagon_allocate_from_dma_pool", scope: !1566, file: !1566, line: 16, type: !4102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!13, !13, !13}
!4104 = !DISubprogram(name: "nDmaWrapper_DmaTransferSetup", scope: !281, file: !281, line: 326, type: !4105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!39, !13, !4107}
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 32)
!4108 = !DISubprogram(name: "nDmaWrapper_Move", scope: !281, file: !281, line: 204, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4109 = !DISubprogram(name: "nDmaWrapper_Wait", scope: !281, file: !281, line: 218, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4110 = !DISubprogram(name: "halide_hexagon_free_to_dma_pool", scope: !1566, file: !1566, line: 18, type: !4111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!39, !13, !13, !13}
!4113 = !DISubprogram(name: "halide_uint64_to_string", scope: !26, file: !26, line: 123, type: !4114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!342, !342, !342, !45, !39}
!4116 = !DISubprogram(name: "malloc", scope: !26, file: !26, line: 87, type: !4117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!13, !28}
!4119 = !DISubprogram(name: "HAP_cache_lock", scope: !281, file: !281, line: 154, type: !4120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!13, !28, !1438}
!4122 = !DISubprogram(name: "halide_pointer_to_string", scope: !26, file: !26, line: 124, type: !4123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!342, !342, !342, !385}
!4125 = !DISubprogram(name: "halide_error", scope: !21, file: !21, line: 111, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4126 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !21, file: !21, line: 973, type: !4127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!39, !13, !385, !45}
!4129 = !DISubprogram(name: "halide_string_to_string", scope: !26, file: !26, line: 120, type: !4130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!342, !342, !342, !358}
!4132 = !DISubprogram(name: "halide_int64_to_string", scope: !26, file: !26, line: 122, type: !4133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!342, !342, !342, !364, !39}
!4135 = !DISubprogram(name: "halide_buffer_to_string", scope: !26, file: !26, line: 125, type: !4136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !595)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!342, !342, !342, !181}
