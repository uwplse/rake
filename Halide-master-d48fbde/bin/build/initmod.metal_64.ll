; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_metal_device = type opaque
%struct.halide_metal_command_queue = type opaque
%"class.Halide::Internal::GPUCompilationCache" = type { %struct.halide_mutex, i32, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, i32, i32 }
%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation" = type { %struct.halide_metal_device*, %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, i32, i32 }
%"struct.Halide::Runtime::Internal::Metal::mtl_library" = type opaque
%"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_descriptor_1" = type { i64, i64 }
%struct.ObjectiveCClass = type opaque
%"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal" = type { i8*, i32, i32, void (%"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"*, %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"*)*, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_descriptor_1"* }
%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer" = type opaque
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"struct.Halide::Runtime::Internal::Metal::mtl_buffer" = type opaque
%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder" = type opaque
%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder" = type opaque
%"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state" = type opaque
%"struct.Halide::Runtime::Internal::Metal::mtl_function" = type opaque
%"struct.Halide::Runtime::Internal::Metal::NSRange" = type { i64, i64 }
%"class.Halide::Runtime::Internal::Metal::MetalContextHolder" = type <{ i8*, i8*, %struct.halide_metal_device*, %struct.halide_metal_command_queue*, i32, [4 x i8] }>
%"struct.Halide::Runtime::Internal::Metal::device_handle" = type { %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, i64 }

$_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcmEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_ = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi = comdat any

$_ZGVN6Halide7Runtime8Internal5Metal17compilation_cacheE = comdat any

@.str.1 = private unnamed_addr constant [18 x i8] c"NSAutoreleasePool\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"alloc\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"drain\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"retain\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"NSString\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"initWithBytesNoCopy:length:encoding:freeWhenDone:\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%@\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"newBufferWithLength:options:\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"newCommandQueue\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"commandBuffer\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"setLabel:\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"addCompletedHandler:\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"computeCommandEncoder\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"blitCommandEncoder\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"newComputePipelineStateWithFunction:error:\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"maxTotalThreadsPerThreadgroup\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"setComputePipelineState:\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"endEncoding\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"didModifyRange:\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"synchronizeResource:\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"storageMode\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"respondsToSelector:\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"setBytes:length:atIndex:\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"MTLCompileOptions\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"setFastMathEnabled:\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"newLibraryWithSource:options:error:\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"newFunctionWithName:\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"setBuffer:offset:atIndex:\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"setThreadgroupMemoryLength:atIndex:\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"waitUntilCompleted\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"contents\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"firstObject\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"MTLCopyAllDevices\00", align 1
@_ZN6Halide7Runtime8Internal5Metal11thread_lockE = weak global i8 0, align 1
@_ZN6Halide7Runtime8Internal5Metal6deviceE = weak local_unnamed_addr global %struct.halide_metal_device* null, align 8
@_ZN6Halide7Runtime8Internal5Metal5queueE = weak local_unnamed_addr global %struct.halide_metal_command_queue* null, align 8
@_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE = weak global %"class.Halide::Internal::GPUCompilationCache" zeroinitializer, align 8
@_ZGVN6Halide7Runtime8Internal5Metal17compilation_cacheE = weak local_unnamed_addr global i64 0, comdat, align 4
@_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE = weak local_unnamed_addr global i8 0, align 1
@_ZN6Halide7Runtime8Internal5Metal24metal_api_checked_deviceE = weak local_unnamed_addr global %struct.halide_metal_device* null, align 8
@.str.41 = private unnamed_addr constant [47 x i8] c"Metal: cannot allocate system default device.\0A\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"Metal: cannot allocate command queue.\0A\00", align 1
@.str.44 = private unnamed_addr constant [134 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:372 Assert failed: (device == nullptr) || (queue != nullptr)\0A\00", align 1
@_ZN6Halide7Runtime8Internal5Metal43command_buffer_completed_handler_descriptorE = weak global %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_descriptor_1" { i64 0, i64 32 }, align 8
@_NSConcreteGlobalBlock = external global %struct.ObjectiveCClass, align 1
@_ZN6Halide7Runtime8Internal5Metal38command_buffer_completed_handler_blockE = weak global %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal" { i8* bitcast (%struct.ObjectiveCClass* @_NSConcreteGlobalBlock to i8*), i32 805306368, i32 0, void (%"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"*, %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"*)* @_ZN6Halide7Runtime8Internal5Metal39command_buffer_completed_handler_invokeEPNS2_46command_buffer_completed_handler_block_literalEPNS2_18mtl_command_bufferE, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_descriptor_1"* @_ZN6Halide7Runtime8Internal5Metal43command_buffer_completed_handler_descriptorE }, align 8
@.str.48 = private unnamed_addr constant [102 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:468 Assert failed: size != 0\0A\00", align 1
@.str.49 = private unnamed_addr constant [116 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:476 Assert failed: buf->dim[i].stride >= 0\0A\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"Metal: Failed to allocate buffer of size \00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE = weak global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* null, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal5Metal27metal_device_interface_implE }, align 8
@.str.56 = private unnamed_addr constant [211 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:529 Assert failed: (((device_handle *)buf->device)->offset == 0) && \22halide_metal_device_free on buffer obtained from halide_device_crop\22\0A\00", align 1
@.str.57 = private unnamed_addr constant [111 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:561 Assert failed: library != nullptr\0A\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"halide_metal_device_sync_internal\00", align 1
@.str.62 = private unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:661 Assert failed: buffer->host && buffer->device\0A\00", align 1
@.str.66 = private unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:675 Assert failed: total_size != 0\0A\00", align 1
@.str.67 = private unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:704 Assert failed: buffer->host && buffer->device\0A\00", align 1
@.str.68 = private unnamed_addr constant [128 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:705 Assert failed: buffer->dimensions <= MAX_COPY_DIMS\0A\00", align 1
@.str.69 = private unnamed_addr constant [43 x i8] c"Metal: Could not allocate command buffer.\0A\00", align 1
@.str.70 = private unnamed_addr constant [52 x i8] c"Metal: Could not allocate compute command encoder.\0A\00", align 1
@.str.71 = private unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:759 Assert failed: found && library != nullptr\0A\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"Metal: Could not get function \00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"from Metal library.\0A\00", align 1
@.str.74 = private unnamed_addr constant [43 x i8] c"Metal: Could not allocate pipeline state.\0A\00", align 1
@.str.75 = private unnamed_addr constant [133 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:795 Assert failed: (arg_sizes[i] & (arg_sizes[i] - 1)) == 0\0A\00", align 1
@.str.79 = private unnamed_addr constant [128 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:819 Assert failed: padded_args_size >= total_args_size\0A\00", align 1
@.str.80 = private unnamed_addr constant [45 x i8] c"Metal: Could not allocate arguments buffer.\0A\00", align 1
@.str.81 = private unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:840 Assert failed: offset == total_args_size\0A\00", align 1
@.str.82 = private unnamed_addr constant [125 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:853 Assert failed: arg_sizes[i] == sizeof(uint64_t)\0A\00", align 1
@_ZZ16halide_metal_runE16total_dispatches = internal unnamed_addr global i32 0, align 4
@.str.92 = private unnamed_addr constant [52 x i8] c"Buffer has too many dimensions to copy to/from GPU\0A\00", align 1
@.str.93 = private unnamed_addr constant [175 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:922 Assert failed: dst_device_interface == nullptr || dst_device_interface == &metal_device_interface\0A\00", align 1
@.str.94 = private unnamed_addr constant [140 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:926 Assert failed: dst_device_interface == &metal_device_interface\0A\00", align 1
@.str.96 = private unnamed_addr constant [115 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:937 Assert failed: to_host || dst->device\0A\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"halide_metal_buffer_copy\00", align 1
@.str.102 = private unnamed_addr constant [102 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:982 Assert failed: from_host\0A\00", align 1
@.str.103 = private unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:991 Assert failed: total_size != 0\0A\00", align 1
@.str.104 = private unnamed_addr constant [63 x i8] c"halide_metal_device_crop: malloc failed making device handle.\0A\00", align 1
@.str.106 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:1082 Assert failed: buf->device == 0\0A\00", align 1
@.str.107 = private unnamed_addr constant [63 x i8] c"halide_metal_wrap_buffer: malloc failed making device handle.\0A\00", align 1
@.str.108 = private unnamed_addr constant [142 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:1104 Assert failed: buf->device_interface == &metal_device_interface\0A\00", align 1
@.str.109 = private unnamed_addr constant [142 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:1116 Assert failed: buf->device_interface == &metal_device_interface\0A\00", align 1
@.str.110 = private unnamed_addr constant [142 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:1124 Assert failed: buf->device_interface == &metal_device_interface\0A\00", align 1
@_ZN6Halide7Runtime8Internal5Metal27metal_device_interface_implE = weak global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_sync, i32 (i8*)* @halide_metal_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_metal_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_metal_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_metal_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_metal_wrap_buffer, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_detach_buffer }, align 8
@.str.111 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1
@.str.116 = private unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:69 Assert failed: false\0A\00", align 1
@.str.117 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:127 Assert failed: result\0A\00", align 1
@.str.118 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:215 Assert failed: result\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_metal.cpp, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_metal_cleanup, i8* null }]

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
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #8
  br label %50

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %2, %23 ], [ %44, %39 ]
  %42 = phi i64 [ %3, %23 ], [ %46, %39 ]
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %41, i64 %42) #9
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
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #9
  br label %11

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #10
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
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #10
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #9
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #9
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i8* @_ZN6Halide7Runtime8Internal23create_autorelease_poolEv() local_unnamed_addr #0 {
  %1 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)) #8
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #8
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %1, i8* %2) #8
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #8
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #8
  ret i8* %5
}

declare void @objc_msgSend() local_unnamed_addr #2

declare i8* @objc_getClass(i8*) local_unnamed_addr #2

declare i8* @sel_getUid(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal22drain_autorelease_poolEPv(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #8
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal16retain_ns_objectEPv(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #8
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #8
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %0, i64 %1) local_unnamed_addr #0 {
  %3 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #8
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #8
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #8
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0)) #8
  %7 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*, i8*, i64, i64, i8)*)(i8* %5, i8* %6, i8* %0, i64 %1, i64 4, i8 zeroext 0) #8
  ret i8* %7
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal18ns_log_utf8_stringEPKc(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 2) #9
  %3 = tail call i64 @strlen(i8* %0) #8
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %0, i64 %3) #9
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %4) #8
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #9
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #9
  ret void
}

declare i64 @strlen(i8*) local_unnamed_addr #2

declare void @NSLog(i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 2) #9
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %0) #8
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #9
  ret void
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* @_ZN6Halide7Runtime8Internal5Metal10new_bufferEP19halide_metal_devicem(%struct.halide_metal_device* %0, i64 %1) local_unnamed_addr #0 {
  %3 = bitcast %struct.halide_metal_device* %0 to i8*
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0)) #8
  %5 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* (i8*, i8*, i64, i64)*)(i8* %3, i8* %4, i64 %1, i64 0) #8
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %5
}

; Function Attrs: nounwind mustprogress
define weak %struct.halide_metal_command_queue* @_ZN6Halide7Runtime8Internal5Metal17new_command_queueEP19halide_metal_device(%struct.halide_metal_device* %0) local_unnamed_addr #0 {
  %2 = bitcast %struct.halide_metal_device* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #8
  %4 = tail call %struct.halide_metal_command_queue* bitcast (void ()* @objc_msgSend to %struct.halide_metal_command_queue* (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret %struct.halide_metal_command_queue* %4
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcm(%struct.halide_metal_command_queue* %0, i8* %1, i64 %2) local_unnamed_addr #0 {
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %1, i64 %2) #9
  %5 = bitcast %struct.halide_metal_command_queue* %0 to i8*
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)) #8
  %7 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* (i8*, i8*)*)(i8* %5, i8* %6) #8
  %8 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %7 to i8*
  %9 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*)*)(i8* %8, i8* %9, i8* %4) #8
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #9
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %7
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal36add_command_buffer_completed_handlerEPNS2_18mtl_command_bufferEPNS2_46command_buffer_completed_handler_block_literalE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* %1) local_unnamed_addr #0 {
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"*)*)(i8* %3, i8* %4, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* %1) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i8* @_ZN6Halide7Runtime8Internal5Metal20command_buffer_errorEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #8
  %4 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret i8* %4
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal27new_compute_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0)) #8
  %4 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %4
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal24new_blit_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0)) #8
  %4 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %4
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* @_ZN6Halide7Runtime8Internal5Metal40new_compute_pipeline_state_with_functionEP19halide_metal_devicePNS2_12mtl_functionE(%struct.halide_metal_device* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %1) local_unnamed_addr #0 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = bitcast %struct.halide_metal_device* %0 to i8*
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0)) #8
  %7 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %1 to i8*
  %8 = call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* (i8*, i8*, i8*, i8**)*)(i8* %5, i8* %6, i8* %7, i8** nonnull %3) #8
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8, !tbaa !37
  call void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %11) #9
  br label %12

12:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %8
}

; Function Attrs: nounwind mustprogress
define weak i64 @_ZN6Halide7Runtime8Internal5Metal37get_max_total_threads_per_threadgroupEPNS2_26mtl_compute_pipeline_stateE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0)) #8
  %4 = tail call i64 bitcast (void ()* @objc_msgSend to i64 (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret i64 %4
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal26set_compute_pipeline_stateEPNS2_27mtl_compute_command_encoderEPNS2_26mtl_compute_pipeline_stateE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %1) local_unnamed_addr #0 {
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #8
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %1 to i8*
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*)*)(i8* %3, i8* %4, i8* %5) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal16did_modify_rangeEPNS2_10mtl_bufferENS2_7NSRangeE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0, %"struct.Halide::Runtime::Internal::Metal::NSRange"* byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 8 %1) local_unnamed_addr #0 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Metal::NSRange", align 8
  %4 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0 to i8*
  %5 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0)) #8
  %6 = bitcast %"struct.Halide::Runtime::Internal::Metal::NSRange"* %3 to i8*
  %7 = bitcast %"struct.Halide::Runtime::Internal::Metal::NSRange"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %6, i8* nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !38
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::NSRange"*)*)(i8* %4, i8* %5, %"struct.Halide::Runtime::Internal::Metal::NSRange"* nonnull byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 8 %3) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal20synchronize_resourceEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1) local_unnamed_addr #0 {
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0 to i8*
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*)*)(i8* %3, i8* %4, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0)) #8
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0 to i8*
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #8
  %5 = tail call zeroext i1 bitcast (void ()* @objc_msgSend to i1 (i8*, i8*, i8*)*)(i8* %3, i8* %4, i8* %2) #8
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call i32 bitcast (void ()* @objc_msgSend to i32 (i8*, i8*)*)(i8* %3, i8* %2) #8
  %8 = icmp eq i32 %7, 1
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi i1 [ %8, %6 ], [ false, %1 ]
  ret i1 %10
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal24buffer_to_buffer_1d_copyEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferEmS6_mm(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, i64 %2, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %3, i64 %4, i64 %5) local_unnamed_addr #0 {
  %7 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0 to i8*
  %8 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.26, i64 0, i64 0)) #8
  %9 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1 to i8*
  %10 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %3 to i8*
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*, i64, i8*, i64, i64)*)(i8* %7, i8* %8, i8* %9, i64 %2, i8* %10, i64 %4, i64 %5) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_24mtl_blit_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal5Metal25buffer_supports_set_bytesEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0)) #8
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #8
  %5 = tail call zeroext i1 bitcast (void ()* @objc_msgSend to i1 (i8*, i8*, i8*)*)(i8* %3, i8* %4, i8* %2) #8
  ret i1 %5
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::Metal::mtl_library"* @_ZN6Halide7Runtime8Internal5Metal23new_library_with_sourceEP19halide_metal_devicePKcm(%struct.halide_metal_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %6 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %1, i64 %2) #9
  %7 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0)) #8
  %8 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #8
  %9 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %7, i8* %8) #8
  %10 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #8
  %11 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %9, i8* %10) #8
  %12 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8)*)(i8* %11, i8* %12, i8 zeroext 0) #8
  %13 = bitcast %struct.halide_metal_device* %0 to i8*
  %14 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0)) #8
  %15 = call %"struct.Halide::Runtime::Internal::Metal::mtl_library"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (i8*, i8*, i8*, i8*, i8**)*)(i8* %13, i8* %14, i8* %6, i8* %11, i8** nonnull %4) #8
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %11) #9
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %6) #9
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8, !tbaa !37
  call void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %18) #9
  br label %19

19:                                               ; preds = %17, %3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %15
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::Metal::mtl_function"* @_ZN6Halide7Runtime8Internal5Metal22new_function_with_nameEPNS2_11mtl_libraryEPKcm(%"struct.Halide::Runtime::Internal::Metal::mtl_library"* %0, i8* %1, i64 %2) local_unnamed_addr #0 {
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %1, i64 %2) #9
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %0 to i8*
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0)) #8
  %7 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_function"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_function"* (i8*, i8*, i8*)*)(i8* %5, i8* %6, i8* %4) #8
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #9
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %7
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal16set_input_bufferEPNS2_27mtl_compute_command_encoderEPNS2_10mtl_bufferEyj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, i64 %2, i32 %3) local_unnamed_addr #0 {
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0)) #8
  %7 = zext i32 %3 to i64
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, i64, i64)*)(i8* %5, i8* %6, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, i64 %2, i64 %7) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal27set_input_buffer_from_bytesEPNS2_27mtl_compute_command_encoderEPhjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, i8* %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0)) #8
  %7 = zext i32 %2 to i64
  %8 = zext i32 %3 to i64
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*, i64, i64)*)(i8* %5, i8* %6, i8* %1, i64 %7, i64 %8) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal29set_threadgroup_memory_lengthEPNS2_27mtl_compute_command_encoderEjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, i32 %1, i32 %2) local_unnamed_addr #0 {
  %4 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*
  %5 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0)) #8
  %6 = zext i32 %1 to i64
  %7 = zext i32 %2 to i64
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i64, i64)*)(i8* %4, i8* %5, i64 %6, i64 %7) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal20wait_until_completedEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0)) #8
  %4 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret i8* %4
}

; Function Attrs: nounwind mustprogress
define weak i8* @_ZN6Halide7Runtime8Internal5Metal20nsarray_first_objectEPv(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #8
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #8
  ret i8* %3
}

; Function Attrs: nounwind mustprogress
define weak %struct.halide_metal_device* @_ZN6Halide7Runtime8Internal5Metal22get_default_mtl_deviceEv() local_unnamed_addr #0 {
  %1 = tail call i8* @MTLCreateSystemDefaultDevice() #8
  %2 = bitcast i8* %1 to %struct.halide_metal_device*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = tail call i8* @dlsym(i8* nonnull inttoptr (i64 -2 to i8*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0)) #8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = bitcast i8* %5 to i8* ()*
  %9 = tail call i8* %8() #8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i8* @_ZN6Halide7Runtime8Internal5Metal20nsarray_first_objectEPv(i8* nonnull %9) #9
  %13 = bitcast i8* %12 to %struct.halide_metal_device*
  br label %14

14:                                               ; preds = %4, %11, %7, %0
  %15 = phi %struct.halide_metal_device* [ %2, %0 ], [ null, %4 ], [ %13, %11 ], [ null, %7 ]
  ret %struct.halide_metal_device* %15
}

declare i8* @MTLCreateSystemDefaultDevice() local_unnamed_addr #2

declare i8* @dlsym(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_metal_acquire_context(i8* %0, %struct.halide_metal_device** %1, %struct.halide_metal_command_queue** %2, i1 zeroext %3) local_unnamed_addr #4 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal5Metal11thread_lockE, i8 1 acquire
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %5, !llvm.loop !41

8:                                                ; preds = %5
  %9 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 8, !tbaa !37
  %10 = icmp eq %struct.halide_metal_device* %9, null
  %11 = and i1 %10, %3
  br i1 %11, label %12, label %49

12:                                               ; preds = %8
  %13 = tail call %struct.halide_metal_device* @_ZN6Halide7Runtime8Internal5Metal22get_default_mtl_deviceEv() #9
  store %struct.halide_metal_device* %13, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 8, !tbaa !37
  %14 = icmp eq %struct.halide_metal_device* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = tail call i8* @malloc(i64 1024) #8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i8* @halide_string_to_string(i8* %16, i8* null, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i64 0, i64 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i64 0, i64 0)) #8
  br label %28

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, i8* %16, i64 1023
  store i8 0, i8* %21, align 1, !tbaa !36
  %22 = tail call i8* @halide_string_to_string(i8* nonnull %16, i8* nonnull %21, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i64 0, i64 0)) #8
  %23 = ptrtoint i8* %22 to i64
  %24 = ptrtoint i8* %16 to i64
  %25 = add i64 %23, 1
  %26 = sub i64 %25, %24
  %27 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %16, i64 %26) #8
  tail call void @halide_error(i8* %0, i8* nonnull %16) #8
  br label %28

28:                                               ; preds = %20, %18
  tail call void @free(i8* %16) #8
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal5Metal11thread_lockE release, align 1
  br label %59

29:                                               ; preds = %12
  %30 = tail call %struct.halide_metal_command_queue* @_ZN6Halide7Runtime8Internal5Metal17new_command_queueEP19halide_metal_device(%struct.halide_metal_device* nonnull %13) #9
  store %struct.halide_metal_command_queue* %30, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 8, !tbaa !37
  %31 = icmp eq %struct.halide_metal_command_queue* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 8, !tbaa !37
  br label %56

34:                                               ; preds = %29
  %35 = tail call i8* @malloc(i64 1024) #8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call i8* @halide_string_to_string(i8* %35, i8* null, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i64 0, i64 0)) #8
  br label %47

39:                                               ; preds = %34
  %40 = getelementptr inbounds i8, i8* %35, i64 1023
  store i8 0, i8* %40, align 1, !tbaa !36
  %41 = tail call i8* @halide_string_to_string(i8* nonnull %35, i8* nonnull %40, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0)) #8
  %42 = ptrtoint i8* %41 to i64
  %43 = ptrtoint i8* %35 to i64
  %44 = add i64 %42, 1
  %45 = sub i64 %44, %43
  %46 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %35, i64 %45) #8
  tail call void @halide_error(i8* %0, i8* nonnull %35) #8
  br label %47

47:                                               ; preds = %39, %37
  tail call void @free(i8* %35) #8
  %48 = load i8*, i8** bitcast (%struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE to i8**), align 8, !tbaa !37
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %48) #9
  store %struct.halide_metal_device* null, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 8, !tbaa !37
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal5Metal11thread_lockE release, align 1
  br label %59

49:                                               ; preds = %8
  %50 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 8
  %51 = icmp eq %struct.halide_metal_device* %9, null
  %52 = icmp ne %struct.halide_metal_command_queue* %50, null
  %53 = or i1 %51, %52
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.44, i64 0, i64 0)) #8
  tail call void @abort() #8
  %55 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 8, !tbaa !37
  br label %56

56:                                               ; preds = %32, %49, %54
  %57 = phi %struct.halide_metal_device* [ %9, %49 ], [ %55, %54 ], [ %33, %32 ]
  store %struct.halide_metal_device* %57, %struct.halide_metal_device** %1, align 8, !tbaa !37
  %58 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 8, !tbaa !37
  store %struct.halide_metal_command_queue* %58, %struct.halide_metal_command_queue** %2, align 8, !tbaa !37
  br label %59

59:                                               ; preds = %56, %47, %28
  %60 = phi i32 [ -1, %28 ], [ -1, %47 ], [ 0, %56 ]
  ret i32 %60
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_metal_release_context(i8* %0) local_unnamed_addr #5 {
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal5Metal11thread_lockE release, align 1
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %0, i8* %1, i1 zeroext %2) local_unnamed_addr #0 align 2 {
  %4 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i64 0, i32 1
  store i8* %1, i8** %4, align 8, !tbaa !42
  %5 = tail call i8* @_ZN6Halide7Runtime8Internal23create_autorelease_poolEv() #9
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i64 0, i32 0
  store i8* %5, i8** %6, align 8, !tbaa !44
  %7 = load i8*, i8** %4, align 8, !tbaa !42
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i64 0, i32 3
  %10 = tail call i32 @halide_metal_acquire_context(i8* %7, %struct.halide_metal_device** nonnull %8, %struct.halide_metal_command_queue** nonnull %9, i1 zeroext %2) #9
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i64 0, i32 4
  store i32 %10, i32* %11, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %0) local_unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8, !tbaa !42
  %4 = tail call i32 @halide_metal_release_context(i8* %3) #9
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8, !tbaa !44
  tail call void @_ZN6Halide7Runtime8Internal22drain_autorelease_poolEPv(i8* %6) #9
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal39command_buffer_completed_handler_invokeEPNS2_46command_buffer_completed_handler_block_literalEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %1) #0 {
  %3 = tail call i8* @_ZN6Halide7Runtime8Internal5Metal20command_buffer_errorEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %1) #9
  %4 = icmp eq i8* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* nonnull %3) #9
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* nonnull %3) #9
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_metal_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %5 = load i32, i32* %4, align 4, !tbaa !24
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %9 = load i8, i8* %8, align 1, !tbaa !23
  br label %53

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %12 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %11, align 8, !tbaa !25
  %13 = zext i32 %5 to i64
  br label %14

14:                                               ; preds = %28, %10
  %15 = phi i64 [ 0, %10 ], [ %30, %28 ]
  %16 = phi i64 [ 0, %10 ], [ %29, %28 ]
  %17 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %12, i64 %15, i32 2
  %18 = load i32, i32* %17, align 4, !tbaa !26
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = zext i32 %18 to i64
  %22 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %12, i64 %15, i32 1
  %23 = load i32, i32* %22, align 4, !tbaa !31
  %24 = add nsw i32 %23, -1
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %25, %21
  %27 = add nsw i64 %26, %16
  br label %28

