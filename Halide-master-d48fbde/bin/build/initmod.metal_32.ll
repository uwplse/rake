; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.halide_metal_device = type opaque
%struct.halide_metal_command_queue = type opaque
%"class.Halide::Internal::GPUCompilationCache" = type { %struct.halide_mutex, i32, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, i32, i32 }
%struct.halide_mutex = type { [1 x i32] }
%"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation" = type { %struct.halide_metal_device*, %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, i32, i32 }
%"struct.Halide::Runtime::Internal::Metal::mtl_library" = type opaque
%"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_descriptor_1" = type { i32, i32 }
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
%"struct.Halide::Runtime::Internal::Metal::NSRange" = type { i32, i32 }
%"class.Halide::Runtime::Internal::Metal::MetalContextHolder" = type { i8*, i8*, %struct.halide_metal_device*, %struct.halide_metal_command_queue*, i32 }
%"struct.Halide::Runtime::Internal::Metal::device_handle" = type { %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, i64 }

$_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcjEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_ = comdat any

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
@_ZN6Halide7Runtime8Internal5Metal6deviceE = weak local_unnamed_addr global %struct.halide_metal_device* null, align 4
@_ZN6Halide7Runtime8Internal5Metal5queueE = weak local_unnamed_addr global %struct.halide_metal_command_queue* null, align 4
@_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE = weak global %"class.Halide::Internal::GPUCompilationCache" zeroinitializer, align 4
@_ZGVN6Halide7Runtime8Internal5Metal17compilation_cacheE = weak local_unnamed_addr global i64 0, comdat, align 8
@_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE = weak local_unnamed_addr global i8 0, align 1
@_ZN6Halide7Runtime8Internal5Metal24metal_api_checked_deviceE = weak local_unnamed_addr global %struct.halide_metal_device* null, align 4
@.str.41 = private unnamed_addr constant [47 x i8] c"Metal: cannot allocate system default device.\0A\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"Metal: cannot allocate command queue.\0A\00", align 1
@.str.44 = private unnamed_addr constant [134 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:372 Assert failed: (device == nullptr) || (queue != nullptr)\0A\00", align 1
@_ZN6Halide7Runtime8Internal5Metal43command_buffer_completed_handler_descriptorE = weak global %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_descriptor_1" { i32 0, i32 20 }, align 4
@_NSConcreteGlobalBlock = external global %struct.ObjectiveCClass, align 1
@_ZN6Halide7Runtime8Internal5Metal38command_buffer_completed_handler_blockE = weak global %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal" { i8* bitcast (%struct.ObjectiveCClass* @_NSConcreteGlobalBlock to i8*), i32 805306368, i32 0, void (%"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"*, %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"*)* @_ZN6Halide7Runtime8Internal5Metal39command_buffer_completed_handler_invokeEPNS2_46command_buffer_completed_handler_block_literalEPNS2_18mtl_command_bufferE, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_descriptor_1"* @_ZN6Halide7Runtime8Internal5Metal43command_buffer_completed_handler_descriptorE }, align 4
@.str.48 = private unnamed_addr constant [102 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:468 Assert failed: size != 0\0A\00", align 1
@.str.49 = private unnamed_addr constant [116 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:476 Assert failed: buf->dim[i].stride >= 0\0A\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"Metal: Failed to allocate buffer of size \00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE = weak global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* null, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal5Metal27metal_device_interface_implE }, align 4
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
@_ZN6Halide7Runtime8Internal5Metal27metal_device_interface_implE = weak global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_sync, i32 (i8*)* @halide_metal_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_metal_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_metal_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_metal_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_metal_wrap_buffer, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_detach_buffer }, align 4
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
  %39 = tail call i8* @memcpy(i8* %35, i8* %30, i32 %38) #8
  br label %51

40:                                               ; preds = %21, %40
  %41 = phi i64 [ 0, %21 ], [ %48, %40 ]
  %42 = phi i64 [ %2, %21 ], [ %45, %40 ]
  %43 = phi i64 [ %3, %21 ], [ %47, %40 ]
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %42, i64 %43) #9
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
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #10
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

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
  %1 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #8
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #8
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %1, i8* %2) #8
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #8
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #8
  ret i8* %5
}

declare void @objc_msgSend() local_unnamed_addr #2

declare i8* @objc_getClass(i8*) local_unnamed_addr #2

declare i8* @sel_getUid(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal22drain_autorelease_poolEPv(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #8
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal16retain_ns_objectEPv(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #8
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #8
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* %0, i32 %1) local_unnamed_addr #0 {
  %3 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)) #8
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #8
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #8
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i32 0, i32 0)) #8
  %7 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*, i8*, i32, i32, i8)*)(i8* %5, i8* %6, i8* %0, i32 %1, i32 4, i8 zeroext 0) #8
  ret i8* %7
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal18ns_log_utf8_stringEPKc(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 2) #9
  %3 = tail call i32 @strlen(i8* %0) #8
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* %0, i32 %3) #9
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %4) #8
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #9
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #9
  ret void
}

declare i32 @strlen(i8*) local_unnamed_addr #2

declare void @NSLog(i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 2) #9
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %0) #8
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #9
  ret void
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* @_ZN6Halide7Runtime8Internal5Metal10new_bufferEP19halide_metal_devicej(%struct.halide_metal_device* %0, i32 %1) local_unnamed_addr #0 {
  %3 = bitcast %struct.halide_metal_device* %0 to i8*
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0)) #8
  %5 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* (i8*, i8*, i32, i32)*)(i8* %3, i8* %4, i32 %1, i32 0) #8
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %5
}

; Function Attrs: nounwind mustprogress
define weak %struct.halide_metal_command_queue* @_ZN6Halide7Runtime8Internal5Metal17new_command_queueEP19halide_metal_device(%struct.halide_metal_device* %0) local_unnamed_addr #0 {
  %2 = bitcast %struct.halide_metal_device* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0)) #8
  %4 = tail call %struct.halide_metal_command_queue* bitcast (void ()* @objc_msgSend to %struct.halide_metal_command_queue* (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret %struct.halide_metal_command_queue* %4
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcj(%struct.halide_metal_command_queue* %0, i8* %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* %1, i32 %2) #9
  %5 = bitcast %struct.halide_metal_command_queue* %0 to i8*
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0)) #8
  %7 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* (i8*, i8*)*)(i8* %5, i8* %6) #8
  %8 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %7 to i8*
  %9 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*)*)(i8* %8, i8* %9, i8* %4) #8
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #9
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %7
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal36add_command_buffer_completed_handlerEPNS2_18mtl_command_bufferEPNS2_46command_buffer_completed_handler_block_literalE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* %1) local_unnamed_addr #0 {
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"*)*)(i8* %3, i8* %4, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* %1) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i8* @_ZN6Halide7Runtime8Internal5Metal20command_buffer_errorEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #8
  %4 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret i8* %4
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal27new_compute_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0)) #8
  %4 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %4
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal24new_blit_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0)) #8
  %4 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %4
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* @_ZN6Halide7Runtime8Internal5Metal40new_compute_pipeline_state_with_functionEP19halide_metal_devicePNS2_12mtl_functionE(%struct.halide_metal_device* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %1) local_unnamed_addr #0 {
  %3 = alloca i8*, align 4
  %4 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #10
  %5 = bitcast %struct.halide_metal_device* %0 to i8*
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i32 0, i32 0)) #8
  %7 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %1 to i8*
  %8 = call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* (i8*, i8*, i8*, i8**)*)(i8* %5, i8* %6, i8* %7, i8** nonnull %3) #8
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 4, !tbaa !37
  call void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %11) #9
  br label %12

12:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #10
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %8
}

; Function Attrs: nounwind mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal5Metal37get_max_total_threads_per_threadgroupEPNS2_26mtl_compute_pipeline_stateE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0)) #8
  %4 = tail call i32 bitcast (void ()* @objc_msgSend to i32 (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal26set_compute_pipeline_stateEPNS2_27mtl_compute_command_encoderEPNS2_26mtl_compute_pipeline_stateE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %1) local_unnamed_addr #0 {
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0)) #8
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %1 to i8*
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*)*)(i8* %3, i8* %4, i8* %5) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal16did_modify_rangeEPNS2_10mtl_bufferENS2_7NSRangeE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0, %"struct.Halide::Runtime::Internal::Metal::NSRange"* byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 4 %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to %"struct.Halide::Runtime::Internal::Metal::NSRange"*
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0 to i8*
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0)) #8
  %7 = bitcast %"struct.Halide::Runtime::Internal::Metal::NSRange"* %1 to i64*
  %8 = load i64, i64* %7, align 4
  store i64 %8, i64* %3, align 8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::NSRange"*)*)(i8* %5, i8* %6, %"struct.Halide::Runtime::Internal::Metal::NSRange"* nonnull byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 4 %4) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal20synchronize_resourceEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1) local_unnamed_addr #0 {
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0 to i8*
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*)*)(i8* %3, i8* %4, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0)) #8
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0 to i8*
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0)) #8
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
define weak void @_ZN6Halide7Runtime8Internal5Metal24buffer_to_buffer_1d_copyEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferEjS6_jj(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, i32 %2, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %3, i32 %4, i32 %5) local_unnamed_addr #0 {
  %7 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0 to i8*
  %8 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.26, i32 0, i32 0)) #8
  %9 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1 to i8*
  %10 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %3 to i8*
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*, i32, i8*, i32, i32)*)(i8* %7, i8* %8, i8* %9, i32 %2, i8* %10, i32 %4, i32 %5) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_24mtl_blit_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal5Metal25buffer_supports_set_bytesEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0)) #8
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0)) #8
  %5 = tail call zeroext i1 bitcast (void ()* @objc_msgSend to i1 (i8*, i8*, i8*)*)(i8* %3, i8* %4, i8* %2) #8
  ret i1 %5
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::Metal::mtl_library"* @_ZN6Halide7Runtime8Internal5Metal23new_library_with_sourceEP19halide_metal_devicePKcj(%struct.halide_metal_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 4
  %5 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #10
  %6 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* %1, i32 %2) #9
  %7 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0)) #8
  %8 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #8
  %9 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %7, i8* %8) #8
  %10 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #8
  %11 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %9, i8* %10) #8
  %12 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8)*)(i8* %11, i8* %12, i8 zeroext 0) #8
  %13 = bitcast %struct.halide_metal_device* %0 to i8*
  %14 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0)) #8
  %15 = call %"struct.Halide::Runtime::Internal::Metal::mtl_library"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (i8*, i8*, i8*, i8*, i8**)*)(i8* %13, i8* %14, i8* %6, i8* %11, i8** nonnull %4) #8
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %11) #9
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %6) #9
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 4, !tbaa !37
  call void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %18) #9
  br label %19

19:                                               ; preds = %17, %3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %15
}

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::Metal::mtl_function"* @_ZN6Halide7Runtime8Internal5Metal22new_function_with_nameEPNS2_11mtl_libraryEPKcj(%"struct.Halide::Runtime::Internal::Metal::mtl_library"* %0, i8* %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* %1, i32 %2) #9
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %0 to i8*
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0)) #8
  %7 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_function"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_function"* (i8*, i8*, i8*)*)(i8* %5, i8* %6, i8* %4) #8
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #9
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %7
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal16set_input_bufferEPNS2_27mtl_compute_command_encoderEPNS2_10mtl_bufferEyj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, i64 %2, i32 %3) local_unnamed_addr #0 {
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0)) #8
  %7 = trunc i64 %2 to i32
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, i32, i32)*)(i8* %5, i8* %6, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, i32 %7, i32 %3) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal27set_input_buffer_from_bytesEPNS2_27mtl_compute_command_encoderEPhjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, i8* %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*, i32, i32)*)(i8* %5, i8* %6, i8* %1, i32 %2, i32 %3) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal29set_threadgroup_memory_lengthEPNS2_27mtl_compute_command_encoderEjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, i32 %1, i32 %2) local_unnamed_addr #0 {
  %4 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*
  %5 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i32, i32)*)(i8* %4, i8* %5, i32 %1, i32 %2) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal20wait_until_completedEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0)) #8
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0) local_unnamed_addr #0 {
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0 to i8*
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)) #8
  %4 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %2, i8* %3) #8
  ret i8* %4
}

; Function Attrs: nounwind mustprogress
define weak i8* @_ZN6Halide7Runtime8Internal5Metal20nsarray_first_objectEPv(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0)) #8
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
  %5 = tail call i8* @dlsym(i8* nonnull inttoptr (i32 -2 to i8*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0)) #8
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
  br i1 %7, label %8, label %5, !llvm.loop !38

8:                                                ; preds = %5
  %9 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 4, !tbaa !37
  %10 = icmp eq %struct.halide_metal_device* %9, null
  %11 = and i1 %10, %3
  br i1 %11, label %12, label %51

12:                                               ; preds = %8
  %13 = tail call %struct.halide_metal_device* @_ZN6Halide7Runtime8Internal5Metal22get_default_mtl_deviceEv() #9
  store %struct.halide_metal_device* %13, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 4, !tbaa !37
  %14 = icmp eq %struct.halide_metal_device* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = tail call i8* @malloc(i32 1024) #8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i8* @halide_string_to_string(i8* %16, i8* null, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i32 0, i32 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i32 0, i32 0)) #8
  br label %29

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, i8* %16, i32 1023
  store i8 0, i8* %21, align 1, !tbaa !36
  %22 = tail call i8* @halide_string_to_string(i8* nonnull %16, i8* nonnull %21, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i32 0, i32 0)) #8
  %23 = ptrtoint i8* %22 to i32
  %24 = ptrtoint i8* %16 to i32
  %25 = add i32 %23, 1
  %26 = sub i32 %25, %24
  %27 = sext i32 %26 to i64
  %28 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %16, i64 %27) #8
  tail call void @halide_error(i8* %0, i8* nonnull %16) #8
  br label %29

29:                                               ; preds = %20, %18
  tail call void @free(i8* %16) #8
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal5Metal11thread_lockE release, align 1
  br label %61

30:                                               ; preds = %12
  %31 = tail call %struct.halide_metal_command_queue* @_ZN6Halide7Runtime8Internal5Metal17new_command_queueEP19halide_metal_device(%struct.halide_metal_device* nonnull %13) #9
  store %struct.halide_metal_command_queue* %31, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 4, !tbaa !37
  %32 = icmp eq %struct.halide_metal_command_queue* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 4, !tbaa !37
  br label %58

35:                                               ; preds = %30
  %36 = tail call i8* @malloc(i32 1024) #8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = tail call i8* @halide_string_to_string(i8* %36, i8* null, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i32 0, i32 0)) #8
  br label %49

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, i8* %36, i32 1023
  store i8 0, i8* %41, align 1, !tbaa !36
  %42 = tail call i8* @halide_string_to_string(i8* nonnull %36, i8* nonnull %41, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0)) #8
  %43 = ptrtoint i8* %42 to i32
  %44 = ptrtoint i8* %36 to i32
  %45 = add i32 %43, 1
  %46 = sub i32 %45, %44
  %47 = sext i32 %46 to i64
  %48 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %36, i64 %47) #8
  tail call void @halide_error(i8* %0, i8* nonnull %36) #8
  br label %49

49:                                               ; preds = %40, %38
  tail call void @free(i8* %36) #8
  %50 = load i8*, i8** bitcast (%struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE to i8**), align 4, !tbaa !37
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %50) #9
  store %struct.halide_metal_device* null, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 4, !tbaa !37
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal5Metal11thread_lockE release, align 1
  br label %61

51:                                               ; preds = %8
  %52 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 4
  %53 = icmp eq %struct.halide_metal_device* %9, null
  %54 = icmp ne %struct.halide_metal_command_queue* %52, null
  %55 = or i1 %53, %54
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.44, i32 0, i32 0)) #8
  tail call void @abort() #8
  %57 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 4, !tbaa !37
  br label %58

58:                                               ; preds = %33, %51, %56
  %59 = phi %struct.halide_metal_device* [ %9, %51 ], [ %57, %56 ], [ %34, %33 ]
  store %struct.halide_metal_device* %59, %struct.halide_metal_device** %1, align 4, !tbaa !37
  %60 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 4, !tbaa !37
  store %struct.halide_metal_command_queue* %60, %struct.halide_metal_command_queue** %2, align 4, !tbaa !37
  br label %61

61:                                               ; preds = %58, %49, %29
  %62 = phi i32 [ -1, %29 ], [ -1, %49 ], [ 0, %58 ]
  ret i32 %62
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak i32 @halide_metal_release_context(i8* %0) local_unnamed_addr #5 {
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal5Metal11thread_lockE release, align 1
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %0, i8* %1, i1 zeroext %2) local_unnamed_addr #0 align 2 {
  %4 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i32 0, i32 1
  store i8* %1, i8** %4, align 4, !tbaa !39
  %5 = tail call i8* @_ZN6Halide7Runtime8Internal23create_autorelease_poolEv() #9
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i32 0, i32 0
  store i8* %5, i8** %6, align 4, !tbaa !41
  %7 = load i8*, i8** %4, align 4, !tbaa !39
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i32 0, i32 2
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i32 0, i32 3
  %10 = tail call i32 @halide_metal_acquire_context(i8* %7, %struct.halide_metal_device** nonnull %8, %struct.halide_metal_command_queue** nonnull %9, i1 zeroext %2) #9
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i32 0, i32 4
  store i32 %10, i32* %11, align 4, !tbaa !42
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %0) local_unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i32 0, i32 1
  %3 = load i8*, i8** %2, align 4, !tbaa !39
  %4 = tail call i32 @halide_metal_release_context(i8* %3) #9
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i32 0, i32 0
  %6 = load i8*, i8** %5, align 4, !tbaa !41
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
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %5 = load i32, i32* %4, align 4, !tbaa !24
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %9 = load i8, i8* %8, align 1, !tbaa !23
  br label %48

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %12 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %11, align 8, !tbaa !25
  br label %13

13:                                               ; preds = %25, %10
  %14 = phi i32 [ 0, %10 ], [ %27, %25 ]
  %15 = phi i32 [ 0, %10 ], [ %26, %25 ]
  %16 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %12, i32 %14, i32 2
  %17 = load i32, i32* %16, align 4, !tbaa !26
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %12, i32 %14, i32 1
  %21 = load i32, i32* %20, align 4, !tbaa !31
  %22 = add nsw i32 %21, -1
  %23 = mul nsw i32 %22, %17
  %24 = add nsw i32 %23, %15
  br label %25

25:                                               ; preds = %19, %13
  %26 = phi i32 [ %24, %19 ], [ %15, %13 ]
  %27 = add nuw nsw i32 %14, 1
  %28 = icmp slt i32 %27, %5
  br i1 %28, label %13, label %29, !llvm.loop !43

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %31 = load i8, i8* %30, align 1, !tbaa !23
  br label %32

32:                                               ; preds = %44, %29
  %33 = phi i32 [ 0, %29 ], [ %46, %44 ]
  %34 = phi i32 [ 0, %29 ], [ %45, %44 ]
  %35 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %12, i32 %33, i32 2
  %36 = load i32, i32* %35, align 4, !tbaa !26
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %12, i32 %33, i32 1
  %40 = load i32, i32* %39, align 4, !tbaa !31
  %41 = add nsw i32 %40, -1
  %42 = mul nsw i32 %41, %36
  %43 = add nsw i32 %42, %34
  br label %44

44:                                               ; preds = %38, %32
  %45 = phi i32 [ %43, %38 ], [ %34, %32 ]
  %46 = add nuw nsw i32 %33, 1
  %47 = icmp slt i32 %46, %5
  br i1 %47, label %32, label %48, !llvm.loop !44

48:                                               ; preds = %44, %7
  %49 = phi i8 [ %9, %7 ], [ %31, %44 ]
  %50 = phi i32 [ 0, %7 ], [ %26, %44 ]
  %51 = phi i32 [ 0, %7 ], [ %45, %44 ]
  %52 = zext i8 %49 to i32
  %53 = add nuw nsw i32 %52, 7
  %54 = lshr i32 %53, 3
  %55 = add nsw i32 %50, 1
  %56 = sub i32 %55, %51
  %57 = mul i32 %56, %54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.48, i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %60

60:                                               ; preds = %59, %48
  %61 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %62 = load i64, i64* %61, align 8, !tbaa !22
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %127

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4, !tbaa !24
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  br label %74

69:                                               ; preds = %83, %64
  %70 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %70) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3, i8* %0, i1 zeroext true) #8
  %71 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 4
  %72 = load i32, i32* %71, align 4, !tbaa !42
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %87, label %125

74:                                               ; preds = %67, %83
  %75 = phi i32 [ %65, %67 ], [ %84, %83 ]
  %76 = phi i32 [ 0, %67 ], [ %85, %83 ]
  %77 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %68, align 8, !tbaa !25
  %78 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %77, i32 %76, i32 2
  %79 = load i32, i32* %78, align 4, !tbaa !26
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %83, label %81

81:                                               ; preds = %74
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.49, i32 0, i32 0)) #8
  tail call void @abort() #8
  %82 = load i32, i32* %4, align 4, !tbaa !24
  br label %83

83:                                               ; preds = %74, %81
  %84 = phi i32 [ %75, %74 ], [ %82, %81 ]
  %85 = add nuw nsw i32 %76, 1
  %86 = icmp slt i32 %85, %84
  br i1 %86, label %74, label %69, !llvm.loop !45

87:                                               ; preds = %69
  %88 = call i8* @malloc(i32 16) #8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %125, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 2
  %92 = load %struct.halide_metal_device*, %struct.halide_metal_device** %91, align 4, !tbaa !46
  %93 = call %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* @_ZN6Halide7Runtime8Internal5Metal10new_bufferEP19halide_metal_devicej(%struct.halide_metal_device* %92, i32 %57) #9
  %94 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %93, null
  br i1 %94, label %95, label %115

95:                                               ; preds = %90
  call void @free(i8* nonnull %88) #8
  %96 = call i8* @malloc(i32 1024) #8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds i8, i8* %96, i32 1023
  store i8 0, i8* %99, align 1, !tbaa !36
  br label %100

100:                                              ; preds = %95, %98
  %101 = phi i8* [ %99, %98 ], [ null, %95 ]
  %102 = call i8* @halide_string_to_string(i8* %96, i8* %101, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i32 0, i32 0)) #8
  %103 = zext i32 %57 to i64
  %104 = call i8* @halide_int64_to_string(i8* %102, i8* %101, i64 %103, i32 1) #8
  %105 = call i8* @halide_string_to_string(i8* %104, i8* %101, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0)) #8
  br i1 %97, label %106, label %107

106:                                              ; preds = %100
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i32 0, i32 0)) #8
  br label %114

107:                                              ; preds = %100
  %108 = ptrtoint i8* %105 to i32
  %109 = ptrtoint i8* %96 to i32
  %110 = add i32 %108, 1
  %111 = sub i32 %110, %109
  %112 = sext i32 %111 to i64
  %113 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %96, i64 %112) #8
  call void @halide_error(i8* %0, i8* nonnull %96) #8
  br label %114

114:                                              ; preds = %107, %106
  call void @free(i8* %96) #8
  br label %125

115:                                              ; preds = %90
  %116 = bitcast i8* %88 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"**
  store %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %93, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %116, align 8, !tbaa !47
  %117 = getelementptr inbounds i8, i8* %88, i32 8
  %118 = bitcast i8* %117 to i64*
  store i64 0, i64* %118, align 8, !tbaa !49
  %119 = ptrtoint i8* %88 to i32
  %120 = zext i32 %119 to i64
  store i64 %120, i64* %61, align 8, !tbaa !22
  %121 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, %struct.halide_device_interface_t** %121, align 8, !tbaa !50
  %122 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, i32 0, i32 15), align 4, !tbaa !51
  %123 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %122, i32 0, i32 0
  %124 = load void ()*, void ()** %123, align 4, !tbaa !53
  call void %124() #8
  br label %125