28:                                               ; preds = %20, %14
  %29 = phi i64 [ %27, %20 ], [ %16, %14 ]
  %30 = add nuw nsw i64 %15, 1
  %31 = icmp eq i64 %30, %13
  br i1 %31, label %32, label %14, !llvm.loop !46

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %34 = load i8, i8* %33, align 1, !tbaa !23
  br label %35

35:                                               ; preds = %49, %32
  %36 = phi i64 [ 0, %32 ], [ %51, %49 ]
  %37 = phi i64 [ 0, %32 ], [ %50, %49 ]
  %38 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %12, i64 %36, i32 2
  %39 = load i32, i32* %38, align 4, !tbaa !26
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = sext i32 %39 to i64
  %43 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %12, i64 %36, i32 1
  %44 = load i32, i32* %43, align 4, !tbaa !31
  %45 = add nsw i32 %44, -1
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, %42
  %48 = add nsw i64 %47, %37
  br label %49

49:                                               ; preds = %41, %35
  %50 = phi i64 [ %48, %41 ], [ %37, %35 ]
  %51 = add nuw nsw i64 %36, 1
  %52 = icmp eq i64 %51, %13
  br i1 %52, label %53, label %35, !llvm.loop !47

53:                                               ; preds = %49, %7
  %54 = phi i8 [ %9, %7 ], [ %34, %49 ]
  %55 = phi i64 [ 0, %7 ], [ %29, %49 ]
  %56 = phi i64 [ 0, %7 ], [ %50, %49 ]
  %57 = zext i8 %54 to i64
  %58 = add nuw nsw i64 %57, 7
  %59 = lshr i64 %58, 3
  %60 = add nsw i64 %55, 1
  %61 = sub i64 %60, %56
  %62 = mul i64 %61, %59
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.48, i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %65

65:                                               ; preds = %64, %53
  %66 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %67 = load i64, i64* %66, align 8, !tbaa !22
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %130

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4, !tbaa !24
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  br label %79

74:                                               ; preds = %88, %69
  %75 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %75) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3, i8* %0, i1 zeroext true) #8
  %76 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 4
  %77 = load i32, i32* %76, align 8, !tbaa !45
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %93, label %128

79:                                               ; preds = %72, %88
  %80 = phi i32 [ %70, %72 ], [ %89, %88 ]
  %81 = phi i64 [ 0, %72 ], [ %90, %88 ]
  %82 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %73, align 8, !tbaa !25
  %83 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %82, i64 %81, i32 2
  %84 = load i32, i32* %83, align 4, !tbaa !26
  %85 = icmp sgt i32 %84, -1
  br i1 %85, label %88, label %86

86:                                               ; preds = %79
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.49, i64 0, i64 0)) #8
  tail call void @abort() #8
  %87 = load i32, i32* %4, align 4, !tbaa !24
  br label %88

88:                                               ; preds = %79, %86
  %89 = phi i32 [ %80, %79 ], [ %87, %86 ]
  %90 = add nuw nsw i64 %81, 1
  %91 = sext i32 %89 to i64
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %79, label %74, !llvm.loop !48

93:                                               ; preds = %74
  %94 = call i8* @malloc(i64 16) #8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %128, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 2
  %98 = load %struct.halide_metal_device*, %struct.halide_metal_device** %97, align 8, !tbaa !49
  %99 = call %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* @_ZN6Halide7Runtime8Internal5Metal10new_bufferEP19halide_metal_devicem(%struct.halide_metal_device* %98, i64 %62) #9
  %100 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %99, null
  br i1 %100, label %101, label %119

101:                                              ; preds = %96
  call void @free(i8* nonnull %94) #8
  %102 = call i8* @malloc(i64 1024) #8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds i8, i8* %102, i64 1023
  store i8 0, i8* %105, align 1, !tbaa !36
  br label %106

106:                                              ; preds = %101, %104
  %107 = phi i8* [ %105, %104 ], [ null, %101 ]
  %108 = call i8* @halide_string_to_string(i8* %102, i8* %107, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i64 0, i64 0)) #8
  %109 = call i8* @halide_int64_to_string(i8* %108, i8* %107, i64 %62, i32 1) #8
  %110 = call i8* @halide_string_to_string(i8* %109, i8* %107, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0)) #8
  br i1 %103, label %111, label %112

111:                                              ; preds = %106
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i64 0, i64 0)) #8
  br label %118

112:                                              ; preds = %106
  %113 = ptrtoint i8* %110 to i64
  %114 = ptrtoint i8* %102 to i64
  %115 = add i64 %113, 1
  %116 = sub i64 %115, %114
  %117 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %102, i64 %116) #8
  call void @halide_error(i8* %0, i8* nonnull %102) #8
  br label %118

118:                                              ; preds = %112, %111
  call void @free(i8* %102) #8
  br label %128

119:                                              ; preds = %96
  %120 = bitcast i8* %94 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"**
  store %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %99, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %120, align 8, !tbaa !50
  %121 = getelementptr inbounds i8, i8* %94, i64 8
  %122 = bitcast i8* %121 to i64*
  store i64 0, i64* %122, align 8, !tbaa !52
  %123 = ptrtoint i8* %94 to i64
  store i64 %123, i64* %66, align 8, !tbaa !22
  %124 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, %struct.halide_device_interface_t** %124, align 8, !tbaa !53
  %125 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, i64 0, i32 15), align 8, !tbaa !54
  %126 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %125, i64 0, i32 0
  %127 = load void ()*, void ()** %126, align 8, !tbaa !56
  call void %127() #8
  br label %128

128:                                              ; preds = %93, %119, %118, %74
  %129 = phi i32 [ %77, %74 ], [ -11, %93 ], [ -1, %118 ], [ 0, %119 ]
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %75) #10
  br label %130

130:                                              ; preds = %65, %128
  %131 = phi i32 [ %129, %128 ], [ 0, %65 ]
  ret i32 %131
}

declare i8* @malloc(i64) local_unnamed_addr #2

declare void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_metal_device_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = inttoptr i64 %4 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %7, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !52
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.56, i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %12

12:                                               ; preds = %11, %6
  %13 = inttoptr i64 %4 to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !50
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %14) #9
  %15 = inttoptr i64 %4 to i8*
  tail call void @free(i8* nonnull %15) #8
  store i64 0, i64* %3, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %17 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %16, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %17, i64 0, i32 15
  %19 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %18, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %19, i64 0, i32 1
  %21 = load void ()*, void ()** %20, align 8, !tbaa !58
  tail call void %21() #8
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %16, align 8, !tbaa !53
  br label %22

22:                                               ; preds = %2, %12
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_metal_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #4 {
  %5 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, align 8
  %7 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %5, i8* %0, i1 zeroext true) #8
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, i64 0, i32 4
  %9 = load i32, i32* %8, align 8, !tbaa !45
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #10
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* null, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %6, align 8, !tbaa !37
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, i64 0, i32 2
  %14 = load %struct.halide_metal_device*, %struct.halide_metal_device** %13, align 8, !tbaa !49
  %15 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcmEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i8* %0, i8** %1, %struct.halide_metal_device* %14, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** nonnull align 8 dereferenceable(8) %6, %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (%struct.halide_metal_device*, i8*, i64)* nonnull @_ZN6Halide7Runtime8Internal5Metal23new_library_with_sourceEP19halide_metal_devicePKcm, %struct.halide_metal_device* %14, i8* %2, i32 %3) #9
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %6, align 8, !tbaa !37
  %18 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.57, i64 0, i64 0)) #8
  call void @abort() #8
  br label %20

20:                                               ; preds = %16, %19, %11
  %21 = phi i32 [ -1, %11 ], [ 0, %19 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #10
  br label %22

22:                                               ; preds = %4, %20
  %23 = phi i32 [ %21, %20 ], [ %9, %4 ]
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %5) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #10
  ret i32 %23
}

; Function Attrs: nounwind
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcmEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i8* %1, i8** %2, %struct.halide_metal_device* %3, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** nonnull align 8 dereferenceable(8) %4, %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (%struct.halide_metal_device*, i8*, i64)* %5, %struct.halide_metal_device* %6, i8* %7, i32 %8) local_unnamed_addr #4 comdat align 2 {
  %10 = alloca %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", align 8
  %11 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %11) #8
  %12 = bitcast i8** %2 to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !59
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 4
  %17 = load i32, i32* %16, align 4, !tbaa !60
  %18 = add i32 %17, 1
  store i32 %18, i32* %16, align 4, !tbaa !60
  store i32 %17, i32* %12, align 4, !tbaa !59
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i32 [ %17, %15 ], [ %13, %9 ]
  %21 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %22 = load i32, i32* %21, align 8, !tbaa !63
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %68, label %24

24:                                               ; preds = %19
  %25 = ptrtoint %struct.halide_metal_device* %3 to i64
  %26 = zext i32 %20 to i64
  %27 = add i64 %26, %25
  %28 = mul i64 %27, -7046029254386353131
  %29 = sub i32 64, %22
  %30 = zext i32 %29 to i64
  %31 = lshr i64 %28, %30
  %32 = shl nuw i32 1, %22
  %33 = icmp eq i32 %22, 31
  br i1 %33, label %68, label %34

34:                                               ; preds = %24
  %35 = add nsw i32 %32, -1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %38 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %37, align 8, !tbaa !64
  %39 = sext i32 %32 to i64
  %40 = icmp sgt i32 %32, 1
  %41 = select i1 %40, i32 %32, i32 1
  %42 = zext i32 %41 to i64
  br label %46

43:                                               ; preds = %54
  %44 = icmp slt i64 %60, %39
  %45 = icmp eq i64 %60, %42
  br i1 %45, label %68, label %46, !llvm.loop !65

46:                                               ; preds = %43, %34
  %47 = phi i64 [ 0, %34 ], [ %60, %43 ]
  %48 = phi i1 [ true, %34 ], [ %44, %43 ]
  %49 = add i64 %47, %31
  %50 = and i64 %49, %36
  %51 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %38, i64 %50, i32 2
  %52 = load i32, i32* %51, align 8, !tbaa !66
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %38, i64 %50, i32 0
  %56 = load %struct.halide_metal_device*, %struct.halide_metal_device** %55, align 8, !tbaa !68
  %57 = icmp eq %struct.halide_metal_device* %56, %3
  %58 = icmp eq i32 %52, %20
  %59 = and i1 %58, %57
  %60 = add nuw nsw i64 %47, 1
  br i1 %59, label %61, label %43

61:                                               ; preds = %54
  %62 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %38, i64 %50, i32 3
  %63 = load i32, i32* %62, align 4, !tbaa !69
  %64 = add i32 %63, 1
  store i32 %64, i32* %62, align 4, !tbaa !69
  br i1 %48, label %65, label %68

65:                                               ; preds = %61
  %66 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %38, i64 %50, i32 1
  %67 = load %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %66, align 8, !tbaa !37
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %67, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %4, align 8, !tbaa !37
  br label %81

68:                                               ; preds = %46, %43, %24, %19, %61
  %69 = sext i32 %8 to i64
  %70 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %5(%struct.halide_metal_device* %6, i8* %7, i64 %69) #8
  %71 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %73) #10
  %74 = load i32, i32* %12, align 4, !tbaa !59
  %75 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i64 0, i32 0
  store %struct.halide_metal_device* %3, %struct.halide_metal_device** %75, align 8, !tbaa !68
  %76 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %70, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %76, align 8, !tbaa !70
  %77 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i64 0, i32 2
  store i32 %74, i32* %77, align 8, !tbaa !66
  %78 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i64 0, i32 3
  store i32 1, i32* %78, align 4, !tbaa !69
  %79 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %10) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %73) #10
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %70, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %4, align 8, !tbaa !37
  br label %81

81:                                               ; preds = %80, %68, %72, %65
  %82 = phi i1 [ true, %65 ], [ true, %80 ], [ false, %68 ], [ false, %72 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %11) #8
  ret i1 %82
}

; Function Attrs: nounwind
define weak void @halide_metal_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  %4 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3, i8* %0, i1 zeroext true) #8
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 4
  %6 = load i32, i32* %5, align 8, !tbaa !45
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %56

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 2
  %10 = load %struct.halide_metal_device*, %struct.halide_metal_device** %9, align 8, !tbaa !49
  %11 = ptrtoint i8* %1 to i64
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 1), align 8, !tbaa !63
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %8
  %16 = ptrtoint %struct.halide_metal_device* %10 to i64
  %17 = and i64 %11, 4294967295
  %18 = add i64 %17, %16
  %19 = mul i64 %18, -7046029254386353131
  %20 = sub i32 64, %13
  %21 = zext i32 %20 to i64
  %22 = lshr i64 %19, %21
  %23 = shl nuw i32 1, %13
  %24 = icmp eq i32 %13, 31
  br i1 %24, label %55, label %25