125:                                              ; preds = %87, %115, %114, %69
  %126 = phi i32 [ %72, %69 ], [ -11, %87 ], [ -1, %114 ], [ 0, %115 ]
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3) #8
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %70) #10
  br label %127

127:                                              ; preds = %60, %125
  %128 = phi i32 [ %126, %125 ], [ 0, %60 ]
  ret i32 %128
}

declare i8* @malloc(i32) local_unnamed_addr #2

declare void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_metal_device_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = trunc i64 %4 to i32
  %8 = inttoptr i32 %7 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8, !tbaa !49
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.56, i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %13

13:                                               ; preds = %12, %6
  %14 = inttoptr i32 %7 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !47
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %15) #9
  %16 = inttoptr i32 %7 to i8*
  tail call void @free(i8* %16) #8
  store i64 0, i64* %3, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %18 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %17, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %18, i32 0, i32 15
  %20 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %19, align 4, !tbaa !51
  %21 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %20, i32 0, i32 1
  %22 = load void ()*, void ()** %21, align 4, !tbaa !55
  tail call void %22() #8
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %17, align 8, !tbaa !50
  br label %23

23:                                               ; preds = %2, %13
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_metal_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #4 {
  %5 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, align 4
  %7 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %7) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %5, i8* %0, i1 zeroext true) #8
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, i32 0, i32 4
  %9 = load i32, i32* %8, align 4, !tbaa !42
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #10
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* null, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %6, align 4, !tbaa !37
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, i32 0, i32 2
  %14 = load %struct.halide_metal_device*, %struct.halide_metal_device** %13, align 4, !tbaa !46
  %15 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcjEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i8* %0, i8** %1, %struct.halide_metal_device* %14, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** nonnull align 4 dereferenceable(4) %6, %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (%struct.halide_metal_device*, i8*, i32)* nonnull @_ZN6Halide7Runtime8Internal5Metal23new_library_with_sourceEP19halide_metal_devicePKcj, %struct.halide_metal_device* %14, i8* %2, i32 %3) #9
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %6, align 4, !tbaa !37
  %18 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.57, i32 0, i32 0)) #8
  call void @abort() #8
  br label %20

20:                                               ; preds = %16, %19, %11
  %21 = phi i32 [ -1, %11 ], [ 0, %19 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #10
  br label %22

22:                                               ; preds = %4, %20
  %23 = phi i32 [ %21, %20 ], [ %9, %4 ]
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %5) #8
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %7) #10
  ret i32 %23
}

; Function Attrs: nounwind
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcjEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i8* %1, i8** %2, %struct.halide_metal_device* %3, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** nonnull align 4 dereferenceable(4) %4, %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (%struct.halide_metal_device*, i8*, i32)* %5, %struct.halide_metal_device* %6, i8* %7, i32 %8) local_unnamed_addr #4 comdat align 2 {
  %10 = alloca %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", align 4
  %11 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %11) #8
  %12 = bitcast i8** %2 to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !56
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 4
  %17 = load i32, i32* %16, align 4, !tbaa !57
  %18 = add i32 %17, 1
  store i32 %18, i32* %16, align 4, !tbaa !57
  store i32 %17, i32* %12, align 4, !tbaa !56
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i32 [ %17, %15 ], [ %13, %9 ]
  %21 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %22 = load i32, i32* %21, align 4, !tbaa !60
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %58, label %24

24:                                               ; preds = %19
  %25 = ptrtoint %struct.halide_metal_device* %3 to i32
  %26 = add i32 %20, %25
  %27 = mul i32 %26, -1640531527
  %28 = sub i32 32, %22
  %29 = lshr i32 %27, %28
  %30 = shl nuw i32 1, %22
  %31 = icmp eq i32 %22, 31
  br i1 %31, label %58, label %32

32:                                               ; preds = %24
  %33 = add nsw i32 %30, -1
  %34 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %35 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %34, align 4, !tbaa !61
  br label %38

36:                                               ; preds = %45
  %37 = icmp slt i32 %51, %30
  br i1 %37, label %38, label %58, !llvm.loop !62

38:                                               ; preds = %36, %32
  %39 = phi i32 [ 0, %32 ], [ %51, %36 ]
  %40 = add i32 %39, %29
  %41 = and i32 %40, %33
  %42 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %35, i32 %41, i32 2
  %43 = load i32, i32* %42, align 4, !tbaa !63
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %35, i32 %41, i32 0
  %47 = load %struct.halide_metal_device*, %struct.halide_metal_device** %46, align 4, !tbaa !65
  %48 = icmp eq %struct.halide_metal_device* %47, %3
  %49 = icmp eq i32 %43, %20
  %50 = and i1 %49, %48
  %51 = add nuw nsw i32 %39, 1
  br i1 %50, label %52, label %36

52:                                               ; preds = %45
  %53 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %35, i32 %41, i32 1
  %54 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %35, i32 %41, i32 3
  %55 = load i32, i32* %54, align 4, !tbaa !66
  %56 = add i32 %55, 1
  store i32 %56, i32* %54, align 4, !tbaa !66
  %57 = load %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %53, align 4, !tbaa !37
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %57, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %4, align 4, !tbaa !37
  br label %70

58:                                               ; preds = %38, %36, %24, %19
  %59 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %5(%struct.halide_metal_device* %6, i8* %7, i32 %8) #8
  %60 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %62) #10
  %63 = load i32, i32* %12, align 4, !tbaa !56
  %64 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i32 0, i32 0
  store %struct.halide_metal_device* %3, %struct.halide_metal_device** %64, align 4, !tbaa !65
  %65 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %59, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %65, align 4, !tbaa !67
  %66 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i32 0, i32 2
  store i32 %63, i32* %66, align 4, !tbaa !63
  %67 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i32 0, i32 3
  store i32 1, i32* %67, align 4, !tbaa !66
  %68 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %62) #10
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %59, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %4, align 4, !tbaa !37
  br label %70

70:                                               ; preds = %69, %58, %61, %52
  %71 = phi i1 [ true, %52 ], [ true, %69 ], [ false, %58 ], [ false, %61 ]
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %11) #8
  ret i1 %71
}

; Function Attrs: nounwind
define weak void @halide_metal_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  %4 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3, i8* %0, i1 zeroext true) #8
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 4
  %6 = load i32, i32* %5, align 4, !tbaa !42
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 2
  %10 = load %struct.halide_metal_device*, %struct.halide_metal_device** %9, align 4, !tbaa !46
  %11 = ptrtoint i8* %1 to i32
  %12 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 1), align 4, !tbaa !60
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %8
  %15 = ptrtoint %struct.halide_metal_device* %10 to i32
  %16 = add i32 %15, %11
  %17 = mul i32 %16, -1640531527
  %18 = sub i32 32, %12
  %19 = lshr i32 %17, %18
  %20 = shl nuw i32 1, %12
  %21 = icmp eq i32 %12, 31
  br i1 %21, label %45, label %22

22:                                               ; preds = %14
  %23 = add nsw i32 %20, -1
  %24 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !61
  br label %27

25:                                               ; preds = %34
  %26 = icmp slt i32 %40, %20
  br i1 %26, label %27, label %45, !llvm.loop !62

27:                                               ; preds = %25, %22
  %28 = phi i32 [ 0, %22 ], [ %40, %25 ]
  %29 = add i32 %28, %19
  %30 = and i32 %29, %23
  %31 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %24, i32 %30, i32 2
  %32 = load i32, i32* %31, align 4, !tbaa !63
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %24, i32 %30, i32 0
  %36 = load %struct.halide_metal_device*, %struct.halide_metal_device** %35, align 4, !tbaa !65
  %37 = icmp eq %struct.halide_metal_device* %36, %10
  %38 = icmp eq i32 %32, %11
  %39 = and i1 %38, %37
  %40 = add nuw nsw i32 %28, 1
  br i1 %39, label %41, label %25

41:                                               ; preds = %34
  %42 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %24, i32 %30, i32 3
  %43 = load i32, i32* %42, align 4, !tbaa !66
  %44 = add i32 %43, -1
  store i32 %44, i32* %42, align 4, !tbaa !66
  br label %46

45:                                               ; preds = %27, %25, %14, %8
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.118, i32 0, i32 0)) #8
  call void @abort() #8
  br label %46

46:                                               ; preds = %45, %41, %2
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3) #8
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #10
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = tail call i32 @strlen(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.58, i32 0, i32 0)) #8
  %4 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcj(%struct.halide_metal_command_queue* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.58, i32 0, i32 0), i32 %3) #9
  %5 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !22
  %9 = trunc i64 %8 to i32
  %10 = inttoptr i32 %9 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %10, i32 0, i32 0
  %12 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %11, align 8, !tbaa !47
  %13 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %12) #9
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal24new_blit_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %4) #9
  tail call void @_ZN6Halide7Runtime8Internal5Metal20synchronize_resourceEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %15, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %12) #9
  tail call void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_24mtl_blit_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %15) #9
  br label %16

16:                                               ; preds = %6, %14, %2
  tail call void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %4) #9
  tail call void @_ZN6Halide7Runtime8Internal5Metal20wait_until_completedEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %4) #9
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_metal_device_sync(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  %4 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3, i8* %0, i1 zeroext true) #8
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 4
  %6 = load i32, i32* %5, align 4, !tbaa !42
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 3
  %10 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %9, align 4, !tbaa !68
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %10, %struct.halide_buffer_t* %1) #9
  br label %11

11:                                               ; preds = %2, %8
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3) #8
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #10
  ret i32 %6
}

; Function Attrs: nounwind
define weak i32 @halide_metal_device_release(i8* %0) #4 {
  %2 = alloca %struct.halide_metal_device*, align 4
  %3 = alloca %struct.halide_metal_command_queue*, align 4
  %4 = bitcast %struct.halide_metal_device** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #10
  %5 = bitcast %struct.halide_metal_command_queue** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #10
  %6 = call i32 @halide_metal_acquire_context(i8* %0, %struct.halide_metal_device** nonnull %2, %struct.halide_metal_command_queue** nonnull %3, i1 zeroext false) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %61

8:                                                ; preds = %1
  %9 = load %struct.halide_metal_device*, %struct.halide_metal_device** %2, align 4, !tbaa !37
  %10 = icmp eq %struct.halide_metal_device* %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %8
  %12 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 4, !tbaa !37
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %12, %struct.halide_buffer_t* null) #9
  %13 = load %struct.halide_metal_device*, %struct.halide_metal_device** %2, align 4, !tbaa !37
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0)) #8
  %14 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 3), align 4, !tbaa !69
  %15 = icmp eq i32 %14, 0
  %16 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 1), align 4
  %17 = icmp eq i32 %16, 31
  %18 = or i1 %15, %17
  br i1 %18, label %52, label %19

19:                                               ; preds = %11
  %20 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !61
  br label %21

21:                                               ; preds = %46, %19
  %22 = phi i32 [ %47, %46 ], [ %16, %19 ]
  %23 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* [ %48, %46 ], [ %20, %19 ]
  %24 = phi i32 [ %49, %46 ], [ 0, %19 ]
  %25 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %23, i32 %24, i32 2
  %26 = load i32, i32* %25, align 4, !tbaa !63
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %23, i32 %24, i32 0
  %30 = load %struct.halide_metal_device*, %struct.halide_metal_device** %29, align 4, !tbaa !65
  %31 = icmp eq %struct.halide_metal_device* %30, %13
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %23, i32 %24, i32 3
  %34 = load i32, i32* %33, align 4, !tbaa !66
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %23, i32 %24, i32 1
  %38 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %37 to i8**
  %39 = load i8*, i8** %38, align 4, !tbaa !67
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %39) #8
  %40 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !61
  %41 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %40, i32 %24, i32 1
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* null, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %41, align 4, !tbaa !67
  %42 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %40, i32 %24, i32 2
  store i32 1, i32* %42, align 4, !tbaa !63
  %43 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 3), align 4, !tbaa !69
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 3), align 4, !tbaa !69
  %45 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 1), align 4, !tbaa !60
  br label %46