25:                                               ; preds = %15
  %26 = add nsw i32 %23, -1
  %27 = sext i32 %26 to i64
  %28 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !64
  %29 = sext i32 %23 to i64
  %30 = icmp sgt i32 %23, 1
  %31 = select i1 %30, i32 %23, i32 1
  %32 = zext i32 %31 to i64
  br label %36

33:                                               ; preds = %44
  %34 = icmp slt i64 %50, %29
  %35 = icmp eq i64 %50, %32
  br i1 %35, label %55, label %36, !llvm.loop !65

36:                                               ; preds = %33, %25
  %37 = phi i64 [ 0, %25 ], [ %50, %33 ]
  %38 = phi i1 [ true, %25 ], [ %34, %33 ]
  %39 = add i64 %37, %22
  %40 = and i64 %39, %27
  %41 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %28, i64 %40, i32 2
  %42 = load i32, i32* %41, align 8, !tbaa !66
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %28, i64 %40, i32 0
  %46 = load %struct.halide_metal_device*, %struct.halide_metal_device** %45, align 8, !tbaa !68
  %47 = icmp eq %struct.halide_metal_device* %46, %10
  %48 = icmp eq i32 %42, %12
  %49 = and i1 %48, %47
  %50 = add nuw nsw i64 %37, 1
  br i1 %49, label %51, label %33

51:                                               ; preds = %44
  %52 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %28, i64 %40, i32 3
  %53 = load i32, i32* %52, align 4, !tbaa !69
  %54 = add i32 %53, -1
  store i32 %54, i32* %52, align 4, !tbaa !69
  br i1 %38, label %56, label %55

55:                                               ; preds = %36, %33, %51, %15, %8
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.118, i64 0, i64 0)) #8
  call void @abort() #8
  br label %56

56:                                               ; preds = %55, %51, %2
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #10
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.58, i64 0, i64 0)) #8
  %4 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcm(%struct.halide_metal_command_queue* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.58, i64 0, i64 0), i64 %3) #9
  %5 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !22
  %9 = inttoptr i64 %8 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %9, i64 0, i32 0
  %11 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %10, align 8, !tbaa !50
  %12 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %11) #9
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal24new_blit_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %4) #9
  tail call void @_ZN6Halide7Runtime8Internal5Metal20synchronize_resourceEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %14, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %11) #9
  tail call void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_24mtl_blit_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %14) #9
  br label %15

15:                                               ; preds = %6, %13, %2
  tail call void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %4) #9
  tail call void @_ZN6Halide7Runtime8Internal5Metal20wait_until_completedEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %4) #9
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_metal_device_sync(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  %4 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3, i8* %0, i1 zeroext true) #8
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 4
  %6 = load i32, i32* %5, align 8, !tbaa !45
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 3
  %10 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %9, align 8, !tbaa !71
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %10, %struct.halide_buffer_t* %1) #9
  br label %11

11:                                               ; preds = %2, %8
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #10
  ret i32 %6
}

; Function Attrs: nounwind
define weak i32 @halide_metal_device_release(i8* %0) #4 {
  %2 = alloca %struct.halide_metal_device*, align 8
  %3 = alloca %struct.halide_metal_command_queue*, align 8
  %4 = bitcast %struct.halide_metal_device** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = bitcast %struct.halide_metal_command_queue** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %6 = call i32 @halide_metal_acquire_context(i8* %0, %struct.halide_metal_device** nonnull %2, %struct.halide_metal_command_queue** nonnull %3, i1 zeroext false) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %62

8:                                                ; preds = %1
  %9 = load %struct.halide_metal_device*, %struct.halide_metal_device** %2, align 8, !tbaa !37
  %10 = icmp eq %struct.halide_metal_device* %9, null
  br i1 %10, label %60, label %11

11:                                               ; preds = %8
  %12 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 8, !tbaa !37
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %12, %struct.halide_buffer_t* null) #9
  %13 = load %struct.halide_metal_device*, %struct.halide_metal_device** %2, align 8, !tbaa !37
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0)) #8
  %14 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 3), align 8, !tbaa !72
  %15 = icmp eq i32 %14, 0
  %16 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 1), align 8
  %17 = icmp eq i32 %16, 31
  %18 = or i1 %15, %17
  br i1 %18, label %53, label %19

19:                                               ; preds = %11
  %20 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !64
  br label %21

21:                                               ; preds = %46, %19
  %22 = phi i32 [ %16, %19 ], [ %47, %46 ]
  %23 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* [ %20, %19 ], [ %48, %46 ]
  %24 = phi i64 [ 0, %19 ], [ %49, %46 ]
  %25 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %23, i64 %24, i32 2
  %26 = load i32, i32* %25, align 8, !tbaa !66
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %23, i64 %24, i32 0
  %30 = load %struct.halide_metal_device*, %struct.halide_metal_device** %29, align 8, !tbaa !68
  %31 = icmp eq %struct.halide_metal_device* %30, %13
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %23, i64 %24, i32 3
  %34 = load i32, i32* %33, align 4, !tbaa !69
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %23, i64 %24, i32 1
  %38 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %37 to i8**
  %39 = load i8*, i8** %38, align 8, !tbaa !70
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %39) #8
  %40 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !64
  %41 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %40, i64 %24, i32 1
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* null, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %41, align 8, !tbaa !70
  %42 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %40, i64 %24, i32 2
  store i32 1, i32* %42, align 8, !tbaa !66
  %43 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 3), align 8, !tbaa !72
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 3), align 8, !tbaa !72
  %45 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 1), align 8, !tbaa !63
  br label %46

46:                                               ; preds = %36, %32, %28, %21
  %47 = phi i32 [ %22, %21 ], [ %22, %28 ], [ %22, %32 ], [ %45, %36 ]
  %48 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* [ %23, %21 ], [ %23, %28 ], [ %23, %32 ], [ %40, %36 ]
  %49 = add nuw nsw i64 %24, 1
  %50 = shl nuw i32 1, %47
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %21, label %53, !llvm.loop !73

53:                                               ; preds = %46, %11
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0)) #8
  %54 = load %struct.halide_metal_device*, %struct.halide_metal_device** %2, align 8, !tbaa !37
  %55 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 8, !tbaa !37
  %56 = icmp eq %struct.halide_metal_device* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** bitcast (%struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE to i8**), align 8, !tbaa !37
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %58) #9
  store %struct.halide_metal_command_queue* null, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 8, !tbaa !37
  %59 = load i8*, i8** bitcast (%struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE to i8**), align 8, !tbaa !37
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %59) #9
  store %struct.halide_metal_device* null, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 8, !tbaa !37
  br label %60

60:                                               ; preds = %53, %57, %8
  %61 = call i32 @halide_metal_release_context(i8* %0) #9
  br label %62

62:                                               ; preds = %1, %60
  %63 = phi i32 [ 0, %60 ], [ %6, %1 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  ret i32 %63
}

; Function Attrs: nounwind
define weak i32 @halide_metal_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %5 = alloca %"struct.Halide::Runtime::Internal::Metal::NSRange", align 8
  %6 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3, i8* %0, i1 zeroext true) #8
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 4
  %8 = load i32, i32* %7, align 8, !tbaa !45
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %102

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %12 = load i8*, i8** %11, align 8, !tbaa !15
  %13 = icmp eq i8* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %16 = load i64, i64* %15, align 8, !tbaa !22
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.62, i64 0, i64 0)) #8
  call void @abort() #8
  br label %19

19:                                               ; preds = %18, %14
  %20 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %20) #10
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %1) #9
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 1
  %22 = load i64, i64* %21, align 8, !tbaa !11
  %23 = inttoptr i64 %22 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %23, i64 0, i32 0
  %25 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %24, align 8, !tbaa !50
  %26 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %25) #9
  %27 = ptrtoint i8* %26 to i64
  %28 = load i64, i64* %21, align 8, !tbaa !11
  %29 = inttoptr i64 %28 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %29, i64 0, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !52
  %32 = add i64 %31, %27
  store i64 %32, i64* %21, align 8, !tbaa !11
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i8* %0) #9
  %33 = call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %25) #9
  br i1 %33, label %34, label %99

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %36 = load i32, i32* %35, align 4, !tbaa !24
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %40 = load i8, i8* %39, align 1, !tbaa !23
  br label %84

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %43 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %42, align 8, !tbaa !25
  %44 = zext i32 %36 to i64
  br label %45

45:                                               ; preds = %59, %41
  %46 = phi i64 [ 0, %41 ], [ %61, %59 ]
  %47 = phi i64 [ 0, %41 ], [ %60, %59 ]
  %48 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %43, i64 %46, i32 2
  %49 = load i32, i32* %48, align 4, !tbaa !26
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = zext i32 %49 to i64
  %53 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %43, i64 %46, i32 1
  %54 = load i32, i32* %53, align 4, !tbaa !31
  %55 = add nsw i32 %54, -1
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %56, %52
  %58 = add nsw i64 %57, %47
  br label %59

59:                                               ; preds = %51, %45
  %60 = phi i64 [ %58, %51 ], [ %47, %45 ]
  %61 = add nuw nsw i64 %46, 1
  %62 = icmp eq i64 %61, %44
  br i1 %62, label %63, label %45, !llvm.loop !46

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %65 = load i8, i8* %64, align 1, !tbaa !23
  br label %66

66:                                               ; preds = %80, %63
  %67 = phi i64 [ 0, %63 ], [ %82, %80 ]
  %68 = phi i64 [ 0, %63 ], [ %81, %80 ]
  %69 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %43, i64 %67, i32 2
  %70 = load i32, i32* %69, align 4, !tbaa !26
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = sext i32 %70 to i64
  %74 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %43, i64 %67, i32 1
  %75 = load i32, i32* %74, align 4, !tbaa !31
  %76 = add nsw i32 %75, -1
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %77, %73
  %79 = add nsw i64 %78, %68
  br label %80

80:                                               ; preds = %72, %66
  %81 = phi i64 [ %79, %72 ], [ %68, %66 ]
  %82 = add nuw nsw i64 %67, 1
  %83 = icmp eq i64 %82, %44
  br i1 %83, label %84, label %66, !llvm.loop !47

84:                                               ; preds = %80, %38
  %85 = phi i8 [ %40, %38 ], [ %65, %80 ]
  %86 = phi i64 [ 0, %38 ], [ %60, %80 ]
  %87 = phi i64 [ 0, %38 ], [ %81, %80 ]
  %88 = zext i8 %85 to i64
  %89 = add nuw nsw i64 %88, 7
  %90 = lshr i64 %89, 3
  %91 = add nsw i64 %86, 1
  %92 = sub i64 %91, %87
  %93 = mul i64 %92, %90
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.66, i64 0, i64 0)) #8
  call void @abort() #8
  br label %96

96:                                               ; preds = %95, %84
  %97 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %5, i64 0, i32 0
  store i64 0, i64* %97, align 8, !tbaa.struct !38
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %5, i64 0, i32 1
  store i64 %93, i64* %98, align 8, !tbaa.struct !74
  call void @_ZN6Halide7Runtime8Internal5Metal16did_modify_rangeEPNS2_10mtl_bufferENS2_7NSRangeE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %25, %"struct.Halide::Runtime::Internal::Metal::NSRange"* nonnull byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 8 %5) #9
  br label %99

99:                                               ; preds = %96, %19
  %100 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 3
  %101 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %100, align 8, !tbaa !71
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %101, %struct.halide_buffer_t* %1) #9
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %20) #10
  br label %102

102:                                              ; preds = %2, %99
  %103 = phi i32 [ 0, %99 ], [ %8, %2 ]
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #10
  ret i32 %103
}

; Function Attrs: nounwind
define weak i32 @halide_metal_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %5 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3, i8* %0, i1 zeroext true) #8
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 4
  %7 = load i32, i32* %6, align 8, !tbaa !45
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 3
  %11 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %10, align 8, !tbaa !71
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %11, %struct.halide_buffer_t* %1) #9
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %13 = load i8*, i8** %12, align 8, !tbaa !15
  %14 = icmp eq i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %17 = load i64, i64* %16, align 8, !tbaa !22
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %9
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.67, i64 0, i64 0)) #8
  call void @abort() #8
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %22 = load i32, i32* %21, align 4, !tbaa !24
  %23 = icmp slt i32 %22, 17
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.68, i64 0, i64 0)) #8
  call void @abort() #8
  %25 = load i32, i32* %21, align 4, !tbaa !24
  %26 = icmp sgt i32 %25, 16
  br i1 %26, label %41, label %27

27:                                               ; preds = %20, %24
  %28 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %28) #10
  call void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %1) #9
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 0
  %30 = load i64, i64* %29, align 8, !tbaa !9
  %31 = inttoptr i64 %30 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %31, i64 0, i32 0
  %33 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %32, align 8, !tbaa !50
  %34 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %33) #9
  %35 = ptrtoint i8* %34 to i64
  %36 = load i64, i64* %29, align 8, !tbaa !9
  %37 = inttoptr i64 %36 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %37, i64 0, i32 1
  %39 = load i64, i64* %38, align 8, !tbaa !52
  %40 = add i64 %39, %35
  store i64 %40, i64* %29, align 8, !tbaa !9
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i8* %0) #9
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %28) #10
  br label %41