46:                                               ; preds = %36, %32, %28, %21
  %47 = phi i32 [ %22, %21 ], [ %22, %28 ], [ %22, %32 ], [ %45, %36 ]
  %48 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* [ %23, %21 ], [ %23, %28 ], [ %23, %32 ], [ %40, %36 ]
  %49 = add nuw nsw i32 %24, 1
  %50 = shl nuw i32 1, %47
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %21, label %52, !llvm.loop !70

52:                                               ; preds = %46, %11
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0)) #8
  %53 = load %struct.halide_metal_device*, %struct.halide_metal_device** %2, align 4, !tbaa !37
  %54 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 4, !tbaa !37
  %55 = icmp eq %struct.halide_metal_device* %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i8*, i8** bitcast (%struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE to i8**), align 4, !tbaa !37
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %57) #9
  store %struct.halide_metal_command_queue* null, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 4, !tbaa !37
  %58 = load i8*, i8** bitcast (%struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE to i8**), align 4, !tbaa !37
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %58) #9
  store %struct.halide_metal_device* null, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 4, !tbaa !37
  br label %59

59:                                               ; preds = %52, %56, %8
  %60 = call i32 @halide_metal_release_context(i8* %0) #9
  br label %61

61:                                               ; preds = %1, %59
  %62 = phi i32 [ 0, %59 ], [ %6, %1 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #10
  ret i32 %62
}

; Function Attrs: nounwind
define weak i32 @halide_metal_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %5 = alloca %"struct.Halide::Runtime::Internal::Metal::NSRange", align 4
  %6 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %6) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3, i8* %0, i1 zeroext true) #8
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 4
  %8 = load i32, i32* %7, align 4, !tbaa !42
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %100

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %12 = load i8*, i8** %11, align 4, !tbaa !15
  %13 = icmp eq i8* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %16 = load i64, i64* %15, align 8, !tbaa !22
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.62, i32 0, i32 0)) #8
  call void @abort() #8
  br label %19

19:                                               ; preds = %18, %14
  %20 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %20) #10
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %1) #9
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 1
  %22 = load i64, i64* %21, align 8, !tbaa !11
  %23 = trunc i64 %22 to i32
  %24 = inttoptr i32 %23 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %24, i32 0, i32 0
  %26 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %25, align 8, !tbaa !47
  %27 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %26) #9
  %28 = ptrtoint i8* %27 to i32
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* %21, align 8, !tbaa !11
  %31 = trunc i64 %30 to i32
  %32 = inttoptr i32 %31 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8, !tbaa !49
  %35 = add i64 %34, %29
  store i64 %35, i64* %21, align 8, !tbaa !11
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i8* %0) #9
  %36 = call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %26) #9
  br i1 %36, label %37, label %97

37:                                               ; preds = %19
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %39 = load i32, i32* %38, align 4, !tbaa !24
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %43 = load i8, i8* %42, align 1, !tbaa !23
  br label %82

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %46 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %45, align 8, !tbaa !25
  br label %47

47:                                               ; preds = %59, %44
  %48 = phi i32 [ 0, %44 ], [ %61, %59 ]
  %49 = phi i32 [ 0, %44 ], [ %60, %59 ]
  %50 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %46, i32 %48, i32 2
  %51 = load i32, i32* %50, align 4, !tbaa !26
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %46, i32 %48, i32 1
  %55 = load i32, i32* %54, align 4, !tbaa !31
  %56 = add nsw i32 %55, -1
  %57 = mul nsw i32 %56, %51
  %58 = add nsw i32 %57, %49
  br label %59

59:                                               ; preds = %53, %47
  %60 = phi i32 [ %58, %53 ], [ %49, %47 ]
  %61 = add nuw nsw i32 %48, 1
  %62 = icmp slt i32 %61, %39
  br i1 %62, label %47, label %63, !llvm.loop !43

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %65 = load i8, i8* %64, align 1, !tbaa !23
  br label %66

66:                                               ; preds = %78, %63
  %67 = phi i32 [ 0, %63 ], [ %80, %78 ]
  %68 = phi i32 [ 0, %63 ], [ %79, %78 ]
  %69 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %46, i32 %67, i32 2
  %70 = load i32, i32* %69, align 4, !tbaa !26
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %46, i32 %67, i32 1
  %74 = load i32, i32* %73, align 4, !tbaa !31
  %75 = add nsw i32 %74, -1
  %76 = mul nsw i32 %75, %70
  %77 = add nsw i32 %76, %68
  br label %78

78:                                               ; preds = %72, %66
  %79 = phi i32 [ %77, %72 ], [ %68, %66 ]
  %80 = add nuw nsw i32 %67, 1
  %81 = icmp slt i32 %80, %39
  br i1 %81, label %66, label %82, !llvm.loop !44

82:                                               ; preds = %78, %41
  %83 = phi i8 [ %43, %41 ], [ %65, %78 ]
  %84 = phi i32 [ 0, %41 ], [ %60, %78 ]
  %85 = phi i32 [ 0, %41 ], [ %79, %78 ]
  %86 = zext i8 %83 to i32
  %87 = add nuw nsw i32 %86, 7
  %88 = lshr i32 %87, 3
  %89 = add nsw i32 %84, 1
  %90 = sub i32 %89, %85
  %91 = mul i32 %90, %88
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.66, i32 0, i32 0)) #8
  call void @abort() #8
  br label %94

94:                                               ; preds = %93, %82
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %5, i32 0, i32 0
  store i32 0, i32* %95, align 4, !tbaa.struct !71
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %5, i32 0, i32 1
  store i32 %91, i32* %96, align 4, !tbaa.struct !72
  call void @_ZN6Halide7Runtime8Internal5Metal16did_modify_rangeEPNS2_10mtl_bufferENS2_7NSRangeE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %26, %"struct.Halide::Runtime::Internal::Metal::NSRange"* nonnull byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 4 %5) #9
  br label %97

97:                                               ; preds = %94, %19
  %98 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 3
  %99 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %98, align 4, !tbaa !68
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %99, %struct.halide_buffer_t* %1) #9
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %20) #10
  br label %100

100:                                              ; preds = %2, %97
  %101 = phi i32 [ 0, %97 ], [ %8, %2 ]
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3) #8
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %6) #10
  ret i32 %101
}

; Function Attrs: nounwind
define weak i32 @halide_metal_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #4 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %5 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %5) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3, i8* %0, i1 zeroext true) #8
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 4
  %7 = load i32, i32* %6, align 4, !tbaa !42
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i32 0, i32 3
  %11 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %10, align 4, !tbaa !68
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %11, %struct.halide_buffer_t* %1) #9
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %13 = load i8*, i8** %12, align 4, !tbaa !15
  %14 = icmp eq i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8, !tbaa !22
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %9
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.67, i32 0, i32 0)) #8
  call void @abort() #8
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %22 = load i32, i32* %21, align 4, !tbaa !24
  %23 = icmp slt i32 %22, 17
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.68, i32 0, i32 0)) #8
  call void @abort() #8
  %25 = load i32, i32* %21, align 4, !tbaa !24
  %26 = icmp sgt i32 %25, 16
  br i1 %26, label %44, label %27

27:                                               ; preds = %20, %24
  %28 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %28) #10
  call void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %1) #9
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 0
  %30 = load i64, i64* %29, align 8, !tbaa !9
  %31 = trunc i64 %30 to i32
  %32 = inttoptr i32 %31 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %32, i32 0, i32 0
  %34 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %33, align 8, !tbaa !47
  %35 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %34) #9
  %36 = ptrtoint i8* %35 to i32
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* %29, align 8, !tbaa !9
  %39 = trunc i64 %38 to i32
  %40 = inttoptr i32 %39 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8, !tbaa !49
  %43 = add i64 %42, %37
  store i64 %43, i64* %29, align 8, !tbaa !9
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i8* %0) #9
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %28) #10
  br label %44

44:                                               ; preds = %24, %2, %27
  %45 = phi i32 [ 0, %27 ], [ %7, %2 ], [ -1, %24 ]
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %3) #8
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %5) #10
  ret i32 %45
}

; Function Attrs: nounwind
define weak i32 @halide_metal_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #4 {
  %18 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  %19 = alloca [4096 x i8], align 1
  %20 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %20) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %18, i8* %0, i1 zeroext true) #8
  %21 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, i32 0, i32 4
  %22 = load i32, i32* %21, align 4, !tbaa !42
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %305

24:                                               ; preds = %17
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, i32 0, i32 3
  %26 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %25, align 4, !tbaa !68
  %27 = call i32 @strlen(i8* %2) #8
  %28 = call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcj(%struct.halide_metal_command_queue* %26, i8* %2, i32 %27) #9
  %29 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = call i8* @malloc(i32 1024) #8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i8* @halide_string_to_string(i8* %31, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.69, i32 0, i32 0)) #8
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i32 0, i32 0)) #8
  br label %44

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, i8* %31, i32 1023
  store i8 0, i8* %36, align 1, !tbaa !36
  %37 = call i8* @halide_string_to_string(i8* nonnull %31, i8* nonnull %36, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.69, i32 0, i32 0)) #8
  %38 = ptrtoint i8* %37 to i32
  %39 = ptrtoint i8* %31 to i32
  %40 = add i32 %38, 1
  %41 = sub i32 %40, %39
  %42 = sext i32 %41 to i64
  %43 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %31, i64 %42) #8
  call void @halide_error(i8* %0, i8* nonnull %31) #8
  br label %44

44:                                               ; preds = %35, %33
  call void @free(i8* %31) #8
  br label %305

45:                                               ; preds = %24
  %46 = call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal27new_compute_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* nonnull %28) #9
  %47 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = call i8* @malloc(i32 1024) #8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i8* @halide_string_to_string(i8* %49, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.70, i32 0, i32 0)) #8
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i32 0, i32 0)) #8
  br label %62

53:                                               ; preds = %48
  %54 = getelementptr inbounds i8, i8* %49, i32 1023
  store i8 0, i8* %54, align 1, !tbaa !36
  %55 = call i8* @halide_string_to_string(i8* nonnull %49, i8* nonnull %54, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.70, i32 0, i32 0)) #8
  %56 = ptrtoint i8* %55 to i32
  %57 = ptrtoint i8* %49 to i32
  %58 = add i32 %56, 1
  %59 = sub i32 %58, %57
  %60 = sext i32 %59 to i64
  %61 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %49, i64 %60) #8
  call void @halide_error(i8* %0, i8* nonnull %49) #8
  br label %62

62:                                               ; preds = %53, %51
  call void @free(i8* %49) #8
  br label %305

63:                                               ; preds = %45
  %64 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, i32 0, i32 2
  %65 = load %struct.halide_metal_device*, %struct.halide_metal_device** %64, align 4, !tbaa !46
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0)) #8
  %66 = ptrtoint i8* %1 to i32
  %67 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 1), align 4, !tbaa !60
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %96, label %69

69:                                               ; preds = %63
  %70 = ptrtoint %struct.halide_metal_device* %65 to i32
  %71 = add i32 %70, %66
  %72 = mul i32 %71, -1640531527
  %73 = sub i32 32, %67
  %74 = lshr i32 %72, %73
  %75 = shl nuw i32 1, %67
  %76 = icmp eq i32 %67, 31
  br i1 %76, label %96, label %77

77:                                               ; preds = %69
  %78 = add nsw i32 %75, -1
  %79 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !61
  br label %82

80:                                               ; preds = %89
  %81 = icmp slt i32 %95, %75
  br i1 %81, label %82, label %96, !llvm.loop !62

82:                                               ; preds = %80, %77
  %83 = phi i32 [ 0, %77 ], [ %95, %80 ]
  %84 = add i32 %83, %74
  %85 = and i32 %84, %78
  %86 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %79, i32 %85, i32 2
  %87 = load i32, i32* %86, align 4, !tbaa !63
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %79, i32 %85, i32 0
  %91 = load %struct.halide_metal_device*, %struct.halide_metal_device** %90, align 4, !tbaa !65
  %92 = icmp eq %struct.halide_metal_device* %91, %65
  %93 = icmp eq i32 %87, %66
  %94 = and i1 %93, %92
  %95 = add nuw nsw i32 %83, 1
  br i1 %94, label %97, label %80

96:                                               ; preds = %80, %82, %63, %69
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0)) #8
  br label %101

97:                                               ; preds = %89
  %98 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %79, i32 %85, i32 1
  %99 = load %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %98, align 4, !tbaa !37
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0)) #8
  %100 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %96, %97
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.71, i32 0, i32 0)) #8
  call void @abort() #8
  br label %102

102:                                              ; preds = %97, %101
  %103 = phi %"struct.Halide::Runtime::Internal::Metal::mtl_library"* [ %99, %97 ], [ null, %101 ]
  %104 = call i32 @strlen(i8* %2) #8
  %105 = call %"struct.Halide::Runtime::Internal::Metal::mtl_function"* @_ZN6Halide7Runtime8Internal5Metal22new_function_with_nameEPNS2_11mtl_libraryEPKcj(%"struct.Halide::Runtime::Internal::Metal::mtl_library"* %103, i8* %2, i32 %104) #9
  %106 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %105, null
  br i1 %106, label %107, label %132

107:                                              ; preds = %102
  %108 = call i8* @malloc(i32 1024) #8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds i8, i8* %108, i32 1023
  store i8 0, i8* %111, align 1, !tbaa !36
  br label %112

112:                                              ; preds = %107, %110
  %113 = phi i8* [ %111, %110 ], [ null, %107 ]
  %114 = call i8* @halide_string_to_string(i8* %108, i8* %113, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.72, i32 0, i32 0)) #8
  %115 = icmp eq i8* %2, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = call i8* @halide_string_to_string(i8* %114, i8* %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0)) #8
  br label %120

118:                                              ; preds = %112
  %119 = call i8* @halide_string_to_string(i8* %114, i8* %113, i8* nonnull %2) #8
  br label %120

120:                                              ; preds = %116, %118
  %121 = phi i8* [ %119, %118 ], [ %117, %116 ]
  %122 = call i8* @halide_string_to_string(i8* %121, i8* %113, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0)) #8
  br i1 %109, label %123, label %124

123:                                              ; preds = %120
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i32 0, i32 0)) #8
  br label %131

124:                                              ; preds = %120
  %125 = ptrtoint i8* %122 to i32
  %126 = ptrtoint i8* %108 to i32
  %127 = add i32 %125, 1
  %128 = sub i32 %127, %126
  %129 = sext i32 %128 to i64
  %130 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %108, i64 %129) #8
  call void @halide_error(i8* %0, i8* nonnull %108) #8
  br label %131

131:                                              ; preds = %124, %123
  call void @free(i8* %108) #8
  br label %305

132:                                              ; preds = %102
  %133 = load %struct.halide_metal_device*, %struct.halide_metal_device** %64, align 4, !tbaa !46
  %134 = call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* @_ZN6Halide7Runtime8Internal5Metal40new_compute_pipeline_state_with_functionEP19halide_metal_devicePNS2_12mtl_functionE(%struct.halide_metal_device* %133, %"struct.Halide::Runtime::Internal::Metal::mtl_function"* nonnull %105) #9
  %135 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %134, null
  br i1 %135, label %136, label %151

136:                                              ; preds = %132
  %137 = call i8* @malloc(i32 1024) #8
  %138 = icmp eq i8* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i8* @halide_string_to_string(i8* %137, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.74, i32 0, i32 0)) #8
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i32 0, i32 0)) #8
  br label %150

141:                                              ; preds = %136
  %142 = getelementptr inbounds i8, i8* %137, i32 1023
  store i8 0, i8* %142, align 1, !tbaa !36
  %143 = call i8* @halide_string_to_string(i8* nonnull %137, i8* nonnull %142, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.74, i32 0, i32 0)) #8
  %144 = ptrtoint i8* %143 to i32
  %145 = ptrtoint i8* %137 to i32
  %146 = add i32 %144, 1
  %147 = sub i32 %146, %145
  %148 = sext i32 %147 to i64
  %149 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %137, i64 %148) #8
  call void @halide_error(i8* %0, i8* nonnull %137) #8
  br label %150

150:                                              ; preds = %141, %139
  call void @free(i8* %137) #8
  br label %305

151:                                              ; preds = %132
  call void @_ZN6Halide7Runtime8Internal5Metal26set_compute_pipeline_stateEPNS2_27mtl_compute_command_encoderEPNS2_26mtl_compute_pipeline_stateE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %46, %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* nonnull %134) #9
  %152 = load i32, i32* %10, align 4, !tbaa !56
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %270, label %156

154:                                              ; preds = %176
  %155 = icmp eq i32 %177, 0
  br i1 %155, label %266, label %182

156:                                              ; preds = %151, %176
  %157 = phi i32 [ %180, %176 ], [ %152, %151 ]
  %158 = phi i32* [ %179, %176 ], [ %10, %151 ]
  %159 = phi i32 [ %178, %176 ], [ 0, %151 ]
  %160 = phi i32 [ %177, %176 ], [ 0, %151 ]
  %161 = getelementptr inbounds i8, i8* %12, i32 %159
  %162 = load i8, i8* %161, align 1, !tbaa !36
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %156
  %165 = call i32 @llvm.ctpop.i32(i32 %157), !range !73
  %166 = icmp ult i32 %165, 2
  br i1 %166, label %169, label %167

167:                                              ; preds = %164
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.75, i32 0, i32 0)) #8
  call void @abort() #8
  %168 = load i32, i32* %158, align 4, !tbaa !56
  br label %169

169:                                              ; preds = %167, %164
  %170 = phi i32 [ %168, %167 ], [ %157, %164 ]
  %171 = add i32 %160, -1
  %172 = add i32 %171, %170
  %173 = sub i32 0, %170
  %174 = and i32 %172, %173
  %175 = add i32 %174, %170
  br label %176

176:                                              ; preds = %156, %169
  %177 = phi i32 [ %160, %156 ], [ %175, %169 ]
  %178 = add i32 %159, 1
  %179 = getelementptr inbounds i32, i32* %10, i32 %178
  %180 = load i32, i32* %179, align 4, !tbaa !56
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %154, label %156, !llvm.loop !74

182:                                              ; preds = %154
  %183 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %183) #10
  %184 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal24metal_api_checked_deviceE, align 4, !tbaa !37
  %185 = load %struct.halide_metal_device*, %struct.halide_metal_device** %64, align 4, !tbaa !46
  %186 = icmp eq %struct.halide_metal_device* %184, %185
  br i1 %186, label %191, label %187

187:                                              ; preds = %182
  %188 = call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal25buffer_supports_set_bytesEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %46) #9
  %189 = zext i1 %188 to i8
  store i8 %189, i8* @_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE, align 1, !tbaa !75
  %190 = load %struct.halide_metal_device*, %struct.halide_metal_device** %64, align 4, !tbaa !46
  store %struct.halide_metal_device* %190, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal24metal_api_checked_deviceE, align 4, !tbaa !37
  br label %191

191:                                              ; preds = %187, %182
  %192 = add i32 %177, 3
  %193 = and i32 %192, -4
  %194 = icmp ult i32 %193, %177
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.79, i32 0, i32 0)) #8
  call void @abort() #8
  br label %196

196:                                              ; preds = %195, %191
  %197 = icmp ugt i32 %193, 4095
  %198 = load i8, i8* @_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE, align 1
  %199 = icmp eq i8 %198, 0
  %200 = or i1 %197, %199
  br i1 %200, label %201, label %221

201:                                              ; preds = %196
  %202 = load %struct.halide_metal_device*, %struct.halide_metal_device** %64, align 4, !tbaa !46
  %203 = call %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* @_ZN6Halide7Runtime8Internal5Metal10new_bufferEP19halide_metal_devicej(%struct.halide_metal_device* %202, i32 %193) #9
  %204 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %203, null
  br i1 %204, label %205, label %219

205:                                              ; preds = %201
  %206 = call i8* @malloc(i32 1024) #8
  %207 = icmp eq i8* %206, null
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = call i8* @halide_string_to_string(i8* %206, i8* null, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.80, i32 0, i32 0)) #8
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i32 0, i32 0)) #8
  br label %264

210:                                              ; preds = %205
  %211 = getelementptr inbounds i8, i8* %206, i32 1023
  store i8 0, i8* %211, align 1, !tbaa !36
  %212 = call i8* @halide_string_to_string(i8* nonnull %206, i8* nonnull %211, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.80, i32 0, i32 0)) #8
  %213 = ptrtoint i8* %212 to i32
  %214 = ptrtoint i8* %206 to i32
  %215 = add i32 %213, 1
  %216 = sub i32 %215, %214
  %217 = sext i32 %216 to i64
  %218 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %206, i64 %217) #8
  call void @halide_error(i8* %0, i8* nonnull %206) #8
  br label %264

219:                                              ; preds = %201
  %220 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* nonnull %203) #9
  br label %221

221:                                              ; preds = %196, %219
  %222 = phi %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* [ %203, %219 ], [ null, %196 ]
  %223 = phi i8* [ %220, %219 ], [ %183, %196 ]
  %224 = load i32, i32* %10, align 4, !tbaa !56
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %248, %221
  %227 = phi i32 [ 0, %221 ], [ %249, %248 ]
  %228 = icmp eq i32 %227, %177
  br i1 %228, label %255, label %254

229:                                              ; preds = %221, %248
  %230 = phi i32 [ %252, %248 ], [ %224, %221 ]
  %231 = phi i32* [ %251, %248 ], [ %10, %221 ]
  %232 = phi i32 [ %250, %248 ], [ 0, %221 ]
  %233 = phi i32 [ %249, %248 ], [ 0, %221 ]
  %234 = getelementptr inbounds i8, i8* %12, i32 %232
  %235 = load i8, i8* %234, align 1, !tbaa !36
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %229
  %238 = getelementptr inbounds i8, i8* %223, i32 %233
  %239 = getelementptr inbounds i8*, i8** %11, i32 %232
  %240 = load i8*, i8** %239, align 4, !tbaa !37
  %241 = call i8* @memcpy(i8* %238, i8* %240, i32 %230) #8
  %242 = load i32, i32* %231, align 4, !tbaa !56
  %243 = add i32 %233, -1
  %244 = add i32 %243, %242
  %245 = sub i32 0, %242
  %246 = and i32 %244, %245
  %247 = add i32 %246, %242
  br label %248

248:                                              ; preds = %229, %237
  %249 = phi i32 [ %233, %229 ], [ %247, %237 ]
  %250 = add i32 %232, 1
  %251 = getelementptr inbounds i32, i32* %10, i32 %250
  %252 = load i32, i32* %251, align 4, !tbaa !56
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %226, label %229, !llvm.loop !77

254:                                              ; preds = %226
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.81, i32 0, i32 0)) #8
  call void @abort() #8
  br label %255

255:                                              ; preds = %254, %226
  %256 = icmp ugt i32 %177, 4095
  %257 = load i8, i8* @_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE, align 1
  %258 = icmp eq i8 %257, 0
  %259 = or i1 %256, %258
  br i1 %259, label %261, label %260

260:                                              ; preds = %255
  call void @_ZN6Halide7Runtime8Internal5Metal27set_input_buffer_from_bytesEPNS2_27mtl_compute_command_encoderEPhjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %46, i8* nonnull %183, i32 %193, i32 0) #9
  br label %263

261:                                              ; preds = %255
  call void @_ZN6Halide7Runtime8Internal5Metal16set_input_bufferEPNS2_27mtl_compute_command_encoderEPNS2_10mtl_bufferEyj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %46, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %222, i64 0, i32 0) #9
  %262 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %222 to i8*
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %262) #9
  br label %263

263:                                              ; preds = %261, %260
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %183) #10
  br label %266