41:                                               ; preds = %24, %2, %27
  %42 = phi i32 [ 0, %27 ], [ %7, %2 ], [ -1, %24 ]
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #10
  ret i32 %42
}

; Function Attrs: nounwind
define weak i32 @halide_metal_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i64* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #4 {
  %18 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  %19 = alloca [4096 x i8], align 1
  %20 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %20) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %18, i8* %0, i1 zeroext true) #8
  %21 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, i64 0, i32 4
  %22 = load i32, i32* %21, align 8, !tbaa !45
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %311

24:                                               ; preds = %17
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, i64 0, i32 3
  %26 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %25, align 8, !tbaa !71
  %27 = call i64 @strlen(i8* %2) #8
  %28 = call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcm(%struct.halide_metal_command_queue* %26, i8* %2, i64 %27) #9
  %29 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = call i8* @malloc(i64 1024) #8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i8* @halide_string_to_string(i8* %31, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.69, i64 0, i64 0)) #8
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i64 0, i64 0)) #8
  br label %43

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, i8* %31, i64 1023
  store i8 0, i8* %36, align 1, !tbaa !36
  %37 = call i8* @halide_string_to_string(i8* nonnull %31, i8* nonnull %36, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.69, i64 0, i64 0)) #8
  %38 = ptrtoint i8* %37 to i64
  %39 = ptrtoint i8* %31 to i64
  %40 = add i64 %38, 1
  %41 = sub i64 %40, %39
  %42 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %31, i64 %41) #8
  call void @halide_error(i8* %0, i8* nonnull %31) #8
  br label %43

43:                                               ; preds = %35, %33
  call void @free(i8* %31) #8
  br label %311

44:                                               ; preds = %24
  %45 = call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal27new_compute_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* nonnull %28) #9
  %46 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = call i8* @malloc(i64 1024) #8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i8* @halide_string_to_string(i8* %48, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.70, i64 0, i64 0)) #8
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i64 0, i64 0)) #8
  br label %60

52:                                               ; preds = %47
  %53 = getelementptr inbounds i8, i8* %48, i64 1023
  store i8 0, i8* %53, align 1, !tbaa !36
  %54 = call i8* @halide_string_to_string(i8* nonnull %48, i8* nonnull %53, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.70, i64 0, i64 0)) #8
  %55 = ptrtoint i8* %54 to i64
  %56 = ptrtoint i8* %48 to i64
  %57 = add i64 %55, 1
  %58 = sub i64 %57, %56
  %59 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %48, i64 %58) #8
  call void @halide_error(i8* %0, i8* nonnull %48) #8
  br label %60

60:                                               ; preds = %52, %50
  call void @free(i8* %48) #8
  br label %311

61:                                               ; preds = %44
  %62 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, i64 0, i32 2
  %63 = load %struct.halide_metal_device*, %struct.halide_metal_device** %62, align 8, !tbaa !49
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0)) #8
  %64 = ptrtoint i8* %1 to i64
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 1), align 8, !tbaa !63
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %105, label %68

68:                                               ; preds = %61
  %69 = ptrtoint %struct.halide_metal_device* %63 to i64
  %70 = and i64 %64, 4294967295
  %71 = add i64 %70, %69
  %72 = mul i64 %71, -7046029254386353131
  %73 = sub i32 64, %66
  %74 = zext i32 %73 to i64
  %75 = lshr i64 %72, %74
  %76 = shl nuw i32 1, %66
  %77 = icmp eq i32 %66, 31
  br i1 %77, label %105, label %78

78:                                               ; preds = %68
  %79 = add nsw i32 %76, -1
  %80 = sext i32 %79 to i64
  %81 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !64
  %82 = sext i32 %76 to i64
  %83 = icmp sgt i32 %76, 1
  %84 = select i1 %83, i32 %76, i32 1
  %85 = zext i32 %84 to i64
  br label %89

86:                                               ; preds = %97
  %87 = icmp slt i64 %103, %82
  %88 = icmp eq i64 %103, %85
  br i1 %88, label %105, label %89, !llvm.loop !65

89:                                               ; preds = %86, %78
  %90 = phi i64 [ 0, %78 ], [ %103, %86 ]
  %91 = phi i1 [ true, %78 ], [ %87, %86 ]
  %92 = add i64 %90, %75
  %93 = and i64 %92, %80
  %94 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %81, i64 %93, i32 2
  %95 = load i32, i32* %94, align 8, !tbaa !66
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %81, i64 %93, i32 0
  %99 = load %struct.halide_metal_device*, %struct.halide_metal_device** %98, align 8, !tbaa !68
  %100 = icmp eq %struct.halide_metal_device* %99, %63
  %101 = icmp eq i32 %95, %65
  %102 = and i1 %101, %100
  %103 = add nuw nsw i64 %90, 1
  br i1 %102, label %104, label %86

104:                                              ; preds = %97
  br i1 %91, label %106, label %105

105:                                              ; preds = %86, %89, %104, %61, %68
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0)) #8
  br label %110

106:                                              ; preds = %104
  %107 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %81, i64 %93, i32 1
  %108 = load %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %107, align 8, !tbaa !37
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0)) #8
  %109 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %105, %106
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.71, i64 0, i64 0)) #8
  call void @abort() #8
  br label %111

111:                                              ; preds = %106, %110
  %112 = phi %"struct.Halide::Runtime::Internal::Metal::mtl_library"* [ %108, %106 ], [ null, %110 ]
  %113 = call i64 @strlen(i8* %2) #8
  %114 = call %"struct.Halide::Runtime::Internal::Metal::mtl_function"* @_ZN6Halide7Runtime8Internal5Metal22new_function_with_nameEPNS2_11mtl_libraryEPKcm(%"struct.Halide::Runtime::Internal::Metal::mtl_library"* %112, i8* %2, i64 %113) #9
  %115 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %114, null
  br i1 %115, label %116, label %140

116:                                              ; preds = %111
  %117 = call i8* @malloc(i64 1024) #8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds i8, i8* %117, i64 1023
  store i8 0, i8* %120, align 1, !tbaa !36
  br label %121

121:                                              ; preds = %116, %119
  %122 = phi i8* [ %120, %119 ], [ null, %116 ]
  %123 = call i8* @halide_string_to_string(i8* %117, i8* %122, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.72, i64 0, i64 0)) #8
  %124 = icmp eq i8* %2, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call i8* @halide_string_to_string(i8* %123, i8* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i64 0, i64 0)) #8
  br label %129

127:                                              ; preds = %121
  %128 = call i8* @halide_string_to_string(i8* %123, i8* %122, i8* nonnull %2) #8
  br label %129

129:                                              ; preds = %125, %127
  %130 = phi i8* [ %128, %127 ], [ %126, %125 ]
  %131 = call i8* @halide_string_to_string(i8* %130, i8* %122, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i64 0, i64 0)) #8
  br i1 %118, label %132, label %133

132:                                              ; preds = %129
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i64 0, i64 0)) #8
  br label %139

133:                                              ; preds = %129
  %134 = ptrtoint i8* %131 to i64
  %135 = ptrtoint i8* %117 to i64
  %136 = add i64 %134, 1
  %137 = sub i64 %136, %135
  %138 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %117, i64 %137) #8
  call void @halide_error(i8* %0, i8* nonnull %117) #8
  br label %139

139:                                              ; preds = %133, %132
  call void @free(i8* %117) #8
  br label %311

140:                                              ; preds = %111
  %141 = load %struct.halide_metal_device*, %struct.halide_metal_device** %62, align 8, !tbaa !49
  %142 = call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* @_ZN6Halide7Runtime8Internal5Metal40new_compute_pipeline_state_with_functionEP19halide_metal_devicePNS2_12mtl_functionE(%struct.halide_metal_device* %141, %"struct.Halide::Runtime::Internal::Metal::mtl_function"* nonnull %114) #9
  %143 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %142, null
  br i1 %143, label %144, label %158

144:                                              ; preds = %140
  %145 = call i8* @malloc(i64 1024) #8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i8* @halide_string_to_string(i8* %145, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.74, i64 0, i64 0)) #8
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i64 0, i64 0)) #8
  br label %157

149:                                              ; preds = %144
  %150 = getelementptr inbounds i8, i8* %145, i64 1023
  store i8 0, i8* %150, align 1, !tbaa !36
  %151 = call i8* @halide_string_to_string(i8* nonnull %145, i8* nonnull %150, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.74, i64 0, i64 0)) #8
  %152 = ptrtoint i8* %151 to i64
  %153 = ptrtoint i8* %145 to i64
  %154 = add i64 %152, 1
  %155 = sub i64 %154, %153
  %156 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %145, i64 %155) #8
  call void @halide_error(i8* %0, i8* nonnull %145) #8
  br label %157

157:                                              ; preds = %149, %147
  call void @free(i8* %145) #8
  br label %311

158:                                              ; preds = %140
  call void @_ZN6Halide7Runtime8Internal5Metal26set_compute_pipeline_stateEPNS2_27mtl_compute_command_encoderEPNS2_26mtl_compute_pipeline_stateE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %45, %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* nonnull %142) #9
  %159 = load i64, i64* %10, align 8, !tbaa !39
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %277, label %163

161:                                              ; preds = %183
  %162 = icmp eq i64 %184, 0
  br i1 %162, label %273, label %189

163:                                              ; preds = %158, %183
  %164 = phi i64 [ %187, %183 ], [ %159, %158 ]
  %165 = phi i64* [ %186, %183 ], [ %10, %158 ]
  %166 = phi i64 [ %185, %183 ], [ 0, %158 ]
  %167 = phi i64 [ %184, %183 ], [ 0, %158 ]
  %168 = getelementptr inbounds i8, i8* %12, i64 %166
  %169 = load i8, i8* %168, align 1, !tbaa !36
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %183

171:                                              ; preds = %163
  %172 = call i64 @llvm.ctpop.i64(i64 %164), !range !75
  %173 = icmp ult i64 %172, 2
  br i1 %173, label %176, label %174

174:                                              ; preds = %171
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.75, i64 0, i64 0)) #8
  call void @abort() #8
  %175 = load i64, i64* %165, align 8, !tbaa !39
  br label %176

176:                                              ; preds = %174, %171
  %177 = phi i64 [ %175, %174 ], [ %164, %171 ]
  %178 = add i64 %167, -1
  %179 = add i64 %178, %177
  %180 = sub i64 0, %177
  %181 = and i64 %179, %180
  %182 = add i64 %181, %177
  br label %183

183:                                              ; preds = %163, %176
  %184 = phi i64 [ %167, %163 ], [ %182, %176 ]
  %185 = add i64 %166, 1
  %186 = getelementptr inbounds i64, i64* %10, i64 %185
  %187 = load i64, i64* %186, align 8, !tbaa !39
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %161, label %163, !llvm.loop !76

189:                                              ; preds = %161
  %190 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %190) #10
  %191 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal24metal_api_checked_deviceE, align 8, !tbaa !37
  %192 = load %struct.halide_metal_device*, %struct.halide_metal_device** %62, align 8, !tbaa !49
  %193 = icmp eq %struct.halide_metal_device* %191, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %189
  %195 = call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal25buffer_supports_set_bytesEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %45) #9
  %196 = zext i1 %195 to i8
  store i8 %196, i8* @_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE, align 1, !tbaa !77
  %197 = load %struct.halide_metal_device*, %struct.halide_metal_device** %62, align 8, !tbaa !49
  store %struct.halide_metal_device* %197, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal24metal_api_checked_deviceE, align 8, !tbaa !37
  br label %198

198:                                              ; preds = %194, %189
  %199 = add i64 %184, 3
  %200 = and i64 %199, -4
  %201 = icmp ult i64 %200, %184
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.79, i64 0, i64 0)) #8
  call void @abort() #8
  br label %203

203:                                              ; preds = %202, %198
  %204 = icmp ugt i64 %200, 4095
  %205 = load i8, i8* @_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE, align 1
  %206 = icmp eq i8 %205, 0
  %207 = or i1 %204, %206
  br i1 %207, label %208, label %227

208:                                              ; preds = %203
  %209 = load %struct.halide_metal_device*, %struct.halide_metal_device** %62, align 8, !tbaa !49
  %210 = call %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* @_ZN6Halide7Runtime8Internal5Metal10new_bufferEP19halide_metal_devicem(%struct.halide_metal_device* %209, i64 %200) #9
  %211 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %210, null
  br i1 %211, label %212, label %225

212:                                              ; preds = %208
  %213 = call i8* @malloc(i64 1024) #8
  %214 = icmp eq i8* %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = call i8* @halide_string_to_string(i8* %213, i8* null, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.80, i64 0, i64 0)) #8
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i64 0, i64 0)) #8
  br label %271