264:                                              ; preds = %210, %208
  call void @free(i8* %206) #8
  %265 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %134 to i8*
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* nonnull %265) #9
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %183) #10
  br label %305

266:                                              ; preds = %263, %154
  %267 = phi i32 [ 1, %263 ], [ 0, %154 ]
  %268 = load i32, i32* %10, align 4, !tbaa !56
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %299, %151, %266
  %271 = add nsw i32 %9, 15
  %272 = and i32 %271, -16
  call void @_ZN6Halide7Runtime8Internal5Metal29set_threadgroup_memory_lengthEPNS2_27mtl_compute_command_encoderEjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %46, i32 %272, i32 0) #9
  %273 = load i32, i32* @_ZZ16halide_metal_runE16total_dispatches, align 4, !tbaa !56
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* @_ZZ16halide_metal_runE16total_dispatches, align 4, !tbaa !56
  call void @_ZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiii(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %46, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #8
  call void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %46) #9
  call void @_ZN6Halide7Runtime8Internal5Metal36add_command_buffer_completed_handlerEPNS2_18mtl_command_bufferEPNS2_46command_buffer_completed_handler_block_literalE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* nonnull %28, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* nonnull @_ZN6Halide7Runtime8Internal5Metal38command_buffer_completed_handler_blockE) #9
  call void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* nonnull %28) #9
  %275 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %134 to i8*
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* nonnull %275) #9
  br label %305

276:                                              ; preds = %266, %299
  %277 = phi i32 [ %303, %299 ], [ %268, %266 ]
  %278 = phi i32 [ %301, %299 ], [ 0, %266 ]
  %279 = phi i32 [ %300, %299 ], [ %267, %266 ]
  %280 = getelementptr inbounds i8, i8* %12, i32 %278
  %281 = load i8, i8* %280, align 1, !tbaa !36
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %299, label %283

283:                                              ; preds = %276
  %284 = icmp eq i32 %277, 8
  br i1 %284, label %286, label %285

285:                                              ; preds = %283
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.82, i32 0, i32 0)) #8
  call void @abort() #8
  br label %286

286:                                              ; preds = %285, %283
  %287 = getelementptr inbounds i8*, i8** %11, i32 %278
  %288 = bitcast i8** %287 to %struct.halide_buffer_t**
  %289 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %288, align 4, !tbaa !37
  %290 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8, !tbaa !22
  %292 = trunc i64 %291 to i32
  %293 = inttoptr i32 %292 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %294 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %293, i32 0, i32 0
  %295 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %294, align 8, !tbaa !47
  %296 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %293, i32 0, i32 1
  %297 = load i64, i64* %296, align 8, !tbaa !49
  call void @_ZN6Halide7Runtime8Internal5Metal16set_input_bufferEPNS2_27mtl_compute_command_encoderEPNS2_10mtl_bufferEyj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %46, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %295, i64 %297, i32 %279) #9
  %298 = add nsw i32 %279, 1
  br label %299

299:                                              ; preds = %276, %286
  %300 = phi i32 [ %298, %286 ], [ %279, %276 ]
  %301 = add i32 %278, 1
  %302 = getelementptr inbounds i32, i32* %10, i32 %301
  %303 = load i32, i32* %302, align 4, !tbaa !56
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %270, label %276, !llvm.loop !78

305:                                              ; preds = %131, %270, %150, %264, %44, %62, %17
  %306 = phi i32 [ %22, %17 ], [ -1, %44 ], [ -1, %62 ], [ -1, %131 ], [ -1, %150 ], [ 0, %270 ], [ -1, %264 ]
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %18) #8
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %20) #10
  ret i32 %306
}

declare void @_ZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiii(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"*, i32, i32, i32, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_metal_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_metal_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !22
  %8 = trunc i64 %7 to i32
  %9 = inttoptr i32 %8 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %9, i32 0, i32 0
  %11 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %10, align 8, !tbaa !47
  %12 = tail call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %11) #9
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  store i8* %12, i8** %13, align 4, !tbaa !15
  br label %14

14:                                               ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_metal_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = tail call i32 @halide_metal_device_free(i8* %0, %struct.halide_buffer_t* %1) #9
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  store i8* null, i8** %4, align 4, !tbaa !15
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_metal_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %6 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  %7 = alloca %"struct.Halide::Runtime::Internal::Metal::NSRange", align 4
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5
  %9 = load i32, i32* %8, align 4, !tbaa !24
  %10 = icmp sgt i32 %9, 16
  br i1 %10, label %11, label %26

11:                                               ; preds = %4
  %12 = tail call i8* @malloc(i32 1024) #8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.92, i32 0, i32 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i32 0, i32 0)) #8
  br label %25

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i32 1023
  store i8 0, i8* %17, align 1, !tbaa !36
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.92, i32 0, i32 0)) #8
  %19 = ptrtoint i8* %18 to i32
  %20 = ptrtoint i8* %12 to i32
  %21 = add i32 %19, 1
  %22 = sub i32 %21, %20
  %23 = sext i32 %22 to i64
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %12, i64 %23) #8
  tail call void @halide_error(i8* %0, i8* nonnull %12) #8
  br label %25

25:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #8
  br label %200

26:                                               ; preds = %4
  %27 = icmp eq %struct.halide_device_interface_t* %2, null
  %28 = icmp eq %struct.halide_device_interface_t* %2, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE
  %29 = or i1 %27, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.93, i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %31

31:                                               ; preds = %26, %30
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3
  %33 = load i64, i64* %32, align 8, !tbaa !79
  %34 = and i64 %33, 2
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %38 = load i8*, i8** %37, align 4, !tbaa !15
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %36, %31
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %42 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %41, align 8, !tbaa !50
  %43 = icmp eq %struct.halide_device_interface_t* %42, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  br i1 %28, label %200, label %45

45:                                               ; preds = %44
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.94, i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %200

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %48 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %47, align 8, !tbaa !50
  %49 = icmp eq %struct.halide_device_interface_t* %48, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE
  br i1 %49, label %50, label %62

50:                                               ; preds = %40, %46
  %51 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %52 = load i64, i64* %51, align 8, !tbaa !22
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = and i64 %33, 1
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %59 = load i8*, i8** %58, align 4, !tbaa !15
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %57
  br label %62

62:                                               ; preds = %61, %46, %50, %57
  %63 = phi i1 [ true, %57 ], [ false, %61 ], [ true, %50 ], [ true, %46 ]
  br i1 %27, label %69, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0
  %66 = load i64, i64* %65, align 8, !tbaa !22
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.96, i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %69

69:                                               ; preds = %68, %64, %62
  %70 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %70) #10
  call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext %63, %struct.halide_buffer_t* nonnull %3, i1 zeroext %27) #9
  %71 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %71) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %6, i8* %0, i1 zeroext true) #8
  %72 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i32 0, i32 4
  %73 = load i32, i32* %72, align 4, !tbaa !42
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %199

75:                                               ; preds = %69
  %76 = or i1 %27, %63
  br i1 %76, label %96, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i32 0, i32 3
  %79 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %78, align 4, !tbaa !68
  %80 = call i32 @strlen(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.101, i32 0, i32 0)) #8
  %81 = call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcj(%struct.halide_metal_command_queue* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.101, i32 0, i32 0), i32 %80) #9
  %82 = call %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal24new_blit_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %81) #9
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 0
  %84 = load i64, i64* %83, align 8, !tbaa !9
  %85 = trunc i64 %84 to i32
  %86 = inttoptr i32 %85 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8, !tbaa !49
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 1
  %90 = load i64, i64* %89, align 8, !tbaa !11
  %91 = trunc i64 %90 to i32
  %92 = inttoptr i32 %91 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8, !tbaa !49
  %95 = load i32, i32* %8, align 4, !tbaa !24
  call fastcc void @_ZN6Halide7Runtime8Internal5Metal12_GLOBAL__N_124do_device_to_device_copyEPvPNS2_24mtl_blit_command_encoderERKNS1_11device_copyEyyi(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %82, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i64 %88, i64 %94, i32 %95) #9
  call void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_24mtl_blit_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %82) #9
  call void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %81) #9
  br label %199

96:                                               ; preds = %75
  br i1 %63, label %115, label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i32 0, i32 3
  %99 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %98, align 4, !tbaa !68
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %99, %struct.halide_buffer_t* nonnull %1) #9
  %100 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 0
  %101 = load i64, i64* %100, align 8, !tbaa !9
  %102 = trunc i64 %101 to i32
  %103 = inttoptr i32 %102 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %104 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %103, i32 0, i32 0
  %105 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %104, align 8, !tbaa !47
  %106 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %105) #9
  %107 = ptrtoint i8* %106 to i32
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* %100, align 8, !tbaa !9
  %110 = trunc i64 %109 to i32
  %111 = inttoptr i32 %110 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8, !tbaa !49
  %114 = add i64 %113, %108
  store i64 %114, i64* %100, align 8, !tbaa !9
  br label %115

115:                                              ; preds = %97, %96
  br i1 %27, label %116, label %117

116:                                              ; preds = %115
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #9
  br label %199

117:                                              ; preds = %115
  %118 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i32 0, i32 3
  %119 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %118, align 4, !tbaa !68
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %119, %struct.halide_buffer_t* nonnull %3) #9
  %120 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i32 0, i32 1
  %121 = load i64, i64* %120, align 8, !tbaa !11
  %122 = trunc i64 %121 to i32
  %123 = inttoptr i32 %122 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %123, i32 0, i32 0
  %125 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %124, align 8, !tbaa !47
  br i1 %63, label %127, label %126

126:                                              ; preds = %117
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.102, i32 0, i32 0)) #8
  call void @abort() #8
  br label %127

127:                                              ; preds = %126, %117
  %128 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %125) #9
  %129 = ptrtoint i8* %128 to i32
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %120, align 8, !tbaa !11
  %132 = trunc i64 %131 to i32
  %133 = inttoptr i32 %132 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %134 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8, !tbaa !49
  %136 = add i64 %135, %130
  store i64 %136, i64* %120, align 8, !tbaa !11
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #9
  %137 = call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %125) #9
  br i1 %137, label %138, label %197

138:                                              ; preds = %127
  %139 = load i32, i32* %8, align 4, !tbaa !24
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1
  %143 = load i8, i8* %142, align 1, !tbaa !23
  br label %182

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %146 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %145, align 8, !tbaa !25
  br label %147

147:                                              ; preds = %159, %144
  %148 = phi i32 [ 0, %144 ], [ %161, %159 ]
  %149 = phi i32 [ 0, %144 ], [ %160, %159 ]
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %146, i32 %148, i32 2
  %151 = load i32, i32* %150, align 4, !tbaa !26
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %146, i32 %148, i32 1
  %155 = load i32, i32* %154, align 4, !tbaa !31
  %156 = add nsw i32 %155, -1
  %157 = mul nsw i32 %156, %151
  %158 = add nsw i32 %157, %149
  br label %159

159:                                              ; preds = %153, %147
  %160 = phi i32 [ %158, %153 ], [ %149, %147 ]
  %161 = add nuw nsw i32 %148, 1
  %162 = icmp slt i32 %161, %139
  br i1 %162, label %147, label %163, !llvm.loop !43

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1
  %165 = load i8, i8* %164, align 1, !tbaa !23
  br label %166

166:                                              ; preds = %178, %163
  %167 = phi i32 [ 0, %163 ], [ %180, %178 ]
  %168 = phi i32 [ 0, %163 ], [ %179, %178 ]
  %169 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %146, i32 %167, i32 2
  %170 = load i32, i32* %169, align 4, !tbaa !26
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %146, i32 %167, i32 1
  %174 = load i32, i32* %173, align 4, !tbaa !31
  %175 = add nsw i32 %174, -1
  %176 = mul nsw i32 %175, %170
  %177 = add nsw i32 %176, %168
  br label %178

178:                                              ; preds = %172, %166
  %179 = phi i32 [ %177, %172 ], [ %168, %166 ]
  %180 = add nuw nsw i32 %167, 1
  %181 = icmp slt i32 %180, %139
  br i1 %181, label %166, label %182, !llvm.loop !44

182:                                              ; preds = %178, %141
  %183 = phi i8 [ %143, %141 ], [ %165, %178 ]
  %184 = phi i32 [ 0, %141 ], [ %160, %178 ]
  %185 = phi i32 [ 0, %141 ], [ %179, %178 ]
  %186 = zext i8 %183 to i32
  %187 = add nuw nsw i32 %186, 7
  %188 = lshr i32 %187, 3
  %189 = add nsw i32 %184, 1
  %190 = sub i32 %189, %185
  %191 = mul i32 %190, %188
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %182
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.103, i32 0, i32 0)) #8
  call void @abort() #8
  br label %194

194:                                              ; preds = %193, %182
  %195 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %7, i32 0, i32 0
  store i32 0, i32* %195, align 4, !tbaa.struct !71
  %196 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %7, i32 0, i32 1
  store i32 %191, i32* %196, align 4, !tbaa.struct !72
  call void @_ZN6Halide7Runtime8Internal5Metal16did_modify_rangeEPNS2_10mtl_bufferENS2_7NSRangeE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %125, %"struct.Halide::Runtime::Internal::Metal::NSRange"* nonnull byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 4 %7) #9
  br label %197

197:                                              ; preds = %194, %127
  %198 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %118, align 4, !tbaa !68
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %198, %struct.halide_buffer_t* %3) #9
  br label %199

199:                                              ; preds = %116, %77, %197, %69
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %6) #8
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %71) #10
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %70) #10
  br label %200

200:                                              ; preds = %45, %44, %199, %25
  %201 = phi i32 [ -39, %25 ], [ %73, %199 ], [ -42, %44 ], [ -42, %45 ]
  ret i32 %201
}

; Function Attrs: nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal5Metal12_GLOBAL__N_124do_device_to_device_copyEPvPNS2_24mtl_blit_command_encoderERKNS1_11device_copyEyyi(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %1, i64 %2, i64 %3, i32 %4) unnamed_addr #0 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %5
  %8 = add nsw i32 %4, -1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 3, i32 %8
  %10 = load i64, i64* %9, align 8, !tbaa !3
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 5, i32 %8
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 4, i32 %8
  br label %36

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8, !tbaa !9
  %18 = trunc i64 %17 to i32
  %19 = inttoptr i32 %18 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %19, i32 0, i32 0
  %21 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %20, align 8, !tbaa !47
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 2
  %23 = load i64, i64* %22, align 8, !tbaa !14
  %24 = add i64 %23, %2
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 1
  %27 = load i64, i64* %26, align 8, !tbaa !11
  %28 = trunc i64 %27 to i32
  %29 = inttoptr i32 %28 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %29, i32 0, i32 0
  %31 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %30, align 8, !tbaa !47
  %32 = trunc i64 %3 to i32
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 6
  %34 = load i64, i64* %33, align 8, !tbaa !12
  %35 = trunc i64 %34 to i32
  tail call void @_ZN6Halide7Runtime8Internal5Metal24buffer_to_buffer_1d_copyEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferEjS6_jj(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %21, i32 %25, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %31, i32 %32, i32 %35) #9
  br label %49

36:                                               ; preds = %12, %36
  %37 = phi i64 [ 0, %12 ], [ %46, %36 ]
  %38 = phi i64 [ 0, %12 ], [ %43, %36 ]
  %39 = phi i64 [ 0, %12 ], [ %45, %36 ]
  %40 = add i64 %39, %2
  %41 = add i64 %38, %3
  tail call fastcc void @_ZN6Halide7Runtime8Internal5Metal12_GLOBAL__N_124do_device_to_device_copyEPvPNS2_24mtl_blit_command_encoderERKNS1_11device_copyEyyi(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i64 %40, i64 %41, i32 %8) #9
  %42 = load i64, i64* %13, align 8, !tbaa !3
  %43 = add i64 %42, %38
  %44 = load i64, i64* %14, align 8, !tbaa !3
  %45 = add i64 %44, %39
  %46 = add nuw i64 %37, 1
  %47 = load i64, i64* %9, align 8, !tbaa !3
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %36, label %49, !llvm.loop !80

49:                                               ; preds = %36, %7, %15
  ret void
}

; Function Attrs: nounwind
define weak i32 @metal_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 {
  %5 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 4
  %6 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %6) #10
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %5, i8* %0, i1 zeroext true) #8
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, i32 0, i32 4
  %8 = load i32, i32* %7, align 4, !tbaa !42
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %12 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %11, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 1
  store %struct.halide_device_interface_t* %12, %struct.halide_device_interface_t** %13, align 8, !tbaa !50
  %14 = call i8* @malloc(i32 16) #8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = call i8* @malloc(i32 1024) #8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i8* @halide_string_to_string(i8* %17, i8* null, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.104, i32 0, i32 0)) #8
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i32 0, i32 0)) #8
  br label %30

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, i8* %17, i32 1023
  store i8 0, i8* %22, align 1, !tbaa !36
  %23 = call i8* @halide_string_to_string(i8* nonnull %17, i8* nonnull %22, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.104, i32 0, i32 0)) #8
  %24 = ptrtoint i8* %23 to i32
  %25 = ptrtoint i8* %17 to i32
  %26 = add i32 %24, 1
  %27 = sub i32 %26, %25
  %28 = sext i32 %27 to i64
  %29 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %17, i64 %28) #8
  call void @halide_error(i8* %0, i8* nonnull %17) #8
  br label %30

30:                                               ; preds = %21, %19
  call void @free(i8* %17) #8
  br label %51

31:                                               ; preds = %10
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !22
  %34 = trunc i64 %33 to i32
  %35 = inttoptr i32 %34 to i8**
  %36 = load i8*, i8** %35, align 8, !tbaa !47
  call void @_ZN6Halide7Runtime8Internal16retain_ns_objectEPv(i8* %36) #9
  %37 = load i64, i64* %32, align 8, !tbaa !22
  %38 = trunc i64 %37 to i32
  %39 = inttoptr i32 %38 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %39, i32 0, i32 0
  %41 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %40, align 8, !tbaa !47
  %42 = bitcast i8* %14 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"**
  store %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %41, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %42, align 8, !tbaa !47
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %39, i32 0, i32 1
  %44 = load i64, i64* %43, align 8, !tbaa !49
  %45 = add i64 %44, %2
  %46 = getelementptr inbounds i8, i8* %14, i32 8
  %47 = bitcast i8* %46 to i64*
  store i64 %45, i64* %47, align 8, !tbaa !49
  %48 = ptrtoint i8* %14 to i32
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0
  store i64 %49, i64* %50, align 8, !tbaa !22
  br label %51

51:                                               ; preds = %30, %31, %4
  %52 = phi i32 [ %8, %4 ], [ -11, %30 ], [ 0, %31 ]
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(20) %5) #8
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %6) #10
  ret i32 %52
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_metal_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %5 = load i32, i32* %4, align 4, !tbaa !24
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 6
  %9 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %8, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %11 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %10, align 8, !tbaa !25
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i32 [ 0, %7 ], [ %26, %12 ]
  %14 = phi i64 [ 0, %7 ], [ %25, %12 ]
  %15 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i32 %13, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !28
  %17 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %13, i32 0
  %18 = load i32, i32* %17, align 4, !tbaa !28
  %19 = sub nsw i32 %16, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i32 %13, i32 2
  %22 = load i32, i32* %21, align 4, !tbaa !26
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %20, %23
  %25 = add nsw i64 %24, %14
  %26 = add nuw nsw i32 %13, 1
  %27 = icmp slt i32 %26, %5
  br i1 %27, label %12, label %28, !llvm.loop !81

28:                                               ; preds = %12, %3
  %29 = phi i64 [ 0, %3 ], [ %25, %12 ]
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %31 = load i8, i8* %30, align 1, !tbaa !23
  %32 = zext i8 %31 to i32
  %33 = add nuw nsw i32 %32, 7
  %34 = lshr i32 %33, 3
  %35 = zext i32 %34 to i64
  %36 = mul nsw i64 %29, %35
  %37 = tail call i32 @metal_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %36, %struct.halide_buffer_t* %2) #9
  ret i32 %37
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_metal_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #0 {
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %7 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %6, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %7, i32 %2, i32 0
  %9 = load i32, i32* %8, align 4, !tbaa !28
  %10 = sub nsw i32 %3, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %7, i32 %2, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa !26
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %11, %14
  %16 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %17 = load i8, i8* %16, align 1, !tbaa !23
  %18 = zext i8 %17 to i32
  %19 = add nuw nsw i32 %18, 7
  %20 = lshr i32 %19, 3
  %21 = zext i32 %20 to i64
  %22 = mul nsw i64 %15, %21
  %23 = tail call i32 @metal_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %22, %struct.halide_buffer_t* %4) #9
  ret i32 %23
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_metal_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = trunc i64 %4 to i32
  %8 = inttoptr i32 %7 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !47
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %9) #9
  %10 = inttoptr i32 %7 to i8*
  tail call void @free(i8* %10) #8
  br label %11

11:                                               ; preds = %2, %6
  ret i32 0
}

; Function Attrs: nounwind
define weak i32 @halide_metal_wrap_buffer(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #4 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.106, i32 0, i32 0)) #8
  tail call void @abort() #8
  %8 = load i64, i64* %4, align 8, !tbaa !22
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %3, %7
  %11 = tail call i8* @malloc(i32 16) #8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = tail call i8* @malloc(i32 1024) #8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i8* @halide_string_to_string(i8* %14, i8* null, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.107, i32 0, i32 0)) #8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.111, i32 0, i32 0)) #8
  br label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, i8* %14, i32 1023
  store i8 0, i8* %19, align 1, !tbaa !36
  %20 = tail call i8* @halide_string_to_string(i8* nonnull %14, i8* nonnull %19, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.107, i32 0, i32 0)) #8
  %21 = ptrtoint i8* %20 to i32
  %22 = ptrtoint i8* %14 to i32
  %23 = add i32 %21, 1
  %24 = sub i32 %23, %22
  %25 = sext i32 %24 to i64
  %26 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %14, i64 %25) #8
  tail call void @halide_error(i8* %0, i8* nonnull %14) #8
  br label %27

27:                                               ; preds = %18, %16
  tail call void @free(i8* %14) #8
  br label %40

28:                                               ; preds = %10
  %29 = trunc i64 %2 to i32
  %30 = inttoptr i32 %29 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*
  %31 = bitcast i8* %11 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"**
  store %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %30, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %31, align 8, !tbaa !47
  %32 = getelementptr inbounds i8, i8* %11, i32 8
  %33 = bitcast i8* %32 to i64*
  store i64 0, i64* %33, align 8, !tbaa !49
  %34 = ptrtoint i8* %11 to i32
  %35 = zext i32 %34 to i64
  store i64 %35, i64* %4, align 8, !tbaa !22
  %36 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, %struct.halide_device_interface_t** %36, align 8, !tbaa !50
  %37 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, i32 0, i32 15), align 4, !tbaa !51
  %38 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %37, i32 0, i32 0
  %39 = load void ()*, void ()** %38, align 4, !tbaa !53
  tail call void %39() #8
  br label %40

40:                                               ; preds = %27, %28, %7
  %41 = phi i32 [ -2, %7 ], [ -11, %27 ], [ 0, %28 ]
  ret i32 %41
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_metal_detach_buffer(i8* %0, %struct.halide_buffer_t* %1) #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !50
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.108, i32 0, i32 0)) #8
  tail call void @abort() #8
  %11 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !50
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi %struct.halide_device_interface_t* [ @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, %6 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %13, i32 0, i32 15
  %15 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %14, align 4, !tbaa !51
  %16 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %15, i32 0, i32 1
  %17 = load void ()*, void ()** %16, align 4, !tbaa !55
  tail call void %17() #8
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !tbaa !50
  %18 = load i64, i64* %3, align 8, !tbaa !22
  %19 = trunc i64 %18 to i32
  %20 = inttoptr i32 %19 to i8*
  tail call void @free(i8* %20) #8
  store i64 0, i64* %3, align 8, !tbaa !22
  br label %21

21:                                               ; preds = %2, %12
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_metal_get_buffer(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !50
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE
  %10 = trunc i64 %4 to i32
  br i1 %9, label %14, label %11

11:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.109, i32 0, i32 0)) #8
  tail call void @abort() #8
  %12 = load i64, i64* %3, align 8, !tbaa !22
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %6, %11
  %15 = phi i32 [ %10, %6 ], [ %13, %11 ]
  %16 = inttoptr i32 %15 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %16, i32 0, i32 0
  %18 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %17, align 8, !tbaa !47
  %19 = ptrtoint %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %18 to i32
  br label %20