217:                                              ; preds = %212
  %218 = getelementptr inbounds i8, i8* %213, i64 1023
  store i8 0, i8* %218, align 1, !tbaa !36
  %219 = call i8* @halide_string_to_string(i8* nonnull %213, i8* nonnull %218, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.80, i64 0, i64 0)) #8
  %220 = ptrtoint i8* %219 to i64
  %221 = ptrtoint i8* %213 to i64
  %222 = add i64 %220, 1
  %223 = sub i64 %222, %221
  %224 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %213, i64 %223) #8
  call void @halide_error(i8* %0, i8* nonnull %213) #8
  br label %271

225:                                              ; preds = %208
  %226 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* nonnull %210) #9
  br label %227

227:                                              ; preds = %203, %225
  %228 = phi %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* [ %210, %225 ], [ null, %203 ]
  %229 = phi i8* [ %226, %225 ], [ %190, %203 ]
  %230 = load i64, i64* %10, align 8, !tbaa !39
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %254, %227
  %233 = phi i64 [ 0, %227 ], [ %255, %254 ]
  %234 = icmp eq i64 %233, %184
  br i1 %234, label %261, label %260

235:                                              ; preds = %227, %254
  %236 = phi i64 [ %258, %254 ], [ %230, %227 ]
  %237 = phi i64* [ %257, %254 ], [ %10, %227 ]
  %238 = phi i64 [ %256, %254 ], [ 0, %227 ]
  %239 = phi i64 [ %255, %254 ], [ 0, %227 ]
  %240 = getelementptr inbounds i8, i8* %12, i64 %238
  %241 = load i8, i8* %240, align 1, !tbaa !36
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %235
  %244 = getelementptr inbounds i8, i8* %229, i64 %239
  %245 = getelementptr inbounds i8*, i8** %11, i64 %238
  %246 = load i8*, i8** %245, align 8, !tbaa !37
  %247 = call i8* @memcpy(i8* %244, i8* %246, i64 %236) #8
  %248 = load i64, i64* %237, align 8, !tbaa !39
  %249 = add i64 %239, -1
  %250 = add i64 %249, %248
  %251 = sub i64 0, %248
  %252 = and i64 %250, %251
  %253 = add i64 %252, %248
  br label %254

254:                                              ; preds = %235, %243
  %255 = phi i64 [ %239, %235 ], [ %253, %243 ]
  %256 = add i64 %238, 1
  %257 = getelementptr inbounds i64, i64* %10, i64 %256
  %258 = load i64, i64* %257, align 8, !tbaa !39
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %232, label %235, !llvm.loop !79

260:                                              ; preds = %232
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.81, i64 0, i64 0)) #8
  call void @abort() #8
  br label %261

261:                                              ; preds = %260, %232
  %262 = icmp ugt i64 %184, 4095
  %263 = load i8, i8* @_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE, align 1
  %264 = icmp eq i8 %263, 0
  %265 = or i1 %262, %264
  br i1 %265, label %268, label %266

266:                                              ; preds = %261
  %267 = trunc i64 %200 to i32
  call void @_ZN6Halide7Runtime8Internal5Metal27set_input_buffer_from_bytesEPNS2_27mtl_compute_command_encoderEPhjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %45, i8* nonnull %190, i32 %267, i32 0) #9
  br label %270

268:                                              ; preds = %261
  call void @_ZN6Halide7Runtime8Internal5Metal16set_input_bufferEPNS2_27mtl_compute_command_encoderEPNS2_10mtl_bufferEyj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %45, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %228, i64 0, i32 0) #9
  %269 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %228 to i8*
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %269) #9
  br label %270

270:                                              ; preds = %268, %266
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %190) #10
  br label %273

271:                                              ; preds = %217, %215
  call void @free(i8* %213) #8
  %272 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %142 to i8*
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* nonnull %272) #9
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %190) #10
  br label %311

273:                                              ; preds = %270, %161
  %274 = phi i32 [ 1, %270 ], [ 0, %161 ]
  %275 = load i64, i64* %10, align 8, !tbaa !39
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %305, %158, %273
  %278 = add nsw i32 %9, 15
  %279 = and i32 %278, -16
  call void @_ZN6Halide7Runtime8Internal5Metal29set_threadgroup_memory_lengthEPNS2_27mtl_compute_command_encoderEjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %45, i32 %279, i32 0) #9
  %280 = load i32, i32* @_ZZ16halide_metal_runE16total_dispatches, align 4, !tbaa !59
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* @_ZZ16halide_metal_runE16total_dispatches, align 4, !tbaa !59
  call void @_ZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiii(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %45, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #8
  call void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %45) #9
  call void @_ZN6Halide7Runtime8Internal5Metal36add_command_buffer_completed_handlerEPNS2_18mtl_command_bufferEPNS2_46command_buffer_completed_handler_block_literalE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* nonnull %28, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* nonnull @_ZN6Halide7Runtime8Internal5Metal38command_buffer_completed_handler_blockE) #9
  call void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* nonnull %28) #9
  %282 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %142 to i8*
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* nonnull %282) #9
  br label %311

283:                                              ; preds = %273, %305
  %284 = phi i64 [ %309, %305 ], [ %275, %273 ]
  %285 = phi i64 [ %307, %305 ], [ 0, %273 ]
  %286 = phi i32 [ %306, %305 ], [ %274, %273 ]
  %287 = getelementptr inbounds i8, i8* %12, i64 %285
  %288 = load i8, i8* %287, align 1, !tbaa !36
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %305, label %290

290:                                              ; preds = %283
  %291 = icmp eq i64 %284, 8
  br i1 %291, label %293, label %292

292:                                              ; preds = %290
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.82, i64 0, i64 0)) #8
  call void @abort() #8
  br label %293

293:                                              ; preds = %292, %290
  %294 = getelementptr inbounds i8*, i8** %11, i64 %285
  %295 = bitcast i8** %294 to %struct.halide_buffer_t**
  %296 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %295, align 8, !tbaa !37
  %297 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %296, i64 0, i32 0
  %298 = load i64, i64* %297, align 8, !tbaa !22
  %299 = inttoptr i64 %298 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %300 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %299, i64 0, i32 0
  %301 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %300, align 8, !tbaa !50
  %302 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %299, i64 0, i32 1
  %303 = load i64, i64* %302, align 8, !tbaa !52
  call void @_ZN6Halide7Runtime8Internal5Metal16set_input_bufferEPNS2_27mtl_compute_command_encoderEPNS2_10mtl_bufferEyj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %45, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %301, i64 %303, i32 %286) #9
  %304 = add nsw i32 %286, 1
  br label %305

305:                                              ; preds = %283, %293
  %306 = phi i32 [ %304, %293 ], [ %286, %283 ]
  %307 = add i64 %285, 1
  %308 = getelementptr inbounds i64, i64* %10, i64 %307
  %309 = load i64, i64* %308, align 8, !tbaa !39
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %277, label %283, !llvm.loop !80

311:                                              ; preds = %139, %277, %157, %271, %43, %60, %17
  %312 = phi i32 [ %22, %17 ], [ -1, %43 ], [ -1, %60 ], [ -1, %139 ], [ -1, %157 ], [ 0, %277 ], [ -1, %271 ]
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %18) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %20) #10
  ret i32 %312
}

declare void @_ZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiii(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"*, i32, i32, i32, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_metal_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_metal_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !22
  %8 = inttoptr i64 %7 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %8, i64 0, i32 0
  %10 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %9, align 8, !tbaa !50
  %11 = tail call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %10) #9
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  store i8* %11, i8** %12, align 8, !tbaa !15
  br label %13

13:                                               ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_metal_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_metal_device_free(i8* %0, %struct.halide_buffer_t* %1) #9
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  store i8* null, i8** %4, align 8, !tbaa !15
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_metal_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %6 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  %7 = alloca %"struct.Halide::Runtime::Internal::Metal::NSRange", align 8
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5
  %9 = load i32, i32* %8, align 4, !tbaa !24
  %10 = icmp sgt i32 %9, 16
  br i1 %10, label %11, label %25

11:                                               ; preds = %4
  %12 = tail call i8* @malloc(i64 1024) #8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.92, i64 0, i64 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i64 0, i64 0)) #8
  br label %24

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i64 1023
  store i8 0, i8* %17, align 1, !tbaa !36
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.92, i64 0, i64 0)) #8
  %19 = ptrtoint i8* %18 to i64
  %20 = ptrtoint i8* %12 to i64
  %21 = add i64 %19, 1
  %22 = sub i64 %21, %20
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %12, i64 %22) #8
  tail call void @halide_error(i8* %0, i8* nonnull %12) #8
  br label %24

24:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #8
  br label %196

25:                                               ; preds = %4
  %26 = icmp eq %struct.halide_device_interface_t* %2, null
  %27 = icmp eq %struct.halide_device_interface_t* %2, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE
  %28 = or i1 %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.93, i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
  %32 = load i64, i64* %31, align 8, !tbaa !81
  %33 = and i64 %32, 2
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %37 = load i8*, i8** %36, align 8, !tbaa !15
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %35, %30
  %40 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %41 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %40, align 8, !tbaa !53
  %42 = icmp eq %struct.halide_device_interface_t* %41, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  br i1 %27, label %196, label %44

44:                                               ; preds = %43
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.94, i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %196

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %47 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %46, align 8, !tbaa !53
  %48 = icmp eq %struct.halide_device_interface_t* %47, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE
  br i1 %48, label %49, label %61

49:                                               ; preds = %39, %45
  %50 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %51 = load i64, i64* %50, align 8, !tbaa !22
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = and i64 %32, 1
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %58 = load i8*, i8** %57, align 8, !tbaa !15
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %56
  br label %61

61:                                               ; preds = %60, %45, %49, %56
  %62 = phi i1 [ true, %56 ], [ false, %60 ], [ true, %49 ], [ true, %45 ]
  br i1 %26, label %68, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %65 = load i64, i64* %64, align 8, !tbaa !22
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.96, i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %68

68:                                               ; preds = %67, %63, %61
  %69 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %69) #10
  call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext %62, %struct.halide_buffer_t* nonnull %3, i1 zeroext %26) #9
  %70 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %70) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %6, i8* %0, i1 zeroext true) #8
  %71 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i64 0, i32 4
  %72 = load i32, i32* %71, align 8, !tbaa !45
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %195

74:                                               ; preds = %68
  %75 = or i1 %26, %62
  br i1 %75, label %93, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i64 0, i32 3
  %78 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %77, align 8, !tbaa !71
  %79 = call i64 @strlen(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.101, i64 0, i64 0)) #8
  %80 = call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcm(%struct.halide_metal_command_queue* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.101, i64 0, i64 0), i64 %79) #9
  %81 = call %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal24new_blit_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %80) #9
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 0
  %83 = load i64, i64* %82, align 8, !tbaa !9
  %84 = inttoptr i64 %83 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %84, i64 0, i32 1
  %86 = load i64, i64* %85, align 8, !tbaa !52
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 1
  %88 = load i64, i64* %87, align 8, !tbaa !11
  %89 = inttoptr i64 %88 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %90 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %89, i64 0, i32 1
  %91 = load i64, i64* %90, align 8, !tbaa !52
  %92 = load i32, i32* %8, align 4, !tbaa !24
  call fastcc void @_ZN6Halide7Runtime8Internal5Metal12_GLOBAL__N_124do_device_to_device_copyEPvPNS2_24mtl_blit_command_encoderERKNS1_11device_copyEyyi(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %81, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i64 %86, i64 %91, i32 %92) #9
  call void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_24mtl_blit_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %81) #9
  call void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %80) #9
  br label %195

93:                                               ; preds = %74
  br i1 %62, label %109, label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i64 0, i32 3
  %96 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %95, align 8, !tbaa !71
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %96, %struct.halide_buffer_t* nonnull %1) #9
  %97 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 0
  %98 = load i64, i64* %97, align 8, !tbaa !9
  %99 = inttoptr i64 %98 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %100 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %99, i64 0, i32 0
  %101 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %100, align 8, !tbaa !50
  %102 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %101) #9
  %103 = ptrtoint i8* %102 to i64
  %104 = load i64, i64* %97, align 8, !tbaa !9
  %105 = inttoptr i64 %104 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %106 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %105, i64 0, i32 1
  %107 = load i64, i64* %106, align 8, !tbaa !52
  %108 = add i64 %107, %103
  store i64 %108, i64* %97, align 8, !tbaa !9
  br label %109

109:                                              ; preds = %94, %93
  br i1 %26, label %110, label %111

110:                                              ; preds = %109
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #9
  br label %195

111:                                              ; preds = %109
  %112 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i64 0, i32 3
  %113 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %112, align 8, !tbaa !71
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %113, %struct.halide_buffer_t* nonnull %3) #9
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 1
  %115 = load i64, i64* %114, align 8, !tbaa !11
  %116 = inttoptr i64 %115 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %117 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %116, i64 0, i32 0
  %118 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %117, align 8, !tbaa !50
  br i1 %62, label %120, label %119

119:                                              ; preds = %111
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.102, i64 0, i64 0)) #8
  call void @abort() #8
  br label %120