20:                                               ; preds = %2, %14
  %21 = phi i32 [ %19, %14 ], [ 0, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind mustprogress
define weak i64 @halide_metal_get_crop_offset(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !22
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !tbaa !50
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE
  %10 = trunc i64 %4 to i32
  br i1 %9, label %14, label %11

11:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.110, i32 0, i32 0)) #8
  tail call void @abort() #8
  %12 = load i64, i64* %3, align 8, !tbaa !22
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %6, %11
  %15 = phi i32 [ %10, %6 ], [ %13, %11 ]
  %16 = inttoptr i32 %15 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8, !tbaa !49
  br label %19

19:                                               ; preds = %2, %14
  %20 = phi i64 [ %18, %14 ], [ 0, %2 ]
  ret i64 %20
}

; Function Attrs: nounwind willreturn mustprogress
define weak %struct.halide_device_interface_t* @halide_metal_device_interface() local_unnamed_addr #5 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE
}

; Function Attrs: nounwind
define weak void @halide_metal_cleanup() #4 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0)) #8
  %1 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 3), align 4, !tbaa !69
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load i8*, i8** bitcast (%"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 2) to i8**), align 4, !tbaa !61
  br label %45

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 1), align 4, !tbaa !60
  %7 = icmp eq i32 %6, 31
  br i1 %7, label %47, label %8

8:                                                ; preds = %5
  %9 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !61
  %10 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %9 to i8*
  br label %11

11:                                               ; preds = %35, %8
  %12 = phi i8* [ %36, %35 ], [ %10, %8 ]
  %13 = phi i32 [ %37, %35 ], [ %1, %8 ]
  %14 = phi i32 [ %38, %35 ], [ %6, %8 ]
  %15 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* [ %39, %35 ], [ %9, %8 ]
  %16 = phi i32 [ %40, %35 ], [ 0, %8 ]
  %17 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %15, i32 %16, i32 2
  %18 = load i32, i32* %17, align 4, !tbaa !63
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %15, i32 %16, i32 3
  %22 = load i32, i32* %21, align 4, !tbaa !66
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %15, i32 %16, i32 1
  %26 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %25 to i8**
  %27 = load i8*, i8** %26, align 4, !tbaa !67
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %27) #8
  %28 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !61
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %28, i32 %16, i32 1
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* null, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %29, align 4, !tbaa !67
  %30 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %28, i32 %16, i32 2
  store i32 1, i32* %30, align 4, !tbaa !63
  %31 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 3), align 4, !tbaa !69
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 3), align 4, !tbaa !69
  %33 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 1), align 4, !tbaa !60
  %34 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %28 to i8*
  br label %35

35:                                               ; preds = %24, %20, %11
  %36 = phi i8* [ %34, %24 ], [ %12, %20 ], [ %12, %11 ]
  %37 = phi i32 [ %32, %24 ], [ %13, %20 ], [ %13, %11 ]
  %38 = phi i32 [ %33, %24 ], [ %14, %20 ], [ %14, %11 ]
  %39 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* [ %28, %24 ], [ %15, %20 ], [ %15, %11 ]
  %40 = add nuw nsw i32 %16, 1
  %41 = shl nuw i32 1, %38
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %11, label %43, !llvm.loop !70

43:                                               ; preds = %35
  %44 = icmp eq i32 %37, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %3, %43
  %46 = phi i8* [ %4, %3 ], [ %36, %43 ]
  tail call void @free(i8* %46) #8
  store %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !61
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 1), align 4, !tbaa !60
  br label %47

47:                                               ; preds = %5, %43, %45
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 0)) #8
  %48 = tail call i32 @halide_metal_device_release(i8* null) #9
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
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %4 = load i32, i32* %3, align 4, !tbaa !60
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 7) #9
  br i1 %7, label %8, label %61

8:                                                ; preds = %6
  %9 = load i32, i32* %3, align 4, !tbaa !60
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !69
  %14 = add nsw i32 %13, 1
  %15 = sitofp i32 %14 to float
  %16 = shl nuw i32 1, %11
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = fcmp olt float %18, %15
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = add nsw i32 %11, 1
  %22 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 %21) #9
  br i1 %22, label %23, label %61

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4, !tbaa !69
  %25 = load i32, i32* %3, align 4, !tbaa !60
  %26 = add nsw i32 %24, 1
  %27 = shl nuw i32 1, %25
  br label %28

28:                                               ; preds = %23, %10
  %29 = phi i32 [ %27, %23 ], [ %16, %10 ]
  %30 = phi i32 [ %26, %23 ], [ %14, %10 ]
  %31 = phi i32 [ %25, %23 ], [ %11, %10 ]
  store i32 %30, i32* %12, align 4, !tbaa !69
  %32 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %1, i32 0, i32 0
  %33 = load %struct.halide_metal_device*, %struct.halide_metal_device** %32, align 4, !tbaa !65
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %1, i32 0, i32 2
  %35 = load i32, i32* %34, align 4, !tbaa !63
  %36 = ptrtoint %struct.halide_metal_device* %33 to i32
  %37 = add i32 %35, %36
  %38 = mul i32 %37, -1640531527
  %39 = sub i32 32, %31
  %40 = lshr i32 %38, %39
  %41 = icmp eq i32 %31, 31
  br i1 %41, label %60, label %42

42:                                               ; preds = %28
  %43 = add nsw i32 %29, -1
  %44 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %45 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %44, align 4, !tbaa !61
  br label %48

46:                                               ; preds = %48
  %47 = icmp slt i32 %55, %29
  br i1 %47, label %48, label %60, !llvm.loop !82

48:                                               ; preds = %42, %46
  %49 = phi i32 [ 0, %42 ], [ %55, %46 ]
  %50 = add i32 %49, %40
  %51 = and i32 %50, %43
  %52 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %45, i32 %51, i32 2
  %53 = load i32, i32* %52, align 4, !tbaa !63
  %54 = icmp ult i32 %53, 2
  %55 = add nuw nsw i32 %49, 1
  br i1 %54, label %56, label %46

56:                                               ; preds = %48
  %57 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %45, i32 %51
  %58 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %57 to i8*
  %59 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %58, i8* nonnull align 4 dereferenceable(16) %59, i32 16, i1 false), !tbaa.struct !83
  br label %61

60:                                               ; preds = %46, %28
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.116, i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %61

61:                                               ; preds = %56, %60, %20, %6
  %62 = phi i1 [ false, %6 ], [ false, %20 ], [ true, %56 ], [ false, %60 ]
  ret i1 %62
}

declare void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define linkonce_odr zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 1
  %4 = load i32, i32* %3, align 4, !tbaa !60
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = shl nuw i32 1, %4
  %8 = shl i32 16, %1
  %9 = tail call i8* @malloc(i32 %8) #8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %6
  %12 = tail call i8* @memset(i8* nonnull %9, i32 0, i32 %8) #8
  %13 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 2
  %14 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %13, align 4, !tbaa !61
  %15 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %13 to i8**
  store i8* %9, i8** %15, align 4, !tbaa !61
  store i32 %1, i32* %3, align 4, !tbaa !60
  %16 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i32 0, i32 3
  %17 = load i32, i32* %16, align 4, !tbaa !69
  %18 = icmp sgt i32 %17, 0
  %19 = icmp ne i32 %4, 31
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %11, %30
  %22 = phi i32 [ %31, %30 ], [ 0, %11 ]
  %23 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %14, i32 %22, i32 2
  %24 = load i32, i32* %23, align 4, !tbaa !63
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %14, i32 %22
  %28 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(20) %0, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* nonnull align 4 dereferenceable(16) %27) #9
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.117, i32 0, i32 0)) #8
  tail call void @abort() #8
  br label %30

30:                                               ; preds = %21, %26, %29
  %31 = add nuw nsw i32 %22, 1
  %32 = icmp slt i32 %31, %7
  br i1 %32, label %21, label %33, !llvm.loop !84

33:                                               ; preds = %30, %11
  %34 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %14 to i8*
  tail call void @free(i8* %34) #8
  br label %35

35:                                               ; preds = %2, %33, %6
  %36 = phi i1 [ false, %6 ], [ true, %33 ], [ true, %2 ]
  ret i1 %36
}

declare i8* @memset(i8*, i32, i32) local_unnamed_addr #2

declare void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind willreturn
define internal void @_GLOBAL__sub_I_metal.cpp() #6 {
  %1 = load i8, i8* bitcast (i64* @_ZGVN6Halide7Runtime8Internal5Metal17compilation_cacheE to i8*), align 8
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 1), align 4, !tbaa !60
  store %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 2), align 4, !tbaa !61
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 3), align 4, !tbaa !69
  store i32 2, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i32 0, i32 4), align 4, !tbaa !57
  store i64 1, i64* @_ZGVN6Halide7Runtime8Internal5Metal17compilation_cacheE, align 8
  br label %4

4:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

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
!37 = !{!17, !17, i64 0}
!38 = distinct !{!38, !8}
!39 = !{!40, !17, i64 4}
!40 = !{!"_ZTSN6Halide7Runtime8Internal5Metal18MetalContextHolderE", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !21, i64 16}
!41 = !{!40, !17, i64 0}
!42 = !{!40, !21, i64 16}
!43 = distinct !{!43, !8}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = !{!40, !17, i64 8}
!47 = !{!48, !17, i64 0}
!48 = !{!"_ZTSN6Halide7Runtime8Internal5Metal13device_handleE", !17, i64 0, !4, i64 8}
!49 = !{!48, !4, i64 8}
!50 = !{!16, !17, i64 8}
!51 = !{!52, !17, i64 60}
!52 = !{!"_ZTS25halide_device_interface_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!53 = !{!54, !17, i64 0}
!54 = !{!"_ZTS30halide_device_interface_impl_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!55 = !{!54, !17, i64 4}
!56 = !{!21, !21, i64 0}
!57 = !{!58, !21, i64 16}
!58 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEEE", !59, i64 0, !21, i64 4, !17, i64 8, !21, i64 12, !21, i64 16}
!59 = !{!"_ZTS12halide_mutex", !5, i64 0}
!60 = !{!58, !21, i64 4}
!61 = !{!58, !17, i64 8}
!62 = distinct !{!62, !8}
!63 = !{!64, !21, i64 8}
!64 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE17CachedCompilationE", !17, i64 0, !17, i64 4, !21, i64 8, !21, i64 12}
!65 = !{!64, !17, i64 0}
!66 = !{!64, !21, i64 12}
!67 = !{!64, !17, i64 4}
!68 = !{!40, !17, i64 12}
!69 = !{!58, !21, i64 12}
!70 = distinct !{!70, !8}
!71 = !{i64 0, i64 4, !56, i64 4, i64 4, !56}
!72 = !{i64 0, i64 4, !56}
!73 = !{i32 0, i32 33}
!74 = distinct !{!74, !8}
!75 = !{!76, !76, i64 0}
!76 = !{!"bool", !5, i64 0}
!77 = distinct !{!77, !8}
!78 = distinct !{!78, !8}
!79 = !{!16, !4, i64 16}
!80 = distinct !{!80, !8}
!81 = distinct !{!81, !8}
!82 = distinct !{!82, !8}
!83 = !{i64 0, i64 4, !37, i64 4, i64 4, !37, i64 8, i64 4, !56, i64 12, i64 4, !56}
!84 = distinct !{!84, !8}