120:                                              ; preds = %119, %111
  %121 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %118) #9
  %122 = ptrtoint i8* %121 to i64
  %123 = load i64, i64* %114, align 8, !tbaa !11
  %124 = inttoptr i64 %123 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %125 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %124, i64 0, i32 1
  %126 = load i64, i64* %125, align 8, !tbaa !52
  %127 = add i64 %126, %122
  store i64 %127, i64* %114, align 8, !tbaa !11
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #9
  %128 = call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %118) #9
  br i1 %128, label %129, label %193

129:                                              ; preds = %120
  %130 = load i32, i32* %8, align 4, !tbaa !24
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1
  %134 = load i8, i8* %133, align 1, !tbaa !23
  br label %178

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %137 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %136, align 8, !tbaa !25
  %138 = zext i32 %130 to i64
  br label %139

139:                                              ; preds = %153, %135
  %140 = phi i64 [ 0, %135 ], [ %155, %153 ]
  %141 = phi i64 [ 0, %135 ], [ %154, %153 ]
  %142 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %137, i64 %140, i32 2
  %143 = load i32, i32* %142, align 4, !tbaa !26
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %139
  %146 = zext i32 %143 to i64
  %147 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %137, i64 %140, i32 1
  %148 = load i32, i32* %147, align 4, !tbaa !31
  %149 = add nsw i32 %148, -1
  %150 = sext i32 %149 to i64
  %151 = mul nsw i64 %150, %146
  %152 = add nsw i64 %151, %141
  br label %153

153:                                              ; preds = %145, %139
  %154 = phi i64 [ %152, %145 ], [ %141, %139 ]
  %155 = add nuw nsw i64 %140, 1
  %156 = icmp eq i64 %155, %138
  br i1 %156, label %157, label %139, !llvm.loop !46

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1
  %159 = load i8, i8* %158, align 1, !tbaa !23
  br label %160

160:                                              ; preds = %174, %157
  %161 = phi i64 [ 0, %157 ], [ %176, %174 ]
  %162 = phi i64 [ 0, %157 ], [ %175, %174 ]
  %163 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %137, i64 %161, i32 2
  %164 = load i32, i32* %163, align 4, !tbaa !26
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %160
  %167 = sext i32 %164 to i64
  %168 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %137, i64 %161, i32 1
  %169 = load i32, i32* %168, align 4, !tbaa !31
  %170 = add nsw i32 %169, -1
  %171 = sext i32 %170 to i64
  %172 = mul nsw i64 %171, %167
  %173 = add nsw i64 %172, %162
  br label %174

174:                                              ; preds = %166, %160
  %175 = phi i64 [ %173, %166 ], [ %162, %160 ]
  %176 = add nuw nsw i64 %161, 1
  %177 = icmp eq i64 %176, %138
  br i1 %177, label %178, label %160, !llvm.loop !47

178:                                              ; preds = %174, %132
  %179 = phi i8 [ %134, %132 ], [ %159, %174 ]
  %180 = phi i64 [ 0, %132 ], [ %154, %174 ]
  %181 = phi i64 [ 0, %132 ], [ %175, %174 ]
  %182 = zext i8 %179 to i64
  %183 = add nuw nsw i64 %182, 7
  %184 = lshr i64 %183, 3
  %185 = add nsw i64 %180, 1
  %186 = sub i64 %185, %181
  %187 = mul i64 %186, %184
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %178
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.103, i64 0, i64 0)) #8
  call void @abort() #8
  br label %190

190:                                              ; preds = %189, %178
  %191 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %7, i64 0, i32 0
  store i64 0, i64* %191, align 8, !tbaa.struct !38
  %192 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %7, i64 0, i32 1
  store i64 %187, i64* %192, align 8, !tbaa.struct !74
  call void @_ZN6Halide7Runtime8Internal5Metal16did_modify_rangeEPNS2_10mtl_bufferENS2_7NSRangeE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %118, %"struct.Halide::Runtime::Internal::Metal::NSRange"* nonnull byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 8 %7) #9
  br label %193

193:                                              ; preds = %190, %120
  %194 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %112, align 8, !tbaa !71
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %194, %struct.halide_buffer_t* %3) #9
  br label %195

195:                                              ; preds = %110, %76, %193, %68
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %6) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %70) #10
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %69) #10
  br label %196

196:                                              ; preds = %44, %43, %195, %24
  %197 = phi i32 [ -39, %24 ], [ %72, %195 ], [ -42, %43 ], [ -42, %44 ]
  ret i32 %197
}

; Function Attrs: nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal5Metal12_GLOBAL__N_124do_device_to_device_copyEPvPNS2_24mtl_blit_command_encoderERKNS1_11device_copyEyyi(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %1, i64 %2, i64 %3, i32 %4) unnamed_addr #0 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %5
  %8 = add nsw i32 %4, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 3, i64 %9
  %11 = load i64, i64* %10, align 8, !tbaa !3
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 5, i64 %9
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 4, i64 %9
  br label %32

16:                                               ; preds = %5
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 0
  %18 = load i64, i64* %17, align 8, !tbaa !9
  %19 = inttoptr i64 %18 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %19, i64 0, i32 0
  %21 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %20, align 8, !tbaa !50
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 2
  %23 = load i64, i64* %22, align 8, !tbaa !14
  %24 = add i64 %23, %2
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 1
  %26 = load i64, i64* %25, align 8, !tbaa !11
  %27 = inttoptr i64 %26 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %27, i64 0, i32 0
  %29 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %28, align 8, !tbaa !50
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 6
  %31 = load i64, i64* %30, align 8, !tbaa !12
  tail call void @_ZN6Halide7Runtime8Internal5Metal24buffer_to_buffer_1d_copyEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferEmS6_mm(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %21, i64 %24, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %29, i64 %3, i64 %31) #9
  br label %45

32:                                               ; preds = %13, %32
  %33 = phi i64 [ 0, %13 ], [ %42, %32 ]
  %34 = phi i64 [ 0, %13 ], [ %39, %32 ]
  %35 = phi i64 [ 0, %13 ], [ %41, %32 ]
  %36 = add i64 %35, %2
  %37 = add i64 %34, %3
  tail call fastcc void @_ZN6Halide7Runtime8Internal5Metal12_GLOBAL__N_124do_device_to_device_copyEPvPNS2_24mtl_blit_command_encoderERKNS1_11device_copyEyyi(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i64 %36, i64 %37, i32 %8) #9
  %38 = load i64, i64* %14, align 8, !tbaa !3
  %39 = add i64 %38, %34
  %40 = load i64, i64* %15, align 8, !tbaa !3
  %41 = add i64 %40, %35
  %42 = add nuw i64 %33, 1
  %43 = load i64, i64* %10, align 8, !tbaa !3
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %32, label %45, !llvm.loop !82

45:                                               ; preds = %32, %7, %16
  ret void
}

; Function Attrs: nounwind
define weak i32 @metal_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 {
  %5 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  %6 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %5, i8* %0, i1 zeroext true) #8
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, i64 0, i32 4
  %8 = load i32, i32* %7, align 8, !tbaa !45
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %12 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %11, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 1
  store %struct.halide_device_interface_t* %12, %struct.halide_device_interface_t** %13, align 8, !tbaa !53
  %14 = call i8* @malloc(i64 16) #8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = call i8* @malloc(i64 1024) #8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i8* @halide_string_to_string(i8* %17, i8* null, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.104, i64 0, i64 0)) #8
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i64 0, i64 0)) #8
  br label %29

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, i8* %17, i64 1023
  store i8 0, i8* %22, align 1, !tbaa !36
  %23 = call i8* @halide_string_to_string(i8* nonnull %17, i8* nonnull %22, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.104, i64 0, i64 0)) #8
  %24 = ptrtoint i8* %23 to i64
  %25 = ptrtoint i8* %17 to i64
  %26 = add i64 %24, 1
  %27 = sub i64 %26, %25
  %28 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %17, i64 %27) #8
  call void @halide_error(i8* %0, i8* nonnull %17) #8
  br label %29

29:                                               ; preds = %21, %19
  call void @free(i8* %17) #8
  br label %47

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %32 = load i64, i64* %31, align 8, !tbaa !22
  %33 = inttoptr i64 %32 to i8**
  %34 = load i8*, i8** %33, align 8, !tbaa !50
  call void @_ZN6Halide7Runtime8Internal16retain_ns_objectEPv(i8* %34) #9
  %35 = load i64, i64* %31, align 8, !tbaa !22
  %36 = inttoptr i64 %35 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %36, i64 0, i32 0
  %38 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %37, align 8, !tbaa !50
  %39 = bitcast i8* %14 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"**
  store %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %38, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %39, align 8, !tbaa !50
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %36, i64 0, i32 1
  %41 = load i64, i64* %40, align 8, !tbaa !52
  %42 = add i64 %41, %2
  %43 = getelementptr inbounds i8, i8* %14, i64 8
  %44 = bitcast i8* %43 to i64*
  store i64 %42, i64* %44, align 8, !tbaa !52
  %45 = ptrtoint i8* %14 to i64
  %46 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  store i64 %45, i64* %46, align 8, !tbaa !22
  br label %47

47:                                               ; preds = %29, %30, %4
  %48 = phi i32 [ %8, %4 ], [ -11, %29 ], [ 0, %30 ]
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %5) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #10
  ret i32 %48
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_metal_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %5 = load i32, i32* %4, align 4, !tbaa !24
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 6
  %9 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %8, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %11 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %10, align 8, !tbaa !25
  %12 = zext i32 %5 to i64
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %27, %13 ]
  %15 = phi i64 [ 0, %7 ], [ %26, %13 ]
  %16 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i64 %14, i32 0
  %17 = load i32, i32* %16, align 4, !tbaa !28
  %18 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %14, i32 0
  %19 = load i32, i32* %18, align 4, !tbaa !28
  %20 = sub nsw i32 %17, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %14, i32 2
  %23 = load i32, i32* %22, align 4, !tbaa !26
  %24 = sext i32 %23 to i64
  %25 = mul nsw i64 %21, %24
  %26 = add nsw i64 %25, %15
  %27 = add nuw nsw i64 %14, 1
  %28 = icmp eq i64 %27, %12
  br i1 %28, label %29, label %13, !llvm.loop !83

29:                                               ; preds = %13, %3
  %30 = phi i64 [ 0, %3 ], [ %26, %13 ]
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %32 = load i8, i8* %31, align 1, !tbaa !23
  %33 = zext i8 %32 to i64
  %34 = add nuw nsw i64 %33, 7
  %35 = lshr i64 %34, 3
  %36 = mul nsw i64 %35, %30
  %37 = tail call i32 @metal_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %36, %struct.halide_buffer_t* %2) #9
  ret i32 %37
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_metal_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #0 {
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %7 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %6, align 8, !tbaa !25
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %7, i64 %8, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !28
  %11 = sub nsw i32 %3, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %7, i64 %8, i32 2
  %14 = load i32, i32* %13, align 4, !tbaa !26
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %12, %15
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %18 = load i8, i8* %17, align 1, !tbaa !23
  %19 = zext i8 %18 to i64
  %20 = add nuw nsw i64 %19, 7
  %21 = lshr i64 %20, 3
  %22 = mul nsw i64 %16, %21
  %23 = tail call i32 @metal_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %22, %struct.halide_buffer_t* %4) #9
  ret i32 %23
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_metal_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = inttoptr i64 %4 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !50
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %8) #9
  %9 = inttoptr i64 %4 to i8*
  tail call void @free(i8* nonnull %9) #8
  br label %10

10:                                               ; preds = %2, %6
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_metal_wrap_buffer(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #4 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.106, i64 0, i64 0)) #8
  tail call void @abort() #8
  %8 = load i64, i64* %4, align 8, !tbaa !22
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %3, %7
  %11 = tail call i8* @malloc(i64 16) #8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = tail call i8* @malloc(i64 1024) #8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i8* @halide_string_to_string(i8* %14, i8* null, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.107, i64 0, i64 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i64 0, i64 0)) #8
  br label %26

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, i8* %14, i64 1023
  store i8 0, i8* %19, align 1, !tbaa !36
  %20 = tail call i8* @halide_string_to_string(i8* nonnull %14, i8* nonnull %19, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.107, i64 0, i64 0)) #8
  %21 = ptrtoint i8* %20 to i64
  %22 = ptrtoint i8* %14 to i64
  %23 = add i64 %21, 1
  %24 = sub i64 %23, %22
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %14, i64 %24) #8
  tail call void @halide_error(i8* %0, i8* nonnull %14) #8
  br label %26

26:                                               ; preds = %18, %16
  tail call void @free(i8* %14) #8
  br label %37

27:                                               ; preds = %10
  %28 = inttoptr i64 %2 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*
  %29 = bitcast i8* %11 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"**
  store %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %28, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %29, align 8, !tbaa !50
  %30 = getelementptr inbounds i8, i8* %11, i64 8
  %31 = bitcast i8* %30 to i64*
  store i64 0, i64* %31, align 8, !tbaa !52
  %32 = ptrtoint i8* %11 to i64
  store i64 %32, i64* %4, align 8, !tbaa !22
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, %struct.halide_device_interface_t** %33, align 8, !tbaa !53
  %34 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, i64 0, i32 15), align 8, !tbaa !54
  %35 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %34, i64 0, i32 0
  %36 = load void ()*, void ()** %35, align 8, !tbaa !56
  tail call void %36() #8
  br label %37

37:                                               ; preds = %26, %27, %7
  %38 = phi i32 [ -2, %7 ], [ -11, %26 ], [ 0, %27 ]
  ret i32 %38
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_metal_detach_buffer(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !53
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.108, i64 0, i64 0)) #8
  tail call void @abort() #8
  %11 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !53
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi %struct.halide_device_interface_t* [ @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, %6 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %13, i64 0, i32 15
  %15 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %14, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %15, i64 0, i32 1
  %17 = load void ()*, void ()** %16, align 8, !tbaa !58
  tail call void %17() #8
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !tbaa !53
  %18 = load i64, i64* %3, align 8, !tbaa !22
  %19 = inttoptr i64 %18 to i8*
  tail call void @free(i8* %19) #8
  store i64 0, i64* %3, align 8, !tbaa !22
  br label %20

20:                                               ; preds = %2, %12
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i64 @halide_metal_get_buffer(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !53
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.109, i64 0, i64 0)) #8
  tail call void @abort() #8
  %11 = load i64, i64* %3, align 8, !tbaa !22
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi i64 [ %4, %6 ], [ %11, %10 ]
  %14 = inttoptr i64 %13 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %14, i64 0, i32 0
  %16 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %15, align 8, !tbaa !50
  %17 = ptrtoint %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %16 to i64
  br label %18

18:                                               ; preds = %2, %12
  %19 = phi i64 [ %17, %12 ], [ 0, %2 ]
  ret i64 %19
}

; Function Attrs: nounwind mustprogress
define weak i64 @halide_metal_get_crop_offset(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !53
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.110, i64 0, i64 0)) #8
  tail call void @abort() #8
  %11 = load i64, i64* %3, align 8, !tbaa !22
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi i64 [ %4, %6 ], [ %11, %10 ]
  %14 = inttoptr i64 %13 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %14, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !52
  br label %17

17:                                               ; preds = %2, %12
  %18 = phi i64 [ %16, %12 ], [ 0, %2 ]
  ret i64 %18
}

; Function Attrs: nounwind willreturn mustprogress
define weak %struct.halide_device_interface_t* @halide_metal_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE
}

; Function Attrs: nounwind
define weak void @halide_metal_cleanup() #4 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0)) #8
  %1 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 3), align 8, !tbaa !72
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load i8*, i8** bitcast (%"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 2) to i8**), align 8, !tbaa !64
  br label %46

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 1), align 8, !tbaa !63
  %7 = icmp eq i32 %6, 31
  br i1 %7, label %48, label %8

8:                                                ; preds = %5
  %9 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !64
  %10 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %9 to i8*
  br label %11

11:                                               ; preds = %35, %8
  %12 = phi i8* [ %10, %8 ], [ %36, %35 ]
  %13 = phi i32 [ %1, %8 ], [ %37, %35 ]
  %14 = phi i32 [ %6, %8 ], [ %38, %35 ]
  %15 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* [ %9, %8 ], [ %39, %35 ]
  %16 = phi i64 [ 0, %8 ], [ %40, %35 ]
  %17 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %15, i64 %16, i32 2
  %18 = load i32, i32* %17, align 8, !tbaa !66
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %15, i64 %16, i32 3
  %22 = load i32, i32* %21, align 4, !tbaa !69
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %15, i64 %16, i32 1
  %26 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %25 to i8**
  %27 = load i8*, i8** %26, align 8, !tbaa !70
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %27) #8
  %28 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !64
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %28, i64 %16, i32 1
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* null, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %29, align 8, !tbaa !70
  %30 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %28, i64 %16, i32 2
  store i32 1, i32* %30, align 8, !tbaa !66
  %31 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 3), align 8, !tbaa !72
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 3), align 8, !tbaa !72
  %33 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 1), align 8, !tbaa !63
  %34 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %28 to i8*
  br label %35

35:                                               ; preds = %24, %20, %11
  %36 = phi i8* [ %34, %24 ], [ %12, %20 ], [ %12, %11 ]
  %37 = phi i32 [ %32, %24 ], [ %13, %20 ], [ %13, %11 ]
  %38 = phi i32 [ %33, %24 ], [ %14, %20 ], [ %14, %11 ]
  %39 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* [ %28, %24 ], [ %15, %20 ], [ %15, %11 ]
  %40 = add nuw nsw i64 %16, 1
  %41 = shl nuw i32 1, %38
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %11, label %44, !llvm.loop !73

44:                                               ; preds = %35
  %45 = icmp eq i32 %37, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %3, %44
  %47 = phi i8* [ %4, %3 ], [ %36, %44 ]
  tail call void @free(i8* %47) #8
  store %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !64
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 1), align 8, !tbaa !63
  br label %48

48:                                               ; preds = %5, %44, %46
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0)) #8
  %49 = tail call i32 @halide_metal_device_release(i8* null) #9
  ret void
}

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

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !63
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 7) #9
  br i1 %7, label %8, label %67

8:                                                ; preds = %6
  %9 = load i32, i32* %3, align 8, !tbaa !63
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %13 = load i32, i32* %12, align 8, !tbaa !72
  %14 = add nsw i32 %13, 1
  %15 = sitofp i32 %14 to float
  %16 = shl nuw i32 1, %11
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = fcmp olt float %18, %15
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = add nsw i32 %11, 1
  %22 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 %21) #9
  br i1 %22, label %23, label %67

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 8, !tbaa !72
  %25 = load i32, i32* %3, align 8, !tbaa !63
  %26 = add nsw i32 %24, 1
  %27 = shl nuw i32 1, %25
  br label %28

28:                                               ; preds = %23, %10
  %29 = phi i32 [ %27, %23 ], [ %16, %10 ]
  %30 = phi i32 [ %26, %23 ], [ %14, %10 ]
  %31 = phi i32 [ %25, %23 ], [ %11, %10 ]
  store i32 %30, i32* %12, align 8, !tbaa !72
  %32 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %1, i64 0, i32 0
  %33 = load %struct.halide_metal_device*, %struct.halide_metal_device** %32, align 8, !tbaa !68
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %1, i64 0, i32 2
  %35 = load i32, i32* %34, align 8, !tbaa !66
  %36 = ptrtoint %struct.halide_metal_device* %33 to i64
  %37 = zext i32 %35 to i64
  %38 = add i64 %37, %36
  %39 = mul i64 %38, -7046029254386353131
  %40 = sub i32 64, %31
  %41 = zext i32 %40 to i64
  %42 = lshr i64 %39, %41
  %43 = icmp eq i32 %31, 31
  br i1 %43, label %66, label %44

44:                                               ; preds = %28
  %45 = add nsw i32 %29, -1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %48 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %47, align 8, !tbaa !64
  %49 = icmp sgt i32 %29, 1
  %50 = select i1 %49, i32 %29, i32 1
  %51 = zext i32 %50 to i64
  br label %54

52:                                               ; preds = %54
  %53 = icmp eq i64 %61, %51
  br i1 %53, label %66, label %54, !llvm.loop !84

54:                                               ; preds = %44, %52
  %55 = phi i64 [ 0, %44 ], [ %61, %52 ]
  %56 = add i64 %42, %55
  %57 = and i64 %56, %46
  %58 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %48, i64 %57, i32 2
  %59 = load i32, i32* %58, align 8, !tbaa !66
  %60 = icmp ult i32 %59, 2
  %61 = add nuw nsw i64 %55, 1
  br i1 %60, label %62, label %52

62:                                               ; preds = %54
  %63 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %48, i64 %57
  %64 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %63 to i8*
  %65 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %64, i8* nonnull align 8 dereferenceable(24) %65, i64 24, i1 false), !tbaa.struct !85
  br label %67

66:                                               ; preds = %52, %28
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.116, i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %67

67:                                               ; preds = %62, %66, %20, %6
  %68 = phi i1 [ false, %6 ], [ false, %20 ], [ true, %62 ], [ false, %66 ]
  ret i1 %68
}

declare void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8, !tbaa !63
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = shl nuw i32 1, %1
  %8 = shl nuw i32 1, %4
  %9 = sext i32 %7 to i64
  %10 = mul nsw i64 %9, 24
  %11 = tail call i8* @malloc(i64 %10) #8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %6
  %14 = tail call i8* @memset(i8* nonnull %11, i32 0, i64 %10) #8
  %15 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %16 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15, align 8, !tbaa !64
  %17 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15 to i8**
  store i8* %11, i8** %17, align 8, !tbaa !64
  store i32 %1, i32* %3, align 8, !tbaa !63
  %18 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3
  %19 = load i32, i32* %18, align 8, !tbaa !72
  %20 = icmp sgt i32 %19, 0
  %21 = icmp ne i32 %4, 31
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %13
  %24 = icmp sgt i32 %8, 1
  %25 = select i1 %24, i32 %8, i32 1
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %23, %36
  %28 = phi i64 [ 0, %23 ], [ %37, %36 ]
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %16, i64 %28, i32 2
  %30 = load i32, i32* %29, align 8, !tbaa !66
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %16, i64 %28
  %34 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %33) #9
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.117, i64 0, i64 0)) #8
  tail call void @abort() #8
  br label %36

36:                                               ; preds = %27, %32, %35
  %37 = add nuw nsw i64 %28, 1
  %38 = icmp eq i64 %37, %26
  br i1 %38, label %39, label %27, !llvm.loop !86

39:                                               ; preds = %36, %13
  %40 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %16 to i8*
  tail call void @free(i8* %40) #8
  br label %41

41:                                               ; preds = %2, %39, %6
  %42 = phi i1 [ false, %6 ], [ true, %39 ], [ true, %2 ]
  ret i1 %42
}

declare i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind willreturn
define internal void @_GLOBAL__sub_I_metal.cpp() #6 {
  %1 = load i8, i8* bitcast (i64* @_ZGVN6Halide7Runtime8Internal5Metal17compilation_cacheE to i8*), align 4
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 1), align 8, !tbaa !63
  store %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !64
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 3), align 8, !tbaa !72
  store i32 2, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 4), align 4, !tbaa !60
  store i64 1, i64* @_ZGVN6Halide7Runtime8Internal5Metal17compilation_cacheE, align 4
  br label %4

4:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #7

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree norecurse nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

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
!37 = !{!17, !17, i64 0}
!38 = !{i64 0, i64 8, !39, i64 8, i64 8, !39}
!39 = !{!40, !40, i64 0}
!40 = !{!"long", !5, i64 0}
!41 = distinct !{!41, !8}
!42 = !{!43, !17, i64 8}
!43 = !{!"_ZTSN6Halide7Runtime8Internal5Metal18MetalContextHolderE", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !21, i64 32}
!44 = !{!43, !17, i64 0}
!45 = !{!43, !21, i64 32}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = !{!43, !17, i64 16}
!50 = !{!51, !17, i64 0}
!51 = !{!"_ZTSN6Halide7Runtime8Internal5Metal13device_handleE", !17, i64 0, !4, i64 8}
!52 = !{!51, !4, i64 8}
!53 = !{!16, !17, i64 8}
!54 = !{!55, !17, i64 120}
!55 = !{!"_ZTS25halide_device_interface_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120}
!56 = !{!57, !17, i64 0}
!57 = !{!"_ZTS30halide_device_interface_impl_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120}
!58 = !{!57, !17, i64 8}
!59 = !{!21, !21, i64 0}
!60 = !{!61, !21, i64 28}
!61 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEEE", !62, i64 0, !21, i64 8, !17, i64 16, !21, i64 24, !21, i64 28}
!62 = !{!"_ZTS12halide_mutex", !5, i64 0}
!63 = !{!61, !21, i64 8}
!64 = !{!61, !17, i64 16}
!65 = distinct !{!65, !8}
!66 = !{!67, !21, i64 16}
!67 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE17CachedCompilationE", !17, i64 0, !17, i64 8, !21, i64 16, !21, i64 20}
!68 = !{!67, !17, i64 0}
!69 = !{!67, !21, i64 20}
!70 = !{!67, !17, i64 8}
!71 = !{!43, !17, i64 24}
!72 = !{!61, !21, i64 24}
!73 = distinct !{!73, !8}
!74 = !{i64 0, i64 8, !39}
!75 = !{i64 0, i64 65}
!76 = distinct !{!76, !8}
!77 = !{!78, !78, i64 0}
!78 = !{!"bool", !5, i64 0}
!79 = distinct !{!79, !8}
!80 = distinct !{!80, !8}
!81 = !{!16, !4, i64 24}
!82 = distinct !{!82, !8}
!83 = distinct !{!83, !8}
!84 = distinct !{!84, !8}
!85 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 4, !59, i64 20, i64 4, !59}
!86 = distinct !{!86, !8}
