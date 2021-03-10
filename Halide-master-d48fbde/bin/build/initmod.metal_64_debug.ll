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
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%"struct.Halide::Runtime::Internal::Metal::mtl_buffer" = type opaque
%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder" = type opaque
%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder" = type opaque
%"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state" = type opaque
%"struct.Halide::Runtime::Internal::Metal::mtl_function" = type opaque
%"struct.Halide::Runtime::Internal::Metal::NSRange" = type { i64, i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%"class.Halide::Runtime::Internal::Metal::MetalContextHolder" = type <{ i8*, i8*, %struct.halide_metal_device*, %struct.halide_metal_command_queue*, i32, [4 x i8] }>
%"struct.Halide::Runtime::Internal::Metal::device_handle" = type { %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, i64 }
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }

$_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcmEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_ = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi = comdat any

$_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE15release_contextIFvPvEEEvSB_bS3_RT_ = comdat any

$_ZGVN6Halide7Runtime8Internal5Metal17compilation_cacheE = comdat any

@.str = private unnamed_addr constant [55 x i8] c"copy_memory: no copy needed as pointers are the same.\0A\00", align 1
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
@_ZN6Halide7Runtime8Internal5Metal11thread_lockE = weak dso_local global i8 0, align 1, !dbg !0
@_ZN6Halide7Runtime8Internal5Metal6deviceE = weak dso_local local_unnamed_addr global %struct.halide_metal_device* null, align 8, !dbg !23
@_ZN6Halide7Runtime8Internal5Metal5queueE = weak dso_local local_unnamed_addr global %struct.halide_metal_command_queue* null, align 8, !dbg !29
@_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE = weak dso_local global %"class.Halide::Internal::GPUCompilationCache" zeroinitializer, align 8, !dbg !34
@_ZGVN6Halide7Runtime8Internal5Metal17compilation_cacheE = weak dso_local local_unnamed_addr global i64 0, comdat, align 4
@_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE = weak dso_local local_unnamed_addr global i8 0, align 1, !dbg !110
@_ZN6Halide7Runtime8Internal5Metal24metal_api_checked_deviceE = weak dso_local local_unnamed_addr global %struct.halide_metal_device* null, align 8, !dbg !112
@.str.40 = private unnamed_addr constant [50 x i8] c"Metal - Allocating: MTLCreateSystemDefaultDevice\0A\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"Metal: cannot allocate system default device.\0A\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"Metal - Allocating: new_command_queue\0A\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"Metal: cannot allocate command queue.\0A\00", align 1
@.str.44 = private unnamed_addr constant [134 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:372 Assert failed: (device == nullptr) || (queue != nullptr)\0A\00", align 1
@_ZN6Halide7Runtime8Internal5Metal43command_buffer_completed_handler_descriptorE = weak dso_local global %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_descriptor_1" { i64 0, i64 32 }, align 8, !dbg !114
@_NSConcreteGlobalBlock = external dso_local global %struct.ObjectiveCClass, align 1
@_ZN6Halide7Runtime8Internal5Metal38command_buffer_completed_handler_blockE = weak dso_local global %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal" { i8* bitcast (%struct.ObjectiveCClass* @_NSConcreteGlobalBlock to i8*), i32 805306368, i32 0, void (%"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"*, %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"*)* @_ZN6Halide7Runtime8Internal5Metal39command_buffer_completed_handler_invokeEPNS2_46command_buffer_completed_handler_block_literalEPNS2_18mtl_command_bufferE, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_descriptor_1"* @_ZN6Halide7Runtime8Internal5Metal43command_buffer_completed_handler_descriptorE }, align 8, !dbg !121
@.str.45 = private unnamed_addr constant [43 x i8] c"halide_metal_device_malloc (user_context: \00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c", buf: \00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.48 = private unnamed_addr constant [102 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:468 Assert failed: size != 0\0A\00", align 1
@.str.49 = private unnamed_addr constant [116 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:476 Assert failed: buf->dim[i].stride >= 0\0A\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"    allocating \00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"Metal: Failed to allocate buffer of size \00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE = weak dso_local global %struct.halide_device_interface_t { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_sync, void (i8*, %struct.halide_device_interface_t*)* @halide_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_copy_to_host, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_copy_to_device, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)* @halide_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)* @halide_device_wrap_native, i32 (i8*, %struct.halide_buffer_t*)* @halide_device_detach_native, i32 (i8*, i32*, i32*)* null, %struct.halide_device_interface_impl_t* @_ZN6Halide7Runtime8Internal5Metal27metal_device_interface_implE }, align 8, !dbg !137
@.str.54 = private unnamed_addr constant [11 x i8] c"    Time: \00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c" ms\0A\00", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"halide_metal_device_free called on buf \00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c" device is \00", align 1
@.str.58 = private unnamed_addr constant [211 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:529 Assert failed: (((device_handle *)buf->device)->offset == 0) && \22halide_metal_device_free on buffer obtained from halide_device_crop\22\0A\00", align 1
@.str.59 = private unnamed_addr constant [111 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:561 Assert failed: library != nullptr\0A\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"Time for halide_metal_initialize_kernels: \00", align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"halide_metal_device_sync_internal\00", align 1
@.str.62 = private unnamed_addr constant [36 x i8] c"Time for halide_metal_device_sync: \00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"Calling delete context on device \00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"Metal - Releasing: new_command_queue \00", align 1
@.str.65 = private unnamed_addr constant [49 x i8] c"Metal - Releasing: MTLCreateSystemDefaultDevice \00", align 1
@.str.66 = private unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:661 Assert failed: buffer->host && buffer->device\0A\00", align 1
@.str.67 = private unnamed_addr constant [35 x i8] c"halide_metal_copy_to_device dev = \00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c" metal_buffer = \00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c" host = \00", align 1
@.str.70 = private unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:675 Assert failed: total_size != 0\0A\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"Time for halide_metal_copy_to_device: \00", align 1
@.str.72 = private unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:704 Assert failed: buffer->host && buffer->device\0A\00", align 1
@.str.73 = private unnamed_addr constant [128 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:705 Assert failed: buffer->dimensions <= MAX_COPY_DIMS\0A\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"Time for halide_metal_copy_to_host: \00", align 1
@.str.75 = private unnamed_addr constant [43 x i8] c"Metal: Could not allocate command buffer.\0A\00", align 1
@.str.76 = private unnamed_addr constant [52 x i8] c"Metal: Could not allocate compute command encoder.\0A\00", align 1
@.str.77 = private unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:759 Assert failed: found && library != nullptr\0A\00", align 1
@.str.78 = private unnamed_addr constant [31 x i8] c"Metal: Could not get function \00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"from Metal library.\0A\00", align 1
@.str.80 = private unnamed_addr constant [43 x i8] c"Metal: Could not allocate pipeline state.\0A\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"Metal: threadsX(\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c") * threadsY(\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c") * threadsZ(\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c") (\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c") must be <= \00", align 1
@.str.86 = private unnamed_addr constant [35 x i8] c". (device threadgroup size limit)\0A\00", align 1
@.str.87 = private unnamed_addr constant [133 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:795 Assert failed: (arg_sizes[i] & (arg_sizes[i] - 1)) == 0\0A\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"Metal - supports setBytes\0A\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"Total args size is \00", align 1
@.str.90 = private unnamed_addr constant [28 x i8] c" and with padding, size is \00", align 1
@.str.91 = private unnamed_addr constant [128 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:819 Assert failed: padded_args_size >= total_args_size\0A\00", align 1
@.str.92 = private unnamed_addr constant [45 x i8] c"Metal: Could not allocate arguments buffer.\0A\00", align 1
@.str.93 = private unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:840 Assert failed: offset == total_args_size\0A\00", align 1
@.str.94 = private unnamed_addr constant [125 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:853 Assert failed: arg_sizes[i] == sizeof(uint64_t)\0A\00", align 1
@.str.95 = private unnamed_addr constant [33 x i8] c"Setting shared memory length to \00", align 1
@_ZZ16halide_metal_runE16total_dispatches = internal unnamed_addr global i32 0, align 4, !dbg !330
@.str.96 = private unnamed_addr constant [34 x i8] c"Dispatching threadgroups (number \00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c") blocks(\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c") threads(\00", align 1
@.str.100 = private unnamed_addr constant [35 x i8] c"Time for halide_metal_device_run: \00", align 1
@.str.101 = private unnamed_addr constant [45 x i8] c"halide_metal_device_and_host_malloc called.\0A\00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"halide_metal_device_and_host_malloc\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c" device = \00", align 1
@.str.104 = private unnamed_addr constant [43 x i8] c"halide_metal_device_and_host_free called.\0A\00", align 1
@.str.105 = private unnamed_addr constant [52 x i8] c"Buffer has too many dimensions to copy to/from GPU\0A\00", align 1
@.str.106 = private unnamed_addr constant [175 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:922 Assert failed: dst_device_interface == nullptr || dst_device_interface == &metal_device_interface\0A\00", align 1
@.str.107 = private unnamed_addr constant [140 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:926 Assert failed: dst_device_interface == &metal_device_interface\0A\00", align 1
@.str.109 = private unnamed_addr constant [115 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:937 Assert failed: to_host || dst->device\0A\00", align 1
@.str.110 = private unnamed_addr constant [41 x i8] c"halide_metal_buffer_copy (user_context: \00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c", src: \00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c", dst: \00", align 1
@.str.113 = private unnamed_addr constant [49 x i8] c"halide_metal_buffer_copy device to device case.\0A\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"halide_metal_buffer_copy\00", align 1
@.str.115 = private unnamed_addr constant [102 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:982 Assert failed: from_host\0A\00", align 1
@.str.116 = private unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:991 Assert failed: total_size != 0\0A\00", align 1
@.str.117 = private unnamed_addr constant [63 x i8] c"halide_metal_device_crop: malloc failed making device handle.\0A\00", align 1
@.str.118 = private unnamed_addr constant [48 x i8] c"halide_metal_device_release_crop called on buf \00", align 1
@.str.119 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:1082 Assert failed: buf->device == 0\0A\00", align 1
@.str.120 = private unnamed_addr constant [63 x i8] c"halide_metal_wrap_buffer: malloc failed making device handle.\0A\00", align 1
@.str.121 = private unnamed_addr constant [142 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:1104 Assert failed: buf->device_interface == &metal_device_interface\0A\00", align 1
@.str.122 = private unnamed_addr constant [142 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:1116 Assert failed: buf->device_interface == &metal_device_interface\0A\00", align 1
@.str.123 = private unnamed_addr constant [142 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp:1124 Assert failed: buf->device_interface == &metal_device_interface\0A\00", align 1
@_ZN6Halide7Runtime8Internal5Metal27metal_device_interface_implE = weak dso_local global %struct.halide_device_interface_impl_t { void ()* @halide_use_jit_module, void ()* @halide_release_jit_module, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_free, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_sync, i32 (i8*)* @halide_metal_device_release, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_copy_to_host, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_copy_to_device, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_and_host_malloc, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_and_host_free, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)* @halide_metal_buffer_copy, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)* @halide_metal_device_crop, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)* @halide_metal_device_slice, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_device_release_crop, i32 (i8*, %struct.halide_buffer_t*, i64)* @halide_metal_wrap_buffer, i32 (i8*, %struct.halide_buffer_t*)* @halide_metal_detach_buffer }, align 8, !dbg !920
@.str.124 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1
@.str.126 = private unnamed_addr constant [26 x i8] c"Caching compiled kernel: \00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c" id \00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c" context \00", align 1
@.str.129 = private unnamed_addr constant [108 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:69 Assert failed: false\0A\00", align 1
@.str.130 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:127 Assert failed: result\0A\00", align 1
@.str.131 = private unnamed_addr constant [110 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_context_common.h:215 Assert failed: result\0A\00", align 1
@.str.132 = private unnamed_addr constant [31 x i8] c"Releasing cached compilation: \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_metal.cpp, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_metal_cleanup, i8* null }]

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !998 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !1017, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i32 %1, metadata !1018, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %2, metadata !1019, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %3, metadata !1020, metadata !DIExpression()), !dbg !1028
  %5 = icmp sgt i32 %1, -1, !dbg !1029
  br i1 %5, label %6, label %15, !dbg !1030

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !1018, metadata !DIExpression()), !dbg !1028
  %8 = zext i32 %7 to i64, !dbg !1031
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8, !dbg !1031
  %10 = load i64, i64* %9, align 8, !dbg !1031, !tbaa !1032
  %11 = icmp eq i64 %10, 1, !dbg !1036
  br i1 %11, label %12, label %15, !dbg !1037

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1, !dbg !1038
  call void @llvm.dbg.value(metadata i32 %13, metadata !1018, metadata !DIExpression()), !dbg !1028
  %14 = icmp sgt i32 %7, 0, !dbg !1029
  br i1 %14, label %6, label %27, !dbg !1030, !llvm.loop !1040

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1, !dbg !1043
  br i1 %17, label %27, label %18, !dbg !1044

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !1025, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i64 %2, metadata !1019, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %3, metadata !1020, metadata !DIExpression()), !dbg !1028
  %19 = sext i32 %16 to i64, !dbg !1046
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19, !dbg !1046
  %21 = load i64, i64* %20, align 8, !dbg !1046, !tbaa !1032
  %22 = icmp eq i64 %21, 0, !dbg !1048
  br i1 %22, label %50, label %23, !dbg !1049

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %39, !dbg !1049

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !1050
  %29 = load i64, i64* %28, align 8, !dbg !1050, !tbaa !1051
  %30 = add i64 %29, %2, !dbg !1053
  %31 = inttoptr i64 %30 to i8*, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %31, metadata !1021, metadata !DIExpression()), !dbg !1055
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !1056
  %33 = load i64, i64* %32, align 8, !dbg !1056, !tbaa !1057
  %34 = add i64 %33, %3, !dbg !1058
  %35 = inttoptr i64 %34 to i8*, !dbg !1059
  call void @llvm.dbg.value(metadata i8* %35, metadata !1024, metadata !DIExpression()), !dbg !1055
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6, !dbg !1060
  %37 = load i64, i64* %36, align 8, !dbg !1060, !tbaa !1061
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #8, !dbg !1062
  br label %50, !dbg !1063

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %2, %23 ], [ %44, %39 ]
  %42 = phi i64 [ %3, %23 ], [ %46, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1025, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i64 %41, metadata !1019, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %42, metadata !1020, metadata !DIExpression()), !dbg !1028
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %41, i64 %42) #9, !dbg !1064
  %43 = load i64, i64* %25, align 8, !dbg !1066, !tbaa !1032
  %44 = add i64 %43, %41, !dbg !1067
  call void @llvm.dbg.value(metadata i64 %44, metadata !1019, metadata !DIExpression()), !dbg !1028
  %45 = load i64, i64* %26, align 8, !dbg !1068, !tbaa !1032
  %46 = add i64 %45, %42, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %46, metadata !1020, metadata !DIExpression()), !dbg !1028
  %47 = add nuw i64 %40, 1, !dbg !1070
  call void @llvm.dbg.value(metadata i64 %47, metadata !1025, metadata !DIExpression()), !dbg !1045
  %48 = load i64, i64* %20, align 8, !dbg !1046, !tbaa !1032
  %49 = icmp ult i64 %47, %48, !dbg !1048
  br i1 %49, label %39, label %50, !dbg !1049, !llvm.loop !1071

50:                                               ; preds = %39, %18, %27
  ret void, !dbg !1073
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !1074 dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #4 !dbg !1078 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !1082, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8* %1, metadata !1083, metadata !DIExpression()), !dbg !1084
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !1085
  %4 = load i64, i64* %3, align 8, !dbg !1085, !tbaa !1051
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !1087
  %6 = load i64, i64* %5, align 8, !dbg !1087, !tbaa !1057
  %7 = icmp eq i64 %4, %6, !dbg !1088
  br i1 %7, label %11, label %8, !dbg !1089

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 2, !dbg !1090
  %10 = load i64, i64* %9, align 8, !dbg !1090, !tbaa !1092
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #9, !dbg !1093
  br label %25, !dbg !1094

11:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !1101
  call void @llvm.dbg.value(metadata i8* %1, metadata !1098, metadata !DIExpression()) #10, !dbg !1101
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !1101
  %12 = tail call i8* @malloc(i64 1024) #8, !dbg !1104
  %13 = icmp eq i8* %12, null, !dbg !1109
  br i1 %13, label %14, label %16, !dbg !1111

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1116
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1116
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1118
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !1124
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !1126
  br label %24, !dbg !1130

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i64 1023, !dbg !1131
  store i8 0, i8* %17, align 1, !dbg !1133, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1116
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1116
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1118
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !1124
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !1138
  %19 = ptrtoint i8* %18 to i64, !dbg !1141
  %20 = ptrtoint i8* %12 to i64, !dbg !1141
  %21 = add i64 %19, 1, !dbg !1141
  %22 = sub i64 %21, %20, !dbg !1142
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %12, i64 %22) #8, !dbg !1143
  tail call void @halide_print(i8* %1, i8* nonnull %12) #8, !dbg !1144
  br label %24

24:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #8, !dbg !1148
  br label %25

25:                                               ; preds = %24, %8
  ret void, !dbg !1151
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 !dbg !1152 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1157, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i1 %2, metadata !1158, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1184
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1159, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i1 %4, metadata !1160, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1184
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*, !dbg !1185
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #10, !dbg !1185
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %6, metadata !1161, metadata !DIExpression()), !dbg !1186
  br i1 %2, label %8, label %12, !dbg !1187

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !1188
  %10 = load i8*, i8** %9, align 8, !dbg !1188, !tbaa !1189
  %11 = ptrtoint i8* %10 to i64, !dbg !1196
  br label %15, !dbg !1187

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1197
  %14 = load i64, i64* %13, align 8, !dbg !1197, !tbaa !1198
  br label %15, !dbg !1187

15:                                               ; preds = %12, %8
  %16 = phi i64 [ %11, %8 ], [ %14, %12 ], !dbg !1187
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 0, !dbg !1199
  store i64 %16, i64* %17, align 8, !dbg !1200, !tbaa !1051
  br i1 %4, label %18, label %22, !dbg !1201

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2, !dbg !1202
  %20 = load i8*, i8** %19, align 8, !dbg !1202, !tbaa !1189
  %21 = ptrtoint i8* %20 to i64, !dbg !1203
  br label %25, !dbg !1201

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0, !dbg !1204
  %24 = load i64, i64* %23, align 8, !dbg !1204, !tbaa !1198
  br label %25, !dbg !1201

25:                                               ; preds = %22, %18
  %26 = phi i64 [ %21, %18 ], [ %24, %22 ], !dbg !1201
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 1, !dbg !1205
  store i64 %26, i64* %27, align 8, !dbg !1206, !tbaa !1057
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1211
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !1213
  %29 = load i8, i8* %28, align 1, !dbg !1213, !tbaa !1214
  %30 = zext i8 %29 to i32, !dbg !1213
  %31 = add nuw nsw i32 %30, 7, !dbg !1215
  %32 = lshr i32 %31, 3, !dbg !1216
  %33 = zext i32 %32 to i64, !dbg !1217
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 6, !dbg !1218
  store i64 %33, i64* %34, align 8, !dbg !1219, !tbaa !1061
  call void @llvm.dbg.value(metadata i32 0, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 0, metadata !1162, metadata !DIExpression()), !dbg !1220
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 0, !dbg !1221
  store i64 1, i64* %35, align 8, !dbg !1224, !tbaa !1032
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 0, !dbg !1225
  store i64 0, i64* %36, align 8, !dbg !1226, !tbaa !1032
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 0, !dbg !1227
  store i64 0, i64* %37, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 1, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 1, metadata !1162, metadata !DIExpression()), !dbg !1220
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 1, !dbg !1221
  store i64 1, i64* %38, align 8, !dbg !1224, !tbaa !1032
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 1, !dbg !1225
  store i64 0, i64* %39, align 8, !dbg !1226, !tbaa !1032
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 1, !dbg !1227
  store i64 0, i64* %40, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 2, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 2, metadata !1162, metadata !DIExpression()), !dbg !1220
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 2, !dbg !1221
  store i64 1, i64* %41, align 8, !dbg !1224, !tbaa !1032
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 2, !dbg !1225
  store i64 0, i64* %42, align 8, !dbg !1226, !tbaa !1032
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 2, !dbg !1227
  store i64 0, i64* %43, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 3, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 3, metadata !1162, metadata !DIExpression()), !dbg !1220
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 3, !dbg !1221
  store i64 1, i64* %44, align 8, !dbg !1224, !tbaa !1032
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 3, !dbg !1225
  store i64 0, i64* %45, align 8, !dbg !1226, !tbaa !1032
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 3, !dbg !1227
  store i64 0, i64* %46, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 4, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 4, metadata !1162, metadata !DIExpression()), !dbg !1220
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 4, !dbg !1221
  store i64 1, i64* %47, align 8, !dbg !1224, !tbaa !1032
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 4, !dbg !1225
  store i64 0, i64* %48, align 8, !dbg !1226, !tbaa !1032
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 4, !dbg !1227
  store i64 0, i64* %49, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 5, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 5, metadata !1162, metadata !DIExpression()), !dbg !1220
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 5, !dbg !1221
  store i64 1, i64* %50, align 8, !dbg !1224, !tbaa !1032
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 5, !dbg !1225
  store i64 0, i64* %51, align 8, !dbg !1226, !tbaa !1032
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 5, !dbg !1227
  store i64 0, i64* %52, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 6, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 6, metadata !1162, metadata !DIExpression()), !dbg !1220
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 6, !dbg !1221
  store i64 1, i64* %53, align 8, !dbg !1224, !tbaa !1032
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 6, !dbg !1225
  store i64 0, i64* %54, align 8, !dbg !1226, !tbaa !1032
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 6, !dbg !1227
  store i64 0, i64* %55, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 7, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 7, metadata !1162, metadata !DIExpression()), !dbg !1220
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 7, !dbg !1221
  store i64 1, i64* %56, align 8, !dbg !1224, !tbaa !1032
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 7, !dbg !1225
  store i64 0, i64* %57, align 8, !dbg !1226, !tbaa !1032
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 7, !dbg !1227
  store i64 0, i64* %58, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 8, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 8, metadata !1162, metadata !DIExpression()), !dbg !1220
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 8, !dbg !1221
  store i64 1, i64* %59, align 8, !dbg !1224, !tbaa !1032
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 8, !dbg !1225
  store i64 0, i64* %60, align 8, !dbg !1226, !tbaa !1032
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 8, !dbg !1227
  store i64 0, i64* %61, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 9, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 9, metadata !1162, metadata !DIExpression()), !dbg !1220
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 9, !dbg !1221
  store i64 1, i64* %62, align 8, !dbg !1224, !tbaa !1032
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 9, !dbg !1225
  store i64 0, i64* %63, align 8, !dbg !1226, !tbaa !1032
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 9, !dbg !1227
  store i64 0, i64* %64, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 10, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 10, metadata !1162, metadata !DIExpression()), !dbg !1220
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 10, !dbg !1221
  store i64 1, i64* %65, align 8, !dbg !1224, !tbaa !1032
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 10, !dbg !1225
  store i64 0, i64* %66, align 8, !dbg !1226, !tbaa !1032
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 10, !dbg !1227
  store i64 0, i64* %67, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 11, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 11, metadata !1162, metadata !DIExpression()), !dbg !1220
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 11, !dbg !1221
  store i64 1, i64* %68, align 8, !dbg !1224, !tbaa !1032
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 11, !dbg !1225
  store i64 0, i64* %69, align 8, !dbg !1226, !tbaa !1032
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 11, !dbg !1227
  store i64 0, i64* %70, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 12, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 12, metadata !1162, metadata !DIExpression()), !dbg !1220
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 12, !dbg !1221
  store i64 1, i64* %71, align 8, !dbg !1224, !tbaa !1032
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 12, !dbg !1225
  store i64 0, i64* %72, align 8, !dbg !1226, !tbaa !1032
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 12, !dbg !1227
  store i64 0, i64* %73, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 13, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 13, metadata !1162, metadata !DIExpression()), !dbg !1220
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 13, !dbg !1221
  store i64 1, i64* %74, align 8, !dbg !1224, !tbaa !1032
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 13, !dbg !1225
  store i64 0, i64* %75, align 8, !dbg !1226, !tbaa !1032
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 13, !dbg !1227
  store i64 0, i64* %76, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 14, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 14, metadata !1162, metadata !DIExpression()), !dbg !1220
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 14, !dbg !1221
  store i64 1, i64* %77, align 8, !dbg !1224, !tbaa !1032
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 14, !dbg !1225
  store i64 0, i64* %78, align 8, !dbg !1226, !tbaa !1032
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 14, !dbg !1227
  store i64 0, i64* %79, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 15, metadata !1162, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 15, metadata !1162, metadata !DIExpression()), !dbg !1220
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 15, !dbg !1221
  store i64 1, i64* %80, align 8, !dbg !1224, !tbaa !1032
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 15, !dbg !1225
  store i64 0, i64* %81, align 8, !dbg !1226, !tbaa !1032
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 15, !dbg !1227
  store i64 0, i64* %82, align 8, !dbg !1228, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 16, metadata !1162, metadata !DIExpression()), !dbg !1220
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 2, !dbg !1229
  call void @llvm.dbg.value(metadata i32 0, metadata !1164, metadata !DIExpression()), !dbg !1230
  %84 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !1231
  %85 = load i32, i32* %84, align 4, !dbg !1231, !tbaa !1233
  %86 = icmp sgt i32 %85, 0, !dbg !1234
  br i1 %86, label %87, label %93, !dbg !1235

87:                                               ; preds = %25
  %88 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %89 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %88, align 8, !tbaa !1236
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !1236
  %92 = zext i32 %85 to i64, !dbg !1234
  br label %100, !dbg !1235

93:                                               ; preds = %100, %25
  %94 = phi i64 [ 0, %25 ], [ %113, %100 ], !dbg !1237
  %95 = load i64, i64* %34, align 8, !dbg !1238, !tbaa !1061
  %96 = mul i64 %94, %95, !dbg !1237
  store i64 %96, i64* %83, align 8, !dbg !1237, !tbaa !1092
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5, !dbg !1239
  %98 = load i32, i32* %97, align 4, !dbg !1239, !tbaa !1233
  %99 = icmp eq i32 %85, %98, !dbg !1240
  br i1 %99, label %116, label %125, !dbg !1241

100:                                              ; preds = %87, %100
  %101 = phi i64 [ 0, %87 ], [ %114, %100 ], !dbg !1230
  %102 = phi i64 [ 0, %87 ], [ %113, %100 ], !dbg !1230
  call void @llvm.dbg.value(metadata i64 %101, metadata !1164, metadata !DIExpression()), !dbg !1230
  %103 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 2, !dbg !1242
  %104 = load i32, i32* %103, align 4, !dbg !1242, !tbaa !1244
  %105 = sext i32 %104 to i64, !dbg !1246
  %106 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i64 %101, i32 0, !dbg !1247
  %107 = load i32, i32* %106, align 4, !dbg !1247, !tbaa !1248
  %108 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 0, !dbg !1249
  %109 = load i32, i32* %108, align 4, !dbg !1249, !tbaa !1248
  %110 = sub nsw i32 %107, %109, !dbg !1250
  %111 = sext i32 %110 to i64, !dbg !1251
  %112 = mul nsw i64 %111, %105, !dbg !1252
  %113 = add i64 %112, %102, !dbg !1253
  %114 = add nuw nsw i64 %101, 1, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %114, metadata !1164, metadata !DIExpression()), !dbg !1230
  %115 = icmp eq i64 %114, %92, !dbg !1234
  br i1 %115, label %93, label %100, !dbg !1235, !llvm.loop !1255

116:                                              ; preds = %93
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1257
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1259
  %117 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1, !dbg !1261
  %118 = load i8, i8* %117, align 1, !dbg !1261, !tbaa !1214
  %119 = zext i8 %118 to i32, !dbg !1261
  %120 = add nuw nsw i32 %119, 7, !dbg !1262
  %121 = lshr i32 %120, 3, !dbg !1263
  %122 = icmp ne i32 %32, %121, !dbg !1264
  %123 = icmp sgt i32 %85, 16
  %124 = or i1 %123, %122, !dbg !1265
  br i1 %124, label %125, label %127, !dbg !1265

125:                                              ; preds = %116, %93
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !1166, metadata !DIExpression()), !dbg !1266
  %126 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !1266
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %126, i8 0, i64 416, i1 false), !dbg !1266
  br label %253, !dbg !1267

127:                                              ; preds = %116
  %128 = icmp eq i64 %95, 0, !dbg !1268
  br i1 %128, label %136, label %129, !dbg !1269

129:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i32 0, metadata !1172, metadata !DIExpression()), !dbg !1270
  br i1 %86, label %130, label %251, !dbg !1271

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %132 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %131, align 8, !tbaa !1236
  %133 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %134 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %133, align 8, !tbaa !1236
  %135 = zext i32 %85 to i64, !dbg !1272
  br label %144, !dbg !1271

136:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !1169, metadata !DIExpression()), !dbg !1273
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !1273
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i64 416, i1 false), !dbg !1273
  br label %253, !dbg !1274

138:                                              ; preds = %176
  %139 = load i64, i64* %34, align 8, !dbg !1275, !tbaa !1061
  %140 = load i64, i64* %36, align 8, !dbg !1276, !tbaa !1032
  %141 = icmp eq i64 %139, %140, !dbg !1277
  br i1 %141, label %142, label %251, !dbg !1278

142:                                              ; preds = %138
  %143 = load i64, i64* %37, align 8, !dbg !1279, !tbaa !1032
  br label %198, !dbg !1278

144:                                              ; preds = %130, %176
  %145 = phi i64 [ 0, %130 ], [ %183, %176 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1172, metadata !DIExpression()), !dbg !1270
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 2, !dbg !1280
  %147 = load i32, i32* %146, align 4, !dbg !1280, !tbaa !1244
  %148 = sext i32 %147 to i64, !dbg !1281
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1282
  %149 = mul nsw i64 %148, %33, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %149, metadata !1174, metadata !DIExpression()), !dbg !1285
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %134, i64 %145, i32 2, !dbg !1286
  %151 = load i32, i32* %150, align 4, !dbg !1286, !tbaa !1244
  %152 = sext i32 %151 to i64, !dbg !1287
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1288
  %153 = mul nsw i64 %152, %33, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %153, metadata !1177, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i32 0, metadata !1178, metadata !DIExpression()), !dbg !1285
  %154 = icmp eq i64 %145, 0, !dbg !1291
  br i1 %154, label %170, label %155, !dbg !1294

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %157, label %159, !dbg !1294

157:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i32 undef, metadata !1178, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1285
  %158 = trunc i64 %145 to i32, !dbg !1295
  br label %170, !dbg !1295

159:                                              ; preds = %155, %164
  %160 = phi i64 [ %165, %164 ], [ 0, %155 ]
  call void @llvm.dbg.value(metadata i64 %160, metadata !1178, metadata !DIExpression()), !dbg !1285
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %160, !dbg !1297
  %162 = load i64, i64* %161, align 8, !dbg !1297, !tbaa !1032
  %163 = icmp ult i64 %149, %162, !dbg !1300
  br i1 %163, label %167, label %164, !dbg !1301

164:                                              ; preds = %159
  %165 = add nuw nsw i64 %160, 1, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %165, metadata !1178, metadata !DIExpression()), !dbg !1285
  %166 = icmp eq i64 %165, %145, !dbg !1291
  br i1 %166, label %167, label %159, !dbg !1294, !llvm.loop !1303

167:                                              ; preds = %159, %164
  %168 = phi i64 [ %145, %164 ], [ %160, %159 ]
  %169 = trunc i64 %168 to i32, !dbg !1305
  br label %170, !dbg !1295

170:                                              ; preds = %157, %167, %144
  %171 = phi i32 [ 0, %144 ], [ %169, %167 ], [ %158, %157 ], !dbg !1305
  call void @llvm.dbg.value(metadata i64 %145, metadata !1179, metadata !DIExpression()), !dbg !1306
  %172 = zext i32 %171 to i64, !dbg !1295
  %173 = icmp ugt i64 %145, %172, !dbg !1295
  br i1 %173, label %174, label %176, !dbg !1307

174:                                              ; preds = %170
  %175 = sext i32 %171 to i64, !dbg !1307
  br label %185, !dbg !1307

176:                                              ; preds = %185, %170
  %177 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 1, !dbg !1308
  %178 = load i32, i32* %177, align 4, !dbg !1308, !tbaa !1309
  %179 = sext i32 %178 to i64, !dbg !1310
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %172, !dbg !1311
  store i64 %179, i64* %180, align 8, !dbg !1312, !tbaa !1032
  %181 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %172, !dbg !1313
  store i64 %149, i64* %181, align 8, !dbg !1314, !tbaa !1032
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %172, !dbg !1315
  store i64 %153, i64* %182, align 8, !dbg !1316, !tbaa !1032
  %183 = add nuw nsw i64 %145, 1, !dbg !1317
  call void @llvm.dbg.value(metadata i64 %183, metadata !1172, metadata !DIExpression()), !dbg !1270
  %184 = icmp eq i64 %183, %135, !dbg !1272
  br i1 %184, label %138, label %144, !dbg !1271, !llvm.loop !1318

185:                                              ; preds = %174, %185
  %186 = phi i64 [ %145, %174 ], [ %187, %185 ]
  call void @llvm.dbg.value(metadata i64 %186, metadata !1179, metadata !DIExpression()), !dbg !1306
  %187 = add nsw i64 %186, -1, !dbg !1320
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %187, !dbg !1322
  %189 = load i64, i64* %188, align 8, !dbg !1322, !tbaa !1032
  %190 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %186, !dbg !1323
  store i64 %189, i64* %190, align 8, !dbg !1324, !tbaa !1032
  %191 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %187, !dbg !1325
  %192 = load i64, i64* %191, align 8, !dbg !1325, !tbaa !1032
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %186, !dbg !1326
  store i64 %192, i64* %193, align 8, !dbg !1327, !tbaa !1032
  %194 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %187, !dbg !1328
  %195 = load i64, i64* %194, align 8, !dbg !1328, !tbaa !1032
  %196 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %186, !dbg !1329
  store i64 %195, i64* %196, align 8, !dbg !1330, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 %187, metadata !1179, metadata !DIExpression()), !dbg !1306
  %197 = icmp sgt i64 %187, %175, !dbg !1295
  br i1 %197, label %185, label %176, !dbg !1307, !llvm.loop !1331

198:                                              ; preds = %142, %202
  %199 = phi i64 [ %143, %142 ], [ %207, %202 ], !dbg !1279
  %200 = phi i64 [ %140, %142 ], [ %204, %202 ]
  %201 = icmp eq i64 %200, %199, !dbg !1333
  br i1 %201, label %202, label %251, !dbg !1334

202:                                              ; preds = %198
  %203 = load i64, i64* %35, align 8, !dbg !1335, !tbaa !1032
  %204 = mul i64 %203, %199, !dbg !1336
  store i64 %204, i64* %34, align 8, !dbg !1336, !tbaa !1061
  call void @llvm.dbg.value(metadata i64 1, metadata !1181, metadata !DIExpression()), !dbg !1337
  %205 = load i64, i64* %38, align 8, !dbg !1338, !tbaa !1032
  store i64 %205, i64* %35, align 8, !dbg !1341, !tbaa !1032
  %206 = load i64, i64* %39, align 8, !dbg !1342, !tbaa !1032
  store i64 %206, i64* %36, align 8, !dbg !1343, !tbaa !1032
  %207 = load i64, i64* %40, align 8, !dbg !1344, !tbaa !1032
  store i64 %207, i64* %37, align 8, !dbg !1345, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 2, metadata !1181, metadata !DIExpression()), !dbg !1337
  %208 = load i64, i64* %41, align 8, !dbg !1338, !tbaa !1032
  store i64 %208, i64* %38, align 8, !dbg !1341, !tbaa !1032
  %209 = load i64, i64* %42, align 8, !dbg !1342, !tbaa !1032
  store i64 %209, i64* %39, align 8, !dbg !1343, !tbaa !1032
  %210 = load i64, i64* %43, align 8, !dbg !1344, !tbaa !1032
  store i64 %210, i64* %40, align 8, !dbg !1345, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 3, metadata !1181, metadata !DIExpression()), !dbg !1337
  %211 = load i64, i64* %44, align 8, !dbg !1338, !tbaa !1032
  store i64 %211, i64* %41, align 8, !dbg !1341, !tbaa !1032
  %212 = load i64, i64* %45, align 8, !dbg !1342, !tbaa !1032
  store i64 %212, i64* %42, align 8, !dbg !1343, !tbaa !1032
  %213 = load i64, i64* %46, align 8, !dbg !1344, !tbaa !1032
  store i64 %213, i64* %43, align 8, !dbg !1345, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 4, metadata !1181, metadata !DIExpression()), !dbg !1337
  %214 = load i64, i64* %47, align 8, !dbg !1338, !tbaa !1032
  store i64 %214, i64* %44, align 8, !dbg !1341, !tbaa !1032
  %215 = load i64, i64* %48, align 8, !dbg !1342, !tbaa !1032
  store i64 %215, i64* %45, align 8, !dbg !1343, !tbaa !1032
  %216 = load i64, i64* %49, align 8, !dbg !1344, !tbaa !1032
  store i64 %216, i64* %46, align 8, !dbg !1345, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 5, metadata !1181, metadata !DIExpression()), !dbg !1337
  %217 = load i64, i64* %50, align 8, !dbg !1338, !tbaa !1032
  store i64 %217, i64* %47, align 8, !dbg !1341, !tbaa !1032
  %218 = load i64, i64* %51, align 8, !dbg !1342, !tbaa !1032
  store i64 %218, i64* %48, align 8, !dbg !1343, !tbaa !1032
  %219 = load i64, i64* %52, align 8, !dbg !1344, !tbaa !1032
  store i64 %219, i64* %49, align 8, !dbg !1345, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 6, metadata !1181, metadata !DIExpression()), !dbg !1337
  %220 = load i64, i64* %53, align 8, !dbg !1338, !tbaa !1032
  store i64 %220, i64* %50, align 8, !dbg !1341, !tbaa !1032
  %221 = load i64, i64* %54, align 8, !dbg !1342, !tbaa !1032
  store i64 %221, i64* %51, align 8, !dbg !1343, !tbaa !1032
  %222 = load i64, i64* %55, align 8, !dbg !1344, !tbaa !1032
  store i64 %222, i64* %52, align 8, !dbg !1345, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 7, metadata !1181, metadata !DIExpression()), !dbg !1337
  %223 = load i64, i64* %56, align 8, !dbg !1338, !tbaa !1032
  store i64 %223, i64* %53, align 8, !dbg !1341, !tbaa !1032
  %224 = load i64, i64* %57, align 8, !dbg !1342, !tbaa !1032
  store i64 %224, i64* %54, align 8, !dbg !1343, !tbaa !1032
  %225 = load i64, i64* %58, align 8, !dbg !1344, !tbaa !1032
  store i64 %225, i64* %55, align 8, !dbg !1345, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 8, metadata !1181, metadata !DIExpression()), !dbg !1337
  %226 = load i64, i64* %59, align 8, !dbg !1338, !tbaa !1032
  store i64 %226, i64* %56, align 8, !dbg !1341, !tbaa !1032
  %227 = load i64, i64* %60, align 8, !dbg !1342, !tbaa !1032
  store i64 %227, i64* %57, align 8, !dbg !1343, !tbaa !1032
  %228 = load i64, i64* %61, align 8, !dbg !1344, !tbaa !1032
  store i64 %228, i64* %58, align 8, !dbg !1345, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 9, metadata !1181, metadata !DIExpression()), !dbg !1337
  %229 = load i64, i64* %62, align 8, !dbg !1338, !tbaa !1032
  store i64 %229, i64* %59, align 8, !dbg !1341, !tbaa !1032
  %230 = load i64, i64* %63, align 8, !dbg !1342, !tbaa !1032
  store i64 %230, i64* %60, align 8, !dbg !1343, !tbaa !1032
  %231 = load i64, i64* %64, align 8, !dbg !1344, !tbaa !1032
  store i64 %231, i64* %61, align 8, !dbg !1345, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 10, metadata !1181, metadata !DIExpression()), !dbg !1337
  %232 = load i64, i64* %65, align 8, !dbg !1338, !tbaa !1032
  store i64 %232, i64* %62, align 8, !dbg !1341, !tbaa !1032
  %233 = load i64, i64* %66, align 8, !dbg !1342, !tbaa !1032
  store i64 %233, i64* %63, align 8, !dbg !1343, !tbaa !1032
  %234 = load i64, i64* %67, align 8, !dbg !1344, !tbaa !1032
  store i64 %234, i64* %64, align 8, !dbg !1345, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 11, metadata !1181, metadata !DIExpression()), !dbg !1337
  %235 = load i64, i64* %68, align 8, !dbg !1338, !tbaa !1032
  store i64 %235, i64* %65, align 8, !dbg !1341, !tbaa !1032
  %236 = load i64, i64* %69, align 8, !dbg !1342, !tbaa !1032
  store i64 %236, i64* %66, align 8, !dbg !1343, !tbaa !1032
  %237 = load i64, i64* %70, align 8, !dbg !1344, !tbaa !1032
  store i64 %237, i64* %67, align 8, !dbg !1345, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 12, metadata !1181, metadata !DIExpression()), !dbg !1337
  %238 = load i64, i64* %71, align 8, !dbg !1338, !tbaa !1032
  store i64 %238, i64* %68, align 8, !dbg !1341, !tbaa !1032
  %239 = load i64, i64* %72, align 8, !dbg !1342, !tbaa !1032
  store i64 %239, i64* %69, align 8, !dbg !1343, !tbaa !1032
  %240 = load i64, i64* %73, align 8, !dbg !1344, !tbaa !1032
  store i64 %240, i64* %70, align 8, !dbg !1345, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 13, metadata !1181, metadata !DIExpression()), !dbg !1337
  %241 = load i64, i64* %74, align 8, !dbg !1338, !tbaa !1032
  store i64 %241, i64* %71, align 8, !dbg !1341, !tbaa !1032
  %242 = load i64, i64* %75, align 8, !dbg !1342, !tbaa !1032
  store i64 %242, i64* %72, align 8, !dbg !1343, !tbaa !1032
  %243 = load i64, i64* %76, align 8, !dbg !1344, !tbaa !1032
  store i64 %243, i64* %73, align 8, !dbg !1345, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 14, metadata !1181, metadata !DIExpression()), !dbg !1337
  %244 = load i64, i64* %77, align 8, !dbg !1338, !tbaa !1032
  store i64 %244, i64* %74, align 8, !dbg !1341, !tbaa !1032
  %245 = load i64, i64* %78, align 8, !dbg !1342, !tbaa !1032
  store i64 %245, i64* %75, align 8, !dbg !1343, !tbaa !1032
  %246 = load i64, i64* %79, align 8, !dbg !1344, !tbaa !1032
  store i64 %246, i64* %76, align 8, !dbg !1345, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 15, metadata !1181, metadata !DIExpression()), !dbg !1337
  %247 = load i64, i64* %80, align 8, !dbg !1338, !tbaa !1032
  store i64 %247, i64* %77, align 8, !dbg !1341, !tbaa !1032
  %248 = load i64, i64* %81, align 8, !dbg !1342, !tbaa !1032
  store i64 %248, i64* %78, align 8, !dbg !1343, !tbaa !1032
  %249 = load i64, i64* %82, align 8, !dbg !1344, !tbaa !1032
  store i64 %249, i64* %79, align 8, !dbg !1345, !tbaa !1032
  call void @llvm.dbg.value(metadata i64 16, metadata !1181, metadata !DIExpression()), !dbg !1337
  store i64 1, i64* %80, align 8, !dbg !1346, !tbaa !1032
  store i64 0, i64* %81, align 8, !dbg !1347, !tbaa !1032
  store i64 0, i64* %82, align 8, !dbg !1348, !tbaa !1032
  %250 = icmp eq i64 %204, %206, !dbg !1277
  br i1 %250, label %198, label %251, !dbg !1278, !llvm.loop !1349

251:                                              ; preds = %198, %202, %129, %138
  %252 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !1351
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %252, i8* nonnull align 8 dereferenceable(416) %7, i64 416, i1 false), !dbg !1351, !tbaa.struct !1352
  br label %253, !dbg !1353

253:                                              ; preds = %251, %136, %125
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #10, !dbg !1354
  ret void, !dbg !1354
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !1355 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1359, metadata !DIExpression()), !dbg !1360
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #9, !dbg !1361
  ret void, !dbg !1362
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !1363 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1365, metadata !DIExpression()), !dbg !1366
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #9, !dbg !1367
  ret void, !dbg !1368
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal23create_autorelease_poolEv() local_unnamed_addr #0 !dbg !477 {
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !482, metadata !DIExpression()), !dbg !1369
  %1 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !1370
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1371
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %1, i8* %2) #8, !dbg !1372
  call void @llvm.dbg.value(metadata i8* %3, metadata !483, metadata !DIExpression()), !dbg !1369
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1373
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #8, !dbg !1374
  call void @llvm.dbg.value(metadata i8* %5, metadata !483, metadata !DIExpression()), !dbg !1369
  ret i8* %5, !dbg !1375
}

declare dso_local void @objc_msgSend() local_unnamed_addr #3

declare !dbg !1376 dso_local i8* @objc_getClass(i8*) local_unnamed_addr #3

declare !dbg !1379 dso_local i8* @sel_getUid(i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal22drain_autorelease_poolEPv(i8* %0) local_unnamed_addr #0 !dbg !489 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !493, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !494, metadata !DIExpression()), !dbg !1380
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1381
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #8, !dbg !1382
  ret void, !dbg !1383
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal16retain_ns_objectEPv(i8* %0) local_unnamed_addr #0 !dbg !496 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !498, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !499, metadata !DIExpression()), !dbg !1384
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1385
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #8, !dbg !1386
  ret void, !dbg !1387
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %0) #0 !dbg !501 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !504, metadata !DIExpression()), !dbg !1388
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1389
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #8, !dbg !1390
  ret void, !dbg !1391
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %0, i64 %1) local_unnamed_addr #0 !dbg !506 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !510, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %1, metadata !511, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !512, metadata !DIExpression()), !dbg !1392
  %3 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1393
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1394
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #8, !dbg !1395
  call void @llvm.dbg.value(metadata i8* %5, metadata !513, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i8* (i8*, i8*, i8*, i64, i64, i8)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*, i8*, i64, i64, i8)*), metadata !514, metadata !DIExpression()), !dbg !1392
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !1396
  %7 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*, i8*, i64, i64, i8)*)(i8* %5, i8* %6, i8* %0, i64 %1, i64 4, i8 zeroext 0) #8, !dbg !1397
  ret i8* %7, !dbg !1398
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal18ns_log_utf8_stringEPKc(i8* %0) local_unnamed_addr #0 !dbg !1399 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1403, metadata !DIExpression()), !dbg !1406
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 2) #9, !dbg !1407
  call void @llvm.dbg.value(metadata i8* %2, metadata !1404, metadata !DIExpression()), !dbg !1406
  %3 = tail call i64 @strlen(i8* %0) #8, !dbg !1408
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %0, i64 %3) #9, !dbg !1409
  call void @llvm.dbg.value(metadata i8* %4, metadata !1405, metadata !DIExpression()), !dbg !1406
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %4) #8, !dbg !1410
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #9, !dbg !1411
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #9, !dbg !1412
  ret void, !dbg !1413
}

declare !dbg !1414 dso_local i64 @strlen(i8*) local_unnamed_addr #3

declare !dbg !1417 dso_local void @NSLog(i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %0) local_unnamed_addr #0 !dbg !1420 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1422, metadata !DIExpression()), !dbg !1424
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 2) #9, !dbg !1425
  call void @llvm.dbg.value(metadata i8* %2, metadata !1423, metadata !DIExpression()), !dbg !1424
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %0) #8, !dbg !1426
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #9, !dbg !1427
  ret void, !dbg !1428
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* @_ZN6Halide7Runtime8Internal5Metal10new_bufferEP19halide_metal_devicem(%struct.halide_metal_device* %0, i64 %1) local_unnamed_addr #0 !dbg !520 {
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %0, metadata !526, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i64 %1, metadata !527, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* (i8*, i8*, i64, i64)* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* (i8*, i8*, i64, i64)*), metadata !528, metadata !DIExpression()), !dbg !1429
  %3 = bitcast %struct.halide_metal_device* %0 to i8*, !dbg !1430
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !1431
  %5 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* (i8*, i8*, i64, i64)*)(i8* %3, i8* %4, i64 %1, i64 0) #8, !dbg !1432
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %5, !dbg !1433
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_metal_command_queue* @_ZN6Halide7Runtime8Internal5Metal17new_command_queueEP19halide_metal_device(%struct.halide_metal_device* %0) local_unnamed_addr #0 !dbg !533 {
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %0, metadata !537, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata %struct.halide_metal_command_queue* (i8*, i8*)* bitcast (void ()* @objc_msgSend to %struct.halide_metal_command_queue* (i8*, i8*)*), metadata !538, metadata !DIExpression()), !dbg !1434
  %2 = bitcast %struct.halide_metal_device* %0 to i8*, !dbg !1435
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !1436
  %4 = tail call %struct.halide_metal_command_queue* bitcast (void ()* @objc_msgSend to %struct.halide_metal_command_queue* (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1437
  ret %struct.halide_metal_command_queue* %4, !dbg !1438
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcm(%struct.halide_metal_command_queue* %0, i8* %1, i64 %2) local_unnamed_addr #0 !dbg !543 {
  call void @llvm.dbg.value(metadata %struct.halide_metal_command_queue* %0, metadata !547, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %1, metadata !548, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %2, metadata !549, metadata !DIExpression()), !dbg !1439
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %1, i64 %2) #9, !dbg !1440
  call void @llvm.dbg.value(metadata i8* %4, metadata !550, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* (i8*, i8*)* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* (i8*, i8*)*), metadata !551, metadata !DIExpression()), !dbg !1439
  %5 = bitcast %struct.halide_metal_command_queue* %0 to i8*, !dbg !1441
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !1442
  %7 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* (i8*, i8*)*)(i8* %5, i8* %6) #8, !dbg !1443
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %7, metadata !552, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata void (i8*, i8*, i8*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*)*), metadata !553, metadata !DIExpression()), !dbg !1439
  %8 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %7 to i8*, !dbg !1444
  %9 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !1445
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*)*)(i8* %8, i8* %9, i8* %4) #8, !dbg !1446
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #9, !dbg !1447
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %7, !dbg !1448
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal36add_command_buffer_completed_handlerEPNS2_18mtl_command_bufferEPNS2_46command_buffer_completed_handler_block_literalE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* %1) local_unnamed_addr #0 !dbg !562 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, metadata !566, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* %1, metadata !567, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"*)*), metadata !568, metadata !DIExpression()), !dbg !1449
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*, !dbg !1450
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !1451
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"*)*)(i8* %3, i8* %4, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* %1) #8, !dbg !1452
  ret void, !dbg !1453
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal5Metal20command_buffer_errorEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 !dbg !573 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, metadata !577, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !578, metadata !DIExpression()), !dbg !1454
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*, !dbg !1455
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !1456
  %4 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1457
  ret i8* %4, !dbg !1458
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal27new_compute_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 !dbg !580 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, metadata !587, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* (i8*, i8*)* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* (i8*, i8*)*), metadata !588, metadata !DIExpression()), !dbg !1459
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*, !dbg !1460
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1461
  %4 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1462
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %4, !dbg !1463
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal24new_blit_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 !dbg !593 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, metadata !599, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* (i8*, i8*)* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* (i8*, i8*)*), metadata !600, metadata !DIExpression()), !dbg !1464
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*, !dbg !1465
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1466
  %4 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1467
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %4, !dbg !1468
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* @_ZN6Halide7Runtime8Internal5Metal40new_compute_pipeline_state_with_functionEP19halide_metal_devicePNS2_12mtl_functionE(%struct.halide_metal_device* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %1) local_unnamed_addr #0 !dbg !605 {
  %3 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %0, metadata !613, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %1, metadata !614, metadata !DIExpression()), !dbg !1469
  %4 = bitcast i8** %3 to i8*, !dbg !1470
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10, !dbg !1470
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* (i8*, i8*, i8*, i8**)* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* (i8*, i8*, i8*, i8**)*), metadata !616, metadata !DIExpression()), !dbg !1469
  %5 = bitcast %struct.halide_metal_device* %0 to i8*, !dbg !1471
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1472
  %7 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %1 to i8*, !dbg !1473
  call void @llvm.dbg.value(metadata i8** %3, metadata !615, metadata !DIExpression(DW_OP_deref)), !dbg !1469
  %8 = call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* (i8*, i8*, i8*, i8**)*)(i8* %5, i8* %6, i8* %7, i8** nonnull %3) #8, !dbg !1474
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %8, metadata !617, metadata !DIExpression()), !dbg !1469
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %8, null, !dbg !1475
  br i1 %9, label %10, label %12, !dbg !1477

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8, !dbg !1478, !tbaa !1480
  call void @llvm.dbg.value(metadata i8* %11, metadata !615, metadata !DIExpression()), !dbg !1469
  call void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %11) #9, !dbg !1481
  br label %12, !dbg !1482

12:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10, !dbg !1483
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %8, !dbg !1484
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal5Metal37get_max_total_threads_per_threadgroupEPNS2_26mtl_compute_pipeline_stateE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %0) local_unnamed_addr #0 !dbg !623 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %0, metadata !627, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata i64 (i8*, i8*)* bitcast (void ()* @objc_msgSend to i64 (i8*, i8*)*), metadata !628, metadata !DIExpression()), !dbg !1485
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %0 to i8*, !dbg !1486
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !1487
  %4 = tail call i64 bitcast (void ()* @objc_msgSend to i64 (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1488
  ret i64 %4, !dbg !1489
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal26set_compute_pipeline_stateEPNS2_27mtl_compute_command_encoderEPNS2_26mtl_compute_pipeline_stateE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %1) local_unnamed_addr #0 !dbg !633 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, metadata !637, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %1, metadata !638, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata void (i8*, i8*, i8*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*)*), metadata !639, metadata !DIExpression()), !dbg !1490
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*, !dbg !1491
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !1492
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %1 to i8*, !dbg !1493
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*)*)(i8* %3, i8* %4, i8* %5) #8, !dbg !1494
  ret void, !dbg !1495
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0) local_unnamed_addr #0 !dbg !641 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, metadata !645, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata void (i8*, i8*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*)*), metadata !646, metadata !DIExpression()), !dbg !1496
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*, !dbg !1497
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1498
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1499
  ret void, !dbg !1500
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal16did_modify_rangeEPNS2_10mtl_bufferENS2_7NSRangeE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0, %"struct.Halide::Runtime::Internal::Metal::NSRange"* byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 8 %1) local_unnamed_addr #0 !dbg !651 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Metal::NSRange", align 8
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0, metadata !659, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Metal::NSRange"* %1, metadata !660, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::NSRange"*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::NSRange"*)*), metadata !661, metadata !DIExpression()), !dbg !1501
  %4 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0 to i8*, !dbg !1503
  %5 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !1504
  %6 = bitcast %"struct.Halide::Runtime::Internal::Metal::NSRange"* %3 to i8*, !dbg !1505
  %7 = bitcast %"struct.Halide::Runtime::Internal::Metal::NSRange"* %1 to i8*, !dbg !1505
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %6, i8* nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !dbg !1505, !tbaa.struct !1506
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::NSRange"*)*)(i8* %4, i8* %5, %"struct.Halide::Runtime::Internal::Metal::NSRange"* nonnull byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 8 %3) #8, !dbg !1509
  ret void, !dbg !1510
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal20synchronize_resourceEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1) local_unnamed_addr #0 !dbg !666 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, metadata !670, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, metadata !671, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*)*), metadata !672, metadata !DIExpression()), !dbg !1511
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0 to i8*, !dbg !1512
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !1513
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*)*)(i8* %3, i8* %4, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1) #8, !dbg !1514
  ret void, !dbg !1515
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0) local_unnamed_addr #0 !dbg !677 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0, metadata !681, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i1 (i8*, i8*, i8*)* bitcast (void ()* @objc_msgSend to i1 (i8*, i8*, i8*)*), metadata !682, metadata !DIExpression()), !dbg !1516
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !1517
  call void @llvm.dbg.value(metadata i8* %2, metadata !683, metadata !DIExpression()), !dbg !1516
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0 to i8*, !dbg !1518
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !1519
  %5 = tail call zeroext i1 bitcast (void ()* @objc_msgSend to i1 (i8*, i8*, i8*)*)(i8* %3, i8* %4, i8* %2) #8, !dbg !1520
  br i1 %5, label %6, label %9, !dbg !1521

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* bitcast (void ()* @objc_msgSend to i32 (i8*, i8*)*), metadata !684, metadata !DIExpression()), !dbg !1522
  %7 = tail call i32 bitcast (void ()* @objc_msgSend to i32 (i8*, i8*)*)(i8* %3, i8* %2) #8, !dbg !1523
  call void @llvm.dbg.value(metadata i32 %7, metadata !691, metadata !DIExpression()), !dbg !1522
  %8 = icmp eq i32 %7, 1, !dbg !1524
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi i1 [ %8, %6 ], [ false, %1 ], !dbg !1516
  ret i1 %10, !dbg !1525
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal24buffer_to_buffer_1d_copyEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferEmS6_mm(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, i64 %2, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %3, i64 %4, i64 %5) local_unnamed_addr #0 !dbg !696 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, metadata !700, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, metadata !701, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %2, metadata !702, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %3, metadata !703, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %4, metadata !704, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %5, metadata !705, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata void (i8*, i8*, i8*, i64, i8*, i64, i64)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*, i64, i8*, i64, i64)*), metadata !706, metadata !DIExpression()), !dbg !1526
  %7 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0 to i8*, !dbg !1527
  %8 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.26, i64 0, i64 0)) #8, !dbg !1528
  %9 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1 to i8*, !dbg !1529
  %10 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %3 to i8*, !dbg !1530
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*, i64, i8*, i64, i64)*)(i8* %7, i8* %8, i8* %9, i64 %2, i8* %10, i64 %4, i64 %5) #8, !dbg !1531
  ret void, !dbg !1532
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_24mtl_blit_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0) local_unnamed_addr #0 !dbg !711 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, metadata !715, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata void (i8*, i8*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*)*), metadata !716, metadata !DIExpression()), !dbg !1533
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0 to i8*, !dbg !1534
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1535
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1536
  ret void, !dbg !1537
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal5Metal25buffer_supports_set_bytesEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0) local_unnamed_addr #0 !dbg !718 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, metadata !722, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i1 (i8*, i8*, i8*)* bitcast (void ()* @objc_msgSend to i1 (i8*, i8*, i8*)*), metadata !723, metadata !DIExpression()), !dbg !1538
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !1539
  call void @llvm.dbg.value(metadata i8* %2, metadata !724, metadata !DIExpression()), !dbg !1538
  %3 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*, !dbg !1540
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !1541
  %5 = tail call zeroext i1 bitcast (void ()* @objc_msgSend to i1 (i8*, i8*, i8*)*)(i8* %3, i8* %4, i8* %2) #8, !dbg !1542
  ret i1 %5, !dbg !1543
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::Metal::mtl_library"* @_ZN6Halide7Runtime8Internal5Metal23new_library_with_sourceEP19halide_metal_devicePKcm(%struct.halide_metal_device* %0, i8* %1, i64 %2) #0 !dbg !726 {
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %0, metadata !730, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %1, metadata !731, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %2, metadata !732, metadata !DIExpression()), !dbg !1544
  %5 = bitcast i8** %4 to i8*, !dbg !1545
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10, !dbg !1545
  %6 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %1, i64 %2) #9, !dbg !1546
  call void @llvm.dbg.value(metadata i8* %6, metadata !734, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !735, metadata !DIExpression()), !dbg !1544
  %7 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !1547
  %8 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1548
  %9 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %7, i8* %8) #8, !dbg !1549
  call void @llvm.dbg.value(metadata i8* %9, metadata !736, metadata !DIExpression()), !dbg !1544
  %10 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1550
  %11 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %9, i8* %10) #8, !dbg !1551
  call void @llvm.dbg.value(metadata i8* %11, metadata !736, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata void (i8*, i8*, i8)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8)*), metadata !737, metadata !DIExpression()), !dbg !1544
  %12 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !1552
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8)*)(i8* %11, i8* %12, i8 zeroext 0) #8, !dbg !1553
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (i8*, i8*, i8*, i8*, i8**)* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (i8*, i8*, i8*, i8*, i8**)*), metadata !742, metadata !DIExpression()), !dbg !1544
  %13 = bitcast %struct.halide_metal_device* %0 to i8*, !dbg !1554
  %14 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0)) #8, !dbg !1555
  call void @llvm.dbg.value(metadata i8** %4, metadata !733, metadata !DIExpression(DW_OP_deref)), !dbg !1544
  %15 = call %"struct.Halide::Runtime::Internal::Metal::mtl_library"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (i8*, i8*, i8*, i8*, i8**)*)(i8* %13, i8* %14, i8* %6, i8* %11, i8** nonnull %4) #8, !dbg !1556
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %15, metadata !747, metadata !DIExpression()), !dbg !1544
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %11) #9, !dbg !1557
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %6) #9, !dbg !1558
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %15, null, !dbg !1559
  br i1 %16, label %17, label %19, !dbg !1561

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8, !dbg !1562, !tbaa !1480
  call void @llvm.dbg.value(metadata i8* %18, metadata !733, metadata !DIExpression()), !dbg !1544
  call void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %18) #9, !dbg !1564
  br label %19, !dbg !1565

19:                                               ; preds = %17, %3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10, !dbg !1566
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %15, !dbg !1567
}

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::Metal::mtl_function"* @_ZN6Halide7Runtime8Internal5Metal22new_function_with_nameEPNS2_11mtl_libraryEPKcm(%"struct.Halide::Runtime::Internal::Metal::mtl_library"* %0, i8* %1, i64 %2) local_unnamed_addr #0 !dbg !749 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %0, metadata !753, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %1, metadata !754, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %2, metadata !755, metadata !DIExpression()), !dbg !1568
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %1, i64 %2) #9, !dbg !1569
  call void @llvm.dbg.value(metadata i8* %4, metadata !756, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_function"* (i8*, i8*, i8*)* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_function"* (i8*, i8*, i8*)*), metadata !757, metadata !DIExpression()), !dbg !1568
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %0 to i8*, !dbg !1570
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !1571
  %7 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_function"* bitcast (void ()* @objc_msgSend to %"struct.Halide::Runtime::Internal::Metal::mtl_function"* (i8*, i8*, i8*)*)(i8* %5, i8* %6, i8* %4) #8, !dbg !1572
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %7, metadata !758, metadata !DIExpression()), !dbg !1568
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #9, !dbg !1573
  ret %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %7, !dbg !1574
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal16set_input_bufferEPNS2_27mtl_compute_command_encoderEPNS2_10mtl_bufferEyj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, i64 %2, i32 %3) local_unnamed_addr #0 !dbg !763 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, metadata !767, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, metadata !768, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i64 %2, metadata !769, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %3, metadata !770, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, i64, i64)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, i64, i64)*), metadata !771, metadata !DIExpression()), !dbg !1575
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*, !dbg !1576
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !1577
  %7 = zext i32 %3 to i64, !dbg !1578
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, i64, i64)*)(i8* %5, i8* %6, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %1, i64 %2, i64 %7) #8, !dbg !1579
  ret void, !dbg !1580
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal27set_input_buffer_from_bytesEPNS2_27mtl_compute_command_encoderEPhjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, i8* %1, i32 %2, i32 %3) local_unnamed_addr #0 !dbg !776 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, metadata !780, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8* %1, metadata !781, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i32 %2, metadata !782, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i32 %3, metadata !783, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata void (i8*, i8*, i8*, i64, i64)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*, i64, i64)*), metadata !784, metadata !DIExpression()), !dbg !1581
  %5 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*, !dbg !1582
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !1583
  %7 = zext i32 %2 to i64, !dbg !1584
  %8 = zext i32 %3 to i64, !dbg !1585
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i8*, i64, i64)*)(i8* %5, i8* %6, i8* %1, i64 %7, i64 %8) #8, !dbg !1586
  ret void, !dbg !1587
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal29set_threadgroup_memory_lengthEPNS2_27mtl_compute_command_encoderEjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, i32 %1, i32 %2) local_unnamed_addr #0 !dbg !789 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, metadata !793, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i32 %1, metadata !794, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i32 %2, metadata !795, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata void (i8*, i8*, i64, i64)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, i64, i64)*), metadata !796, metadata !DIExpression()), !dbg !1588
  %4 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*, !dbg !1589
  %5 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0)) #8, !dbg !1590
  %6 = zext i32 %1 to i64, !dbg !1591
  %7 = zext i32 %2 to i64, !dbg !1592
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i64, i64)*)(i8* %4, i8* %5, i64 %6, i64 %7) #8, !dbg !1593
  ret void, !dbg !1594
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 !dbg !801 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, metadata !805, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata void (i8*, i8*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*)*), metadata !806, metadata !DIExpression()), !dbg !1595
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*, !dbg !1596
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !1597
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1598
  ret void, !dbg !1599
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal20wait_until_completedEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0) local_unnamed_addr #0 !dbg !808 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0, metadata !810, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata void (i8*, i8*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*)*), metadata !811, metadata !DIExpression()), !dbg !1600
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %0 to i8*, !dbg !1601
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0)) #8, !dbg !1602
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1603
  ret void, !dbg !1604
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0) local_unnamed_addr #0 !dbg !813 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0, metadata !817, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !818, metadata !DIExpression()), !dbg !1605
  %2 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %0 to i8*, !dbg !1606
  %3 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0)) #8, !dbg !1607
  %4 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %2, i8* %3) #8, !dbg !1608
  ret i8* %4, !dbg !1609
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal5Metal20nsarray_first_objectEPv(i8* %0) local_unnamed_addr #0 !dbg !823 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !827, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !828, metadata !DIExpression()), !dbg !1610
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !1611
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #8, !dbg !1612
  ret i8* %3, !dbg !1613
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_metal_device* @_ZN6Halide7Runtime8Internal5Metal22get_default_mtl_deviceEv() local_unnamed_addr #0 !dbg !830 {
  %1 = tail call i8* @MTLCreateSystemDefaultDevice() #8, !dbg !1614
  %2 = bitcast i8* %1 to %struct.halide_metal_device*, !dbg !1615
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %2, metadata !834, metadata !DIExpression()), !dbg !1616
  %3 = icmp eq i8* %1, null, !dbg !1617
  br i1 %3, label %4, label %14, !dbg !1618

4:                                                ; preds = %0
  %5 = tail call i8* @dlsym(i8* nonnull inttoptr (i64 -2 to i8*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !1619
  call void @llvm.dbg.value(metadata i8* %5, metadata !835, metadata !DIExpression()), !dbg !1620
  %6 = icmp eq i8* %5, null, !dbg !1621
  br i1 %6, label %14, label %7, !dbg !1622

7:                                                ; preds = %4
  %8 = bitcast i8* %5 to i8* ()*, !dbg !1623
  call void @llvm.dbg.value(metadata i8* ()* %8, metadata !838, metadata !DIExpression()), !dbg !1624
  %9 = tail call i8* %8() #8, !dbg !1625
  call void @llvm.dbg.value(metadata i8* %9, metadata !841, metadata !DIExpression()), !dbg !1624
  %10 = icmp eq i8* %9, null, !dbg !1626
  br i1 %10, label %14, label %11, !dbg !1628

11:                                               ; preds = %7
  %12 = tail call i8* @_ZN6Halide7Runtime8Internal5Metal20nsarray_first_objectEPv(i8* nonnull %9) #9, !dbg !1629
  %13 = bitcast i8* %12 to %struct.halide_metal_device*, !dbg !1631
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %13, metadata !834, metadata !DIExpression()), !dbg !1616
  br label %14, !dbg !1632

14:                                               ; preds = %4, %11, %7, %0
  %15 = phi %struct.halide_metal_device* [ %2, %0 ], [ null, %4 ], [ %13, %11 ], [ null, %7 ], !dbg !1616
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %15, metadata !834, metadata !DIExpression()), !dbg !1616
  ret %struct.halide_metal_device* %15, !dbg !1633
}

declare !dbg !1634 dso_local i8* @MTLCreateSystemDefaultDevice() local_unnamed_addr #3

declare !dbg !1637 dso_local i8* @dlsym(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_acquire_context(i8* %0, %struct.halide_metal_device** %1, %struct.halide_metal_command_queue** %2, i1 zeroext %3) local_unnamed_addr #4 !dbg !1640 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1646, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata %struct.halide_metal_device** %1, metadata !1647, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata %struct.halide_metal_command_queue** %2, metadata !1648, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i1 %3, metadata !1649, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1650
  br label %5, !dbg !1651

5:                                                ; preds = %5, %4
  %6 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal5Metal11thread_lockE, i8 1 acquire, !dbg !1652
  %7 = icmp eq i8 %6, 0, !dbg !1652
  br i1 %7, label %8, label %5, !dbg !1651, !llvm.loop !1653

8:                                                ; preds = %5
  %9 = tail call i32 @halide_start_clock(i8* %0) #8, !dbg !1655
  %10 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 8, !dbg !1656, !tbaa !1480
  %11 = icmp eq %struct.halide_metal_device* %10, null, !dbg !1658
  %12 = and i1 %11, %3, !dbg !1659
  br i1 %12, label %13, label %75, !dbg !1659

13:                                               ; preds = %8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !1660
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !1660
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !1660
  %14 = tail call i8* @malloc(i64 1024) #8, !dbg !1663
  %15 = icmp eq i8* %14, null, !dbg !1664
  br i1 %15, label %16, label %18, !dbg !1665

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1666
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1666
  %17 = tail call i8* @halide_string_to_string(i8* %14, i8* null, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !1668
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !1669
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !1671
  br label %26, !dbg !1672

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, i8* %14, i64 1023, !dbg !1673
  store i8 0, i8* %19, align 1, !dbg !1674, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1666
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1666
  %20 = tail call i8* @halide_string_to_string(i8* nonnull %14, i8* nonnull %19, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !1668
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !1669
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !1675
  %21 = ptrtoint i8* %20 to i64, !dbg !1677
  %22 = ptrtoint i8* %14 to i64, !dbg !1677
  %23 = add i64 %21, 1, !dbg !1677
  %24 = sub i64 %23, %22, !dbg !1678
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %14, i64 %24) #8, !dbg !1679
  tail call void @halide_print(i8* %0, i8* nonnull %14) #8, !dbg !1680
  br label %26

26:                                               ; preds = %18, %16
  tail call void @free(i8* %14) #8, !dbg !1681
  %27 = tail call %struct.halide_metal_device* @_ZN6Halide7Runtime8Internal5Metal22get_default_mtl_deviceEv() #9, !dbg !1682
  store %struct.halide_metal_device* %27, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 8, !dbg !1683, !tbaa !1480
  %28 = icmp eq %struct.halide_metal_device* %27, null, !dbg !1684
  %29 = tail call i8* @malloc(i64 1024) #8, !dbg !1686
  %30 = icmp eq i8* %29, null, !dbg !1686
  br i1 %28, label %31, label %43, !dbg !1687

31:                                               ; preds = %26
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1688, metadata !DIExpression()) #10, !dbg !1694
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()) #10, !dbg !1694
  call void @llvm.dbg.value(metadata i8* null, metadata !1692, metadata !DIExpression()) #10, !dbg !1694
  br i1 %30, label %32, label %34, !dbg !1697

32:                                               ; preds = %31
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !1703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !1703
  %33 = tail call i8* @halide_string_to_string(i8* %29, i8* null, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i64 0, i64 0)) #8, !dbg !1705
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !1711
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !1713
  br label %42, !dbg !1717

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, i8* %29, i64 1023, !dbg !1718
  store i8 0, i8* %35, align 1, !dbg !1721, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !1703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !1703
  %36 = tail call i8* @halide_string_to_string(i8* nonnull %29, i8* nonnull %35, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i64 0, i64 0)) #8, !dbg !1705
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !1711
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1722, metadata !DIExpression()) #10, !dbg !1725
  %37 = ptrtoint i8* %36 to i64, !dbg !1728
  %38 = ptrtoint i8* %29 to i64, !dbg !1728
  %39 = add i64 %37, 1, !dbg !1728
  %40 = sub i64 %39, %38, !dbg !1729
  %41 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %29, i64 %40) #8, !dbg !1730
  tail call void @halide_error(i8* %0, i8* nonnull %29) #8, !dbg !1731
  br label %42

42:                                               ; preds = %34, %32
  tail call void @free(i8* %29) #8, !dbg !1734
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal5Metal11thread_lockE release, align 1, !dbg !1737
  br label %85, !dbg !1738

43:                                               ; preds = %26
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !1739
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !1739
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !1739
  br i1 %30, label %44, label %46, !dbg !1741

44:                                               ; preds = %43
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1742
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1742
  %45 = tail call i8* @halide_string_to_string(i8* %29, i8* null, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !1744
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !1745
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !1747
  br label %54, !dbg !1748

46:                                               ; preds = %43
  %47 = getelementptr inbounds i8, i8* %29, i64 1023, !dbg !1749
  store i8 0, i8* %47, align 1, !dbg !1750, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1742
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1742
  %48 = tail call i8* @halide_string_to_string(i8* nonnull %29, i8* nonnull %47, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !1744
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !1745
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !1751
  %49 = ptrtoint i8* %48 to i64, !dbg !1753
  %50 = ptrtoint i8* %29 to i64, !dbg !1753
  %51 = add i64 %49, 1, !dbg !1753
  %52 = sub i64 %51, %50, !dbg !1754
  %53 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %29, i64 %52) #8, !dbg !1755
  tail call void @halide_print(i8* %0, i8* nonnull %29) #8, !dbg !1756
  br label %54

54:                                               ; preds = %46, %44
  tail call void @free(i8* %29) #8, !dbg !1757
  %55 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 8, !dbg !1758, !tbaa !1480
  %56 = tail call %struct.halide_metal_command_queue* @_ZN6Halide7Runtime8Internal5Metal17new_command_queueEP19halide_metal_device(%struct.halide_metal_device* %55) #9, !dbg !1759
  store %struct.halide_metal_command_queue* %56, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 8, !dbg !1760, !tbaa !1480
  %57 = icmp eq %struct.halide_metal_command_queue* %56, null, !dbg !1761
  br i1 %57, label %60, label %58, !dbg !1763

58:                                               ; preds = %54
  %59 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 8, !dbg !1764, !tbaa !1480
  br label %82, !dbg !1764

60:                                               ; preds = %54
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1688, metadata !DIExpression()) #10, !dbg !1767
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()) #10, !dbg !1767
  call void @llvm.dbg.value(metadata i8* null, metadata !1692, metadata !DIExpression()) #10, !dbg !1767
  %61 = tail call i8* @malloc(i64 1024) #8, !dbg !1770
  %62 = icmp eq i8* %61, null, !dbg !1774
  br i1 %62, label %63, label %65, !dbg !1775

63:                                               ; preds = %60
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !1776
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !1776
  %64 = tail call i8* @halide_string_to_string(i8* %61, i8* null, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0)) #8, !dbg !1778
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !1779
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !1781
  br label %73, !dbg !1782

65:                                               ; preds = %60
  %66 = getelementptr inbounds i8, i8* %61, i64 1023, !dbg !1783
  store i8 0, i8* %66, align 1, !dbg !1784, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !1776
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !1776
  %67 = tail call i8* @halide_string_to_string(i8* nonnull %61, i8* nonnull %66, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0)) #8, !dbg !1778
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !1779
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1722, metadata !DIExpression()) #10, !dbg !1785
  %68 = ptrtoint i8* %67 to i64, !dbg !1787
  %69 = ptrtoint i8* %61 to i64, !dbg !1787
  %70 = add i64 %68, 1, !dbg !1787
  %71 = sub i64 %70, %69, !dbg !1788
  %72 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %61, i64 %71) #8, !dbg !1789
  tail call void @halide_error(i8* %0, i8* nonnull %61) #8, !dbg !1790
  br label %73

73:                                               ; preds = %65, %63
  tail call void @free(i8* %61) #8, !dbg !1791
  %74 = load i8*, i8** bitcast (%struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE to i8**), align 8, !dbg !1792, !tbaa !1480
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %74) #9, !dbg !1793
  store %struct.halide_metal_device* null, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 8, !dbg !1794, !tbaa !1480
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal5Metal11thread_lockE release, align 1, !dbg !1795
  br label %85, !dbg !1796

75:                                               ; preds = %8
  %76 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 8, !dbg !1764
  %77 = icmp eq %struct.halide_metal_device* %10, null, !dbg !1764
  %78 = icmp ne %struct.halide_metal_command_queue* %76, null, !dbg !1764
  %79 = or i1 %77, %78, !dbg !1764
  br i1 %79, label %82, label %80, !dbg !1764

80:                                               ; preds = %75
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.44, i64 0, i64 0)) #8, !dbg !1797
  tail call void @abort() #8, !dbg !1797
  %81 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 8, !dbg !1799, !tbaa !1480
  br label %82, !dbg !1797

82:                                               ; preds = %58, %75, %80
  %83 = phi %struct.halide_metal_device* [ %10, %75 ], [ %81, %80 ], [ %59, %58 ], !dbg !1799
  store %struct.halide_metal_device* %83, %struct.halide_metal_device** %1, align 8, !dbg !1800, !tbaa !1480
  %84 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 8, !dbg !1801, !tbaa !1480
  store %struct.halide_metal_command_queue* %84, %struct.halide_metal_command_queue** %2, align 8, !dbg !1802, !tbaa !1480
  br label %85, !dbg !1803

85:                                               ; preds = %82, %73, %42
  %86 = phi i32 [ -1, %42 ], [ -1, %73 ], [ 0, %82 ], !dbg !1650
  ret i32 %86, !dbg !1804
}

declare !dbg !1805 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !1808 dso_local void @abort() local_unnamed_addr #3

declare !dbg !1809 extern_weak dso_local i32 @halide_start_clock(i8*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_metal_release_context(i8* %0) local_unnamed_addr #6 !dbg !1810 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1812, metadata !DIExpression()), !dbg !1813
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal5Metal11thread_lockE release, align 1, !dbg !1814
  ret i32 0, !dbg !1815
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %0, i8* %1, i1 zeroext %2) local_unnamed_addr #0 align 2 !dbg !1816 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, metadata !1818, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8* %1, metadata !1820, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i1 %2, metadata !1821, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1822
  %4 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i64 0, i32 1, !dbg !1823
  store i8* %1, i8** %4, align 8, !dbg !1824, !tbaa !1825
  %5 = tail call i8* @_ZN6Halide7Runtime8Internal23create_autorelease_poolEv() #9, !dbg !1827
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i64 0, i32 0, !dbg !1828
  store i8* %5, i8** %6, align 8, !dbg !1829, !tbaa !1830
  %7 = load i8*, i8** %4, align 8, !dbg !1831, !tbaa !1825
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i64 0, i32 2, !dbg !1832
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i64 0, i32 3, !dbg !1833
  %10 = tail call i32 @halide_metal_acquire_context(i8* %7, %struct.halide_metal_device** nonnull %8, %struct.halide_metal_command_queue** nonnull %9, i1 zeroext %2) #9, !dbg !1834
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i64 0, i32 4, !dbg !1835
  store i32 %10, i32* %11, align 8, !dbg !1836, !tbaa !1837
  ret void, !dbg !1838
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %0) local_unnamed_addr #0 align 2 !dbg !1839 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, metadata !1841, metadata !DIExpression()), !dbg !1842
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i64 0, i32 1, !dbg !1843
  %3 = load i8*, i8** %2, align 8, !dbg !1843, !tbaa !1825
  %4 = tail call i32 @halide_metal_release_context(i8* %3) #9, !dbg !1844
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %0, i64 0, i32 0, !dbg !1845
  %6 = load i8*, i8** %5, align 8, !dbg !1845, !tbaa !1830
  tail call void @_ZN6Halide7Runtime8Internal22drain_autorelease_poolEPv(i8* %6) #9, !dbg !1846
  ret void, !dbg !1847
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal39command_buffer_completed_handler_invokeEPNS2_46command_buffer_completed_handler_block_literalEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %1) #0 !dbg !1848 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* %0, metadata !1850, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %1, metadata !1851, metadata !DIExpression()), !dbg !1853
  %3 = tail call i8* @_ZN6Halide7Runtime8Internal5Metal20command_buffer_errorEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %1) #9, !dbg !1854
  call void @llvm.dbg.value(metadata i8* %3, metadata !1852, metadata !DIExpression()), !dbg !1853
  %4 = icmp eq i8* %3, null, !dbg !1855
  br i1 %4, label %6, label %5, !dbg !1857

5:                                                ; preds = %2
  tail call void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* nonnull %3) #9, !dbg !1858
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* nonnull %3) #9, !dbg !1860
  br label %6, !dbg !1861

6:                                                ; preds = %5, %2
  ret void, !dbg !1862
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !1863 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1867, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1868, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !1878
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !1878
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !1878
  %4 = tail call i8* @malloc(i64 1024) #8, !dbg !1880
  %5 = icmp eq i8* %4, null, !dbg !1881
  br i1 %5, label %8, label %6, !dbg !1882

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, i8* %4, i64 1023, !dbg !1883
  store i8 0, i8* %7, align 1, !dbg !1884, !tbaa !1134
  br label %8, !dbg !1885

8:                                                ; preds = %2, %6
  %9 = phi i8* [ %7, %6 ], [ null, %2 ], !dbg !1886
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1887
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1887
  %10 = tail call i8* @halide_string_to_string(i8* %4, i8* %9, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !1889
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1890, metadata !DIExpression()) #10, !dbg !1894
  call void @llvm.dbg.value(metadata i8* %0, metadata !1893, metadata !DIExpression()) #10, !dbg !1894
  %11 = tail call i8* @halide_pointer_to_string(i8* %10, i8* %9, i8* %0) #8, !dbg !1896
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1897
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1897
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %9, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !1899
  %13 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !1900
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1890, metadata !DIExpression()) #10, !dbg !1901
  call void @llvm.dbg.value(metadata i8* %13, metadata !1893, metadata !DIExpression()) #10, !dbg !1901
  %14 = tail call i8* @halide_pointer_to_string(i8* %12, i8* %9, i8* %13) #8, !dbg !1903
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !1904
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !1904
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %9, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #8, !dbg !1906
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !1907
  br i1 %5, label %16, label %17, !dbg !1909

16:                                               ; preds = %8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !1910
  br label %23, !dbg !1911

17:                                               ; preds = %8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !1912
  %18 = ptrtoint i8* %15 to i64, !dbg !1914
  %19 = ptrtoint i8* %4 to i64, !dbg !1914
  %20 = add i64 %18, 1, !dbg !1914
  %21 = sub i64 %20, %19, !dbg !1915
  %22 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %21) #8, !dbg !1916
  tail call void @halide_print(i8* %0, i8* nonnull %4) #8, !dbg !1917
  br label %23

23:                                               ; preds = %16, %17
  call void @free(i8* %4) #8, !dbg !1918
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1919, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1924, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 0, metadata !1927, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i32 0, metadata !1928, metadata !DIExpression()), !dbg !1932
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !1933
  %25 = load i32, i32* %24, align 4, !dbg !1933, !tbaa !1233
  %26 = icmp sgt i32 %25, 0, !dbg !1935
  br i1 %26, label %30, label %27, !dbg !1936

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1937
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !1939
  %29 = load i8, i8* %28, align 1, !dbg !1939, !tbaa !1214
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1940, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 0, metadata !1943, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i32 0, metadata !1944, metadata !DIExpression()), !dbg !1948
  br label %73, !dbg !1949

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %32 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %31, align 8, !tbaa !1236
  %33 = zext i32 %25 to i64, !dbg !1935
  br label %34, !dbg !1936

34:                                               ; preds = %48, %30
  %35 = phi i64 [ 0, %30 ], [ %50, %48 ]
  %36 = phi i64 [ 0, %30 ], [ %49, %48 ]
  call void @llvm.dbg.value(metadata i64 %35, metadata !1928, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %36, metadata !1927, metadata !DIExpression()), !dbg !1930
  %37 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %32, i64 %35, i32 2, !dbg !1950
  %38 = load i32, i32* %37, align 4, !dbg !1950, !tbaa !1244
  %39 = icmp sgt i32 %38, 0, !dbg !1953
  br i1 %39, label %40, label %48, !dbg !1954

40:                                               ; preds = %34
  %41 = zext i32 %38 to i64, !dbg !1955
  %42 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %32, i64 %35, i32 1, !dbg !1957
  %43 = load i32, i32* %42, align 4, !dbg !1957, !tbaa !1309
  %44 = add nsw i32 %43, -1, !dbg !1958
  %45 = sext i32 %44 to i64, !dbg !1959
  %46 = mul nsw i64 %45, %41, !dbg !1960
  %47 = add nsw i64 %46, %36, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %47, metadata !1927, metadata !DIExpression()), !dbg !1930
  br label %48, !dbg !1962

48:                                               ; preds = %40, %34
  %49 = phi i64 [ %47, %40 ], [ %36, %34 ], !dbg !1930
  call void @llvm.dbg.value(metadata i64 %49, metadata !1927, metadata !DIExpression()), !dbg !1930
  %50 = add nuw nsw i64 %35, 1, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %50, metadata !1928, metadata !DIExpression()), !dbg !1932
  %51 = icmp eq i64 %50, %33, !dbg !1935
  br i1 %51, label %52, label %34, !dbg !1936, !llvm.loop !1964

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i64 %49, metadata !1927, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1930
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1937
  %53 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !1939
  %54 = load i8, i8* %53, align 1, !dbg !1939, !tbaa !1214
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1940, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 0, metadata !1943, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i32 0, metadata !1944, metadata !DIExpression()), !dbg !1948
  br label %55, !dbg !1949

55:                                               ; preds = %69, %52
  %56 = phi i64 [ 0, %52 ], [ %71, %69 ]
  %57 = phi i64 [ 0, %52 ], [ %70, %69 ]
  call void @llvm.dbg.value(metadata i64 %56, metadata !1944, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %57, metadata !1943, metadata !DIExpression()), !dbg !1946
  %58 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %32, i64 %56, i32 2, !dbg !1966
  %59 = load i32, i32* %58, align 4, !dbg !1966, !tbaa !1244
  %60 = icmp slt i32 %59, 0, !dbg !1970
  br i1 %60, label %61, label %69, !dbg !1971

61:                                               ; preds = %55
  %62 = sext i32 %59 to i64, !dbg !1972
  %63 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %32, i64 %56, i32 1, !dbg !1974
  %64 = load i32, i32* %63, align 4, !dbg !1974, !tbaa !1309
  %65 = add nsw i32 %64, -1, !dbg !1975
  %66 = sext i32 %65 to i64, !dbg !1976
  %67 = mul nsw i64 %66, %62, !dbg !1977
  %68 = add nsw i64 %67, %57, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %68, metadata !1943, metadata !DIExpression()), !dbg !1946
  br label %69, !dbg !1979

69:                                               ; preds = %61, %55
  %70 = phi i64 [ %68, %61 ], [ %57, %55 ], !dbg !1946
  call void @llvm.dbg.value(metadata i64 %70, metadata !1943, metadata !DIExpression()), !dbg !1946
  %71 = add nuw nsw i64 %56, 1, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %71, metadata !1944, metadata !DIExpression()), !dbg !1948
  %72 = icmp eq i64 %71, %33, !dbg !1981
  br i1 %72, label %73, label %55, !dbg !1949, !llvm.loop !1982

73:                                               ; preds = %69, %27
  %74 = phi i8 [ %29, %27 ], [ %54, %69 ]
  %75 = phi i64 [ 0, %27 ], [ %49, %69 ]
  %76 = phi i64 [ 0, %27 ], [ %70, %69 ], !dbg !1946
  %77 = zext i8 %74 to i64, !dbg !1939
  %78 = add nuw nsw i64 %77, 7, !dbg !1984
  %79 = lshr i64 %78, 3, !dbg !1985
  %80 = add nsw i64 %75, 1, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %80, metadata !1927, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1987
  %81 = sub i64 %80, %76, !dbg !1989
  %82 = mul i64 %81, %79, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %82, metadata !1869, metadata !DIExpression()), !dbg !1877
  %83 = icmp eq i64 %82, 0, !dbg !1990
  br i1 %83, label %84, label %85, !dbg !1993

84:                                               ; preds = %73
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.48, i64 0, i64 0)) #8, !dbg !1994
  call void @abort() #8, !dbg !1994
  br label %85, !dbg !1994

85:                                               ; preds = %84, %73
  %86 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !1996
  %87 = load i64, i64* %86, align 8, !dbg !1996, !tbaa !1198
  %88 = icmp eq i64 %87, 0, !dbg !1998
  br i1 %88, label %89, label %189, !dbg !1999

89:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i32 0, metadata !1870, metadata !DIExpression()), !dbg !2000
  %90 = load i32, i32* %24, align 4, !dbg !2001, !tbaa !1233
  %91 = icmp sgt i32 %90, 0, !dbg !2003
  br i1 %91, label %92, label %94, !dbg !2004

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  br label %116, !dbg !2004

94:                                               ; preds = %125, %89
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2005
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2005
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2005
  %95 = call i8* @malloc(i64 1024) #8, !dbg !2007
  %96 = icmp eq i8* %95, null, !dbg !2008
  br i1 %96, label %99, label %97, !dbg !2009

97:                                               ; preds = %94
  %98 = getelementptr inbounds i8, i8* %95, i64 1023, !dbg !2010
  store i8 0, i8* %98, align 1, !dbg !2011, !tbaa !1134
  br label %99, !dbg !2012

99:                                               ; preds = %94, %97
  %100 = phi i8* [ %98, %97 ], [ null, %94 ], !dbg !2013
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2014
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2014
  %101 = call i8* @halide_string_to_string(i8* %95, i8* %100, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0)) #8, !dbg !2016
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2017, metadata !DIExpression()) #10, !dbg !2021
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2020, metadata !DIExpression()) #10, !dbg !2021
  %102 = call i8* @halide_buffer_to_string(i8* %101, i8* %100, %struct.halide_buffer_t* nonnull %1) #8, !dbg !2023
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2024
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2024
  %103 = call i8* @halide_string_to_string(i8* %102, i8* %100, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !2026
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2027
  br i1 %96, label %104, label %105, !dbg !2029

104:                                              ; preds = %99
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !2030
  br label %111, !dbg !2031

105:                                              ; preds = %99
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2032
  %106 = ptrtoint i8* %103 to i64, !dbg !2034
  %107 = ptrtoint i8* %95 to i64, !dbg !2034
  %108 = add i64 %106, 1, !dbg !2034
  %109 = sub i64 %108, %107, !dbg !2035
  %110 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %95, i64 %109) #8, !dbg !2036
  call void @halide_print(i8* %0, i8* nonnull %95) #8, !dbg !2037
  br label %111

111:                                              ; preds = %105, %104
  call void @free(i8* %95) #8, !dbg !2038
  %112 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*, !dbg !2039
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #10, !dbg !2039
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !1872, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2041, metadata !DIExpression()) #10, !dbg !2046
  call void @llvm.dbg.value(metadata i8* %0, metadata !2044, metadata !DIExpression()) #10, !dbg !2046
  call void @llvm.dbg.value(metadata i1 true, metadata !2045, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2046
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3, i8* %0, i1 zeroext true) #8, !dbg !2048
  %113 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 4, !dbg !2050
  %114 = load i32, i32* %113, align 8, !dbg !2050, !tbaa !1837
  %115 = icmp eq i32 %114, 0, !dbg !2052
  br i1 %115, label %130, label %187, !dbg !2053

116:                                              ; preds = %92, %125
  %117 = phi i32 [ %90, %92 ], [ %126, %125 ]
  %118 = phi i64 [ 0, %92 ], [ %127, %125 ]
  call void @llvm.dbg.value(metadata i64 %118, metadata !1870, metadata !DIExpression()), !dbg !2000
  %119 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %93, align 8, !dbg !2054, !tbaa !1236
  %120 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %119, i64 %118, i32 2, !dbg !2054
  %121 = load i32, i32* %120, align 4, !dbg !2054, !tbaa !1244
  %122 = icmp sgt i32 %121, -1, !dbg !2054
  br i1 %122, label %125, label %123, !dbg !2058

123:                                              ; preds = %116
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.49, i64 0, i64 0)) #8, !dbg !2059
  call void @abort() #8, !dbg !2059
  %124 = load i32, i32* %24, align 4, !dbg !2001, !tbaa !1233
  br label %125, !dbg !2059

125:                                              ; preds = %116, %123
  %126 = phi i32 [ %117, %116 ], [ %124, %123 ], !dbg !2001
  %127 = add nuw nsw i64 %118, 1, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %127, metadata !1870, metadata !DIExpression()), !dbg !2000
  %128 = sext i32 %126 to i64, !dbg !2003
  %129 = icmp slt i64 %127, %128, !dbg !2003
  br i1 %129, label %116, label %94, !dbg !2004, !llvm.loop !2062

130:                                              ; preds = %111
  %131 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %131, metadata !1873, metadata !DIExpression()), !dbg !1877
  %132 = call i8* @malloc(i64 16) #8, !dbg !2065
  call void @llvm.dbg.value(metadata i8* %132, metadata !1874, metadata !DIExpression()), !dbg !1877
  %133 = icmp eq i8* %132, null, !dbg !2066
  br i1 %133, label %187, label %134, !dbg !2068

134:                                              ; preds = %130
  %135 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 2, !dbg !2069
  %136 = load %struct.halide_metal_device*, %struct.halide_metal_device** %135, align 8, !dbg !2069, !tbaa !2070
  %137 = call %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* @_ZN6Halide7Runtime8Internal5Metal10new_bufferEP19halide_metal_devicem(%struct.halide_metal_device* %136, i64 %82) #9, !dbg !2071
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %137, metadata !1875, metadata !DIExpression()), !dbg !1877
  %138 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %137, null, !dbg !2072
  br i1 %138, label %139, label %157, !dbg !2074

139:                                              ; preds = %134
  call void @free(i8* nonnull %132) #8, !dbg !2075
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1688, metadata !DIExpression()) #10, !dbg !2077
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()) #10, !dbg !2077
  call void @llvm.dbg.value(metadata i8* null, metadata !1692, metadata !DIExpression()) #10, !dbg !2077
  %140 = call i8* @malloc(i64 1024) #8, !dbg !2079
  %141 = icmp eq i8* %140, null, !dbg !2080
  br i1 %141, label %144, label %142, !dbg !2081

142:                                              ; preds = %139
  %143 = getelementptr inbounds i8, i8* %140, i64 1023, !dbg !2082
  store i8 0, i8* %143, align 1, !dbg !2083, !tbaa !1134
  br label %144, !dbg !2084

144:                                              ; preds = %139, %142
  %145 = phi i8* [ %143, %142 ], [ null, %139 ], !dbg !2085
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !2086
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !2086
  %146 = call i8* @halide_string_to_string(i8* %140, i8* %145, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i64 0, i64 0)) #8, !dbg !2088
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !2089, metadata !DIExpression()) #10, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %82, metadata !2092, metadata !DIExpression()) #10, !dbg !2093
  %147 = call i8* @halide_int64_to_string(i8* %146, i8* %145, i64 %82, i32 1) #8, !dbg !2095
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !2096
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !2096
  %148 = call i8* @halide_string_to_string(i8* %147, i8* %145, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0)) #8, !dbg !2098
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !2099
  br i1 %141, label %149, label %150, !dbg !2101

149:                                              ; preds = %144
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !2102
  br label %156, !dbg !2103

150:                                              ; preds = %144
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1722, metadata !DIExpression()) #10, !dbg !2104
  %151 = ptrtoint i8* %148 to i64, !dbg !2106
  %152 = ptrtoint i8* %140 to i64, !dbg !2106
  %153 = add i64 %151, 1, !dbg !2106
  %154 = sub i64 %153, %152, !dbg !2107
  %155 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %140, i64 %154) #8, !dbg !2108
  call void @halide_error(i8* %0, i8* nonnull %140) #8, !dbg !2109
  br label %156

156:                                              ; preds = %150, %149
  call void @free(i8* %140) #8, !dbg !2110
  br label %187, !dbg !2111

157:                                              ; preds = %134
  %158 = bitcast i8* %132 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"**, !dbg !2112
  store %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %137, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %158, align 8, !dbg !2113, !tbaa !2114
  %159 = getelementptr inbounds i8, i8* %132, i64 8, !dbg !2116
  %160 = bitcast i8* %159 to i64*, !dbg !2116
  store i64 0, i64* %160, align 8, !dbg !2117, !tbaa !2118
  %161 = ptrtoint i8* %132 to i64, !dbg !2119
  store i64 %161, i64* %86, align 8, !dbg !2120, !tbaa !1198
  %162 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2121
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, %struct.halide_device_interface_t** %162, align 8, !dbg !2122, !tbaa !2123
  %163 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, i64 0, i32 15), align 8, !dbg !2124, !tbaa !2125
  %164 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %163, i64 0, i32 0, !dbg !2127
  %165 = load void ()*, void ()** %164, align 8, !dbg !2127, !tbaa !2128
  call void %165() #8, !dbg !2130
  %166 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %166, metadata !1876, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2132
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2132
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2132
  %167 = call i8* @malloc(i64 1024) #8, !dbg !2134
  %168 = icmp eq i8* %167, null, !dbg !2135
  br i1 %168, label %171, label %169, !dbg !2136

169:                                              ; preds = %157
  %170 = getelementptr inbounds i8, i8* %167, i64 1023, !dbg !2137
  store i8 0, i8* %170, align 1, !dbg !2138, !tbaa !1134
  br label %171, !dbg !2139

171:                                              ; preds = %157, %169
  %172 = phi i8* [ %170, %169 ], [ null, %157 ], !dbg !2140
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2141
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2141
  %173 = call i8* @halide_string_to_string(i8* %167, i8* %172, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0)) #8, !dbg !2143
  %174 = sub i64 %166, %131, !dbg !2144
  %175 = uitofp i64 %174 to double, !dbg !2145
  %176 = fdiv double %175, 1.000000e+06, !dbg !2146
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2147, metadata !DIExpression()) #10, !dbg !2151
  call void @llvm.dbg.value(metadata double %176, metadata !2150, metadata !DIExpression()) #10, !dbg !2151
  %177 = call i8* @halide_double_to_string(i8* %173, i8* %172, double %176, i32 1) #8, !dbg !2153
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2154
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2154
  %178 = call i8* @halide_string_to_string(i8* %177, i8* %172, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !2156
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2157
  br i1 %168, label %179, label %180, !dbg !2159

179:                                              ; preds = %171
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !2160
  br label %186, !dbg !2161

180:                                              ; preds = %171
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2162
  %181 = ptrtoint i8* %178 to i64, !dbg !2164
  %182 = ptrtoint i8* %167 to i64, !dbg !2164
  %183 = add i64 %181, 1, !dbg !2164
  %184 = sub i64 %183, %182, !dbg !2165
  %185 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %167, i64 %184) #8, !dbg !2166
  call void @halide_print(i8* %0, i8* nonnull %167) #8, !dbg !2167
  br label %186

186:                                              ; preds = %180, %179
  call void @free(i8* %167) #8, !dbg !2168
  br label %187

187:                                              ; preds = %130, %186, %156, %111
  %188 = phi i32 [ %114, %111 ], [ -11, %130 ], [ -1, %156 ], [ 0, %186 ], !dbg !1877
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2169, metadata !DIExpression()) #10, !dbg !2172
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3) #8, !dbg !2174
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #10, !dbg !2176
  br label %189

189:                                              ; preds = %85, %187
  %190 = phi i32 [ %188, %187 ], [ 0, %85 ], !dbg !1877
  ret i32 %190, !dbg !2176
}

declare !dbg !2177 extern_weak dso_local i64 @halide_current_time_ns(i8*) local_unnamed_addr #3

declare !dbg !2180 dso_local i8* @malloc(i64) local_unnamed_addr #3

declare !dbg !2183 dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_device_free(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !2186 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2188, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2189, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2194
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2194
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2194
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !2196
  %4 = icmp eq i8* %3, null, !dbg !2197
  br i1 %4, label %7, label %5, !dbg !2198

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !2199
  store i8 0, i8* %6, align 1, !dbg !2200, !tbaa !1134
  br label %7, !dbg !2201

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !2202
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2203
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2203
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i64 0, i64 0)) #8, !dbg !2205
  %10 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !2206
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1890, metadata !DIExpression()) #10, !dbg !2207
  call void @llvm.dbg.value(metadata i8* %10, metadata !1893, metadata !DIExpression()) #10, !dbg !2207
  %11 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %10) #8, !dbg !2209
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2210
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2210
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %8, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0)) #8, !dbg !2212
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2213
  %14 = load i64, i64* %13, align 8, !dbg !2213, !tbaa !1198
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2214, metadata !DIExpression()) #10, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %14, metadata !2217, metadata !DIExpression()) #10, !dbg !2218
  %15 = tail call i8* @halide_uint64_to_string(i8* %12, i8* %8, i64 %14, i32 1) #8, !dbg !2220
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2221
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2221
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %8, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !2223
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2224
  br i1 %4, label %17, label %18, !dbg !2226

17:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !2227
  br label %24, !dbg !2228

18:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2229
  %19 = ptrtoint i8* %16 to i64, !dbg !2231
  %20 = ptrtoint i8* %3 to i64, !dbg !2231
  %21 = add i64 %19, 1, !dbg !2231
  %22 = sub i64 %21, %20, !dbg !2232
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %22) #8, !dbg !2233
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !2234
  br label %24

24:                                               ; preds = %17, %18
  call void @free(i8* %3) #8, !dbg !2235
  %25 = load i64, i64* %13, align 8, !dbg !2236, !tbaa !1198
  %26 = icmp eq i64 %25, 0, !dbg !2238
  br i1 %26, label %66, label %27, !dbg !2239

27:                                               ; preds = %24
  %28 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %28, metadata !2190, metadata !DIExpression()), !dbg !2193
  %29 = load i64, i64* %13, align 8, !dbg !2241, !tbaa !1198
  %30 = inttoptr i64 %29 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !2242
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::device_handle"* %30, metadata !2191, metadata !DIExpression()), !dbg !2193
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %30, i64 0, i32 1, !dbg !2243
  %32 = load i64, i64* %31, align 8, !dbg !2243, !tbaa !2118
  %33 = icmp eq i64 %32, 0, !dbg !2243
  br i1 %33, label %35, label %34, !dbg !2246

34:                                               ; preds = %27
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.58, i64 0, i64 0)) #8, !dbg !2247
  call void @abort() #8, !dbg !2247
  br label %35, !dbg !2247

35:                                               ; preds = %34, %27
  %36 = inttoptr i64 %29 to i8**, !dbg !2249
  %37 = load i8*, i8** %36, align 8, !dbg !2249, !tbaa !2114
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %37) #9, !dbg !2250
  %38 = inttoptr i64 %29 to i8*, !dbg !2251
  call void @free(i8* %38) #8, !dbg !2252
  store i64 0, i64* %13, align 8, !dbg !2253, !tbaa !1198
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !2254
  %40 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %39, align 8, !dbg !2254, !tbaa !2123
  %41 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %40, i64 0, i32 15, !dbg !2255
  %42 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %41, align 8, !dbg !2255, !tbaa !2125
  %43 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %42, i64 0, i32 1, !dbg !2256
  %44 = load void ()*, void ()** %43, align 8, !dbg !2256, !tbaa !2257
  call void %44() #8, !dbg !2258
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %39, align 8, !dbg !2259, !tbaa !2123
  %45 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %45, metadata !2192, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2261
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2261
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2261
  %46 = call i8* @malloc(i64 1024) #8, !dbg !2263
  %47 = icmp eq i8* %46, null, !dbg !2264
  br i1 %47, label %50, label %48, !dbg !2265

48:                                               ; preds = %35
  %49 = getelementptr inbounds i8, i8* %46, i64 1023, !dbg !2266
  store i8 0, i8* %49, align 1, !dbg !2267, !tbaa !1134
  br label %50, !dbg !2268

50:                                               ; preds = %35, %48
  %51 = phi i8* [ %49, %48 ], [ null, %35 ], !dbg !2269
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2270
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2270
  %52 = call i8* @halide_string_to_string(i8* %46, i8* %51, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0)) #8, !dbg !2272
  %53 = sub i64 %45, %28, !dbg !2273
  %54 = uitofp i64 %53 to double, !dbg !2274
  %55 = fdiv double %54, 1.000000e+06, !dbg !2275
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2147, metadata !DIExpression()) #10, !dbg !2276
  call void @llvm.dbg.value(metadata double %55, metadata !2150, metadata !DIExpression()) #10, !dbg !2276
  %56 = call i8* @halide_double_to_string(i8* %52, i8* %51, double %55, i32 1) #8, !dbg !2278
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2279
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2279
  %57 = call i8* @halide_string_to_string(i8* %56, i8* %51, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !2281
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2282
  br i1 %47, label %58, label %59, !dbg !2284

58:                                               ; preds = %50
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !2285
  br label %65, !dbg !2286

59:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2287
  %60 = ptrtoint i8* %57 to i64, !dbg !2289
  %61 = ptrtoint i8* %46 to i64, !dbg !2289
  %62 = add i64 %60, 1, !dbg !2289
  %63 = sub i64 %62, %61, !dbg !2290
  %64 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %46, i64 %63) #8, !dbg !2291
  call void @halide_print(i8* %0, i8* nonnull %46) #8, !dbg !2292
  br label %65

65:                                               ; preds = %59, %58
  call void @free(i8* %46) #8, !dbg !2293
  br label %66

66:                                               ; preds = %24, %65
  ret i32 0, !dbg !2294
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_initialize_kernels(i8* %0, i8** %1, i8* %2, i32 %3) local_unnamed_addr #4 !dbg !2295 {
  %5 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2299, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8** %1, metadata !2300, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8* %2, metadata !2301, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i32 %3, metadata !2302, metadata !DIExpression()), !dbg !2307
  %7 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5 to i8*, !dbg !2308
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #10, !dbg !2308
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, metadata !2303, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, metadata !2041, metadata !DIExpression()) #10, !dbg !2310
  call void @llvm.dbg.value(metadata i8* %0, metadata !2044, metadata !DIExpression()) #10, !dbg !2310
  call void @llvm.dbg.value(metadata i1 true, metadata !2045, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2310
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %5, i8* %0, i1 zeroext true) #8, !dbg !2312
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, i64 0, i32 4, !dbg !2313
  %9 = load i32, i32* %8, align 8, !dbg !2313, !tbaa !1837
  %10 = icmp eq i32 %9, 0, !dbg !2315
  br i1 %10, label %11, label %45, !dbg !2316

11:                                               ; preds = %4
  %12 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %12, metadata !2304, metadata !DIExpression()), !dbg !2307
  %13 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %6 to i8*, !dbg !2318
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #10, !dbg !2318
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* null, metadata !2305, metadata !DIExpression()), !dbg !2307
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* null, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %6, align 8, !dbg !2319, !tbaa !1480
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, i64 0, i32 2, !dbg !2320
  %15 = load %struct.halide_metal_device*, %struct.halide_metal_device** %14, align 8, !dbg !2320, !tbaa !2070
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %6, metadata !2305, metadata !DIExpression(DW_OP_deref)), !dbg !2307
  %16 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcmEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i8* %0, i8** %1, %struct.halide_metal_device* %15, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** nonnull align 8 dereferenceable(8) %6, %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (%struct.halide_metal_device*, i8*, i64)* nonnull @_ZN6Halide7Runtime8Internal5Metal23new_library_with_sourceEP19halide_metal_devicePKcm, %struct.halide_metal_device* %15, i8* %2, i32 %3) #9, !dbg !2322
  br i1 %16, label %17, label %43, !dbg !2323

17:                                               ; preds = %11
  %18 = load %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %6, align 8, !dbg !2324, !tbaa !1480
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %18, metadata !2305, metadata !DIExpression()), !dbg !2307
  %19 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %18, null, !dbg !2324
  br i1 %19, label %20, label %21, !dbg !2327

20:                                               ; preds = %17
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.59, i64 0, i64 0)) #8, !dbg !2328
  call void @abort() #8, !dbg !2328
  br label %21, !dbg !2328

21:                                               ; preds = %20, %17
  %22 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2330
  call void @llvm.dbg.value(metadata i64 %22, metadata !2306, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2331
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2331
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2331
  %23 = call i8* @malloc(i64 1024) #8, !dbg !2333
  %24 = icmp eq i8* %23, null, !dbg !2334
  br i1 %24, label %27, label %25, !dbg !2335

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, i8* %23, i64 1023, !dbg !2336
  store i8 0, i8* %26, align 1, !dbg !2337, !tbaa !1134
  br label %27, !dbg !2338

27:                                               ; preds = %21, %25
  %28 = phi i8* [ %26, %25 ], [ null, %21 ], !dbg !2339
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2340
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2340
  %29 = call i8* @halide_string_to_string(i8* %23, i8* %28, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #8, !dbg !2342
  %30 = sub i64 %22, %12, !dbg !2343
  %31 = uitofp i64 %30 to double, !dbg !2344
  %32 = fdiv double %31, 1.000000e+06, !dbg !2345
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2147, metadata !DIExpression()) #10, !dbg !2346
  call void @llvm.dbg.value(metadata double %32, metadata !2150, metadata !DIExpression()) #10, !dbg !2346
  %33 = call i8* @halide_double_to_string(i8* %29, i8* %28, double %32, i32 1) #8, !dbg !2348
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2349
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2349
  %34 = call i8* @halide_string_to_string(i8* %33, i8* %28, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !2351
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2352
  br i1 %24, label %35, label %36, !dbg !2354

35:                                               ; preds = %27
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !2355
  br label %42, !dbg !2356

36:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2357
  %37 = ptrtoint i8* %34 to i64, !dbg !2359
  %38 = ptrtoint i8* %23 to i64, !dbg !2359
  %39 = add i64 %37, 1, !dbg !2359
  %40 = sub i64 %39, %38, !dbg !2360
  %41 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %23, i64 %40) #8, !dbg !2361
  call void @halide_print(i8* %0, i8* nonnull %23) #8, !dbg !2362
  br label %42

42:                                               ; preds = %36, %35
  call void @free(i8* %23) #8, !dbg !2363
  br label %43

43:                                               ; preds = %11, %42
  %44 = phi i32 [ 0, %42 ], [ -1, %11 ], !dbg !2307
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #10, !dbg !2364
  br label %45

45:                                               ; preds = %4, %43
  %46 = phi i32 [ %44, %43 ], [ %9, %4 ], !dbg !2307
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, metadata !2169, metadata !DIExpression()) #10, !dbg !2365
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %5) #8, !dbg !2367
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #10, !dbg !2364
  ret i32 %46, !dbg !2364
}

; Function Attrs: nounwind
define linkonce_odr dso_local zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcmEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i8* %1, i8** %2, %struct.halide_metal_device* %3, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** nonnull align 8 dereferenceable(8) %4, %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (%struct.halide_metal_device*, i8*, i64)* %5, %struct.halide_metal_device* %6, i8* %7, i32 %8) local_unnamed_addr #4 comdat align 2 !dbg !2368 {
  %10 = alloca %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", align 8
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* %0, metadata !2383, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8* %1, metadata !2385, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8** %2, metadata !2386, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %3, metadata !2387, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %4, metadata !2388, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* (%struct.halide_metal_device*, i8*, i64)* %5, metadata !2389, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %6, metadata !2390, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8* %7, metadata !2391, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 %8, metadata !2392, metadata !DIExpression()), !dbg !2409
  %11 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 0, !dbg !2410
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2411, metadata !DIExpression()) #10, !dbg !2416
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %11, metadata !2414, metadata !DIExpression()) #10, !dbg !2416
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %11, metadata !2393, metadata !DIExpression()), !dbg !2409
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull %11) #8, !dbg !2418
  %12 = bitcast i8** %2 to i32*, !dbg !2420
  call void @llvm.dbg.value(metadata i32* %12, metadata !2406, metadata !DIExpression()), !dbg !2409
  %13 = load i32, i32* %12, align 4, !dbg !2421, !tbaa !2423
  %14 = icmp eq i32 %13, 0, !dbg !2424
  br i1 %14, label %15, label %19, !dbg !2425

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 4, !dbg !2426
  %17 = load i32, i32* %16, align 4, !dbg !2428, !tbaa !2429
  %18 = add i32 %17, 1, !dbg !2428
  store i32 %18, i32* %16, align 4, !dbg !2428, !tbaa !2429
  store i32 %17, i32* %12, align 4, !dbg !2432, !tbaa !2423
  br label %19, !dbg !2433

19:                                               ; preds = %15, %9
  %20 = phi i32 [ %17, %15 ], [ %13, %9 ], !dbg !2434
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* %0, metadata !2436, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %3, metadata !2439, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 %20, metadata !2440, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"*** undef, metadata !2441, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 1, metadata !2442, metadata !DIExpression()), !dbg !2449
  %21 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1, !dbg !2451
  %22 = load i32, i32* %21, align 8, !dbg !2451, !tbaa !2453
  %23 = icmp eq i32 %22, 0, !dbg !2454
  br i1 %23, label %68, label %24, !dbg !2455

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %3, metadata !2456, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %20, metadata !2459, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %22, metadata !2460, metadata !DIExpression()), !dbg !2462
  %25 = ptrtoint %struct.halide_metal_device* %3 to i64, !dbg !2464
  %26 = zext i32 %20 to i64, !dbg !2465
  %27 = add i64 %26, %25, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %27, metadata !2461, metadata !DIExpression()), !dbg !2462
  %28 = mul i64 %27, -7046029254386353131, !dbg !2467
  %29 = sub i32 64, %22, !dbg !2470
  %30 = zext i32 %29 to i64, !dbg !2471
  %31 = lshr i64 %28, %30, !dbg !2471
  call void @llvm.dbg.value(metadata i64 %31, metadata !2443, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 0, metadata !2444, metadata !DIExpression()), !dbg !2472
  %32 = shl nuw i32 1, %22, !dbg !2473
  %33 = icmp eq i32 %22, 31, !dbg !2474
  br i1 %33, label %68, label %34, !dbg !2475

34:                                               ; preds = %24
  %35 = add nsw i32 %32, -1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %38 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %37, align 8, !tbaa !2476
  %39 = sext i32 %32 to i64, !dbg !2475
  %40 = icmp sgt i32 %32, 1, !dbg !2475
  %41 = select i1 %40, i32 %32, i32 1, !dbg !2475
  %42 = zext i32 %41 to i64, !dbg !2474
  br label %46, !dbg !2475

43:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i64 %60, metadata !2444, metadata !DIExpression()), !dbg !2472
  %44 = icmp slt i64 %60, %39, !dbg !2474
  %45 = icmp eq i64 %60, %42, !dbg !2474
  br i1 %45, label %68, label %46, !dbg !2475, !llvm.loop !2477

46:                                               ; preds = %43, %34
  %47 = phi i64 [ 0, %34 ], [ %60, %43 ]
  %48 = phi i1 [ true, %34 ], [ %44, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !2444, metadata !DIExpression()), !dbg !2472
  %49 = add i64 %47, %31, !dbg !2479
  %50 = and i64 %49, %36, !dbg !2480
  call void @llvm.dbg.value(metadata i64 %50, metadata !2446, metadata !DIExpression()), !dbg !2481
  %51 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %38, i64 %50, i32 2, !dbg !2482
  %52 = load i32, i32* %51, align 8, !dbg !2482, !tbaa !2484
  %53 = icmp eq i32 %52, 0, !dbg !2486
  br i1 %53, label %68, label %54, !dbg !2487

54:                                               ; preds = %46
  %55 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %38, i64 %50, i32 0, !dbg !2488
  %56 = load %struct.halide_metal_device*, %struct.halide_metal_device** %55, align 8, !dbg !2488, !tbaa !2490
  %57 = icmp eq %struct.halide_metal_device* %56, %3, !dbg !2491
  %58 = icmp eq i32 %52, %20
  %59 = and i1 %58, %57, !dbg !2492
  %60 = add nuw nsw i64 %47, 1, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %60, metadata !2444, metadata !DIExpression()), !dbg !2472
  br i1 %59, label %61, label %43, !dbg !2492

61:                                               ; preds = %54
  %62 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %38, i64 %50, i32 3, !dbg !2494
  %63 = load i32, i32* %62, align 4, !dbg !2498, !tbaa !2499
  %64 = add i32 %63, 1, !dbg !2498
  store i32 %64, i32* %62, align 4, !dbg !2498, !tbaa !2499
  br i1 %48, label %65, label %68, !dbg !2500

65:                                               ; preds = %61
  %66 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %38, i64 %50, i32 1, !dbg !2501
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %66, metadata !2407, metadata !DIExpression()), !dbg !2409
  %67 = load %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %66, align 8, !dbg !2502, !tbaa !1480
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %67, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %4, align 8, !dbg !2504, !tbaa !1480
  br label %106, !dbg !2505

68:                                               ; preds = %46, %43, %24, %19, %61
  %69 = sext i32 %8 to i64, !dbg !2506
  %70 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %5(%struct.halide_metal_device* %6, i8* %7, i64 %69) #8, !dbg !2507
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %70, metadata !2408, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2508
  call void @llvm.dbg.value(metadata i8* %1, metadata !1098, metadata !DIExpression()) #10, !dbg !2508
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2508
  %71 = tail call i8* @malloc(i64 1024) #8, !dbg !2510
  %72 = icmp eq i8* %71, null, !dbg !2511
  br i1 %72, label %75, label %73, !dbg !2512

73:                                               ; preds = %68
  %74 = getelementptr inbounds i8, i8* %71, i64 1023, !dbg !2513
  store i8 0, i8* %74, align 1, !dbg !2514, !tbaa !1134
  br label %75, !dbg !2515

75:                                               ; preds = %68, %73
  %76 = phi i8* [ %74, %73 ], [ null, %68 ], !dbg !2516
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2517
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.126, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2517
  %77 = tail call i8* @halide_string_to_string(i8* %71, i8* %76, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.126, i64 0, i64 0)) #8, !dbg !2519
  %78 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %70 to i8*, !dbg !2520
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1890, metadata !DIExpression()) #10, !dbg !2521
  call void @llvm.dbg.value(metadata i8* %78, metadata !1893, metadata !DIExpression()) #10, !dbg !2521
  %79 = tail call i8* @halide_pointer_to_string(i8* %77, i8* %76, i8* %78) #8, !dbg !2523
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2524
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2524
  %80 = tail call i8* @halide_string_to_string(i8* %79, i8* %76, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0)) #8, !dbg !2526
  %81 = load i32, i32* %12, align 4, !dbg !2527, !tbaa !2423
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2528, metadata !DIExpression()) #10, !dbg !2532
  call void @llvm.dbg.value(metadata i32 %81, metadata !2531, metadata !DIExpression()) #10, !dbg !2532
  %82 = zext i32 %81 to i64, !dbg !2534
  %83 = tail call i8* @halide_uint64_to_string(i8* %80, i8* %76, i64 %82, i32 1) #8, !dbg !2535
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2536
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2536
  %84 = tail call i8* @halide_string_to_string(i8* %83, i8* %76, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i64 0, i64 0)) #8, !dbg !2538
  %85 = bitcast %struct.halide_metal_device* %3 to i8*, !dbg !2539
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1890, metadata !DIExpression()) #10, !dbg !2540
  call void @llvm.dbg.value(metadata i8* %85, metadata !1893, metadata !DIExpression()) #10, !dbg !2540
  %86 = tail call i8* @halide_pointer_to_string(i8* %84, i8* %76, i8* %85) #8, !dbg !2542
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2543
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2543
  %87 = tail call i8* @halide_string_to_string(i8* %86, i8* %76, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !2545
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2546
  br i1 %72, label %88, label %89, !dbg !2548

88:                                               ; preds = %75
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !2549
  br label %95, !dbg !2550

89:                                               ; preds = %75
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2551
  %90 = ptrtoint i8* %87 to i64, !dbg !2553
  %91 = ptrtoint i8* %71 to i64, !dbg !2553
  %92 = add i64 %90, 1, !dbg !2553
  %93 = sub i64 %92, %91, !dbg !2554
  %94 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %71, i64 %93) #8, !dbg !2555
  tail call void @halide_print(i8* %1, i8* nonnull %71) #8, !dbg !2556
  br label %95

95:                                               ; preds = %88, %89
  call void @free(i8* %71) #8, !dbg !2557
  %96 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %70, null, !dbg !2558
  br i1 %96, label %106, label %97, !dbg !2560

97:                                               ; preds = %95
  %98 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10 to i8*, !dbg !2561
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %98) #10, !dbg !2561
  %99 = load i32, i32* %12, align 4, !dbg !2563, !tbaa !2423
  call void @llvm.dbg.value(metadata %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, metadata !2564, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %3, metadata !2567, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %70, metadata !2568, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %99, metadata !2569, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 1, metadata !2570, metadata !DIExpression()), !dbg !2571
  %100 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i64 0, i32 0, !dbg !2573
  store %struct.halide_metal_device* %3, %struct.halide_metal_device** %100, align 8, !dbg !2573, !tbaa !2490
  %101 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i64 0, i32 1, !dbg !2574
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %70, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %101, align 8, !dbg !2574, !tbaa !2575
  %102 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i64 0, i32 2, !dbg !2576
  store i32 %99, i32* %102, align 8, !dbg !2576, !tbaa !2484
  %103 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %10, i64 0, i32 3, !dbg !2577
  store i32 1, i32* %103, align 4, !dbg !2577, !tbaa !2499
  %104 = call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %10) #9, !dbg !2578
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %98) #10, !dbg !2579
  br i1 %104, label %105, label %106, !dbg !2580

105:                                              ; preds = %97
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %70, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %4, align 8, !dbg !2581, !tbaa !1480
  br label %106, !dbg !2582

106:                                              ; preds = %105, %95, %97, %65
  %107 = phi i1 [ true, %65 ], [ true, %105 ], [ false, %95 ], [ false, %97 ], !dbg !2409
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2583, metadata !DIExpression()) #10, !dbg !2586
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull %11) #8, !dbg !2588
  ret i1 %107, !dbg !2590
}

; Function Attrs: nounwind
define weak dso_local void @halide_metal_finalize_kernels(i8* %0, i8* %1) local_unnamed_addr #4 !dbg !2591 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2595, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8* %1, metadata !2596, metadata !DIExpression()), !dbg !2598
  %4 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*, !dbg !2599
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #10, !dbg !2599
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2597, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2041, metadata !DIExpression()) #10, !dbg !2601
  call void @llvm.dbg.value(metadata i8* %0, metadata !2044, metadata !DIExpression()) #10, !dbg !2601
  call void @llvm.dbg.value(metadata i1 true, metadata !2045, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2601
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3, i8* %0, i1 zeroext true) #8, !dbg !2603
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 4, !dbg !2604
  %6 = load i32, i32* %5, align 8, !dbg !2604, !tbaa !1837
  %7 = icmp eq i32 %6, 0, !dbg !2606
  br i1 %7, label %8, label %56, !dbg !2607

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 2, !dbg !2608
  %10 = load %struct.halide_metal_device*, %struct.halide_metal_device** %9, align 8, !dbg !2608, !tbaa !2070
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, metadata !2610, metadata !DIExpression()) #10, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %0, metadata !2613, metadata !DIExpression()) #10, !dbg !2619
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %10, metadata !2614, metadata !DIExpression()) #10, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %1, metadata !2615, metadata !DIExpression()) #10, !dbg !2619
  %11 = ptrtoint i8* %1 to i64, !dbg !2621
  %12 = trunc i64 %11 to i32, !dbg !2621
  call void @llvm.dbg.value(metadata i32 %12, metadata !2617, metadata !DIExpression()) #10, !dbg !2619
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, metadata !2436, metadata !DIExpression()) #10, !dbg !2622
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %10, metadata !2439, metadata !DIExpression()) #10, !dbg !2622
  call void @llvm.dbg.value(metadata i32 %12, metadata !2440, metadata !DIExpression()) #10, !dbg !2622
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"*** undef, metadata !2441, metadata !DIExpression()) #10, !dbg !2622
  call void @llvm.dbg.value(metadata i32 -1, metadata !2442, metadata !DIExpression()) #10, !dbg !2622
  %13 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 1), align 8, !dbg !2624, !tbaa !2453
  %14 = icmp eq i32 %13, 0, !dbg !2625
  br i1 %14, label %55, label %15, !dbg !2626

15:                                               ; preds = %8
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %10, metadata !2456, metadata !DIExpression()) #10, !dbg !2627
  call void @llvm.dbg.value(metadata i32 %12, metadata !2459, metadata !DIExpression()) #10, !dbg !2627
  call void @llvm.dbg.value(metadata i32 %13, metadata !2460, metadata !DIExpression()) #10, !dbg !2627
  %16 = ptrtoint %struct.halide_metal_device* %10 to i64, !dbg !2629
  %17 = and i64 %11, 4294967295, !dbg !2630
  %18 = add i64 %17, %16, !dbg !2631
  call void @llvm.dbg.value(metadata i64 %18, metadata !2461, metadata !DIExpression()) #10, !dbg !2627
  %19 = mul i64 %18, -7046029254386353131, !dbg !2632
  %20 = sub i32 64, %13, !dbg !2633
  %21 = zext i32 %20 to i64, !dbg !2634
  %22 = lshr i64 %19, %21, !dbg !2634
  call void @llvm.dbg.value(metadata i64 %22, metadata !2443, metadata !DIExpression()) #10, !dbg !2622
  call void @llvm.dbg.value(metadata i32 0, metadata !2444, metadata !DIExpression()) #10, !dbg !2635
  %23 = shl nuw i32 1, %13, !dbg !2636
  %24 = icmp eq i32 %13, 31, !dbg !2637
  br i1 %24, label %55, label %25, !dbg !2638

25:                                               ; preds = %15
  %26 = add nsw i32 %23, -1
  %27 = sext i32 %26 to i64
  %28 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !2476
  %29 = sext i32 %23 to i64, !dbg !2638
  %30 = icmp sgt i32 %23, 1, !dbg !2638
  %31 = select i1 %30, i32 %23, i32 1, !dbg !2638
  %32 = zext i32 %31 to i64, !dbg !2637
  br label %36, !dbg !2638

33:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 %50, metadata !2444, metadata !DIExpression()) #10, !dbg !2635
  %34 = icmp slt i64 %50, %29, !dbg !2637
  %35 = icmp eq i64 %50, %32, !dbg !2637
  br i1 %35, label %55, label %36, !dbg !2638, !llvm.loop !2639

36:                                               ; preds = %33, %25
  %37 = phi i64 [ 0, %25 ], [ %50, %33 ]
  %38 = phi i1 [ true, %25 ], [ %34, %33 ]
  call void @llvm.dbg.value(metadata i64 %37, metadata !2444, metadata !DIExpression()) #10, !dbg !2635
  %39 = add i64 %37, %22, !dbg !2641
  %40 = and i64 %39, %27, !dbg !2642
  call void @llvm.dbg.value(metadata i64 %40, metadata !2446, metadata !DIExpression()) #10, !dbg !2643
  %41 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %28, i64 %40, i32 2, !dbg !2644
  %42 = load i32, i32* %41, align 8, !dbg !2644, !tbaa !2484
  %43 = icmp eq i32 %42, 0, !dbg !2645
  br i1 %43, label %55, label %44, !dbg !2646

44:                                               ; preds = %36
  %45 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %28, i64 %40, i32 0, !dbg !2647
  %46 = load %struct.halide_metal_device*, %struct.halide_metal_device** %45, align 8, !dbg !2647, !tbaa !2490
  %47 = icmp eq %struct.halide_metal_device* %46, %10, !dbg !2648
  %48 = icmp eq i32 %42, %12
  %49 = and i1 %48, %47, !dbg !2649
  %50 = add nuw nsw i64 %37, 1, !dbg !2650
  call void @llvm.dbg.value(metadata i64 %50, metadata !2444, metadata !DIExpression()) #10, !dbg !2635
  br i1 %49, label %51, label %33, !dbg !2649

51:                                               ; preds = %44
  %52 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %28, i64 %40, i32 3, !dbg !2651
  %53 = load i32, i32* %52, align 4, !dbg !2652, !tbaa !2499
  %54 = add i32 %53, -1, !dbg !2652
  store i32 %54, i32* %52, align 4, !dbg !2652, !tbaa !2499
  call void @llvm.dbg.value(metadata i1 %38, metadata !2618, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2619
  br i1 %38, label %56, label %55, !dbg !2653

55:                                               ; preds = %36, %33, %51, %15, %8
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.131, i64 0, i64 0)) #8, !dbg !2655
  call void @abort() #8, !dbg !2655
  br label %56, !dbg !2655

56:                                               ; preds = %55, %51, %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2169, metadata !DIExpression()) #10, !dbg !2658
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3) #8, !dbg !2660
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #10, !dbg !2661
  ret void, !dbg !2661
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !2662 {
  call void @llvm.dbg.value(metadata %struct.halide_metal_command_queue* %0, metadata !2667, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2668, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.61, i64 0, i64 0), metadata !2669, metadata !DIExpression()), !dbg !2677
  %3 = tail call i64 @strlen(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.61, i64 0, i64 0)) #8, !dbg !2678
  %4 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcm(%struct.halide_metal_command_queue* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.61, i64 0, i64 0), i64 %3) #9, !dbg !2679
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %4, metadata !2670, metadata !DIExpression()), !dbg !2677
  %5 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !2680
  br i1 %5, label %15, label %6, !dbg !2681

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2682
  %8 = load i64, i64* %7, align 8, !dbg !2682, !tbaa !1198
  %9 = inttoptr i64 %8 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !2683
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %9, i64 0, i32 0, !dbg !2684
  %11 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %10, align 8, !dbg !2684, !tbaa !2114
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %11, metadata !2671, metadata !DIExpression()), !dbg !2685
  %12 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %11) #9, !dbg !2686
  br i1 %12, label %13, label %15, !dbg !2687

13:                                               ; preds = %6
  %14 = tail call %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal24new_blit_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %4) #9, !dbg !2688
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %14, metadata !2674, metadata !DIExpression()), !dbg !2689
  tail call void @_ZN6Halide7Runtime8Internal5Metal20synchronize_resourceEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %14, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %11) #9, !dbg !2690
  tail call void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_24mtl_blit_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %14) #9, !dbg !2691
  br label %15, !dbg !2692

15:                                               ; preds = %6, %13, %2
  tail call void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %4) #9, !dbg !2693
  tail call void @_ZN6Halide7Runtime8Internal5Metal20wait_until_completedEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %4) #9, !dbg !2694
  ret void, !dbg !2695
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_device_sync(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !2696 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2698, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2699, metadata !DIExpression()), !dbg !2703
  %4 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2704
  call void @llvm.dbg.value(metadata i64 %4, metadata !2700, metadata !DIExpression()), !dbg !2703
  %5 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*, !dbg !2705
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #10, !dbg !2705
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2701, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2041, metadata !DIExpression()) #10, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %0, metadata !2044, metadata !DIExpression()) #10, !dbg !2707
  call void @llvm.dbg.value(metadata i1 true, metadata !2045, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2707
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3, i8* %0, i1 zeroext true) #8, !dbg !2709
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 4, !dbg !2710
  %7 = load i32, i32* %6, align 8, !dbg !2710, !tbaa !1837
  %8 = icmp eq i32 %7, 0, !dbg !2712
  br i1 %8, label %9, label %33, !dbg !2713

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 3, !dbg !2714
  %11 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %10, align 8, !dbg !2714, !tbaa !2715
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %11, %struct.halide_buffer_t* %1) #9, !dbg !2716
  %12 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %12, metadata !2702, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2718
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2718
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2718
  %13 = call i8* @malloc(i64 1024) #8, !dbg !2720
  %14 = icmp eq i8* %13, null, !dbg !2721
  br i1 %14, label %17, label %15, !dbg !2722

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, i8* %13, i64 1023, !dbg !2723
  store i8 0, i8* %16, align 1, !dbg !2724, !tbaa !1134
  br label %17, !dbg !2725

17:                                               ; preds = %9, %15
  %18 = phi i8* [ %16, %15 ], [ null, %9 ], !dbg !2726
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2727
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.62, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2727
  %19 = call i8* @halide_string_to_string(i8* %13, i8* %18, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.62, i64 0, i64 0)) #8, !dbg !2729
  %20 = sub i64 %12, %4, !dbg !2730
  %21 = uitofp i64 %20 to double, !dbg !2731
  %22 = fdiv double %21, 1.000000e+06, !dbg !2732
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2147, metadata !DIExpression()) #10, !dbg !2733
  call void @llvm.dbg.value(metadata double %22, metadata !2150, metadata !DIExpression()) #10, !dbg !2733
  %23 = call i8* @halide_double_to_string(i8* %19, i8* %18, double %22, i32 1) #8, !dbg !2735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2736
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2736
  %24 = call i8* @halide_string_to_string(i8* %23, i8* %18, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !2738
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2739
  br i1 %14, label %25, label %26, !dbg !2741

25:                                               ; preds = %17
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !2742
  br label %32, !dbg !2743

26:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2744
  %27 = ptrtoint i8* %24 to i64, !dbg !2746
  %28 = ptrtoint i8* %13 to i64, !dbg !2746
  %29 = add i64 %27, 1, !dbg !2746
  %30 = sub i64 %29, %28, !dbg !2747
  %31 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %13, i64 %30) #8, !dbg !2748
  call void @halide_print(i8* %0, i8* nonnull %13) #8, !dbg !2749
  br label %32

32:                                               ; preds = %26, %25
  call void @free(i8* %13) #8, !dbg !2750
  br label %33

33:                                               ; preds = %2, %32
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2169, metadata !DIExpression()) #10, !dbg !2751
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3) #8, !dbg !2753
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #10, !dbg !2754
  ret i32 %7, !dbg !2754
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_device_release(i8* %0) #4 !dbg !2755 {
  %2 = alloca %struct.halide_metal_device*, align 8
  %3 = alloca %struct.halide_metal_command_queue*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2757, metadata !DIExpression()), !dbg !2761
  %4 = bitcast %struct.halide_metal_device** %2 to i8*, !dbg !2762
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10, !dbg !2762
  %5 = bitcast %struct.halide_metal_command_queue** %3 to i8*, !dbg !2763
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10, !dbg !2763
  call void @llvm.dbg.value(metadata %struct.halide_metal_device** %2, metadata !2759, metadata !DIExpression(DW_OP_deref)), !dbg !2761
  call void @llvm.dbg.value(metadata %struct.halide_metal_command_queue** %3, metadata !2760, metadata !DIExpression(DW_OP_deref)), !dbg !2761
  %6 = call i32 @halide_metal_acquire_context(i8* %0, %struct.halide_metal_device** nonnull %2, %struct.halide_metal_command_queue** nonnull %3, i1 zeroext false) #9, !dbg !2764
  call void @llvm.dbg.value(metadata i32 %6, metadata !2758, metadata !DIExpression()), !dbg !2761
  %7 = icmp eq i32 %6, 0, !dbg !2765
  br i1 %7, label %8, label %77, !dbg !2767

8:                                                ; preds = %1
  %9 = load %struct.halide_metal_device*, %struct.halide_metal_device** %2, align 8, !dbg !2768, !tbaa !1480
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %9, metadata !2759, metadata !DIExpression()), !dbg !2761
  %10 = icmp eq %struct.halide_metal_device* %9, null, !dbg !2768
  br i1 %10, label %75, label %11, !dbg !2770

11:                                               ; preds = %8
  %12 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 8, !dbg !2771, !tbaa !1480
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %12, %struct.halide_buffer_t* null) #9, !dbg !2773
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2774
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2774
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2774
  %13 = call i8* @malloc(i64 1024) #8, !dbg !2776
  %14 = icmp eq i8* %13, null, !dbg !2777
  br i1 %14, label %17, label %15, !dbg !2778

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, i8* %13, i64 1023, !dbg !2779
  store i8 0, i8* %16, align 1, !dbg !2780, !tbaa !1134
  br label %17, !dbg !2781

17:                                               ; preds = %11, %15
  %18 = phi i8* [ %16, %15 ], [ null, %11 ], !dbg !2782
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2783
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2783
  %19 = call i8* @halide_string_to_string(i8* %13, i8* %18, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #8, !dbg !2785
  %20 = bitcast %struct.halide_metal_device** %2 to i8**, !dbg !2786
  %21 = load i8*, i8** %20, align 8, !dbg !2786, !tbaa !1480
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* undef, metadata !2759, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1890, metadata !DIExpression()) #10, !dbg !2787
  call void @llvm.dbg.value(metadata i8* %21, metadata !1893, metadata !DIExpression()) #10, !dbg !2787
  %22 = call i8* @halide_pointer_to_string(i8* %19, i8* %18, i8* %21) #8, !dbg !2789
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2790
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2790
  %23 = call i8* @halide_string_to_string(i8* %22, i8* %18, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !2792
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2793
  br i1 %14, label %24, label %25, !dbg !2795

24:                                               ; preds = %17
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !2796
  br label %31, !dbg !2797

25:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2798
  %26 = ptrtoint i8* %23 to i64, !dbg !2800
  %27 = ptrtoint i8* %13 to i64, !dbg !2800
  %28 = add i64 %26, 1, !dbg !2800
  %29 = sub i64 %28, %27, !dbg !2801
  %30 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %13, i64 %29) #8, !dbg !2802
  call void @halide_print(i8* %0, i8* nonnull %13) #8, !dbg !2803
  br label %31

31:                                               ; preds = %25, %24
  call void @free(i8* %13) #8, !dbg !2804
  %32 = load %struct.halide_metal_device*, %struct.halide_metal_device** %2, align 8, !dbg !2805, !tbaa !1480
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %32, metadata !2759, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, metadata !2806, metadata !DIExpression()) #10, !dbg !2819
  call void @llvm.dbg.value(metadata i8* %0, metadata !2815, metadata !DIExpression()) #10, !dbg !2819
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %32, metadata !2816, metadata !DIExpression()) #10, !dbg !2819
  call void @llvm.dbg.value(metadata void (i8*)* @_ZN6Halide7Runtime8Internal17release_ns_objectEPv, metadata !2817, metadata !DIExpression()) #10, !dbg !2819
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2411, metadata !DIExpression()) #10, !dbg !2821
  call void @llvm.dbg.value(metadata %struct.halide_mutex* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0), metadata !2414, metadata !DIExpression()) #10, !dbg !2821
  call void @llvm.dbg.value(metadata %struct.halide_mutex* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0), metadata !2818, metadata !DIExpression()) #10, !dbg !2819
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0)) #8, !dbg !2823
  call void @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE15release_contextIFvPvEEEvSB_bS3_RT_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i8* %0, i1 zeroext false, %struct.halide_metal_device* %32, void (i8*)* nonnull @_ZN6Halide7Runtime8Internal17release_ns_objectEPv) #8, !dbg !2824
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2583, metadata !DIExpression()) #10, !dbg !2825
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0)) #8, !dbg !2827
  %33 = load %struct.halide_metal_device*, %struct.halide_metal_device** %2, align 8, !dbg !2828, !tbaa !1480
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %33, metadata !2759, metadata !DIExpression()), !dbg !2761
  %34 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 8, !dbg !2830, !tbaa !1480
  %35 = icmp eq %struct.halide_metal_device* %33, %34, !dbg !2831
  br i1 %35, label %36, label %75, !dbg !2832

36:                                               ; preds = %31
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2833
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2833
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2833
  %37 = call i8* @malloc(i64 1024) #8, !dbg !2836
  %38 = icmp eq i8* %37, null, !dbg !2837
  br i1 %38, label %41, label %39, !dbg !2838

39:                                               ; preds = %36
  %40 = getelementptr inbounds i8, i8* %37, i64 1023, !dbg !2839
  store i8 0, i8* %40, align 1, !dbg !2840, !tbaa !1134
  br label %41, !dbg !2841

41:                                               ; preds = %36, %39
  %42 = phi i8* [ %40, %39 ], [ null, %36 ], !dbg !2842
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2843
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.64, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2843
  %43 = call i8* @halide_string_to_string(i8* %37, i8* %42, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.64, i64 0, i64 0)) #8, !dbg !2845
  %44 = load i8*, i8** bitcast (%struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE to i8**), align 8, !dbg !2846, !tbaa !1480
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1890, metadata !DIExpression()) #10, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %44, metadata !1893, metadata !DIExpression()) #10, !dbg !2847
  %45 = call i8* @halide_pointer_to_string(i8* %43, i8* %42, i8* %44) #8, !dbg !2849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2850
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2850
  %46 = call i8* @halide_string_to_string(i8* %45, i8* %42, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !2852
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2853
  br i1 %38, label %47, label %48, !dbg !2855

47:                                               ; preds = %41
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !2856
  br label %54, !dbg !2857

48:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2858
  %49 = ptrtoint i8* %46 to i64, !dbg !2860
  %50 = ptrtoint i8* %37 to i64, !dbg !2860
  %51 = add i64 %49, 1, !dbg !2860
  %52 = sub i64 %51, %50, !dbg !2861
  %53 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %37, i64 %52) #8, !dbg !2862
  call void @halide_print(i8* %0, i8* nonnull %37) #8, !dbg !2863
  br label %54

54:                                               ; preds = %48, %47
  call void @free(i8* %37) #8, !dbg !2864
  %55 = load i8*, i8** bitcast (%struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE to i8**), align 8, !dbg !2865, !tbaa !1480
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %55) #9, !dbg !2866
  store %struct.halide_metal_command_queue* null, %struct.halide_metal_command_queue** @_ZN6Halide7Runtime8Internal5Metal5queueE, align 8, !dbg !2867, !tbaa !1480
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !2868
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2868
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2868
  %56 = call i8* @malloc(i64 1024) #8, !dbg !2870
  %57 = icmp eq i8* %56, null, !dbg !2871
  br i1 %57, label %60, label %58, !dbg !2872

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, i8* %56, i64 1023, !dbg !2873
  store i8 0, i8* %59, align 1, !dbg !2874, !tbaa !1134
  br label %60, !dbg !2875

60:                                               ; preds = %54, %58
  %61 = phi i8* [ %59, %58 ], [ null, %54 ], !dbg !2876
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2877
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.65, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2877
  %62 = call i8* @halide_string_to_string(i8* %56, i8* %61, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.65, i64 0, i64 0)) #8, !dbg !2879
  %63 = load i8*, i8** bitcast (%struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE to i8**), align 8, !dbg !2880, !tbaa !1480
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1890, metadata !DIExpression()) #10, !dbg !2881
  call void @llvm.dbg.value(metadata i8* %63, metadata !1893, metadata !DIExpression()) #10, !dbg !2881
  %64 = call i8* @halide_pointer_to_string(i8* %62, i8* %61, i8* %63) #8, !dbg !2883
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !2884
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2884
  %65 = call i8* @halide_string_to_string(i8* %64, i8* %61, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !2886
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !2887
  br i1 %57, label %66, label %67, !dbg !2889

66:                                               ; preds = %60
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !2890
  br label %73, !dbg !2891

67:                                               ; preds = %60
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !2892
  %68 = ptrtoint i8* %65 to i64, !dbg !2894
  %69 = ptrtoint i8* %56 to i64, !dbg !2894
  %70 = add i64 %68, 1, !dbg !2894
  %71 = sub i64 %70, %69, !dbg !2895
  %72 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %56, i64 %71) #8, !dbg !2896
  call void @halide_print(i8* %0, i8* nonnull %56) #8, !dbg !2897
  br label %73

73:                                               ; preds = %67, %66
  call void @free(i8* %56) #8, !dbg !2898
  %74 = load i8*, i8** bitcast (%struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE to i8**), align 8, !dbg !2899, !tbaa !1480
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %74) #9, !dbg !2900
  store %struct.halide_metal_device* null, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal6deviceE, align 8, !dbg !2901, !tbaa !1480
  br label %75, !dbg !2902

75:                                               ; preds = %31, %73, %8
  %76 = call i32 @halide_metal_release_context(i8* %0) #9, !dbg !2903
  br label %77, !dbg !2904

77:                                               ; preds = %1, %75
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10, !dbg !2905
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10, !dbg !2905
  ret i32 %6, !dbg !2905
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_copy_to_device(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !2906 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %5 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::Metal::NSRange", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2908, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !2909, metadata !DIExpression()), !dbg !2919
  %7 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %7, metadata !2910, metadata !DIExpression()), !dbg !2919
  %8 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*, !dbg !2921
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #10, !dbg !2921
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2911, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2041, metadata !DIExpression()) #10, !dbg !2923
  call void @llvm.dbg.value(metadata i8* %0, metadata !2044, metadata !DIExpression()) #10, !dbg !2923
  call void @llvm.dbg.value(metadata i1 true, metadata !2045, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2923
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3, i8* %0, i1 zeroext true) #8, !dbg !2925
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 4, !dbg !2926
  %10 = load i32, i32* %9, align 8, !dbg !2926, !tbaa !1837
  %11 = icmp eq i32 %10, 0, !dbg !2928
  br i1 %11, label %12, label %164, !dbg !2929

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !2930
  %14 = load i8*, i8** %13, align 8, !dbg !2930, !tbaa !1189
  %15 = icmp eq i8* %14, null, !dbg !2930
  br i1 %15, label %20, label %16, !dbg !2930

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2930
  %18 = load i64, i64* %17, align 8, !dbg !2930, !tbaa !1198
  %19 = icmp eq i64 %18, 0, !dbg !2930
  br i1 %19, label %20, label %21, !dbg !2933

20:                                               ; preds = %16, %12
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.66, i64 0, i64 0)) #8, !dbg !2934
  call void @abort() #8, !dbg !2934
  br label %21, !dbg !2934

21:                                               ; preds = %20, %16
  %22 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*, !dbg !2936
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %22) #10, !dbg !2936
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %4, metadata !2912, metadata !DIExpression()), !dbg !2937
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %1) #9, !dbg !2938
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 1, !dbg !2939
  %24 = load i64, i64* %23, align 8, !dbg !2939, !tbaa !1057
  %25 = inttoptr i64 %24 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !2940
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %25, i64 0, i32 0, !dbg !2941
  %27 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %26, align 8, !dbg !2941, !tbaa !2114
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %27, metadata !2913, metadata !DIExpression()), !dbg !2919
  %28 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %27) #9, !dbg !2942
  %29 = ptrtoint i8* %28 to i64, !dbg !2943
  %30 = load i64, i64* %23, align 8, !dbg !2944, !tbaa !1057
  %31 = inttoptr i64 %30 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !2945
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %31, i64 0, i32 1, !dbg !2946
  %33 = load i64, i64* %32, align 8, !dbg !2946, !tbaa !2118
  %34 = add i64 %33, %29, !dbg !2947
  store i64 %34, i64* %23, align 8, !dbg !2948, !tbaa !1057
  %35 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5 to i8*, !dbg !2949
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %35) #10, !dbg !2949
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1095, metadata !DIExpression()) #10, !dbg !2950
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !2950
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !2950
  %36 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 3, !dbg !2952
  store i8* %0, i8** %36, align 8, !dbg !2952, !tbaa !2953
  %37 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 4, !dbg !2956
  store i8 1, i8* %37, align 8, !dbg !2956, !tbaa !2957
  %38 = call i8* @malloc(i64 1024) #8, !dbg !2958
  %39 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 0, !dbg !2959
  store i8* %38, i8** %39, align 8, !dbg !2960, !tbaa !2961
  %40 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 1, !dbg !2962
  %41 = icmp eq i8* %38, null, !dbg !2963
  br i1 %41, label %44, label %42, !dbg !2964

42:                                               ; preds = %21
  %43 = getelementptr inbounds i8, i8* %38, i64 1023, !dbg !2965
  store i8 0, i8* %43, align 1, !dbg !2966, !tbaa !1134
  br label %44, !dbg !2967

44:                                               ; preds = %21, %42
  %45 = phi i8* [ %43, %42 ], [ null, %21 ], !dbg !2968
  %46 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, i64 0, i32 2, !dbg !2969
  store i8* %45, i8** %46, align 8, !dbg !2971
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1112, metadata !DIExpression()) #10, !dbg !2972
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.67, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2972
  %47 = call i8* @halide_string_to_string(i8* %38, i8* %45, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.67, i64 0, i64 0)) #8, !dbg !2974
  %48 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !2975
  %49 = load i64, i64* %48, align 8, !dbg !2975, !tbaa !1198
  %50 = inttoptr i64 %49 to i8*, !dbg !2976
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1890, metadata !DIExpression()) #10, !dbg !2977
  call void @llvm.dbg.value(metadata i8* %50, metadata !1893, metadata !DIExpression()) #10, !dbg !2977
  %51 = call i8* @halide_pointer_to_string(i8* %47, i8* %45, i8* %50) #8, !dbg !2979
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1112, metadata !DIExpression()) #10, !dbg !2980
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2980
  %52 = call i8* @halide_string_to_string(i8* %51, i8* %45, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i64 0, i64 0)) #8, !dbg !2982
  store i8* %52, i8** %40, align 8, !dbg !2983, !tbaa !2984
  %53 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %27 to i8*, !dbg !2985
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1890, metadata !DIExpression()) #10, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %53, metadata !1893, metadata !DIExpression()) #10, !dbg !2986
  %54 = call i8* @halide_pointer_to_string(i8* %52, i8* %45, i8* %53) #8, !dbg !2988
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1112, metadata !DIExpression()) #10, !dbg !2989
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2989
  %55 = call i8* @halide_string_to_string(i8* %54, i8* %45, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0)) #8, !dbg !2991
  %56 = load i8*, i8** %13, align 8, !dbg !2992, !tbaa !1189
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1890, metadata !DIExpression()) #10, !dbg !2993
  call void @llvm.dbg.value(metadata i8* %56, metadata !1893, metadata !DIExpression()) #10, !dbg !2993
  %57 = call i8* @halide_pointer_to_string(i8* %55, i8* %45, i8* %56) #8, !dbg !2995
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1112, metadata !DIExpression()) #10, !dbg !2996
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !2996
  %58 = call i8* @halide_string_to_string(i8* %57, i8* %45, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !2998
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %5, metadata !1121, metadata !DIExpression()) #10, !dbg !2999
  br i1 %41, label %59, label %60, !dbg !3001

59:                                               ; preds = %44
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !3002
  br label %68, !dbg !3003

60:                                               ; preds = %44
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3004
  %61 = ptrtoint i8* %58 to i64, !dbg !3006
  %62 = ptrtoint i8* %38 to i64, !dbg !3006
  %63 = add i64 %61, 1, !dbg !3006
  %64 = sub i64 %63, %62, !dbg !3007
  %65 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %38, i64 %64) #8, !dbg !3008
  %66 = load i8*, i8** %36, align 8, !dbg !3009, !tbaa !2953
  %67 = load i8*, i8** %39, align 8, !dbg !3010, !tbaa !2961
  call void @halide_print(i8* %66, i8* %67) #8, !dbg !3011
  br label %68

68:                                               ; preds = %60, %59
  %69 = load i8, i8* %37, align 8, !dbg !3012, !tbaa !2957, !range !3013
  %70 = icmp eq i8 %69, 0, !dbg !3012
  br i1 %70, label %73, label %71, !dbg !3014

71:                                               ; preds = %68
  %72 = load i8*, i8** %39, align 8, !dbg !3015, !tbaa !2961
  call void @free(i8* %72) #8, !dbg !3016
  br label %73, !dbg !3017

73:                                               ; preds = %68, %71
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %35) #10, !dbg !2949
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i8* %0) #9, !dbg !3018
  %74 = call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %27) #9, !dbg !3019
  br i1 %74, label %75, label %140, !dbg !3020

75:                                               ; preds = %73
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1919, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1924, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i64 0, metadata !1927, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 0, metadata !1928, metadata !DIExpression()), !dbg !3025
  %76 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !3026
  %77 = load i32, i32* %76, align 4, !dbg !3026, !tbaa !1233
  %78 = icmp sgt i32 %77, 0, !dbg !3027
  br i1 %78, label %82, label %79, !dbg !3028

79:                                               ; preds = %75
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !3029
  %80 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !3031
  %81 = load i8, i8* %80, align 1, !dbg !3031, !tbaa !1214
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1940, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 0, metadata !1943, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i32 0, metadata !1944, metadata !DIExpression()), !dbg !3034
  br label %125, !dbg !3035

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %84 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %83, align 8, !tbaa !1236
  %85 = zext i32 %77 to i64, !dbg !3027
  br label %86, !dbg !3028

86:                                               ; preds = %100, %82
  %87 = phi i64 [ 0, %82 ], [ %102, %100 ]
  %88 = phi i64 [ 0, %82 ], [ %101, %100 ]
  call void @llvm.dbg.value(metadata i64 %87, metadata !1928, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %88, metadata !1927, metadata !DIExpression()), !dbg !3023
  %89 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %84, i64 %87, i32 2, !dbg !3036
  %90 = load i32, i32* %89, align 4, !dbg !3036, !tbaa !1244
  %91 = icmp sgt i32 %90, 0, !dbg !3037
  br i1 %91, label %92, label %100, !dbg !3038

92:                                               ; preds = %86
  %93 = zext i32 %90 to i64, !dbg !3039
  %94 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %84, i64 %87, i32 1, !dbg !3040
  %95 = load i32, i32* %94, align 4, !dbg !3040, !tbaa !1309
  %96 = add nsw i32 %95, -1, !dbg !3041
  %97 = sext i32 %96 to i64, !dbg !3042
  %98 = mul nsw i64 %97, %93, !dbg !3043
  %99 = add nsw i64 %98, %88, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %99, metadata !1927, metadata !DIExpression()), !dbg !3023
  br label %100, !dbg !3045

100:                                              ; preds = %92, %86
  %101 = phi i64 [ %99, %92 ], [ %88, %86 ], !dbg !3023
  call void @llvm.dbg.value(metadata i64 %101, metadata !1927, metadata !DIExpression()), !dbg !3023
  %102 = add nuw nsw i64 %87, 1, !dbg !3046
  call void @llvm.dbg.value(metadata i64 %102, metadata !1928, metadata !DIExpression()), !dbg !3025
  %103 = icmp eq i64 %102, %85, !dbg !3027
  br i1 %103, label %104, label %86, !dbg !3028, !llvm.loop !3047

104:                                              ; preds = %100
  call void @llvm.dbg.value(metadata i64 %101, metadata !1927, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3023
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !3029
  %105 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !3031
  %106 = load i8, i8* %105, align 1, !dbg !3031, !tbaa !1214
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1940, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 0, metadata !1943, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i32 0, metadata !1944, metadata !DIExpression()), !dbg !3034
  br label %107, !dbg !3035

107:                                              ; preds = %121, %104
  %108 = phi i64 [ 0, %104 ], [ %123, %121 ]
  %109 = phi i64 [ 0, %104 ], [ %122, %121 ]
  call void @llvm.dbg.value(metadata i64 %108, metadata !1944, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %109, metadata !1943, metadata !DIExpression()), !dbg !3032
  %110 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %84, i64 %108, i32 2, !dbg !3049
  %111 = load i32, i32* %110, align 4, !dbg !3049, !tbaa !1244
  %112 = icmp slt i32 %111, 0, !dbg !3050
  br i1 %112, label %113, label %121, !dbg !3051

113:                                              ; preds = %107
  %114 = sext i32 %111 to i64, !dbg !3052
  %115 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %84, i64 %108, i32 1, !dbg !3053
  %116 = load i32, i32* %115, align 4, !dbg !3053, !tbaa !1309
  %117 = add nsw i32 %116, -1, !dbg !3054
  %118 = sext i32 %117 to i64, !dbg !3055
  %119 = mul nsw i64 %118, %114, !dbg !3056
  %120 = add nsw i64 %119, %109, !dbg !3057
  call void @llvm.dbg.value(metadata i64 %120, metadata !1943, metadata !DIExpression()), !dbg !3032
  br label %121, !dbg !3058

121:                                              ; preds = %113, %107
  %122 = phi i64 [ %120, %113 ], [ %109, %107 ], !dbg !3032
  call void @llvm.dbg.value(metadata i64 %122, metadata !1943, metadata !DIExpression()), !dbg !3032
  %123 = add nuw nsw i64 %108, 1, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %123, metadata !1944, metadata !DIExpression()), !dbg !3034
  %124 = icmp eq i64 %123, %85, !dbg !3060
  br i1 %124, label %125, label %107, !dbg !3035, !llvm.loop !3061

125:                                              ; preds = %121, %79
  %126 = phi i8 [ %81, %79 ], [ %106, %121 ]
  %127 = phi i64 [ 0, %79 ], [ %101, %121 ]
  %128 = phi i64 [ 0, %79 ], [ %122, %121 ], !dbg !3032
  %129 = zext i8 %126 to i64, !dbg !3031
  %130 = add nuw nsw i64 %129, 7, !dbg !3063
  %131 = lshr i64 %130, 3, !dbg !3064
  %132 = add nsw i64 %127, 1, !dbg !3065
  call void @llvm.dbg.value(metadata i64 %132, metadata !1927, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !3066
  %133 = sub i64 %132, %128, !dbg !3068
  %134 = mul i64 %133, %131, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %134, metadata !2914, metadata !DIExpression()), !dbg !3069
  %135 = icmp eq i64 %134, 0, !dbg !3070
  br i1 %135, label %136, label %137, !dbg !3073

136:                                              ; preds = %125
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !3074
  call void @abort() #8, !dbg !3074
  br label %137, !dbg !3074

137:                                              ; preds = %136, %125
  call void @llvm.dbg.value(metadata i64 0, metadata !2917, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3069
  call void @llvm.dbg.value(metadata i64 %134, metadata !2917, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3069
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %6, i64 0, i32 0, !dbg !3076
  store i64 0, i64* %138, align 8, !dbg !3076, !tbaa.struct !1506
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %6, i64 0, i32 1, !dbg !3076
  store i64 %134, i64* %139, align 8, !dbg !3076, !tbaa.struct !3077
  call void @_ZN6Halide7Runtime8Internal5Metal16did_modify_rangeEPNS2_10mtl_bufferENS2_7NSRangeE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %27, %"struct.Halide::Runtime::Internal::Metal::NSRange"* nonnull byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 8 %6) #9, !dbg !3078
  br label %140, !dbg !3079

140:                                              ; preds = %137, %73
  %141 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 3, !dbg !3080
  %142 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %141, align 8, !dbg !3080, !tbaa !2715
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %142, %struct.halide_buffer_t* %1) #9, !dbg !3081
  %143 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %143, metadata !2918, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3083
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3083
  %144 = call i8* @malloc(i64 1024) #8, !dbg !3085
  %145 = icmp eq i8* %144, null, !dbg !3086
  br i1 %145, label %148, label %146, !dbg !3087

146:                                              ; preds = %140
  %147 = getelementptr inbounds i8, i8* %144, i64 1023, !dbg !3088
  store i8 0, i8* %147, align 1, !dbg !3089, !tbaa !1134
  br label %148, !dbg !3090

148:                                              ; preds = %140, %146
  %149 = phi i8* [ %147, %146 ], [ null, %140 ], !dbg !3091
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3092
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.71, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3092
  %150 = call i8* @halide_string_to_string(i8* %144, i8* %149, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !3094
  %151 = sub i64 %143, %7, !dbg !3095
  %152 = uitofp i64 %151 to double, !dbg !3096
  %153 = fdiv double %152, 1.000000e+06, !dbg !3097
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2147, metadata !DIExpression()) #10, !dbg !3098
  call void @llvm.dbg.value(metadata double %153, metadata !2150, metadata !DIExpression()) #10, !dbg !3098
  %154 = call i8* @halide_double_to_string(i8* %150, i8* %149, double %153, i32 1) #8, !dbg !3100
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3101
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3101
  %155 = call i8* @halide_string_to_string(i8* %154, i8* %149, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !3103
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3104
  br i1 %145, label %156, label %157, !dbg !3106

156:                                              ; preds = %148
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !3107
  br label %163, !dbg !3108

157:                                              ; preds = %148
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3109
  %158 = ptrtoint i8* %155 to i64, !dbg !3111
  %159 = ptrtoint i8* %144 to i64, !dbg !3111
  %160 = add i64 %158, 1, !dbg !3111
  %161 = sub i64 %160, %159, !dbg !3112
  %162 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %144, i64 %161) #8, !dbg !3113
  call void @halide_print(i8* %0, i8* nonnull %144) #8, !dbg !3114
  br label %163

163:                                              ; preds = %157, %156
  call void @free(i8* %144) #8, !dbg !3115
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %22) #10, !dbg !3116
  br label %164

164:                                              ; preds = %2, %163
  %165 = phi i32 [ 0, %163 ], [ %10, %2 ], !dbg !2919
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2169, metadata !DIExpression()) #10, !dbg !3117
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3) #8, !dbg !3119
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #10, !dbg !3116
  ret i32 %165, !dbg !3116
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_copy_to_host(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3120 {
  %3 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3122, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3123, metadata !DIExpression()), !dbg !3128
  %5 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %5, metadata !3124, metadata !DIExpression()), !dbg !3128
  %6 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3 to i8*, !dbg !3130
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #10, !dbg !3130
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !3125, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2041, metadata !DIExpression()) #10, !dbg !3132
  call void @llvm.dbg.value(metadata i8* %0, metadata !2044, metadata !DIExpression()) #10, !dbg !3132
  call void @llvm.dbg.value(metadata i1 true, metadata !2045, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !3132
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3, i8* %0, i1 zeroext true) #8, !dbg !3134
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 4, !dbg !3135
  %8 = load i32, i32* %7, align 8, !dbg !3135, !tbaa !1837
  %9 = icmp eq i32 %8, 0, !dbg !3137
  br i1 %9, label %10, label %63, !dbg !3138

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, i64 0, i32 3, !dbg !3139
  %12 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %11, align 8, !dbg !3139, !tbaa !2715
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %12, %struct.halide_buffer_t* %1) #9, !dbg !3140
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !3141
  %14 = load i8*, i8** %13, align 8, !dbg !3141, !tbaa !1189
  %15 = icmp eq i8* %14, null, !dbg !3141
  br i1 %15, label %20, label %16, !dbg !3141

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !3141
  %18 = load i64, i64* %17, align 8, !dbg !3141, !tbaa !1198
  %19 = icmp eq i64 %18, 0, !dbg !3141
  br i1 %19, label %20, label %21, !dbg !3144

20:                                               ; preds = %16, %10
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.72, i64 0, i64 0)) #8, !dbg !3145
  call void @abort() #8, !dbg !3145
  br label %21, !dbg !3145

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !3147
  %23 = load i32, i32* %22, align 4, !dbg !3147, !tbaa !1233
  %24 = icmp slt i32 %23, 17, !dbg !3147
  br i1 %24, label %28, label %25, !dbg !3150

25:                                               ; preds = %21
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.73, i64 0, i64 0)) #8, !dbg !3151
  call void @abort() #8, !dbg !3151
  %26 = load i32, i32* %22, align 4, !dbg !3153, !tbaa !1233
  %27 = icmp sgt i32 %26, 16, !dbg !3155
  br i1 %27, label %63, label %28, !dbg !3156

28:                                               ; preds = %21, %25
  %29 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*, !dbg !3157
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %29) #10, !dbg !3157
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %4, metadata !3126, metadata !DIExpression()), !dbg !3158
  call void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %1) #9, !dbg !3159
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 0, !dbg !3160
  %31 = load i64, i64* %30, align 8, !dbg !3160, !tbaa !1051
  %32 = inttoptr i64 %31 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !3161
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %32, i64 0, i32 0, !dbg !3162
  %34 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %33, align 8, !dbg !3162, !tbaa !2114
  %35 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %34) #9, !dbg !3163
  %36 = ptrtoint i8* %35 to i64, !dbg !3164
  %37 = load i64, i64* %30, align 8, !dbg !3165, !tbaa !1051
  %38 = inttoptr i64 %37 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !3166
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %38, i64 0, i32 1, !dbg !3167
  %40 = load i64, i64* %39, align 8, !dbg !3167, !tbaa !2118
  %41 = add i64 %40, %36, !dbg !3168
  store i64 %41, i64* %30, align 8, !dbg !3169, !tbaa !1051
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i8* %0) #9, !dbg !3170
  %42 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !3171
  call void @llvm.dbg.value(metadata i64 %42, metadata !3127, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !3172
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3172
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3172
  %43 = call i8* @malloc(i64 1024) #8, !dbg !3174
  %44 = icmp eq i8* %43, null, !dbg !3175
  br i1 %44, label %47, label %45, !dbg !3176

45:                                               ; preds = %28
  %46 = getelementptr inbounds i8, i8* %43, i64 1023, !dbg !3177
  store i8 0, i8* %46, align 1, !dbg !3178, !tbaa !1134
  br label %47, !dbg !3179

47:                                               ; preds = %28, %45
  %48 = phi i8* [ %46, %45 ], [ null, %28 ], !dbg !3180
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3181
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3181
  %49 = call i8* @halide_string_to_string(i8* %43, i8* %48, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i64 0, i64 0)) #8, !dbg !3183
  %50 = sub i64 %42, %5, !dbg !3184
  %51 = uitofp i64 %50 to double, !dbg !3185
  %52 = fdiv double %51, 1.000000e+06, !dbg !3186
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2147, metadata !DIExpression()) #10, !dbg !3187
  call void @llvm.dbg.value(metadata double %52, metadata !2150, metadata !DIExpression()) #10, !dbg !3187
  %53 = call i8* @halide_double_to_string(i8* %49, i8* %48, double %52, i32 1) #8, !dbg !3189
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3190
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3190
  %54 = call i8* @halide_string_to_string(i8* %53, i8* %48, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !3192
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3193
  br i1 %44, label %55, label %56, !dbg !3195

55:                                               ; preds = %47
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !3196
  br label %62, !dbg !3197

56:                                               ; preds = %47
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3198
  %57 = ptrtoint i8* %54 to i64, !dbg !3200
  %58 = ptrtoint i8* %43 to i64, !dbg !3200
  %59 = add i64 %57, 1, !dbg !3200
  %60 = sub i64 %59, %58, !dbg !3201
  %61 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %43, i64 %60) #8, !dbg !3202
  call void @halide_print(i8* %0, i8* nonnull %43) #8, !dbg !3203
  br label %62

62:                                               ; preds = %56, %55
  call void @free(i8* %43) #8, !dbg !3204
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %29) #10, !dbg !3205
  br label %63

63:                                               ; preds = %25, %2, %62
  %64 = phi i32 [ 0, %62 ], [ %8, %2 ], [ -1, %25 ], !dbg !3128
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %3, metadata !2169, metadata !DIExpression()) #10, !dbg !3206
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %3) #8, !dbg !3208
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #10, !dbg !3205
  ret i32 %64, !dbg !3205
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_run(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i64* %10, i8** %11, i8* %12, i32 %13, float* %14, i32 %15, i32 %16) local_unnamed_addr #4 !dbg !332 {
  %18 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  %19 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", align 8
  %20 = alloca [4096 x i8], align 1
  %21 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %22 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !928, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i8* %1, metadata !929, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i8* %2, metadata !930, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %3, metadata !931, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %4, metadata !932, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %5, metadata !933, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %6, metadata !934, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %7, metadata !935, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %8, metadata !936, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %9, metadata !937, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64* %10, metadata !938, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i8** %11, metadata !939, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i8* %12, metadata !940, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %13, metadata !941, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata float* %14, metadata !942, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %15, metadata !943, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %16, metadata !944, metadata !DIExpression()), !dbg !3209
  %23 = tail call i64 @halide_current_time_ns(i8* %0) #8, !dbg !3210
  call void @llvm.dbg.value(metadata i64 %23, metadata !945, metadata !DIExpression()), !dbg !3209
  %24 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18 to i8*, !dbg !3211
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %24) #10, !dbg !3211
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, metadata !946, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, metadata !2041, metadata !DIExpression()) #10, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %0, metadata !2044, metadata !DIExpression()) #10, !dbg !3213
  call void @llvm.dbg.value(metadata i1 true, metadata !2045, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !3213
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %18, i8* %0, i1 zeroext true) #8, !dbg !3215
  %25 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, i64 0, i32 4, !dbg !3216
  %26 = load i32, i32* %25, align 8, !dbg !3216, !tbaa !1837
  %27 = icmp eq i32 %26, 0, !dbg !3218
  br i1 %27, label %28, label %503, !dbg !3219

28:                                               ; preds = %17
  %29 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, i64 0, i32 3, !dbg !3220
  %30 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %29, align 8, !dbg !3220, !tbaa !2715
  %31 = call i64 @strlen(i8* %2) #8, !dbg !3221
  %32 = call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcm(%struct.halide_metal_command_queue* %30, i8* %2, i64 %31) #9, !dbg !3222
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %32, metadata !963, metadata !DIExpression()), !dbg !3209
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %32, null, !dbg !3223
  br i1 %33, label %34, label %48, !dbg !3225

34:                                               ; preds = %28
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1688, metadata !DIExpression()) #10, !dbg !3226
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()) #10, !dbg !3226
  call void @llvm.dbg.value(metadata i8* null, metadata !1692, metadata !DIExpression()) #10, !dbg !3226
  %35 = call i8* @malloc(i64 1024) #8, !dbg !3229
  %36 = icmp eq i8* %35, null, !dbg !3230
  br i1 %36, label %37, label %39, !dbg !3231

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !3232
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3232
  %38 = call i8* @halide_string_to_string(i8* %35, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i64 0, i64 0)) #8, !dbg !3234
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !3235
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !3237
  br label %47, !dbg !3238

39:                                               ; preds = %34
  %40 = getelementptr inbounds i8, i8* %35, i64 1023, !dbg !3239
  store i8 0, i8* %40, align 1, !dbg !3240, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !3232
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3232
  %41 = call i8* @halide_string_to_string(i8* nonnull %35, i8* nonnull %40, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.75, i64 0, i64 0)) #8, !dbg !3234
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !3235
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1722, metadata !DIExpression()) #10, !dbg !3241
  %42 = ptrtoint i8* %41 to i64, !dbg !3243
  %43 = ptrtoint i8* %35 to i64, !dbg !3243
  %44 = add i64 %42, 1, !dbg !3243
  %45 = sub i64 %44, %43, !dbg !3244
  %46 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %35, i64 %45) #8, !dbg !3245
  call void @halide_error(i8* %0, i8* nonnull %35) #8, !dbg !3246
  br label %47

47:                                               ; preds = %39, %37
  call void @free(i8* %35) #8, !dbg !3247
  br label %503, !dbg !3248

48:                                               ; preds = %28
  %49 = call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal27new_compute_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* nonnull %32) #9, !dbg !3249
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %49, metadata !964, metadata !DIExpression()), !dbg !3209
  %50 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %49, null, !dbg !3250
  br i1 %50, label %51, label %65, !dbg !3252

51:                                               ; preds = %48
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1688, metadata !DIExpression()) #10, !dbg !3253
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()) #10, !dbg !3253
  call void @llvm.dbg.value(metadata i8* null, metadata !1692, metadata !DIExpression()) #10, !dbg !3253
  %52 = call i8* @malloc(i64 1024) #8, !dbg !3256
  %53 = icmp eq i8* %52, null, !dbg !3257
  br i1 %53, label %54, label %56, !dbg !3258

54:                                               ; preds = %51
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !3259
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.76, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3259
  %55 = call i8* @halide_string_to_string(i8* %52, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.76, i64 0, i64 0)) #8, !dbg !3261
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !3262
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !3264
  br label %64, !dbg !3265

56:                                               ; preds = %51
  %57 = getelementptr inbounds i8, i8* %52, i64 1023, !dbg !3266
  store i8 0, i8* %57, align 1, !dbg !3267, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !3259
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.76, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3259
  %58 = call i8* @halide_string_to_string(i8* nonnull %52, i8* nonnull %57, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.76, i64 0, i64 0)) #8, !dbg !3261
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !3262
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1722, metadata !DIExpression()) #10, !dbg !3268
  %59 = ptrtoint i8* %58 to i64, !dbg !3270
  %60 = ptrtoint i8* %52 to i64, !dbg !3270
  %61 = add i64 %59, 1, !dbg !3270
  %62 = sub i64 %61, %60, !dbg !3271
  %63 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %52, i64 %62) #8, !dbg !3272
  call void @halide_error(i8* %0, i8* nonnull %52) #8, !dbg !3273
  br label %64

64:                                               ; preds = %56, %54
  call void @free(i8* %52) #8, !dbg !3274
  br label %503, !dbg !3275

65:                                               ; preds = %48
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* null, metadata !965, metadata !DIExpression()), !dbg !3209
  %66 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, i64 0, i32 2, !dbg !3276
  %67 = load %struct.halide_metal_device*, %struct.halide_metal_device** %66, align 8, !dbg !3276, !tbaa !2070
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, metadata !3277, metadata !DIExpression()) #10, !dbg !3286
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %67, metadata !3280, metadata !DIExpression()) #10, !dbg !3286
  call void @llvm.dbg.value(metadata i8* %1, metadata !3281, metadata !DIExpression()) #10, !dbg !3286
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"** undef, metadata !3282, metadata !DIExpression()) #10, !dbg !3286
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2411, metadata !DIExpression()) #10, !dbg !3288
  call void @llvm.dbg.value(metadata %struct.halide_mutex* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0), metadata !2414, metadata !DIExpression()) #10, !dbg !3288
  call void @llvm.dbg.value(metadata %struct.halide_mutex* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0), metadata !3283, metadata !DIExpression()) #10, !dbg !3286
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0)) #8, !dbg !3290
  %68 = ptrtoint i8* %1 to i64, !dbg !3291
  %69 = trunc i64 %68 to i32, !dbg !3291
  call void @llvm.dbg.value(metadata i32 %69, metadata !3284, metadata !DIExpression()) #10, !dbg !3286
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, metadata !2436, metadata !DIExpression()) #10, !dbg !3292
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %67, metadata !2439, metadata !DIExpression()) #10, !dbg !3292
  call void @llvm.dbg.value(metadata i32 %69, metadata !2440, metadata !DIExpression()) #10, !dbg !3292
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"*** undef, metadata !2441, metadata !DIExpression()) #10, !dbg !3292
  call void @llvm.dbg.value(metadata i32 0, metadata !2442, metadata !DIExpression()) #10, !dbg !3292
  %70 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 1), align 8, !dbg !3295, !tbaa !2453
  %71 = icmp eq i32 %70, 0, !dbg !3296
  br i1 %71, label %109, label %72, !dbg !3297

72:                                               ; preds = %65
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %67, metadata !2456, metadata !DIExpression()) #10, !dbg !3298
  call void @llvm.dbg.value(metadata i32 %69, metadata !2459, metadata !DIExpression()) #10, !dbg !3298
  call void @llvm.dbg.value(metadata i32 %70, metadata !2460, metadata !DIExpression()) #10, !dbg !3298
  %73 = ptrtoint %struct.halide_metal_device* %67 to i64, !dbg !3300
  %74 = and i64 %68, 4294967295, !dbg !3301
  %75 = add i64 %74, %73, !dbg !3302
  call void @llvm.dbg.value(metadata i64 %75, metadata !2461, metadata !DIExpression()) #10, !dbg !3298
  %76 = mul i64 %75, -7046029254386353131, !dbg !3303
  %77 = sub i32 64, %70, !dbg !3304
  %78 = zext i32 %77 to i64, !dbg !3305
  %79 = lshr i64 %76, %78, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %79, metadata !2443, metadata !DIExpression()) #10, !dbg !3292
  call void @llvm.dbg.value(metadata i32 0, metadata !2444, metadata !DIExpression()) #10, !dbg !3306
  %80 = shl nuw i32 1, %70, !dbg !3307
  %81 = icmp eq i32 %70, 31, !dbg !3308
  br i1 %81, label %109, label %82, !dbg !3309

82:                                               ; preds = %72
  %83 = add nsw i32 %80, -1
  %84 = sext i32 %83 to i64
  %85 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 2), align 8, !tbaa !2476
  %86 = sext i32 %80 to i64, !dbg !3309
  %87 = icmp sgt i32 %80, 1, !dbg !3309
  %88 = select i1 %87, i32 %80, i32 1, !dbg !3309
  %89 = zext i32 %88 to i64, !dbg !3308
  br label %93, !dbg !3309

90:                                               ; preds = %101
  call void @llvm.dbg.value(metadata i64 %107, metadata !2444, metadata !DIExpression()) #10, !dbg !3306
  %91 = icmp slt i64 %107, %86, !dbg !3308
  %92 = icmp eq i64 %107, %89, !dbg !3308
  br i1 %92, label %109, label %93, !dbg !3309, !llvm.loop !3310

93:                                               ; preds = %90, %82
  %94 = phi i64 [ 0, %82 ], [ %107, %90 ]
  %95 = phi i1 [ true, %82 ], [ %91, %90 ]
  call void @llvm.dbg.value(metadata i64 %94, metadata !2444, metadata !DIExpression()) #10, !dbg !3306
  %96 = add i64 %94, %79, !dbg !3312
  %97 = and i64 %96, %84, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %97, metadata !2446, metadata !DIExpression()) #10, !dbg !3314
  %98 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %85, i64 %97, i32 2, !dbg !3315
  %99 = load i32, i32* %98, align 8, !dbg !3315, !tbaa !2484
  %100 = icmp eq i32 %99, 0, !dbg !3316
  br i1 %100, label %109, label %101, !dbg !3317

101:                                              ; preds = %93
  %102 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %85, i64 %97, i32 0, !dbg !3318
  %103 = load %struct.halide_metal_device*, %struct.halide_metal_device** %102, align 8, !dbg !3318, !tbaa !2490
  %104 = icmp eq %struct.halide_metal_device* %103, %67, !dbg !3319
  %105 = icmp eq i32 %99, %69
  %106 = and i1 %105, %104, !dbg !3320
  %107 = add nuw nsw i64 %94, 1, !dbg !3321
  call void @llvm.dbg.value(metadata i64 %107, metadata !2444, metadata !DIExpression()) #10, !dbg !3306
  br i1 %106, label %108, label %90, !dbg !3320

108:                                              ; preds = %101
  br i1 %95, label %110, label %109, !dbg !3322

109:                                              ; preds = %90, %93, %108, %65, %72
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2583, metadata !DIExpression()) #10, !dbg !3323
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0)) #8, !dbg !3325
  call void @llvm.dbg.value(metadata i1 true, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3209
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %112, metadata !965, metadata !DIExpression()), !dbg !3209
  br label %114, !dbg !3326

110:                                              ; preds = %108
  %111 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %85, i64 %97, i32 1, !dbg !3329
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %111, metadata !3285, metadata !DIExpression()) #10, !dbg !3286
  %112 = load %"struct.Halide::Runtime::Internal::Metal::mtl_library"*, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %111, align 8, !dbg !3330, !tbaa !1480
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2583, metadata !DIExpression()) #10, !dbg !3323
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0)) #8, !dbg !3325
  call void @llvm.dbg.value(metadata i1 true, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3209
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %112, metadata !965, metadata !DIExpression()), !dbg !3209
  %113 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %112, null, !dbg !3326
  br i1 %113, label %114, label %115, !dbg !3326

114:                                              ; preds = %109, %110
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.77, i64 0, i64 0)) #8, !dbg !3332
  call void @abort() #8, !dbg !3332
  br label %115, !dbg !3332

115:                                              ; preds = %110, %114
  %116 = phi %"struct.Halide::Runtime::Internal::Metal::mtl_library"* [ %112, %110 ], [ null, %114 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_library"* %112, metadata !965, metadata !DIExpression()), !dbg !3209
  %117 = call i64 @strlen(i8* %2) #8, !dbg !3334
  %118 = call %"struct.Halide::Runtime::Internal::Metal::mtl_function"* @_ZN6Halide7Runtime8Internal5Metal22new_function_with_nameEPNS2_11mtl_libraryEPKcm(%"struct.Halide::Runtime::Internal::Metal::mtl_library"* %116, i8* %2, i64 %117) #9, !dbg !3335
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %118, metadata !967, metadata !DIExpression()), !dbg !3209
  %119 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_function"* %118, null, !dbg !3336
  br i1 %119, label %120, label %144, !dbg !3338

120:                                              ; preds = %115
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1688, metadata !DIExpression()) #10, !dbg !3339
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()) #10, !dbg !3339
  call void @llvm.dbg.value(metadata i8* null, metadata !1692, metadata !DIExpression()) #10, !dbg !3339
  %121 = call i8* @malloc(i64 1024) #8, !dbg !3342
  %122 = icmp eq i8* %121, null, !dbg !3343
  br i1 %122, label %125, label %123, !dbg !3344

123:                                              ; preds = %120
  %124 = getelementptr inbounds i8, i8* %121, i64 1023, !dbg !3345
  store i8 0, i8* %124, align 1, !dbg !3346, !tbaa !1134
  br label %125, !dbg !3347

125:                                              ; preds = %120, %123
  %126 = phi i8* [ %124, %123 ], [ null, %120 ], !dbg !3348
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !3349
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.78, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3349
  %127 = call i8* @halide_string_to_string(i8* %121, i8* %126, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.78, i64 0, i64 0)) #8, !dbg !3351
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !3352
  call void @llvm.dbg.value(metadata i8* %2, metadata !1702, metadata !DIExpression()) #10, !dbg !3352
  %128 = icmp eq i8* %2, null, !dbg !3354
  br i1 %128, label %129, label %131, !dbg !3355

129:                                              ; preds = %125
  %130 = call i8* @halide_string_to_string(i8* %127, i8* %126, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i64 0, i64 0)) #8, !dbg !3356
  br label %133, !dbg !3358

131:                                              ; preds = %125
  %132 = call i8* @halide_string_to_string(i8* %127, i8* %126, i8* nonnull %2) #8, !dbg !3359
  br label %133

133:                                              ; preds = %129, %131
  %134 = phi i8* [ %132, %131 ], [ %130, %129 ], !dbg !3360
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !3361
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.79, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3361
  %135 = call i8* @halide_string_to_string(i8* %134, i8* %126, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.79, i64 0, i64 0)) #8, !dbg !3363
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !3364
  br i1 %122, label %136, label %137, !dbg !3366

136:                                              ; preds = %133
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !3367
  br label %143, !dbg !3368

137:                                              ; preds = %133
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1722, metadata !DIExpression()) #10, !dbg !3369
  %138 = ptrtoint i8* %135 to i64, !dbg !3371
  %139 = ptrtoint i8* %121 to i64, !dbg !3371
  %140 = add i64 %138, 1, !dbg !3371
  %141 = sub i64 %140, %139, !dbg !3372
  %142 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %121, i64 %141) #8, !dbg !3373
  call void @halide_error(i8* %0, i8* nonnull %121) #8, !dbg !3374
  br label %143

143:                                              ; preds = %137, %136
  call void @free(i8* %121) #8, !dbg !3375
  br label %503, !dbg !3376

144:                                              ; preds = %115
  %145 = load %struct.halide_metal_device*, %struct.halide_metal_device** %66, align 8, !dbg !3377, !tbaa !2070
  %146 = call %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* @_ZN6Halide7Runtime8Internal5Metal40new_compute_pipeline_state_with_functionEP19halide_metal_devicePNS2_12mtl_functionE(%struct.halide_metal_device* %145, %"struct.Halide::Runtime::Internal::Metal::mtl_function"* nonnull %118) #9, !dbg !3378
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %146, metadata !968, metadata !DIExpression()), !dbg !3209
  %147 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %146, null, !dbg !3379
  br i1 %147, label %148, label %162, !dbg !3381

148:                                              ; preds = %144
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1688, metadata !DIExpression()) #10, !dbg !3382
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()) #10, !dbg !3382
  call void @llvm.dbg.value(metadata i8* null, metadata !1692, metadata !DIExpression()) #10, !dbg !3382
  %149 = call i8* @malloc(i64 1024) #8, !dbg !3385
  %150 = icmp eq i8* %149, null, !dbg !3386
  br i1 %150, label %151, label %153, !dbg !3387

151:                                              ; preds = %148
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !3388
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.80, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3388
  %152 = call i8* @halide_string_to_string(i8* %149, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.80, i64 0, i64 0)) #8, !dbg !3390
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !3391
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !3393
  br label %161, !dbg !3394

153:                                              ; preds = %148
  %154 = getelementptr inbounds i8, i8* %149, i64 1023, !dbg !3395
  store i8 0, i8* %154, align 1, !dbg !3396, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !3388
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.80, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3388
  %155 = call i8* @halide_string_to_string(i8* nonnull %149, i8* nonnull %154, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.80, i64 0, i64 0)) #8, !dbg !3390
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !3391
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1722, metadata !DIExpression()) #10, !dbg !3397
  %156 = ptrtoint i8* %155 to i64, !dbg !3399
  %157 = ptrtoint i8* %149 to i64, !dbg !3399
  %158 = add i64 %156, 1, !dbg !3399
  %159 = sub i64 %158, %157, !dbg !3400
  %160 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %149, i64 %159) #8, !dbg !3401
  call void @halide_error(i8* %0, i8* nonnull %149) #8, !dbg !3402
  br label %161

161:                                              ; preds = %153, %151
  call void @free(i8* %149) #8, !dbg !3403
  br label %503, !dbg !3404

162:                                              ; preds = %144
  %163 = call i64 @_ZN6Halide7Runtime8Internal5Metal37get_max_total_threads_per_threadgroupEPNS2_26mtl_compute_pipeline_stateE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* nonnull %146) #9, !dbg !3405
  call void @llvm.dbg.value(metadata i64 %163, metadata !969, metadata !DIExpression()), !dbg !3209
  %164 = mul nsw i32 %7, %6, !dbg !3406
  %165 = mul nsw i32 %164, %8, !dbg !3408
  %166 = sext i32 %165 to i64, !dbg !3409
  %167 = icmp slt i64 %163, %166, !dbg !3410
  br i1 %167, label %168, label %211, !dbg !3411

168:                                              ; preds = %162
  %169 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19 to i8*, !dbg !3412
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %169) #10, !dbg !3412
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1688, metadata !DIExpression()) #10, !dbg !3414
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()) #10, !dbg !3414
  call void @llvm.dbg.value(metadata i8* null, metadata !1692, metadata !DIExpression()) #10, !dbg !3414
  %170 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, i64 0, i32 3, !dbg !3416
  store i8* %0, i8** %170, align 8, !dbg !3416, !tbaa !3417
  %171 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, i64 0, i32 4, !dbg !3419
  store i8 1, i8* %171, align 8, !dbg !3419, !tbaa !3420
  %172 = call i8* @malloc(i64 1024) #8, !dbg !3421
  %173 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, i64 0, i32 0, !dbg !3422
  store i8* %172, i8** %173, align 8, !dbg !3423, !tbaa !3424
  %174 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, i64 0, i32 1, !dbg !3425
  %175 = icmp eq i8* %172, null, !dbg !3426
  br i1 %175, label %178, label %176, !dbg !3427

176:                                              ; preds = %168
  %177 = getelementptr inbounds i8, i8* %172, i64 1023, !dbg !3428
  store i8 0, i8* %177, align 1, !dbg !3429, !tbaa !1134
  br label %178, !dbg !3430

178:                                              ; preds = %168, %176
  %179 = phi i8* [ %177, %176 ], [ null, %168 ], !dbg !3431
  %180 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, i64 0, i32 2, !dbg !3432
  store i8* %179, i8** %180, align 8, !dbg !3434
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1699, metadata !DIExpression()) #10, !dbg !3435
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3435
  %181 = call i8* @halide_string_to_string(i8* %172, i8* %179, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i64 0, i64 0)) #8, !dbg !3437
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !3438, metadata !DIExpression()) #10, !dbg !3442
  call void @llvm.dbg.value(metadata i32 %6, metadata !3441, metadata !DIExpression()) #10, !dbg !3442
  %182 = sext i32 %6 to i64, !dbg !3444
  %183 = call i8* @halide_int64_to_string(i8* %181, i8* %179, i64 %182, i32 1) #8, !dbg !3445
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1699, metadata !DIExpression()) #10, !dbg !3446
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3446
  %184 = call i8* @halide_string_to_string(i8* %183, i8* %179, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i64 0, i64 0)) #8, !dbg !3448
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !3438, metadata !DIExpression()) #10, !dbg !3449
  call void @llvm.dbg.value(metadata i32 %7, metadata !3441, metadata !DIExpression()) #10, !dbg !3449
  %185 = sext i32 %7 to i64, !dbg !3451
  %186 = call i8* @halide_int64_to_string(i8* %184, i8* %179, i64 %185, i32 1) #8, !dbg !3452
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1699, metadata !DIExpression()) #10, !dbg !3453
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3453
  %187 = call i8* @halide_string_to_string(i8* %186, i8* %179, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i64 0, i64 0)) #8, !dbg !3455
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !3438, metadata !DIExpression()) #10, !dbg !3456
  call void @llvm.dbg.value(metadata i32 %8, metadata !3441, metadata !DIExpression()) #10, !dbg !3456
  %188 = sext i32 %8 to i64, !dbg !3458
  %189 = call i8* @halide_int64_to_string(i8* %187, i8* %179, i64 %188, i32 1) #8, !dbg !3459
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1699, metadata !DIExpression()) #10, !dbg !3460
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3460
  %190 = call i8* @halide_string_to_string(i8* %189, i8* %179, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0)) #8, !dbg !3462
  store i8* %190, i8** %174, align 8, !dbg !3463, !tbaa !3464
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !3438, metadata !DIExpression()) #10, !dbg !3465
  call void @llvm.dbg.value(metadata i32 %165, metadata !3441, metadata !DIExpression()) #10, !dbg !3465
  %191 = call i8* @halide_int64_to_string(i8* %190, i8* %179, i64 %166, i32 1) #8, !dbg !3467
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1699, metadata !DIExpression()) #10, !dbg !3468
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3468
  %192 = call i8* @halide_string_to_string(i8* %191, i8* %179, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i64 0, i64 0)) #8, !dbg !3470
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !2089, metadata !DIExpression()) #10, !dbg !3471
  call void @llvm.dbg.value(metadata i64 %163, metadata !2092, metadata !DIExpression()) #10, !dbg !3471
  %193 = call i8* @halide_int64_to_string(i8* %192, i8* %179, i64 %163, i32 1) #8, !dbg !3473
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1699, metadata !DIExpression()) #10, !dbg !3474
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.86, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3474
  %194 = call i8* @halide_string_to_string(i8* %193, i8* %179, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.86, i64 0, i64 0)) #8, !dbg !3476
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %19, metadata !1708, metadata !DIExpression()) #10, !dbg !3477
  br i1 %175, label %195, label %196, !dbg !3479

195:                                              ; preds = %178
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !3480
  br label %204, !dbg !3481

196:                                              ; preds = %178
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1722, metadata !DIExpression()) #10, !dbg !3482
  %197 = ptrtoint i8* %194 to i64, !dbg !3484
  %198 = ptrtoint i8* %172 to i64, !dbg !3484
  %199 = add i64 %197, 1, !dbg !3484
  %200 = sub i64 %199, %198, !dbg !3485
  %201 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %172, i64 %200) #8, !dbg !3486
  %202 = load i8*, i8** %170, align 8, !dbg !3487, !tbaa !3417
  %203 = load i8*, i8** %173, align 8, !dbg !3488, !tbaa !3424
  call void @halide_error(i8* %202, i8* %203) #8, !dbg !3489
  br label %204

204:                                              ; preds = %196, %195
  %205 = load i8, i8* %171, align 8, !dbg !3490, !tbaa !3420, !range !3013
  %206 = icmp eq i8 %205, 0, !dbg !3490
  br i1 %206, label %209, label %207, !dbg !3491

207:                                              ; preds = %204
  %208 = load i8*, i8** %173, align 8, !dbg !3492, !tbaa !3424
  call void @free(i8* %208) #8, !dbg !3493
  br label %209, !dbg !3494

209:                                              ; preds = %204, %207
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %169) #10, !dbg !3412
  call void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %49) #9, !dbg !3495
  %210 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %146 to i8*, !dbg !3496
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* nonnull %210) #9, !dbg !3497
  br label %503, !dbg !3498

211:                                              ; preds = %162
  call void @_ZN6Halide7Runtime8Internal5Metal26set_compute_pipeline_stateEPNS2_27mtl_compute_command_encoderEPNS2_26mtl_compute_pipeline_stateE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %49, %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* nonnull %146) #9, !dbg !3499
  call void @llvm.dbg.value(metadata i64 0, metadata !970, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 0, metadata !971, metadata !DIExpression()), !dbg !3500
  %212 = load i64, i64* %10, align 8, !dbg !3501, !tbaa !1507
  %213 = icmp eq i64 %212, 0, !dbg !3503
  br i1 %213, label %378, label %216, !dbg !3504

214:                                              ; preds = %236
  call void @llvm.dbg.value(metadata i32 0, metadata !973, metadata !DIExpression()), !dbg !3209
  %215 = icmp eq i64 %237, 0, !dbg !3505
  br i1 %215, label %374, label %242, !dbg !3506

216:                                              ; preds = %211, %236
  %217 = phi i64 [ %240, %236 ], [ %212, %211 ]
  %218 = phi i64* [ %239, %236 ], [ %10, %211 ]
  %219 = phi i64 [ %238, %236 ], [ 0, %211 ]
  %220 = phi i64 [ %237, %236 ], [ 0, %211 ]
  call void @llvm.dbg.value(metadata i64 %219, metadata !971, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64 %220, metadata !970, metadata !DIExpression()), !dbg !3209
  %221 = getelementptr inbounds i8, i8* %12, i64 %219, !dbg !3507
  %222 = load i8, i8* %221, align 1, !dbg !3507, !tbaa !1134
  %223 = icmp eq i8 %222, 0, !dbg !3507
  br i1 %223, label %224, label %236, !dbg !3510

224:                                              ; preds = %216
  %225 = call i64 @llvm.ctpop.i64(i64 %217), !dbg !3511, !range !3515
  %226 = icmp ult i64 %225, 2, !dbg !3511
  br i1 %226, label %229, label %227, !dbg !3516

227:                                              ; preds = %224
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.87, i64 0, i64 0)) #8, !dbg !3517
  call void @abort() #8, !dbg !3517
  %228 = load i64, i64* %218, align 8, !dbg !3519, !tbaa !1507
  br label %229, !dbg !3517

229:                                              ; preds = %227, %224
  %230 = phi i64 [ %228, %227 ], [ %217, %224 ], !dbg !3519
  %231 = add i64 %220, -1, !dbg !3520
  %232 = add i64 %231, %230, !dbg !3521
  %233 = sub i64 0, %230, !dbg !3522
  %234 = and i64 %232, %233, !dbg !3523
  call void @llvm.dbg.value(metadata i64 %234, metadata !970, metadata !DIExpression()), !dbg !3209
  %235 = add i64 %234, %230, !dbg !3524
  call void @llvm.dbg.value(metadata i64 %235, metadata !970, metadata !DIExpression()), !dbg !3209
  br label %236, !dbg !3525

236:                                              ; preds = %216, %229
  %237 = phi i64 [ %220, %216 ], [ %235, %229 ], !dbg !3209
  call void @llvm.dbg.value(metadata i64 %237, metadata !970, metadata !DIExpression()), !dbg !3209
  %238 = add i64 %219, 1, !dbg !3526
  call void @llvm.dbg.value(metadata i64 %238, metadata !971, metadata !DIExpression()), !dbg !3500
  %239 = getelementptr inbounds i64, i64* %10, i64 %238, !dbg !3501
  %240 = load i64, i64* %239, align 8, !dbg !3501, !tbaa !1507
  %241 = icmp eq i64 %240, 0, !dbg !3503
  br i1 %241, label %214, label %216, !dbg !3504, !llvm.loop !3527

242:                                              ; preds = %214
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* null, metadata !974, metadata !DIExpression()), !dbg !3529
  %243 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0, !dbg !3530
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %243) #10, !dbg !3530
  call void @llvm.dbg.declare(metadata [4096 x i8]* %20, metadata !977, metadata !DIExpression()), !dbg !3531
  %244 = load %struct.halide_metal_device*, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal24metal_api_checked_deviceE, align 8, !dbg !3532, !tbaa !1480
  %245 = load %struct.halide_metal_device*, %struct.halide_metal_device** %66, align 8, !dbg !3534, !tbaa !2070
  %246 = icmp eq %struct.halide_metal_device* %244, %245, !dbg !3535
  br i1 %246, label %265, label %247, !dbg !3536

247:                                              ; preds = %242
  %248 = call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal25buffer_supports_set_bytesEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %49) #9, !dbg !3537
  %249 = zext i1 %248 to i8, !dbg !3539
  store i8 %249, i8* @_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE, align 1, !dbg !3539, !tbaa !3540
  %250 = load %struct.halide_metal_device*, %struct.halide_metal_device** %66, align 8, !dbg !3541, !tbaa !2070
  store %struct.halide_metal_device* %250, %struct.halide_metal_device** @_ZN6Halide7Runtime8Internal5Metal24metal_api_checked_deviceE, align 8, !dbg !3542, !tbaa !1480
  br i1 %248, label %251, label %265, !dbg !3543

251:                                              ; preds = %247
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !3544
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3544
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3544
  %252 = call i8* @malloc(i64 1024) #8, !dbg !3548
  %253 = icmp eq i8* %252, null, !dbg !3549
  br i1 %253, label %254, label %256, !dbg !3550

254:                                              ; preds = %251
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3551
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3551
  %255 = call i8* @halide_string_to_string(i8* %252, i8* null, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i64 0, i64 0)) #8, !dbg !3553
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3554
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !3556
  br label %264, !dbg !3557

256:                                              ; preds = %251
  %257 = getelementptr inbounds i8, i8* %252, i64 1023, !dbg !3558
  store i8 0, i8* %257, align 1, !dbg !3559, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3551
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3551
  %258 = call i8* @halide_string_to_string(i8* nonnull %252, i8* nonnull %257, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i64 0, i64 0)) #8, !dbg !3553
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3554
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3560
  %259 = ptrtoint i8* %258 to i64, !dbg !3562
  %260 = ptrtoint i8* %252 to i64, !dbg !3562
  %261 = add i64 %259, 1, !dbg !3562
  %262 = sub i64 %261, %260, !dbg !3563
  %263 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %252, i64 %262) #8, !dbg !3564
  call void @halide_print(i8* %0, i8* nonnull %252) #8, !dbg !3565
  br label %264

264:                                              ; preds = %256, %254
  call void @free(i8* %252) #8, !dbg !3566
  br label %265, !dbg !3567

265:                                              ; preds = %247, %264, %242
  %266 = add i64 %237, 3, !dbg !3568
  %267 = and i64 %266, -4, !dbg !3569
  call void @llvm.dbg.value(metadata i64 %267, metadata !982, metadata !DIExpression()), !dbg !3529
  %268 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21 to i8*, !dbg !3570
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %268) #10, !dbg !3570
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, metadata !1095, metadata !DIExpression()) #10, !dbg !3571
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3571
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3571
  %269 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 3, !dbg !3573
  store i8* %0, i8** %269, align 8, !dbg !3573, !tbaa !2953
  %270 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 4, !dbg !3574
  store i8 1, i8* %270, align 8, !dbg !3574, !tbaa !2957
  %271 = call i8* @malloc(i64 1024) #8, !dbg !3575
  %272 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 0, !dbg !3576
  store i8* %271, i8** %272, align 8, !dbg !3577, !tbaa !2961
  %273 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 1, !dbg !3578
  %274 = icmp eq i8* %271, null, !dbg !3579
  br i1 %274, label %277, label %275, !dbg !3580

275:                                              ; preds = %265
  %276 = getelementptr inbounds i8, i8* %271, i64 1023, !dbg !3581
  store i8 0, i8* %276, align 1, !dbg !3582, !tbaa !1134
  br label %277, !dbg !3583

277:                                              ; preds = %265, %275
  %278 = phi i8* [ %276, %275 ], [ null, %265 ], !dbg !3584
  %279 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, i64 0, i32 2, !dbg !3585
  store i8* %278, i8** %279, align 8, !dbg !3586
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, metadata !1112, metadata !DIExpression()) #10, !dbg !3587
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3587
  %280 = call i8* @halide_string_to_string(i8* %271, i8* %278, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i64 0, i64 0)) #8, !dbg !3589
  store i8* %280, i8** %273, align 8, !dbg !3590, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, metadata !2214, metadata !DIExpression()) #10, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %237, metadata !2217, metadata !DIExpression()) #10, !dbg !3591
  %281 = call i8* @halide_uint64_to_string(i8* %280, i8* %278, i64 %237, i32 1) #8, !dbg !3593
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, metadata !1112, metadata !DIExpression()) #10, !dbg !3594
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.90, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3594
  %282 = call i8* @halide_string_to_string(i8* %281, i8* %278, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.90, i64 0, i64 0)) #8, !dbg !3596
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, metadata !2214, metadata !DIExpression()) #10, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %267, metadata !2217, metadata !DIExpression()) #10, !dbg !3597
  %283 = call i8* @halide_uint64_to_string(i8* %282, i8* %278, i64 %267, i32 1) #8, !dbg !3599
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, metadata !1112, metadata !DIExpression()) #10, !dbg !3600
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3600
  %284 = call i8* @halide_string_to_string(i8* %283, i8* %278, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !3602
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %21, metadata !1121, metadata !DIExpression()) #10, !dbg !3603
  %285 = load i8*, i8** %272, align 8, !dbg !3605, !tbaa !2961
  %286 = icmp eq i8* %285, null, !dbg !3605
  %287 = load i8*, i8** %269, align 8, !dbg !3606, !tbaa !2953
  br i1 %286, label %288, label %289, !dbg !3607

288:                                              ; preds = %277
  call void @halide_error(i8* %287, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !3608
  br label %296, !dbg !3609

289:                                              ; preds = %277
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3610
  %290 = ptrtoint i8* %284 to i64, !dbg !3612
  %291 = ptrtoint i8* %285 to i64, !dbg !3612
  %292 = add i64 %290, 1, !dbg !3612
  %293 = sub i64 %292, %291, !dbg !3613
  %294 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %287, i8* nonnull %285, i64 %293) #8, !dbg !3614
  %295 = load i8*, i8** %272, align 8, !dbg !3615, !tbaa !2961
  call void @halide_print(i8* %287, i8* %295) #8, !dbg !3616
  br label %296

296:                                              ; preds = %289, %288
  %297 = load i8, i8* %270, align 8, !dbg !3617, !tbaa !2957, !range !3013
  %298 = icmp eq i8 %297, 0, !dbg !3617
  br i1 %298, label %301, label %299, !dbg !3618

299:                                              ; preds = %296
  %300 = load i8*, i8** %272, align 8, !dbg !3619, !tbaa !2961
  call void @free(i8* %300) #8, !dbg !3620
  br label %301, !dbg !3621

301:                                              ; preds = %296, %299
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %268) #10, !dbg !3570
  %302 = icmp ult i64 %267, %237, !dbg !3622
  br i1 %302, label %303, label %304, !dbg !3625

303:                                              ; preds = %301
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.91, i64 0, i64 0)) #8, !dbg !3626
  call void @abort() #8, !dbg !3626
  br label %304, !dbg !3626

304:                                              ; preds = %303, %301
  %305 = icmp ugt i64 %267, 4095, !dbg !3628
  %306 = load i8, i8* @_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE, align 1
  %307 = icmp eq i8 %306, 0
  %308 = or i1 %305, %307, !dbg !3630
  br i1 %308, label %309, label %328, !dbg !3630

309:                                              ; preds = %304
  %310 = load %struct.halide_metal_device*, %struct.halide_metal_device** %66, align 8, !dbg !3631, !tbaa !2070
  %311 = call %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* @_ZN6Halide7Runtime8Internal5Metal10new_bufferEP19halide_metal_devicem(%struct.halide_metal_device* %310, i64 %267) #9, !dbg !3633
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %311, metadata !974, metadata !DIExpression()), !dbg !3529
  %312 = icmp eq %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %311, null, !dbg !3634
  br i1 %312, label %313, label %326, !dbg !3636

313:                                              ; preds = %309
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1688, metadata !DIExpression()) #10, !dbg !3637
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()) #10, !dbg !3637
  call void @llvm.dbg.value(metadata i8* null, metadata !1692, metadata !DIExpression()) #10, !dbg !3637
  %314 = call i8* @malloc(i64 1024) #8, !dbg !3640
  %315 = icmp eq i8* %314, null, !dbg !3641
  br i1 %315, label %316, label %318, !dbg !3642

316:                                              ; preds = %313
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !3643
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.92, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3643
  %317 = call i8* @halide_string_to_string(i8* %314, i8* null, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !3645
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !3646
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !3648
  br label %372, !dbg !3649

318:                                              ; preds = %313
  %319 = getelementptr inbounds i8, i8* %314, i64 1023, !dbg !3650
  store i8 0, i8* %319, align 1, !dbg !3651, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !3643
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.92, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !3643
  %320 = call i8* @halide_string_to_string(i8* nonnull %314, i8* nonnull %319, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !3645
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !3646
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1722, metadata !DIExpression()) #10, !dbg !3652
  %321 = ptrtoint i8* %320 to i64, !dbg !3654
  %322 = ptrtoint i8* %314 to i64, !dbg !3654
  %323 = add i64 %321, 1, !dbg !3654
  %324 = sub i64 %323, %322, !dbg !3655
  %325 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %314, i64 %324) #8, !dbg !3656
  call void @halide_error(i8* %0, i8* nonnull %314) #8, !dbg !3657
  br label %372

326:                                              ; preds = %309
  %327 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* nonnull %311) #9, !dbg !3658
  call void @llvm.dbg.value(metadata i8* %327, metadata !981, metadata !DIExpression()), !dbg !3529
  br label %328

328:                                              ; preds = %304, %326
  %329 = phi %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* [ %311, %326 ], [ null, %304 ], !dbg !3529
  %330 = phi i8* [ %327, %326 ], [ %243, %304 ], !dbg !3659
  call void @llvm.dbg.value(metadata i8* %330, metadata !981, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %329, metadata !974, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 0, metadata !983, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 0, metadata !984, metadata !DIExpression()), !dbg !3660
  %331 = load i64, i64* %10, align 8, !dbg !3661, !tbaa !1507
  %332 = icmp eq i64 %331, 0, !dbg !3663
  br i1 %332, label %333, label %336, !dbg !3664

333:                                              ; preds = %355, %328
  %334 = phi i64 [ 0, %328 ], [ %356, %355 ], !dbg !3665
  %335 = icmp eq i64 %334, %237, !dbg !3666
  br i1 %335, label %362, label %361, !dbg !3669

336:                                              ; preds = %328, %355
  %337 = phi i64 [ %359, %355 ], [ %331, %328 ]
  %338 = phi i64* [ %358, %355 ], [ %10, %328 ]
  %339 = phi i64 [ %357, %355 ], [ 0, %328 ]
  %340 = phi i64 [ %356, %355 ], [ 0, %328 ]
  call void @llvm.dbg.value(metadata i64 %339, metadata !984, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %340, metadata !983, metadata !DIExpression()), !dbg !3529
  %341 = getelementptr inbounds i8, i8* %12, i64 %339, !dbg !3670
  %342 = load i8, i8* %341, align 1, !dbg !3670, !tbaa !1134
  %343 = icmp eq i8 %342, 0, !dbg !3670
  br i1 %343, label %344, label %355, !dbg !3673

344:                                              ; preds = %336
  %345 = getelementptr inbounds i8, i8* %330, i64 %340, !dbg !3674
  %346 = getelementptr inbounds i8*, i8** %11, i64 %339, !dbg !3676
  %347 = load i8*, i8** %346, align 8, !dbg !3676, !tbaa !1480
  %348 = call i8* @memcpy(i8* %345, i8* %347, i64 %337) #8, !dbg !3677
  %349 = load i64, i64* %338, align 8, !dbg !3678, !tbaa !1507
  %350 = add i64 %340, -1, !dbg !3679
  %351 = add i64 %350, %349, !dbg !3680
  %352 = sub i64 0, %349, !dbg !3681
  %353 = and i64 %351, %352, !dbg !3682
  call void @llvm.dbg.value(metadata i64 %353, metadata !983, metadata !DIExpression()), !dbg !3529
  %354 = add i64 %353, %349, !dbg !3683
  call void @llvm.dbg.value(metadata i64 %354, metadata !983, metadata !DIExpression()), !dbg !3529
  br label %355, !dbg !3684

355:                                              ; preds = %336, %344
  %356 = phi i64 [ %340, %336 ], [ %354, %344 ], !dbg !3529
  call void @llvm.dbg.value(metadata i64 %356, metadata !983, metadata !DIExpression()), !dbg !3529
  %357 = add i64 %339, 1, !dbg !3685
  call void @llvm.dbg.value(metadata i64 %357, metadata !984, metadata !DIExpression()), !dbg !3660
  %358 = getelementptr inbounds i64, i64* %10, i64 %357, !dbg !3661
  %359 = load i64, i64* %358, align 8, !dbg !3661, !tbaa !1507
  %360 = icmp eq i64 %359, 0, !dbg !3663
  br i1 %360, label %333, label %336, !dbg !3664, !llvm.loop !3686

361:                                              ; preds = %333
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.93, i64 0, i64 0)) #8, !dbg !3688
  call void @abort() #8, !dbg !3688
  br label %362, !dbg !3688

362:                                              ; preds = %361, %333
  %363 = icmp ugt i64 %237, 4095, !dbg !3690
  %364 = load i8, i8* @_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE, align 1
  %365 = icmp eq i8 %364, 0
  %366 = or i1 %363, %365, !dbg !3692
  br i1 %366, label %369, label %367, !dbg !3692

367:                                              ; preds = %362
  %368 = trunc i64 %267 to i32, !dbg !3693
  call void @_ZN6Halide7Runtime8Internal5Metal27set_input_buffer_from_bytesEPNS2_27mtl_compute_command_encoderEPhjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %49, i8* nonnull %243, i32 %368, i32 0) #9, !dbg !3695
  br label %371, !dbg !3696

369:                                              ; preds = %362
  call void @_ZN6Halide7Runtime8Internal5Metal16set_input_bufferEPNS2_27mtl_compute_command_encoderEPNS2_10mtl_bufferEyj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %49, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %329, i64 0, i32 0) #9, !dbg !3697
  %370 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %329 to i8*, !dbg !3699
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %370) #9, !dbg !3700
  br label %371

371:                                              ; preds = %369, %367
  call void @llvm.dbg.value(metadata i32 0, metadata !973, metadata !DIExpression()), !dbg !3209
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %243) #10, !dbg !3701
  br label %374

372:                                              ; preds = %318, %316
  call void @free(i8* %314) #8, !dbg !3702
  %373 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %146 to i8*, !dbg !3703
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* nonnull %373) #9, !dbg !3704
  call void @llvm.dbg.value(metadata i32 0, metadata !973, metadata !DIExpression()), !dbg !3209
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %243) #10, !dbg !3701
  br label %503

374:                                              ; preds = %371, %214
  %375 = phi i32 [ 1, %371 ], [ 0, %214 ]
  %376 = load i64, i64* %10, align 8, !dbg !3705, !tbaa !1507
  call void @llvm.dbg.value(metadata i32 %375, metadata !973, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 0, metadata !986, metadata !DIExpression()), !dbg !3706
  %377 = icmp eq i64 %376, 0, !dbg !3707
  br i1 %377, label %378, label %475, !dbg !3708

378:                                              ; preds = %497, %211, %374
  %379 = add nsw i32 %9, 15, !dbg !3709
  %380 = and i32 %379, -16, !dbg !3710
  call void @llvm.dbg.value(metadata i32 %380, metadata !937, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !3711
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3711
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3711
  %381 = call i8* @malloc(i64 1024) #8, !dbg !3713
  %382 = icmp eq i8* %381, null, !dbg !3714
  br i1 %382, label %385, label %383, !dbg !3715

383:                                              ; preds = %378
  %384 = getelementptr inbounds i8, i8* %381, i64 1023, !dbg !3716
  store i8 0, i8* %384, align 1, !dbg !3717, !tbaa !1134
  br label %385, !dbg !3718

385:                                              ; preds = %378, %383
  %386 = phi i8* [ %384, %383 ], [ null, %378 ], !dbg !3719
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.95, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3720
  %387 = call i8* @halide_string_to_string(i8* %381, i8* %386, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.95, i64 0, i64 0)) #8, !dbg !3722
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !3723, metadata !DIExpression()) #10, !dbg !3727
  call void @llvm.dbg.value(metadata i32 %380, metadata !3726, metadata !DIExpression()) #10, !dbg !3727
  %388 = sext i32 %380 to i64, !dbg !3729
  %389 = call i8* @halide_int64_to_string(i8* %387, i8* %386, i64 %388, i32 1) #8, !dbg !3730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3731
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3731
  %390 = call i8* @halide_string_to_string(i8* %389, i8* %386, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !3733
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3734
  br i1 %382, label %391, label %392, !dbg !3736

391:                                              ; preds = %385
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !3737
  br label %398, !dbg !3738

392:                                              ; preds = %385
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3739
  %393 = ptrtoint i8* %390 to i64, !dbg !3741
  %394 = ptrtoint i8* %381 to i64, !dbg !3741
  %395 = add i64 %393, 1, !dbg !3741
  %396 = sub i64 %395, %394, !dbg !3742
  %397 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %381, i64 %396) #8, !dbg !3743
  call void @halide_print(i8* %0, i8* nonnull %381) #8, !dbg !3744
  br label %398

398:                                              ; preds = %392, %391
  call void @free(i8* %381) #8, !dbg !3745
  call void @_ZN6Halide7Runtime8Internal5Metal29set_threadgroup_memory_lengthEPNS2_27mtl_compute_command_encoderEjj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %49, i32 %380, i32 0) #9, !dbg !3746
  %399 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22 to i8*, !dbg !3747
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %399) #10, !dbg !3747
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1095, metadata !DIExpression()) #10, !dbg !3748
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3748
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3748
  %400 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i64 0, i32 3, !dbg !3750
  store i8* %0, i8** %400, align 8, !dbg !3750, !tbaa !2953
  %401 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i64 0, i32 4, !dbg !3751
  store i8 1, i8* %401, align 8, !dbg !3751, !tbaa !2957
  %402 = call i8* @malloc(i64 1024) #8, !dbg !3752
  %403 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i64 0, i32 0, !dbg !3753
  store i8* %402, i8** %403, align 8, !dbg !3754, !tbaa !2961
  %404 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i64 0, i32 1, !dbg !3755
  store i8* %402, i8** %404, align 8, !dbg !3756, !tbaa !2984
  %405 = icmp eq i8* %402, null, !dbg !3757
  br i1 %405, label %408, label %406, !dbg !3758

406:                                              ; preds = %398
  %407 = getelementptr inbounds i8, i8* %402, i64 1023, !dbg !3759
  store i8 0, i8* %407, align 1, !dbg !3760, !tbaa !1134
  br label %408, !dbg !3761

408:                                              ; preds = %398, %406
  %409 = phi i8* [ %407, %406 ], [ null, %398 ], !dbg !3762
  %410 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i64 0, i32 2, !dbg !3763
  store i8* %409, i8** %410, align 8, !dbg !3764
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3765
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3765
  %411 = call i8* @halide_string_to_string(i8* %402, i8* %409, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i64 0, i64 0)) #8, !dbg !3767
  store i8* %411, i8** %404, align 8, !dbg !3768, !tbaa !2984
  %412 = load i32, i32* @_ZZ16halide_metal_runE16total_dispatches, align 4, !dbg !3769, !tbaa !2423
  %413 = add nsw i32 %412, 1, !dbg !3769
  store i32 %413, i32* @_ZZ16halide_metal_runE16total_dispatches, align 4, !dbg !3769, !tbaa !2423
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !3723, metadata !DIExpression()) #10, !dbg !3770
  call void @llvm.dbg.value(metadata i32 %412, metadata !3726, metadata !DIExpression()) #10, !dbg !3770
  %414 = sext i32 %412 to i64, !dbg !3772
  %415 = call i8* @halide_int64_to_string(i8* %411, i8* %409, i64 %414, i32 1) #8, !dbg !3773
  store i8* %415, i8** %404, align 8, !dbg !3774, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3775
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3775
  %416 = call i8* @halide_string_to_string(i8* %415, i8* %409, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i64 0, i64 0)) #8, !dbg !3777
  store i8* %416, i8** %404, align 8, !dbg !3778, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !3723, metadata !DIExpression()) #10, !dbg !3779
  call void @llvm.dbg.value(metadata i32 %3, metadata !3726, metadata !DIExpression()) #10, !dbg !3779
  %417 = sext i32 %3 to i64, !dbg !3781
  %418 = call i8* @halide_int64_to_string(i8* %416, i8* %409, i64 %417, i32 1) #8, !dbg !3782
  store i8* %418, i8** %404, align 8, !dbg !3783, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3784
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3784
  %419 = call i8* @halide_string_to_string(i8* %418, i8* %409, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0)) #8, !dbg !3786
  store i8* %419, i8** %404, align 8, !dbg !3787, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !3723, metadata !DIExpression()) #10, !dbg !3788
  call void @llvm.dbg.value(metadata i32 %4, metadata !3726, metadata !DIExpression()) #10, !dbg !3788
  %420 = sext i32 %4 to i64, !dbg !3790
  %421 = call i8* @halide_int64_to_string(i8* %419, i8* %409, i64 %420, i32 1) #8, !dbg !3791
  store i8* %421, i8** %404, align 8, !dbg !3792, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3793
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3793
  %422 = call i8* @halide_string_to_string(i8* %421, i8* %409, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0)) #8, !dbg !3795
  store i8* %422, i8** %404, align 8, !dbg !3796, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !3723, metadata !DIExpression()) #10, !dbg !3797
  call void @llvm.dbg.value(metadata i32 %5, metadata !3726, metadata !DIExpression()) #10, !dbg !3797
  %423 = sext i32 %5 to i64, !dbg !3799
  %424 = call i8* @halide_int64_to_string(i8* %422, i8* %409, i64 %423, i32 1) #8, !dbg !3800
  store i8* %424, i8** %404, align 8, !dbg !3801, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3802
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3802
  %425 = call i8* @halide_string_to_string(i8* %424, i8* %409, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i64 0, i64 0)) #8, !dbg !3804
  store i8* %425, i8** %404, align 8, !dbg !3805, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !3723, metadata !DIExpression()) #10, !dbg !3806
  call void @llvm.dbg.value(metadata i32 %6, metadata !3726, metadata !DIExpression()) #10, !dbg !3806
  %426 = sext i32 %6 to i64, !dbg !3808
  %427 = call i8* @halide_int64_to_string(i8* %425, i8* %409, i64 %426, i32 1) #8, !dbg !3809
  store i8* %427, i8** %404, align 8, !dbg !3810, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3811
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3811
  %428 = call i8* @halide_string_to_string(i8* %427, i8* %409, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0)) #8, !dbg !3813
  store i8* %428, i8** %404, align 8, !dbg !3814, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !3723, metadata !DIExpression()) #10, !dbg !3815
  call void @llvm.dbg.value(metadata i32 %7, metadata !3726, metadata !DIExpression()) #10, !dbg !3815
  %429 = sext i32 %7 to i64, !dbg !3817
  %430 = call i8* @halide_int64_to_string(i8* %428, i8* %409, i64 %429, i32 1) #8, !dbg !3818
  store i8* %430, i8** %404, align 8, !dbg !3819, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3820
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3820
  %431 = call i8* @halide_string_to_string(i8* %430, i8* %409, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0)) #8, !dbg !3822
  store i8* %431, i8** %404, align 8, !dbg !3823, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !3723, metadata !DIExpression()) #10, !dbg !3824
  call void @llvm.dbg.value(metadata i32 %8, metadata !3726, metadata !DIExpression()) #10, !dbg !3824
  %432 = sext i32 %8 to i64, !dbg !3826
  %433 = call i8* @halide_int64_to_string(i8* %431, i8* %409, i64 %432, i32 1) #8, !dbg !3827
  store i8* %433, i8** %404, align 8, !dbg !3828, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1112, metadata !DIExpression()) #10, !dbg !3829
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3829
  %434 = call i8* @halide_string_to_string(i8* %433, i8* %409, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #8, !dbg !3831
  store i8* %434, i8** %404, align 8, !dbg !3832, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, metadata !1121, metadata !DIExpression()) #10, !dbg !3833
  br i1 %405, label %435, label %436, !dbg !3835

435:                                              ; preds = %408
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !3836
  br label %444, !dbg !3837

436:                                              ; preds = %408
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3838
  %437 = ptrtoint i8* %434 to i64, !dbg !3840
  %438 = ptrtoint i8* %402 to i64, !dbg !3840
  %439 = add i64 %437, 1, !dbg !3840
  %440 = sub i64 %439, %438, !dbg !3841
  %441 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %402, i64 %440) #8, !dbg !3842
  %442 = load i8*, i8** %400, align 8, !dbg !3843, !tbaa !2953
  %443 = load i8*, i8** %403, align 8, !dbg !3844, !tbaa !2961
  call void @halide_print(i8* %442, i8* %443) #8, !dbg !3845
  br label %444

444:                                              ; preds = %436, %435
  %445 = load i8, i8* %401, align 8, !dbg !3846, !tbaa !2957, !range !3013
  %446 = icmp eq i8 %445, 0, !dbg !3846
  br i1 %446, label %452, label %447, !dbg !3847

447:                                              ; preds = %444
  %448 = load i8*, i8** %403, align 8, !dbg !3848, !tbaa !2961
  %449 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %22, i64 0, i32 5, i64 0, !dbg !3849
  %450 = icmp eq i8* %448, %449, !dbg !3850
  br i1 %450, label %452, label %451, !dbg !3851

451:                                              ; preds = %447
  call void @free(i8* %448) #8, !dbg !3852
  br label %452, !dbg !3853

452:                                              ; preds = %444, %447, %451
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %399) #10, !dbg !3747
  call void @_ZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiii(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %49, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #8, !dbg !3854
  call void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_27mtl_compute_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %49) #9, !dbg !3855
  call void @_ZN6Halide7Runtime8Internal5Metal36add_command_buffer_completed_handlerEPNS2_18mtl_command_bufferEPNS2_46command_buffer_completed_handler_block_literalE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* nonnull %32, %"struct.Halide::Runtime::Internal::Metal::command_buffer_completed_handler_block_literal"* nonnull @_ZN6Halide7Runtime8Internal5Metal38command_buffer_completed_handler_blockE) #9, !dbg !3856
  call void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* nonnull %32) #9, !dbg !3857
  %453 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_pipeline_state"* %146 to i8*, !dbg !3858
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* nonnull %453) #9, !dbg !3859
  %454 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !3860
  call void @llvm.dbg.value(metadata i64 %454, metadata !993, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !3861
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3861
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3861
  %455 = call i8* @malloc(i64 1024) #8, !dbg !3863
  %456 = icmp eq i8* %455, null, !dbg !3864
  br i1 %456, label %459, label %457, !dbg !3865

457:                                              ; preds = %452
  %458 = getelementptr inbounds i8, i8* %455, i64 1023, !dbg !3866
  store i8 0, i8* %458, align 1, !dbg !3867, !tbaa !1134
  br label %459, !dbg !3868

459:                                              ; preds = %452, %457
  %460 = phi i8* [ %458, %457 ], [ null, %452 ], !dbg !3869
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3870
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.100, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3870
  %461 = call i8* @halide_string_to_string(i8* %455, i8* %460, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.100, i64 0, i64 0)) #8, !dbg !3872
  %462 = sub i64 %454, %23, !dbg !3873
  %463 = uitofp i64 %462 to double, !dbg !3874
  %464 = fdiv double %463, 1.000000e+06, !dbg !3875
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2147, metadata !DIExpression()) #10, !dbg !3876
  call void @llvm.dbg.value(metadata double %464, metadata !2150, metadata !DIExpression()) #10, !dbg !3876
  %465 = call i8* @halide_double_to_string(i8* %461, i8* %460, double %464, i32 1) #8, !dbg !3878
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3879
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3879
  %466 = call i8* @halide_string_to_string(i8* %465, i8* %460, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !3881
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3882
  br i1 %456, label %467, label %468, !dbg !3884

467:                                              ; preds = %459
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !3885
  br label %474, !dbg !3886

468:                                              ; preds = %459
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3887
  %469 = ptrtoint i8* %466 to i64, !dbg !3889
  %470 = ptrtoint i8* %455 to i64, !dbg !3889
  %471 = add i64 %469, 1, !dbg !3889
  %472 = sub i64 %471, %470, !dbg !3890
  %473 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %455, i64 %472) #8, !dbg !3891
  call void @halide_print(i8* %0, i8* nonnull %455) #8, !dbg !3892
  br label %474

474:                                              ; preds = %468, %467
  call void @free(i8* %455) #8, !dbg !3893
  br label %503

475:                                              ; preds = %374, %497
  %476 = phi i64 [ %501, %497 ], [ %376, %374 ]
  %477 = phi i64 [ %499, %497 ], [ 0, %374 ]
  %478 = phi i32 [ %498, %497 ], [ %375, %374 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !986, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 %478, metadata !973, metadata !DIExpression()), !dbg !3209
  %479 = getelementptr inbounds i8, i8* %12, i64 %477, !dbg !3894
  %480 = load i8, i8* %479, align 1, !dbg !3894, !tbaa !1134
  %481 = icmp eq i8 %480, 0, !dbg !3894
  br i1 %481, label %497, label %482, !dbg !3895

482:                                              ; preds = %475
  %483 = icmp eq i64 %476, 8, !dbg !3896
  br i1 %483, label %485, label %484, !dbg !3899

484:                                              ; preds = %482
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.94, i64 0, i64 0)) #8, !dbg !3900
  call void @abort() #8, !dbg !3900
  br label %485, !dbg !3900

485:                                              ; preds = %484, %482
  %486 = getelementptr inbounds i8*, i8** %11, i64 %477, !dbg !3902
  %487 = bitcast i8** %486 to %struct.halide_buffer_t**, !dbg !3902
  %488 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %487, align 8, !dbg !3902, !tbaa !1480
  %489 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %488, i64 0, i32 0, !dbg !3903
  %490 = load i64, i64* %489, align 8, !dbg !3903, !tbaa !1198
  %491 = inttoptr i64 %490 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !3904
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::device_handle"* %491, metadata !988, metadata !DIExpression()), !dbg !3905
  %492 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %491, i64 0, i32 0, !dbg !3906
  %493 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %492, align 8, !dbg !3906, !tbaa !2114
  %494 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %491, i64 0, i32 1, !dbg !3907
  %495 = load i64, i64* %494, align 8, !dbg !3907, !tbaa !2118
  call void @_ZN6Halide7Runtime8Internal5Metal16set_input_bufferEPNS2_27mtl_compute_command_encoderEPNS2_10mtl_bufferEyj(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* nonnull %49, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %493, i64 %495, i32 %478) #9, !dbg !3908
  %496 = add nsw i32 %478, 1, !dbg !3909
  call void @llvm.dbg.value(metadata i32 %496, metadata !973, metadata !DIExpression()), !dbg !3209
  br label %497, !dbg !3910

497:                                              ; preds = %475, %485
  %498 = phi i32 [ %496, %485 ], [ %478, %475 ], !dbg !3209
  call void @llvm.dbg.value(metadata i32 %498, metadata !973, metadata !DIExpression()), !dbg !3209
  %499 = add i64 %477, 1, !dbg !3911
  call void @llvm.dbg.value(metadata i64 %499, metadata !986, metadata !DIExpression()), !dbg !3706
  %500 = getelementptr inbounds i64, i64* %10, i64 %499, !dbg !3705
  %501 = load i64, i64* %500, align 8, !dbg !3705, !tbaa !1507
  %502 = icmp eq i64 %501, 0, !dbg !3707
  br i1 %502, label %378, label %475, !dbg !3708, !llvm.loop !3912

503:                                              ; preds = %143, %209, %474, %161, %372, %47, %64, %17
  %504 = phi i32 [ %26, %17 ], [ -1, %47 ], [ -1, %64 ], [ -1, %143 ], [ -1, %161 ], [ -1, %209 ], [ 0, %474 ], [ -1, %372 ], !dbg !3209
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %18, metadata !2169, metadata !DIExpression()) #10, !dbg !3914
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %18) #8, !dbg !3916
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %24) #10, !dbg !3917
  ret i32 %504, !dbg !3917
}

declare !dbg !3918 dso_local void @_ZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiii(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"*, i32, i32, i32, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_device_and_host_malloc(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !3921 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3923, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !3924, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !3930
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3930
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3930
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !3932
  %4 = icmp eq i8* %3, null, !dbg !3933
  br i1 %4, label %5, label %7, !dbg !3934

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3935
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.101, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3935
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.101, i64 0, i64 0)) #8, !dbg !3937
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3938
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !3940
  br label %15, !dbg !3941

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !3942
  store i8 0, i8* %8, align 1, !dbg !3943, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3935
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.101, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3935
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.101, i64 0, i64 0)) #8, !dbg !3937
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3938
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !3944
  %10 = ptrtoint i8* %9 to i64, !dbg !3946
  %11 = ptrtoint i8* %3 to i64, !dbg !3946
  %12 = add i64 %10, 1, !dbg !3946
  %13 = sub i64 %12, %11, !dbg !3947
  %14 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %13) #8, !dbg !3948
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !3949
  br label %15

15:                                               ; preds = %7, %5
  tail call void @free(i8* %3) #8, !dbg !3950
  %16 = tail call i32 @halide_metal_device_malloc(i8* %0, %struct.halide_buffer_t* %1) #9, !dbg !3951
  call void @llvm.dbg.value(metadata i32 %16, metadata !3925, metadata !DIExpression()), !dbg !3929
  %17 = icmp eq i32 %16, 0, !dbg !3952
  br i1 %17, label %18, label %52, !dbg !3953

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !3954
  %20 = load i64, i64* %19, align 8, !dbg !3954, !tbaa !1198
  %21 = inttoptr i64 %20 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !3955
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %21, i64 0, i32 0, !dbg !3956
  %23 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %22, align 8, !dbg !3956, !tbaa !2114
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %23, metadata !3926, metadata !DIExpression()), !dbg !3957
  %24 = tail call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %23) #9, !dbg !3958
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !3959
  store i8* %24, i8** %25, align 8, !dbg !3960, !tbaa !1189
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !3961
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !3961
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !3961
  %26 = tail call i8* @malloc(i64 1024) #8, !dbg !3963
  %27 = icmp eq i8* %26, null, !dbg !3964
  br i1 %27, label %30, label %28, !dbg !3965

28:                                               ; preds = %18
  %29 = getelementptr inbounds i8, i8* %26, i64 1023, !dbg !3966
  store i8 0, i8* %29, align 1, !dbg !3967, !tbaa !1134
  br label %30, !dbg !3968

30:                                               ; preds = %18, %28
  %31 = phi i8* [ %29, %28 ], [ null, %18 ], !dbg !3969
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3970
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.102, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3970
  %32 = tail call i8* @halide_string_to_string(i8* %26, i8* %31, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.102, i64 0, i64 0)) #8, !dbg !3972
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3973
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3973
  %33 = tail call i8* @halide_string_to_string(i8* %32, i8* %31, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i64 0, i64 0)) #8, !dbg !3975
  %34 = load i64, i64* %19, align 8, !dbg !3976, !tbaa !1198
  %35 = inttoptr i64 %34 to i8*, !dbg !3977
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1890, metadata !DIExpression()) #10, !dbg !3978
  call void @llvm.dbg.value(metadata i8* %35, metadata !1893, metadata !DIExpression()) #10, !dbg !3978
  %36 = tail call i8* @halide_pointer_to_string(i8* %33, i8* %31, i8* %35) #8, !dbg !3980
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3981
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3981
  %37 = tail call i8* @halide_string_to_string(i8* %36, i8* %31, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i64 0, i64 0)) #8, !dbg !3983
  %38 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %23 to i8*, !dbg !3984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1890, metadata !DIExpression()) #10, !dbg !3985
  call void @llvm.dbg.value(metadata i8* %38, metadata !1893, metadata !DIExpression()) #10, !dbg !3985
  %39 = tail call i8* @halide_pointer_to_string(i8* %37, i8* %31, i8* %38) #8, !dbg !3987
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3988
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3988
  %40 = tail call i8* @halide_string_to_string(i8* %39, i8* %31, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0)) #8, !dbg !3990
  %41 = load i8*, i8** %25, align 8, !dbg !3991, !tbaa !1189
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1890, metadata !DIExpression()) #10, !dbg !3992
  call void @llvm.dbg.value(metadata i8* %41, metadata !1893, metadata !DIExpression()) #10, !dbg !3992
  %42 = tail call i8* @halide_pointer_to_string(i8* %40, i8* %31, i8* %41) #8, !dbg !3994
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !3995
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !3995
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %31, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !3997
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !3998
  br i1 %27, label %44, label %45, !dbg !4000

44:                                               ; preds = %30
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !4001
  br label %51, !dbg !4002

45:                                               ; preds = %30
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !4003
  %46 = ptrtoint i8* %43 to i64, !dbg !4005
  %47 = ptrtoint i8* %26 to i64, !dbg !4005
  %48 = add i64 %46, 1, !dbg !4005
  %49 = sub i64 %48, %47, !dbg !4006
  %50 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %26, i64 %49) #8, !dbg !4007
  tail call void @halide_print(i8* %0, i8* nonnull %26) #8, !dbg !4008
  br label %51

51:                                               ; preds = %44, %45
  call void @free(i8* %26) #8, !dbg !4009
  br label %52, !dbg !4010

52:                                               ; preds = %51, %15
  ret i32 %16, !dbg !4011
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_device_and_host_free(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !4012 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4014, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4015, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !4017
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !4017
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !4017
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !4019
  %4 = icmp eq i8* %3, null, !dbg !4020
  br i1 %4, label %5, label %7, !dbg !4021

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4022
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.104, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4022
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.104, i64 0, i64 0)) #8, !dbg !4024
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !4025
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !4027
  br label %15, !dbg !4028

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !4029
  store i8 0, i8* %8, align 1, !dbg !4030, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4022
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.104, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4022
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.104, i64 0, i64 0)) #8, !dbg !4024
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !4025
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !4031
  %10 = ptrtoint i8* %9 to i64, !dbg !4033
  %11 = ptrtoint i8* %3 to i64, !dbg !4033
  %12 = add i64 %10, 1, !dbg !4033
  %13 = sub i64 %12, %11, !dbg !4034
  %14 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %13) #8, !dbg !4035
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !4036
  br label %15

15:                                               ; preds = %7, %5
  tail call void @free(i8* %3) #8, !dbg !4037
  %16 = tail call i32 @halide_metal_device_free(i8* %0, %struct.halide_buffer_t* %1) #9, !dbg !4038
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !4039
  store i8* null, i8** %17, align 8, !dbg !4040, !tbaa !1189
  ret i32 0, !dbg !4041
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_buffer_copy(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_device_interface_t* %2, %struct.halide_buffer_t* %3) #4 !dbg !4042 {
  %5 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %6 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  %7 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %8 = alloca %"struct.Halide::Runtime::Internal::Metal::NSRange", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4044, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4045, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %2, metadata !4046, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !4047, metadata !DIExpression()), !dbg !4069
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5, !dbg !4070
  %10 = load i32, i32* %9, align 4, !dbg !4070, !tbaa !1233
  %11 = icmp sgt i32 %10, 16, !dbg !4072
  br i1 %11, label %12, label %26, !dbg !4073

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1688, metadata !DIExpression()) #10, !dbg !4074
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()) #10, !dbg !4074
  call void @llvm.dbg.value(metadata i8* null, metadata !1692, metadata !DIExpression()) #10, !dbg !4074
  %13 = tail call i8* @malloc(i64 1024) #8, !dbg !4077
  %14 = icmp eq i8* %13, null, !dbg !4078
  br i1 %14, label %15, label %17, !dbg !4079

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !4080
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.105, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !4080
  %16 = tail call i8* @halide_string_to_string(i8* %13, i8* null, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !4082
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !4083
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !4085
  br label %25, !dbg !4086

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, i8* %13, i64 1023, !dbg !4087
  store i8 0, i8* %18, align 1, !dbg !4088, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !4080
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.105, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !4080
  %19 = tail call i8* @halide_string_to_string(i8* nonnull %13, i8* nonnull %18, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.105, i64 0, i64 0)) #8, !dbg !4082
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !4083
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1722, metadata !DIExpression()) #10, !dbg !4089
  %20 = ptrtoint i8* %19 to i64, !dbg !4091
  %21 = ptrtoint i8* %13 to i64, !dbg !4091
  %22 = add i64 %20, 1, !dbg !4091
  %23 = sub i64 %22, %21, !dbg !4092
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %13, i64 %23) #8, !dbg !4093
  tail call void @halide_error(i8* %0, i8* nonnull %13) #8, !dbg !4094
  br label %25

25:                                               ; preds = %17, %15
  tail call void @free(i8* %13) #8, !dbg !4095
  br label %281, !dbg !4096

26:                                               ; preds = %4
  %27 = icmp eq %struct.halide_device_interface_t* %2, null, !dbg !4097
  %28 = icmp eq %struct.halide_device_interface_t* %2, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, !dbg !4097
  %29 = or i1 %27, %28, !dbg !4097
  br i1 %29, label %31, label %30, !dbg !4097

30:                                               ; preds = %26
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.106, i64 0, i64 0)) #8, !dbg !4100
  tail call void @abort() #8, !dbg !4100
  br label %31, !dbg !4100

31:                                               ; preds = %26, %30
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4102, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4108, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i32 2, metadata !4111, metadata !DIExpression()), !dbg !4112
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !4114
  %33 = load i64, i64* %32, align 8, !dbg !4114, !tbaa !4115
  %34 = and i64 %33, 2, !dbg !4116
  %35 = icmp eq i64 %34, 0, !dbg !4117
  br i1 %35, label %36, label %40, !dbg !4118

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !4119
  %38 = load i8*, i8** %37, align 8, !dbg !4119, !tbaa !1189
  %39 = icmp eq i8* %38, null, !dbg !4120
  br i1 %39, label %40, label %46, !dbg !4121

40:                                               ; preds = %36, %31
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !4122
  %42 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %41, align 8, !dbg !4122, !tbaa !2123
  %43 = icmp eq %struct.halide_device_interface_t* %42, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, !dbg !4123
  br i1 %43, label %50, label %44, !dbg !4124

44:                                               ; preds = %40
  br i1 %28, label %281, label %45, !dbg !4125

45:                                               ; preds = %44
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.107, i64 0, i64 0)) #8, !dbg !4128
  tail call void @abort() #8, !dbg !4128
  br label %281, !dbg !4128

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  %48 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %47, align 8, !dbg !4131, !tbaa !2123
  %49 = icmp eq %struct.halide_device_interface_t* %48, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, !dbg !4132
  br i1 %49, label %50, label %62, !dbg !4133

50:                                               ; preds = %40, %46
  %51 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !4134
  %52 = load i64, i64* %51, align 8, !dbg !4134, !tbaa !1198
  %53 = icmp eq i64 %52, 0, !dbg !4135
  br i1 %53, label %62, label %54, !dbg !4136

54:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4137, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4108, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i32 1, metadata !4111, metadata !DIExpression()), !dbg !4142
  %55 = and i64 %33, 1, !dbg !4144
  %56 = icmp eq i64 %55, 0, !dbg !4145
  br i1 %56, label %61, label %57, !dbg !4146

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !4147
  %59 = load i8*, i8** %58, align 8, !dbg !4147, !tbaa !1189
  %60 = icmp eq i8* %59, null, !dbg !4148
  call void @llvm.dbg.value(metadata i1 %60, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4069
  call void @llvm.dbg.value(metadata i1 %27, metadata !4049, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4069
  br i1 %60, label %61, label %62, !dbg !4149

61:                                               ; preds = %54, %57
  br label %62, !dbg !4152

62:                                               ; preds = %61, %46, %50, %57
  %63 = phi i1 [ true, %57 ], [ false, %61 ], [ true, %50 ], [ true, %46 ]
  br i1 %27, label %69, label %64, !dbg !4153

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0, !dbg !4153
  %66 = load i64, i64* %65, align 8, !dbg !4153, !tbaa !1198
  %67 = icmp eq i64 %66, 0, !dbg !4153
  br i1 %67, label %68, label %69, !dbg !4156

68:                                               ; preds = %64
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.109, i64 0, i64 0)) #8, !dbg !4157
  tail call void @abort() #8, !dbg !4157
  br label %69, !dbg !4157

69:                                               ; preds = %68, %64, %62
  %70 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %5 to i8*, !dbg !4159
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %70) #10, !dbg !4159
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %5, metadata !4050, metadata !DIExpression()), !dbg !4160
  call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %5, %struct.halide_buffer_t* nonnull %1, i1 zeroext %63, %struct.halide_buffer_t* nonnull %3, i1 zeroext %27) #9, !dbg !4161
  call void @llvm.dbg.value(metadata i32 0, metadata !4051, metadata !DIExpression()), !dbg !4069
  %71 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6 to i8*, !dbg !4162
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %71) #10, !dbg !4162
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, metadata !4052, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, metadata !2041, metadata !DIExpression()) #10, !dbg !4164
  call void @llvm.dbg.value(metadata i8* %0, metadata !2044, metadata !DIExpression()) #10, !dbg !4164
  call void @llvm.dbg.value(metadata i1 true, metadata !2045, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !4164
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %6, i8* %0, i1 zeroext true) #8, !dbg !4166
  %72 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i64 0, i32 4, !dbg !4167
  %73 = load i32, i32* %72, align 8, !dbg !4167, !tbaa !1837
  %74 = icmp eq i32 %73, 0, !dbg !4169
  br i1 %74, label %75, label %280, !dbg !4170

75:                                               ; preds = %69
  %76 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7 to i8*, !dbg !4171
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %76) #10, !dbg !4171
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1095, metadata !DIExpression()) #10, !dbg !4172
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !4172
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !4172
  %77 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 3, !dbg !4174
  store i8* %0, i8** %77, align 8, !dbg !4174, !tbaa !2953
  %78 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 4, !dbg !4175
  store i8 1, i8* %78, align 8, !dbg !4175, !tbaa !2957
  %79 = call i8* @malloc(i64 1024) #8, !dbg !4176
  %80 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 0, !dbg !4177
  store i8* %79, i8** %80, align 8, !dbg !4178, !tbaa !2961
  %81 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 1, !dbg !4179
  store i8* %79, i8** %81, align 8, !dbg !4180, !tbaa !2984
  %82 = icmp eq i8* %79, null, !dbg !4181
  br i1 %82, label %85, label %83, !dbg !4182

83:                                               ; preds = %75
  %84 = getelementptr inbounds i8, i8* %79, i64 1023, !dbg !4183
  store i8 0, i8* %84, align 1, !dbg !4184, !tbaa !1134
  br label %85, !dbg !4185

85:                                               ; preds = %75, %83
  %86 = phi i8* [ %84, %83 ], [ null, %75 ], !dbg !4186
  %87 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 2, !dbg !4187
  store i8* %86, i8** %87, align 8, !dbg !4188
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1112, metadata !DIExpression()) #10, !dbg !4189
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.110, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4189
  %88 = call i8* @halide_string_to_string(i8* %79, i8* %86, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.110, i64 0, i64 0)) #8, !dbg !4191
  store i8* %88, i8** %81, align 8, !dbg !4192, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1890, metadata !DIExpression()) #10, !dbg !4193
  call void @llvm.dbg.value(metadata i8* %0, metadata !1893, metadata !DIExpression()) #10, !dbg !4193
  %89 = load i8*, i8** %87, align 8, !dbg !4195, !tbaa !4196
  %90 = call i8* @halide_pointer_to_string(i8* %88, i8* %89, i8* %0) #8, !dbg !4197
  store i8* %90, i8** %81, align 8, !dbg !4198, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1112, metadata !DIExpression()) #10, !dbg !4199
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4199
  %91 = load i8*, i8** %87, align 8, !dbg !4201, !tbaa !4196
  %92 = call i8* @halide_string_to_string(i8* %90, i8* %91, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i64 0, i64 0)) #8, !dbg !4202
  store i8* %92, i8** %81, align 8, !dbg !4203, !tbaa !2984
  %93 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !4204
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1890, metadata !DIExpression()) #10, !dbg !4205
  call void @llvm.dbg.value(metadata i8* %93, metadata !1893, metadata !DIExpression()) #10, !dbg !4205
  %94 = load i8*, i8** %87, align 8, !dbg !4207, !tbaa !4196
  %95 = call i8* @halide_pointer_to_string(i8* %92, i8* %94, i8* %93) #8, !dbg !4208
  store i8* %95, i8** %81, align 8, !dbg !4209, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1112, metadata !DIExpression()) #10, !dbg !4210
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4210
  %96 = load i8*, i8** %87, align 8, !dbg !4212, !tbaa !4196
  %97 = call i8* @halide_string_to_string(i8* %95, i8* %96, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i64 0, i64 0)) #8, !dbg !4213
  store i8* %97, i8** %81, align 8, !dbg !4214, !tbaa !2984
  %98 = bitcast %struct.halide_buffer_t* %3 to i8*, !dbg !4215
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1890, metadata !DIExpression()) #10, !dbg !4216
  call void @llvm.dbg.value(metadata i8* %98, metadata !1893, metadata !DIExpression()) #10, !dbg !4216
  %99 = load i8*, i8** %87, align 8, !dbg !4218, !tbaa !4196
  %100 = call i8* @halide_pointer_to_string(i8* %97, i8* %99, i8* %98) #8, !dbg !4219
  store i8* %100, i8** %81, align 8, !dbg !4220, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1112, metadata !DIExpression()) #10, !dbg !4221
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4221
  %101 = load i8*, i8** %87, align 8, !dbg !4223, !tbaa !4196
  %102 = call i8* @halide_string_to_string(i8* %100, i8* %101, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #8, !dbg !4224
  store i8* %102, i8** %81, align 8, !dbg !4225, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, metadata !1121, metadata !DIExpression()) #10, !dbg !4226
  %103 = load i8*, i8** %80, align 8, !dbg !4228, !tbaa !2961
  %104 = icmp eq i8* %103, null, !dbg !4228
  %105 = load i8*, i8** %77, align 8, !dbg !4229, !tbaa !2953
  br i1 %104, label %106, label %107, !dbg !4230

106:                                              ; preds = %85
  call void @halide_error(i8* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !4231
  br label %115, !dbg !4232

107:                                              ; preds = %85
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !4233
  %108 = ptrtoint i8* %102 to i64, !dbg !4235
  %109 = ptrtoint i8* %103 to i64, !dbg !4235
  %110 = add i64 %108, 1, !dbg !4235
  %111 = sub i64 %110, %109, !dbg !4236
  %112 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %105, i8* nonnull %103, i64 %111) #8, !dbg !4237
  %113 = load i8*, i8** %77, align 8, !dbg !4238, !tbaa !2953
  %114 = load i8*, i8** %80, align 8, !dbg !4239, !tbaa !2961
  call void @halide_print(i8* %113, i8* %114) #8, !dbg !4240
  br label %115

115:                                              ; preds = %107, %106
  %116 = load i8, i8* %78, align 8, !dbg !4241, !tbaa !2957, !range !3013
  %117 = icmp eq i8 %116, 0, !dbg !4241
  br i1 %117, label %123, label %118, !dbg !4242

118:                                              ; preds = %115
  %119 = load i8*, i8** %80, align 8, !dbg !4243, !tbaa !2961
  %120 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %7, i64 0, i32 5, i64 0, !dbg !4244
  %121 = icmp eq i8* %119, %120, !dbg !4245
  br i1 %121, label %123, label %122, !dbg !4246

122:                                              ; preds = %118
  call void @free(i8* %119) #8, !dbg !4247
  br label %123, !dbg !4248

123:                                              ; preds = %115, %118, %122
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %76) #10, !dbg !4171
  %124 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4249
  call void @llvm.dbg.value(metadata i64 %124, metadata !4054, metadata !DIExpression()), !dbg !4250
  %125 = or i1 %27, %63, !dbg !4251
  br i1 %125, label %156, label %126, !dbg !4251

126:                                              ; preds = %123
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !4252
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !4252
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !4252
  %127 = call i8* @malloc(i64 1024) #8, !dbg !4254
  %128 = icmp eq i8* %127, null, !dbg !4255
  br i1 %128, label %129, label %131, !dbg !4256

129:                                              ; preds = %126
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4257
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.113, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4257
  %130 = call i8* @halide_string_to_string(i8* %127, i8* null, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.113, i64 0, i64 0)) #8, !dbg !4259
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !4260
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !4262
  br label %139, !dbg !4263

131:                                              ; preds = %126
  %132 = getelementptr inbounds i8, i8* %127, i64 1023, !dbg !4264
  store i8 0, i8* %132, align 1, !dbg !4265, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4257
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.113, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4257
  %133 = call i8* @halide_string_to_string(i8* nonnull %127, i8* nonnull %132, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.113, i64 0, i64 0)) #8, !dbg !4259
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !4260
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !4266
  %134 = ptrtoint i8* %133 to i64, !dbg !4268
  %135 = ptrtoint i8* %127 to i64, !dbg !4268
  %136 = add i64 %134, 1, !dbg !4268
  %137 = sub i64 %136, %135, !dbg !4269
  %138 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %127, i64 %137) #8, !dbg !4270
  call void @halide_print(i8* %0, i8* nonnull %127) #8, !dbg !4271
  br label %139

139:                                              ; preds = %131, %129
  call void @free(i8* %127) #8, !dbg !4272
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i64 0, i64 0), metadata !4055, metadata !DIExpression()), !dbg !4273
  %140 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i64 0, i32 3, !dbg !4274
  %141 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %140, align 8, !dbg !4274, !tbaa !2715
  %142 = call i64 @strlen(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i64 0, i64 0)) #8, !dbg !4275
  %143 = call %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* @_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcm(%struct.halide_metal_command_queue* %141, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i64 0, i64 0), i64 %142) #9, !dbg !4276
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %143, metadata !4058, metadata !DIExpression()), !dbg !4273
  %144 = call %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* @_ZN6Halide7Runtime8Internal5Metal24new_blit_command_encoderEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %143) #9, !dbg !4277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %144, metadata !4059, metadata !DIExpression()), !dbg !4273
  %145 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 0, !dbg !4278
  %146 = load i64, i64* %145, align 8, !dbg !4278, !tbaa !1051
  %147 = inttoptr i64 %146 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4279
  %148 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %147, i64 0, i32 1, !dbg !4280
  %149 = load i64, i64* %148, align 8, !dbg !4280, !tbaa !2118
  %150 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 1, !dbg !4281
  %151 = load i64, i64* %150, align 8, !dbg !4281, !tbaa !1057
  %152 = inttoptr i64 %151 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4282
  %153 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %152, i64 0, i32 1, !dbg !4283
  %154 = load i64, i64* %153, align 8, !dbg !4283, !tbaa !2118
  %155 = load i32, i32* %9, align 4, !dbg !4284, !tbaa !1233
  call fastcc void @_ZN6Halide7Runtime8Internal5Metal12_GLOBAL__N_124do_device_to_device_copyEPvPNS2_24mtl_blit_command_encoderERKNS1_11device_copyEyyi(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %144, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i64 %149, i64 %154, i32 %155) #9, !dbg !4285
  call void @_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_24mtl_blit_command_encoderE(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %144) #9, !dbg !4286
  call void @_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_command_buffer"* %143) #9, !dbg !4287
  br label %258, !dbg !4288

156:                                              ; preds = %123
  br i1 %63, label %172, label %157, !dbg !4289

157:                                              ; preds = %156
  %158 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i64 0, i32 3, !dbg !4290
  %159 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %158, align 8, !dbg !4290, !tbaa !2715
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %159, %struct.halide_buffer_t* nonnull %1) #9, !dbg !4293
  %160 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 0, !dbg !4294
  %161 = load i64, i64* %160, align 8, !dbg !4294, !tbaa !1051
  %162 = inttoptr i64 %161 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4295
  %163 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %162, i64 0, i32 0, !dbg !4296
  %164 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %163, align 8, !dbg !4296, !tbaa !2114
  %165 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %164) #9, !dbg !4297
  %166 = ptrtoint i8* %165 to i64, !dbg !4298
  %167 = load i64, i64* %160, align 8, !dbg !4299, !tbaa !1051
  %168 = inttoptr i64 %167 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4300
  %169 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %168, i64 0, i32 1, !dbg !4301
  %170 = load i64, i64* %169, align 8, !dbg !4301, !tbaa !2118
  %171 = add i64 %170, %166, !dbg !4302
  store i64 %171, i64* %160, align 8, !dbg !4303, !tbaa !1051
  br label %172, !dbg !4304

172:                                              ; preds = %157, %156
  br i1 %27, label %173, label %174, !dbg !4305

173:                                              ; preds = %172
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %181, metadata !4060, metadata !DIExpression()), !dbg !4306
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #9, !dbg !4307
  br label %258, !dbg !4308

174:                                              ; preds = %172
  %175 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, i64 0, i32 3, !dbg !4309
  %176 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %175, align 8, !dbg !4309, !tbaa !2715
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %176, %struct.halide_buffer_t* nonnull %3) #9, !dbg !4312
  %177 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %5, i64 0, i32 1, !dbg !4313
  %178 = load i64, i64* %177, align 8, !dbg !4313, !tbaa !1057
  %179 = inttoptr i64 %178 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4314
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %179, i64 0, i32 0, !dbg !4315
  %181 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %180, align 8, !dbg !4315, !tbaa !2114
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %181, metadata !4060, metadata !DIExpression()), !dbg !4306
  br i1 %63, label %183, label %182, !dbg !4316

182:                                              ; preds = %174
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.115, i64 0, i64 0)) #8, !dbg !4318
  call void @abort() #8, !dbg !4318
  br label %183, !dbg !4318

183:                                              ; preds = %182, %174
  %184 = call i8* @_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %181) #9, !dbg !4321
  %185 = ptrtoint i8* %184 to i64, !dbg !4322
  %186 = load i64, i64* %177, align 8, !dbg !4323, !tbaa !1057
  %187 = inttoptr i64 %186 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4324
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %187, i64 0, i32 1, !dbg !4325
  %189 = load i64, i64* %188, align 8, !dbg !4325, !tbaa !2118
  %190 = add i64 %189, %185, !dbg !4326
  store i64 %190, i64* %177, align 8, !dbg !4327, !tbaa !1057
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %181, metadata !4060, metadata !DIExpression()), !dbg !4306
  call void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %5, i8* %0) #9, !dbg !4307
  %191 = call zeroext i1 @_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %181) #9, !dbg !4328
  br i1 %191, label %192, label %256, !dbg !4329

192:                                              ; preds = %183
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1919, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1924, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 0, metadata !1927, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i32 0, metadata !1928, metadata !DIExpression()), !dbg !4334
  %193 = load i32, i32* %9, align 4, !dbg !4335, !tbaa !1233
  %194 = icmp sgt i32 %193, 0, !dbg !4336
  br i1 %194, label %198, label %195, !dbg !4337

195:                                              ; preds = %192
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !4338
  %196 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1, !dbg !4340
  %197 = load i8, i8* %196, align 1, !dbg !4340, !tbaa !1214
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1940, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 0, metadata !1943, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i32 0, metadata !1944, metadata !DIExpression()), !dbg !4343
  br label %241, !dbg !4344

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %200 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %199, align 8, !tbaa !1236
  %201 = zext i32 %193 to i64, !dbg !4336
  br label %202, !dbg !4337

202:                                              ; preds = %216, %198
  %203 = phi i64 [ 0, %198 ], [ %218, %216 ]
  %204 = phi i64 [ 0, %198 ], [ %217, %216 ]
  call void @llvm.dbg.value(metadata i64 %203, metadata !1928, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i64 %204, metadata !1927, metadata !DIExpression()), !dbg !4332
  %205 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %200, i64 %203, i32 2, !dbg !4345
  %206 = load i32, i32* %205, align 4, !dbg !4345, !tbaa !1244
  %207 = icmp sgt i32 %206, 0, !dbg !4346
  br i1 %207, label %208, label %216, !dbg !4347

208:                                              ; preds = %202
  %209 = zext i32 %206 to i64, !dbg !4348
  %210 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %200, i64 %203, i32 1, !dbg !4349
  %211 = load i32, i32* %210, align 4, !dbg !4349, !tbaa !1309
  %212 = add nsw i32 %211, -1, !dbg !4350
  %213 = sext i32 %212 to i64, !dbg !4351
  %214 = mul nsw i64 %213, %209, !dbg !4352
  %215 = add nsw i64 %214, %204, !dbg !4353
  call void @llvm.dbg.value(metadata i64 %215, metadata !1927, metadata !DIExpression()), !dbg !4332
  br label %216, !dbg !4354

216:                                              ; preds = %208, %202
  %217 = phi i64 [ %215, %208 ], [ %204, %202 ], !dbg !4332
  call void @llvm.dbg.value(metadata i64 %217, metadata !1927, metadata !DIExpression()), !dbg !4332
  %218 = add nuw nsw i64 %203, 1, !dbg !4355
  call void @llvm.dbg.value(metadata i64 %218, metadata !1928, metadata !DIExpression()), !dbg !4334
  %219 = icmp eq i64 %218, %201, !dbg !4336
  br i1 %219, label %220, label %202, !dbg !4337, !llvm.loop !4356

220:                                              ; preds = %216
  call void @llvm.dbg.value(metadata i64 %217, metadata !1927, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4332
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !4338
  %221 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1, !dbg !4340
  %222 = load i8, i8* %221, align 1, !dbg !4340, !tbaa !1214
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1940, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 0, metadata !1943, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i32 0, metadata !1944, metadata !DIExpression()), !dbg !4343
  br label %223, !dbg !4344

223:                                              ; preds = %237, %220
  %224 = phi i64 [ 0, %220 ], [ %239, %237 ]
  %225 = phi i64 [ 0, %220 ], [ %238, %237 ]
  call void @llvm.dbg.value(metadata i64 %224, metadata !1944, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i64 %225, metadata !1943, metadata !DIExpression()), !dbg !4341
  %226 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %200, i64 %224, i32 2, !dbg !4358
  %227 = load i32, i32* %226, align 4, !dbg !4358, !tbaa !1244
  %228 = icmp slt i32 %227, 0, !dbg !4359
  br i1 %228, label %229, label %237, !dbg !4360

229:                                              ; preds = %223
  %230 = sext i32 %227 to i64, !dbg !4361
  %231 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %200, i64 %224, i32 1, !dbg !4362
  %232 = load i32, i32* %231, align 4, !dbg !4362, !tbaa !1309
  %233 = add nsw i32 %232, -1, !dbg !4363
  %234 = sext i32 %233 to i64, !dbg !4364
  %235 = mul nsw i64 %234, %230, !dbg !4365
  %236 = add nsw i64 %235, %225, !dbg !4366
  call void @llvm.dbg.value(metadata i64 %236, metadata !1943, metadata !DIExpression()), !dbg !4341
  br label %237, !dbg !4367

237:                                              ; preds = %229, %223
  %238 = phi i64 [ %236, %229 ], [ %225, %223 ], !dbg !4341
  call void @llvm.dbg.value(metadata i64 %238, metadata !1943, metadata !DIExpression()), !dbg !4341
  %239 = add nuw nsw i64 %224, 1, !dbg !4368
  call void @llvm.dbg.value(metadata i64 %239, metadata !1944, metadata !DIExpression()), !dbg !4343
  %240 = icmp eq i64 %239, %201, !dbg !4369
  br i1 %240, label %241, label %223, !dbg !4344, !llvm.loop !4370

241:                                              ; preds = %237, %195
  %242 = phi i8 [ %197, %195 ], [ %222, %237 ]
  %243 = phi i64 [ 0, %195 ], [ %217, %237 ]
  %244 = phi i64 [ 0, %195 ], [ %238, %237 ], !dbg !4341
  %245 = zext i8 %242 to i64, !dbg !4340
  %246 = add nuw nsw i64 %245, 7, !dbg !4372
  %247 = lshr i64 %246, 3, !dbg !4373
  %248 = add nsw i64 %243, 1, !dbg !4374
  call void @llvm.dbg.value(metadata i64 %248, metadata !1927, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !4375
  %249 = sub i64 %248, %244, !dbg !4377
  %250 = mul i64 %249, %247, !dbg !4377
  call void @llvm.dbg.value(metadata i64 %250, metadata !4062, metadata !DIExpression()), !dbg !4378
  %251 = icmp eq i64 %250, 0, !dbg !4379
  br i1 %251, label %252, label %253, !dbg !4382

252:                                              ; preds = %241
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.116, i64 0, i64 0)) #8, !dbg !4383
  call void @abort() #8, !dbg !4383
  br label %253, !dbg !4383

253:                                              ; preds = %252, %241
  call void @llvm.dbg.value(metadata i64 0, metadata !4067, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4378
  call void @llvm.dbg.value(metadata i64 %250, metadata !4067, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4378
  %254 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %8, i64 0, i32 0, !dbg !4385
  store i64 0, i64* %254, align 8, !dbg !4385, !tbaa.struct !1506
  %255 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::NSRange", %"struct.Halide::Runtime::Internal::Metal::NSRange"* %8, i64 0, i32 1, !dbg !4385
  store i64 %250, i64* %255, align 8, !dbg !4385, !tbaa.struct !3077
  call void @_ZN6Halide7Runtime8Internal5Metal16did_modify_rangeEPNS2_10mtl_bufferENS2_7NSRangeE(%"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %181, %"struct.Halide::Runtime::Internal::Metal::NSRange"* nonnull byval(%"struct.Halide::Runtime::Internal::Metal::NSRange") align 8 %8) #9, !dbg !4386
  br label %256, !dbg !4387

256:                                              ; preds = %253, %183
  %257 = load %struct.halide_metal_command_queue*, %struct.halide_metal_command_queue** %175, align 8, !dbg !4388, !tbaa !2715
  call void @halide_metal_device_sync_internal(%struct.halide_metal_command_queue* %257, %struct.halide_buffer_t* %3) #9, !dbg !4389
  br label %258, !dbg !4390

258:                                              ; preds = %173, %256, %139
  %259 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4391
  call void @llvm.dbg.value(metadata i64 %259, metadata !4068, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !4392
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !4392
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !4392
  %260 = call i8* @malloc(i64 1024) #8, !dbg !4394
  %261 = icmp eq i8* %260, null, !dbg !4395
  br i1 %261, label %264, label %262, !dbg !4396

262:                                              ; preds = %258
  %263 = getelementptr inbounds i8, i8* %260, i64 1023, !dbg !4397
  store i8 0, i8* %263, align 1, !dbg !4398, !tbaa !1134
  br label %264, !dbg !4399

264:                                              ; preds = %258, %262
  %265 = phi i8* [ %263, %262 ], [ null, %258 ], !dbg !4400
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4401
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4401
  %266 = call i8* @halide_string_to_string(i8* %260, i8* %265, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0)) #8, !dbg !4403
  %267 = sub i64 %259, %124, !dbg !4404
  %268 = uitofp i64 %267 to double, !dbg !4405
  %269 = fdiv double %268, 1.000000e+06, !dbg !4406
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2147, metadata !DIExpression()) #10, !dbg !4407
  call void @llvm.dbg.value(metadata double %269, metadata !2150, metadata !DIExpression()) #10, !dbg !4407
  %270 = call i8* @halide_double_to_string(i8* %266, i8* %265, double %269, i32 1) #8, !dbg !4409
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4410
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4410
  %271 = call i8* @halide_string_to_string(i8* %270, i8* %265, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !4412
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !4413
  br i1 %261, label %272, label %273, !dbg !4415

272:                                              ; preds = %264
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !4416
  br label %279, !dbg !4417

273:                                              ; preds = %264
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !4418
  %274 = ptrtoint i8* %271 to i64, !dbg !4420
  %275 = ptrtoint i8* %260 to i64, !dbg !4420
  %276 = add i64 %274, 1, !dbg !4420
  %277 = sub i64 %276, %275, !dbg !4421
  %278 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %260, i64 %277) #8, !dbg !4422
  call void @halide_print(i8* %0, i8* nonnull %260) #8, !dbg !4423
  br label %279

279:                                              ; preds = %273, %272
  call void @free(i8* %260) #8, !dbg !4424
  br label %280, !dbg !4425

280:                                              ; preds = %69, %279
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %6, metadata !2169, metadata !DIExpression()) #10, !dbg !4426
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %6) #8, !dbg !4428
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %71) #10, !dbg !4425
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %70) #10, !dbg !4429
  br label %281

281:                                              ; preds = %45, %44, %280, %25
  %282 = phi i32 [ -39, %25 ], [ %73, %280 ], [ -42, %44 ], [ -42, %45 ], !dbg !4069
  ret i32 %282, !dbg !4429
}

; Function Attrs: nounwind mustprogress
define internal fastcc void @_ZN6Halide7Runtime8Internal5Metal12_GLOBAL__N_124do_device_to_device_copyEPvPNS2_24mtl_blit_command_encoderERKNS1_11device_copyEyyi(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::device_copy"* nocapture nonnull readonly align 8 dereferenceable(416) %1, i64 %2, i64 %3, i32 %4) unnamed_addr #0 !dbg !4430 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !4435, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, metadata !4436, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %1, metadata !4437, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64 %2, metadata !4438, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64 %3, metadata !4439, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 %4, metadata !4440, metadata !DIExpression()), !dbg !4450
  %6 = icmp eq i32 %4, 0, !dbg !4451
  br i1 %6, label %16, label %7, !dbg !4452

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 0, metadata !4445, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.value(metadata i64 0, metadata !4444, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 0, metadata !4441, metadata !DIExpression()), !dbg !4454
  %8 = add nsw i32 %4, -1, !dbg !4455
  %9 = sext i32 %8 to i64, !dbg !4456
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 3, i64 %9, !dbg !4456
  %11 = load i64, i64* %10, align 8, !dbg !4456, !tbaa !1032
  %12 = icmp eq i64 %11, 0, !dbg !4457
  br i1 %12, label %45, label %13, !dbg !4458

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 5, i64 %9
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 4, i64 %9
  br label %32, !dbg !4458

16:                                               ; preds = %5
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 0, !dbg !4459
  %18 = load i64, i64* %17, align 8, !dbg !4459, !tbaa !1051
  %19 = inttoptr i64 %18 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4461
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %19, i64 0, i32 0, !dbg !4462
  %21 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %20, align 8, !dbg !4462, !tbaa !2114
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 2, !dbg !4463
  %23 = load i64, i64* %22, align 8, !dbg !4463, !tbaa !1092
  %24 = add i64 %23, %2, !dbg !4464
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 1, !dbg !4465
  %26 = load i64, i64* %25, align 8, !dbg !4465, !tbaa !1057
  %27 = inttoptr i64 %26 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4466
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %27, i64 0, i32 0, !dbg !4467
  %29 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %28, align 8, !dbg !4467, !tbaa !2114
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 6, !dbg !4468
  %31 = load i64, i64* %30, align 8, !dbg !4468, !tbaa !1061
  tail call void @_ZN6Halide7Runtime8Internal5Metal24buffer_to_buffer_1d_copyEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferEmS6_mm(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %21, i64 %24, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %29, i64 %3, i64 %31) #9, !dbg !4469
  br label %45, !dbg !4470

32:                                               ; preds = %13, %32
  %33 = phi i64 [ 0, %13 ], [ %42, %32 ]
  %34 = phi i64 [ 0, %13 ], [ %39, %32 ]
  %35 = phi i64 [ 0, %13 ], [ %41, %32 ]
  call void @llvm.dbg.value(metadata i64 %33, metadata !4445, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.value(metadata i64 %34, metadata !4444, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %35, metadata !4441, metadata !DIExpression()), !dbg !4454
  %36 = add i64 %35, %2, !dbg !4471
  %37 = add i64 %34, %3, !dbg !4472
  tail call fastcc void @_ZN6Halide7Runtime8Internal5Metal12_GLOBAL__N_124do_device_to_device_copyEPvPNS2_24mtl_blit_command_encoderERKNS1_11device_copyEyyi(%"struct.Halide::Runtime::Internal::Metal::mtl_blit_command_encoder"* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i64 %36, i64 %37, i32 %8) #9, !dbg !4473
  call void @llvm.dbg.value(metadata i32 0, metadata !4447, metadata !DIExpression()), !dbg !4474
  %38 = load i64, i64* %14, align 8, !dbg !4475, !tbaa !1032
  %39 = add i64 %38, %34, !dbg !4476
  call void @llvm.dbg.value(metadata i64 %39, metadata !4444, metadata !DIExpression()), !dbg !4454
  %40 = load i64, i64* %15, align 8, !dbg !4477, !tbaa !1032
  %41 = add i64 %40, %35, !dbg !4478
  call void @llvm.dbg.value(metadata i64 %41, metadata !4441, metadata !DIExpression()), !dbg !4454
  %42 = add nuw i64 %33, 1, !dbg !4479
  call void @llvm.dbg.value(metadata i64 %42, metadata !4445, metadata !DIExpression()), !dbg !4453
  %43 = load i64, i64* %10, align 8, !dbg !4456, !tbaa !1032
  %44 = icmp ult i64 %42, %43, !dbg !4457
  br i1 %44, label %32, label %45, !dbg !4458, !llvm.loop !4480

45:                                               ; preds = %32, %7, %16
  ret void, !dbg !4482
}

; Function Attrs: nounwind
define weak dso_local i32 @metal_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 !dbg !4483 {
  %5 = alloca %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4487, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4488, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i64 %2, metadata !4489, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !4490, metadata !DIExpression()), !dbg !4493
  %6 = bitcast %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5 to i8*, !dbg !4494
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #10, !dbg !4494
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, metadata !4491, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, metadata !2041, metadata !DIExpression()) #10, !dbg !4496
  call void @llvm.dbg.value(metadata i8* %0, metadata !2044, metadata !DIExpression()) #10, !dbg !4496
  call void @llvm.dbg.value(metadata i1 true, metadata !2045, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !4496
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %5, i8* %0, i1 zeroext true) #8, !dbg !4498
  %7 = getelementptr inbounds %"class.Halide::Runtime::Internal::Metal::MetalContextHolder", %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, i64 0, i32 4, !dbg !4499
  %8 = load i32, i32* %7, align 8, !dbg !4499, !tbaa !1837
  %9 = icmp eq i32 %8, 0, !dbg !4501
  br i1 %9, label %10, label %47, !dbg !4502

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !4503
  %12 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %11, align 8, !dbg !4503, !tbaa !2123
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 1, !dbg !4504
  store %struct.halide_device_interface_t* %12, %struct.halide_device_interface_t** %13, align 8, !dbg !4505, !tbaa !2123
  %14 = call i8* @malloc(i64 16) #8, !dbg !4506
  call void @llvm.dbg.value(metadata i8* %14, metadata !4492, metadata !DIExpression()), !dbg !4493
  %15 = icmp eq i8* %14, null, !dbg !4507
  br i1 %15, label %16, label %30, !dbg !4509

16:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1688, metadata !DIExpression()) #10, !dbg !4510
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()) #10, !dbg !4510
  call void @llvm.dbg.value(metadata i8* null, metadata !1692, metadata !DIExpression()) #10, !dbg !4510
  %17 = call i8* @malloc(i64 1024) #8, !dbg !4513
  %18 = icmp eq i8* %17, null, !dbg !4514
  br i1 %18, label %19, label %21, !dbg !4515

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !4516
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.117, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !4516
  %20 = call i8* @halide_string_to_string(i8* %17, i8* null, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.117, i64 0, i64 0)) #8, !dbg !4518
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !4519
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !4521
  br label %29, !dbg !4522

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, i8* %17, i64 1023, !dbg !4523
  store i8 0, i8* %22, align 1, !dbg !4524, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !4516
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.117, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !4516
  %23 = call i8* @halide_string_to_string(i8* nonnull %17, i8* nonnull %22, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.117, i64 0, i64 0)) #8, !dbg !4518
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !4519
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1722, metadata !DIExpression()) #10, !dbg !4525
  %24 = ptrtoint i8* %23 to i64, !dbg !4527
  %25 = ptrtoint i8* %17 to i64, !dbg !4527
  %26 = add i64 %24, 1, !dbg !4527
  %27 = sub i64 %26, %25, !dbg !4528
  %28 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %17, i64 %27) #8, !dbg !4529
  call void @halide_error(i8* %0, i8* nonnull %17) #8, !dbg !4530
  br label %29

29:                                               ; preds = %21, %19
  call void @free(i8* %17) #8, !dbg !4531
  br label %47, !dbg !4532

30:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %14, metadata !4492, metadata !DIExpression()), !dbg !4493
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !4533
  %32 = load i64, i64* %31, align 8, !dbg !4533, !tbaa !1198
  %33 = inttoptr i64 %32 to i8**, !dbg !4534
  %34 = load i8*, i8** %33, align 8, !dbg !4534, !tbaa !2114
  call void @_ZN6Halide7Runtime8Internal16retain_ns_objectEPv(i8* %34) #9, !dbg !4535
  %35 = load i64, i64* %31, align 8, !dbg !4536, !tbaa !1198
  %36 = inttoptr i64 %35 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4537
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %36, i64 0, i32 0, !dbg !4538
  %38 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %37, align 8, !dbg !4538, !tbaa !2114
  %39 = bitcast i8* %14 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"**, !dbg !4539
  store %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %38, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %39, align 8, !dbg !4540, !tbaa !2114
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %36, i64 0, i32 1, !dbg !4541
  %41 = load i64, i64* %40, align 8, !dbg !4541, !tbaa !2118
  %42 = add i64 %41, %2, !dbg !4542
  %43 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !4543
  %44 = bitcast i8* %43 to i64*, !dbg !4543
  store i64 %42, i64* %44, align 8, !dbg !4544, !tbaa !2118
  %45 = ptrtoint i8* %14 to i64, !dbg !4545
  %46 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0, !dbg !4546
  store i64 %45, i64* %46, align 8, !dbg !4547, !tbaa !1198
  br label %47, !dbg !4548

47:                                               ; preds = %29, %30, %4
  %48 = phi i32 [ %8, %4 ], [ -11, %29 ], [ 0, %30 ], !dbg !4493
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* %5, metadata !2169, metadata !DIExpression()) #10, !dbg !4549
  call void @_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv(%"class.Halide::Runtime::Internal::Metal::MetalContextHolder"* nonnull dereferenceable(36) %5) #8, !dbg !4551
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #10, !dbg !4552
  ret i32 %48, !dbg !4552
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_metal_device_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_buffer_t* %2) #0 !dbg !4553 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4555, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4556, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !4557, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4561, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !4566, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 0, metadata !4567, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 0, metadata !4568, metadata !DIExpression()), !dbg !4572
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !4573
  %5 = load i32, i32* %4, align 4, !dbg !4573, !tbaa !1233
  %6 = icmp sgt i32 %5, 0, !dbg !4575
  br i1 %6, label %7, label %29, !dbg !4576

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 6
  %9 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %8, align 8, !tbaa !1236
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %11 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %10, align 8, !tbaa !1236
  %12 = zext i32 %5 to i64, !dbg !4575
  br label %13, !dbg !4576

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %27, %13 ]
  %15 = phi i64 [ 0, %7 ], [ %26, %13 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4568, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %15, metadata !4567, metadata !DIExpression()), !dbg !4570
  %16 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %9, i64 %14, i32 0, !dbg !4577
  %17 = load i32, i32* %16, align 4, !dbg !4577, !tbaa !1248
  %18 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %14, i32 0, !dbg !4579
  %19 = load i32, i32* %18, align 4, !dbg !4579, !tbaa !1248
  %20 = sub nsw i32 %17, %19, !dbg !4580
  %21 = sext i32 %20 to i64, !dbg !4581
  %22 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %11, i64 %14, i32 2, !dbg !4582
  %23 = load i32, i32* %22, align 4, !dbg !4582, !tbaa !1244
  %24 = sext i32 %23 to i64, !dbg !4583
  %25 = mul nsw i64 %21, %24, !dbg !4584
  %26 = add nsw i64 %25, %15, !dbg !4585
  call void @llvm.dbg.value(metadata i64 %26, metadata !4567, metadata !DIExpression()), !dbg !4570
  %27 = add nuw nsw i64 %14, 1, !dbg !4586
  call void @llvm.dbg.value(metadata i64 %27, metadata !4568, metadata !DIExpression()), !dbg !4572
  %28 = icmp eq i64 %27, %12, !dbg !4575
  br i1 %28, label %29, label %13, !dbg !4576, !llvm.loop !4587

29:                                               ; preds = %13, %3
  %30 = phi i64 [ 0, %3 ], [ %26, %13 ], !dbg !4570
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !4589
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !4591
  %32 = load i8, i8* %31, align 1, !dbg !4591, !tbaa !1214
  %33 = zext i8 %32 to i64, !dbg !4591
  %34 = add nuw nsw i64 %33, 7, !dbg !4592
  %35 = lshr i64 %34, 3, !dbg !4593
  %36 = mul nsw i64 %35, %30, !dbg !4594
  call void @llvm.dbg.value(metadata i64 %36, metadata !4567, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 %36, metadata !4558, metadata !DIExpression()), !dbg !4560
  %37 = tail call i32 @metal_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %36, %struct.halide_buffer_t* %2) #9, !dbg !4595
  ret i32 %37, !dbg !4596
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_metal_device_slice(i8* %0, %struct.halide_buffer_t* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4) #0 !dbg !4597 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4599, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4600, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.value(metadata i32 %2, metadata !4601, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.value(metadata i32 %3, metadata !4602, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !4603, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4606, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i32 %2, metadata !4611, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i32 %3, metadata !4612, metadata !DIExpression()), !dbg !4614
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6, !dbg !4616
  %7 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %6, align 8, !dbg !4616, !tbaa !1236
  %8 = sext i32 %2 to i64, !dbg !4617
  %9 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %7, i64 %8, i32 0, !dbg !4618
  %10 = load i32, i32* %9, align 4, !dbg !4618, !tbaa !1248
  %11 = sub nsw i32 %3, %10, !dbg !4619
  %12 = sext i32 %11 to i64, !dbg !4620
  %13 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %7, i64 %8, i32 2, !dbg !4621
  %14 = load i32, i32* %13, align 4, !dbg !4621, !tbaa !1244
  %15 = sext i32 %14 to i64, !dbg !4622
  %16 = mul nsw i64 %12, %15, !dbg !4623
  call void @llvm.dbg.value(metadata i64 %16, metadata !4613, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !1207, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !4624
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !4626
  %18 = load i8, i8* %17, align 1, !dbg !4626, !tbaa !1214
  %19 = zext i8 %18 to i64, !dbg !4626
  %20 = add nuw nsw i64 %19, 7, !dbg !4627
  %21 = lshr i64 %20, 3, !dbg !4628
  %22 = mul nsw i64 %16, %21, !dbg !4629
  call void @llvm.dbg.value(metadata i64 %22, metadata !4613, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i64 %22, metadata !4604, metadata !DIExpression()), !dbg !4605
  %23 = tail call i32 @metal_device_crop_from_offset(i8* %0, %struct.halide_buffer_t* %1, i64 %22, %struct.halide_buffer_t* %4) #9, !dbg !4630
  ret i32 %23, !dbg !4631
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_device_release_crop(i8* %0, %struct.halide_buffer_t* %1) #4 !dbg !4632 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4634, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4635, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !4640
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !4640
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !4640
  %3 = tail call i8* @malloc(i64 1024) #8, !dbg !4642
  %4 = icmp eq i8* %3, null, !dbg !4643
  br i1 %4, label %7, label %5, !dbg !4644

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !4645
  store i8 0, i8* %6, align 1, !dbg !4646, !tbaa !1134
  br label %7, !dbg !4647

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !4648
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4649
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.118, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4649
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.118, i64 0, i64 0)) #8, !dbg !4651
  %10 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !4652
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1890, metadata !DIExpression()) #10, !dbg !4653
  call void @llvm.dbg.value(metadata i8* %10, metadata !1893, metadata !DIExpression()) #10, !dbg !4653
  %11 = tail call i8* @halide_pointer_to_string(i8* %9, i8* %8, i8* %10) #8, !dbg !4655
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4656
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %8, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0)) #8, !dbg !4658
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !4659
  %14 = load i64, i64* %13, align 8, !dbg !4659, !tbaa !1198
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2214, metadata !DIExpression()) #10, !dbg !4660
  call void @llvm.dbg.value(metadata i64 %14, metadata !2217, metadata !DIExpression()) #10, !dbg !4660
  %15 = tail call i8* @halide_uint64_to_string(i8* %12, i8* %8, i64 %14, i32 1) #8, !dbg !4662
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4663
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4663
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %8, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !4665
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !4666
  br i1 %4, label %17, label %18, !dbg !4668

17:                                               ; preds = %7
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !4669
  br label %24, !dbg !4670

18:                                               ; preds = %7
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !4671
  %19 = ptrtoint i8* %16 to i64, !dbg !4673
  %20 = ptrtoint i8* %3 to i64, !dbg !4673
  %21 = add i64 %19, 1, !dbg !4673
  %22 = sub i64 %21, %20, !dbg !4674
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %22) #8, !dbg !4675
  tail call void @halide_print(i8* %0, i8* nonnull %3) #8, !dbg !4676
  br label %24

24:                                               ; preds = %17, %18
  call void @free(i8* %3) #8, !dbg !4677
  %25 = load i64, i64* %13, align 8, !dbg !4678, !tbaa !1198
  %26 = icmp eq i64 %25, 0, !dbg !4680
  br i1 %26, label %54, label %27, !dbg !4681

27:                                               ; preds = %24
  %28 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4682
  call void @llvm.dbg.value(metadata i64 %28, metadata !4636, metadata !DIExpression()), !dbg !4639
  %29 = load i64, i64* %13, align 8, !dbg !4683, !tbaa !1198
  call void @llvm.dbg.value(metadata i64 %29, metadata !4637, metadata !DIExpression()), !dbg !4639
  %30 = inttoptr i64 %29 to i8**, !dbg !4684
  %31 = load i8*, i8** %30, align 8, !dbg !4684, !tbaa !2114
  call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %31) #9, !dbg !4685
  %32 = inttoptr i64 %29 to i8*, !dbg !4686
  call void @free(i8* %32) #8, !dbg !4687
  %33 = call i64 @halide_current_time_ns(i8* %0) #8, !dbg !4688
  call void @llvm.dbg.value(metadata i64 %33, metadata !4638, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1095, metadata !DIExpression()) #10, !dbg !4689
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()) #10, !dbg !4689
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !4689
  %34 = call i8* @malloc(i64 1024) #8, !dbg !4691
  %35 = icmp eq i8* %34, null, !dbg !4692
  br i1 %35, label %38, label %36, !dbg !4693

36:                                               ; preds = %27
  %37 = getelementptr inbounds i8, i8* %34, i64 1023, !dbg !4694
  store i8 0, i8* %37, align 1, !dbg !4695, !tbaa !1134
  br label %38, !dbg !4696

38:                                               ; preds = %27, %36
  %39 = phi i8* [ %37, %36 ], [ null, %27 ], !dbg !4697
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4698
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4698
  %40 = call i8* @halide_string_to_string(i8* %34, i8* %39, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0)) #8, !dbg !4700
  %41 = sub i64 %33, %28, !dbg !4701
  %42 = uitofp i64 %41 to double, !dbg !4702
  %43 = fdiv double %42, 1.000000e+06, !dbg !4703
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !2147, metadata !DIExpression()) #10, !dbg !4704
  call void @llvm.dbg.value(metadata double %43, metadata !2150, metadata !DIExpression()) #10, !dbg !4704
  %44 = call i8* @halide_double_to_string(i8* %40, i8* %39, double %43, i32 1) #8, !dbg !4706
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1112, metadata !DIExpression()) #10, !dbg !4707
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !4707
  %45 = call i8* @halide_string_to_string(i8* %44, i8* %39, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !4709
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1121, metadata !DIExpression()) #10, !dbg !4710
  br i1 %35, label %46, label %47, !dbg !4712

46:                                               ; preds = %38
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !4713
  br label %53, !dbg !4714

47:                                               ; preds = %38
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !4715
  %48 = ptrtoint i8* %45 to i64, !dbg !4717
  %49 = ptrtoint i8* %34 to i64, !dbg !4717
  %50 = add i64 %48, 1, !dbg !4717
  %51 = sub i64 %50, %49, !dbg !4718
  %52 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %34, i64 %51) #8, !dbg !4719
  call void @halide_print(i8* %0, i8* nonnull %34) #8, !dbg !4720
  br label %53

53:                                               ; preds = %47, %46
  call void @free(i8* %34) #8, !dbg !4721
  br label %54

54:                                               ; preds = %24, %53
  ret i32 0, !dbg !4722
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_metal_wrap_buffer(i8* %0, %struct.halide_buffer_t* %1, i64 %2) #4 !dbg !4723 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4725, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4726, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 %2, metadata !4727, metadata !DIExpression()), !dbg !4729
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !4730
  %5 = load i64, i64* %4, align 8, !dbg !4730, !tbaa !1198
  %6 = icmp eq i64 %5, 0, !dbg !4730
  br i1 %6, label %10, label %7, !dbg !4733

7:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.119, i64 0, i64 0)) #8, !dbg !4734
  tail call void @abort() #8, !dbg !4734
  %8 = load i64, i64* %4, align 8, !dbg !4736, !tbaa !1198
  %9 = icmp eq i64 %8, 0, !dbg !4738
  br i1 %9, label %10, label %37, !dbg !4739

10:                                               ; preds = %3, %7
  %11 = tail call i8* @malloc(i64 16) #8, !dbg !4740
  call void @llvm.dbg.value(metadata i8* %11, metadata !4728, metadata !DIExpression()), !dbg !4729
  %12 = icmp eq i8* %11, null, !dbg !4741
  br i1 %12, label %13, label %27, !dbg !4743

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1688, metadata !DIExpression()) #10, !dbg !4744
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()) #10, !dbg !4744
  call void @llvm.dbg.value(metadata i8* null, metadata !1692, metadata !DIExpression()) #10, !dbg !4744
  %14 = tail call i8* @malloc(i64 1024) #8, !dbg !4747
  %15 = icmp eq i8* %14, null, !dbg !4748
  br i1 %15, label %16, label %18, !dbg !4749

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !4750
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.120, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !4750
  %17 = tail call i8* @halide_string_to_string(i8* %14, i8* null, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.120, i64 0, i64 0)) #8, !dbg !4752
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !4753
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !4755
  br label %26, !dbg !4756

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, i8* %14, i64 1023, !dbg !4757
  store i8 0, i8* %19, align 1, !dbg !4758, !tbaa !1134
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1699, metadata !DIExpression()) #10, !dbg !4750
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.120, i64 0, i64 0), metadata !1702, metadata !DIExpression()) #10, !dbg !4750
  %20 = tail call i8* @halide_string_to_string(i8* nonnull %14, i8* nonnull %19, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @.str.120, i64 0, i64 0)) #8, !dbg !4752
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1708, metadata !DIExpression()) #10, !dbg !4753
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1722, metadata !DIExpression()) #10, !dbg !4759
  %21 = ptrtoint i8* %20 to i64, !dbg !4761
  %22 = ptrtoint i8* %14 to i64, !dbg !4761
  %23 = add i64 %21, 1, !dbg !4761
  %24 = sub i64 %23, %22, !dbg !4762
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %14, i64 %24) #8, !dbg !4763
  tail call void @halide_error(i8* %0, i8* nonnull %14) #8, !dbg !4764
  br label %26

26:                                               ; preds = %18, %16
  tail call void @free(i8* %14) #8, !dbg !4765
  br label %37, !dbg !4766

27:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %11, metadata !4728, metadata !DIExpression()), !dbg !4729
  %28 = inttoptr i64 %2 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, !dbg !4767
  %29 = bitcast i8* %11 to %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"**, !dbg !4768
  store %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %28, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %29, align 8, !dbg !4769, !tbaa !2114
  %30 = getelementptr inbounds i8, i8* %11, i64 8, !dbg !4770
  %31 = bitcast i8* %30 to i64*, !dbg !4770
  store i64 0, i64* %31, align 8, !dbg !4771, !tbaa !2118
  %32 = ptrtoint i8* %11 to i64, !dbg !4772
  store i64 %32, i64* %4, align 8, !dbg !4773, !tbaa !1198
  %33 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !4774
  store %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, %struct.halide_device_interface_t** %33, align 8, !dbg !4775, !tbaa !2123
  %34 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** getelementptr inbounds (%struct.halide_device_interface_t, %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, i64 0, i32 15), align 8, !dbg !4776, !tbaa !2125
  %35 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %34, i64 0, i32 0, !dbg !4777
  %36 = load void ()*, void ()** %35, align 8, !dbg !4777, !tbaa !2128
  tail call void %36() #8, !dbg !4778
  br label %37, !dbg !4779

37:                                               ; preds = %26, %27, %7
  %38 = phi i32 [ -2, %7 ], [ -11, %26 ], [ 0, %27 ], !dbg !4729
  ret i32 %38, !dbg !4780
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_metal_detach_buffer(i8* %0, %struct.halide_buffer_t* %1) #0 !dbg !4781 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4783, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4784, metadata !DIExpression()), !dbg !4785
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !4786
  %4 = load i64, i64* %3, align 8, !dbg !4786, !tbaa !1198
  %5 = icmp eq i64 %4, 0, !dbg !4788
  br i1 %5, label %20, label %6, !dbg !4789

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !4790
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !dbg !4790, !tbaa !2123
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, !dbg !4790
  br i1 %9, label %12, label %10, !dbg !4793

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.121, i64 0, i64 0)) #8, !dbg !4794
  tail call void @abort() #8, !dbg !4794
  %11 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !dbg !4796, !tbaa !2123
  br label %12, !dbg !4794

12:                                               ; preds = %6, %10
  %13 = phi %struct.halide_device_interface_t* [ @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, %6 ], [ %11, %10 ], !dbg !4796
  %14 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %13, i64 0, i32 15, !dbg !4797
  %15 = load %struct.halide_device_interface_impl_t*, %struct.halide_device_interface_impl_t** %14, align 8, !dbg !4797, !tbaa !2125
  %16 = getelementptr inbounds %struct.halide_device_interface_impl_t, %struct.halide_device_interface_impl_t* %15, i64 0, i32 1, !dbg !4798
  %17 = load void ()*, void ()** %16, align 8, !dbg !4798, !tbaa !2257
  tail call void %17() #8, !dbg !4799
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %7, align 8, !dbg !4800, !tbaa !2123
  %18 = load i64, i64* %3, align 8, !dbg !4801, !tbaa !1198
  %19 = inttoptr i64 %18 to i8*, !dbg !4802
  tail call void @free(i8* %19) #8, !dbg !4803
  store i64 0, i64* %3, align 8, !dbg !4804, !tbaa !1198
  br label %20, !dbg !4805

20:                                               ; preds = %2, %12
  ret i32 0, !dbg !4806
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @halide_metal_get_buffer(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !4807 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4811, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4812, metadata !DIExpression()), !dbg !4813
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !4814
  %4 = load i64, i64* %3, align 8, !dbg !4814, !tbaa !1198
  %5 = icmp eq i64 %4, 0, !dbg !4816
  br i1 %5, label %18, label %6, !dbg !4817

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !4818
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !dbg !4818, !tbaa !2123
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, !dbg !4818
  br i1 %9, label %12, label %10, !dbg !4821

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.122, i64 0, i64 0)) #8, !dbg !4822
  tail call void @abort() #8, !dbg !4822
  %11 = load i64, i64* %3, align 8, !dbg !4824, !tbaa !1198
  br label %12, !dbg !4822

12:                                               ; preds = %6, %10
  %13 = phi i64 [ %4, %6 ], [ %11, %10 ], !dbg !4824
  %14 = inttoptr i64 %13 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4825
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %14, i64 0, i32 0, !dbg !4826
  %16 = load %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"*, %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"** %15, align 8, !dbg !4826, !tbaa !2114
  %17 = ptrtoint %"struct.Halide::Runtime::Internal::Metal::mtl_buffer"* %16 to i64, !dbg !4827
  br label %18, !dbg !4828

18:                                               ; preds = %2, %12
  %19 = phi i64 [ %17, %12 ], [ 0, %2 ], !dbg !4813
  ret i64 %19, !dbg !4829
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @halide_metal_get_crop_offset(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !4830 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4834, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !4835, metadata !DIExpression()), !dbg !4836
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !4837
  %4 = load i64, i64* %3, align 8, !dbg !4837, !tbaa !1198
  %5 = icmp eq i64 %4, 0, !dbg !4839
  br i1 %5, label %17, label %6, !dbg !4840

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !4841
  %8 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %7, align 8, !dbg !4841, !tbaa !2123
  %9 = icmp eq %struct.halide_device_interface_t* %8, @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, !dbg !4841
  br i1 %9, label %12, label %10, !dbg !4844

10:                                               ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.123, i64 0, i64 0)) #8, !dbg !4845
  tail call void @abort() #8, !dbg !4845
  %11 = load i64, i64* %3, align 8, !dbg !4847, !tbaa !1198
  br label %12, !dbg !4845

12:                                               ; preds = %6, %10
  %13 = phi i64 [ %4, %6 ], [ %11, %10 ], !dbg !4847
  %14 = inttoptr i64 %13 to %"struct.Halide::Runtime::Internal::Metal::device_handle"*, !dbg !4848
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Metal::device_handle", %"struct.Halide::Runtime::Internal::Metal::device_handle"* %14, i64 0, i32 1, !dbg !4849
  %16 = load i64, i64* %15, align 8, !dbg !4849, !tbaa !2118
  br label %17, !dbg !4850

17:                                               ; preds = %2, %12
  %18 = phi i64 [ %16, %12 ], [ 0, %2 ], !dbg !4836
  ret i64 %18, !dbg !4851
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local %struct.halide_device_interface_t* @halide_metal_device_interface() local_unnamed_addr #6 !dbg !4852 {
  ret %struct.halide_device_interface_t* @_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE, !dbg !4855
}

; Function Attrs: nounwind
define weak dso_local void @halide_metal_cleanup() #4 !dbg !4856 {
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, metadata !4857, metadata !DIExpression()) #10, !dbg !4866
  call void @llvm.dbg.value(metadata i8* null, metadata !4863, metadata !DIExpression()) #10, !dbg !4866
  call void @llvm.dbg.value(metadata void (i8*)* @_ZN6Halide7Runtime8Internal17release_ns_objectEPv, metadata !4864, metadata !DIExpression()) #10, !dbg !4866
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2411, metadata !DIExpression()) #10, !dbg !4868
  call void @llvm.dbg.value(metadata %struct.halide_mutex* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0), metadata !2414, metadata !DIExpression()) #10, !dbg !4868
  call void @llvm.dbg.value(metadata %struct.halide_mutex* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0), metadata !4865, metadata !DIExpression()) #10, !dbg !4866
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0)) #8, !dbg !4870
  tail call void @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE15release_contextIFvPvEEEvSB_bS3_RT_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i8* null, i1 zeroext true, %struct.halide_metal_device* null, void (i8*)* nonnull @_ZN6Halide7Runtime8Internal17release_ns_objectEPv) #8, !dbg !4871
  %1 = load i32, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 3), align 8, !dbg !4872, !tbaa !4874
  %2 = icmp eq i32 %1, 0, !dbg !4875
  br i1 %2, label %3, label %5, !dbg !4876

3:                                                ; preds = %0
  %4 = load i8*, i8** bitcast (%"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 2) to i8**), align 8, !dbg !4877, !tbaa !2476
  tail call void @free(i8* %4) #8, !dbg !4879
  store %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 2), align 8, !dbg !4880, !tbaa !2476
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 1), align 8, !dbg !4881, !tbaa !2453
  br label %5, !dbg !4882

5:                                                ; preds = %0, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !2583, metadata !DIExpression()) #10, !dbg !4883
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 0)) #8, !dbg !4885
  %6 = tail call i32 @halide_metal_device_release(i8* null) #9, !dbg !4886
  ret void, !dbg !4887
}

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

declare !dbg !4888 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

declare !dbg !4889 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !4892 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !4895 extern_weak dso_local i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !4898 extern_weak dso_local i8* @halide_buffer_to_string(i8*, i8*, %struct.halide_buffer_t*) local_unnamed_addr #3

declare !dbg !4901 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !4904 extern_weak dso_local i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #3

declare !dbg !4907 extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !dbg !4910 {
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* %0, metadata !4912, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %1, metadata !4913, metadata !DIExpression()), !dbg !4920
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1, !dbg !4921
  %4 = load i32, i32* %3, align 8, !dbg !4921, !tbaa !2453
  %5 = icmp eq i32 %4, 0, !dbg !4923
  br i1 %5, label %6, label %10, !dbg !4924

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 7) #9, !dbg !4925
  br i1 %7, label %8, label %67, !dbg !4928

8:                                                ; preds = %6
  %9 = load i32, i32* %3, align 8, !dbg !4929, !tbaa !2453
  br label %10, !dbg !4928

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %4, %2 ], !dbg !4929
  %12 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3, !dbg !4931
  %13 = load i32, i32* %12, align 8, !dbg !4931, !tbaa !4874
  %14 = add nsw i32 %13, 1, !dbg !4932
  %15 = sitofp i32 %14 to float, !dbg !4933
  %16 = shl nuw i32 1, %11, !dbg !4934
  %17 = sitofp i32 %16 to float, !dbg !4935
  %18 = fmul float %17, 5.000000e-01, !dbg !4936
  %19 = fcmp olt float %18, %15, !dbg !4937
  br i1 %19, label %20, label %28, !dbg !4938

20:                                               ; preds = %10
  %21 = add nsw i32 %11, 1, !dbg !4939
  %22 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 %21) #9, !dbg !4942
  br i1 %22, label %23, label %67, !dbg !4943

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 8, !dbg !4944, !tbaa !4874
  %25 = load i32, i32* %3, align 8, !dbg !4945, !tbaa !2453
  %26 = add nsw i32 %24, 1, !dbg !4944
  %27 = shl nuw i32 1, %25, !dbg !4946
  br label %28, !dbg !4943

28:                                               ; preds = %23, %10
  %29 = phi i32 [ %27, %23 ], [ %16, %10 ], !dbg !4946
  %30 = phi i32 [ %26, %23 ], [ %14, %10 ], !dbg !4944
  %31 = phi i32 [ %25, %23 ], [ %11, %10 ], !dbg !4945
  store i32 %30, i32* %12, align 8, !dbg !4944, !tbaa !4874
  %32 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %1, i64 0, i32 0, !dbg !4947
  %33 = load %struct.halide_metal_device*, %struct.halide_metal_device** %32, align 8, !dbg !4947, !tbaa !2490
  %34 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %1, i64 0, i32 2, !dbg !4948
  %35 = load i32, i32* %34, align 8, !dbg !4948, !tbaa !2484
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %33, metadata !2456, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata i32 %35, metadata !2459, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata i32 %31, metadata !2460, metadata !DIExpression()), !dbg !4949
  %36 = ptrtoint %struct.halide_metal_device* %33 to i64, !dbg !4951
  %37 = zext i32 %35 to i64, !dbg !4952
  %38 = add i64 %37, %36, !dbg !4953
  call void @llvm.dbg.value(metadata i64 %38, metadata !2461, metadata !DIExpression()), !dbg !4949
  %39 = mul i64 %38, -7046029254386353131, !dbg !4954
  %40 = sub i32 64, %31, !dbg !4955
  %41 = zext i32 %40 to i64, !dbg !4956
  %42 = lshr i64 %39, %41, !dbg !4956
  call void @llvm.dbg.value(metadata i64 %42, metadata !4914, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata i32 0, metadata !4915, metadata !DIExpression()), !dbg !4957
  %43 = icmp eq i32 %31, 31, !dbg !4958
  br i1 %43, label %66, label %44, !dbg !4959

44:                                               ; preds = %28
  %45 = add nsw i32 %29, -1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %48 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %47, align 8, !tbaa !2476
  %49 = icmp sgt i32 %29, 1, !dbg !4959
  %50 = select i1 %49, i32 %29, i32 1, !dbg !4959
  %51 = zext i32 %50 to i64, !dbg !4958
  br label %54, !dbg !4959

52:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i64 %61, metadata !4915, metadata !DIExpression()), !dbg !4957
  %53 = icmp eq i64 %61, %51, !dbg !4958
  br i1 %53, label %66, label %54, !dbg !4959, !llvm.loop !4960

54:                                               ; preds = %44, %52
  %55 = phi i64 [ 0, %44 ], [ %61, %52 ]
  call void @llvm.dbg.value(metadata i64 %55, metadata !4915, metadata !DIExpression()), !dbg !4957
  %56 = add i64 %42, %55, !dbg !4962
  %57 = and i64 %56, %46, !dbg !4963
  call void @llvm.dbg.value(metadata i64 %57, metadata !4917, metadata !DIExpression()), !dbg !4964
  %58 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %48, i64 %57, i32 2, !dbg !4965
  %59 = load i32, i32* %58, align 8, !dbg !4965, !tbaa !2484
  %60 = icmp ult i32 %59, 2, !dbg !4967
  %61 = add nuw nsw i64 %55, 1, !dbg !4968
  call void @llvm.dbg.value(metadata i64 %61, metadata !4915, metadata !DIExpression()), !dbg !4957
  br i1 %60, label %62, label %52, !dbg !4969

62:                                               ; preds = %54
  %63 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %48, i64 %57, !dbg !4970
  %64 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %63 to i8*, !dbg !4971
  %65 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %1 to i8*, !dbg !4971
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %64, i8* nonnull align 8 dereferenceable(24) %65, i64 24, i1 false), !dbg !4971, !tbaa.struct !4973
  br label %67

66:                                               ; preds = %52, %28
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.129, i64 0, i64 0)) #8, !dbg !4974
  tail call void @abort() #8, !dbg !4974
  br label %67, !dbg !4978

67:                                               ; preds = %62, %66, %20, %6
  %68 = phi i1 [ false, %6 ], [ false, %20 ], [ true, %62 ], [ false, %66 ], !dbg !4920
  ret i1 %68, !dbg !4979
}

declare !dbg !4980 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define linkonce_odr dso_local zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i32 %1) local_unnamed_addr #0 comdat align 2 !dbg !4983 {
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* %0, metadata !4985, metadata !DIExpression()), !dbg !5002
  call void @llvm.dbg.value(metadata i32 %1, metadata !4986, metadata !DIExpression()), !dbg !5002
  %3 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1, !dbg !5003
  %4 = load i32, i32* %3, align 8, !dbg !5003, !tbaa !2453
  %5 = icmp eq i32 %4, %1, !dbg !5004
  br i1 %5, label %41, label %6, !dbg !5005

6:                                                ; preds = %2
  %7 = shl nuw i32 1, %1, !dbg !5006
  call void @llvm.dbg.value(metadata i32 %7, metadata !4987, metadata !DIExpression()), !dbg !5007
  %8 = shl nuw i32 1, %4, !dbg !5008
  call void @llvm.dbg.value(metadata i32 %8, metadata !4990, metadata !DIExpression()), !dbg !5007
  %9 = sext i32 %7 to i64, !dbg !5009
  %10 = mul nsw i64 %9, 24, !dbg !5010
  %11 = tail call i8* @malloc(i64 %10) #8, !dbg !5011
  call void @llvm.dbg.value(metadata i8* %11, metadata !4991, metadata !DIExpression()), !dbg !5007
  %12 = icmp eq i8* %11, null, !dbg !5012
  br i1 %12, label %41, label %13, !dbg !5014

13:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8* %11, metadata !4991, metadata !DIExpression()), !dbg !5007
  %14 = tail call i8* @memset(i8* nonnull %11, i32 0, i64 %10) #8, !dbg !5015
  %15 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2, !dbg !5016
  %16 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15, align 8, !dbg !5016, !tbaa !2476
  call void @llvm.dbg.value(metadata %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %16, metadata !4992, metadata !DIExpression()), !dbg !5007
  %17 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15 to i8**, !dbg !5017
  store i8* %11, i8** %17, align 8, !dbg !5017, !tbaa !2476
  store i32 %1, i32* %3, align 8, !dbg !5018, !tbaa !2453
  %18 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3, !dbg !5019
  %19 = load i32, i32* %18, align 8, !dbg !5019, !tbaa !4874
  %20 = icmp sgt i32 %19, 0, !dbg !5020
  %21 = icmp ne i32 %4, 31
  %22 = and i1 %20, %21, !dbg !5021
  call void @llvm.dbg.value(metadata i32 0, metadata !4993, metadata !DIExpression()), !dbg !5022
  br i1 %22, label %23, label %39, !dbg !5021

23:                                               ; preds = %13
  %24 = icmp sgt i32 %8, 1, !dbg !5023
  %25 = select i1 %24, i32 %8, i32 1, !dbg !5023
  %26 = zext i32 %25 to i64, !dbg !5024
  br label %27, !dbg !5023

27:                                               ; preds = %23, %36
  %28 = phi i64 [ 0, %23 ], [ %37, %36 ]
  call void @llvm.dbg.value(metadata i64 %28, metadata !4993, metadata !DIExpression()), !dbg !5022
  %29 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %16, i64 %28, i32 2, !dbg !5025
  %30 = load i32, i32* %29, align 8, !dbg !5025, !tbaa !2484
  %31 = icmp ult i32 %30, 2, !dbg !5026
  br i1 %31, label %36, label %32, !dbg !5026

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %16, i64 %28, !dbg !5027
  %34 = tail call zeroext i1 @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* nonnull align 8 dereferenceable(24) %33) #9, !dbg !5028
  call void @llvm.dbg.value(metadata i1 %34, metadata !4997, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5029
  br i1 %34, label %36, label %35, !dbg !5030

35:                                               ; preds = %32
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.130, i64 0, i64 0)) #8, !dbg !5032
  tail call void @abort() #8, !dbg !5032
  br label %36, !dbg !5032

36:                                               ; preds = %27, %32, %35
  %37 = add nuw nsw i64 %28, 1, !dbg !5035
  call void @llvm.dbg.value(metadata i64 %37, metadata !4993, metadata !DIExpression()), !dbg !5022
  %38 = icmp eq i64 %37, %26, !dbg !5024
  br i1 %38, label %39, label %27, !dbg !5023, !llvm.loop !5036

39:                                               ; preds = %36, %13
  %40 = bitcast %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %16 to i8*, !dbg !5038
  tail call void @free(i8* %40) #8, !dbg !5039
  br label %41

41:                                               ; preds = %2, %39, %6
  %42 = phi i1 [ false, %6 ], [ true, %39 ], [ true, %2 ], !dbg !5002
  ret i1 %42, !dbg !5040
}

declare !dbg !5041 dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

declare !dbg !5044 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #3

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE15release_contextIFvPvEEEvSB_bS3_RT_(%"class.Halide::Internal::GPUCompilationCache"* nonnull dereferenceable(32) %0, i8* %1, i1 zeroext %2, %struct.halide_metal_device* %3, void (i8*)* nonnull %4) local_unnamed_addr #4 comdat align 2 !dbg !5045 {
  %6 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* %0, metadata !5050, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.value(metadata i8* %1, metadata !5051, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.value(metadata i1 %2, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5057
  call void @llvm.dbg.value(metadata %struct.halide_metal_device* %3, metadata !5053, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.value(metadata void (i8*)* %4, metadata !5054, metadata !DIExpression()), !dbg !5057
  %7 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 3, !dbg !5058
  %8 = load i32, i32* %7, align 8, !dbg !5058, !tbaa !4874
  %9 = icmp eq i32 %8, 0, !dbg !5060
  br i1 %9, label %110, label %10, !dbg !5061

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !5055, metadata !DIExpression()), !dbg !5062
  %11 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 1, !dbg !5063
  %12 = load i32, i32* %11, align 8, !dbg !5063, !tbaa !2453
  %13 = icmp eq i32 %12, 31, !dbg !5065
  br i1 %13, label %110, label %14, !dbg !5066

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* %0, i64 0, i32 2
  %16 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6 to i8*
  %17 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 3
  %18 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 4
  %19 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 0
  %20 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 1
  %21 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 2
  %22 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, i64 0, i32 5, i64 0
  %23 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15, align 8, !dbg !5067, !tbaa !2476
  br label %24, !dbg !5066

24:                                               ; preds = %14, %103
  %25 = phi i32 [ %12, %14 ], [ %104, %103 ]
  %26 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* [ %23, %14 ], [ %105, %103 ], !dbg !5067
  %27 = phi i64 [ 0, %14 ], [ %106, %103 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !5055, metadata !DIExpression()), !dbg !5062
  %28 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %26, i64 %27, i32 2, !dbg !5070
  %29 = load i32, i32* %28, align 8, !dbg !5070, !tbaa !2484
  %30 = icmp eq i32 %29, 0, !dbg !5071
  br i1 %30, label %103, label %31, !dbg !5072

31:                                               ; preds = %24
  br i1 %2, label %36, label %32, !dbg !5073

32:                                               ; preds = %31
  %33 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %26, i64 %27, i32 0, !dbg !5074
  %34 = load %struct.halide_metal_device*, %struct.halide_metal_device** %33, align 8, !dbg !5074, !tbaa !2490
  %35 = icmp eq %struct.halide_metal_device* %34, %3, !dbg !5075
  br i1 %35, label %36, label %103, !dbg !5076

36:                                               ; preds = %32, %31
  %37 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %26, i64 %27, i32 3, !dbg !5077
  %38 = load i32, i32* %37, align 4, !dbg !5077, !tbaa !2499
  %39 = icmp eq i32 %38, 0, !dbg !5078
  br i1 %39, label %40, label %103, !dbg !5079

40:                                               ; preds = %36
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %16) #10, !dbg !5080
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1095, metadata !DIExpression()) #10, !dbg !5082
  call void @llvm.dbg.value(metadata i8* %1, metadata !1098, metadata !DIExpression()) #10, !dbg !5082
  call void @llvm.dbg.value(metadata i8* null, metadata !1099, metadata !DIExpression()) #10, !dbg !5082
  store i8* %1, i8** %17, align 8, !dbg !5084, !tbaa !2953
  store i8 1, i8* %18, align 8, !dbg !5085, !tbaa !2957
  %41 = call i8* @malloc(i64 1024) #8, !dbg !5086
  store i8* %41, i8** %19, align 8, !dbg !5087, !tbaa !2961
  store i8* %41, i8** %20, align 8, !dbg !5088, !tbaa !2984
  %42 = icmp eq i8* %41, null, !dbg !5089
  br i1 %42, label %45, label %43, !dbg !5090

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, i8* %41, i64 1023, !dbg !5091
  store i8* %44, i8** %21, align 8, !dbg !5092, !tbaa !4196
  store i8 0, i8* %44, align 1, !dbg !5093, !tbaa !1134
  br label %46, !dbg !5094

45:                                               ; preds = %40
  store i8* null, i8** %21, align 8, !dbg !5095, !tbaa !4196
  br label %46

46:                                               ; preds = %43, %45
  %47 = phi i8* [ %44, %43 ], [ null, %45 ], !dbg !5096
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1112, metadata !DIExpression()) #10, !dbg !5098
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.132, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !5098
  %48 = call i8* @halide_string_to_string(i8* %41, i8* %47, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.132, i64 0, i64 0)) #8, !dbg !5099
  store i8* %48, i8** %20, align 8, !dbg !5100, !tbaa !2984
  %49 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15, align 8, !dbg !5101, !tbaa !2476
  %50 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %49, i64 %27, i32 1, !dbg !5102
  %51 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %50 to i8**, !dbg !5102
  %52 = load i8*, i8** %51, align 8, !dbg !5102, !tbaa !2575
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1890, metadata !DIExpression()) #10, !dbg !5103
  call void @llvm.dbg.value(metadata i8* %52, metadata !1893, metadata !DIExpression()) #10, !dbg !5103
  %53 = load i8*, i8** %21, align 8, !dbg !5105, !tbaa !4196
  %54 = call i8* @halide_pointer_to_string(i8* %48, i8* %53, i8* %52) #8, !dbg !5106
  store i8* %54, i8** %20, align 8, !dbg !5107, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1112, metadata !DIExpression()) #10, !dbg !5108
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !5108
  %55 = load i8*, i8** %21, align 8, !dbg !5110, !tbaa !4196
  %56 = call i8* @halide_string_to_string(i8* %54, i8* %55, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0)) #8, !dbg !5111
  store i8* %56, i8** %20, align 8, !dbg !5112, !tbaa !2984
  %57 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15, align 8, !dbg !5113, !tbaa !2476
  %58 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %57, i64 %27, i32 2, !dbg !5114
  %59 = load i32, i32* %58, align 8, !dbg !5114, !tbaa !2484
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !2528, metadata !DIExpression()) #10, !dbg !5115
  call void @llvm.dbg.value(metadata i32 %59, metadata !2531, metadata !DIExpression()) #10, !dbg !5115
  %60 = load i8*, i8** %21, align 8, !dbg !5117, !tbaa !4196
  %61 = zext i32 %59 to i64, !dbg !5118
  %62 = call i8* @halide_uint64_to_string(i8* %56, i8* %60, i64 %61, i32 1) #8, !dbg !5119
  store i8* %62, i8** %20, align 8, !dbg !5120, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1112, metadata !DIExpression()) #10, !dbg !5121
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !5121
  %63 = load i8*, i8** %21, align 8, !dbg !5123, !tbaa !4196
  %64 = call i8* @halide_string_to_string(i8* %62, i8* %63, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i64 0, i64 0)) #8, !dbg !5124
  store i8* %64, i8** %20, align 8, !dbg !5125, !tbaa !2984
  %65 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15, align 8, !dbg !5126, !tbaa !2476
  %66 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %65, i64 %27, i32 0, !dbg !5127
  %67 = bitcast %struct.halide_metal_device** %66 to i8**, !dbg !5127
  %68 = load i8*, i8** %67, align 8, !dbg !5127, !tbaa !2490
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1890, metadata !DIExpression()) #10, !dbg !5128
  call void @llvm.dbg.value(metadata i8* %68, metadata !1893, metadata !DIExpression()) #10, !dbg !5128
  %69 = load i8*, i8** %21, align 8, !dbg !5130, !tbaa !4196
  %70 = call i8* @halide_pointer_to_string(i8* %64, i8* %69, i8* %68) #8, !dbg !5131
  store i8* %70, i8** %20, align 8, !dbg !5132, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1112, metadata !DIExpression()) #10, !dbg !5133
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), metadata !1115, metadata !DIExpression()) #10, !dbg !5133
  %71 = load i8*, i8** %21, align 8, !dbg !5135, !tbaa !4196
  %72 = call i8* @halide_string_to_string(i8* %70, i8* %71, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !5136
  store i8* %72, i8** %20, align 8, !dbg !5137, !tbaa !2984
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %6, metadata !1121, metadata !DIExpression()) #10, !dbg !5138
  %73 = load i8*, i8** %19, align 8, !dbg !5140, !tbaa !2961
  %74 = icmp eq i8* %73, null, !dbg !5140
  %75 = load i8*, i8** %17, align 8, !dbg !5141, !tbaa !2953
  br i1 %74, label %76, label %77, !dbg !5142

76:                                               ; preds = %46
  call void @halide_error(i8* %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.124, i64 0, i64 0)) #8, !dbg !5143
  br label %85, !dbg !5144

77:                                               ; preds = %46
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1135, metadata !DIExpression()) #10, !dbg !5145
  %78 = ptrtoint i8* %72 to i64, !dbg !5147
  %79 = ptrtoint i8* %73 to i64, !dbg !5147
  %80 = add i64 %78, 1, !dbg !5147
  %81 = sub i64 %80, %79, !dbg !5148
  %82 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %75, i8* nonnull %73, i64 %81) #8, !dbg !5149
  %83 = load i8*, i8** %17, align 8, !dbg !5150, !tbaa !2953
  %84 = load i8*, i8** %19, align 8, !dbg !5151, !tbaa !2961
  call void @halide_print(i8* %83, i8* %84) #8, !dbg !5152
  br label %85

85:                                               ; preds = %77, %76
  %86 = load i8, i8* %18, align 8, !dbg !5153, !tbaa !2957, !range !3013
  %87 = icmp eq i8 %86, 0, !dbg !5153
  %88 = load i8*, i8** %19, align 8
  %89 = icmp eq i8* %88, %22
  %90 = or i1 %87, %89, !dbg !5154
  br i1 %90, label %92, label %91, !dbg !5154

91:                                               ; preds = %85
  call void @free(i8* %88) #8, !dbg !5155
  br label %92, !dbg !5156

92:                                               ; preds = %85, %91
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %16) #10, !dbg !5080
  %93 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15, align 8, !dbg !5157, !tbaa !2476
  %94 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %93, i64 %27, i32 1, !dbg !5158
  %95 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %94 to i8**, !dbg !5158
  %96 = load i8*, i8** %95, align 8, !dbg !5158, !tbaa !2575
  call void %4(i8* %96) #8, !dbg !5159
  %97 = load %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"*, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** %15, align 8, !dbg !5160, !tbaa !2476
  %98 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %97, i64 %27, i32 1, !dbg !5161
  store %"struct.Halide::Runtime::Internal::Metal::mtl_library"* null, %"struct.Halide::Runtime::Internal::Metal::mtl_library"** %98, align 8, !dbg !5162, !tbaa !2575
  %99 = getelementptr inbounds %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation", %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* %97, i64 %27, i32 2, !dbg !5163
  store i32 1, i32* %99, align 8, !dbg !5164, !tbaa !2484
  %100 = load i32, i32* %7, align 8, !dbg !5165, !tbaa !4874
  %101 = add nsw i32 %100, -1, !dbg !5165
  store i32 %101, i32* %7, align 8, !dbg !5165, !tbaa !4874
  %102 = load i32, i32* %11, align 8, !dbg !5063, !tbaa !2453
  br label %103, !dbg !5166

103:                                              ; preds = %24, %32, %36, %92
  %104 = phi i32 [ %25, %24 ], [ %25, %32 ], [ %25, %36 ], [ %102, %92 ], !dbg !5063
  %105 = phi %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* [ %26, %24 ], [ %26, %32 ], [ %26, %36 ], [ %97, %92 ]
  %106 = add nuw nsw i64 %27, 1, !dbg !5167
  call void @llvm.dbg.value(metadata i64 %106, metadata !5055, metadata !DIExpression()), !dbg !5062
  %107 = shl nuw i32 1, %104, !dbg !5168
  %108 = sext i32 %107 to i64, !dbg !5065
  %109 = icmp slt i64 %106, %108, !dbg !5065
  br i1 %109, label %24, label %110, !dbg !5066, !llvm.loop !5169

110:                                              ; preds = %103, %10, %5
  ret void, !dbg !5171
}

; Function Attrs: nofree norecurse nounwind willreturn
define internal void @_GLOBAL__sub_I_metal.cpp() #7 !dbg !5172 {
  %1 = load i8, i8* bitcast (i64* @_ZGVN6Halide7Runtime8Internal5Metal17compilation_cacheE to i8*), align 4, !dbg !5174
  %2 = icmp eq i8 %1, 0, !dbg !5174
  br i1 %2, label %3, label %4, !dbg !5174

3:                                                ; preds = %0
  call void @llvm.dbg.value(metadata %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, metadata !5177, metadata !DIExpression()), !dbg !5183
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 1), align 8, !dbg !5185, !tbaa !2453
  store %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"* null, %"struct.Halide::Internal::GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>::CachedCompilation"** getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 2), align 8, !dbg !5186, !tbaa !2476
  store i32 0, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 3), align 8, !dbg !5187, !tbaa !4874
  store i32 2, i32* getelementptr inbounds (%"class.Halide::Internal::GPUCompilationCache", %"class.Halide::Internal::GPUCompilationCache"* @_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE, i64 0, i32 4), align 4, !dbg !5188, !tbaa !2429
  store i64 1, i64* @_ZGVN6Halide7Runtime8Internal5Metal17compilation_cacheE, align 4, !dbg !5174
  br label %4, !dbg !5174

4:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #6 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree norecurse nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!343}
!llvm.module.flags = !{!994, !995, !996}
!llvm.ident = !{!997}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "thread_lock", linkageName: "_ZN6Halide7Runtime8Internal5Metal11thread_lockE", scope: !2, file: !6, line: 283, type: !7, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Metal", scope: !3)
!3 = !DINamespace(name: "Internal", scope: !4)
!4 = !DINamespace(name: "Runtime", scope: !5)
!5 = !DINamespace(name: "Halide", scope: null)
!6 = !DIFile(filename: "src/runtime/metal.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "AtomicFlag", scope: !10, file: !9, line: 11, baseType: !22)
!9 = !DIFile(filename: "src/runtime/scoped_spin_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedSpinLock", scope: !3, file: !9, line: 9, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !11, identifier: "_ZTSN6Halide7Runtime8Internal14ScopedSpinLockE")
!11 = !{!12, !15, !19}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !10, file: !9, line: 13, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!15 = !DISubprogram(name: "ScopedSpinLock", scope: !10, file: !9, line: 15, type: !16, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !14}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!19 = !DISubprogram(name: "~ScopedSpinLock", scope: !10, file: !9, line: 22, type: !20, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !18}
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "device", linkageName: "_ZN6Halide7Runtime8Internal5Metal6deviceE", scope: !2, file: !6, line: 284, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "mtl_device", scope: !2, file: !6, line: 24, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_metal_device", file: !28, line: 73, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS19halide_metal_device")
!28 = !DIFile(filename: "src/runtime/HalideRuntimeMetal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "queue", linkageName: "_ZN6Halide7Runtime8Internal5Metal5queueE", scope: !2, file: !6, line: 285, type: !31, isLocal: false, isDefinition: true)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "mtl_command_queue", scope: !2, file: !6, line: 25, baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_metal_command_queue", file: !28, line: 74, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26halide_metal_command_queue")
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "compilation_cache", linkageName: "_ZN6Halide7Runtime8Internal5Metal17compilation_cacheE", scope: !2, file: !6, line: 292, type: !36, isLocal: false, isDefinition: true)
!36 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "GPUCompilationCache<halide_metal_device *, Halide::Runtime::Internal::Metal::mtl_library *>", scope: !38, file: !37, line: 8, size: 256, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !39, templateParams: !107, identifier: "_ZTSN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEEE")
!37 = !DIFile(filename: "src/runtime/gpu_context_common.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!38 = !DINamespace(name: "Internal", scope: !5)
!39 = !{!40, !52, !55, !58, !59, !76, !77, !79, !80, !81, !84, !91, !96, !101, !104}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !36, file: !37, line: 22, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !42, line: 120, size: 64, flags: DIFlagTypePassByValue, elements: !43, identifier: "_ZTS12halide_mutex")
!42 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !41, file: !42, line: 121, baseType: !45, size: 64)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !50)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !47, line: 61, baseType: !48)
!47 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !47, line: 10, baseType: !49)
!49 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !{!51}
!51 = !DISubrange(count: 1)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "kLoadFactor", scope: !36, file: !37, line: 24, baseType: !53, flags: DIFlagStaticMember, extraData: float 5.000000e-01)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "kInitialTableBits", scope: !36, file: !37, line: 25, baseType: !56, flags: DIFlagStaticMember, extraData: i32 7)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "log2_compilations_size", scope: !36, file: !37, line: 26, baseType: !57, size: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "compilations", scope: !36, file: !37, line: 27, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CachedCompilation", scope: !36, file: !37, line: 9, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !62, identifier: "_ZTSN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE17CachedCompilationE")
!62 = !{!63, !65, !68, !71, !72}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !61, file: !37, line: 10, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "module_state", scope: !61, file: !37, line: 11, baseType: !66, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_library", scope: !2, file: !6, line: 31, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal11mtl_libraryE")
!68 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_id", scope: !61, file: !37, line: 12, baseType: !69, size: 32, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 12, baseType: !70)
!70 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !61, file: !37, line: 13, baseType: !69, size: 32, offset: 160)
!72 = !DISubprogram(name: "CachedCompilation", scope: !61, file: !37, line: 15, type: !73, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75, !64, !66, !69, !69}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !36, file: !37, line: 28, baseType: !57, size: 32, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "kInvalidId", scope: !36, file: !37, line: 30, baseType: !78, flags: DIFlagStaticMember, extraData: i32 0)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "kDeletedId", scope: !36, file: !37, line: 31, baseType: !78, flags: DIFlagStaticMember, extraData: i32 1)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !36, file: !37, line: 33, baseType: !69, size: 32, offset: 224)
!81 = !DISubprogram(name: "kernel_hash", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE11kernel_hashES3_jj", scope: !36, file: !37, line: 36, type: !82, scopeLine: 36, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!82 = !DISubroutineType(types: !83)
!83 = !{!46, !64, !69, !69}
!84 = !DISubprogram(name: "insert", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE", scope: !36, file: !37, line: 47, type: !85, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !88, !89}
!87 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!89 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!91 = !DISubprogram(name: "find_internal", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE13find_internalES3_jRPS8_i", scope: !36, file: !37, line: 73, type: !92, scopeLine: 73, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!92 = !DISubroutineType(types: !93)
!93 = !{!87, !88, !64, !69, !94, !57}
!94 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!96 = !DISubprogram(name: "lookup", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6lookupES3_PvRS8_", scope: !36, file: !37, line: 97, type: !97, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!97 = !DISubroutineType(types: !98)
!98 = !{!87, !88, !64, !99, !100}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !66, size: 64)
!101 = !DISubprogram(name: "resize_table", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi", scope: !36, file: !37, line: 108, type: !102, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!102 = !DISubroutineType(types: !103)
!103 = !{!87, !88, !57}
!104 = !DISubprogram(name: "release_hold", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12release_holdEPvS3_SA_", scope: !36, file: !37, line: 211, type: !105, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !88, !99, !64, !99}
!107 = !{!108, !109}
!108 = !DITemplateTypeParameter(name: "ContextT", type: !64)
!109 = !DITemplateTypeParameter(name: "ModuleStateT", type: !66)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "metal_api_supports_set_bytes", linkageName: "_ZN6Halide7Runtime8Internal5Metal28metal_api_supports_set_bytesE", scope: !2, file: !6, line: 296, type: !87, isLocal: false, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "metal_api_checked_device", linkageName: "_ZN6Halide7Runtime8Internal5Metal24metal_api_checked_deviceE", scope: !2, file: !6, line: 297, type: !25, isLocal: false, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "command_buffer_completed_handler_descriptor", linkageName: "_ZN6Halide7Runtime8Internal5Metal43command_buffer_completed_handler_descriptorE", scope: !2, file: !6, line: 436, type: !116, isLocal: false, isDefinition: true)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "command_buffer_completed_handler_block_descriptor_1", scope: !2, file: !6, line: 423, size: 128, flags: DIFlagTypePassByValue, elements: !117, identifier: "_ZTSN6Halide7Runtime8Internal5Metal51command_buffer_completed_handler_block_descriptor_1E")
!117 = !{!118, !120}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !116, file: !6, line: 424, baseType: !119, size: 64)
!119 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !116, file: !6, line: 425, baseType: !119, size: 64, offset: 64)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "command_buffer_completed_handler_block", linkageName: "_ZN6Halide7Runtime8Internal5Metal38command_buffer_completed_handler_blockE", scope: !2, file: !6, line: 447, type: !123, isLocal: false, isDefinition: true)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "command_buffer_completed_handler_block_literal", scope: !2, file: !6, line: 428, size: 256, flags: DIFlagTypePassByValue, elements: !124, identifier: "_ZTSN6Halide7Runtime8Internal5Metal46command_buffer_completed_handler_block_literalE")
!124 = !{!125, !126, !127, !128, !135}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !123, file: !6, line: 429, baseType: !99, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !6, line: 430, baseType: !57, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !123, file: !6, line: 431, baseType: !57, size: 32, offset: 96)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "invoke", scope: !123, file: !6, line: 432, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !132, !133}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_command_buffer", scope: !2, file: !6, line: 27, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal18mtl_command_bufferE")
!135 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !123, file: !6, line: 433, baseType: !136, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "metal_device_interface", linkageName: "_ZN6Halide7Runtime8Internal5Metal22metal_device_interfaceE", scope: !2, file: !6, line: 1164, type: !139, isLocal: false, isDefinition: true)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !42, line: 723, size: 1024, flags: DIFlagTypePassByValue, elements: !140, identifier: "_ZTS25halide_device_interface_t")
!140 = !{!141, !262, !266, !267, !271, !272, !273, !274, !275, !279, !284, !288, !289, !293, !294, !299}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !139, file: !42, line: 724, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!57, !99, !145, !150}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !42, line: 1423, size: 448, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !147, identifier: "_ZTS15halide_buffer_t")
!147 = !{!148, !149, !152, !156, !157, !197, !199, !222, !223, !233, !237, !240, !241, !244, !245, !249, !252, !253, !254, !258, !261}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !146, file: !42, line: 1425, baseType: !48, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !146, file: !42, line: 1428, baseType: !150, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !146, file: !42, line: 1433, baseType: !153, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !47, line: 16, baseType: !155)
!155 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !42, line: 1436, baseType: !48, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !42, line: 1439, baseType: !158, size: 32, offset: 256)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !42, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !159, identifier: "_ZTS13halide_type_t")
!159 = !{!160, !169, !170, !173, !177, !180, !185, !189, !190, !191, !194}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !158, file: !42, line: 434, baseType: !161, size: 8, align: 8)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !42, line: 413, baseType: !162)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !42, line: 403, baseType: !154, size: 8, elements: !163, identifier: "_ZTS18halide_type_code_t")
!163 = !{!164, !165, !166, !167, !168}
!164 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!165 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!166 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!167 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!168 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !158, file: !42, line: 442, baseType: !154, size: 8, align: 8, offset: 8)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !158, file: !42, line: 446, baseType: !171, size: 16, align: 16, offset: 16)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !47, line: 14, baseType: !172)
!172 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!173 = !DISubprogram(name: "halide_type_t", scope: !158, file: !42, line: 453, type: !174, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !176, !161, !154, !171}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!177 = !DISubprogram(name: "halide_type_t", scope: !158, file: !42, line: 459, type: !178, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !176}
!180 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !158, file: !42, line: 463, type: !181, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DISubroutineType(types: !182)
!182 = !{!158, !183, !171}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!185 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !158, file: !42, line: 468, type: !186, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DISubroutineType(types: !187)
!187 = !{!87, !183, !188}
!188 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !184, size: 64)
!189 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !158, file: !42, line: 472, type: !186, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!190 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !158, file: !42, line: 476, type: !186, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!191 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !158, file: !42, line: 481, type: !192, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!192 = !DISubroutineType(types: !193)
!193 = !{!57, !183}
!194 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !158, file: !42, line: 485, type: !195, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!195 = !DISubroutineType(types: !196)
!196 = !{!69, !183}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !146, file: !42, line: 1442, baseType: !198, size: 32, offset: 288)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !47, line: 11, baseType: !57)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !146, file: !42, line: 1446, baseType: !200, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !42, line: 1409, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !42, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !203, identifier: "_ZTS18halide_dimension_t")
!203 = !{!204, !205, !206, !207, !208, !212, !215, !221}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !202, file: !42, line: 1383, baseType: !198, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !202, file: !42, line: 1383, baseType: !198, size: 32, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !202, file: !42, line: 1383, baseType: !198, size: 32, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !42, line: 1386, baseType: !69, size: 32, offset: 96)
!208 = !DISubprogram(name: "halide_dimension_t", scope: !202, file: !42, line: 1388, type: !209, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!212 = !DISubprogram(name: "halide_dimension_t", scope: !202, file: !42, line: 1389, type: !213, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !211, !198, !198, !198, !69}
!215 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !202, file: !42, line: 1393, type: !216, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DISubroutineType(types: !217)
!217 = !{!87, !218, !220}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!220 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !219, size: 64)
!221 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !202, file: !42, line: 1400, type: !216, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !146, file: !42, line: 1449, baseType: !99, size: 64, offset: 384)
!223 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !146, file: !42, line: 1454, type: !224, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!224 = !DISubroutineType(types: !225)
!225 = !{!87, !226, !228}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !42, line: 1416, baseType: !229)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 1415, baseType: !70, size: 32, elements: !230, identifier: "_ZTS19halide_buffer_flags")
!230 = !{!231, !232}
!231 = !DIEnumerator(name: "halide_buffer_flag_host_dirty", value: 1, isUnsigned: true)
!232 = !DIEnumerator(name: "halide_buffer_flag_device_dirty", value: 2, isUnsigned: true)
!233 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !146, file: !42, line: 1458, type: !234, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !236, !228, !87}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!237 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !146, file: !42, line: 1466, type: !238, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubroutineType(types: !239)
!239 = !{!87, !226}
!240 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !146, file: !42, line: 1470, type: !238, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !146, file: !42, line: 1474, type: !242, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !236, !87}
!244 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !146, file: !42, line: 1478, type: !242, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !146, file: !42, line: 1485, type: !246, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !226}
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 27, baseType: !119)
!249 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !146, file: !42, line: 1495, type: !250, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DISubroutineType(types: !251)
!251 = !{!153, !226}
!252 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !146, file: !42, line: 1506, type: !250, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !146, file: !42, line: 1518, type: !246, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !146, file: !42, line: 1523, type: !255, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DISubroutineType(types: !256)
!256 = !{!153, !226, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!258 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !146, file: !42, line: 1534, type: !259, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DISubroutineType(types: !260)
!260 = !{!57, !236, !99}
!261 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !146, file: !42, line: 1545, type: !238, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !139, file: !42, line: 726, baseType: !263, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!57, !99, !145}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !139, file: !42, line: 727, baseType: !263, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !139, file: !42, line: 728, baseType: !268, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !99, !150}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !139, file: !42, line: 730, baseType: !263, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !139, file: !42, line: 731, baseType: !142, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !139, file: !42, line: 733, baseType: !142, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !139, file: !42, line: 735, baseType: !263, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !139, file: !42, line: 736, baseType: !276, size: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!57, !99, !145, !150, !145}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !139, file: !42, line: 738, baseType: !280, size: 64, offset: 576)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!57, !99, !283, !145}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !139, file: !42, line: 740, baseType: !285, size: 64, offset: 640)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!57, !99, !283, !57, !57, !145}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !139, file: !42, line: 742, baseType: !263, size: 64, offset: 704)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !139, file: !42, line: 743, baseType: !290, size: 64, offset: 768)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!57, !99, !145, !48, !150}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !139, file: !42, line: 745, baseType: !263, size: 64, offset: 832)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !139, file: !42, line: 746, baseType: !295, size: 64, offset: 896)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!57, !99, !298, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !139, file: !42, line: 747, baseType: !300, size: 64, offset: 960)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !303, line: 10, size: 1024, flags: DIFlagTypePassByValue, elements: !304, identifier: "_ZTS30halide_device_interface_impl_t")
!303 = !DIFile(filename: "src/runtime/device_interface.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!304 = !{!305, !309, !310, !311, !312, !313, !317, !318, !319, !320, !321, !322, !323, !324, !325, !329}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "use_module", scope: !302, file: !303, line: 16, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "release_module", scope: !302, file: !303, line: 17, baseType: !306, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !302, file: !303, line: 18, baseType: !263, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !302, file: !303, line: 19, baseType: !263, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !302, file: !303, line: 20, baseType: !263, size: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !302, file: !303, line: 21, baseType: !314, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!57, !99}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !302, file: !303, line: 22, baseType: !263, size: 64, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !302, file: !303, line: 23, baseType: !263, size: 64, offset: 448)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !302, file: !303, line: 24, baseType: !263, size: 64, offset: 512)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !302, file: !303, line: 25, baseType: !263, size: 64, offset: 576)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !302, file: !303, line: 26, baseType: !276, size: 64, offset: 640)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !302, file: !303, line: 28, baseType: !280, size: 64, offset: 704)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !302, file: !303, line: 31, baseType: !285, size: 64, offset: 768)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !302, file: !303, line: 35, baseType: !263, size: 64, offset: 832)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !302, file: !303, line: 37, baseType: !326, size: 64, offset: 896)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!57, !99, !145, !48}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !302, file: !303, line: 38, baseType: !263, size: 64, offset: 960)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "total_dispatches", scope: !332, file: !6, line: 865, type: !198, isLocal: true, isDefinition: true)
!332 = distinct !DISubprogram(name: "halide_metal_run", scope: !6, file: !6, line: 723, type: !333, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !927)
!333 = !DISubroutineType(types: !334)
!334 = !{!57, !99, !99, !335, !57, !57, !57, !57, !57, !57, !57, !337, !338, !339, !57, !342, !57, !57}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !47, line: 15, baseType: !341)
!341 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!343 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !344, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !345, retainedTypes: !393, globals: !919, imports: !922, splitDebugInlining: false, nameTableKind: None)
!344 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!345 = !{!162, !229, !346}
!346 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_error_code_t", file: !42, line: 990, baseType: !57, size: 32, elements: !347, identifier: "_ZTS19halide_error_code_t")
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392}
!348 = !DIEnumerator(name: "halide_error_code_success", value: 0)
!349 = !DIEnumerator(name: "halide_error_code_generic_error", value: -1)
!350 = !DIEnumerator(name: "halide_error_code_explicit_bounds_too_small", value: -2)
!351 = !DIEnumerator(name: "halide_error_code_bad_type", value: -3)
!352 = !DIEnumerator(name: "halide_error_code_access_out_of_bounds", value: -4)
!353 = !DIEnumerator(name: "halide_error_code_buffer_allocation_too_large", value: -5)
!354 = !DIEnumerator(name: "halide_error_code_buffer_extents_too_large", value: -6)
!355 = !DIEnumerator(name: "halide_error_code_constraints_make_required_region_smaller", value: -7)
!356 = !DIEnumerator(name: "halide_error_code_constraint_violated", value: -8)
!357 = !DIEnumerator(name: "halide_error_code_param_too_small", value: -9)
!358 = !DIEnumerator(name: "halide_error_code_param_too_large", value: -10)
!359 = !DIEnumerator(name: "halide_error_code_out_of_memory", value: -11)
!360 = !DIEnumerator(name: "halide_error_code_buffer_argument_is_null", value: -12)
!361 = !DIEnumerator(name: "halide_error_code_debug_to_file_failed", value: -13)
!362 = !DIEnumerator(name: "halide_error_code_copy_to_host_failed", value: -14)
!363 = !DIEnumerator(name: "halide_error_code_copy_to_device_failed", value: -15)
!364 = !DIEnumerator(name: "halide_error_code_device_malloc_failed", value: -16)
!365 = !DIEnumerator(name: "halide_error_code_device_sync_failed", value: -17)
!366 = !DIEnumerator(name: "halide_error_code_device_free_failed", value: -18)
!367 = !DIEnumerator(name: "halide_error_code_no_device_interface", value: -19)
!368 = !DIEnumerator(name: "halide_error_code_matlab_init_failed", value: -20)
!369 = !DIEnumerator(name: "halide_error_code_matlab_bad_param_type", value: -21)
!370 = !DIEnumerator(name: "halide_error_code_internal_error", value: -22)
!371 = !DIEnumerator(name: "halide_error_code_device_run_failed", value: -23)
!372 = !DIEnumerator(name: "halide_error_code_unaligned_host_ptr", value: -24)
!373 = !DIEnumerator(name: "halide_error_code_bad_fold", value: -25)
!374 = !DIEnumerator(name: "halide_error_code_fold_factor_too_small", value: -26)
!375 = !DIEnumerator(name: "halide_error_code_requirement_failed", value: -27)
!376 = !DIEnumerator(name: "halide_error_code_buffer_extents_negative", value: -28)
!377 = !DIEnumerator(name: "halide_error_code_unused_29", value: -29)
!378 = !DIEnumerator(name: "halide_error_code_unused_30", value: -30)
!379 = !DIEnumerator(name: "halide_error_code_specialize_fail", value: -31)
!380 = !DIEnumerator(name: "halide_error_code_device_wrap_native_failed", value: -32)
!381 = !DIEnumerator(name: "halide_error_code_device_detach_native_failed", value: -33)
!382 = !DIEnumerator(name: "halide_error_code_host_is_null", value: -34)
!383 = !DIEnumerator(name: "halide_error_code_bad_extern_fold", value: -35)
!384 = !DIEnumerator(name: "halide_error_code_device_interface_no_device", value: -36)
!385 = !DIEnumerator(name: "halide_error_code_host_and_device_dirty", value: -37)
!386 = !DIEnumerator(name: "halide_error_code_buffer_is_null", value: -38)
!387 = !DIEnumerator(name: "halide_error_code_device_buffer_copy_failed", value: -39)
!388 = !DIEnumerator(name: "halide_error_code_device_crop_unsupported", value: -40)
!389 = !DIEnumerator(name: "halide_error_code_device_crop_failed", value: -41)
!390 = !DIEnumerator(name: "halide_error_code_incompatible_device_interface", value: -42)
!391 = !DIEnumerator(name: "halide_error_code_bad_dimensions", value: -43)
!392 = !DIEnumerator(name: "halide_error_code_device_dirty_with_no_device_support", value: -44)
!393 = !{!99, !394, !48, !475, !488, !495, !500, !505, !515, !519, !532, !31, !542, !133, !554, !561, !572, !579, !583, !592, !596, !604, !622, !632, !640, !650, !665, !676, !687, !695, !710, !717, !725, !738, !743, !748, !762, !248, !775, !788, !800, !807, !812, !822, !25, !829, !480, !843, !910, !418, !400, !915, !153, !523, !46, !916, !918, !60, !69, !36}
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !396, file: !395, line: 203, baseType: !397)
!395 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!396 = !DINamespace(scope: !3)
!397 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !396, file: !395, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !398, templateParams: !472)
!398 = !{!399, !401, !402, !403, !404, !405, !407, !411, !415, !420, !423, !426, !429, !433, !436, !441, !445, !448, !454, !457, !460, !465, !466, !469, !470, !471}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !397, file: !395, line: 32, baseType: !400, size: 64, flags: DIFlagPublic)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !397, file: !395, line: 32, baseType: !400, size: 64, offset: 64, flags: DIFlagPublic)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !397, file: !395, line: 32, baseType: !400, size: 64, offset: 128, flags: DIFlagPublic)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !397, file: !395, line: 33, baseType: !99, size: 64, offset: 192, flags: DIFlagPublic)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !397, file: !395, line: 34, baseType: !87, size: 8, offset: 256, flags: DIFlagPublic)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !397, file: !395, line: 35, baseType: !406, size: 8, offset: 264, flags: DIFlagPublic)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !50)
!407 = !DISubprogram(name: "Printer", scope: !397, file: !395, line: 37, type: !408, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !410, !99, !400}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!411 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !397, file: !395, line: 57, type: !412, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!412 = !DISubroutineType(types: !413)
!413 = !{!414, !410, !335}
!414 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !397, size: 64)
!415 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !397, file: !395, line: 67, type: !416, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!416 = !DISubroutineType(types: !417)
!417 = !{!414, !410, !418}
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !47, line: 9, baseType: !419)
!419 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!420 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !397, file: !395, line: 72, type: !421, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!421 = !DISubroutineType(types: !422)
!422 = !{!414, !410, !198}
!423 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !397, file: !395, line: 77, type: !424, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!424 = !DISubroutineType(types: !425)
!425 = !{!414, !410, !48}
!426 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !397, file: !395, line: 82, type: !427, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!427 = !DISubroutineType(types: !428)
!428 = !{!414, !410, !69}
!429 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !397, file: !395, line: 87, type: !430, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!430 = !DISubroutineType(types: !431)
!431 = !{!414, !410, !432}
!432 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!433 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !397, file: !395, line: 92, type: !434, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!434 = !DISubroutineType(types: !435)
!435 = !{!414, !410, !54}
!436 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !397, file: !395, line: 97, type: !437, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!437 = !DISubroutineType(types: !438)
!438 = !{!414, !410, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!441 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !397, file: !395, line: 102, type: !442, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = !DISubroutineType(types: !443)
!443 = !{!414, !410, !444}
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!445 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !397, file: !395, line: 108, type: !446, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!446 = !DISubroutineType(types: !447)
!447 = !{!414, !410, !188}
!448 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !397, file: !395, line: 113, type: !449, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!449 = !DISubroutineType(types: !450)
!450 = !{!414, !410, !451}
!451 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !42, line: 1550, baseType: !146)
!454 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !397, file: !395, line: 119, type: !455, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubroutineType(types: !456)
!456 = !{!335, !410}
!457 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !397, file: !395, line: 131, type: !458, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !410}
!460 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !397, file: !395, line: 139, type: !461, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DISubroutineType(types: !462)
!462 = !{!48, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!465 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !397, file: !395, line: 143, type: !461, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!466 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !397, file: !395, line: 148, type: !467, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !410, !57}
!469 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !397, file: !395, line: 158, type: !455, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!470 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !397, file: !395, line: 162, type: !458, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!471 = !DISubprogram(name: "~Printer", scope: !397, file: !395, line: 166, type: !458, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!472 = !{!473, !474}
!473 = !DITemplateValueParameter(name: "type", type: !57, value: i32 0)
!474 = !DITemplateValueParameter(name: "length", type: !49, value: i64 1024)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pool_method", scope: !477, file: !476, line: 43, baseType: !484)
!476 = !DIFile(filename: "src/runtime/objc_support.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!477 = distinct !DISubprogram(name: "create_autorelease_pool", linkageName: "_ZN6Halide7Runtime8Internal23create_autorelease_poolEv", scope: !3, file: !476, line: 42, type: !478, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !481)
!478 = !DISubroutineType(types: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "objc_id", file: !476, line: 5, baseType: !99)
!481 = !{!482, !483}
!482 = !DILocalVariable(name: "method", scope: !477, file: !476, line: 44, type: !475)
!483 = !DILocalVariable(name: "pool", scope: !477, file: !476, line: 45, type: !480)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!480, !480, !487}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "objc_sel", file: !476, line: 6, baseType: !99)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "drain_method", scope: !489, file: !476, line: 51, baseType: !484)
!489 = distinct !DISubprogram(name: "drain_autorelease_pool", linkageName: "_ZN6Halide7Runtime8Internal22drain_autorelease_poolEPv", scope: !3, file: !476, line: 50, type: !490, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !492)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !480}
!492 = !{!493, !494}
!493 = !DILocalVariable(name: "pool", arg: 1, scope: !489, file: !476, line: 50, type: !480)
!494 = !DILocalVariable(name: "method", scope: !489, file: !476, line: 52, type: !488)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "retain_method", scope: !496, file: !476, line: 57, baseType: !484)
!496 = distinct !DISubprogram(name: "retain_ns_object", linkageName: "_ZN6Halide7Runtime8Internal16retain_ns_objectEPv", scope: !3, file: !476, line: 56, type: !490, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !497)
!497 = !{!498, !499}
!498 = !DILocalVariable(name: "obj", arg: 1, scope: !496, file: !476, line: 56, type: !480)
!499 = !DILocalVariable(name: "method", scope: !496, file: !476, line: 58, type: !495)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "release_method", scope: !501, file: !476, line: 63, baseType: !484)
!501 = distinct !DISubprogram(name: "release_ns_object", linkageName: "_ZN6Halide7Runtime8Internal17release_ns_objectEPv", scope: !3, file: !476, line: 62, type: !490, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !502)
!502 = !{!503, !504}
!503 = !DILocalVariable(name: "obj", arg: 1, scope: !501, file: !476, line: 62, type: !480)
!504 = !DILocalVariable(name: "method", scope: !501, file: !476, line: 64, type: !500)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_method", scope: !506, file: !476, line: 70, baseType: !484)
!506 = distinct !DISubprogram(name: "wrap_string_as_ns_string", linkageName: "_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm", scope: !3, file: !476, line: 68, type: !507, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !509)
!507 = !DISubroutineType(types: !508)
!508 = !{!480, !335, !248}
!509 = !{!510, !511, !512, !513, !514}
!510 = !DILocalVariable(name: "string", arg: 1, scope: !506, file: !476, line: 68, type: !335)
!511 = !DILocalVariable(name: "length", arg: 2, scope: !506, file: !476, line: 68, type: !248)
!512 = !DILocalVariable(name: "method1", scope: !506, file: !476, line: 71, type: !505)
!513 = !DILocalVariable(name: "ns_string", scope: !506, file: !476, line: 72, type: !480)
!514 = !DILocalVariable(name: "method", scope: !506, file: !476, line: 73, type: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "init_with_bytes_no_copy_method", scope: !506, file: !476, line: 69, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!480, !480, !487, !335, !248, !248, !154}
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "new_buffer_method", scope: !520, file: !6, line: 36, baseType: !529)
!520 = distinct !DISubprogram(name: "new_buffer", linkageName: "_ZN6Halide7Runtime8Internal5Metal10new_bufferEP19halide_metal_devicem", scope: !2, file: !6, line: 35, type: !521, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !525)
!521 = !DISubroutineType(types: !522)
!522 = !{!523, !25, !248}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_buffer", scope: !2, file: !6, line: 26, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal10mtl_bufferE")
!525 = !{!526, !527, !528}
!526 = !DILocalVariable(name: "device", arg: 1, scope: !520, file: !6, line: 35, type: !25)
!527 = !DILocalVariable(name: "length", arg: 2, scope: !520, file: !6, line: 35, type: !248)
!528 = !DILocalVariable(name: "method", scope: !520, file: !6, line: 37, type: !519)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!523, !480, !487, !248, !248}
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "new_command_queue_method", scope: !533, file: !6, line: 43, baseType: !539)
!533 = distinct !DISubprogram(name: "new_command_queue", linkageName: "_ZN6Halide7Runtime8Internal5Metal17new_command_queueEP19halide_metal_device", scope: !2, file: !6, line: 42, type: !534, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !536)
!534 = !DISubroutineType(types: !535)
!535 = !{!31, !25}
!536 = !{!537, !538}
!537 = !DILocalVariable(name: "device", arg: 1, scope: !533, file: !6, line: 42, type: !25)
!538 = !DILocalVariable(name: "method", scope: !533, file: !6, line: 44, type: !532)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!31, !480, !487}
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "new_command_buffer_method", scope: !543, file: !6, line: 51, baseType: !558)
!543 = distinct !DISubprogram(name: "new_command_buffer", linkageName: "_ZN6Halide7Runtime8Internal5Metal18new_command_bufferEP26halide_metal_command_queuePKcm", scope: !2, file: !6, line: 48, type: !544, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !546)
!544 = !DISubroutineType(types: !545)
!545 = !{!133, !31, !335, !248}
!546 = !{!547, !548, !549, !550, !551, !552, !553}
!547 = !DILocalVariable(name: "queue", arg: 1, scope: !543, file: !6, line: 48, type: !31)
!548 = !DILocalVariable(name: "label", arg: 2, scope: !543, file: !6, line: 48, type: !335)
!549 = !DILocalVariable(name: "label_len", arg: 3, scope: !543, file: !6, line: 48, type: !248)
!550 = !DILocalVariable(name: "label_str", scope: !543, file: !6, line: 49, type: !480)
!551 = !DILocalVariable(name: "method", scope: !543, file: !6, line: 52, type: !542)
!552 = !DILocalVariable(name: "command_buffer", scope: !543, file: !6, line: 53, type: !133)
!553 = !DILocalVariable(name: "method1", scope: !543, file: !6, line: 56, type: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "set_label_method", scope: !543, file: !6, line: 55, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !480, !487, !480}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!133, !480, !487}
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "add_completed_handler_method", scope: !562, file: !6, line: 64, baseType: !569)
!562 = distinct !DISubprogram(name: "add_command_buffer_completed_handler", linkageName: "_ZN6Halide7Runtime8Internal5Metal36add_command_buffer_completed_handlerEPNS2_18mtl_command_bufferEPNS2_46command_buffer_completed_handler_block_literalE", scope: !2, file: !6, line: 63, type: !563, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !133, !132}
!565 = !{!566, !567, !568}
!566 = !DILocalVariable(name: "command_buffer", arg: 1, scope: !562, file: !6, line: 63, type: !133)
!567 = !DILocalVariable(name: "handler", arg: 2, scope: !562, file: !6, line: 63, type: !132)
!568 = !DILocalVariable(name: "method", scope: !562, file: !6, line: 65, type: !561)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !480, !487, !132}
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "error_method", scope: !573, file: !6, line: 70, baseType: !484)
!573 = distinct !DISubprogram(name: "command_buffer_error", linkageName: "_ZN6Halide7Runtime8Internal5Metal20command_buffer_errorEPNS2_18mtl_command_bufferE", scope: !2, file: !6, line: 69, type: !574, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{!480, !133}
!576 = !{!577, !578}
!577 = !DILocalVariable(name: "buffer", arg: 1, scope: !573, file: !6, line: 69, type: !133)
!578 = !DILocalVariable(name: "method", scope: !573, file: !6, line: 71, type: !572)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "compute_command_encoder_method", scope: !580, file: !6, line: 76, baseType: !589)
!580 = distinct !DISubprogram(name: "new_compute_command_encoder", linkageName: "_ZN6Halide7Runtime8Internal5Metal27new_compute_command_encoderEPNS2_18mtl_command_bufferE", scope: !2, file: !6, line: 75, type: !581, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !586)
!581 = !DISubroutineType(types: !582)
!582 = !{!583, !133}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_compute_command_encoder", scope: !2, file: !585, line: 11, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal27mtl_compute_command_encoderE")
!585 = !DIFile(filename: "src/runtime/metal_objc_platform_dependent.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!586 = !{!587, !588}
!587 = !DILocalVariable(name: "buffer", arg: 1, scope: !580, file: !6, line: 75, type: !133)
!588 = !DILocalVariable(name: "method", scope: !580, file: !6, line: 77, type: !579)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!583, !480, !487}
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "blit_command_encoder_method", scope: !593, file: !6, line: 82, baseType: !601)
!593 = distinct !DISubprogram(name: "new_blit_command_encoder", linkageName: "_ZN6Halide7Runtime8Internal5Metal24new_blit_command_encoderEPNS2_18mtl_command_bufferE", scope: !2, file: !6, line: 81, type: !594, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !598)
!594 = !DISubroutineType(types: !595)
!595 = !{!596, !133}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_blit_command_encoder", scope: !2, file: !6, line: 29, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal24mtl_blit_command_encoderE")
!598 = !{!599, !600}
!599 = !DILocalVariable(name: "buffer", arg: 1, scope: !593, file: !6, line: 81, type: !133)
!600 = !DILocalVariable(name: "method", scope: !593, file: !6, line: 83, type: !592)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!596, !480, !487}
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "new_compute_pipeline_state_method", scope: !605, file: !6, line: 89, baseType: !618)
!605 = distinct !DISubprogram(name: "new_compute_pipeline_state_with_function", linkageName: "_ZN6Halide7Runtime8Internal5Metal40new_compute_pipeline_state_with_functionEP19halide_metal_devicePNS2_12mtl_functionE", scope: !2, file: !6, line: 87, type: !606, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !612)
!606 = !DISubroutineType(types: !607)
!607 = !{!608, !25, !610}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_compute_pipeline_state", scope: !2, file: !6, line: 30, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal26mtl_compute_pipeline_stateE")
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_function", scope: !2, file: !6, line: 32, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal12mtl_functionE")
!612 = !{!613, !614, !615, !616, !617}
!613 = !DILocalVariable(name: "device", arg: 1, scope: !605, file: !6, line: 87, type: !25)
!614 = !DILocalVariable(name: "function", arg: 2, scope: !605, file: !6, line: 87, type: !610)
!615 = !DILocalVariable(name: "error_return", scope: !605, file: !6, line: 88, type: !480)
!616 = !DILocalVariable(name: "method", scope: !605, file: !6, line: 91, type: !604)
!617 = !DILocalVariable(name: "result", scope: !605, file: !6, line: 92, type: !608)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!608, !480, !487, !480, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_max_total_threads_per_threadgroup_method", scope: !623, file: !6, line: 102, baseType: !629)
!623 = distinct !DISubprogram(name: "get_max_total_threads_per_threadgroup", linkageName: "_ZN6Halide7Runtime8Internal5Metal37get_max_total_threads_per_threadgroupEPNS2_26mtl_compute_pipeline_stateE", scope: !2, file: !6, line: 101, type: !624, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !626)
!624 = !DISubroutineType(types: !625)
!625 = !{!119, !608}
!626 = !{!627, !628}
!627 = !DILocalVariable(name: "pipeline_state", arg: 1, scope: !623, file: !6, line: 101, type: !608)
!628 = !DILocalVariable(name: "method", scope: !623, file: !6, line: 103, type: !622)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!119, !480, !487}
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "set_compute_pipeline_state_method", scope: !633, file: !6, line: 108, baseType: !555)
!633 = distinct !DISubprogram(name: "set_compute_pipeline_state", linkageName: "_ZN6Halide7Runtime8Internal5Metal26set_compute_pipeline_stateEPNS2_27mtl_compute_command_encoderEPNS2_26mtl_compute_pipeline_stateE", scope: !2, file: !6, line: 107, type: !634, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !636)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !583, !608}
!636 = !{!637, !638, !639}
!637 = !DILocalVariable(name: "encoder", arg: 1, scope: !633, file: !6, line: 107, type: !583)
!638 = !DILocalVariable(name: "pipeline_state", arg: 2, scope: !633, file: !6, line: 107, type: !608)
!639 = !DILocalVariable(name: "method", scope: !633, file: !6, line: 109, type: !632)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "end_encoding_method", scope: !641, file: !6, line: 114, baseType: !647)
!641 = distinct !DISubprogram(name: "end_encoding", linkageName: "_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_27mtl_compute_command_encoderE", scope: !2, file: !6, line: 113, type: !642, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !583}
!644 = !{!645, !646}
!645 = !DILocalVariable(name: "encoder", arg: 1, scope: !641, file: !6, line: 113, type: !583)
!646 = !DILocalVariable(name: "method", scope: !641, file: !6, line: 115, type: !640)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !480, !487}
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "did_modify_range_method", scope: !651, file: !6, line: 125, baseType: !662)
!651 = distinct !DISubprogram(name: "did_modify_range", linkageName: "_ZN6Halide7Runtime8Internal5Metal16did_modify_rangeEPNS2_10mtl_bufferENS2_7NSRangeE", scope: !2, file: !6, line: 124, type: !652, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !658)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !523, !654}
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NSRange", scope: !2, file: !6, line: 119, size: 128, flags: DIFlagTypePassByValue, elements: !655, identifier: "_ZTSN6Halide7Runtime8Internal5Metal7NSRangeE")
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !654, file: !6, line: 120, baseType: !248, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !654, file: !6, line: 121, baseType: !248, size: 64, offset: 64)
!658 = !{!659, !660, !661}
!659 = !DILocalVariable(name: "buffer", arg: 1, scope: !651, file: !6, line: 124, type: !523)
!660 = !DILocalVariable(name: "range", arg: 2, scope: !651, file: !6, line: 124, type: !654)
!661 = !DILocalVariable(name: "method", scope: !651, file: !6, line: 126, type: !650)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !480, !487, !654}
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "synchronize_resource_method", scope: !666, file: !6, line: 131, baseType: !673)
!666 = distinct !DISubprogram(name: "synchronize_resource", linkageName: "_ZN6Halide7Runtime8Internal5Metal20synchronize_resourceEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferE", scope: !2, file: !6, line: 130, type: !667, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !596, !523}
!669 = !{!670, !671, !672}
!670 = !DILocalVariable(name: "encoder", arg: 1, scope: !666, file: !6, line: 130, type: !596)
!671 = !DILocalVariable(name: "buffer", arg: 2, scope: !666, file: !6, line: 130, type: !523)
!672 = !DILocalVariable(name: "method", scope: !666, file: !6, line: 132, type: !665)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !480, !487, !523}
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "responds_to_selector_method", scope: !677, file: !6, line: 137, baseType: !692)
!677 = distinct !DISubprogram(name: "is_buffer_managed", linkageName: "_ZN6Halide7Runtime8Internal5Metal17is_buffer_managedEPNS2_10mtl_bufferE", scope: !2, file: !6, line: 136, type: !678, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !680)
!678 = !DISubroutineType(types: !679)
!679 = !{!87, !523}
!680 = !{!681, !682, !683, !684, !691}
!681 = !DILocalVariable(name: "buffer", arg: 1, scope: !677, file: !6, line: 136, type: !523)
!682 = !DILocalVariable(name: "method1", scope: !677, file: !6, line: 138, type: !676)
!683 = !DILocalVariable(name: "storage_mode_sel", scope: !677, file: !6, line: 139, type: !487)
!684 = !DILocalVariable(name: "method", scope: !685, file: !6, line: 142, type: !687)
!685 = distinct !DILexicalBlock(scope: !686, file: !6, line: 140, column: 82)
!686 = distinct !DILexicalBlock(scope: !677, file: !6, line: 140, column: 9)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "storage_mode_method", scope: !677, file: !6, line: 141, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!57, !480, !487}
!691 = !DILocalVariable(name: "storage_mode", scope: !685, file: !6, line: 143, type: !57)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!87, !480, !487, !487}
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "copy_from_buffer_method", scope: !696, file: !6, line: 153, baseType: !707)
!696 = distinct !DISubprogram(name: "buffer_to_buffer_1d_copy", linkageName: "_ZN6Halide7Runtime8Internal5Metal24buffer_to_buffer_1d_copyEPNS2_24mtl_blit_command_encoderEPNS2_10mtl_bufferEmS6_mm", scope: !2, file: !6, line: 149, type: !697, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !699)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !596, !523, !248, !523, !248, !248}
!699 = !{!700, !701, !702, !703, !704, !705, !706}
!700 = !DILocalVariable(name: "encoder", arg: 1, scope: !696, file: !6, line: 149, type: !596)
!701 = !DILocalVariable(name: "from", arg: 2, scope: !696, file: !6, line: 150, type: !523)
!702 = !DILocalVariable(name: "from_offset", arg: 3, scope: !696, file: !6, line: 150, type: !248)
!703 = !DILocalVariable(name: "to", arg: 4, scope: !696, file: !6, line: 151, type: !523)
!704 = !DILocalVariable(name: "to_offset", arg: 5, scope: !696, file: !6, line: 151, type: !248)
!705 = !DILocalVariable(name: "size", arg: 6, scope: !696, file: !6, line: 152, type: !248)
!706 = !DILocalVariable(name: "method", scope: !696, file: !6, line: 155, type: !695)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !480, !487, !480, !248, !480, !248, !248}
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "end_encoding_method", scope: !711, file: !6, line: 161, baseType: !647)
!711 = distinct !DISubprogram(name: "end_encoding", linkageName: "_ZN6Halide7Runtime8Internal5Metal12end_encodingEPNS2_24mtl_blit_command_encoderE", scope: !2, file: !6, line: 160, type: !712, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !714)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !596}
!714 = !{!715, !716}
!715 = !DILocalVariable(name: "encoder", arg: 1, scope: !711, file: !6, line: 160, type: !596)
!716 = !DILocalVariable(name: "method", scope: !711, file: !6, line: 162, type: !710)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "responds_to_selector_method", scope: !718, file: !6, line: 167, baseType: !692)
!718 = distinct !DISubprogram(name: "buffer_supports_set_bytes", linkageName: "_ZN6Halide7Runtime8Internal5Metal25buffer_supports_set_bytesEPNS2_27mtl_compute_command_encoderE", scope: !2, file: !6, line: 166, type: !719, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{!87, !583}
!721 = !{!722, !723, !724}
!722 = !DILocalVariable(name: "encoder", arg: 1, scope: !718, file: !6, line: 166, type: !583)
!723 = !DILocalVariable(name: "method1", scope: !718, file: !6, line: 168, type: !717)
!724 = !DILocalVariable(name: "set_bytes_sel", scope: !718, file: !6, line: 169, type: !487)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "options_method", scope: !726, file: !6, line: 177, baseType: !484)
!726 = distinct !DISubprogram(name: "new_library_with_source", linkageName: "_ZN6Halide7Runtime8Internal5Metal23new_library_with_sourceEP19halide_metal_devicePKcm", scope: !2, file: !6, line: 173, type: !727, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !729)
!727 = !DISubroutineType(types: !728)
!728 = !{!66, !25, !335, !248}
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !742, !747}
!730 = !DILocalVariable(name: "device", arg: 1, scope: !726, file: !6, line: 173, type: !25)
!731 = !DILocalVariable(name: "source", arg: 2, scope: !726, file: !6, line: 173, type: !335)
!732 = !DILocalVariable(name: "source_len", arg: 3, scope: !726, file: !6, line: 173, type: !248)
!733 = !DILocalVariable(name: "error_return", scope: !726, file: !6, line: 174, type: !480)
!734 = !DILocalVariable(name: "source_str", scope: !726, file: !6, line: 175, type: !480)
!735 = !DILocalVariable(name: "method", scope: !726, file: !6, line: 178, type: !725)
!736 = !DILocalVariable(name: "options", scope: !726, file: !6, line: 180, type: !480)
!737 = !DILocalVariable(name: "method1", scope: !726, file: !6, line: 183, type: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "set_fast_math_method", scope: !726, file: !6, line: 182, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !480, !487, !154}
!742 = !DILocalVariable(name: "method2", scope: !726, file: !6, line: 187, type: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "new_library_with_source_method", scope: !726, file: !6, line: 186, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!66, !480, !487, !480, !480, !621}
!747 = !DILocalVariable(name: "result", scope: !726, file: !6, line: 188, type: !66)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "new_function_with_name_method", scope: !749, file: !6, line: 203, baseType: !759)
!749 = distinct !DISubprogram(name: "new_function_with_name", linkageName: "_ZN6Halide7Runtime8Internal5Metal22new_function_with_nameEPNS2_11mtl_libraryEPKcm", scope: !2, file: !6, line: 201, type: !750, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !752)
!750 = !DISubroutineType(types: !751)
!751 = !{!610, !66, !335, !248}
!752 = !{!753, !754, !755, !756, !757, !758}
!753 = !DILocalVariable(name: "library", arg: 1, scope: !749, file: !6, line: 201, type: !66)
!754 = !DILocalVariable(name: "name", arg: 2, scope: !749, file: !6, line: 201, type: !335)
!755 = !DILocalVariable(name: "name_len", arg: 3, scope: !749, file: !6, line: 201, type: !248)
!756 = !DILocalVariable(name: "name_str", scope: !749, file: !6, line: 202, type: !480)
!757 = !DILocalVariable(name: "method", scope: !749, file: !6, line: 204, type: !748)
!758 = !DILocalVariable(name: "result", scope: !749, file: !6, line: 205, type: !610)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!610, !480, !487, !480}
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "set_buffer_method", scope: !763, file: !6, line: 211, baseType: !772)
!763 = distinct !DISubprogram(name: "set_input_buffer", linkageName: "_ZN6Halide7Runtime8Internal5Metal16set_input_bufferEPNS2_27mtl_compute_command_encoderEPNS2_10mtl_bufferEyj", scope: !2, file: !6, line: 210, type: !764, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !583, !523, !48, !69}
!766 = !{!767, !768, !769, !770, !771}
!767 = !DILocalVariable(name: "encoder", arg: 1, scope: !763, file: !6, line: 210, type: !583)
!768 = !DILocalVariable(name: "input_buffer", arg: 2, scope: !763, file: !6, line: 210, type: !523)
!769 = !DILocalVariable(name: "offset", arg: 3, scope: !763, file: !6, line: 210, type: !48)
!770 = !DILocalVariable(name: "index", arg: 4, scope: !763, file: !6, line: 210, type: !69)
!771 = !DILocalVariable(name: "method", scope: !763, file: !6, line: 213, type: !762)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !480, !487, !523, !248, !248}
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "set_bytes_method", scope: !776, file: !6, line: 219, baseType: !785)
!776 = distinct !DISubprogram(name: "set_input_buffer_from_bytes", linkageName: "_ZN6Halide7Runtime8Internal5Metal27set_input_buffer_from_bytesEPNS2_27mtl_compute_command_encoderEPhjj", scope: !2, file: !6, line: 218, type: !777, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !779)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !583, !153, !69, !69}
!779 = !{!780, !781, !782, !783, !784}
!780 = !DILocalVariable(name: "encoder", arg: 1, scope: !776, file: !6, line: 218, type: !583)
!781 = !DILocalVariable(name: "input_buffer", arg: 2, scope: !776, file: !6, line: 218, type: !153)
!782 = !DILocalVariable(name: "length", arg: 3, scope: !776, file: !6, line: 218, type: !69)
!783 = !DILocalVariable(name: "index", arg: 4, scope: !776, file: !6, line: 218, type: !69)
!784 = !DILocalVariable(name: "method", scope: !776, file: !6, line: 221, type: !775)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !480, !487, !99, !248, !248}
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "set_threadgroup_memory_length_method", scope: !789, file: !6, line: 227, baseType: !797)
!789 = distinct !DISubprogram(name: "set_threadgroup_memory_length", linkageName: "_ZN6Halide7Runtime8Internal5Metal29set_threadgroup_memory_lengthEPNS2_27mtl_compute_command_encoderEjj", scope: !2, file: !6, line: 226, type: !790, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !792)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !583, !69, !69}
!792 = !{!793, !794, !795, !796}
!793 = !DILocalVariable(name: "encoder", arg: 1, scope: !789, file: !6, line: 226, type: !583)
!794 = !DILocalVariable(name: "length", arg: 2, scope: !789, file: !6, line: 226, type: !69)
!795 = !DILocalVariable(name: "index", arg: 3, scope: !789, file: !6, line: 226, type: !69)
!796 = !DILocalVariable(name: "method", scope: !789, file: !6, line: 229, type: !788)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !480, !487, !248, !248}
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "commit_method", scope: !801, file: !6, line: 235, baseType: !647)
!801 = distinct !DISubprogram(name: "commit_command_buffer", linkageName: "_ZN6Halide7Runtime8Internal5Metal21commit_command_bufferEPNS2_18mtl_command_bufferE", scope: !2, file: !6, line: 234, type: !802, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !804)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !133}
!804 = !{!805, !806}
!805 = !DILocalVariable(name: "buffer", arg: 1, scope: !801, file: !6, line: 234, type: !133)
!806 = !DILocalVariable(name: "method", scope: !801, file: !6, line: 236, type: !800)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_until_completed_method", scope: !808, file: !6, line: 241, baseType: !647)
!808 = distinct !DISubprogram(name: "wait_until_completed", linkageName: "_ZN6Halide7Runtime8Internal5Metal20wait_until_completedEPNS2_18mtl_command_bufferE", scope: !2, file: !6, line: 240, type: !802, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !809)
!809 = !{!810, !811}
!810 = !DILocalVariable(name: "buffer", arg: 1, scope: !808, file: !6, line: 240, type: !133)
!811 = !DILocalVariable(name: "method", scope: !808, file: !6, line: 242, type: !807)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "contents_method", scope: !813, file: !6, line: 247, baseType: !819)
!813 = distinct !DISubprogram(name: "buffer_contents", linkageName: "_ZN6Halide7Runtime8Internal5Metal15buffer_contentsEPNS2_10mtl_bufferE", scope: !2, file: !6, line: 246, type: !814, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{!99, !523}
!816 = !{!817, !818}
!817 = !DILocalVariable(name: "buffer", arg: 1, scope: !813, file: !6, line: 246, type: !523)
!818 = !DILocalVariable(name: "method", scope: !813, file: !6, line: 248, type: !812)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!99, !480, !487}
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "nsarray_first_object_method", scope: !823, file: !6, line: 253, baseType: !484)
!823 = distinct !DISubprogram(name: "nsarray_first_object", linkageName: "_ZN6Halide7Runtime8Internal5Metal20nsarray_first_objectEPv", scope: !2, file: !6, line: 252, type: !824, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!99, !480}
!826 = !{!827, !828}
!827 = !DILocalVariable(name: "arr", arg: 1, scope: !823, file: !6, line: 252, type: !480)
!828 = !DILocalVariable(name: "method", scope: !823, file: !6, line: 254, type: !822)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "mtl_copy_all_devices_method", scope: !830, file: !6, line: 270, baseType: !842)
!830 = distinct !DISubprogram(name: "get_default_mtl_device", linkageName: "_ZN6Halide7Runtime8Internal5Metal22get_default_mtl_deviceEv", scope: !2, file: !6, line: 262, type: !831, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!25}
!833 = !{!834, !835, !838, !841}
!834 = !DILocalVariable(name: "device", scope: !830, file: !6, line: 263, type: !25)
!835 = !DILocalVariable(name: "handle", scope: !836, file: !6, line: 268, type: !99)
!836 = distinct !DILexicalBlock(scope: !837, file: !6, line: 264, column: 28)
!837 = distinct !DILexicalBlock(scope: !830, file: !6, line: 264, column: 9)
!838 = !DILocalVariable(name: "method", scope: !839, file: !6, line: 271, type: !829)
!839 = distinct !DILexicalBlock(scope: !840, file: !6, line: 269, column: 32)
!840 = distinct !DILexicalBlock(scope: !836, file: !6, line: 269, column: 13)
!841 = !DILocalVariable(name: "devices", scope: !839, file: !6, line: 272, type: !480)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !396, file: !395, line: 199, baseType: !844)
!844 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !396, file: !395, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !845, templateParams: !908)
!845 = !{!846, !847, !848, !849, !850, !851, !852, !856, !860, !863, !866, !869, !872, !875, !878, !881, !884, !887, !890, !893, !896, !901, !902, !905, !906, !907}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !844, file: !395, line: 32, baseType: !400, size: 64, flags: DIFlagPublic)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !844, file: !395, line: 32, baseType: !400, size: 64, offset: 64, flags: DIFlagPublic)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !844, file: !395, line: 32, baseType: !400, size: 64, offset: 128, flags: DIFlagPublic)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !844, file: !395, line: 33, baseType: !99, size: 64, offset: 192, flags: DIFlagPublic)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !844, file: !395, line: 34, baseType: !87, size: 8, offset: 256, flags: DIFlagPublic)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !844, file: !395, line: 35, baseType: !406, size: 8, offset: 264, flags: DIFlagPublic)
!852 = !DISubprogram(name: "Printer", scope: !844, file: !395, line: 37, type: !853, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !855, !99, !400}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!856 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !844, file: !395, line: 57, type: !857, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!857 = !DISubroutineType(types: !858)
!858 = !{!859, !855, !335}
!859 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !844, size: 64)
!860 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !844, file: !395, line: 67, type: !861, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!861 = !DISubroutineType(types: !862)
!862 = !{!859, !855, !418}
!863 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !844, file: !395, line: 72, type: !864, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!864 = !DISubroutineType(types: !865)
!865 = !{!859, !855, !198}
!866 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !844, file: !395, line: 77, type: !867, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!867 = !DISubroutineType(types: !868)
!868 = !{!859, !855, !48}
!869 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEj", scope: !844, file: !395, line: 82, type: !870, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!870 = !DISubroutineType(types: !871)
!871 = !{!859, !855, !69}
!872 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !844, file: !395, line: 87, type: !873, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!873 = !DISubroutineType(types: !874)
!874 = !{!859, !855, !432}
!875 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEf", scope: !844, file: !395, line: 92, type: !876, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!876 = !DISubroutineType(types: !877)
!877 = !{!859, !855, !54}
!878 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !844, file: !395, line: 97, type: !879, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!879 = !DISubroutineType(types: !880)
!880 = !{!859, !855, !439}
!881 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE23write_float16_from_bitsEt", scope: !844, file: !395, line: 102, type: !882, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!882 = !DISubroutineType(types: !883)
!883 = !{!859, !855, !444}
!884 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !844, file: !395, line: 108, type: !885, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!885 = !DISubroutineType(types: !886)
!886 = !{!859, !855, !188}
!887 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK15halide_buffer_t", scope: !844, file: !395, line: 113, type: !888, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!888 = !DISubroutineType(types: !889)
!889 = !{!859, !855, !451}
!890 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !844, file: !395, line: 119, type: !891, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!891 = !DISubroutineType(types: !892)
!892 = !{!335, !855}
!893 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !844, file: !395, line: 131, type: !894, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !855}
!896 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !844, file: !395, line: 139, type: !897, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!897 = !DISubroutineType(types: !898)
!898 = !{!48, !899}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !844)
!901 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE8capacityEv", scope: !844, file: !395, line: 143, type: !897, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!902 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5eraseEi", scope: !844, file: !395, line: 148, type: !903, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !855, !57}
!905 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE16allocation_errorEv", scope: !844, file: !395, line: 158, type: !891, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!906 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !844, file: !395, line: 162, type: !894, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!907 = !DISubprogram(name: "~Printer", scope: !844, file: !395, line: 166, type: !894, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!908 = !{!909, !474}
!909 = !DITemplateValueParameter(name: "type", type: !57, value: i32 1)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_handle", scope: !2, file: !6, line: 287, size: 128, flags: DIFlagTypePassByValue, elements: !912, identifier: "_ZTSN6Halide7Runtime8Internal5Metal13device_handleE")
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !911, file: !6, line: 288, baseType: !523, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !911, file: !6, line: 289, baseType: !48, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !47, line: 28, baseType: !917)
!917 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!919 = !{!0, !23, !29, !34, !110, !112, !114, !121, !330, !920, !137}
!920 = !DIGlobalVariableExpression(var: !921, expr: !DIExpression())
!921 = distinct !DIGlobalVariable(name: "metal_device_interface_impl", linkageName: "_ZN6Halide7Runtime8Internal5Metal27metal_device_interface_implE", scope: !2, file: !6, line: 1146, type: !302, isLocal: false, isDefinition: true)
!922 = !{!923, !924, !925, !926}
!923 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !343, entity: !3, file: !47, line: 225)
!924 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !343, entity: !3, file: !6, line: 327)
!925 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !343, entity: !2, file: !6, line: 328)
!926 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !343, entity: !2, file: !6, line: 458)
!927 = !{!928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !963, !964, !965, !966, !967, !968, !969, !970, !971, !973, !974, !977, !981, !982, !983, !984, !986, !988, !993}
!928 = !DILocalVariable(name: "user_context", arg: 1, scope: !332, file: !6, line: 723, type: !99)
!929 = !DILocalVariable(name: "state_ptr", arg: 2, scope: !332, file: !6, line: 724, type: !99)
!930 = !DILocalVariable(name: "entry_name", arg: 3, scope: !332, file: !6, line: 725, type: !335)
!931 = !DILocalVariable(name: "blocksX", arg: 4, scope: !332, file: !6, line: 726, type: !57)
!932 = !DILocalVariable(name: "blocksY", arg: 5, scope: !332, file: !6, line: 726, type: !57)
!933 = !DILocalVariable(name: "blocksZ", arg: 6, scope: !332, file: !6, line: 726, type: !57)
!934 = !DILocalVariable(name: "threadsX", arg: 7, scope: !332, file: !6, line: 727, type: !57)
!935 = !DILocalVariable(name: "threadsY", arg: 8, scope: !332, file: !6, line: 727, type: !57)
!936 = !DILocalVariable(name: "threadsZ", arg: 9, scope: !332, file: !6, line: 727, type: !57)
!937 = !DILocalVariable(name: "shared_mem_bytes", arg: 10, scope: !332, file: !6, line: 728, type: !57)
!938 = !DILocalVariable(name: "arg_sizes", arg: 11, scope: !332, file: !6, line: 729, type: !337)
!939 = !DILocalVariable(name: "args", arg: 12, scope: !332, file: !6, line: 730, type: !338)
!940 = !DILocalVariable(name: "arg_is_buffer", arg: 13, scope: !332, file: !6, line: 731, type: !339)
!941 = !DILocalVariable(name: "num_attributes", arg: 14, scope: !332, file: !6, line: 732, type: !57)
!942 = !DILocalVariable(name: "vertex_buffer", arg: 15, scope: !332, file: !6, line: 733, type: !342)
!943 = !DILocalVariable(name: "num_coords_dim0", arg: 16, scope: !332, file: !6, line: 734, type: !57)
!944 = !DILocalVariable(name: "num_coords_dim1", arg: 17, scope: !332, file: !6, line: 735, type: !57)
!945 = !DILocalVariable(name: "t_before", scope: !332, file: !6, line: 737, type: !48)
!946 = !DILocalVariable(name: "metal_context", scope: !332, file: !6, line: 740, type: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MetalContextHolder", scope: !2, file: !6, line: 391, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !948, identifier: "_ZTSN6Halide7Runtime8Internal5Metal18MetalContextHolderE")
!948 = !{!949, !950, !951, !952, !953, !954, !958, !961, !962}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !947, file: !6, line: 392, baseType: !480, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !947, file: !6, line: 393, baseType: !99, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !947, file: !6, line: 400, baseType: !25, size: 64, offset: 128, flags: DIFlagPublic)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !947, file: !6, line: 401, baseType: !31, size: 64, offset: 192, flags: DIFlagPublic)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !947, file: !6, line: 402, baseType: !57, size: 32, offset: 256, flags: DIFlagPublic)
!954 = !DISubprogram(name: "save", linkageName: "_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb", scope: !947, file: !6, line: 396, type: !955, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !957, !99, !87}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!958 = !DISubprogram(name: "restore", linkageName: "_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv", scope: !947, file: !6, line: 397, type: !959, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !957}
!961 = !DISubprogram(name: "MetalContextHolder", scope: !947, file: !6, line: 404, type: !955, scopeLine: 404, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DISubprogram(name: "~MetalContextHolder", scope: !947, file: !6, line: 407, type: !959, scopeLine: 407, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!963 = !DILocalVariable(name: "command_buffer", scope: !332, file: !6, line: 745, type: !133)
!964 = !DILocalVariable(name: "encoder", scope: !332, file: !6, line: 751, type: !583)
!965 = !DILocalVariable(name: "library", scope: !332, file: !6, line: 757, type: !66)
!966 = !DILocalVariable(name: "found", scope: !332, file: !6, line: 758, type: !87)
!967 = !DILocalVariable(name: "function", scope: !332, file: !6, line: 761, type: !610)
!968 = !DILocalVariable(name: "pipeline_state", scope: !332, file: !6, line: 767, type: !608)
!969 = !DILocalVariable(name: "max_total_threads_per_threadgroup", scope: !332, file: !6, line: 774, type: !418)
!970 = !DILocalVariable(name: "total_args_size", scope: !332, file: !6, line: 785, type: !248)
!971 = !DILocalVariable(name: "i", scope: !972, file: !6, line: 786, type: !248)
!972 = distinct !DILexicalBlock(scope: !332, file: !6, line: 786, column: 5)
!973 = !DILocalVariable(name: "buffer_index", scope: !332, file: !6, line: 801, type: !198)
!974 = !DILocalVariable(name: "args_buffer", scope: !975, file: !6, line: 803, type: !523)
!975 = distinct !DILexicalBlock(scope: !976, file: !6, line: 802, column: 30)
!976 = distinct !DILexicalBlock(scope: !332, file: !6, line: 802, column: 9)
!977 = !DILocalVariable(name: "small_args_buffer", scope: !975, file: !6, line: 804, type: !978)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 32768, elements: !979)
!979 = !{!980}
!980 = !DISubrange(count: 4096)
!981 = !DILocalVariable(name: "args_ptr", scope: !975, file: !6, line: 805, type: !400)
!982 = !DILocalVariable(name: "padded_args_size", scope: !975, file: !6, line: 817, type: !248)
!983 = !DILocalVariable(name: "offset", scope: !975, file: !6, line: 832, type: !248)
!984 = !DILocalVariable(name: "i", scope: !985, file: !6, line: 833, type: !248)
!985 = distinct !DILexicalBlock(scope: !975, file: !6, line: 833, column: 9)
!986 = !DILocalVariable(name: "i", scope: !987, file: !6, line: 851, type: !248)
!987 = distinct !DILexicalBlock(scope: !332, file: !6, line: 851, column: 5)
!988 = !DILocalVariable(name: "handle", scope: !989, file: !6, line: 854, type: !910)
!989 = distinct !DILexicalBlock(scope: !990, file: !6, line: 852, column: 31)
!990 = distinct !DILexicalBlock(scope: !991, file: !6, line: 852, column: 13)
!991 = distinct !DILexicalBlock(scope: !992, file: !6, line: 851, column: 48)
!992 = distinct !DILexicalBlock(scope: !987, file: !6, line: 851, column: 5)
!993 = !DILocalVariable(name: "t_after", scope: !332, file: !6, line: 884, type: !48)
!994 = !{i32 7, !"Dwarf Version", i32 4}
!995 = !{i32 2, !"Debug Info Version", i32 3}
!996 = !{i32 1, !"wchar_size", i32 4}
!997 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!998 = distinct !DISubprogram(name: "copy_memory_helper", linkageName: "_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx", scope: !3, file: !999, line: 47, type: !1000, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1016)
!999 = !DIFile(filename: "src/runtime/device_buffer_utils.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !1002, !57, !418, !418}
!1002 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_copy", scope: !3, file: !999, line: 33, size: 3328, flags: DIFlagTypePassByValue, elements: !1005, identifier: "_ZTSN6Halide7Runtime8Internal11device_copyE")
!1005 = !{!1006, !1007, !1008, !1009, !1013, !1014, !1015}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1004, file: !999, line: 35, baseType: !48, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1004, file: !999, line: 35, baseType: !48, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "src_begin", scope: !1004, file: !999, line: 37, baseType: !48, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1004, file: !999, line: 39, baseType: !1010, size: 1024, offset: 192)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1024, elements: !1011)
!1011 = !{!1012}
!1012 = !DISubrange(count: 16)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "src_stride_bytes", scope: !1004, file: !999, line: 41, baseType: !1010, size: 1024, offset: 1216)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "dst_stride_bytes", scope: !1004, file: !999, line: 42, baseType: !1010, size: 1024, offset: 2240)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1004, file: !999, line: 44, baseType: !48, size: 64, offset: 3264)
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1024, !1025}
!1017 = !DILocalVariable(name: "copy", arg: 1, scope: !998, file: !999, line: 47, type: !1002)
!1018 = !DILocalVariable(name: "d", arg: 2, scope: !998, file: !999, line: 47, type: !57)
!1019 = !DILocalVariable(name: "src_off", arg: 3, scope: !998, file: !999, line: 47, type: !418)
!1020 = !DILocalVariable(name: "dst_off", arg: 4, scope: !998, file: !999, line: 47, type: !418)
!1021 = !DILocalVariable(name: "from", scope: !1022, file: !999, line: 54, type: !439)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !999, line: 53, column: 18)
!1023 = distinct !DILexicalBlock(scope: !998, file: !999, line: 53, column: 9)
!1024 = !DILocalVariable(name: "to", scope: !1022, file: !999, line: 55, type: !99)
!1025 = !DILocalVariable(name: "i", scope: !1026, file: !999, line: 58, type: !48)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !999, line: 58, column: 9)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !999, line: 57, column: 12)
!1028 = !DILocation(line: 0, scope: !998)
!1029 = !DILocation(line: 49, column: 14, scope: !998)
!1030 = !DILocation(line: 49, column: 19, scope: !998)
!1031 = !DILocation(line: 49, column: 22, scope: !998)
!1032 = !{!1033, !1033, i64 0}
!1033 = !{!"long long", !1034, i64 0}
!1034 = !{!"omnipotent char", !1035, i64 0}
!1035 = !{!"Simple C++ TBAA"}
!1036 = !DILocation(line: 49, column: 37, scope: !998)
!1037 = !DILocation(line: 49, column: 5, scope: !998)
!1038 = !DILocation(line: 50, column: 10, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !998, file: !999, line: 49, column: 43)
!1040 = distinct !{!1040, !1037, !1041, !1042}
!1041 = !DILocation(line: 51, column: 5, scope: !998)
!1042 = !{!"llvm.loop.mustprogress"}
!1043 = !DILocation(line: 53, column: 11, scope: !1023)
!1044 = !DILocation(line: 53, column: 9, scope: !998)
!1045 = !DILocation(line: 0, scope: !1026)
!1046 = !DILocation(line: 58, column: 34, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1026, file: !999, line: 58, column: 9)
!1048 = !DILocation(line: 58, column: 32, scope: !1047)
!1049 = !DILocation(line: 58, column: 9, scope: !1026)
!1050 = !DILocation(line: 54, column: 42, scope: !1022)
!1051 = !{!1052, !1033, i64 0}
!1052 = !{!"_ZTSN6Halide7Runtime8Internal11device_copyE", !1033, i64 0, !1033, i64 8, !1033, i64 16, !1034, i64 24, !1034, i64 152, !1034, i64 280, !1033, i64 408}
!1053 = !DILocation(line: 54, column: 46, scope: !1022)
!1054 = !DILocation(line: 54, column: 28, scope: !1022)
!1055 = !DILocation(line: 0, scope: !1022)
!1056 = !DILocation(line: 55, column: 34, scope: !1022)
!1057 = !{!1052, !1033, i64 8}
!1058 = !DILocation(line: 55, column: 38, scope: !1022)
!1059 = !DILocation(line: 55, column: 20, scope: !1022)
!1060 = !DILocation(line: 56, column: 31, scope: !1022)
!1061 = !{!1052, !1033, i64 408}
!1062 = !DILocation(line: 56, column: 9, scope: !1022)
!1063 = !DILocation(line: 57, column: 5, scope: !1022)
!1064 = !DILocation(line: 59, column: 13, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1047, file: !999, line: 58, column: 55)
!1066 = !DILocation(line: 60, column: 24, scope: !1065)
!1067 = !DILocation(line: 60, column: 21, scope: !1065)
!1068 = !DILocation(line: 61, column: 24, scope: !1065)
!1069 = !DILocation(line: 61, column: 21, scope: !1065)
!1070 = !DILocation(line: 58, column: 51, scope: !1047)
!1071 = distinct !{!1071, !1049, !1072, !1042}
!1072 = !DILocation(line: 62, column: 9, scope: !1026)
!1073 = !DILocation(line: 64, column: 1, scope: !998)
!1074 = !DISubprogram(name: "memcpy", scope: !47, file: !47, line: 94, type: !1075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!99, !99, !439, !119}
!1077 = !{}
!1078 = distinct !DISubprogram(name: "copy_memory", linkageName: "_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv", scope: !3, file: !999, line: 66, type: !1079, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1081)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !1002, !99}
!1081 = !{!1082, !1083}
!1082 = !DILocalVariable(name: "copy", arg: 1, scope: !1078, file: !999, line: 66, type: !1002)
!1083 = !DILocalVariable(name: "user_context", arg: 2, scope: !1078, file: !999, line: 66, type: !99)
!1084 = !DILocation(line: 0, scope: !1078)
!1085 = !DILocation(line: 68, column: 14, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1078, file: !999, line: 68, column: 9)
!1087 = !DILocation(line: 68, column: 26, scope: !1086)
!1088 = !DILocation(line: 68, column: 18, scope: !1086)
!1089 = !DILocation(line: 68, column: 9, scope: !1078)
!1090 = !DILocation(line: 69, column: 58, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !999, line: 68, column: 31)
!1092 = !{!1052, !1033, i64 16}
!1093 = !DILocation(line: 69, column: 9, scope: !1091)
!1094 = !DILocation(line: 70, column: 5, scope: !1091)
!1095 = !DILocalVariable(name: "this", arg: 1, scope: !1096, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1096 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !397, file: !395, line: 37, type: !408, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !407, retainedNodes: !1097)
!1097 = !{!1095, !1098, !1099}
!1098 = !DILocalVariable(name: "ctx", arg: 2, scope: !1096, file: !395, line: 37, type: !99)
!1099 = !DILocalVariable(name: "mem", arg: 3, scope: !1096, file: !395, line: 37, type: !400)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1101 = !DILocation(line: 0, scope: !1096, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 71, column: 9, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1086, file: !999, line: 70, column: 12)
!1104 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !1102)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !395, line: 43, column: 16)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !395, line: 41, column: 20)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !395, line: 39, column: 13)
!1108 = distinct !DILexicalBlock(scope: !1096, file: !395, line: 38, column: 54)
!1109 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !1102)
!1110 = distinct !DILexicalBlock(scope: !1108, file: !395, line: 48, column: 13)
!1111 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !1102)
!1112 = !DILocalVariable(name: "this", arg: 1, scope: !1113, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1113 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !397, file: !395, line: 57, type: !412, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !411, retainedNodes: !1114)
!1114 = !{!1112, !1115}
!1115 = !DILocalVariable(name: "arg", arg: 2, scope: !1113, file: !395, line: 57, type: !335)
!1116 = !DILocation(line: 0, scope: !1113, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 71, column: 29, scope: !1103)
!1118 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !1117)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !395, line: 61, column: 16)
!1120 = distinct !DILexicalBlock(scope: !1113, file: !395, line: 59, column: 13)
!1121 = !DILocalVariable(name: "this", arg: 1, scope: !1122, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1122 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !397, file: !395, line: 166, type: !458, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !471, retainedNodes: !1123)
!1123 = !{!1121}
!1124 = !DILocation(line: 0, scope: !1122, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 71, column: 9, scope: !1103)
!1126 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !1125)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !395, line: 167, column: 19)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !395, line: 167, column: 13)
!1129 = distinct !DILexicalBlock(scope: !1122, file: !395, line: 166, column: 16)
!1130 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !1125)
!1131 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !1102)
!1132 = distinct !DILexicalBlock(scope: !1110, file: !395, line: 48, column: 18)
!1133 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !1102)
!1134 = !{!1034, !1034, i64 0}
!1135 = !DILocalVariable(name: "this", arg: 1, scope: !1136, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1136 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !397, file: !395, line: 162, type: !458, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !470, retainedNodes: !1137)
!1137 = !{!1135}
!1138 = !DILocation(line: 0, scope: !1136, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !1125)
!1140 = distinct !DILexicalBlock(scope: !1128, file: !395, line: 169, column: 16)
!1141 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !1139)
!1142 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !1139)
!1143 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !1139)
!1144 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !1125)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !395, line: 173, column: 46)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !395, line: 173, column: 24)
!1147 = distinct !DILexicalBlock(scope: !1140, file: !395, line: 171, column: 17)
!1148 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !1125)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !395, line: 180, column: 40)
!1150 = distinct !DILexicalBlock(scope: !1129, file: !395, line: 180, column: 13)
!1151 = !DILocation(line: 73, column: 1, scope: !1078)
!1152 = distinct !DISubprogram(name: "make_buffer_copy", linkageName: "_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b", scope: !3, file: !999, line: 76, type: !1153, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1156)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!1004, !1155, !87, !1155, !87}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!1156 = !{!1157, !1158, !1159, !1160, !1161, !1162, !1164, !1166, !1169, !1172, !1174, !1177, !1178, !1179, !1181}
!1157 = !DILocalVariable(name: "src", arg: 1, scope: !1152, file: !999, line: 76, type: !1155)
!1158 = !DILocalVariable(name: "src_host", arg: 2, scope: !1152, file: !999, line: 76, type: !87)
!1159 = !DILocalVariable(name: "dst", arg: 3, scope: !1152, file: !999, line: 77, type: !1155)
!1160 = !DILocalVariable(name: "dst_host", arg: 4, scope: !1152, file: !999, line: 77, type: !87)
!1161 = !DILocalVariable(name: "c", scope: !1152, file: !999, line: 79, type: !1004)
!1162 = !DILocalVariable(name: "i", scope: !1163, file: !999, line: 83, type: !57)
!1163 = distinct !DILexicalBlock(scope: !1152, file: !999, line: 83, column: 5)
!1164 = !DILocalVariable(name: "i", scope: !1165, file: !999, line: 91, type: !57)
!1165 = distinct !DILexicalBlock(scope: !1152, file: !999, line: 91, column: 5)
!1166 = !DILocalVariable(name: "zero", scope: !1167, file: !999, line: 100, type: !1004)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !999, line: 98, column: 42)
!1168 = distinct !DILexicalBlock(scope: !1152, file: !999, line: 96, column: 9)
!1169 = !DILocalVariable(name: "zero", scope: !1170, file: !999, line: 107, type: !1004)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !999, line: 104, column: 28)
!1171 = distinct !DILexicalBlock(scope: !1152, file: !999, line: 104, column: 9)
!1172 = !DILocalVariable(name: "i", scope: !1173, file: !999, line: 115, type: !57)
!1173 = distinct !DILexicalBlock(scope: !1152, file: !999, line: 115, column: 5)
!1174 = !DILocalVariable(name: "dst_stride_bytes", scope: !1175, file: !999, line: 117, type: !48)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !999, line: 115, column: 47)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !999, line: 115, column: 5)
!1177 = !DILocalVariable(name: "src_stride_bytes", scope: !1175, file: !999, line: 118, type: !48)
!1178 = !DILocalVariable(name: "insert", scope: !1175, file: !999, line: 120, type: !57)
!1179 = !DILocalVariable(name: "j", scope: !1180, file: !999, line: 128, type: !57)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !999, line: 128, column: 9)
!1181 = !DILocalVariable(name: "j", scope: !1182, file: !999, line: 151, type: !57)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !999, line: 151, column: 9)
!1183 = distinct !DILexicalBlock(scope: !1152, file: !999, line: 145, column: 51)
!1184 = !DILocation(line: 0, scope: !1152)
!1185 = !DILocation(line: 79, column: 5, scope: !1152)
!1186 = !DILocation(line: 79, column: 17, scope: !1152)
!1187 = !DILocation(line: 80, column: 13, scope: !1152)
!1188 = !DILocation(line: 80, column: 39, scope: !1152)
!1189 = !{!1190, !1191, i64 16}
!1190 = !{!"_ZTS15halide_buffer_t", !1033, i64 0, !1191, i64 8, !1191, i64 16, !1033, i64 24, !1192, i64 32, !1195, i64 36, !1191, i64 40, !1191, i64 48}
!1191 = !{!"any pointer", !1034, i64 0}
!1192 = !{!"_ZTS13halide_type_t", !1193, i64 0, !1034, i64 1, !1194, i64 2}
!1193 = !{!"_ZTS18halide_type_code_t", !1034, i64 0}
!1194 = !{!"short", !1034, i64 0}
!1195 = !{!"int", !1034, i64 0}
!1196 = !DILocation(line: 80, column: 24, scope: !1152)
!1197 = !DILocation(line: 80, column: 51, scope: !1152)
!1198 = !{!1190, !1033, i64 0}
!1199 = !DILocation(line: 80, column: 7, scope: !1152)
!1200 = !DILocation(line: 80, column: 11, scope: !1152)
!1201 = !DILocation(line: 81, column: 13, scope: !1152)
!1202 = !DILocation(line: 81, column: 39, scope: !1152)
!1203 = !DILocation(line: 81, column: 24, scope: !1152)
!1204 = !DILocation(line: 81, column: 51, scope: !1152)
!1205 = !DILocation(line: 81, column: 7, scope: !1152)
!1206 = !DILocation(line: 81, column: 11, scope: !1152)
!1207 = !DILocalVariable(name: "this", arg: 1, scope: !1208, type: !1210, flags: DIFlagArtificial | DIFlagObjectPointer)
!1208 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !158, file: !42, line: 481, type: !192, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !191, retainedNodes: !1209)
!1209 = !{!1207}
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!1211 = !DILocation(line: 0, scope: !1208, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 82, column: 30, scope: !1152)
!1213 = !DILocation(line: 482, column: 17, scope: !1208, inlinedAt: !1212)
!1214 = !{!1192, !1034, i64 1}
!1215 = !DILocation(line: 482, column: 22, scope: !1208, inlinedAt: !1212)
!1216 = !DILocation(line: 482, column: 27, scope: !1208, inlinedAt: !1212)
!1217 = !DILocation(line: 82, column: 20, scope: !1152)
!1218 = !DILocation(line: 82, column: 7, scope: !1152)
!1219 = !DILocation(line: 82, column: 18, scope: !1152)
!1220 = !DILocation(line: 0, scope: !1163)
!1221 = !DILocation(line: 84, column: 9, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !999, line: 83, column: 45)
!1223 = distinct !DILexicalBlock(scope: !1163, file: !999, line: 83, column: 5)
!1224 = !DILocation(line: 84, column: 21, scope: !1222)
!1225 = !DILocation(line: 85, column: 9, scope: !1222)
!1226 = !DILocation(line: 85, column: 31, scope: !1222)
!1227 = !DILocation(line: 86, column: 9, scope: !1222)
!1228 = !DILocation(line: 86, column: 31, scope: !1222)
!1229 = !DILocation(line: 90, column: 7, scope: !1152)
!1230 = !DILocation(line: 0, scope: !1165)
!1231 = !DILocation(line: 91, column: 30, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1165, file: !999, line: 91, column: 5)
!1233 = !{!1190, !1195, i64 36}
!1234 = !DILocation(line: 91, column: 23, scope: !1232)
!1235 = !DILocation(line: 91, column: 5, scope: !1165)
!1236 = !{!1190, !1191, i64 40}
!1237 = !DILocation(line: 94, column: 17, scope: !1152)
!1238 = !DILocation(line: 94, column: 22, scope: !1152)
!1239 = !DILocation(line: 96, column: 33, scope: !1168)
!1240 = !DILocation(line: 96, column: 25, scope: !1168)
!1241 = !DILocation(line: 96, column: 44, scope: !1168)
!1242 = !DILocation(line: 92, column: 46, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1232, file: !999, line: 91, column: 47)
!1244 = !{!1245, !1195, i64 8}
!1245 = !{!"_ZTS18halide_dimension_t", !1195, i64 0, !1195, i64 4, !1195, i64 8, !1195, i64 12}
!1246 = !DILocation(line: 92, column: 34, scope: !1243)
!1247 = !DILocation(line: 92, column: 68, scope: !1243)
!1248 = !{!1245, !1195, i64 0}
!1249 = !DILocation(line: 92, column: 86, scope: !1243)
!1250 = !DILocation(line: 92, column: 72, scope: !1243)
!1251 = !DILocation(line: 92, column: 55, scope: !1243)
!1252 = !DILocation(line: 92, column: 53, scope: !1243)
!1253 = !DILocation(line: 92, column: 21, scope: !1243)
!1254 = !DILocation(line: 91, column: 43, scope: !1232)
!1255 = distinct !{!1255, !1235, !1256, !1042}
!1256 = !DILocation(line: 93, column: 5, scope: !1165)
!1257 = !DILocation(line: 0, scope: !1208, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 97, column: 19, scope: !1168)
!1259 = !DILocation(line: 0, scope: !1208, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 97, column: 40, scope: !1168)
!1261 = !DILocation(line: 482, column: 17, scope: !1208, inlinedAt: !1260)
!1262 = !DILocation(line: 482, column: 22, scope: !1208, inlinedAt: !1260)
!1263 = !DILocation(line: 482, column: 27, scope: !1208, inlinedAt: !1260)
!1264 = !DILocation(line: 97, column: 27, scope: !1168)
!1265 = !DILocation(line: 97, column: 48, scope: !1168)
!1266 = !DILocation(line: 100, column: 21, scope: !1167)
!1267 = !DILocation(line: 101, column: 9, scope: !1167)
!1268 = !DILocation(line: 104, column: 22, scope: !1171)
!1269 = !DILocation(line: 104, column: 9, scope: !1152)
!1270 = !DILocation(line: 0, scope: !1173)
!1271 = !DILocation(line: 115, column: 5, scope: !1173)
!1272 = !DILocation(line: 115, column: 23, scope: !1176)
!1273 = !DILocation(line: 107, column: 21, scope: !1170)
!1274 = !DILocation(line: 108, column: 9, scope: !1170)
!1275 = !DILocation(line: 144, column: 14, scope: !1152)
!1276 = !DILocation(line: 144, column: 28, scope: !1152)
!1277 = !DILocation(line: 144, column: 25, scope: !1152)
!1278 = !DILocation(line: 144, column: 50, scope: !1152)
!1279 = !DILocation(line: 145, column: 28, scope: !1152)
!1280 = !DILocation(line: 117, column: 59, scope: !1175)
!1281 = !DILocation(line: 117, column: 47, scope: !1175)
!1282 = !DILocation(line: 0, scope: !1208, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 117, column: 78, scope: !1175)
!1284 = !DILocation(line: 117, column: 66, scope: !1175)
!1285 = !DILocation(line: 0, scope: !1175)
!1286 = !DILocation(line: 118, column: 59, scope: !1175)
!1287 = !DILocation(line: 118, column: 47, scope: !1175)
!1288 = !DILocation(line: 0, scope: !1208, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 118, column: 78, scope: !1175)
!1290 = !DILocation(line: 118, column: 66, scope: !1175)
!1291 = !DILocation(line: 121, column: 33, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !999, line: 121, column: 9)
!1293 = distinct !DILexicalBlock(scope: !1175, file: !999, line: 121, column: 9)
!1294 = !DILocation(line: 121, column: 9, scope: !1293)
!1295 = !DILocation(line: 128, column: 27, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1180, file: !999, line: 128, column: 9)
!1297 = !DILocation(line: 124, column: 36, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !999, line: 124, column: 17)
!1299 = distinct !DILexicalBlock(scope: !1292, file: !999, line: 121, column: 48)
!1300 = !DILocation(line: 124, column: 34, scope: !1298)
!1301 = !DILocation(line: 124, column: 63, scope: !1298)
!1302 = !DILocation(line: 121, column: 44, scope: !1292)
!1303 = distinct !{!1303, !1294, !1304, !1042}
!1304 = !DILocation(line: 127, column: 9, scope: !1293)
!1305 = !DILocation(line: 0, scope: !1293)
!1306 = !DILocation(line: 0, scope: !1180)
!1307 = !DILocation(line: 128, column: 9, scope: !1180)
!1308 = !DILocation(line: 133, column: 40, scope: !1175)
!1309 = !{!1245, !1195, i64 4}
!1310 = !DILocation(line: 133, column: 28, scope: !1175)
!1311 = !DILocation(line: 133, column: 9, scope: !1175)
!1312 = !DILocation(line: 133, column: 26, scope: !1175)
!1313 = !DILocation(line: 135, column: 9, scope: !1175)
!1314 = !DILocation(line: 135, column: 36, scope: !1175)
!1315 = !DILocation(line: 136, column: 9, scope: !1175)
!1316 = !DILocation(line: 136, column: 36, scope: !1175)
!1317 = !DILocation(line: 115, column: 43, scope: !1176)
!1318 = distinct !{!1318, !1271, !1319, !1042}
!1319 = !DILocation(line: 137, column: 5, scope: !1173)
!1320 = !DILocation(line: 129, column: 38, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1296, file: !999, line: 128, column: 42)
!1322 = !DILocation(line: 129, column: 27, scope: !1321)
!1323 = !DILocation(line: 129, column: 13, scope: !1321)
!1324 = !DILocation(line: 129, column: 25, scope: !1321)
!1325 = !DILocation(line: 130, column: 37, scope: !1321)
!1326 = !DILocation(line: 130, column: 13, scope: !1321)
!1327 = !DILocation(line: 130, column: 35, scope: !1321)
!1328 = !DILocation(line: 131, column: 37, scope: !1321)
!1329 = !DILocation(line: 131, column: 13, scope: !1321)
!1330 = !DILocation(line: 131, column: 35, scope: !1321)
!1331 = distinct !{!1331, !1307, !1332, !1042}
!1332 = !DILocation(line: 132, column: 9, scope: !1180)
!1333 = !DILocation(line: 145, column: 25, scope: !1152)
!1334 = !DILocation(line: 144, column: 5, scope: !1152)
!1335 = !DILocation(line: 147, column: 25, scope: !1183)
!1336 = !DILocation(line: 147, column: 22, scope: !1183)
!1337 = !DILocation(line: 0, scope: !1182)
!1338 = !DILocation(line: 152, column: 31, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !999, line: 151, column: 49)
!1340 = distinct !DILexicalBlock(scope: !1182, file: !999, line: 151, column: 9)
!1341 = !DILocation(line: 152, column: 29, scope: !1339)
!1342 = !DILocation(line: 153, column: 41, scope: !1339)
!1343 = !DILocation(line: 153, column: 39, scope: !1339)
!1344 = !DILocation(line: 154, column: 41, scope: !1339)
!1345 = !DILocation(line: 154, column: 39, scope: !1339)
!1346 = !DILocation(line: 156, column: 37, scope: !1183)
!1347 = !DILocation(line: 157, column: 47, scope: !1183)
!1348 = !DILocation(line: 158, column: 47, scope: !1183)
!1349 = distinct !{!1349, !1334, !1350, !1042}
!1350 = !DILocation(line: 159, column: 5, scope: !1152)
!1351 = !DILocation(line: 160, column: 12, scope: !1152)
!1352 = !{i64 0, i64 8, !1032, i64 8, i64 8, !1032, i64 16, i64 8, !1032, i64 24, i64 128, !1134, i64 152, i64 128, !1134, i64 280, i64 128, !1134, i64 408, i64 8, !1032}
!1353 = !DILocation(line: 160, column: 5, scope: !1152)
!1354 = !DILocation(line: 161, column: 1, scope: !1152)
!1355 = distinct !DISubprogram(name: "make_host_to_device_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t", scope: !3, file: !999, line: 163, type: !1356, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1358)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1004, !1155}
!1358 = !{!1359}
!1359 = !DILocalVariable(name: "buf", arg: 1, scope: !1355, file: !999, line: 163, type: !1155)
!1360 = !DILocation(line: 0, scope: !1355)
!1361 = !DILocation(line: 164, column: 12, scope: !1355)
!1362 = !DILocation(line: 164, column: 5, scope: !1355)
!1363 = distinct !DISubprogram(name: "make_device_to_host_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t", scope: !3, file: !999, line: 167, type: !1356, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1364)
!1364 = !{!1365}
!1365 = !DILocalVariable(name: "buf", arg: 1, scope: !1363, file: !999, line: 167, type: !1155)
!1366 = !DILocation(line: 0, scope: !1363)
!1367 = !DILocation(line: 168, column: 12, scope: !1363)
!1368 = !DILocation(line: 168, column: 5, scope: !1363)
!1369 = !DILocation(line: 0, scope: !477)
!1370 = !DILocation(line: 45, column: 30, scope: !477)
!1371 = !DILocation(line: 45, column: 66, scope: !477)
!1372 = !DILocation(line: 45, column: 20, scope: !477)
!1373 = !DILocation(line: 46, column: 28, scope: !477)
!1374 = !DILocation(line: 46, column: 12, scope: !477)
!1375 = !DILocation(line: 47, column: 5, scope: !477)
!1376 = !DISubprogram(name: "objc_getClass", scope: !476, file: !476, line: 7, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!99, !335}
!1379 = !DISubprogram(name: "sel_getUid", scope: !476, file: !476, line: 8, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1380 = !DILocation(line: 0, scope: !489)
!1381 = !DILocation(line: 53, column: 21, scope: !489)
!1382 = !DILocation(line: 53, column: 5, scope: !489)
!1383 = !DILocation(line: 54, column: 1, scope: !489)
!1384 = !DILocation(line: 0, scope: !496)
!1385 = !DILocation(line: 59, column: 20, scope: !496)
!1386 = !DILocation(line: 59, column: 5, scope: !496)
!1387 = !DILocation(line: 60, column: 1, scope: !496)
!1388 = !DILocation(line: 0, scope: !501)
!1389 = !DILocation(line: 65, column: 20, scope: !501)
!1390 = !DILocation(line: 65, column: 5, scope: !501)
!1391 = !DILocation(line: 66, column: 1, scope: !501)
!1392 = !DILocation(line: 0, scope: !506)
!1393 = !DILocation(line: 72, column: 36, scope: !506)
!1394 = !DILocation(line: 72, column: 63, scope: !506)
!1395 = !DILocation(line: 72, column: 25, scope: !506)
!1396 = !DILocation(line: 74, column: 33, scope: !506)
!1397 = !DILocation(line: 74, column: 12, scope: !506)
!1398 = !DILocation(line: 74, column: 5, scope: !506)
!1399 = distinct !DISubprogram(name: "ns_log_utf8_string", linkageName: "_ZN6Halide7Runtime8Internal18ns_log_utf8_stringEPKc", scope: !3, file: !476, line: 80, type: !1400, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1402)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !335}
!1402 = !{!1403, !1404, !1405}
!1403 = !DILocalVariable(name: "string", arg: 1, scope: !1399, file: !476, line: 80, type: !335)
!1404 = !DILocalVariable(name: "format_string", scope: !1399, file: !476, line: 81, type: !480)
!1405 = !DILocalVariable(name: "ns_string", scope: !1399, file: !476, line: 82, type: !480)
!1406 = !DILocation(line: 0, scope: !1399)
!1407 = !DILocation(line: 81, column: 29, scope: !1399)
!1408 = !DILocation(line: 82, column: 58, scope: !1399)
!1409 = !DILocation(line: 82, column: 25, scope: !1399)
!1410 = !DILocation(line: 83, column: 5, scope: !1399)
!1411 = !DILocation(line: 84, column: 5, scope: !1399)
!1412 = !DILocation(line: 85, column: 5, scope: !1399)
!1413 = !DILocation(line: 86, column: 1, scope: !1399)
!1414 = !DISubprogram(name: "strlen", scope: !476, file: !476, line: 78, type: !1415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!119, !335}
!1417 = !DISubprogram(name: "NSLog", scope: !476, file: !476, line: 35, type: !1418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !99, null}
!1420 = distinct !DISubprogram(name: "ns_log_object", linkageName: "_ZN6Halide7Runtime8Internal13ns_log_objectEPv", scope: !3, file: !476, line: 88, type: !490, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1421)
!1421 = !{!1422, !1423}
!1422 = !DILocalVariable(name: "obj", arg: 1, scope: !1420, file: !476, line: 88, type: !480)
!1423 = !DILocalVariable(name: "format_string", scope: !1420, file: !476, line: 89, type: !480)
!1424 = !DILocation(line: 0, scope: !1420)
!1425 = !DILocation(line: 89, column: 29, scope: !1420)
!1426 = !DILocation(line: 90, column: 5, scope: !1420)
!1427 = !DILocation(line: 91, column: 5, scope: !1420)
!1428 = !DILocation(line: 92, column: 1, scope: !1420)
!1429 = !DILocation(line: 0, scope: !520)
!1430 = !DILocation(line: 38, column: 22, scope: !520)
!1431 = !DILocation(line: 38, column: 30, scope: !520)
!1432 = !DILocation(line: 38, column: 12, scope: !520)
!1433 = !DILocation(line: 38, column: 5, scope: !520)
!1434 = !DILocation(line: 0, scope: !533)
!1435 = !DILocation(line: 45, column: 43, scope: !533)
!1436 = !DILocation(line: 45, column: 51, scope: !533)
!1437 = !DILocation(line: 45, column: 33, scope: !533)
!1438 = !DILocation(line: 45, column: 5, scope: !533)
!1439 = !DILocation(line: 0, scope: !543)
!1440 = !DILocation(line: 49, column: 25, scope: !543)
!1441 = !DILocation(line: 53, column: 74, scope: !543)
!1442 = !DILocation(line: 53, column: 81, scope: !543)
!1443 = !DILocation(line: 53, column: 64, scope: !543)
!1444 = !DILocation(line: 57, column: 16, scope: !543)
!1445 = !DILocation(line: 57, column: 32, scope: !543)
!1446 = !DILocation(line: 57, column: 5, scope: !543)
!1447 = !DILocation(line: 59, column: 5, scope: !543)
!1448 = !DILocation(line: 60, column: 5, scope: !543)
!1449 = !DILocation(line: 0, scope: !562)
!1450 = !DILocation(line: 66, column: 15, scope: !562)
!1451 = !DILocation(line: 66, column: 31, scope: !562)
!1452 = !DILocation(line: 66, column: 5, scope: !562)
!1453 = !DILocation(line: 67, column: 1, scope: !562)
!1454 = !DILocation(line: 0, scope: !573)
!1455 = !DILocation(line: 72, column: 22, scope: !573)
!1456 = !DILocation(line: 72, column: 30, scope: !573)
!1457 = !DILocation(line: 72, column: 12, scope: !573)
!1458 = !DILocation(line: 72, column: 5, scope: !573)
!1459 = !DILocation(line: 0, scope: !580)
!1460 = !DILocation(line: 78, column: 53, scope: !580)
!1461 = !DILocation(line: 78, column: 61, scope: !580)
!1462 = !DILocation(line: 78, column: 43, scope: !580)
!1463 = !DILocation(line: 78, column: 5, scope: !580)
!1464 = !DILocation(line: 0, scope: !593)
!1465 = !DILocation(line: 84, column: 50, scope: !593)
!1466 = !DILocation(line: 84, column: 58, scope: !593)
!1467 = !DILocation(line: 84, column: 40, scope: !593)
!1468 = !DILocation(line: 84, column: 5, scope: !593)
!1469 = !DILocation(line: 0, scope: !605)
!1470 = !DILocation(line: 88, column: 5, scope: !605)
!1471 = !DILocation(line: 92, column: 52, scope: !605)
!1472 = !DILocation(line: 92, column: 60, scope: !605)
!1473 = !DILocation(line: 93, column: 52, scope: !605)
!1474 = !DILocation(line: 92, column: 42, scope: !605)
!1475 = !DILocation(line: 94, column: 16, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !605, file: !6, line: 94, column: 9)
!1477 = !DILocation(line: 94, column: 9, scope: !605)
!1478 = !DILocation(line: 95, column: 23, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1476, file: !6, line: 94, column: 28)
!1480 = !{!1191, !1191, i64 0}
!1481 = !DILocation(line: 95, column: 9, scope: !1479)
!1482 = !DILocation(line: 96, column: 5, scope: !1479)
!1483 = !DILocation(line: 99, column: 1, scope: !605)
!1484 = !DILocation(line: 98, column: 5, scope: !605)
!1485 = !DILocation(line: 0, scope: !623)
!1486 = !DILocation(line: 104, column: 22, scope: !623)
!1487 = !DILocation(line: 104, column: 38, scope: !623)
!1488 = !DILocation(line: 104, column: 12, scope: !623)
!1489 = !DILocation(line: 104, column: 5, scope: !623)
!1490 = !DILocation(line: 0, scope: !633)
!1491 = !DILocation(line: 110, column: 15, scope: !633)
!1492 = !DILocation(line: 110, column: 24, scope: !633)
!1493 = !DILocation(line: 110, column: 64, scope: !633)
!1494 = !DILocation(line: 110, column: 5, scope: !633)
!1495 = !DILocation(line: 111, column: 1, scope: !633)
!1496 = !DILocation(line: 0, scope: !641)
!1497 = !DILocation(line: 116, column: 15, scope: !641)
!1498 = !DILocation(line: 116, column: 24, scope: !641)
!1499 = !DILocation(line: 116, column: 5, scope: !641)
!1500 = !DILocation(line: 117, column: 1, scope: !641)
!1501 = !DILocation(line: 0, scope: !651)
!1502 = !DILocation(line: 124, column: 56, scope: !651)
!1503 = !DILocation(line: 127, column: 15, scope: !651)
!1504 = !DILocation(line: 127, column: 23, scope: !651)
!1505 = !DILocation(line: 127, column: 54, scope: !651)
!1506 = !{i64 0, i64 8, !1507, i64 8, i64 8, !1507}
!1507 = !{!1508, !1508, i64 0}
!1508 = !{!"long", !1034, i64 0}
!1509 = !DILocation(line: 127, column: 5, scope: !651)
!1510 = !DILocation(line: 128, column: 1, scope: !651)
!1511 = !DILocation(line: 0, scope: !666)
!1512 = !DILocation(line: 133, column: 15, scope: !666)
!1513 = !DILocation(line: 133, column: 24, scope: !666)
!1514 = !DILocation(line: 133, column: 5, scope: !666)
!1515 = !DILocation(line: 134, column: 1, scope: !666)
!1516 = !DILocation(line: 0, scope: !677)
!1517 = !DILocation(line: 139, column: 33, scope: !677)
!1518 = !DILocation(line: 140, column: 20, scope: !686)
!1519 = !DILocation(line: 140, column: 28, scope: !686)
!1520 = !DILocation(line: 140, column: 9, scope: !686)
!1521 = !DILocation(line: 140, column: 9, scope: !677)
!1522 = !DILocation(line: 0, scope: !685)
!1523 = !DILocation(line: 143, column: 28, scope: !685)
!1524 = !DILocation(line: 144, column: 29, scope: !685)
!1525 = !DILocation(line: 147, column: 1, scope: !677)
!1526 = !DILocation(line: 0, scope: !696)
!1527 = !DILocation(line: 156, column: 15, scope: !696)
!1528 = !DILocation(line: 156, column: 24, scope: !696)
!1529 = !DILocation(line: 157, column: 15, scope: !696)
!1530 = !DILocation(line: 157, column: 34, scope: !696)
!1531 = !DILocation(line: 156, column: 5, scope: !696)
!1532 = !DILocation(line: 158, column: 1, scope: !696)
!1533 = !DILocation(line: 0, scope: !711)
!1534 = !DILocation(line: 163, column: 15, scope: !711)
!1535 = !DILocation(line: 163, column: 24, scope: !711)
!1536 = !DILocation(line: 163, column: 5, scope: !711)
!1537 = !DILocation(line: 164, column: 1, scope: !711)
!1538 = !DILocation(line: 0, scope: !718)
!1539 = !DILocation(line: 169, column: 30, scope: !718)
!1540 = !DILocation(line: 170, column: 23, scope: !718)
!1541 = !DILocation(line: 170, column: 32, scope: !718)
!1542 = !DILocation(line: 170, column: 12, scope: !718)
!1543 = !DILocation(line: 170, column: 5, scope: !718)
!1544 = !DILocation(line: 0, scope: !726)
!1545 = !DILocation(line: 174, column: 5, scope: !726)
!1546 = !DILocation(line: 175, column: 26, scope: !726)
!1547 = !DILocation(line: 180, column: 33, scope: !726)
!1548 = !DILocation(line: 180, column: 69, scope: !726)
!1549 = !DILocation(line: 180, column: 23, scope: !726)
!1550 = !DILocation(line: 181, column: 34, scope: !726)
!1551 = !DILocation(line: 181, column: 15, scope: !726)
!1552 = !DILocation(line: 184, column: 25, scope: !726)
!1553 = !DILocation(line: 184, column: 5, scope: !726)
!1554 = !DILocation(line: 188, column: 38, scope: !726)
!1555 = !DILocation(line: 188, column: 46, scope: !726)
!1556 = !DILocation(line: 188, column: 27, scope: !726)
!1557 = !DILocation(line: 191, column: 5, scope: !726)
!1558 = !DILocation(line: 192, column: 5, scope: !726)
!1559 = !DILocation(line: 194, column: 16, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !726, file: !6, line: 194, column: 9)
!1561 = !DILocation(line: 194, column: 9, scope: !726)
!1562 = !DILocation(line: 195, column: 23, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1560, file: !6, line: 194, column: 28)
!1564 = !DILocation(line: 195, column: 9, scope: !1563)
!1565 = !DILocation(line: 196, column: 5, scope: !1563)
!1566 = !DILocation(line: 199, column: 1, scope: !726)
!1567 = !DILocation(line: 198, column: 5, scope: !726)
!1568 = !DILocation(line: 0, scope: !749)
!1569 = !DILocation(line: 202, column: 24, scope: !749)
!1570 = !DILocation(line: 205, column: 38, scope: !749)
!1571 = !DILocation(line: 205, column: 47, scope: !749)
!1572 = !DILocation(line: 205, column: 28, scope: !749)
!1573 = !DILocation(line: 206, column: 5, scope: !749)
!1574 = !DILocation(line: 207, column: 5, scope: !749)
!1575 = !DILocation(line: 0, scope: !763)
!1576 = !DILocation(line: 214, column: 15, scope: !763)
!1577 = !DILocation(line: 214, column: 24, scope: !763)
!1578 = !DILocation(line: 215, column: 45, scope: !763)
!1579 = !DILocation(line: 214, column: 5, scope: !763)
!1580 = !DILocation(line: 216, column: 1, scope: !763)
!1581 = !DILocation(line: 0, scope: !776)
!1582 = !DILocation(line: 222, column: 15, scope: !776)
!1583 = !DILocation(line: 222, column: 24, scope: !776)
!1584 = !DILocation(line: 223, column: 29, scope: !776)
!1585 = !DILocation(line: 223, column: 37, scope: !776)
!1586 = !DILocation(line: 222, column: 5, scope: !776)
!1587 = !DILocation(line: 224, column: 1, scope: !776)
!1588 = !DILocation(line: 0, scope: !789)
!1589 = !DILocation(line: 230, column: 15, scope: !789)
!1590 = !DILocation(line: 230, column: 24, scope: !789)
!1591 = !DILocation(line: 231, column: 15, scope: !789)
!1592 = !DILocation(line: 231, column: 23, scope: !789)
!1593 = !DILocation(line: 230, column: 5, scope: !789)
!1594 = !DILocation(line: 232, column: 1, scope: !789)
!1595 = !DILocation(line: 0, scope: !801)
!1596 = !DILocation(line: 237, column: 15, scope: !801)
!1597 = !DILocation(line: 237, column: 23, scope: !801)
!1598 = !DILocation(line: 237, column: 5, scope: !801)
!1599 = !DILocation(line: 238, column: 1, scope: !801)
!1600 = !DILocation(line: 0, scope: !808)
!1601 = !DILocation(line: 243, column: 15, scope: !808)
!1602 = !DILocation(line: 243, column: 23, scope: !808)
!1603 = !DILocation(line: 243, column: 5, scope: !808)
!1604 = !DILocation(line: 244, column: 1, scope: !808)
!1605 = !DILocation(line: 0, scope: !813)
!1606 = !DILocation(line: 249, column: 30, scope: !813)
!1607 = !DILocation(line: 249, column: 38, scope: !813)
!1608 = !DILocation(line: 249, column: 20, scope: !813)
!1609 = !DILocation(line: 249, column: 5, scope: !813)
!1610 = !DILocation(line: 0, scope: !823)
!1611 = !DILocation(line: 255, column: 27, scope: !823)
!1612 = !DILocation(line: 255, column: 12, scope: !823)
!1613 = !DILocation(line: 255, column: 5, scope: !823)
!1614 = !DILocation(line: 263, column: 40, scope: !830)
!1615 = !DILocation(line: 263, column: 26, scope: !830)
!1616 = !DILocation(line: 0, scope: !830)
!1617 = !DILocation(line: 264, column: 16, scope: !837)
!1618 = !DILocation(line: 264, column: 9, scope: !830)
!1619 = !DILocation(line: 268, column: 24, scope: !836)
!1620 = !DILocation(line: 0, scope: !836)
!1621 = !DILocation(line: 269, column: 20, scope: !840)
!1622 = !DILocation(line: 269, column: 13, scope: !836)
!1623 = !DILocation(line: 271, column: 50, scope: !839)
!1624 = !DILocation(line: 0, scope: !839)
!1625 = !DILocation(line: 272, column: 40, scope: !839)
!1626 = !DILocation(line: 273, column: 25, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !839, file: !6, line: 273, column: 17)
!1628 = !DILocation(line: 273, column: 17, scope: !839)
!1629 = !DILocation(line: 274, column: 40, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1627, file: !6, line: 273, column: 37)
!1631 = !DILocation(line: 274, column: 26, scope: !1630)
!1632 = !DILocation(line: 275, column: 13, scope: !1630)
!1633 = !DILocation(line: 278, column: 5, scope: !830)
!1634 = !DISubprogram(name: "MTLCreateSystemDefaultDevice", scope: !6, file: !6, line: 13, type: !1635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!99}
!1637 = !DISubprogram(name: "dlsym", scope: !6, file: !6, line: 15, type: !1638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!99, !99, !335}
!1640 = distinct !DISubprogram(name: "halide_metal_acquire_context", scope: !6, file: !6, line: 341, type: !1641, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1645)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!57, !99, !1643, !1644, !87}
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!1645 = !{!1646, !1647, !1648, !1649}
!1646 = !DILocalVariable(name: "user_context", arg: 1, scope: !1640, file: !6, line: 341, type: !99)
!1647 = !DILocalVariable(name: "device_ret", arg: 2, scope: !1640, file: !6, line: 341, type: !1643)
!1648 = !DILocalVariable(name: "queue_ret", arg: 3, scope: !1640, file: !6, line: 342, type: !1644)
!1649 = !DILocalVariable(name: "create", arg: 4, scope: !1640, file: !6, line: 342, type: !87)
!1650 = !DILocation(line: 0, scope: !1640)
!1651 = !DILocation(line: 344, column: 5, scope: !1640)
!1652 = !DILocation(line: 344, column: 12, scope: !1640)
!1653 = distinct !{!1653, !1651, !1654, !1042}
!1654 = !DILocation(line: 345, column: 5, scope: !1640)
!1655 = !DILocation(line: 348, column: 5, scope: !1640)
!1656 = !DILocation(line: 351, column: 9, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1640, file: !6, line: 351, column: 9)
!1658 = !DILocation(line: 351, column: 16, scope: !1657)
!1659 = !DILocation(line: 351, column: 27, scope: !1657)
!1660 = !DILocation(line: 0, scope: !1096, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 352, column: 9, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1657, file: !6, line: 351, column: 38)
!1663 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !1661)
!1664 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !1661)
!1665 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !1661)
!1666 = !DILocation(line: 0, scope: !1113, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 352, column: 29, scope: !1662)
!1668 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !1667)
!1669 = !DILocation(line: 0, scope: !1122, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 352, column: 9, scope: !1662)
!1671 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !1670)
!1672 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !1670)
!1673 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !1661)
!1674 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !1661)
!1675 = !DILocation(line: 0, scope: !1136, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !1670)
!1677 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !1676)
!1678 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !1676)
!1679 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !1676)
!1680 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !1670)
!1681 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !1670)
!1682 = !DILocation(line: 353, column: 18, scope: !1662)
!1683 = !DILocation(line: 353, column: 16, scope: !1662)
!1684 = !DILocation(line: 354, column: 20, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1662, file: !6, line: 354, column: 13)
!1686 = !DILocation(line: 0, scope: !1662)
!1687 = !DILocation(line: 354, column: 13, scope: !1662)
!1688 = !DILocalVariable(name: "this", arg: 1, scope: !1689, type: !1693, flags: DIFlagArtificial | DIFlagObjectPointer)
!1689 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !844, file: !395, line: 37, type: !853, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !852, retainedNodes: !1690)
!1690 = !{!1688, !1691, !1692}
!1691 = !DILocalVariable(name: "ctx", arg: 2, scope: !1689, file: !395, line: 37, type: !99)
!1692 = !DILocalVariable(name: "mem", arg: 3, scope: !1689, file: !395, line: 37, type: !400)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!1694 = !DILocation(line: 0, scope: !1689, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 355, column: 13, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1685, file: !6, line: 354, column: 32)
!1697 = !DILocation(line: 48, column: 13, scope: !1698, inlinedAt: !1695)
!1698 = distinct !DILexicalBlock(scope: !1689, file: !395, line: 38, column: 54)
!1699 = !DILocalVariable(name: "this", arg: 1, scope: !1700, type: !1693, flags: DIFlagArtificial | DIFlagObjectPointer)
!1700 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !844, file: !395, line: 57, type: !857, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !856, retainedNodes: !1701)
!1701 = !{!1699, !1702}
!1702 = !DILocalVariable(name: "arg", arg: 2, scope: !1700, file: !395, line: 57, type: !335)
!1703 = !DILocation(line: 0, scope: !1700, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 355, column: 33, scope: !1696)
!1705 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !1704)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !395, line: 61, column: 16)
!1707 = distinct !DILexicalBlock(scope: !1700, file: !395, line: 59, column: 13)
!1708 = !DILocalVariable(name: "this", arg: 1, scope: !1709, type: !1693, flags: DIFlagArtificial | DIFlagObjectPointer)
!1709 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !844, file: !395, line: 166, type: !894, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !907, retainedNodes: !1710)
!1710 = !{!1708}
!1711 = !DILocation(line: 0, scope: !1709, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 355, column: 13, scope: !1696)
!1713 = !DILocation(line: 168, column: 13, scope: !1714, inlinedAt: !1712)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !395, line: 167, column: 19)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !395, line: 167, column: 13)
!1716 = distinct !DILexicalBlock(scope: !1709, file: !395, line: 166, column: 16)
!1717 = !DILocation(line: 169, column: 9, scope: !1714, inlinedAt: !1712)
!1718 = !DILocation(line: 49, column: 23, scope: !1719, inlinedAt: !1695)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !395, line: 48, column: 18)
!1720 = distinct !DILexicalBlock(scope: !1698, file: !395, line: 48, column: 13)
!1721 = !DILocation(line: 50, column: 18, scope: !1719, inlinedAt: !1695)
!1722 = !DILocalVariable(name: "this", arg: 1, scope: !1723, type: !1693, flags: DIFlagArtificial | DIFlagObjectPointer)
!1723 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !844, file: !395, line: 162, type: !894, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !906, retainedNodes: !1724)
!1724 = !{!1722}
!1725 = !DILocation(line: 0, scope: !1723, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 170, column: 13, scope: !1727, inlinedAt: !1712)
!1727 = distinct !DILexicalBlock(scope: !1715, file: !395, line: 169, column: 16)
!1728 = !DILocation(line: 163, column: 81, scope: !1723, inlinedAt: !1726)
!1729 = !DILocation(line: 163, column: 87, scope: !1723, inlinedAt: !1726)
!1730 = !DILocation(line: 163, column: 15, scope: !1723, inlinedAt: !1726)
!1731 = !DILocation(line: 172, column: 17, scope: !1732, inlinedAt: !1712)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !395, line: 171, column: 39)
!1733 = distinct !DILexicalBlock(scope: !1727, file: !395, line: 171, column: 17)
!1734 = !DILocation(line: 181, column: 13, scope: !1735, inlinedAt: !1712)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !395, line: 180, column: 40)
!1736 = distinct !DILexicalBlock(scope: !1716, file: !395, line: 180, column: 13)
!1737 = !DILocation(line: 356, column: 13, scope: !1696)
!1738 = !DILocation(line: 357, column: 13, scope: !1696)
!1739 = !DILocation(line: 0, scope: !1096, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 359, column: 9, scope: !1662)
!1741 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !1740)
!1742 = !DILocation(line: 0, scope: !1113, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 359, column: 29, scope: !1662)
!1744 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !1743)
!1745 = !DILocation(line: 0, scope: !1122, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 359, column: 9, scope: !1662)
!1747 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !1746)
!1748 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !1746)
!1749 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !1740)
!1750 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !1740)
!1751 = !DILocation(line: 0, scope: !1136, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !1746)
!1753 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !1752)
!1754 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !1752)
!1755 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !1752)
!1756 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !1746)
!1757 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !1746)
!1758 = !DILocation(line: 360, column: 35, scope: !1662)
!1759 = !DILocation(line: 360, column: 17, scope: !1662)
!1760 = !DILocation(line: 360, column: 15, scope: !1662)
!1761 = !DILocation(line: 361, column: 19, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1662, file: !6, line: 361, column: 13)
!1763 = !DILocation(line: 361, column: 13, scope: !1662)
!1764 = !DILocation(line: 372, column: 5, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !6, line: 372, column: 5)
!1766 = distinct !DILexicalBlock(scope: !1640, file: !6, line: 372, column: 5)
!1767 = !DILocation(line: 0, scope: !1689, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 362, column: 13, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1762, file: !6, line: 361, column: 31)
!1770 = !DILocation(line: 44, column: 27, scope: !1771, inlinedAt: !1768)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !395, line: 43, column: 16)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !395, line: 41, column: 20)
!1773 = distinct !DILexicalBlock(scope: !1698, file: !395, line: 39, column: 13)
!1774 = !DILocation(line: 48, column: 13, scope: !1720, inlinedAt: !1768)
!1775 = !DILocation(line: 48, column: 13, scope: !1698, inlinedAt: !1768)
!1776 = !DILocation(line: 0, scope: !1700, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 362, column: 33, scope: !1769)
!1778 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !1777)
!1779 = !DILocation(line: 0, scope: !1709, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 362, column: 13, scope: !1769)
!1781 = !DILocation(line: 168, column: 13, scope: !1714, inlinedAt: !1780)
!1782 = !DILocation(line: 169, column: 9, scope: !1714, inlinedAt: !1780)
!1783 = !DILocation(line: 49, column: 23, scope: !1719, inlinedAt: !1768)
!1784 = !DILocation(line: 50, column: 18, scope: !1719, inlinedAt: !1768)
!1785 = !DILocation(line: 0, scope: !1723, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 170, column: 13, scope: !1727, inlinedAt: !1780)
!1787 = !DILocation(line: 163, column: 81, scope: !1723, inlinedAt: !1786)
!1788 = !DILocation(line: 163, column: 87, scope: !1723, inlinedAt: !1786)
!1789 = !DILocation(line: 163, column: 15, scope: !1723, inlinedAt: !1786)
!1790 = !DILocation(line: 172, column: 17, scope: !1732, inlinedAt: !1780)
!1791 = !DILocation(line: 181, column: 13, scope: !1735, inlinedAt: !1780)
!1792 = !DILocation(line: 363, column: 31, scope: !1769)
!1793 = !DILocation(line: 363, column: 13, scope: !1769)
!1794 = !DILocation(line: 364, column: 20, scope: !1769)
!1795 = !DILocation(line: 365, column: 13, scope: !1769)
!1796 = !DILocation(line: 366, column: 13, scope: !1769)
!1797 = !DILocation(line: 372, column: 5, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1765, file: !6, line: 372, column: 5)
!1799 = !DILocation(line: 374, column: 19, scope: !1640)
!1800 = !DILocation(line: 374, column: 17, scope: !1640)
!1801 = !DILocation(line: 375, column: 18, scope: !1640)
!1802 = !DILocation(line: 375, column: 16, scope: !1640)
!1803 = !DILocation(line: 376, column: 5, scope: !1640)
!1804 = !DILocation(line: 377, column: 1, scope: !1640)
!1805 = !DISubprogram(name: "halide_print", scope: !42, file: !42, line: 97, type: !1806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !99, !335}
!1808 = !DISubprogram(name: "abort", scope: !47, file: !47, line: 108, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1809 = !DISubprogram(name: "halide_start_clock", scope: !47, file: !47, line: 135, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!1810 = distinct !DISubprogram(name: "halide_metal_release_context", scope: !6, file: !6, line: 379, type: !315, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1811)
!1811 = !{!1812}
!1812 = !DILocalVariable(name: "user_context", arg: 1, scope: !1810, file: !6, line: 379, type: !99)
!1813 = !DILocation(line: 0, scope: !1810)
!1814 = !DILocation(line: 380, column: 5, scope: !1810)
!1815 = !DILocation(line: 381, column: 5, scope: !1810)
!1816 = distinct !DISubprogram(name: "save", linkageName: "_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder4saveEPvb", scope: !947, file: !6, line: 412, type: !955, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !954, retainedNodes: !1817)
!1817 = !{!1818, !1820, !1821}
!1818 = !DILocalVariable(name: "this", arg: 1, scope: !1816, type: !1819, flags: DIFlagArtificial | DIFlagObjectPointer)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!1820 = !DILocalVariable(name: "user_context_arg", arg: 2, scope: !1816, file: !6, line: 412, type: !99)
!1821 = !DILocalVariable(name: "create", arg: 3, scope: !1816, file: !6, line: 412, type: !87)
!1822 = !DILocation(line: 0, scope: !1816)
!1823 = !DILocation(line: 413, column: 5, scope: !1816)
!1824 = !DILocation(line: 413, column: 18, scope: !1816)
!1825 = !{!1826, !1191, i64 8}
!1826 = !{!"_ZTSN6Halide7Runtime8Internal5Metal18MetalContextHolderE", !1191, i64 0, !1191, i64 8, !1191, i64 16, !1191, i64 24, !1195, i64 32}
!1827 = !DILocation(line: 414, column: 12, scope: !1816)
!1828 = !DILocation(line: 414, column: 5, scope: !1816)
!1829 = !DILocation(line: 414, column: 10, scope: !1816)
!1830 = !{!1826, !1191, i64 0}
!1831 = !DILocation(line: 415, column: 42, scope: !1816)
!1832 = !DILocation(line: 415, column: 57, scope: !1816)
!1833 = !DILocation(line: 415, column: 66, scope: !1816)
!1834 = !DILocation(line: 415, column: 13, scope: !1816)
!1835 = !DILocation(line: 415, column: 5, scope: !1816)
!1836 = !DILocation(line: 415, column: 11, scope: !1816)
!1837 = !{!1826, !1195, i64 32}
!1838 = !DILocation(line: 416, column: 1, scope: !1816)
!1839 = distinct !DISubprogram(name: "restore", linkageName: "_ZN6Halide7Runtime8Internal5Metal18MetalContextHolder7restoreEv", scope: !947, file: !6, line: 418, type: !959, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !958, retainedNodes: !1840)
!1840 = !{!1841}
!1841 = !DILocalVariable(name: "this", arg: 1, scope: !1839, type: !1819, flags: DIFlagArtificial | DIFlagObjectPointer)
!1842 = !DILocation(line: 0, scope: !1839)
!1843 = !DILocation(line: 419, column: 34, scope: !1839)
!1844 = !DILocation(line: 419, column: 5, scope: !1839)
!1845 = !DILocation(line: 420, column: 28, scope: !1839)
!1846 = !DILocation(line: 420, column: 5, scope: !1839)
!1847 = !DILocation(line: 421, column: 1, scope: !1839)
!1848 = distinct !DISubprogram(name: "command_buffer_completed_handler_invoke", linkageName: "_ZN6Halide7Runtime8Internal5Metal39command_buffer_completed_handler_invokeEPNS2_46command_buffer_completed_handler_block_literalEPNS2_18mtl_command_bufferE", scope: !2, file: !6, line: 439, type: !130, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1849)
!1849 = !{!1850, !1851, !1852}
!1850 = !DILocalVariable(name: "block", arg: 1, scope: !1848, file: !6, line: 439, type: !132)
!1851 = !DILocalVariable(name: "buffer", arg: 2, scope: !1848, file: !6, line: 439, type: !133)
!1852 = !DILocalVariable(name: "buffer_error", scope: !1848, file: !6, line: 440, type: !480)
!1853 = !DILocation(line: 0, scope: !1848)
!1854 = !DILocation(line: 440, column: 28, scope: !1848)
!1855 = !DILocation(line: 441, column: 22, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1848, file: !6, line: 441, column: 9)
!1857 = !DILocation(line: 441, column: 9, scope: !1848)
!1858 = !DILocation(line: 442, column: 9, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1856, file: !6, line: 441, column: 34)
!1860 = !DILocation(line: 443, column: 9, scope: !1859)
!1861 = !DILocation(line: 444, column: 5, scope: !1859)
!1862 = !DILocation(line: 445, column: 1, scope: !1848)
!1863 = distinct !DISubprogram(name: "halide_metal_device_malloc", scope: !6, file: !6, line: 462, type: !1864, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1866)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!57, !99, !915}
!1866 = !{!1867, !1868, !1869, !1870, !1872, !1873, !1874, !1875, !1876}
!1867 = !DILocalVariable(name: "user_context", arg: 1, scope: !1863, file: !6, line: 462, type: !99)
!1868 = !DILocalVariable(name: "buf", arg: 2, scope: !1863, file: !6, line: 462, type: !915)
!1869 = !DILocalVariable(name: "size", scope: !1863, file: !6, line: 467, type: !248)
!1870 = !DILocalVariable(name: "i", scope: !1871, file: !6, line: 475, type: !57)
!1871 = distinct !DILexicalBlock(scope: !1863, file: !6, line: 475, column: 5)
!1872 = !DILocalVariable(name: "metal_context", scope: !1863, file: !6, line: 481, type: !947)
!1873 = !DILocalVariable(name: "t_before", scope: !1863, file: !6, line: 487, type: !48)
!1874 = !DILocalVariable(name: "handle", scope: !1863, file: !6, line: 490, type: !910)
!1875 = !DILocalVariable(name: "metal_buf", scope: !1863, file: !6, line: 495, type: !523)
!1876 = !DILocalVariable(name: "t_after", scope: !1863, file: !6, line: 510, type: !48)
!1877 = !DILocation(line: 0, scope: !1863)
!1878 = !DILocation(line: 0, scope: !1096, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 463, column: 5, scope: !1863)
!1880 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !1879)
!1881 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !1879)
!1882 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !1879)
!1883 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !1879)
!1884 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !1879)
!1885 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !1879)
!1886 = !DILocation(line: 0, scope: !1110, inlinedAt: !1879)
!1887 = !DILocation(line: 0, scope: !1113, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 464, column: 9, scope: !1863)
!1889 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !1888)
!1890 = !DILocalVariable(name: "this", arg: 1, scope: !1891, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1891 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !397, file: !395, line: 97, type: !437, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !436, retainedNodes: !1892)
!1892 = !{!1890, !1893}
!1893 = !DILocalVariable(name: "arg", arg: 2, scope: !1891, file: !395, line: 97, type: !439)
!1894 = !DILocation(line: 0, scope: !1891, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 464, column: 57, scope: !1863)
!1896 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !1895)
!1897 = !DILocation(line: 0, scope: !1113, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 465, column: 9, scope: !1863)
!1899 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !1898)
!1900 = !DILocation(line: 465, column: 25, scope: !1863)
!1901 = !DILocation(line: 0, scope: !1891, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 465, column: 22, scope: !1863)
!1903 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !1902)
!1904 = !DILocation(line: 0, scope: !1113, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 465, column: 29, scope: !1863)
!1906 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !1905)
!1907 = !DILocation(line: 0, scope: !1122, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 463, column: 5, scope: !1863)
!1909 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !1908)
!1910 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !1908)
!1911 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !1908)
!1912 = !DILocation(line: 0, scope: !1136, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !1908)
!1914 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !1913)
!1915 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !1913)
!1916 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !1913)
!1917 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !1908)
!1918 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !1908)
!1919 = !DILocalVariable(name: "this", arg: 1, scope: !1920, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!1920 = distinct !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !146, file: !42, line: 1518, type: !246, scopeLine: 1518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !253, retainedNodes: !1921)
!1921 = !{!1919}
!1922 = !DILocation(line: 0, scope: !1920, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 467, column: 24, scope: !1863)
!1924 = !DILocalVariable(name: "this", arg: 1, scope: !1925, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!1925 = distinct !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !146, file: !42, line: 1506, type: !250, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !252, retainedNodes: !1926)
!1926 = !{!1924, !1927, !1928}
!1927 = !DILocalVariable(name: "index", scope: !1925, file: !42, line: 1507, type: !916)
!1928 = !DILocalVariable(name: "i", scope: !1929, file: !42, line: 1508, type: !57)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !42, line: 1508, column: 9)
!1930 = !DILocation(line: 0, scope: !1925, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 1519, column: 25, scope: !1920, inlinedAt: !1923)
!1932 = !DILocation(line: 0, scope: !1929, inlinedAt: !1931)
!1933 = !DILocation(line: 1508, column: 29, scope: !1934, inlinedAt: !1931)
!1934 = distinct !DILexicalBlock(scope: !1929, file: !42, line: 1508, column: 9)
!1935 = !DILocation(line: 1508, column: 27, scope: !1934, inlinedAt: !1931)
!1936 = !DILocation(line: 1508, column: 9, scope: !1929, inlinedAt: !1931)
!1937 = !DILocation(line: 0, scope: !1208, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 1514, column: 36, scope: !1925, inlinedAt: !1931)
!1939 = !DILocation(line: 482, column: 17, scope: !1208, inlinedAt: !1938)
!1940 = !DILocalVariable(name: "this", arg: 1, scope: !1941, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!1941 = distinct !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !146, file: !42, line: 1495, type: !250, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !249, retainedNodes: !1942)
!1942 = !{!1940, !1943, !1944}
!1943 = !DILocalVariable(name: "index", scope: !1941, file: !42, line: 1496, type: !916)
!1944 = !DILocalVariable(name: "i", scope: !1945, file: !42, line: 1497, type: !57)
!1945 = distinct !DILexicalBlock(scope: !1941, file: !42, line: 1497, column: 9)
!1946 = !DILocation(line: 0, scope: !1941, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 1519, column: 33, scope: !1920, inlinedAt: !1923)
!1948 = !DILocation(line: 0, scope: !1945, inlinedAt: !1947)
!1949 = !DILocation(line: 1497, column: 9, scope: !1945, inlinedAt: !1947)
!1950 = !DILocation(line: 1509, column: 24, scope: !1951, inlinedAt: !1931)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !42, line: 1509, column: 17)
!1952 = distinct !DILexicalBlock(scope: !1934, file: !42, line: 1508, column: 46)
!1953 = !DILocation(line: 1509, column: 31, scope: !1951, inlinedAt: !1931)
!1954 = !DILocation(line: 1509, column: 17, scope: !1952, inlinedAt: !1931)
!1955 = !DILocation(line: 1510, column: 37, scope: !1956, inlinedAt: !1931)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !42, line: 1509, column: 36)
!1957 = !DILocation(line: 1510, column: 61, scope: !1956, inlinedAt: !1931)
!1958 = !DILocation(line: 1510, column: 68, scope: !1956, inlinedAt: !1931)
!1959 = !DILocation(line: 1510, column: 53, scope: !1956, inlinedAt: !1931)
!1960 = !DILocation(line: 1510, column: 51, scope: !1956, inlinedAt: !1931)
!1961 = !DILocation(line: 1510, column: 23, scope: !1956, inlinedAt: !1931)
!1962 = !DILocation(line: 1511, column: 13, scope: !1956, inlinedAt: !1931)
!1963 = !DILocation(line: 1508, column: 42, scope: !1934, inlinedAt: !1931)
!1964 = distinct !{!1964, !1936, !1965, !1042}
!1965 = !DILocation(line: 1512, column: 9, scope: !1929, inlinedAt: !1931)
!1966 = !DILocation(line: 1498, column: 24, scope: !1967, inlinedAt: !1947)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !42, line: 1498, column: 17)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !42, line: 1497, column: 46)
!1969 = distinct !DILexicalBlock(scope: !1945, file: !42, line: 1497, column: 9)
!1970 = !DILocation(line: 1498, column: 31, scope: !1967, inlinedAt: !1947)
!1971 = !DILocation(line: 1498, column: 17, scope: !1968, inlinedAt: !1947)
!1972 = !DILocation(line: 1499, column: 37, scope: !1973, inlinedAt: !1947)
!1973 = distinct !DILexicalBlock(scope: !1967, file: !42, line: 1498, column: 36)
!1974 = !DILocation(line: 1499, column: 61, scope: !1973, inlinedAt: !1947)
!1975 = !DILocation(line: 1499, column: 68, scope: !1973, inlinedAt: !1947)
!1976 = !DILocation(line: 1499, column: 53, scope: !1973, inlinedAt: !1947)
!1977 = !DILocation(line: 1499, column: 51, scope: !1973, inlinedAt: !1947)
!1978 = !DILocation(line: 1499, column: 23, scope: !1973, inlinedAt: !1947)
!1979 = !DILocation(line: 1500, column: 13, scope: !1973, inlinedAt: !1947)
!1980 = !DILocation(line: 1497, column: 42, scope: !1969, inlinedAt: !1947)
!1981 = !DILocation(line: 1497, column: 27, scope: !1969, inlinedAt: !1947)
!1982 = distinct !{!1982, !1949, !1983, !1042}
!1983 = !DILocation(line: 1501, column: 9, scope: !1945, inlinedAt: !1947)
!1984 = !DILocation(line: 482, column: 22, scope: !1208, inlinedAt: !1938)
!1985 = !DILocation(line: 482, column: 27, scope: !1208, inlinedAt: !1938)
!1986 = !DILocation(line: 1513, column: 15, scope: !1925, inlinedAt: !1931)
!1987 = !DILocation(line: 0, scope: !1208, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 1502, column: 36, scope: !1941, inlinedAt: !1947)
!1989 = !DILocation(line: 1519, column: 31, scope: !1920, inlinedAt: !1923)
!1990 = !DILocation(line: 468, column: 5, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !6, line: 468, column: 5)
!1992 = distinct !DILexicalBlock(scope: !1863, file: !6, line: 468, column: 5)
!1993 = !DILocation(line: 468, column: 5, scope: !1992)
!1994 = !DILocation(line: 468, column: 5, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !6, line: 468, column: 5)
!1996 = !DILocation(line: 469, column: 14, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1863, file: !6, line: 469, column: 9)
!1998 = !DILocation(line: 469, column: 9, scope: !1997)
!1999 = !DILocation(line: 469, column: 9, scope: !1863)
!2000 = !DILocation(line: 0, scope: !1871)
!2001 = !DILocation(line: 475, column: 30, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1871, file: !6, line: 475, column: 5)
!2003 = !DILocation(line: 475, column: 23, scope: !2002)
!2004 = !DILocation(line: 475, column: 5, scope: !1871)
!2005 = !DILocation(line: 0, scope: !1096, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 479, column: 5, scope: !1863)
!2007 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2006)
!2008 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2006)
!2009 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2006)
!2010 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2006)
!2011 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2006)
!2012 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2006)
!2013 = !DILocation(line: 0, scope: !1110, inlinedAt: !2006)
!2014 = !DILocation(line: 0, scope: !1113, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 479, column: 25, scope: !1863)
!2016 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2015)
!2017 = !DILocalVariable(name: "this", arg: 1, scope: !2018, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!2018 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !397, file: !395, line: 113, type: !449, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !448, retainedNodes: !2019)
!2019 = !{!2017, !2020}
!2020 = !DILocalVariable(name: "buf", arg: 2, scope: !2018, file: !395, line: 113, type: !451)
!2021 = !DILocation(line: 0, scope: !2018, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 479, column: 46, scope: !1863)
!2023 = !DILocation(line: 114, column: 15, scope: !2018, inlinedAt: !2022)
!2024 = !DILocation(line: 0, scope: !1113, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 479, column: 54, scope: !1863)
!2026 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2025)
!2027 = !DILocation(line: 0, scope: !1122, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 479, column: 5, scope: !1863)
!2029 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2028)
!2030 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2028)
!2031 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2028)
!2032 = !DILocation(line: 0, scope: !1136, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2028)
!2034 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2033)
!2035 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2033)
!2036 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2033)
!2037 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !2028)
!2038 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !2028)
!2039 = !DILocation(line: 481, column: 5, scope: !1863)
!2040 = !DILocation(line: 481, column: 24, scope: !1863)
!2041 = !DILocalVariable(name: "this", arg: 1, scope: !2042, type: !1819, flags: DIFlagArtificial | DIFlagObjectPointer)
!2042 = distinct !DISubprogram(name: "MetalContextHolder", linkageName: "_ZN6Halide7Runtime8Internal5Metal18MetalContextHolderC2EPvb", scope: !947, file: !6, line: 404, type: !955, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !961, retainedNodes: !2043)
!2043 = !{!2041, !2044, !2045}
!2044 = !DILocalVariable(name: "user_context", arg: 2, scope: !2042, file: !6, line: 404, type: !99)
!2045 = !DILocalVariable(name: "create", arg: 3, scope: !2042, file: !6, line: 404, type: !87)
!2046 = !DILocation(line: 0, scope: !2042, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 481, column: 24, scope: !1863)
!2048 = !DILocation(line: 405, column: 9, scope: !2049, inlinedAt: !2047)
!2049 = distinct !DILexicalBlock(scope: !2042, file: !6, line: 404, column: 71)
!2050 = !DILocation(line: 482, column: 23, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !1863, file: !6, line: 482, column: 9)
!2052 = !DILocation(line: 482, column: 29, scope: !2051)
!2053 = !DILocation(line: 482, column: 9, scope: !1863)
!2054 = !DILocation(line: 476, column: 9, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !6, line: 476, column: 9)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !6, line: 476, column: 9)
!2057 = distinct !DILexicalBlock(scope: !2002, file: !6, line: 475, column: 47)
!2058 = !DILocation(line: 476, column: 9, scope: !2056)
!2059 = !DILocation(line: 476, column: 9, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2055, file: !6, line: 476, column: 9)
!2061 = !DILocation(line: 475, column: 43, scope: !2002)
!2062 = distinct !{!2062, !2004, !2063, !1042}
!2063 = !DILocation(line: 477, column: 5, scope: !1871)
!2064 = !DILocation(line: 487, column: 25, scope: !1863)
!2065 = !DILocation(line: 490, column: 46, scope: !1863)
!2066 = !DILocation(line: 491, column: 16, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1863, file: !6, line: 491, column: 9)
!2068 = !DILocation(line: 491, column: 9, scope: !1863)
!2069 = !DILocation(line: 495, column: 54, scope: !1863)
!2070 = !{!1826, !1191, i64 16}
!2071 = !DILocation(line: 495, column: 29, scope: !1863)
!2072 = !DILocation(line: 496, column: 19, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1863, file: !6, line: 496, column: 9)
!2074 = !DILocation(line: 496, column: 9, scope: !1863)
!2075 = !DILocation(line: 497, column: 9, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2073, file: !6, line: 496, column: 31)
!2077 = !DILocation(line: 0, scope: !1689, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 498, column: 9, scope: !2076)
!2079 = !DILocation(line: 44, column: 27, scope: !1771, inlinedAt: !2078)
!2080 = !DILocation(line: 48, column: 13, scope: !1720, inlinedAt: !2078)
!2081 = !DILocation(line: 48, column: 13, scope: !1698, inlinedAt: !2078)
!2082 = !DILocation(line: 49, column: 23, scope: !1719, inlinedAt: !2078)
!2083 = !DILocation(line: 50, column: 18, scope: !1719, inlinedAt: !2078)
!2084 = !DILocation(line: 51, column: 9, scope: !1719, inlinedAt: !2078)
!2085 = !DILocation(line: 0, scope: !1720, inlinedAt: !2078)
!2086 = !DILocation(line: 0, scope: !1700, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 498, column: 29, scope: !2076)
!2088 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !2087)
!2089 = !DILocalVariable(name: "this", arg: 1, scope: !2090, type: !1693, flags: DIFlagArtificial | DIFlagObjectPointer)
!2090 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !844, file: !395, line: 67, type: !861, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !860, retainedNodes: !2091)
!2091 = !{!2089, !2092}
!2092 = !DILocalVariable(name: "arg", arg: 2, scope: !2090, file: !395, line: 67, type: !418)
!2093 = !DILocation(line: 0, scope: !2090, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 498, column: 76, scope: !2076)
!2095 = !DILocation(line: 68, column: 15, scope: !2090, inlinedAt: !2094)
!2096 = !DILocation(line: 0, scope: !1700, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 498, column: 93, scope: !2076)
!2098 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !2097)
!2099 = !DILocation(line: 0, scope: !1709, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 498, column: 9, scope: !2076)
!2101 = !DILocation(line: 167, column: 13, scope: !1716, inlinedAt: !2100)
!2102 = !DILocation(line: 168, column: 13, scope: !1714, inlinedAt: !2100)
!2103 = !DILocation(line: 169, column: 9, scope: !1714, inlinedAt: !2100)
!2104 = !DILocation(line: 0, scope: !1723, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 170, column: 13, scope: !1727, inlinedAt: !2100)
!2106 = !DILocation(line: 163, column: 81, scope: !1723, inlinedAt: !2105)
!2107 = !DILocation(line: 163, column: 87, scope: !1723, inlinedAt: !2105)
!2108 = !DILocation(line: 163, column: 15, scope: !1723, inlinedAt: !2105)
!2109 = !DILocation(line: 172, column: 17, scope: !1732, inlinedAt: !2100)
!2110 = !DILocation(line: 181, column: 13, scope: !1735, inlinedAt: !2100)
!2111 = !DILocation(line: 499, column: 9, scope: !2076)
!2112 = !DILocation(line: 502, column: 13, scope: !1863)
!2113 = !DILocation(line: 502, column: 17, scope: !1863)
!2114 = !{!2115, !1191, i64 0}
!2115 = !{!"_ZTSN6Halide7Runtime8Internal5Metal13device_handleE", !1191, i64 0, !1033, i64 8}
!2116 = !DILocation(line: 503, column: 13, scope: !1863)
!2117 = !DILocation(line: 503, column: 20, scope: !1863)
!2118 = !{!2115, !1033, i64 8}
!2119 = !DILocation(line: 505, column: 19, scope: !1863)
!2120 = !DILocation(line: 505, column: 17, scope: !1863)
!2121 = !DILocation(line: 506, column: 10, scope: !1863)
!2122 = !DILocation(line: 506, column: 27, scope: !1863)
!2123 = !{!1190, !1191, i64 8}
!2124 = !DILocation(line: 507, column: 28, scope: !1863)
!2125 = !{!2126, !1191, i64 120}
!2126 = !{!"_ZTS25halide_device_interface_t", !1191, i64 0, !1191, i64 8, !1191, i64 16, !1191, i64 24, !1191, i64 32, !1191, i64 40, !1191, i64 48, !1191, i64 56, !1191, i64 64, !1191, i64 72, !1191, i64 80, !1191, i64 88, !1191, i64 96, !1191, i64 104, !1191, i64 112, !1191, i64 120}
!2127 = !DILocation(line: 507, column: 34, scope: !1863)
!2128 = !{!2129, !1191, i64 0}
!2129 = !{!"_ZTS30halide_device_interface_impl_t", !1191, i64 0, !1191, i64 8, !1191, i64 16, !1191, i64 24, !1191, i64 32, !1191, i64 40, !1191, i64 48, !1191, i64 56, !1191, i64 64, !1191, i64 72, !1191, i64 80, !1191, i64 88, !1191, i64 96, !1191, i64 104, !1191, i64 112, !1191, i64 120}
!2130 = !DILocation(line: 507, column: 5, scope: !1863)
!2131 = !DILocation(line: 510, column: 24, scope: !1863)
!2132 = !DILocation(line: 0, scope: !1096, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 511, column: 5, scope: !1863)
!2134 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2133)
!2135 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2133)
!2136 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2133)
!2137 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2133)
!2138 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2133)
!2139 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2133)
!2140 = !DILocation(line: 0, scope: !1110, inlinedAt: !2133)
!2141 = !DILocation(line: 0, scope: !1113, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 511, column: 25, scope: !1863)
!2143 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2142)
!2144 = !DILocation(line: 511, column: 53, scope: !1863)
!2145 = !DILocation(line: 511, column: 44, scope: !1863)
!2146 = !DILocation(line: 511, column: 65, scope: !1863)
!2147 = !DILocalVariable(name: "this", arg: 1, scope: !2148, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!2148 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !397, file: !395, line: 87, type: !430, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !429, retainedNodes: !2149)
!2149 = !{!2147, !2150}
!2150 = !DILocalVariable(name: "arg", arg: 2, scope: !2148, file: !395, line: 87, type: !432)
!2151 = !DILocation(line: 0, scope: !2148, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 511, column: 41, scope: !1863)
!2153 = !DILocation(line: 88, column: 15, scope: !2148, inlinedAt: !2152)
!2154 = !DILocation(line: 0, scope: !1113, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 511, column: 73, scope: !1863)
!2156 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2155)
!2157 = !DILocation(line: 0, scope: !1122, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 511, column: 5, scope: !1863)
!2159 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2158)
!2160 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2158)
!2161 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2158)
!2162 = !DILocation(line: 0, scope: !1136, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2158)
!2164 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2163)
!2165 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2163)
!2166 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2163)
!2167 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !2158)
!2168 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !2158)
!2169 = !DILocalVariable(name: "this", arg: 1, scope: !2170, type: !1819, flags: DIFlagArtificial | DIFlagObjectPointer)
!2170 = distinct !DISubprogram(name: "~MetalContextHolder", linkageName: "_ZN6Halide7Runtime8Internal5Metal18MetalContextHolderD2Ev", scope: !947, file: !6, line: 407, type: !959, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !962, retainedNodes: !2171)
!2171 = !{!2169}
!2172 = !DILocation(line: 0, scope: !2170, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 515, column: 1, scope: !1863)
!2174 = !DILocation(line: 408, column: 9, scope: !2175, inlinedAt: !2173)
!2175 = distinct !DILexicalBlock(scope: !2170, file: !6, line: 407, column: 41)
!2176 = !DILocation(line: 515, column: 1, scope: !1863)
!2177 = !DISubprogram(name: "halide_current_time_ns", scope: !47, file: !47, line: 136, type: !2178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!419, !99}
!2180 = !DISubprogram(name: "malloc", scope: !47, file: !47, line: 87, type: !2181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!99, !119}
!2183 = !DISubprogram(name: "free", scope: !47, file: !47, line: 86, type: !2184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null, !99}
!2186 = distinct !DISubprogram(name: "halide_metal_device_free", scope: !6, file: !6, line: 517, type: !1864, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !2187)
!2187 = !{!2188, !2189, !2190, !2191, !2192}
!2188 = !DILocalVariable(name: "user_context", arg: 1, scope: !2186, file: !6, line: 517, type: !99)
!2189 = !DILocalVariable(name: "buf", arg: 2, scope: !2186, file: !6, line: 517, type: !915)
!2190 = !DILocalVariable(name: "t_before", scope: !2186, file: !6, line: 525, type: !48)
!2191 = !DILocalVariable(name: "handle", scope: !2186, file: !6, line: 528, type: !910)
!2192 = !DILocalVariable(name: "t_after", scope: !2186, file: !6, line: 538, type: !48)
!2193 = !DILocation(line: 0, scope: !2186)
!2194 = !DILocation(line: 0, scope: !1096, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 518, column: 5, scope: !2186)
!2196 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2195)
!2197 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2195)
!2198 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2195)
!2199 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2195)
!2200 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2195)
!2201 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2195)
!2202 = !DILocation(line: 0, scope: !1110, inlinedAt: !2195)
!2203 = !DILocation(line: 0, scope: !1113, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 518, column: 25, scope: !2186)
!2205 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2204)
!2206 = !DILocation(line: 519, column: 28, scope: !2186)
!2207 = !DILocation(line: 0, scope: !1891, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 519, column: 25, scope: !2186)
!2209 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !2208)
!2210 = !DILocation(line: 0, scope: !1113, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 519, column: 32, scope: !2186)
!2212 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2211)
!2213 = !DILocation(line: 519, column: 57, scope: !2186)
!2214 = !DILocalVariable(name: "this", arg: 1, scope: !2215, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!2215 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !397, file: !395, line: 77, type: !424, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !423, retainedNodes: !2216)
!2216 = !{!2214, !2217}
!2217 = !DILocalVariable(name: "arg", arg: 2, scope: !2215, file: !395, line: 77, type: !48)
!2218 = !DILocation(line: 0, scope: !2215, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 519, column: 49, scope: !2186)
!2220 = !DILocation(line: 78, column: 15, scope: !2215, inlinedAt: !2219)
!2221 = !DILocation(line: 0, scope: !1113, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 519, column: 64, scope: !2186)
!2223 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2222)
!2224 = !DILocation(line: 0, scope: !1122, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 518, column: 5, scope: !2186)
!2226 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2225)
!2227 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2225)
!2228 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2225)
!2229 = !DILocation(line: 0, scope: !1136, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2225)
!2231 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2230)
!2232 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2230)
!2233 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2230)
!2234 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !2225)
!2235 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !2225)
!2236 = !DILocation(line: 520, column: 14, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 520, column: 9)
!2238 = !DILocation(line: 520, column: 21, scope: !2237)
!2239 = !DILocation(line: 520, column: 9, scope: !2186)
!2240 = !DILocation(line: 525, column: 25, scope: !2186)
!2241 = !DILocation(line: 528, column: 51, scope: !2186)
!2242 = !DILocation(line: 528, column: 29, scope: !2186)
!2243 = !DILocation(line: 529, column: 5, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !6, line: 529, column: 5)
!2245 = distinct !DILexicalBlock(scope: !2186, file: !6, line: 529, column: 5)
!2246 = !DILocation(line: 529, column: 5, scope: !2245)
!2247 = !DILocation(line: 529, column: 5, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !6, line: 529, column: 5)
!2249 = !DILocation(line: 531, column: 31, scope: !2186)
!2250 = !DILocation(line: 531, column: 5, scope: !2186)
!2251 = !DILocation(line: 532, column: 10, scope: !2186)
!2252 = !DILocation(line: 532, column: 5, scope: !2186)
!2253 = !DILocation(line: 533, column: 17, scope: !2186)
!2254 = !DILocation(line: 534, column: 10, scope: !2186)
!2255 = !DILocation(line: 534, column: 28, scope: !2186)
!2256 = !DILocation(line: 534, column: 34, scope: !2186)
!2257 = !{!2129, !1191, i64 8}
!2258 = !DILocation(line: 534, column: 5, scope: !2186)
!2259 = !DILocation(line: 535, column: 27, scope: !2186)
!2260 = !DILocation(line: 538, column: 24, scope: !2186)
!2261 = !DILocation(line: 0, scope: !1096, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 539, column: 5, scope: !2186)
!2263 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2262)
!2264 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2262)
!2265 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2262)
!2266 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2262)
!2267 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2262)
!2268 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2262)
!2269 = !DILocation(line: 0, scope: !1110, inlinedAt: !2262)
!2270 = !DILocation(line: 0, scope: !1113, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 539, column: 25, scope: !2186)
!2272 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2271)
!2273 = !DILocation(line: 539, column: 53, scope: !2186)
!2274 = !DILocation(line: 539, column: 44, scope: !2186)
!2275 = !DILocation(line: 539, column: 65, scope: !2186)
!2276 = !DILocation(line: 0, scope: !2148, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 539, column: 41, scope: !2186)
!2278 = !DILocation(line: 88, column: 15, scope: !2148, inlinedAt: !2277)
!2279 = !DILocation(line: 0, scope: !1113, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 539, column: 73, scope: !2186)
!2281 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2280)
!2282 = !DILocation(line: 0, scope: !1122, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 539, column: 5, scope: !2186)
!2284 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2283)
!2285 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2283)
!2286 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2283)
!2287 = !DILocation(line: 0, scope: !1136, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2283)
!2289 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2288)
!2290 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2288)
!2291 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2288)
!2292 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !2283)
!2293 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !2283)
!2294 = !DILocation(line: 543, column: 1, scope: !2186)
!2295 = distinct !DISubprogram(name: "halide_metal_initialize_kernels", scope: !6, file: !6, line: 545, type: !2296, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!57, !99, !338, !335, !57}
!2298 = !{!2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306}
!2299 = !DILocalVariable(name: "user_context", arg: 1, scope: !2295, file: !6, line: 545, type: !99)
!2300 = !DILocalVariable(name: "state_ptr", arg: 2, scope: !2295, file: !6, line: 545, type: !338)
!2301 = !DILocalVariable(name: "source", arg: 3, scope: !2295, file: !6, line: 545, type: !335)
!2302 = !DILocalVariable(name: "source_size", arg: 4, scope: !2295, file: !6, line: 545, type: !57)
!2303 = !DILocalVariable(name: "metal_context", scope: !2295, file: !6, line: 546, type: !947)
!2304 = !DILocalVariable(name: "t_before", scope: !2295, file: !6, line: 552, type: !48)
!2305 = !DILocalVariable(name: "library", scope: !2295, file: !6, line: 555, type: !66)
!2306 = !DILocalVariable(name: "t_after", scope: !2295, file: !6, line: 564, type: !48)
!2307 = !DILocation(line: 0, scope: !2295)
!2308 = !DILocation(line: 546, column: 5, scope: !2295)
!2309 = !DILocation(line: 546, column: 24, scope: !2295)
!2310 = !DILocation(line: 0, scope: !2042, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 546, column: 24, scope: !2295)
!2312 = !DILocation(line: 405, column: 9, scope: !2049, inlinedAt: !2311)
!2313 = !DILocation(line: 547, column: 23, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2295, file: !6, line: 547, column: 9)
!2315 = !DILocation(line: 547, column: 29, scope: !2314)
!2316 = !DILocation(line: 547, column: 9, scope: !2295)
!2317 = !DILocation(line: 552, column: 25, scope: !2295)
!2318 = !DILocation(line: 555, column: 5, scope: !2295)
!2319 = !DILocation(line: 555, column: 18, scope: !2295)
!2320 = !DILocation(line: 556, column: 86, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2295, file: !6, line: 556, column: 9)
!2322 = !DILocation(line: 556, column: 28, scope: !2321)
!2323 = !DILocation(line: 556, column: 9, scope: !2295)
!2324 = !DILocation(line: 561, column: 5, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !6, line: 561, column: 5)
!2326 = distinct !DILexicalBlock(scope: !2295, file: !6, line: 561, column: 5)
!2327 = !DILocation(line: 561, column: 5, scope: !2326)
!2328 = !DILocation(line: 561, column: 5, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2325, file: !6, line: 561, column: 5)
!2330 = !DILocation(line: 564, column: 24, scope: !2295)
!2331 = !DILocation(line: 0, scope: !1096, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 565, column: 5, scope: !2295)
!2333 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2332)
!2334 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2332)
!2335 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2332)
!2336 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2332)
!2337 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2332)
!2338 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2332)
!2339 = !DILocation(line: 0, scope: !1110, inlinedAt: !2332)
!2340 = !DILocation(line: 0, scope: !1113, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 565, column: 25, scope: !2295)
!2342 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2341)
!2343 = !DILocation(line: 565, column: 85, scope: !2295)
!2344 = !DILocation(line: 565, column: 76, scope: !2295)
!2345 = !DILocation(line: 565, column: 97, scope: !2295)
!2346 = !DILocation(line: 0, scope: !2148, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 565, column: 73, scope: !2295)
!2348 = !DILocation(line: 88, column: 15, scope: !2148, inlinedAt: !2347)
!2349 = !DILocation(line: 0, scope: !1113, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 565, column: 105, scope: !2295)
!2351 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2350)
!2352 = !DILocation(line: 0, scope: !1122, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 565, column: 5, scope: !2295)
!2354 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2353)
!2355 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2353)
!2356 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2353)
!2357 = !DILocation(line: 0, scope: !1136, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2353)
!2359 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2358)
!2360 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2358)
!2361 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2358)
!2362 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !2353)
!2363 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !2353)
!2364 = !DILocation(line: 569, column: 1, scope: !2295)
!2365 = !DILocation(line: 0, scope: !2170, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 569, column: 1, scope: !2295)
!2367 = !DILocation(line: 408, column: 9, scope: !2175, inlinedAt: !2366)
!2368 = distinct !DISubprogram(name: "kernel_state_setup<Halide::Runtime::Internal::Metal::mtl_library *(*)(halide_metal_device *, const char *, unsigned long), halide_metal_device *, const char *, int>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcmEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_", scope: !36, file: !37, line: 178, type: !2369, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, templateParams: !2375, declaration: !2374, retainedNodes: !2382)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!87, !88, !99, !338, !64, !100, !2371, !64, !335, !57}
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!66, !64, !335, !119}
!2374 = !DISubprogram(name: "kernel_state_setup<Halide::Runtime::Internal::Metal::mtl_library *(*)(halide_metal_device *, const char *, unsigned long), halide_metal_device *, const char *, int>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE18kernel_state_setupIPFS8_S3_PKcmEJS3_SC_iEEEbPvPSF_S3_RS8_T_DpT0_", scope: !36, file: !37, line: 178, type: !2369, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2375)
!2375 = !{!2376, !2377}
!2376 = !DITemplateTypeParameter(name: "CompileModuleT", type: !2371)
!2377 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "Args", value: !2378)
!2378 = !{!2379, !2380, !2381}
!2379 = !DITemplateTypeParameter(type: !64)
!2380 = !DITemplateTypeParameter(type: !335)
!2381 = !DITemplateTypeParameter(type: !57)
!2382 = !{!2383, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2406, !2407, !2408}
!2383 = !DILocalVariable(name: "this", arg: 1, scope: !2368, type: !2384, flags: DIFlagArtificial | DIFlagObjectPointer)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!2385 = !DILocalVariable(name: "user_context", arg: 2, scope: !2368, file: !37, line: 178, type: !99)
!2386 = !DILocalVariable(name: "state_ptr", arg: 3, scope: !2368, file: !37, line: 178, type: !338)
!2387 = !DILocalVariable(name: "context", arg: 4, scope: !2368, file: !37, line: 179, type: !64)
!2388 = !DILocalVariable(name: "result", arg: 5, scope: !2368, file: !37, line: 179, type: !100)
!2389 = !DILocalVariable(name: "f", arg: 6, scope: !2368, file: !37, line: 180, type: !2371)
!2390 = !DILocalVariable(name: "args", arg: 7, scope: !2368, file: !37, line: 181, type: !64)
!2391 = !DILocalVariable(name: "args", arg: 8, scope: !2368, file: !37, line: 181, type: !335)
!2392 = !DILocalVariable(name: "args", arg: 9, scope: !2368, file: !37, line: 181, type: !57)
!2393 = !DILocalVariable(name: "lock_guard", scope: !2368, file: !37, line: 182, type: !2394)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !3, file: !2395, line: 11, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2396, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!2395 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2396 = !{!2397, !2399, !2403}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2394, file: !2395, line: 12, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!2399 = !DISubprogram(name: "ScopedMutexLock", scope: !2394, file: !2395, line: 14, type: !2400, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{null, !2402, !2398}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2403 = !DISubprogram(name: "~ScopedMutexLock", scope: !2394, file: !2395, line: 19, type: !2404, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !2402}
!2406 = !DILocalVariable(name: "id_ptr", scope: !2368, file: !37, line: 184, type: !918)
!2407 = !DILocalVariable(name: "mod", scope: !2368, file: !37, line: 189, type: !95)
!2408 = !DILocalVariable(name: "compiled_module", scope: !2368, file: !37, line: 196, type: !66)
!2409 = !DILocation(line: 0, scope: !2368)
!2410 = !DILocation(line: 182, column: 37, scope: !2368)
!2411 = !DILocalVariable(name: "this", arg: 1, scope: !2412, type: !2415, flags: DIFlagArtificial | DIFlagObjectPointer)
!2412 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !2394, file: !2395, line: 14, type: !2400, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !2399, retainedNodes: !2413)
!2413 = !{!2411, !2414}
!2414 = !DILocalVariable(name: "mutex", arg: 2, scope: !2412, file: !2395, line: 14, type: !2398)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2416 = !DILocation(line: 0, scope: !2412, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 182, column: 25, scope: !2368)
!2418 = !DILocation(line: 16, column: 9, scope: !2419, inlinedAt: !2417)
!2419 = distinct !DILexicalBlock(scope: !2412, file: !2395, line: 15, column: 24)
!2420 = !DILocation(line: 184, column: 28, scope: !2368)
!2421 = !DILocation(line: 185, column: 13, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2368, file: !37, line: 185, column: 13)
!2423 = !{!1195, !1195, i64 0}
!2424 = !DILocation(line: 185, column: 21, scope: !2422)
!2425 = !DILocation(line: 185, column: 13, scope: !2368)
!2426 = !DILocation(line: 186, column: 23, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2422, file: !37, line: 185, column: 27)
!2428 = !DILocation(line: 186, column: 32, scope: !2427)
!2429 = !{!2430, !1195, i64 28}
!2430 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEEE", !2431, i64 0, !1195, i64 8, !1191, i64 16, !1195, i64 24, !1195, i64 28}
!2431 = !{!"_ZTS12halide_mutex", !1034, i64 0}
!2432 = !DILocation(line: 186, column: 21, scope: !2427)
!2433 = !DILocation(line: 187, column: 9, scope: !2427)
!2434 = !DILocation(line: 190, column: 36, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2368, file: !37, line: 190, column: 13)
!2436 = !DILocalVariable(name: "this", arg: 1, scope: !2437, type: !2384, flags: DIFlagArtificial | DIFlagObjectPointer)
!2437 = distinct !DISubprogram(name: "find_internal", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE13find_internalES3_jRPS8_i", scope: !36, file: !37, line: 73, type: !92, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !91, retainedNodes: !2438)
!2438 = !{!2436, !2439, !2440, !2441, !2442, !2443, !2444, !2446}
!2439 = !DILocalVariable(name: "context", arg: 2, scope: !2437, file: !37, line: 73, type: !64)
!2440 = !DILocalVariable(name: "id", arg: 3, scope: !2437, file: !37, line: 73, type: !69)
!2441 = !DILocalVariable(name: "module_state", arg: 4, scope: !2437, file: !37, line: 74, type: !94)
!2442 = !DILocalVariable(name: "increment", arg: 5, scope: !2437, file: !37, line: 74, type: !57)
!2443 = !DILocalVariable(name: "index", scope: !2437, file: !37, line: 78, type: !46)
!2444 = !DILocalVariable(name: "i", scope: !2445, file: !37, line: 79, type: !57)
!2445 = distinct !DILexicalBlock(scope: !2437, file: !37, line: 79, column: 9)
!2446 = !DILocalVariable(name: "effective_index", scope: !2447, file: !37, line: 80, type: !46)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !37, line: 79, column: 65)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !37, line: 79, column: 9)
!2449 = !DILocation(line: 0, scope: !2437, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 190, column: 13, scope: !2435)
!2451 = !DILocation(line: 75, column: 13, scope: !2452, inlinedAt: !2450)
!2452 = distinct !DILexicalBlock(scope: !2437, file: !37, line: 75, column: 13)
!2453 = !{!2430, !1195, i64 8}
!2454 = !DILocation(line: 75, column: 36, scope: !2452, inlinedAt: !2450)
!2455 = !DILocation(line: 75, column: 13, scope: !2437, inlinedAt: !2450)
!2456 = !DILocalVariable(name: "context", arg: 1, scope: !2457, file: !37, line: 36, type: !64)
!2457 = distinct !DISubprogram(name: "kernel_hash", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE11kernel_hashES3_jj", scope: !36, file: !37, line: 36, type: !82, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !81, retainedNodes: !2458)
!2458 = !{!2456, !2459, !2460, !2461}
!2459 = !DILocalVariable(name: "id", arg: 2, scope: !2457, file: !37, line: 36, type: !69)
!2460 = !DILocalVariable(name: "bits", arg: 3, scope: !2457, file: !37, line: 36, type: !69)
!2461 = !DILocalVariable(name: "addr", scope: !2457, file: !37, line: 37, type: !46)
!2462 = !DILocation(line: 0, scope: !2457, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 78, column: 27, scope: !2437, inlinedAt: !2450)
!2464 = !DILocation(line: 37, column: 26, scope: !2457, inlinedAt: !2463)
!2465 = !DILocation(line: 37, column: 47, scope: !2457, inlinedAt: !2463)
!2466 = !DILocation(line: 37, column: 45, scope: !2457, inlinedAt: !2463)
!2467 = !DILocation(line: 41, column: 26, scope: !2468, inlinedAt: !2463)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !37, line: 40, column: 37)
!2469 = distinct !DILexicalBlock(scope: !2457, file: !37, line: 40, column: 13)
!2470 = !DILocation(line: 41, column: 66, scope: !2468, inlinedAt: !2463)
!2471 = !DILocation(line: 41, column: 59, scope: !2468, inlinedAt: !2463)
!2472 = !DILocation(line: 0, scope: !2445, inlinedAt: !2450)
!2473 = !DILocation(line: 79, column: 32, scope: !2448, inlinedAt: !2450)
!2474 = !DILocation(line: 79, column: 27, scope: !2448, inlinedAt: !2450)
!2475 = !DILocation(line: 79, column: 9, scope: !2445, inlinedAt: !2450)
!2476 = !{!2430, !1191, i64 16}
!2477 = distinct !{!2477, !2475, !2478, !1042}
!2478 = !DILocation(line: 93, column: 9, scope: !2445, inlinedAt: !2450)
!2479 = !DILocation(line: 80, column: 48, scope: !2447, inlinedAt: !2450)
!2480 = !DILocation(line: 80, column: 53, scope: !2447, inlinedAt: !2450)
!2481 = !DILocation(line: 0, scope: !2447, inlinedAt: !2450)
!2482 = !DILocation(line: 82, column: 47, scope: !2483, inlinedAt: !2450)
!2483 = distinct !DILexicalBlock(scope: !2447, file: !37, line: 82, column: 17)
!2484 = !{!2485, !1195, i64 16}
!2485 = !{!"_ZTSN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE17CachedCompilationE", !1191, i64 0, !1191, i64 8, !1195, i64 16, !1195, i64 20}
!2486 = !DILocation(line: 82, column: 57, scope: !2483, inlinedAt: !2450)
!2487 = !DILocation(line: 82, column: 17, scope: !2447, inlinedAt: !2450)
!2488 = !DILocation(line: 85, column: 47, scope: !2489, inlinedAt: !2450)
!2489 = distinct !DILexicalBlock(scope: !2447, file: !37, line: 85, column: 17)
!2490 = !{!2485, !1191, i64 0}
!2491 = !DILocation(line: 85, column: 55, scope: !2489, inlinedAt: !2450)
!2492 = !DILocation(line: 85, column: 66, scope: !2489, inlinedAt: !2450)
!2493 = !DILocation(line: 79, column: 61, scope: !2448, inlinedAt: !2450)
!2494 = !DILocation(line: 89, column: 51, scope: !2495, inlinedAt: !2450)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !37, line: 88, column: 37)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !37, line: 88, column: 21)
!2497 = distinct !DILexicalBlock(scope: !2489, file: !37, line: 86, column: 64)
!2498 = !DILocation(line: 89, column: 61, scope: !2495, inlinedAt: !2450)
!2499 = !{!2485, !1195, i64 20}
!2500 = !DILocation(line: 190, column: 13, scope: !2368)
!2501 = !DILocation(line: 87, column: 63, scope: !2497, inlinedAt: !2450)
!2502 = !DILocation(line: 191, column: 22, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2435, file: !37, line: 190, column: 54)
!2504 = !DILocation(line: 191, column: 20, scope: !2503)
!2505 = !DILocation(line: 192, column: 13, scope: !2503)
!2506 = !DILocation(line: 196, column: 42, scope: !2368)
!2507 = !DILocation(line: 196, column: 40, scope: !2368)
!2508 = !DILocation(line: 0, scope: !1096, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 197, column: 9, scope: !2368)
!2510 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2509)
!2511 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2509)
!2512 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2509)
!2513 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2509)
!2514 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2509)
!2515 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2509)
!2516 = !DILocation(line: 0, scope: !1110, inlinedAt: !2509)
!2517 = !DILocation(line: 0, scope: !1113, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 197, column: 29, scope: !2368)
!2519 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2518)
!2520 = !DILocation(line: 197, column: 63, scope: !2368)
!2521 = !DILocation(line: 0, scope: !1891, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 197, column: 60, scope: !2368)
!2523 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !2522)
!2524 = !DILocation(line: 0, scope: !1113, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 198, column: 29, scope: !2368)
!2526 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2525)
!2527 = !DILocation(line: 198, column: 42, scope: !2368)
!2528 = !DILocalVariable(name: "this", arg: 1, scope: !2529, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!2529 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !397, file: !395, line: 82, type: !427, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !426, retainedNodes: !2530)
!2530 = !{!2528, !2531}
!2531 = !DILocalVariable(name: "arg", arg: 2, scope: !2529, file: !395, line: 82, type: !69)
!2532 = !DILocation(line: 0, scope: !2529, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 198, column: 39, scope: !2368)
!2534 = !DILocation(line: 83, column: 49, scope: !2529, inlinedAt: !2533)
!2535 = !DILocation(line: 83, column: 15, scope: !2529, inlinedAt: !2533)
!2536 = !DILocation(line: 0, scope: !1113, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 198, column: 50, scope: !2368)
!2538 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2537)
!2539 = !DILocation(line: 198, column: 68, scope: !2368)
!2540 = !DILocation(line: 0, scope: !1891, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 198, column: 65, scope: !2368)
!2542 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !2541)
!2543 = !DILocation(line: 0, scope: !1113, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 198, column: 76, scope: !2368)
!2545 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2544)
!2546 = !DILocation(line: 0, scope: !1122, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 197, column: 9, scope: !2368)
!2548 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2547)
!2549 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2547)
!2550 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2547)
!2551 = !DILocation(line: 0, scope: !1136, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2547)
!2553 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2552)
!2554 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2552)
!2555 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2552)
!2556 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !2547)
!2557 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !2547)
!2558 = !DILocation(line: 199, column: 29, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2368, file: !37, line: 199, column: 13)
!2560 = !DILocation(line: 199, column: 13, scope: !2368)
!2561 = !DILocation(line: 203, column: 21, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2368, file: !37, line: 203, column: 13)
!2563 = !DILocation(line: 203, column: 48, scope: !2562)
!2564 = !DILocalVariable(name: "this", arg: 1, scope: !2565, type: !60, flags: DIFlagArtificial | DIFlagObjectPointer)
!2565 = distinct !DISubprogram(name: "CachedCompilation", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE17CachedCompilationC2ES3_S8_jj", scope: !61, file: !37, line: 15, type: !73, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !72, retainedNodes: !2566)
!2566 = !{!2564, !2567, !2568, !2569, !2570}
!2567 = !DILocalVariable(name: "context", arg: 2, scope: !2565, file: !37, line: 15, type: !64)
!2568 = !DILocalVariable(name: "module_state", arg: 3, scope: !2565, file: !37, line: 15, type: !66)
!2569 = !DILocalVariable(name: "kernel_id", arg: 4, scope: !2565, file: !37, line: 16, type: !69)
!2570 = !DILocalVariable(name: "use_count", arg: 5, scope: !2565, file: !37, line: 16, type: !69)
!2571 = !DILocation(line: 0, scope: !2565, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 203, column: 21, scope: !2562)
!2573 = !DILocation(line: 17, column: 15, scope: !2565, inlinedAt: !2572)
!2574 = !DILocation(line: 17, column: 33, scope: !2565, inlinedAt: !2572)
!2575 = !{!2485, !1191, i64 8}
!2576 = !DILocation(line: 18, column: 15, scope: !2565, inlinedAt: !2572)
!2577 = !DILocation(line: 18, column: 37, scope: !2565, inlinedAt: !2572)
!2578 = !DILocation(line: 203, column: 14, scope: !2562)
!2579 = !DILocation(line: 203, column: 13, scope: !2562)
!2580 = !DILocation(line: 203, column: 13, scope: !2368)
!2581 = !DILocation(line: 206, column: 16, scope: !2368)
!2582 = !DILocation(line: 208, column: 9, scope: !2368)
!2583 = !DILocalVariable(name: "this", arg: 1, scope: !2584, type: !2415, flags: DIFlagArtificial | DIFlagObjectPointer)
!2584 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !2394, file: !2395, line: 19, type: !2404, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !2403, retainedNodes: !2585)
!2585 = !{!2583}
!2586 = !DILocation(line: 0, scope: !2584, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 209, column: 5, scope: !2368)
!2588 = !DILocation(line: 20, column: 9, scope: !2589, inlinedAt: !2587)
!2589 = distinct !DILexicalBlock(scope: !2584, file: !2395, line: 19, column: 38)
!2590 = !DILocation(line: 209, column: 5, scope: !2368)
!2591 = distinct !DISubprogram(name: "halide_metal_finalize_kernels", scope: !6, file: !6, line: 571, type: !2592, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !99, !99}
!2594 = !{!2595, !2596, !2597}
!2595 = !DILocalVariable(name: "user_context", arg: 1, scope: !2591, file: !6, line: 571, type: !99)
!2596 = !DILocalVariable(name: "state_ptr", arg: 2, scope: !2591, file: !6, line: 571, type: !99)
!2597 = !DILocalVariable(name: "metal_context", scope: !2591, file: !6, line: 572, type: !947)
!2598 = !DILocation(line: 0, scope: !2591)
!2599 = !DILocation(line: 572, column: 5, scope: !2591)
!2600 = !DILocation(line: 572, column: 24, scope: !2591)
!2601 = !DILocation(line: 0, scope: !2042, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 572, column: 24, scope: !2591)
!2603 = !DILocation(line: 405, column: 9, scope: !2049, inlinedAt: !2602)
!2604 = !DILocation(line: 573, column: 23, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2591, file: !6, line: 573, column: 9)
!2606 = !DILocation(line: 573, column: 29, scope: !2605)
!2607 = !DILocation(line: 573, column: 9, scope: !2591)
!2608 = !DILocation(line: 574, column: 68, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !6, line: 573, column: 35)
!2610 = !DILocalVariable(name: "this", arg: 1, scope: !2611, type: !2384, flags: DIFlagArtificial | DIFlagObjectPointer)
!2611 = distinct !DISubprogram(name: "release_hold", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12release_holdEPvS3_SA_", scope: !36, file: !37, line: 211, type: !105, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !104, retainedNodes: !2612)
!2612 = !{!2610, !2613, !2614, !2615, !2616, !2617, !2618}
!2613 = !DILocalVariable(name: "user_context", arg: 2, scope: !2611, file: !37, line: 211, type: !99)
!2614 = !DILocalVariable(name: "context", arg: 3, scope: !2611, file: !37, line: 211, type: !64)
!2615 = !DILocalVariable(name: "state_ptr", arg: 4, scope: !2611, file: !37, line: 211, type: !99)
!2616 = !DILocalVariable(name: "mod", scope: !2611, file: !37, line: 212, type: !95)
!2617 = !DILocalVariable(name: "id", scope: !2611, file: !37, line: 213, type: !69)
!2618 = !DILocalVariable(name: "result", scope: !2611, file: !37, line: 214, type: !87)
!2619 = !DILocation(line: 0, scope: !2611, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 574, column: 27, scope: !2609)
!2621 = !DILocation(line: 213, column: 33, scope: !2611, inlinedAt: !2620)
!2622 = !DILocation(line: 0, scope: !2437, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 214, column: 23, scope: !2611, inlinedAt: !2620)
!2624 = !DILocation(line: 75, column: 13, scope: !2452, inlinedAt: !2623)
!2625 = !DILocation(line: 75, column: 36, scope: !2452, inlinedAt: !2623)
!2626 = !DILocation(line: 75, column: 13, scope: !2437, inlinedAt: !2623)
!2627 = !DILocation(line: 0, scope: !2457, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 78, column: 27, scope: !2437, inlinedAt: !2623)
!2629 = !DILocation(line: 37, column: 26, scope: !2457, inlinedAt: !2628)
!2630 = !DILocation(line: 37, column: 47, scope: !2457, inlinedAt: !2628)
!2631 = !DILocation(line: 37, column: 45, scope: !2457, inlinedAt: !2628)
!2632 = !DILocation(line: 41, column: 26, scope: !2468, inlinedAt: !2628)
!2633 = !DILocation(line: 41, column: 66, scope: !2468, inlinedAt: !2628)
!2634 = !DILocation(line: 41, column: 59, scope: !2468, inlinedAt: !2628)
!2635 = !DILocation(line: 0, scope: !2445, inlinedAt: !2623)
!2636 = !DILocation(line: 79, column: 32, scope: !2448, inlinedAt: !2623)
!2637 = !DILocation(line: 79, column: 27, scope: !2448, inlinedAt: !2623)
!2638 = !DILocation(line: 79, column: 9, scope: !2445, inlinedAt: !2623)
!2639 = distinct !{!2639, !2638, !2640, !1042}
!2640 = !DILocation(line: 93, column: 9, scope: !2445, inlinedAt: !2623)
!2641 = !DILocation(line: 80, column: 48, scope: !2447, inlinedAt: !2623)
!2642 = !DILocation(line: 80, column: 53, scope: !2447, inlinedAt: !2623)
!2643 = !DILocation(line: 0, scope: !2447, inlinedAt: !2623)
!2644 = !DILocation(line: 82, column: 47, scope: !2483, inlinedAt: !2623)
!2645 = !DILocation(line: 82, column: 57, scope: !2483, inlinedAt: !2623)
!2646 = !DILocation(line: 82, column: 17, scope: !2447, inlinedAt: !2623)
!2647 = !DILocation(line: 85, column: 47, scope: !2489, inlinedAt: !2623)
!2648 = !DILocation(line: 85, column: 55, scope: !2489, inlinedAt: !2623)
!2649 = !DILocation(line: 85, column: 66, scope: !2489, inlinedAt: !2623)
!2650 = !DILocation(line: 79, column: 61, scope: !2448, inlinedAt: !2623)
!2651 = !DILocation(line: 89, column: 51, scope: !2495, inlinedAt: !2623)
!2652 = !DILocation(line: 89, column: 61, scope: !2495, inlinedAt: !2623)
!2653 = !DILocation(line: 215, column: 9, scope: !2654, inlinedAt: !2620)
!2654 = distinct !DILexicalBlock(scope: !2611, file: !37, line: 215, column: 9)
!2655 = !DILocation(line: 215, column: 9, scope: !2656, inlinedAt: !2620)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !37, line: 215, column: 9)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !37, line: 215, column: 9)
!2658 = !DILocation(line: 0, scope: !2170, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 576, column: 1, scope: !2591)
!2660 = !DILocation(line: 408, column: 9, scope: !2175, inlinedAt: !2659)
!2661 = !DILocation(line: 576, column: 1, scope: !2591)
!2662 = distinct !DISubprogram(name: "halide_metal_device_sync_internal", scope: !2663, file: !6, line: 580, type: !2664, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !2666)
!2663 = !DINamespace(scope: null)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{null, !31, !145}
!2666 = !{!2667, !2668, !2669, !2670, !2671, !2674}
!2667 = !DILocalVariable(name: "queue", arg: 1, scope: !2662, file: !6, line: 580, type: !31)
!2668 = !DILocalVariable(name: "buffer", arg: 2, scope: !2662, file: !6, line: 580, type: !145)
!2669 = !DILocalVariable(name: "buffer_label", scope: !2662, file: !6, line: 581, type: !335)
!2670 = !DILocalVariable(name: "sync_command_buffer", scope: !2662, file: !6, line: 582, type: !133)
!2671 = !DILocalVariable(name: "metal_buffer", scope: !2672, file: !6, line: 584, type: !523)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !6, line: 583, column: 28)
!2673 = distinct !DILexicalBlock(scope: !2662, file: !6, line: 583, column: 9)
!2674 = !DILocalVariable(name: "blit_encoder", scope: !2675, file: !6, line: 586, type: !596)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !6, line: 585, column: 46)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !6, line: 585, column: 13)
!2677 = !DILocation(line: 0, scope: !2662)
!2678 = !DILocation(line: 582, column: 87, scope: !2662)
!2679 = !DILocation(line: 582, column: 47, scope: !2662)
!2680 = !DILocation(line: 583, column: 16, scope: !2673)
!2681 = !DILocation(line: 583, column: 9, scope: !2662)
!2682 = !DILocation(line: 584, column: 62, scope: !2672)
!2683 = !DILocation(line: 584, column: 37, scope: !2672)
!2684 = !DILocation(line: 584, column: 71, scope: !2672)
!2685 = !DILocation(line: 0, scope: !2672)
!2686 = !DILocation(line: 585, column: 13, scope: !2676)
!2687 = !DILocation(line: 585, column: 13, scope: !2672)
!2688 = !DILocation(line: 586, column: 54, scope: !2675)
!2689 = !DILocation(line: 0, scope: !2675)
!2690 = !DILocation(line: 587, column: 13, scope: !2675)
!2691 = !DILocation(line: 588, column: 13, scope: !2675)
!2692 = !DILocation(line: 589, column: 9, scope: !2675)
!2693 = !DILocation(line: 591, column: 5, scope: !2662)
!2694 = !DILocation(line: 592, column: 5, scope: !2662)
!2695 = !DILocation(line: 593, column: 1, scope: !2662)
!2696 = distinct !DISubprogram(name: "halide_metal_device_sync", scope: !6, file: !6, line: 597, type: !264, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !2697)
!2697 = !{!2698, !2699, !2700, !2701, !2702}
!2698 = !DILocalVariable(name: "user_context", arg: 1, scope: !2696, file: !6, line: 597, type: !99)
!2699 = !DILocalVariable(name: "buffer", arg: 2, scope: !2696, file: !6, line: 597, type: !145)
!2700 = !DILocalVariable(name: "t_before", scope: !2696, file: !6, line: 599, type: !48)
!2701 = !DILocalVariable(name: "metal_context", scope: !2696, file: !6, line: 602, type: !947)
!2702 = !DILocalVariable(name: "t_after", scope: !2696, file: !6, line: 610, type: !48)
!2703 = !DILocation(line: 0, scope: !2696)
!2704 = !DILocation(line: 599, column: 25, scope: !2696)
!2705 = !DILocation(line: 602, column: 5, scope: !2696)
!2706 = !DILocation(line: 602, column: 24, scope: !2696)
!2707 = !DILocation(line: 0, scope: !2042, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 602, column: 24, scope: !2696)
!2709 = !DILocation(line: 405, column: 9, scope: !2049, inlinedAt: !2708)
!2710 = !DILocation(line: 603, column: 23, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2696, file: !6, line: 603, column: 9)
!2712 = !DILocation(line: 603, column: 29, scope: !2711)
!2713 = !DILocation(line: 603, column: 9, scope: !2696)
!2714 = !DILocation(line: 607, column: 53, scope: !2696)
!2715 = !{!1826, !1191, i64 24}
!2716 = !DILocation(line: 607, column: 5, scope: !2696)
!2717 = !DILocation(line: 610, column: 24, scope: !2696)
!2718 = !DILocation(line: 0, scope: !1096, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 611, column: 5, scope: !2696)
!2720 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2719)
!2721 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2719)
!2722 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2719)
!2723 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2719)
!2724 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2719)
!2725 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2719)
!2726 = !DILocation(line: 0, scope: !1110, inlinedAt: !2719)
!2727 = !DILocation(line: 0, scope: !1113, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 611, column: 25, scope: !2696)
!2729 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2728)
!2730 = !DILocation(line: 611, column: 78, scope: !2696)
!2731 = !DILocation(line: 611, column: 69, scope: !2696)
!2732 = !DILocation(line: 611, column: 90, scope: !2696)
!2733 = !DILocation(line: 0, scope: !2148, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 611, column: 66, scope: !2696)
!2735 = !DILocation(line: 88, column: 15, scope: !2148, inlinedAt: !2734)
!2736 = !DILocation(line: 0, scope: !1113, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 611, column: 98, scope: !2696)
!2738 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2737)
!2739 = !DILocation(line: 0, scope: !1122, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 611, column: 5, scope: !2696)
!2741 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2740)
!2742 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2740)
!2743 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2740)
!2744 = !DILocation(line: 0, scope: !1136, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2740)
!2746 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2745)
!2747 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2745)
!2748 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2745)
!2749 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !2740)
!2750 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !2740)
!2751 = !DILocation(line: 0, scope: !2170, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 615, column: 1, scope: !2696)
!2753 = !DILocation(line: 408, column: 9, scope: !2175, inlinedAt: !2752)
!2754 = !DILocation(line: 615, column: 1, scope: !2696)
!2755 = distinct !DISubprogram(name: "halide_metal_device_release", scope: !6, file: !6, line: 617, type: !315, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !2756)
!2756 = !{!2757, !2758, !2759, !2760}
!2757 = !DILocalVariable(name: "user_context", arg: 1, scope: !2755, file: !6, line: 617, type: !99)
!2758 = !DILocalVariable(name: "error", scope: !2755, file: !6, line: 620, type: !57)
!2759 = !DILocalVariable(name: "acquired_device", scope: !2755, file: !6, line: 621, type: !25)
!2760 = !DILocalVariable(name: "acquired_queue", scope: !2755, file: !6, line: 622, type: !31)
!2761 = !DILocation(line: 0, scope: !2755)
!2762 = !DILocation(line: 621, column: 5, scope: !2755)
!2763 = !DILocation(line: 622, column: 5, scope: !2755)
!2764 = !DILocation(line: 623, column: 13, scope: !2755)
!2765 = !DILocation(line: 624, column: 15, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2755, file: !6, line: 624, column: 9)
!2767 = !DILocation(line: 624, column: 9, scope: !2755)
!2768 = !DILocation(line: 628, column: 9, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2755, file: !6, line: 628, column: 9)
!2770 = !DILocation(line: 628, column: 9, scope: !2755)
!2771 = !DILocation(line: 629, column: 43, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2769, file: !6, line: 628, column: 26)
!2773 = !DILocation(line: 629, column: 9, scope: !2772)
!2774 = !DILocation(line: 0, scope: !1096, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 631, column: 9, scope: !2772)
!2776 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2775)
!2777 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2775)
!2778 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2775)
!2779 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2775)
!2780 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2775)
!2781 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2775)
!2782 = !DILocation(line: 0, scope: !1110, inlinedAt: !2775)
!2783 = !DILocation(line: 0, scope: !1113, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 631, column: 29, scope: !2772)
!2785 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2784)
!2786 = !DILocation(line: 631, column: 71, scope: !2772)
!2787 = !DILocation(line: 0, scope: !1891, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 631, column: 68, scope: !2772)
!2789 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !2788)
!2790 = !DILocation(line: 0, scope: !1113, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 631, column: 87, scope: !2772)
!2792 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2791)
!2793 = !DILocation(line: 0, scope: !1122, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 631, column: 9, scope: !2772)
!2795 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2794)
!2796 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2794)
!2797 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2794)
!2798 = !DILocation(line: 0, scope: !1136, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2794)
!2800 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2799)
!2801 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2799)
!2802 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2799)
!2803 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !2794)
!2804 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !2794)
!2805 = !DILocation(line: 632, column: 56, scope: !2772)
!2806 = !DILocalVariable(name: "this", arg: 1, scope: !2807, type: !2384, flags: DIFlagArtificial | DIFlagObjectPointer)
!2807 = distinct !DISubprogram(name: "delete_context<void (void *)>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE14delete_contextIFvPvEEEvSB_S3_RT_", scope: !36, file: !37, line: 158, type: !2808, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, templateParams: !2812, declaration: !2811, retainedNodes: !2814)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !88, !99, !64, !2810}
!2810 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2184, size: 64)
!2811 = !DISubprogram(name: "delete_context<void (void *)>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE14delete_contextIFvPvEEEvSB_S3_RT_", scope: !36, file: !37, line: 158, type: !2808, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2812)
!2812 = !{!2813}
!2813 = !DITemplateTypeParameter(name: "FreeModuleT", type: !2184)
!2814 = !{!2806, !2815, !2816, !2817, !2818}
!2815 = !DILocalVariable(name: "user_context", arg: 2, scope: !2807, file: !37, line: 158, type: !99)
!2816 = !DILocalVariable(name: "context", arg: 3, scope: !2807, file: !37, line: 158, type: !64)
!2817 = !DILocalVariable(name: "f", arg: 4, scope: !2807, file: !37, line: 158, type: !2810)
!2818 = !DILocalVariable(name: "lock_guard", scope: !2807, file: !37, line: 159, type: !2394)
!2819 = !DILocation(line: 0, scope: !2807, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 632, column: 27, scope: !2772)
!2821 = !DILocation(line: 0, scope: !2412, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 159, column: 25, scope: !2807, inlinedAt: !2820)
!2823 = !DILocation(line: 16, column: 9, scope: !2419, inlinedAt: !2822)
!2824 = !DILocation(line: 161, column: 9, scope: !2807, inlinedAt: !2820)
!2825 = !DILocation(line: 0, scope: !2584, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 162, column: 5, scope: !2807, inlinedAt: !2820)
!2827 = !DILocation(line: 20, column: 9, scope: !2589, inlinedAt: !2826)
!2828 = !DILocation(line: 635, column: 13, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2772, file: !6, line: 635, column: 13)
!2830 = !DILocation(line: 635, column: 32, scope: !2829)
!2831 = !DILocation(line: 635, column: 29, scope: !2829)
!2832 = !DILocation(line: 635, column: 13, scope: !2772)
!2833 = !DILocation(line: 0, scope: !1096, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 636, column: 13, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2829, file: !6, line: 635, column: 40)
!2836 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2834)
!2837 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2834)
!2838 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2834)
!2839 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2834)
!2840 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2834)
!2841 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2834)
!2842 = !DILocation(line: 0, scope: !1110, inlinedAt: !2834)
!2843 = !DILocation(line: 0, scope: !1113, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 636, column: 33, scope: !2835)
!2845 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2844)
!2846 = !DILocation(line: 636, column: 79, scope: !2835)
!2847 = !DILocation(line: 0, scope: !1891, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 636, column: 76, scope: !2835)
!2849 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !2848)
!2850 = !DILocation(line: 0, scope: !1113, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 636, column: 85, scope: !2835)
!2852 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2851)
!2853 = !DILocation(line: 0, scope: !1122, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 636, column: 13, scope: !2835)
!2855 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2854)
!2856 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2854)
!2857 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2854)
!2858 = !DILocation(line: 0, scope: !1136, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2854)
!2860 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2859)
!2861 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2859)
!2862 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2859)
!2863 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !2854)
!2864 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !2854)
!2865 = !DILocation(line: 637, column: 31, scope: !2835)
!2866 = !DILocation(line: 637, column: 13, scope: !2835)
!2867 = !DILocation(line: 638, column: 19, scope: !2835)
!2868 = !DILocation(line: 0, scope: !1096, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 640, column: 13, scope: !2835)
!2870 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2869)
!2871 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2869)
!2872 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2869)
!2873 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2869)
!2874 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2869)
!2875 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2869)
!2876 = !DILocation(line: 0, scope: !1110, inlinedAt: !2869)
!2877 = !DILocation(line: 0, scope: !1113, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 640, column: 33, scope: !2835)
!2879 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2878)
!2880 = !DILocation(line: 640, column: 90, scope: !2835)
!2881 = !DILocation(line: 0, scope: !1891, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 640, column: 87, scope: !2835)
!2883 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !2882)
!2884 = !DILocation(line: 0, scope: !1113, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 640, column: 97, scope: !2835)
!2886 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2885)
!2887 = !DILocation(line: 0, scope: !1122, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 640, column: 13, scope: !2835)
!2889 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !2888)
!2890 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !2888)
!2891 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !2888)
!2892 = !DILocation(line: 0, scope: !1136, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !2888)
!2894 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !2893)
!2895 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !2893)
!2896 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !2893)
!2897 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !2888)
!2898 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !2888)
!2899 = !DILocation(line: 641, column: 31, scope: !2835)
!2900 = !DILocation(line: 641, column: 13, scope: !2835)
!2901 = !DILocation(line: 642, column: 20, scope: !2835)
!2902 = !DILocation(line: 643, column: 9, scope: !2835)
!2903 = !DILocation(line: 646, column: 5, scope: !2755)
!2904 = !DILocation(line: 648, column: 5, scope: !2755)
!2905 = !DILocation(line: 649, column: 1, scope: !2755)
!2906 = distinct !DISubprogram(name: "halide_metal_copy_to_device", scope: !6, file: !6, line: 651, type: !1864, scopeLine: 651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !2907)
!2907 = !{!2908, !2909, !2910, !2911, !2912, !2913, !2914, !2917, !2918}
!2908 = !DILocalVariable(name: "user_context", arg: 1, scope: !2906, file: !6, line: 651, type: !99)
!2909 = !DILocalVariable(name: "buffer", arg: 2, scope: !2906, file: !6, line: 651, type: !915)
!2910 = !DILocalVariable(name: "t_before", scope: !2906, file: !6, line: 653, type: !48)
!2911 = !DILocalVariable(name: "metal_context", scope: !2906, file: !6, line: 656, type: !947)
!2912 = !DILocalVariable(name: "c", scope: !2906, file: !6, line: 663, type: !1004)
!2913 = !DILocalVariable(name: "metal_buffer", scope: !2906, file: !6, line: 664, type: !523)
!2914 = !DILocalVariable(name: "total_size", scope: !2915, file: !6, line: 674, type: !248)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !6, line: 673, column: 42)
!2916 = distinct !DILexicalBlock(scope: !2906, file: !6, line: 673, column: 9)
!2917 = !DILocalVariable(name: "total_extent", scope: !2915, file: !6, line: 676, type: !654)
!2918 = !DILocalVariable(name: "t_after", scope: !2906, file: !6, line: 684, type: !48)
!2919 = !DILocation(line: 0, scope: !2906)
!2920 = !DILocation(line: 653, column: 25, scope: !2906)
!2921 = !DILocation(line: 656, column: 5, scope: !2906)
!2922 = !DILocation(line: 656, column: 24, scope: !2906)
!2923 = !DILocation(line: 0, scope: !2042, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 656, column: 24, scope: !2906)
!2925 = !DILocation(line: 405, column: 9, scope: !2049, inlinedAt: !2924)
!2926 = !DILocation(line: 657, column: 23, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2906, file: !6, line: 657, column: 9)
!2928 = !DILocation(line: 657, column: 29, scope: !2927)
!2929 = !DILocation(line: 657, column: 9, scope: !2906)
!2930 = !DILocation(line: 661, column: 5, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !6, line: 661, column: 5)
!2932 = distinct !DILexicalBlock(scope: !2906, file: !6, line: 661, column: 5)
!2933 = !DILocation(line: 661, column: 5, scope: !2932)
!2934 = !DILocation(line: 661, column: 5, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2931, file: !6, line: 661, column: 5)
!2936 = !DILocation(line: 663, column: 5, scope: !2906)
!2937 = !DILocation(line: 663, column: 17, scope: !2906)
!2938 = !DILocation(line: 663, column: 21, scope: !2906)
!2939 = !DILocation(line: 664, column: 52, scope: !2906)
!2940 = !DILocation(line: 664, column: 33, scope: !2906)
!2941 = !DILocation(line: 664, column: 58, scope: !2906)
!2942 = !DILocation(line: 665, column: 23, scope: !2906)
!2943 = !DILocation(line: 665, column: 13, scope: !2906)
!2944 = !DILocation(line: 665, column: 75, scope: !2906)
!2945 = !DILocation(line: 665, column: 56, scope: !2906)
!2946 = !DILocation(line: 665, column: 81, scope: !2906)
!2947 = !DILocation(line: 665, column: 53, scope: !2906)
!2948 = !DILocation(line: 665, column: 11, scope: !2906)
!2949 = !DILocation(line: 667, column: 5, scope: !2906)
!2950 = !DILocation(line: 0, scope: !1096, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 667, column: 5, scope: !2906)
!2952 = !DILocation(line: 38, column: 11, scope: !1096, inlinedAt: !2951)
!2953 = !{!2954, !1191, i64 24}
!2954 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEE", !1191, i64 0, !1191, i64 8, !1191, i64 16, !1191, i64 24, !2955, i64 32, !1034, i64 33}
!2955 = !{!"bool", !1034, i64 0}
!2956 = !DILocation(line: 38, column: 30, scope: !1096, inlinedAt: !2951)
!2957 = !{!2954, !2955, i64 32}
!2958 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !2951)
!2959 = !DILocation(line: 44, column: 13, scope: !1105, inlinedAt: !2951)
!2960 = !DILocation(line: 44, column: 17, scope: !1105, inlinedAt: !2951)
!2961 = !{!2954, !1191, i64 0}
!2962 = !DILocation(line: 47, column: 9, scope: !1108, inlinedAt: !2951)
!2963 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !2951)
!2964 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !2951)
!2965 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !2951)
!2966 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !2951)
!2967 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !2951)
!2968 = !DILocation(line: 0, scope: !1110, inlinedAt: !2951)
!2969 = !DILocation(line: 53, column: 13, scope: !2970, inlinedAt: !2951)
!2970 = distinct !DILexicalBlock(scope: !1110, file: !395, line: 51, column: 16)
!2971 = !DILocation(line: 53, column: 17, scope: !2970, inlinedAt: !2951)
!2972 = !DILocation(line: 0, scope: !1113, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 667, column: 25, scope: !2906)
!2974 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2973)
!2975 = !DILocation(line: 667, column: 84, scope: !2906)
!2976 = !DILocation(line: 667, column: 68, scope: !2906)
!2977 = !DILocation(line: 0, scope: !1891, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 667, column: 65, scope: !2906)
!2979 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !2978)
!2980 = !DILocation(line: 0, scope: !1113, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 668, column: 25, scope: !2906)
!2982 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2981)
!2983 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !2981)
!2984 = !{!2954, !1191, i64 8}
!2985 = !DILocation(line: 668, column: 50, scope: !2906)
!2986 = !DILocation(line: 0, scope: !1891, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 668, column: 47, scope: !2906)
!2988 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !2987)
!2989 = !DILocation(line: 0, scope: !1113, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 669, column: 25, scope: !2906)
!2991 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2990)
!2992 = !DILocation(line: 669, column: 50, scope: !2906)
!2993 = !DILocation(line: 0, scope: !1891, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 669, column: 39, scope: !2906)
!2995 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !2994)
!2996 = !DILocation(line: 0, scope: !1113, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 669, column: 55, scope: !2906)
!2998 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !2997)
!2999 = !DILocation(line: 0, scope: !1122, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 667, column: 5, scope: !2906)
!3001 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !3000)
!3002 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3000)
!3003 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3000)
!3004 = !DILocation(line: 0, scope: !1136, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3000)
!3006 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3005)
!3007 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3005)
!3008 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3005)
!3009 = !DILocation(line: 174, column: 30, scope: !1145, inlinedAt: !3000)
!3010 = !DILocation(line: 174, column: 44, scope: !1145, inlinedAt: !3000)
!3011 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !3000)
!3012 = !DILocation(line: 180, column: 13, scope: !1150, inlinedAt: !3000)
!3013 = !{i8 0, i8 2}
!3014 = !DILocation(line: 180, column: 21, scope: !1150, inlinedAt: !3000)
!3015 = !DILocation(line: 180, column: 24, scope: !1150, inlinedAt: !3000)
!3016 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !3000)
!3017 = !DILocation(line: 182, column: 9, scope: !1149, inlinedAt: !3000)
!3018 = !DILocation(line: 671, column: 5, scope: !2906)
!3019 = !DILocation(line: 673, column: 9, scope: !2916)
!3020 = !DILocation(line: 673, column: 9, scope: !2906)
!3021 = !DILocation(line: 0, scope: !1920, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 674, column: 37, scope: !2915)
!3023 = !DILocation(line: 0, scope: !1925, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 1519, column: 25, scope: !1920, inlinedAt: !3022)
!3025 = !DILocation(line: 0, scope: !1929, inlinedAt: !3024)
!3026 = !DILocation(line: 1508, column: 29, scope: !1934, inlinedAt: !3024)
!3027 = !DILocation(line: 1508, column: 27, scope: !1934, inlinedAt: !3024)
!3028 = !DILocation(line: 1508, column: 9, scope: !1929, inlinedAt: !3024)
!3029 = !DILocation(line: 0, scope: !1208, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 1514, column: 36, scope: !1925, inlinedAt: !3024)
!3031 = !DILocation(line: 482, column: 17, scope: !1208, inlinedAt: !3030)
!3032 = !DILocation(line: 0, scope: !1941, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 1519, column: 33, scope: !1920, inlinedAt: !3022)
!3034 = !DILocation(line: 0, scope: !1945, inlinedAt: !3033)
!3035 = !DILocation(line: 1497, column: 9, scope: !1945, inlinedAt: !3033)
!3036 = !DILocation(line: 1509, column: 24, scope: !1951, inlinedAt: !3024)
!3037 = !DILocation(line: 1509, column: 31, scope: !1951, inlinedAt: !3024)
!3038 = !DILocation(line: 1509, column: 17, scope: !1952, inlinedAt: !3024)
!3039 = !DILocation(line: 1510, column: 37, scope: !1956, inlinedAt: !3024)
!3040 = !DILocation(line: 1510, column: 61, scope: !1956, inlinedAt: !3024)
!3041 = !DILocation(line: 1510, column: 68, scope: !1956, inlinedAt: !3024)
!3042 = !DILocation(line: 1510, column: 53, scope: !1956, inlinedAt: !3024)
!3043 = !DILocation(line: 1510, column: 51, scope: !1956, inlinedAt: !3024)
!3044 = !DILocation(line: 1510, column: 23, scope: !1956, inlinedAt: !3024)
!3045 = !DILocation(line: 1511, column: 13, scope: !1956, inlinedAt: !3024)
!3046 = !DILocation(line: 1508, column: 42, scope: !1934, inlinedAt: !3024)
!3047 = distinct !{!3047, !3028, !3048, !1042}
!3048 = !DILocation(line: 1512, column: 9, scope: !1929, inlinedAt: !3024)
!3049 = !DILocation(line: 1498, column: 24, scope: !1967, inlinedAt: !3033)
!3050 = !DILocation(line: 1498, column: 31, scope: !1967, inlinedAt: !3033)
!3051 = !DILocation(line: 1498, column: 17, scope: !1968, inlinedAt: !3033)
!3052 = !DILocation(line: 1499, column: 37, scope: !1973, inlinedAt: !3033)
!3053 = !DILocation(line: 1499, column: 61, scope: !1973, inlinedAt: !3033)
!3054 = !DILocation(line: 1499, column: 68, scope: !1973, inlinedAt: !3033)
!3055 = !DILocation(line: 1499, column: 53, scope: !1973, inlinedAt: !3033)
!3056 = !DILocation(line: 1499, column: 51, scope: !1973, inlinedAt: !3033)
!3057 = !DILocation(line: 1499, column: 23, scope: !1973, inlinedAt: !3033)
!3058 = !DILocation(line: 1500, column: 13, scope: !1973, inlinedAt: !3033)
!3059 = !DILocation(line: 1497, column: 42, scope: !1969, inlinedAt: !3033)
!3060 = !DILocation(line: 1497, column: 27, scope: !1969, inlinedAt: !3033)
!3061 = distinct !{!3061, !3035, !3062, !1042}
!3062 = !DILocation(line: 1501, column: 9, scope: !1945, inlinedAt: !3033)
!3063 = !DILocation(line: 482, column: 22, scope: !1208, inlinedAt: !3030)
!3064 = !DILocation(line: 482, column: 27, scope: !1208, inlinedAt: !3030)
!3065 = !DILocation(line: 1513, column: 15, scope: !1925, inlinedAt: !3024)
!3066 = !DILocation(line: 0, scope: !1208, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 1502, column: 36, scope: !1941, inlinedAt: !3033)
!3068 = !DILocation(line: 1519, column: 31, scope: !1920, inlinedAt: !3022)
!3069 = !DILocation(line: 0, scope: !2915)
!3070 = !DILocation(line: 675, column: 9, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !6, line: 675, column: 9)
!3072 = distinct !DILexicalBlock(scope: !2915, file: !6, line: 675, column: 9)
!3073 = !DILocation(line: 675, column: 9, scope: !3072)
!3074 = !DILocation(line: 675, column: 9, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3071, file: !6, line: 675, column: 9)
!3076 = !DILocation(line: 679, column: 40, scope: !2915)
!3077 = !{i64 0, i64 8, !1507}
!3078 = !DILocation(line: 679, column: 9, scope: !2915)
!3079 = !DILocation(line: 680, column: 5, scope: !2915)
!3080 = !DILocation(line: 681, column: 53, scope: !2906)
!3081 = !DILocation(line: 681, column: 5, scope: !2906)
!3082 = !DILocation(line: 684, column: 24, scope: !2906)
!3083 = !DILocation(line: 0, scope: !1096, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 685, column: 5, scope: !2906)
!3085 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3084)
!3086 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3084)
!3087 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3084)
!3088 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3084)
!3089 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3084)
!3090 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !3084)
!3091 = !DILocation(line: 0, scope: !1110, inlinedAt: !3084)
!3092 = !DILocation(line: 0, scope: !1113, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 685, column: 25, scope: !2906)
!3094 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3093)
!3095 = !DILocation(line: 686, column: 37, scope: !2906)
!3096 = !DILocation(line: 686, column: 28, scope: !2906)
!3097 = !DILocation(line: 686, column: 49, scope: !2906)
!3098 = !DILocation(line: 0, scope: !2148, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 686, column: 25, scope: !2906)
!3100 = !DILocation(line: 88, column: 15, scope: !2148, inlinedAt: !3099)
!3101 = !DILocation(line: 0, scope: !1113, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 686, column: 57, scope: !2906)
!3103 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3102)
!3104 = !DILocation(line: 0, scope: !1122, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 685, column: 5, scope: !2906)
!3106 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !3105)
!3107 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3105)
!3108 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3105)
!3109 = !DILocation(line: 0, scope: !1136, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3105)
!3111 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3110)
!3112 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3110)
!3113 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3110)
!3114 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !3105)
!3115 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !3105)
!3116 = !DILocation(line: 690, column: 1, scope: !2906)
!3117 = !DILocation(line: 0, scope: !2170, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 690, column: 1, scope: !2906)
!3119 = !DILocation(line: 408, column: 9, scope: !2175, inlinedAt: !3118)
!3120 = distinct !DISubprogram(name: "halide_metal_copy_to_host", scope: !6, file: !6, line: 692, type: !1864, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !3121)
!3121 = !{!3122, !3123, !3124, !3125, !3126, !3127}
!3122 = !DILocalVariable(name: "user_context", arg: 1, scope: !3120, file: !6, line: 692, type: !99)
!3123 = !DILocalVariable(name: "buffer", arg: 2, scope: !3120, file: !6, line: 692, type: !915)
!3124 = !DILocalVariable(name: "t_before", scope: !3120, file: !6, line: 694, type: !48)
!3125 = !DILocalVariable(name: "metal_context", scope: !3120, file: !6, line: 697, type: !947)
!3126 = !DILocalVariable(name: "c", scope: !3120, file: !6, line: 710, type: !1004)
!3127 = !DILocalVariable(name: "t_after", scope: !3120, file: !6, line: 716, type: !48)
!3128 = !DILocation(line: 0, scope: !3120)
!3129 = !DILocation(line: 694, column: 25, scope: !3120)
!3130 = !DILocation(line: 697, column: 5, scope: !3120)
!3131 = !DILocation(line: 697, column: 24, scope: !3120)
!3132 = !DILocation(line: 0, scope: !2042, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 697, column: 24, scope: !3120)
!3134 = !DILocation(line: 405, column: 9, scope: !2049, inlinedAt: !3133)
!3135 = !DILocation(line: 698, column: 23, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3120, file: !6, line: 698, column: 9)
!3137 = !DILocation(line: 698, column: 29, scope: !3136)
!3138 = !DILocation(line: 698, column: 9, scope: !3120)
!3139 = !DILocation(line: 702, column: 53, scope: !3120)
!3140 = !DILocation(line: 702, column: 5, scope: !3120)
!3141 = !DILocation(line: 704, column: 5, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !6, line: 704, column: 5)
!3143 = distinct !DILexicalBlock(scope: !3120, file: !6, line: 704, column: 5)
!3144 = !DILocation(line: 704, column: 5, scope: !3143)
!3145 = !DILocation(line: 704, column: 5, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3142, file: !6, line: 704, column: 5)
!3147 = !DILocation(line: 705, column: 5, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !6, line: 705, column: 5)
!3149 = distinct !DILexicalBlock(scope: !3120, file: !6, line: 705, column: 5)
!3150 = !DILocation(line: 705, column: 5, scope: !3149)
!3151 = !DILocation(line: 705, column: 5, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3148, file: !6, line: 705, column: 5)
!3153 = !DILocation(line: 706, column: 17, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3120, file: !6, line: 706, column: 9)
!3155 = !DILocation(line: 706, column: 28, scope: !3154)
!3156 = !DILocation(line: 706, column: 9, scope: !3120)
!3157 = !DILocation(line: 710, column: 5, scope: !3120)
!3158 = !DILocation(line: 710, column: 17, scope: !3120)
!3159 = !DILocation(line: 710, column: 21, scope: !3120)
!3160 = !DILocation(line: 711, column: 59, scope: !3120)
!3161 = !DILocation(line: 711, column: 40, scope: !3120)
!3162 = !DILocation(line: 711, column: 65, scope: !3120)
!3163 = !DILocation(line: 711, column: 23, scope: !3120)
!3164 = !DILocation(line: 711, column: 13, scope: !3120)
!3165 = !DILocation(line: 711, column: 92, scope: !3120)
!3166 = !DILocation(line: 711, column: 73, scope: !3120)
!3167 = !DILocation(line: 711, column: 98, scope: !3120)
!3168 = !DILocation(line: 711, column: 70, scope: !3120)
!3169 = !DILocation(line: 711, column: 11, scope: !3120)
!3170 = !DILocation(line: 713, column: 5, scope: !3120)
!3171 = !DILocation(line: 716, column: 24, scope: !3120)
!3172 = !DILocation(line: 0, scope: !1096, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 717, column: 5, scope: !3120)
!3174 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3173)
!3175 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3173)
!3176 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3173)
!3177 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3173)
!3178 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3173)
!3179 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !3173)
!3180 = !DILocation(line: 0, scope: !1110, inlinedAt: !3173)
!3181 = !DILocation(line: 0, scope: !1113, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 717, column: 25, scope: !3120)
!3183 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3182)
!3184 = !DILocation(line: 717, column: 79, scope: !3120)
!3185 = !DILocation(line: 717, column: 70, scope: !3120)
!3186 = !DILocation(line: 717, column: 91, scope: !3120)
!3187 = !DILocation(line: 0, scope: !2148, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 717, column: 67, scope: !3120)
!3189 = !DILocation(line: 88, column: 15, scope: !2148, inlinedAt: !3188)
!3190 = !DILocation(line: 0, scope: !1113, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 717, column: 99, scope: !3120)
!3192 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3191)
!3193 = !DILocation(line: 0, scope: !1122, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 717, column: 5, scope: !3120)
!3195 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !3194)
!3196 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3194)
!3197 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3194)
!3198 = !DILocation(line: 0, scope: !1136, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3194)
!3200 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3199)
!3201 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3199)
!3202 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3199)
!3203 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !3194)
!3204 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !3194)
!3205 = !DILocation(line: 721, column: 1, scope: !3120)
!3206 = !DILocation(line: 0, scope: !2170, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 721, column: 1, scope: !3120)
!3208 = !DILocation(line: 408, column: 9, scope: !2175, inlinedAt: !3207)
!3209 = !DILocation(line: 0, scope: !332)
!3210 = !DILocation(line: 737, column: 25, scope: !332)
!3211 = !DILocation(line: 740, column: 5, scope: !332)
!3212 = !DILocation(line: 740, column: 24, scope: !332)
!3213 = !DILocation(line: 0, scope: !2042, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 740, column: 24, scope: !332)
!3215 = !DILocation(line: 405, column: 9, scope: !2049, inlinedAt: !3214)
!3216 = !DILocation(line: 741, column: 23, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !332, file: !6, line: 741, column: 9)
!3218 = !DILocation(line: 741, column: 29, scope: !3217)
!3219 = !DILocation(line: 741, column: 9, scope: !332)
!3220 = !DILocation(line: 745, column: 75, scope: !332)
!3221 = !DILocation(line: 745, column: 94, scope: !332)
!3222 = !DILocation(line: 745, column: 42, scope: !332)
!3223 = !DILocation(line: 746, column: 24, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !332, file: !6, line: 746, column: 9)
!3225 = !DILocation(line: 746, column: 9, scope: !332)
!3226 = !DILocation(line: 0, scope: !1689, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 747, column: 9, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3224, file: !6, line: 746, column: 36)
!3229 = !DILocation(line: 44, column: 27, scope: !1771, inlinedAt: !3227)
!3230 = !DILocation(line: 48, column: 13, scope: !1720, inlinedAt: !3227)
!3231 = !DILocation(line: 48, column: 13, scope: !1698, inlinedAt: !3227)
!3232 = !DILocation(line: 0, scope: !1700, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 747, column: 29, scope: !3228)
!3234 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !3233)
!3235 = !DILocation(line: 0, scope: !1709, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 747, column: 9, scope: !3228)
!3237 = !DILocation(line: 168, column: 13, scope: !1714, inlinedAt: !3236)
!3238 = !DILocation(line: 169, column: 9, scope: !1714, inlinedAt: !3236)
!3239 = !DILocation(line: 49, column: 23, scope: !1719, inlinedAt: !3227)
!3240 = !DILocation(line: 50, column: 18, scope: !1719, inlinedAt: !3227)
!3241 = !DILocation(line: 0, scope: !1723, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 170, column: 13, scope: !1727, inlinedAt: !3236)
!3243 = !DILocation(line: 163, column: 81, scope: !1723, inlinedAt: !3242)
!3244 = !DILocation(line: 163, column: 87, scope: !1723, inlinedAt: !3242)
!3245 = !DILocation(line: 163, column: 15, scope: !1723, inlinedAt: !3242)
!3246 = !DILocation(line: 172, column: 17, scope: !1732, inlinedAt: !3236)
!3247 = !DILocation(line: 181, column: 13, scope: !1735, inlinedAt: !3236)
!3248 = !DILocation(line: 748, column: 9, scope: !3228)
!3249 = !DILocation(line: 751, column: 44, scope: !332)
!3250 = !DILocation(line: 752, column: 17, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !332, file: !6, line: 752, column: 9)
!3252 = !DILocation(line: 752, column: 9, scope: !332)
!3253 = !DILocation(line: 0, scope: !1689, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 753, column: 9, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3251, file: !6, line: 752, column: 29)
!3256 = !DILocation(line: 44, column: 27, scope: !1771, inlinedAt: !3254)
!3257 = !DILocation(line: 48, column: 13, scope: !1720, inlinedAt: !3254)
!3258 = !DILocation(line: 48, column: 13, scope: !1698, inlinedAt: !3254)
!3259 = !DILocation(line: 0, scope: !1700, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 753, column: 29, scope: !3255)
!3261 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !3260)
!3262 = !DILocation(line: 0, scope: !1709, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 753, column: 9, scope: !3255)
!3264 = !DILocation(line: 168, column: 13, scope: !1714, inlinedAt: !3263)
!3265 = !DILocation(line: 169, column: 9, scope: !1714, inlinedAt: !3263)
!3266 = !DILocation(line: 49, column: 23, scope: !1719, inlinedAt: !3254)
!3267 = !DILocation(line: 50, column: 18, scope: !1719, inlinedAt: !3254)
!3268 = !DILocation(line: 0, scope: !1723, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 170, column: 13, scope: !1727, inlinedAt: !3263)
!3270 = !DILocation(line: 163, column: 81, scope: !1723, inlinedAt: !3269)
!3271 = !DILocation(line: 163, column: 87, scope: !1723, inlinedAt: !3269)
!3272 = !DILocation(line: 163, column: 15, scope: !1723, inlinedAt: !3269)
!3273 = !DILocation(line: 172, column: 17, scope: !1732, inlinedAt: !3263)
!3274 = !DILocation(line: 181, column: 13, scope: !1735, inlinedAt: !3263)
!3275 = !DILocation(line: 754, column: 9, scope: !3255)
!3276 = !DILocation(line: 758, column: 57, scope: !332)
!3277 = !DILocalVariable(name: "this", arg: 1, scope: !3278, type: !2384, flags: DIFlagArtificial | DIFlagObjectPointer)
!3278 = distinct !DISubprogram(name: "lookup", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6lookupES3_PvRS8_", scope: !36, file: !37, line: 97, type: !97, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !96, retainedNodes: !3279)
!3279 = !{!3277, !3280, !3281, !3282, !3283, !3284, !3285}
!3280 = !DILocalVariable(name: "context", arg: 2, scope: !3278, file: !37, line: 97, type: !64)
!3281 = !DILocalVariable(name: "state_ptr", arg: 3, scope: !3278, file: !37, line: 97, type: !99)
!3282 = !DILocalVariable(name: "module_state", arg: 4, scope: !3278, file: !37, line: 97, type: !100)
!3283 = !DILocalVariable(name: "lock_guard", scope: !3278, file: !37, line: 98, type: !2394)
!3284 = !DILocalVariable(name: "id", scope: !3278, file: !37, line: 99, type: !69)
!3285 = !DILocalVariable(name: "mod_ptr", scope: !3278, file: !37, line: 100, type: !95)
!3286 = !DILocation(line: 0, scope: !3278, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 758, column: 36, scope: !332)
!3288 = !DILocation(line: 0, scope: !2412, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 98, column: 25, scope: !3278, inlinedAt: !3287)
!3290 = !DILocation(line: 16, column: 9, scope: !2419, inlinedAt: !3289)
!3291 = !DILocation(line: 99, column: 33, scope: !3278, inlinedAt: !3287)
!3292 = !DILocation(line: 0, scope: !2437, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 101, column: 13, scope: !3294, inlinedAt: !3287)
!3294 = distinct !DILexicalBlock(scope: !3278, file: !37, line: 101, column: 13)
!3295 = !DILocation(line: 75, column: 13, scope: !2452, inlinedAt: !3293)
!3296 = !DILocation(line: 75, column: 36, scope: !2452, inlinedAt: !3293)
!3297 = !DILocation(line: 75, column: 13, scope: !2437, inlinedAt: !3293)
!3298 = !DILocation(line: 0, scope: !2457, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 78, column: 27, scope: !2437, inlinedAt: !3293)
!3300 = !DILocation(line: 37, column: 26, scope: !2457, inlinedAt: !3299)
!3301 = !DILocation(line: 37, column: 47, scope: !2457, inlinedAt: !3299)
!3302 = !DILocation(line: 37, column: 45, scope: !2457, inlinedAt: !3299)
!3303 = !DILocation(line: 41, column: 26, scope: !2468, inlinedAt: !3299)
!3304 = !DILocation(line: 41, column: 66, scope: !2468, inlinedAt: !3299)
!3305 = !DILocation(line: 41, column: 59, scope: !2468, inlinedAt: !3299)
!3306 = !DILocation(line: 0, scope: !2445, inlinedAt: !3293)
!3307 = !DILocation(line: 79, column: 32, scope: !2448, inlinedAt: !3293)
!3308 = !DILocation(line: 79, column: 27, scope: !2448, inlinedAt: !3293)
!3309 = !DILocation(line: 79, column: 9, scope: !2445, inlinedAt: !3293)
!3310 = distinct !{!3310, !3309, !3311, !1042}
!3311 = !DILocation(line: 93, column: 9, scope: !2445, inlinedAt: !3293)
!3312 = !DILocation(line: 80, column: 48, scope: !2447, inlinedAt: !3293)
!3313 = !DILocation(line: 80, column: 53, scope: !2447, inlinedAt: !3293)
!3314 = !DILocation(line: 0, scope: !2447, inlinedAt: !3293)
!3315 = !DILocation(line: 82, column: 47, scope: !2483, inlinedAt: !3293)
!3316 = !DILocation(line: 82, column: 57, scope: !2483, inlinedAt: !3293)
!3317 = !DILocation(line: 82, column: 17, scope: !2447, inlinedAt: !3293)
!3318 = !DILocation(line: 85, column: 47, scope: !2489, inlinedAt: !3293)
!3319 = !DILocation(line: 85, column: 55, scope: !2489, inlinedAt: !3293)
!3320 = !DILocation(line: 85, column: 66, scope: !2489, inlinedAt: !3293)
!3321 = !DILocation(line: 79, column: 61, scope: !2448, inlinedAt: !3293)
!3322 = !DILocation(line: 101, column: 13, scope: !3278, inlinedAt: !3287)
!3323 = !DILocation(line: 0, scope: !2584, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 106, column: 5, scope: !3278, inlinedAt: !3287)
!3325 = !DILocation(line: 20, column: 9, scope: !2589, inlinedAt: !3324)
!3326 = !DILocation(line: 759, column: 5, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !6, line: 759, column: 5)
!3328 = distinct !DILexicalBlock(scope: !332, file: !6, line: 759, column: 5)
!3329 = !DILocation(line: 87, column: 63, scope: !2497, inlinedAt: !3293)
!3330 = !DILocation(line: 102, column: 28, scope: !3331, inlinedAt: !3287)
!3331 = distinct !DILexicalBlock(scope: !3294, file: !37, line: 101, column: 53)
!3332 = !DILocation(line: 759, column: 5, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3327, file: !6, line: 759, column: 5)
!3334 = !DILocation(line: 761, column: 74, scope: !332)
!3335 = !DILocation(line: 761, column: 30, scope: !332)
!3336 = !DILocation(line: 762, column: 18, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !332, file: !6, line: 762, column: 9)
!3338 = !DILocation(line: 762, column: 9, scope: !332)
!3339 = !DILocation(line: 0, scope: !1689, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 763, column: 9, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3337, file: !6, line: 762, column: 30)
!3342 = !DILocation(line: 44, column: 27, scope: !1771, inlinedAt: !3340)
!3343 = !DILocation(line: 48, column: 13, scope: !1720, inlinedAt: !3340)
!3344 = !DILocation(line: 48, column: 13, scope: !1698, inlinedAt: !3340)
!3345 = !DILocation(line: 49, column: 23, scope: !1719, inlinedAt: !3340)
!3346 = !DILocation(line: 50, column: 18, scope: !1719, inlinedAt: !3340)
!3347 = !DILocation(line: 51, column: 9, scope: !1719, inlinedAt: !3340)
!3348 = !DILocation(line: 0, scope: !1720, inlinedAt: !3340)
!3349 = !DILocation(line: 0, scope: !1700, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 763, column: 29, scope: !3341)
!3351 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !3350)
!3352 = !DILocation(line: 0, scope: !1700, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 763, column: 65, scope: !3341)
!3354 = !DILocation(line: 59, column: 17, scope: !1707, inlinedAt: !3353)
!3355 = !DILocation(line: 59, column: 13, scope: !1700, inlinedAt: !3353)
!3356 = !DILocation(line: 60, column: 19, scope: !3357, inlinedAt: !3353)
!3357 = distinct !DILexicalBlock(scope: !1707, file: !395, line: 59, column: 29)
!3358 = !DILocation(line: 61, column: 9, scope: !3357, inlinedAt: !3353)
!3359 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !3353)
!3360 = !DILocation(line: 0, scope: !1707, inlinedAt: !3353)
!3361 = !DILocation(line: 0, scope: !1700, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 763, column: 79, scope: !3341)
!3363 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !3362)
!3364 = !DILocation(line: 0, scope: !1709, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 763, column: 9, scope: !3341)
!3366 = !DILocation(line: 167, column: 13, scope: !1716, inlinedAt: !3365)
!3367 = !DILocation(line: 168, column: 13, scope: !1714, inlinedAt: !3365)
!3368 = !DILocation(line: 169, column: 9, scope: !1714, inlinedAt: !3365)
!3369 = !DILocation(line: 0, scope: !1723, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 170, column: 13, scope: !1727, inlinedAt: !3365)
!3371 = !DILocation(line: 163, column: 81, scope: !1723, inlinedAt: !3370)
!3372 = !DILocation(line: 163, column: 87, scope: !1723, inlinedAt: !3370)
!3373 = !DILocation(line: 163, column: 15, scope: !1723, inlinedAt: !3370)
!3374 = !DILocation(line: 172, column: 17, scope: !1732, inlinedAt: !3365)
!3375 = !DILocation(line: 181, column: 13, scope: !1735, inlinedAt: !3365)
!3376 = !DILocation(line: 764, column: 9, scope: !3341)
!3377 = !DILocation(line: 767, column: 105, scope: !332)
!3378 = !DILocation(line: 767, column: 50, scope: !332)
!3379 = !DILocation(line: 768, column: 24, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !332, file: !6, line: 768, column: 9)
!3381 = !DILocation(line: 768, column: 9, scope: !332)
!3382 = !DILocation(line: 0, scope: !1689, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 769, column: 9, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3380, file: !6, line: 768, column: 36)
!3385 = !DILocation(line: 44, column: 27, scope: !1771, inlinedAt: !3383)
!3386 = !DILocation(line: 48, column: 13, scope: !1720, inlinedAt: !3383)
!3387 = !DILocation(line: 48, column: 13, scope: !1698, inlinedAt: !3383)
!3388 = !DILocation(line: 0, scope: !1700, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 769, column: 29, scope: !3384)
!3390 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !3389)
!3391 = !DILocation(line: 0, scope: !1709, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 769, column: 9, scope: !3384)
!3393 = !DILocation(line: 168, column: 13, scope: !1714, inlinedAt: !3392)
!3394 = !DILocation(line: 169, column: 9, scope: !1714, inlinedAt: !3392)
!3395 = !DILocation(line: 49, column: 23, scope: !1719, inlinedAt: !3383)
!3396 = !DILocation(line: 50, column: 18, scope: !1719, inlinedAt: !3383)
!3397 = !DILocation(line: 0, scope: !1723, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 170, column: 13, scope: !1727, inlinedAt: !3392)
!3399 = !DILocation(line: 163, column: 81, scope: !1723, inlinedAt: !3398)
!3400 = !DILocation(line: 163, column: 87, scope: !1723, inlinedAt: !3398)
!3401 = !DILocation(line: 163, column: 15, scope: !1723, inlinedAt: !3398)
!3402 = !DILocation(line: 172, column: 17, scope: !1732, inlinedAt: !3392)
!3403 = !DILocation(line: 181, column: 13, scope: !1735, inlinedAt: !3392)
!3404 = !DILocation(line: 770, column: 9, scope: !3384)
!3405 = !DILocation(line: 774, column: 49, scope: !332)
!3406 = !DILocation(line: 775, column: 54, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !332, file: !6, line: 775, column: 9)
!3408 = !DILocation(line: 775, column: 65, scope: !3407)
!3409 = !DILocation(line: 775, column: 45, scope: !3407)
!3410 = !DILocation(line: 775, column: 43, scope: !3407)
!3411 = !DILocation(line: 775, column: 9, scope: !332)
!3412 = !DILocation(line: 776, column: 9, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3407, file: !6, line: 775, column: 77)
!3414 = !DILocation(line: 0, scope: !1689, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 776, column: 9, scope: !3413)
!3416 = !DILocation(line: 38, column: 11, scope: !1689, inlinedAt: !3415)
!3417 = !{!3418, !1191, i64 24}
!3418 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEE", !1191, i64 0, !1191, i64 8, !1191, i64 16, !1191, i64 24, !2955, i64 32, !1034, i64 33}
!3419 = !DILocation(line: 38, column: 30, scope: !1689, inlinedAt: !3415)
!3420 = !{!3418, !2955, i64 32}
!3421 = !DILocation(line: 44, column: 27, scope: !1771, inlinedAt: !3415)
!3422 = !DILocation(line: 44, column: 13, scope: !1771, inlinedAt: !3415)
!3423 = !DILocation(line: 44, column: 17, scope: !1771, inlinedAt: !3415)
!3424 = !{!3418, !1191, i64 0}
!3425 = !DILocation(line: 47, column: 9, scope: !1698, inlinedAt: !3415)
!3426 = !DILocation(line: 48, column: 13, scope: !1720, inlinedAt: !3415)
!3427 = !DILocation(line: 48, column: 13, scope: !1698, inlinedAt: !3415)
!3428 = !DILocation(line: 49, column: 23, scope: !1719, inlinedAt: !3415)
!3429 = !DILocation(line: 50, column: 18, scope: !1719, inlinedAt: !3415)
!3430 = !DILocation(line: 51, column: 9, scope: !1719, inlinedAt: !3415)
!3431 = !DILocation(line: 0, scope: !1720, inlinedAt: !3415)
!3432 = !DILocation(line: 53, column: 13, scope: !3433, inlinedAt: !3415)
!3433 = distinct !DILexicalBlock(scope: !1720, file: !395, line: 51, column: 16)
!3434 = !DILocation(line: 53, column: 17, scope: !3433, inlinedAt: !3415)
!3435 = !DILocation(line: 0, scope: !1700, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 776, column: 29, scope: !3413)
!3437 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !3436)
!3438 = !DILocalVariable(name: "this", arg: 1, scope: !3439, type: !1693, flags: DIFlagArtificial | DIFlagObjectPointer)
!3439 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !844, file: !395, line: 72, type: !864, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !863, retainedNodes: !3440)
!3440 = !{!3438, !3441}
!3441 = !DILocalVariable(name: "arg", arg: 2, scope: !3439, file: !395, line: 72, type: !198)
!3442 = !DILocation(line: 0, scope: !3439, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 776, column: 51, scope: !3413)
!3444 = !DILocation(line: 73, column: 48, scope: !3439, inlinedAt: !3443)
!3445 = !DILocation(line: 73, column: 15, scope: !3439, inlinedAt: !3443)
!3446 = !DILocation(line: 0, scope: !1700, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 776, column: 63, scope: !3413)
!3448 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !3447)
!3449 = !DILocation(line: 0, scope: !3439, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 776, column: 82, scope: !3413)
!3451 = !DILocation(line: 73, column: 48, scope: !3439, inlinedAt: !3450)
!3452 = !DILocation(line: 73, column: 15, scope: !3439, inlinedAt: !3450)
!3453 = !DILocation(line: 0, scope: !1700, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 776, column: 94, scope: !3413)
!3455 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !3454)
!3456 = !DILocation(line: 0, scope: !3439, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 776, column: 113, scope: !3413)
!3458 = !DILocation(line: 73, column: 48, scope: !3439, inlinedAt: !3457)
!3459 = !DILocation(line: 73, column: 15, scope: !3439, inlinedAt: !3457)
!3460 = !DILocation(line: 0, scope: !1700, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 776, column: 125, scope: !3413)
!3462 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !3461)
!3463 = !DILocation(line: 62, column: 17, scope: !1706, inlinedAt: !3461)
!3464 = !{!3418, !1191, i64 8}
!3465 = !DILocation(line: 0, scope: !3439, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 776, column: 134, scope: !3413)
!3467 = !DILocation(line: 73, column: 15, scope: !3439, inlinedAt: !3466)
!3468 = !DILocation(line: 0, scope: !1700, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 776, column: 170, scope: !3413)
!3470 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !3469)
!3471 = !DILocation(line: 0, scope: !2090, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 776, column: 189, scope: !3413)
!3473 = !DILocation(line: 68, column: 15, scope: !2090, inlinedAt: !3472)
!3474 = !DILocation(line: 0, scope: !1700, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 776, column: 226, scope: !3413)
!3476 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !3475)
!3477 = !DILocation(line: 0, scope: !1709, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 776, column: 9, scope: !3413)
!3479 = !DILocation(line: 167, column: 13, scope: !1716, inlinedAt: !3478)
!3480 = !DILocation(line: 168, column: 13, scope: !1714, inlinedAt: !3478)
!3481 = !DILocation(line: 169, column: 9, scope: !1714, inlinedAt: !3478)
!3482 = !DILocation(line: 0, scope: !1723, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 170, column: 13, scope: !1727, inlinedAt: !3478)
!3484 = !DILocation(line: 163, column: 81, scope: !1723, inlinedAt: !3483)
!3485 = !DILocation(line: 163, column: 87, scope: !1723, inlinedAt: !3483)
!3486 = !DILocation(line: 163, column: 15, scope: !1723, inlinedAt: !3483)
!3487 = !DILocation(line: 172, column: 30, scope: !1732, inlinedAt: !3478)
!3488 = !DILocation(line: 172, column: 44, scope: !1732, inlinedAt: !3478)
!3489 = !DILocation(line: 172, column: 17, scope: !1732, inlinedAt: !3478)
!3490 = !DILocation(line: 180, column: 13, scope: !1736, inlinedAt: !3478)
!3491 = !DILocation(line: 180, column: 21, scope: !1736, inlinedAt: !3478)
!3492 = !DILocation(line: 180, column: 24, scope: !1736, inlinedAt: !3478)
!3493 = !DILocation(line: 181, column: 13, scope: !1735, inlinedAt: !3478)
!3494 = !DILocation(line: 182, column: 9, scope: !1735, inlinedAt: !3478)
!3495 = !DILocation(line: 777, column: 9, scope: !3413)
!3496 = !DILocation(line: 778, column: 27, scope: !3413)
!3497 = !DILocation(line: 778, column: 9, scope: !3413)
!3498 = !DILocation(line: 779, column: 9, scope: !3413)
!3499 = !DILocation(line: 783, column: 5, scope: !332)
!3500 = !DILocation(line: 0, scope: !972)
!3501 = !DILocation(line: 786, column: 24, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !972, file: !6, line: 786, column: 5)
!3503 = !DILocation(line: 786, column: 37, scope: !3502)
!3504 = !DILocation(line: 786, column: 5, scope: !972)
!3505 = !DILocation(line: 802, column: 25, scope: !976)
!3506 = !DILocation(line: 802, column: 9, scope: !332)
!3507 = !DILocation(line: 787, column: 14, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !6, line: 787, column: 13)
!3509 = distinct !DILexicalBlock(scope: !3502, file: !6, line: 786, column: 48)
!3510 = !DILocation(line: 787, column: 13, scope: !3509)
!3511 = !DILocation(line: 795, column: 13, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !6, line: 795, column: 13)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !6, line: 795, column: 13)
!3514 = distinct !DILexicalBlock(scope: !3508, file: !6, line: 787, column: 32)
!3515 = !{i64 0, i64 65}
!3516 = !DILocation(line: 795, column: 13, scope: !3513)
!3517 = !DILocation(line: 795, column: 13, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3512, file: !6, line: 795, column: 13)
!3519 = !DILocation(line: 796, column: 50, scope: !3514)
!3520 = !DILocation(line: 796, column: 48, scope: !3514)
!3521 = !DILocation(line: 796, column: 63, scope: !3514)
!3522 = !DILocation(line: 796, column: 70, scope: !3514)
!3523 = !DILocation(line: 796, column: 68, scope: !3514)
!3524 = !DILocation(line: 797, column: 29, scope: !3514)
!3525 = !DILocation(line: 798, column: 9, scope: !3514)
!3526 = !DILocation(line: 786, column: 44, scope: !3502)
!3527 = distinct !{!3527, !3504, !3528, !1042}
!3528 = !DILocation(line: 799, column: 5, scope: !972)
!3529 = !DILocation(line: 0, scope: !975)
!3530 = !DILocation(line: 804, column: 9, scope: !975)
!3531 = !DILocation(line: 804, column: 17, scope: !975)
!3532 = !DILocation(line: 807, column: 13, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !975, file: !6, line: 807, column: 13)
!3534 = !DILocation(line: 807, column: 55, scope: !3533)
!3535 = !DILocation(line: 807, column: 38, scope: !3533)
!3536 = !DILocation(line: 807, column: 13, scope: !975)
!3537 = !DILocation(line: 808, column: 44, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3533, file: !6, line: 807, column: 63)
!3539 = !DILocation(line: 808, column: 42, scope: !3538)
!3540 = !{!2955, !2955, i64 0}
!3541 = !DILocation(line: 809, column: 54, scope: !3538)
!3542 = !DILocation(line: 809, column: 38, scope: !3538)
!3543 = !DILocation(line: 810, column: 17, scope: !3538)
!3544 = !DILocation(line: 0, scope: !1096, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 811, column: 17, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !6, line: 810, column: 47)
!3547 = distinct !DILexicalBlock(scope: !3538, file: !6, line: 810, column: 17)
!3548 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3545)
!3549 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3545)
!3550 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3545)
!3551 = !DILocation(line: 0, scope: !1113, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 811, column: 37, scope: !3546)
!3553 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3552)
!3554 = !DILocation(line: 0, scope: !1122, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 811, column: 17, scope: !3546)
!3556 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3555)
!3557 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3555)
!3558 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3545)
!3559 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3545)
!3560 = !DILocation(line: 0, scope: !1136, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3555)
!3562 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3561)
!3563 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3561)
!3564 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3561)
!3565 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !3555)
!3566 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !3555)
!3567 = !DILocation(line: 812, column: 13, scope: !3546)
!3568 = !DILocation(line: 817, column: 56, scope: !975)
!3569 = !DILocation(line: 817, column: 61, scope: !975)
!3570 = !DILocation(line: 818, column: 9, scope: !975)
!3571 = !DILocation(line: 0, scope: !1096, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 818, column: 9, scope: !975)
!3573 = !DILocation(line: 38, column: 11, scope: !1096, inlinedAt: !3572)
!3574 = !DILocation(line: 38, column: 30, scope: !1096, inlinedAt: !3572)
!3575 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3572)
!3576 = !DILocation(line: 44, column: 13, scope: !1105, inlinedAt: !3572)
!3577 = !DILocation(line: 44, column: 17, scope: !1105, inlinedAt: !3572)
!3578 = !DILocation(line: 47, column: 9, scope: !1108, inlinedAt: !3572)
!3579 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3572)
!3580 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3572)
!3581 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3572)
!3582 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3572)
!3583 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !3572)
!3584 = !DILocation(line: 0, scope: !1110, inlinedAt: !3572)
!3585 = !DILocation(line: 53, column: 13, scope: !2970, inlinedAt: !3572)
!3586 = !DILocation(line: 53, column: 17, scope: !2970, inlinedAt: !3572)
!3587 = !DILocation(line: 0, scope: !1113, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 818, column: 29, scope: !975)
!3589 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3588)
!3590 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3588)
!3591 = !DILocation(line: 0, scope: !2215, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 818, column: 54, scope: !975)
!3593 = !DILocation(line: 78, column: 15, scope: !2215, inlinedAt: !3592)
!3594 = !DILocation(line: 0, scope: !1113, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 818, column: 83, scope: !975)
!3596 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3595)
!3597 = !DILocation(line: 0, scope: !2215, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 818, column: 116, scope: !975)
!3599 = !DILocation(line: 78, column: 15, scope: !2215, inlinedAt: !3598)
!3600 = !DILocation(line: 0, scope: !1113, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 818, column: 146, scope: !975)
!3602 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3601)
!3603 = !DILocation(line: 0, scope: !1122, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 818, column: 9, scope: !975)
!3605 = !DILocation(line: 167, column: 14, scope: !1128, inlinedAt: !3604)
!3606 = !DILocation(line: 0, scope: !1128, inlinedAt: !3604)
!3607 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !3604)
!3608 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3604)
!3609 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3604)
!3610 = !DILocation(line: 0, scope: !1136, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3604)
!3612 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3611)
!3613 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3611)
!3614 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3611)
!3615 = !DILocation(line: 174, column: 44, scope: !1145, inlinedAt: !3604)
!3616 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !3604)
!3617 = !DILocation(line: 180, column: 13, scope: !1150, inlinedAt: !3604)
!3618 = !DILocation(line: 180, column: 21, scope: !1150, inlinedAt: !3604)
!3619 = !DILocation(line: 180, column: 24, scope: !1150, inlinedAt: !3604)
!3620 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !3604)
!3621 = !DILocation(line: 182, column: 9, scope: !1149, inlinedAt: !3604)
!3622 = !DILocation(line: 819, column: 9, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !6, line: 819, column: 9)
!3624 = distinct !DILexicalBlock(scope: !975, file: !6, line: 819, column: 9)
!3625 = !DILocation(line: 819, column: 9, scope: !3624)
!3626 = !DILocation(line: 819, column: 9, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3623, file: !6, line: 819, column: 9)
!3628 = !DILocation(line: 821, column: 30, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !975, file: !6, line: 821, column: 13)
!3630 = !DILocation(line: 821, column: 37, scope: !3629)
!3631 = !DILocation(line: 824, column: 52, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3629, file: !6, line: 823, column: 16)
!3633 = !DILocation(line: 824, column: 27, scope: !3632)
!3634 = !DILocation(line: 825, column: 29, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3632, file: !6, line: 825, column: 17)
!3636 = !DILocation(line: 825, column: 17, scope: !3632)
!3637 = !DILocation(line: 0, scope: !1689, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 826, column: 17, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3635, file: !6, line: 825, column: 41)
!3640 = !DILocation(line: 44, column: 27, scope: !1771, inlinedAt: !3638)
!3641 = !DILocation(line: 48, column: 13, scope: !1720, inlinedAt: !3638)
!3642 = !DILocation(line: 48, column: 13, scope: !1698, inlinedAt: !3638)
!3643 = !DILocation(line: 0, scope: !1700, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 826, column: 37, scope: !3639)
!3645 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !3644)
!3646 = !DILocation(line: 0, scope: !1709, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 826, column: 17, scope: !3639)
!3648 = !DILocation(line: 168, column: 13, scope: !1714, inlinedAt: !3647)
!3649 = !DILocation(line: 169, column: 9, scope: !1714, inlinedAt: !3647)
!3650 = !DILocation(line: 49, column: 23, scope: !1719, inlinedAt: !3638)
!3651 = !DILocation(line: 50, column: 18, scope: !1719, inlinedAt: !3638)
!3652 = !DILocation(line: 0, scope: !1723, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 170, column: 13, scope: !1727, inlinedAt: !3647)
!3654 = !DILocation(line: 163, column: 81, scope: !1723, inlinedAt: !3653)
!3655 = !DILocation(line: 163, column: 87, scope: !1723, inlinedAt: !3653)
!3656 = !DILocation(line: 163, column: 15, scope: !1723, inlinedAt: !3653)
!3657 = !DILocation(line: 172, column: 17, scope: !1732, inlinedAt: !3647)
!3658 = !DILocation(line: 830, column: 32, scope: !3632)
!3659 = !DILocation(line: 0, scope: !3629)
!3660 = !DILocation(line: 0, scope: !985)
!3661 = !DILocation(line: 833, column: 28, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !985, file: !6, line: 833, column: 9)
!3663 = !DILocation(line: 833, column: 41, scope: !3662)
!3664 = !DILocation(line: 833, column: 9, scope: !985)
!3665 = !DILocation(line: 832, column: 16, scope: !975)
!3666 = !DILocation(line: 840, column: 9, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !6, line: 840, column: 9)
!3668 = distinct !DILexicalBlock(scope: !975, file: !6, line: 840, column: 9)
!3669 = !DILocation(line: 840, column: 9, scope: !3668)
!3670 = !DILocation(line: 834, column: 18, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !6, line: 834, column: 17)
!3672 = distinct !DILexicalBlock(scope: !3662, file: !6, line: 833, column: 52)
!3673 = !DILocation(line: 834, column: 17, scope: !3672)
!3674 = !DILocation(line: 835, column: 25, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3671, file: !6, line: 834, column: 36)
!3676 = !DILocation(line: 835, column: 43, scope: !3675)
!3677 = !DILocation(line: 835, column: 17, scope: !3675)
!3678 = !DILocation(line: 836, column: 36, scope: !3675)
!3679 = !DILocation(line: 836, column: 34, scope: !3675)
!3680 = !DILocation(line: 836, column: 49, scope: !3675)
!3681 = !DILocation(line: 836, column: 56, scope: !3675)
!3682 = !DILocation(line: 836, column: 54, scope: !3675)
!3683 = !DILocation(line: 837, column: 24, scope: !3675)
!3684 = !DILocation(line: 838, column: 13, scope: !3675)
!3685 = !DILocation(line: 833, column: 48, scope: !3662)
!3686 = distinct !{!3686, !3664, !3687, !1042}
!3687 = !DILocation(line: 839, column: 9, scope: !985)
!3688 = !DILocation(line: 840, column: 9, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3667, file: !6, line: 840, column: 9)
!3690 = !DILocation(line: 841, column: 29, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !975, file: !6, line: 841, column: 13)
!3692 = !DILocation(line: 841, column: 36, scope: !3691)
!3693 = !DILocation(line: 843, column: 41, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3691, file: !6, line: 841, column: 69)
!3695 = !DILocation(line: 842, column: 13, scope: !3694)
!3696 = !DILocation(line: 844, column: 9, scope: !3694)
!3697 = !DILocation(line: 845, column: 13, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3691, file: !6, line: 844, column: 16)
!3699 = !DILocation(line: 846, column: 31, scope: !3698)
!3700 = !DILocation(line: 846, column: 13, scope: !3698)
!3701 = !DILocation(line: 849, column: 5, scope: !976)
!3702 = !DILocation(line: 181, column: 13, scope: !1735, inlinedAt: !3647)
!3703 = !DILocation(line: 827, column: 35, scope: !3639)
!3704 = !DILocation(line: 827, column: 17, scope: !3639)
!3705 = !DILocation(line: 851, column: 24, scope: !992)
!3706 = !DILocation(line: 0, scope: !987)
!3707 = !DILocation(line: 851, column: 37, scope: !992)
!3708 = !DILocation(line: 851, column: 5, scope: !987)
!3709 = !DILocation(line: 861, column: 42, scope: !332)
!3710 = !DILocation(line: 861, column: 49, scope: !332)
!3711 = !DILocation(line: 0, scope: !1096, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 862, column: 5, scope: !332)
!3713 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3712)
!3714 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3712)
!3715 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3712)
!3716 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3712)
!3717 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3712)
!3718 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !3712)
!3719 = !DILocation(line: 0, scope: !1110, inlinedAt: !3712)
!3720 = !DILocation(line: 0, scope: !1113, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 862, column: 25, scope: !332)
!3722 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3721)
!3723 = !DILocalVariable(name: "this", arg: 1, scope: !3724, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!3724 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !397, file: !395, line: 72, type: !421, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !420, retainedNodes: !3725)
!3725 = !{!3723, !3726}
!3726 = !DILocalVariable(name: "arg", arg: 2, scope: !3724, file: !395, line: 72, type: !198)
!3727 = !DILocation(line: 0, scope: !3724, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 862, column: 63, scope: !332)
!3729 = !DILocation(line: 73, column: 48, scope: !3724, inlinedAt: !3728)
!3730 = !DILocation(line: 73, column: 15, scope: !3724, inlinedAt: !3728)
!3731 = !DILocation(line: 0, scope: !1113, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 862, column: 83, scope: !332)
!3733 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3732)
!3734 = !DILocation(line: 0, scope: !1122, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 862, column: 5, scope: !332)
!3736 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !3735)
!3737 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3735)
!3738 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3735)
!3739 = !DILocation(line: 0, scope: !1136, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3735)
!3741 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3740)
!3742 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3740)
!3743 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3740)
!3744 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !3735)
!3745 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !3735)
!3746 = !DILocation(line: 863, column: 5, scope: !332)
!3747 = !DILocation(line: 866, column: 5, scope: !332)
!3748 = !DILocation(line: 0, scope: !1096, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 866, column: 5, scope: !332)
!3750 = !DILocation(line: 38, column: 11, scope: !1096, inlinedAt: !3749)
!3751 = !DILocation(line: 38, column: 30, scope: !1096, inlinedAt: !3749)
!3752 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3749)
!3753 = !DILocation(line: 44, column: 13, scope: !1105, inlinedAt: !3749)
!3754 = !DILocation(line: 44, column: 17, scope: !1105, inlinedAt: !3749)
!3755 = !DILocation(line: 47, column: 9, scope: !1108, inlinedAt: !3749)
!3756 = !DILocation(line: 47, column: 13, scope: !1108, inlinedAt: !3749)
!3757 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3749)
!3758 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3749)
!3759 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3749)
!3760 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3749)
!3761 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !3749)
!3762 = !DILocation(line: 0, scope: !1110, inlinedAt: !3749)
!3763 = !DILocation(line: 53, column: 13, scope: !2970, inlinedAt: !3749)
!3764 = !DILocation(line: 53, column: 17, scope: !2970, inlinedAt: !3749)
!3765 = !DILocation(line: 0, scope: !1113, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 866, column: 25, scope: !332)
!3767 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3766)
!3768 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3766)
!3769 = !DILocation(line: 866, column: 83, scope: !332)
!3770 = !DILocation(line: 0, scope: !3724, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 866, column: 64, scope: !332)
!3772 = !DILocation(line: 73, column: 48, scope: !3724, inlinedAt: !3771)
!3773 = !DILocation(line: 73, column: 15, scope: !3724, inlinedAt: !3771)
!3774 = !DILocation(line: 73, column: 13, scope: !3724, inlinedAt: !3771)
!3775 = !DILocation(line: 0, scope: !1113, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 866, column: 86, scope: !332)
!3777 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3776)
!3778 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3776)
!3779 = !DILocation(line: 0, scope: !3724, inlinedAt: !3780)
!3780 = distinct !DILocation(line: 866, column: 101, scope: !332)
!3781 = !DILocation(line: 73, column: 48, scope: !3724, inlinedAt: !3780)
!3782 = !DILocation(line: 73, column: 15, scope: !3724, inlinedAt: !3780)
!3783 = !DILocation(line: 73, column: 13, scope: !3724, inlinedAt: !3780)
!3784 = !DILocation(line: 0, scope: !1113, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 866, column: 112, scope: !332)
!3786 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3785)
!3787 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3785)
!3788 = !DILocation(line: 0, scope: !3724, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 866, column: 120, scope: !332)
!3790 = !DILocation(line: 73, column: 48, scope: !3724, inlinedAt: !3789)
!3791 = !DILocation(line: 73, column: 15, scope: !3724, inlinedAt: !3789)
!3792 = !DILocation(line: 73, column: 13, scope: !3724, inlinedAt: !3789)
!3793 = !DILocation(line: 0, scope: !1113, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 866, column: 131, scope: !332)
!3795 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3794)
!3796 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3794)
!3797 = !DILocation(line: 0, scope: !3724, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 866, column: 139, scope: !332)
!3799 = !DILocation(line: 73, column: 48, scope: !3724, inlinedAt: !3798)
!3800 = !DILocation(line: 73, column: 15, scope: !3724, inlinedAt: !3798)
!3801 = !DILocation(line: 73, column: 13, scope: !3724, inlinedAt: !3798)
!3802 = !DILocation(line: 0, scope: !1113, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 866, column: 150, scope: !332)
!3804 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3803)
!3805 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3803)
!3806 = !DILocation(line: 0, scope: !3724, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 866, column: 166, scope: !332)
!3808 = !DILocation(line: 73, column: 48, scope: !3724, inlinedAt: !3807)
!3809 = !DILocation(line: 73, column: 15, scope: !3724, inlinedAt: !3807)
!3810 = !DILocation(line: 73, column: 13, scope: !3724, inlinedAt: !3807)
!3811 = !DILocation(line: 0, scope: !1113, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 866, column: 178, scope: !332)
!3813 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3812)
!3814 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3812)
!3815 = !DILocation(line: 0, scope: !3724, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 866, column: 186, scope: !332)
!3817 = !DILocation(line: 73, column: 48, scope: !3724, inlinedAt: !3816)
!3818 = !DILocation(line: 73, column: 15, scope: !3724, inlinedAt: !3816)
!3819 = !DILocation(line: 73, column: 13, scope: !3724, inlinedAt: !3816)
!3820 = !DILocation(line: 0, scope: !1113, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 866, column: 198, scope: !332)
!3822 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3821)
!3823 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3821)
!3824 = !DILocation(line: 0, scope: !3724, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 866, column: 206, scope: !332)
!3826 = !DILocation(line: 73, column: 48, scope: !3724, inlinedAt: !3825)
!3827 = !DILocation(line: 73, column: 15, scope: !3724, inlinedAt: !3825)
!3828 = !DILocation(line: 73, column: 13, scope: !3724, inlinedAt: !3825)
!3829 = !DILocation(line: 0, scope: !1113, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 866, column: 218, scope: !332)
!3831 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3830)
!3832 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !3830)
!3833 = !DILocation(line: 0, scope: !1122, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 866, column: 5, scope: !332)
!3835 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !3834)
!3836 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3834)
!3837 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3834)
!3838 = !DILocation(line: 0, scope: !1136, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3834)
!3840 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3839)
!3841 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3839)
!3842 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3839)
!3843 = !DILocation(line: 174, column: 30, scope: !1145, inlinedAt: !3834)
!3844 = !DILocation(line: 174, column: 44, scope: !1145, inlinedAt: !3834)
!3845 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !3834)
!3846 = !DILocation(line: 180, column: 13, scope: !1150, inlinedAt: !3834)
!3847 = !DILocation(line: 180, column: 21, scope: !1150, inlinedAt: !3834)
!3848 = !DILocation(line: 180, column: 24, scope: !1150, inlinedAt: !3834)
!3849 = !DILocation(line: 180, column: 31, scope: !1150, inlinedAt: !3834)
!3850 = !DILocation(line: 180, column: 28, scope: !1150, inlinedAt: !3834)
!3851 = !DILocation(line: 180, column: 13, scope: !1129, inlinedAt: !3834)
!3852 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !3834)
!3853 = !DILocation(line: 182, column: 9, scope: !1149, inlinedAt: !3834)
!3854 = !DILocation(line: 868, column: 5, scope: !332)
!3855 = !DILocation(line: 871, column: 5, scope: !332)
!3856 = !DILocation(line: 873, column: 5, scope: !332)
!3857 = !DILocation(line: 875, column: 5, scope: !332)
!3858 = !DILocation(line: 881, column: 23, scope: !332)
!3859 = !DILocation(line: 881, column: 5, scope: !332)
!3860 = !DILocation(line: 884, column: 24, scope: !332)
!3861 = !DILocation(line: 0, scope: !1096, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 885, column: 5, scope: !332)
!3863 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3862)
!3864 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3862)
!3865 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3862)
!3866 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3862)
!3867 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3862)
!3868 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !3862)
!3869 = !DILocation(line: 0, scope: !1110, inlinedAt: !3862)
!3870 = !DILocation(line: 0, scope: !1113, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 885, column: 25, scope: !332)
!3872 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3871)
!3873 = !DILocation(line: 885, column: 77, scope: !332)
!3874 = !DILocation(line: 885, column: 68, scope: !332)
!3875 = !DILocation(line: 885, column: 89, scope: !332)
!3876 = !DILocation(line: 0, scope: !2148, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 885, column: 65, scope: !332)
!3878 = !DILocation(line: 88, column: 15, scope: !2148, inlinedAt: !3877)
!3879 = !DILocation(line: 0, scope: !1113, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 885, column: 97, scope: !332)
!3881 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3880)
!3882 = !DILocation(line: 0, scope: !1122, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 885, column: 5, scope: !332)
!3884 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !3883)
!3885 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3883)
!3886 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3883)
!3887 = !DILocation(line: 0, scope: !1136, inlinedAt: !3888)
!3888 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3883)
!3889 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3888)
!3890 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3888)
!3891 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3888)
!3892 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !3883)
!3893 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !3883)
!3894 = !DILocation(line: 852, column: 13, scope: !990)
!3895 = !DILocation(line: 852, column: 13, scope: !991)
!3896 = !DILocation(line: 853, column: 13, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !6, line: 853, column: 13)
!3898 = distinct !DILexicalBlock(scope: !989, file: !6, line: 853, column: 13)
!3899 = !DILocation(line: 853, column: 13, scope: !3898)
!3900 = !DILocation(line: 853, column: 13, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3897, file: !6, line: 853, column: 13)
!3902 = !DILocation(line: 854, column: 74, scope: !989)
!3903 = !DILocation(line: 854, column: 84, scope: !989)
!3904 = !DILocation(line: 854, column: 37, scope: !989)
!3905 = !DILocation(line: 0, scope: !989)
!3906 = !DILocation(line: 855, column: 47, scope: !989)
!3907 = !DILocation(line: 855, column: 60, scope: !989)
!3908 = !DILocation(line: 855, column: 13, scope: !989)
!3909 = !DILocation(line: 856, column: 25, scope: !989)
!3910 = !DILocation(line: 857, column: 9, scope: !989)
!3911 = !DILocation(line: 851, column: 44, scope: !992)
!3912 = distinct !{!3912, !3708, !3913, !1042}
!3913 = !DILocation(line: 858, column: 5, scope: !987)
!3914 = !DILocation(line: 0, scope: !2170, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 889, column: 1, scope: !332)
!3916 = !DILocation(line: 408, column: 9, scope: !2175, inlinedAt: !3915)
!3917 = !DILocation(line: 889, column: 1, scope: !332)
!3918 = !DISubprogram(name: "dispatch_threadgroups", linkageName: "_ZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiii", scope: !2, file: !585, line: 13, type: !3919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{null, !583, !57, !57, !57, !57, !57, !57}
!3921 = distinct !DISubprogram(name: "halide_metal_device_and_host_malloc", scope: !6, file: !6, line: 891, type: !264, scopeLine: 891, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !3922)
!3922 = !{!3923, !3924, !3925, !3926}
!3923 = !DILocalVariable(name: "user_context", arg: 1, scope: !3921, file: !6, line: 891, type: !99)
!3924 = !DILocalVariable(name: "buffer", arg: 2, scope: !3921, file: !6, line: 891, type: !145)
!3925 = !DILocalVariable(name: "result", scope: !3921, file: !6, line: 893, type: !57)
!3926 = !DILocalVariable(name: "metal_buffer", scope: !3927, file: !6, line: 895, type: !523)
!3927 = distinct !DILexicalBlock(scope: !3928, file: !6, line: 894, column: 22)
!3928 = distinct !DILexicalBlock(scope: !3921, file: !6, line: 894, column: 9)
!3929 = !DILocation(line: 0, scope: !3921)
!3930 = !DILocation(line: 0, scope: !1096, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 892, column: 5, scope: !3921)
!3932 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3931)
!3933 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3931)
!3934 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3931)
!3935 = !DILocation(line: 0, scope: !1113, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 892, column: 25, scope: !3921)
!3937 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3936)
!3938 = !DILocation(line: 0, scope: !1122, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 892, column: 5, scope: !3921)
!3940 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3939)
!3941 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3939)
!3942 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3931)
!3943 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3931)
!3944 = !DILocation(line: 0, scope: !1136, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3939)
!3946 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !3945)
!3947 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !3945)
!3948 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !3945)
!3949 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !3939)
!3950 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !3939)
!3951 = !DILocation(line: 893, column: 18, scope: !3921)
!3952 = !DILocation(line: 894, column: 16, scope: !3928)
!3953 = !DILocation(line: 894, column: 9, scope: !3921)
!3954 = !DILocation(line: 895, column: 63, scope: !3927)
!3955 = !DILocation(line: 895, column: 37, scope: !3927)
!3956 = !DILocation(line: 895, column: 73, scope: !3927)
!3957 = !DILocation(line: 0, scope: !3927)
!3958 = !DILocation(line: 896, column: 35, scope: !3927)
!3959 = !DILocation(line: 896, column: 17, scope: !3927)
!3960 = !DILocation(line: 896, column: 22, scope: !3927)
!3961 = !DILocation(line: 0, scope: !1096, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 897, column: 9, scope: !3927)
!3963 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !3962)
!3964 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !3962)
!3965 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !3962)
!3966 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !3962)
!3967 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !3962)
!3968 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !3962)
!3969 = !DILocation(line: 0, scope: !1110, inlinedAt: !3962)
!3970 = !DILocation(line: 0, scope: !1113, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 897, column: 29, scope: !3927)
!3972 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3971)
!3973 = !DILocation(line: 0, scope: !1113, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 898, column: 29, scope: !3927)
!3975 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3974)
!3976 = !DILocation(line: 898, column: 64, scope: !3927)
!3977 = !DILocation(line: 898, column: 48, scope: !3927)
!3978 = !DILocation(line: 0, scope: !1891, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 898, column: 45, scope: !3927)
!3980 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !3979)
!3981 = !DILocation(line: 0, scope: !1113, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 899, column: 29, scope: !3927)
!3983 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3982)
!3984 = !DILocation(line: 899, column: 54, scope: !3927)
!3985 = !DILocation(line: 0, scope: !1891, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 899, column: 51, scope: !3927)
!3987 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !3986)
!3988 = !DILocation(line: 0, scope: !1113, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 900, column: 29, scope: !3927)
!3990 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3989)
!3991 = !DILocation(line: 900, column: 54, scope: !3927)
!3992 = !DILocation(line: 0, scope: !1891, inlinedAt: !3993)
!3993 = distinct !DILocation(line: 900, column: 43, scope: !3927)
!3994 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !3993)
!3995 = !DILocation(line: 0, scope: !1113, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 900, column: 59, scope: !3927)
!3997 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !3996)
!3998 = !DILocation(line: 0, scope: !1122, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 897, column: 9, scope: !3927)
!4000 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !3999)
!4001 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !3999)
!4002 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !3999)
!4003 = !DILocation(line: 0, scope: !1136, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !3999)
!4005 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !4004)
!4006 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !4004)
!4007 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !4004)
!4008 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !3999)
!4009 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !3999)
!4010 = !DILocation(line: 901, column: 5, scope: !3927)
!4011 = !DILocation(line: 902, column: 5, scope: !3921)
!4012 = distinct !DISubprogram(name: "halide_metal_device_and_host_free", scope: !6, file: !6, line: 905, type: !264, scopeLine: 905, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4013)
!4013 = !{!4014, !4015}
!4014 = !DILocalVariable(name: "user_context", arg: 1, scope: !4012, file: !6, line: 905, type: !99)
!4015 = !DILocalVariable(name: "buffer", arg: 2, scope: !4012, file: !6, line: 905, type: !145)
!4016 = !DILocation(line: 0, scope: !4012)
!4017 = !DILocation(line: 0, scope: !1096, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 906, column: 5, scope: !4012)
!4019 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !4018)
!4020 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !4018)
!4021 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !4018)
!4022 = !DILocation(line: 0, scope: !1113, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 906, column: 25, scope: !4012)
!4024 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4023)
!4025 = !DILocation(line: 0, scope: !1122, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 906, column: 5, scope: !4012)
!4027 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !4026)
!4028 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !4026)
!4029 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !4018)
!4030 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !4018)
!4031 = !DILocation(line: 0, scope: !1136, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !4026)
!4033 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !4032)
!4034 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !4032)
!4035 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !4032)
!4036 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !4026)
!4037 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !4026)
!4038 = !DILocation(line: 907, column: 5, scope: !4012)
!4039 = !DILocation(line: 908, column: 13, scope: !4012)
!4040 = !DILocation(line: 908, column: 18, scope: !4012)
!4041 = !DILocation(line: 909, column: 5, scope: !4012)
!4042 = distinct !DISubprogram(name: "halide_metal_buffer_copy", scope: !6, file: !6, line: 912, type: !277, scopeLine: 914, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4043)
!4043 = !{!4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4054, !4055, !4058, !4059, !4060, !4062, !4067, !4068}
!4044 = !DILocalVariable(name: "user_context", arg: 1, scope: !4042, file: !6, line: 912, type: !99)
!4045 = !DILocalVariable(name: "src", arg: 2, scope: !4042, file: !6, line: 912, type: !145)
!4046 = !DILocalVariable(name: "dst_device_interface", arg: 3, scope: !4042, file: !6, line: 913, type: !150)
!4047 = !DILocalVariable(name: "dst", arg: 4, scope: !4042, file: !6, line: 914, type: !145)
!4048 = !DILocalVariable(name: "from_host", scope: !4042, file: !6, line: 931, type: !87)
!4049 = !DILocalVariable(name: "to_host", scope: !4042, file: !6, line: 934, type: !87)
!4050 = !DILocalVariable(name: "c", scope: !4042, file: !6, line: 939, type: !1004)
!4051 = !DILocalVariable(name: "err", scope: !4042, file: !6, line: 941, type: !57)
!4052 = !DILocalVariable(name: "metal_context", scope: !4053, file: !6, line: 943, type: !947)
!4053 = distinct !DILexicalBlock(scope: !4042, file: !6, line: 942, column: 5)
!4054 = !DILocalVariable(name: "t_before", scope: !4053, file: !6, line: 953, type: !48)
!4055 = !DILocalVariable(name: "buffer_label", scope: !4056, file: !6, line: 959, type: !335)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !6, line: 957, column: 37)
!4057 = distinct !DILexicalBlock(scope: !4053, file: !6, line: 957, column: 13)
!4058 = !DILocalVariable(name: "blit_command_buffer", scope: !4056, file: !6, line: 960, type: !133)
!4059 = !DILocalVariable(name: "blit_encoder", scope: !4056, file: !6, line: 961, type: !596)
!4060 = !DILocalVariable(name: "dst_buffer", scope: !4061, file: !6, line: 975, type: !523)
!4061 = distinct !DILexicalBlock(scope: !4057, file: !6, line: 966, column: 16)
!4062 = !DILocalVariable(name: "total_size", scope: !4063, file: !6, line: 990, type: !248)
!4063 = distinct !DILexicalBlock(scope: !4064, file: !6, line: 989, column: 52)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !6, line: 989, column: 21)
!4065 = distinct !DILexicalBlock(scope: !4066, file: !6, line: 988, column: 27)
!4066 = distinct !DILexicalBlock(scope: !4061, file: !6, line: 988, column: 17)
!4067 = !DILocalVariable(name: "total_extent", scope: !4063, file: !6, line: 992, type: !654)
!4068 = !DILocalVariable(name: "t_after", scope: !4053, file: !6, line: 1003, type: !48)
!4069 = !DILocation(line: 0, scope: !4042)
!4070 = !DILocation(line: 915, column: 14, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4042, file: !6, line: 915, column: 9)
!4072 = !DILocation(line: 915, column: 25, scope: !4071)
!4073 = !DILocation(line: 915, column: 9, scope: !4042)
!4074 = !DILocation(line: 0, scope: !1689, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 916, column: 9, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4071, file: !6, line: 915, column: 42)
!4077 = !DILocation(line: 44, column: 27, scope: !1771, inlinedAt: !4075)
!4078 = !DILocation(line: 48, column: 13, scope: !1720, inlinedAt: !4075)
!4079 = !DILocation(line: 48, column: 13, scope: !1698, inlinedAt: !4075)
!4080 = !DILocation(line: 0, scope: !1700, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 916, column: 29, scope: !4076)
!4082 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !4081)
!4083 = !DILocation(line: 0, scope: !1709, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 916, column: 9, scope: !4076)
!4085 = !DILocation(line: 168, column: 13, scope: !1714, inlinedAt: !4084)
!4086 = !DILocation(line: 169, column: 9, scope: !1714, inlinedAt: !4084)
!4087 = !DILocation(line: 49, column: 23, scope: !1719, inlinedAt: !4075)
!4088 = !DILocation(line: 50, column: 18, scope: !1719, inlinedAt: !4075)
!4089 = !DILocation(line: 0, scope: !1723, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 170, column: 13, scope: !1727, inlinedAt: !4084)
!4091 = !DILocation(line: 163, column: 81, scope: !1723, inlinedAt: !4090)
!4092 = !DILocation(line: 163, column: 87, scope: !1723, inlinedAt: !4090)
!4093 = !DILocation(line: 163, column: 15, scope: !1723, inlinedAt: !4090)
!4094 = !DILocation(line: 172, column: 17, scope: !1732, inlinedAt: !4084)
!4095 = !DILocation(line: 181, column: 13, scope: !1735, inlinedAt: !4084)
!4096 = !DILocation(line: 917, column: 9, scope: !4076)
!4097 = !DILocation(line: 921, column: 5, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4099, file: !6, line: 921, column: 5)
!4099 = distinct !DILexicalBlock(scope: !4042, file: !6, line: 921, column: 5)
!4100 = !DILocation(line: 921, column: 5, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4098, file: !6, line: 921, column: 5)
!4102 = !DILocalVariable(name: "this", arg: 1, scope: !4103, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!4103 = distinct !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !146, file: !42, line: 1470, type: !238, scopeLine: 1470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !240, retainedNodes: !4104)
!4104 = !{!4102}
!4105 = !DILocation(line: 0, scope: !4103, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 924, column: 15, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4042, file: !6, line: 924, column: 9)
!4108 = !DILocalVariable(name: "this", arg: 1, scope: !4109, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!4109 = distinct !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !146, file: !42, line: 1454, type: !224, scopeLine: 1454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !223, retainedNodes: !4110)
!4110 = !{!4108, !4111}
!4111 = !DILocalVariable(name: "flag", arg: 2, scope: !4109, file: !42, line: 1454, type: !228)
!4112 = !DILocation(line: 0, scope: !4109, inlinedAt: !4113)
!4113 = distinct !DILocation(line: 1471, column: 16, scope: !4103, inlinedAt: !4106)
!4114 = !DILocation(line: 1455, column: 17, scope: !4109, inlinedAt: !4113)
!4115 = !{!1190, !1033, i64 24}
!4116 = !DILocation(line: 1455, column: 23, scope: !4109, inlinedAt: !4113)
!4117 = !DILocation(line: 1455, column: 31, scope: !4109, inlinedAt: !4113)
!4118 = !DILocation(line: 924, column: 30, scope: !4107)
!4119 = !DILocation(line: 924, column: 38, scope: !4107)
!4120 = !DILocation(line: 924, column: 43, scope: !4107)
!4121 = !DILocation(line: 924, column: 55, scope: !4107)
!4122 = !DILocation(line: 925, column: 14, scope: !4107)
!4123 = !DILocation(line: 925, column: 31, scope: !4107)
!4124 = !DILocation(line: 924, column: 9, scope: !4042)
!4125 = !DILocation(line: 926, column: 9, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4127, file: !6, line: 926, column: 9)
!4127 = distinct !DILexicalBlock(scope: !4107, file: !6, line: 925, column: 59)
!4128 = !DILocation(line: 926, column: 9, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4130, file: !6, line: 926, column: 9)
!4130 = distinct !DILexicalBlock(scope: !4126, file: !6, line: 926, column: 9)
!4131 = !DILocation(line: 931, column: 28, scope: !4042)
!4132 = !DILocation(line: 931, column: 45, scope: !4042)
!4133 = !DILocation(line: 931, column: 73, scope: !4042)
!4134 = !DILocation(line: 932, column: 28, scope: !4042)
!4135 = !DILocation(line: 932, column: 35, scope: !4042)
!4136 = !DILocation(line: 932, column: 41, scope: !4042)
!4137 = !DILocalVariable(name: "this", arg: 1, scope: !4138, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!4138 = distinct !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !146, file: !42, line: 1466, type: !238, scopeLine: 1466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !237, retainedNodes: !4139)
!4139 = !{!4137}
!4140 = !DILocation(line: 0, scope: !4138, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 933, column: 28, scope: !4042)
!4142 = !DILocation(line: 0, scope: !4109, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 1467, column: 16, scope: !4138, inlinedAt: !4141)
!4144 = !DILocation(line: 1455, column: 23, scope: !4109, inlinedAt: !4143)
!4145 = !DILocation(line: 1455, column: 31, scope: !4109, inlinedAt: !4143)
!4146 = !DILocation(line: 933, column: 41, scope: !4042)
!4147 = !DILocation(line: 933, column: 49, scope: !4042)
!4148 = !DILocation(line: 933, column: 54, scope: !4042)
!4149 = !DILocation(line: 936, column: 5, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !6, line: 936, column: 5)
!4151 = distinct !DILexicalBlock(scope: !4042, file: !6, line: 936, column: 5)
!4152 = !DILocation(line: 936, column: 5, scope: !4151)
!4153 = !DILocation(line: 937, column: 5, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4155, file: !6, line: 937, column: 5)
!4155 = distinct !DILexicalBlock(scope: !4042, file: !6, line: 937, column: 5)
!4156 = !DILocation(line: 937, column: 5, scope: !4155)
!4157 = !DILocation(line: 937, column: 5, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4154, file: !6, line: 937, column: 5)
!4159 = !DILocation(line: 939, column: 5, scope: !4042)
!4160 = !DILocation(line: 939, column: 17, scope: !4042)
!4161 = !DILocation(line: 939, column: 21, scope: !4042)
!4162 = !DILocation(line: 943, column: 9, scope: !4053)
!4163 = !DILocation(line: 943, column: 28, scope: !4053)
!4164 = !DILocation(line: 0, scope: !2042, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 943, column: 28, scope: !4053)
!4166 = !DILocation(line: 405, column: 9, scope: !2049, inlinedAt: !4165)
!4167 = !DILocation(line: 944, column: 27, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4053, file: !6, line: 944, column: 13)
!4169 = !DILocation(line: 944, column: 33, scope: !4168)
!4170 = !DILocation(line: 944, column: 13, scope: !4053)
!4171 = !DILocation(line: 948, column: 9, scope: !4053)
!4172 = !DILocation(line: 0, scope: !1096, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 948, column: 9, scope: !4053)
!4174 = !DILocation(line: 38, column: 11, scope: !1096, inlinedAt: !4173)
!4175 = !DILocation(line: 38, column: 30, scope: !1096, inlinedAt: !4173)
!4176 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !4173)
!4177 = !DILocation(line: 44, column: 13, scope: !1105, inlinedAt: !4173)
!4178 = !DILocation(line: 44, column: 17, scope: !1105, inlinedAt: !4173)
!4179 = !DILocation(line: 47, column: 9, scope: !1108, inlinedAt: !4173)
!4180 = !DILocation(line: 47, column: 13, scope: !1108, inlinedAt: !4173)
!4181 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !4173)
!4182 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !4173)
!4183 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !4173)
!4184 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !4173)
!4185 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !4173)
!4186 = !DILocation(line: 0, scope: !1110, inlinedAt: !4173)
!4187 = !DILocation(line: 53, column: 13, scope: !2970, inlinedAt: !4173)
!4188 = !DILocation(line: 53, column: 17, scope: !2970, inlinedAt: !4173)
!4189 = !DILocation(line: 0, scope: !1113, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 949, column: 13, scope: !4053)
!4191 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4190)
!4192 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !4190)
!4193 = !DILocation(line: 0, scope: !1891, inlinedAt: !4194)
!4194 = distinct !DILocation(line: 949, column: 59, scope: !4053)
!4195 = !DILocation(line: 98, column: 45, scope: !1891, inlinedAt: !4194)
!4196 = !{!2954, !1191, i64 16}
!4197 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !4194)
!4198 = !DILocation(line: 98, column: 13, scope: !1891, inlinedAt: !4194)
!4199 = !DILocation(line: 0, scope: !1113, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 950, column: 13, scope: !4053)
!4201 = !DILocation(line: 62, column: 48, scope: !1119, inlinedAt: !4200)
!4202 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4200)
!4203 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !4200)
!4204 = !DILocation(line: 950, column: 29, scope: !4053)
!4205 = !DILocation(line: 0, scope: !1891, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 950, column: 26, scope: !4053)
!4207 = !DILocation(line: 98, column: 45, scope: !1891, inlinedAt: !4206)
!4208 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !4206)
!4209 = !DILocation(line: 98, column: 13, scope: !1891, inlinedAt: !4206)
!4210 = !DILocation(line: 0, scope: !1113, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 950, column: 33, scope: !4053)
!4212 = !DILocation(line: 62, column: 48, scope: !1119, inlinedAt: !4211)
!4213 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4211)
!4214 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !4211)
!4215 = !DILocation(line: 950, column: 49, scope: !4053)
!4216 = !DILocation(line: 0, scope: !1891, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 950, column: 46, scope: !4053)
!4218 = !DILocation(line: 98, column: 45, scope: !1891, inlinedAt: !4217)
!4219 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !4217)
!4220 = !DILocation(line: 98, column: 13, scope: !1891, inlinedAt: !4217)
!4221 = !DILocation(line: 0, scope: !1113, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 950, column: 53, scope: !4053)
!4223 = !DILocation(line: 62, column: 48, scope: !1119, inlinedAt: !4222)
!4224 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4222)
!4225 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !4222)
!4226 = !DILocation(line: 0, scope: !1122, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 948, column: 9, scope: !4053)
!4228 = !DILocation(line: 167, column: 14, scope: !1128, inlinedAt: !4227)
!4229 = !DILocation(line: 0, scope: !1128, inlinedAt: !4227)
!4230 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !4227)
!4231 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !4227)
!4232 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !4227)
!4233 = !DILocation(line: 0, scope: !1136, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !4227)
!4235 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !4234)
!4236 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !4234)
!4237 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !4234)
!4238 = !DILocation(line: 174, column: 30, scope: !1145, inlinedAt: !4227)
!4239 = !DILocation(line: 174, column: 44, scope: !1145, inlinedAt: !4227)
!4240 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !4227)
!4241 = !DILocation(line: 180, column: 13, scope: !1150, inlinedAt: !4227)
!4242 = !DILocation(line: 180, column: 21, scope: !1150, inlinedAt: !4227)
!4243 = !DILocation(line: 180, column: 24, scope: !1150, inlinedAt: !4227)
!4244 = !DILocation(line: 180, column: 31, scope: !1150, inlinedAt: !4227)
!4245 = !DILocation(line: 180, column: 28, scope: !1150, inlinedAt: !4227)
!4246 = !DILocation(line: 180, column: 13, scope: !1129, inlinedAt: !4227)
!4247 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !4227)
!4248 = !DILocation(line: 182, column: 9, scope: !1149, inlinedAt: !4227)
!4249 = !DILocation(line: 953, column: 29, scope: !4053)
!4250 = !DILocation(line: 0, scope: !4053)
!4251 = !DILocation(line: 957, column: 24, scope: !4057)
!4252 = !DILocation(line: 0, scope: !1096, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 958, column: 13, scope: !4056)
!4254 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !4253)
!4255 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !4253)
!4256 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !4253)
!4257 = !DILocation(line: 0, scope: !1113, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 958, column: 33, scope: !4056)
!4259 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4258)
!4260 = !DILocation(line: 0, scope: !1122, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 958, column: 13, scope: !4056)
!4262 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !4261)
!4263 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !4261)
!4264 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !4253)
!4265 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !4253)
!4266 = !DILocation(line: 0, scope: !1136, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !4261)
!4268 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !4267)
!4269 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !4267)
!4270 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !4267)
!4271 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !4261)
!4272 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !4261)
!4273 = !DILocation(line: 0, scope: !4056)
!4274 = !DILocation(line: 960, column: 88, scope: !4056)
!4275 = !DILocation(line: 960, column: 109, scope: !4056)
!4276 = !DILocation(line: 960, column: 55, scope: !4056)
!4277 = !DILocation(line: 961, column: 54, scope: !4056)
!4278 = !DILocation(line: 962, column: 89, scope: !4056)
!4279 = !DILocation(line: 962, column: 70, scope: !4056)
!4280 = !DILocation(line: 962, column: 95, scope: !4056)
!4281 = !DILocation(line: 963, column: 58, scope: !4056)
!4282 = !DILocation(line: 963, column: 39, scope: !4056)
!4283 = !DILocation(line: 963, column: 64, scope: !4056)
!4284 = !DILocation(line: 963, column: 77, scope: !4056)
!4285 = !DILocation(line: 962, column: 13, scope: !4056)
!4286 = !DILocation(line: 964, column: 13, scope: !4056)
!4287 = !DILocation(line: 965, column: 13, scope: !4056)
!4288 = !DILocation(line: 966, column: 9, scope: !4056)
!4289 = !DILocation(line: 967, column: 17, scope: !4061)
!4290 = !DILocation(line: 970, column: 65, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4292, file: !6, line: 967, column: 29)
!4292 = distinct !DILexicalBlock(scope: !4061, file: !6, line: 967, column: 17)
!4293 = !DILocation(line: 970, column: 17, scope: !4291)
!4294 = !DILocation(line: 972, column: 71, scope: !4291)
!4295 = !DILocation(line: 972, column: 52, scope: !4291)
!4296 = !DILocation(line: 972, column: 77, scope: !4291)
!4297 = !DILocation(line: 972, column: 35, scope: !4291)
!4298 = !DILocation(line: 972, column: 25, scope: !4291)
!4299 = !DILocation(line: 972, column: 104, scope: !4291)
!4300 = !DILocation(line: 972, column: 85, scope: !4291)
!4301 = !DILocation(line: 972, column: 110, scope: !4291)
!4302 = !DILocation(line: 972, column: 82, scope: !4291)
!4303 = !DILocation(line: 972, column: 23, scope: !4291)
!4304 = !DILocation(line: 973, column: 13, scope: !4291)
!4305 = !DILocation(line: 976, column: 17, scope: !4061)
!4306 = !DILocation(line: 0, scope: !4061)
!4307 = !DILocation(line: 986, column: 13, scope: !4061)
!4308 = !DILocation(line: 988, column: 17, scope: !4061)
!4309 = !DILocation(line: 979, column: 65, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4311, file: !6, line: 976, column: 27)
!4311 = distinct !DILexicalBlock(scope: !4061, file: !6, line: 976, column: 17)
!4312 = !DILocation(line: 979, column: 17, scope: !4310)
!4313 = !DILocation(line: 981, column: 50, scope: !4310)
!4314 = !DILocation(line: 981, column: 31, scope: !4310)
!4315 = !DILocation(line: 981, column: 56, scope: !4310)
!4316 = !DILocation(line: 982, column: 17, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4310, file: !6, line: 982, column: 17)
!4318 = !DILocation(line: 982, column: 17, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4320, file: !6, line: 982, column: 17)
!4320 = distinct !DILexicalBlock(scope: !4317, file: !6, line: 982, column: 17)
!4321 = !DILocation(line: 983, column: 35, scope: !4310)
!4322 = !DILocation(line: 983, column: 25, scope: !4310)
!4323 = !DILocation(line: 983, column: 85, scope: !4310)
!4324 = !DILocation(line: 983, column: 66, scope: !4310)
!4325 = !DILocation(line: 983, column: 91, scope: !4310)
!4326 = !DILocation(line: 983, column: 63, scope: !4310)
!4327 = !DILocation(line: 983, column: 23, scope: !4310)
!4328 = !DILocation(line: 989, column: 21, scope: !4064)
!4329 = !DILocation(line: 989, column: 21, scope: !4065)
!4330 = !DILocation(line: 0, scope: !1920, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 990, column: 46, scope: !4063)
!4332 = !DILocation(line: 0, scope: !1925, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 1519, column: 25, scope: !1920, inlinedAt: !4331)
!4334 = !DILocation(line: 0, scope: !1929, inlinedAt: !4333)
!4335 = !DILocation(line: 1508, column: 29, scope: !1934, inlinedAt: !4333)
!4336 = !DILocation(line: 1508, column: 27, scope: !1934, inlinedAt: !4333)
!4337 = !DILocation(line: 1508, column: 9, scope: !1929, inlinedAt: !4333)
!4338 = !DILocation(line: 0, scope: !1208, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 1514, column: 36, scope: !1925, inlinedAt: !4333)
!4340 = !DILocation(line: 482, column: 17, scope: !1208, inlinedAt: !4339)
!4341 = !DILocation(line: 0, scope: !1941, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 1519, column: 33, scope: !1920, inlinedAt: !4331)
!4343 = !DILocation(line: 0, scope: !1945, inlinedAt: !4342)
!4344 = !DILocation(line: 1497, column: 9, scope: !1945, inlinedAt: !4342)
!4345 = !DILocation(line: 1509, column: 24, scope: !1951, inlinedAt: !4333)
!4346 = !DILocation(line: 1509, column: 31, scope: !1951, inlinedAt: !4333)
!4347 = !DILocation(line: 1509, column: 17, scope: !1952, inlinedAt: !4333)
!4348 = !DILocation(line: 1510, column: 37, scope: !1956, inlinedAt: !4333)
!4349 = !DILocation(line: 1510, column: 61, scope: !1956, inlinedAt: !4333)
!4350 = !DILocation(line: 1510, column: 68, scope: !1956, inlinedAt: !4333)
!4351 = !DILocation(line: 1510, column: 53, scope: !1956, inlinedAt: !4333)
!4352 = !DILocation(line: 1510, column: 51, scope: !1956, inlinedAt: !4333)
!4353 = !DILocation(line: 1510, column: 23, scope: !1956, inlinedAt: !4333)
!4354 = !DILocation(line: 1511, column: 13, scope: !1956, inlinedAt: !4333)
!4355 = !DILocation(line: 1508, column: 42, scope: !1934, inlinedAt: !4333)
!4356 = distinct !{!4356, !4337, !4357, !1042}
!4357 = !DILocation(line: 1512, column: 9, scope: !1929, inlinedAt: !4333)
!4358 = !DILocation(line: 1498, column: 24, scope: !1967, inlinedAt: !4342)
!4359 = !DILocation(line: 1498, column: 31, scope: !1967, inlinedAt: !4342)
!4360 = !DILocation(line: 1498, column: 17, scope: !1968, inlinedAt: !4342)
!4361 = !DILocation(line: 1499, column: 37, scope: !1973, inlinedAt: !4342)
!4362 = !DILocation(line: 1499, column: 61, scope: !1973, inlinedAt: !4342)
!4363 = !DILocation(line: 1499, column: 68, scope: !1973, inlinedAt: !4342)
!4364 = !DILocation(line: 1499, column: 53, scope: !1973, inlinedAt: !4342)
!4365 = !DILocation(line: 1499, column: 51, scope: !1973, inlinedAt: !4342)
!4366 = !DILocation(line: 1499, column: 23, scope: !1973, inlinedAt: !4342)
!4367 = !DILocation(line: 1500, column: 13, scope: !1973, inlinedAt: !4342)
!4368 = !DILocation(line: 1497, column: 42, scope: !1969, inlinedAt: !4342)
!4369 = !DILocation(line: 1497, column: 27, scope: !1969, inlinedAt: !4342)
!4370 = distinct !{!4370, !4344, !4371, !1042}
!4371 = !DILocation(line: 1501, column: 9, scope: !1945, inlinedAt: !4342)
!4372 = !DILocation(line: 482, column: 22, scope: !1208, inlinedAt: !4339)
!4373 = !DILocation(line: 482, column: 27, scope: !1208, inlinedAt: !4339)
!4374 = !DILocation(line: 1513, column: 15, scope: !1925, inlinedAt: !4333)
!4375 = !DILocation(line: 0, scope: !1208, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 1502, column: 36, scope: !1941, inlinedAt: !4342)
!4377 = !DILocation(line: 1519, column: 31, scope: !1920, inlinedAt: !4331)
!4378 = !DILocation(line: 0, scope: !4063)
!4379 = !DILocation(line: 991, column: 21, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4381, file: !6, line: 991, column: 21)
!4381 = distinct !DILexicalBlock(scope: !4063, file: !6, line: 991, column: 21)
!4382 = !DILocation(line: 991, column: 21, scope: !4381)
!4383 = !DILocation(line: 991, column: 21, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4380, file: !6, line: 991, column: 21)
!4385 = !DILocation(line: 995, column: 50, scope: !4063)
!4386 = !DILocation(line: 995, column: 21, scope: !4063)
!4387 = !DILocation(line: 996, column: 17, scope: !4063)
!4388 = !DILocation(line: 998, column: 65, scope: !4065)
!4389 = !DILocation(line: 998, column: 17, scope: !4065)
!4390 = !DILocation(line: 999, column: 13, scope: !4065)
!4391 = !DILocation(line: 1003, column: 28, scope: !4053)
!4392 = !DILocation(line: 0, scope: !1096, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 1004, column: 9, scope: !4053)
!4394 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !4393)
!4395 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !4393)
!4396 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !4393)
!4397 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !4393)
!4398 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !4393)
!4399 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !4393)
!4400 = !DILocation(line: 0, scope: !1110, inlinedAt: !4393)
!4401 = !DILocation(line: 0, scope: !1113, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 1004, column: 29, scope: !4053)
!4403 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4402)
!4404 = !DILocation(line: 1004, column: 57, scope: !4053)
!4405 = !DILocation(line: 1004, column: 48, scope: !4053)
!4406 = !DILocation(line: 1004, column: 69, scope: !4053)
!4407 = !DILocation(line: 0, scope: !2148, inlinedAt: !4408)
!4408 = distinct !DILocation(line: 1004, column: 45, scope: !4053)
!4409 = !DILocation(line: 88, column: 15, scope: !2148, inlinedAt: !4408)
!4410 = !DILocation(line: 0, scope: !1113, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 1004, column: 77, scope: !4053)
!4412 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4411)
!4413 = !DILocation(line: 0, scope: !1122, inlinedAt: !4414)
!4414 = distinct !DILocation(line: 1004, column: 9, scope: !4053)
!4415 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !4414)
!4416 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !4414)
!4417 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !4414)
!4418 = !DILocation(line: 0, scope: !1136, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !4414)
!4420 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !4419)
!4421 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !4419)
!4422 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !4419)
!4423 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !4414)
!4424 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !4414)
!4425 = !DILocation(line: 1006, column: 5, scope: !4042)
!4426 = !DILocation(line: 0, scope: !2170, inlinedAt: !4427)
!4427 = distinct !DILocation(line: 1006, column: 5, scope: !4042)
!4428 = !DILocation(line: 408, column: 9, scope: !2175, inlinedAt: !4427)
!4429 = !DILocation(line: 1009, column: 1, scope: !4042)
!4430 = distinct !DISubprogram(name: "do_device_to_device_copy", linkageName: "_ZN6Halide7Runtime8Internal5Metal12_GLOBAL__N_124do_device_to_device_copyEPvPNS2_24mtl_blit_command_encoderERKNS1_11device_copyEyyi", scope: !4431, file: !6, line: 300, type: !4432, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4434)
!4431 = !DINamespace(scope: !2)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!57, !99, !596, !1002, !48, !48, !57}
!4434 = !{!4435, !4436, !4437, !4438, !4439, !4440, !4441, !4444, !4445, !4447}
!4435 = !DILocalVariable(name: "user_context", arg: 1, scope: !4430, file: !6, line: 300, type: !99)
!4436 = !DILocalVariable(name: "encoder", arg: 2, scope: !4430, file: !6, line: 300, type: !596)
!4437 = !DILocalVariable(name: "c", arg: 3, scope: !4430, file: !6, line: 301, type: !1002)
!4438 = !DILocalVariable(name: "src_offset", arg: 4, scope: !4430, file: !6, line: 301, type: !48)
!4439 = !DILocalVariable(name: "dst_offset", arg: 5, scope: !4430, file: !6, line: 301, type: !48)
!4440 = !DILocalVariable(name: "d", arg: 6, scope: !4430, file: !6, line: 301, type: !57)
!4441 = !DILocalVariable(name: "src_off", scope: !4442, file: !6, line: 308, type: !48)
!4442 = distinct !DILexicalBlock(scope: !4443, file: !6, line: 305, column: 12)
!4443 = distinct !DILexicalBlock(scope: !4430, file: !6, line: 302, column: 9)
!4444 = !DILocalVariable(name: "dst_off", scope: !4442, file: !6, line: 308, type: !48)
!4445 = !DILocalVariable(name: "i", scope: !4446, file: !6, line: 309, type: !48)
!4446 = distinct !DILexicalBlock(scope: !4442, file: !6, line: 309, column: 9)
!4447 = !DILocalVariable(name: "err", scope: !4448, file: !6, line: 310, type: !57)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !6, line: 309, column: 56)
!4449 = distinct !DILexicalBlock(scope: !4446, file: !6, line: 309, column: 9)
!4450 = !DILocation(line: 0, scope: !4430)
!4451 = !DILocation(line: 302, column: 11, scope: !4443)
!4452 = !DILocation(line: 302, column: 9, scope: !4430)
!4453 = !DILocation(line: 0, scope: !4446)
!4454 = !DILocation(line: 0, scope: !4442)
!4455 = !DILocation(line: 309, column: 45, scope: !4449)
!4456 = !DILocation(line: 309, column: 34, scope: !4449)
!4457 = !DILocation(line: 309, column: 32, scope: !4449)
!4458 = !DILocation(line: 309, column: 9, scope: !4446)
!4459 = !DILocation(line: 303, column: 63, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4443, file: !6, line: 302, column: 17)
!4461 = !DILocation(line: 303, column: 44, scope: !4460)
!4462 = !DILocation(line: 303, column: 69, scope: !4460)
!4463 = !DILocation(line: 303, column: 76, scope: !4460)
!4464 = !DILocation(line: 303, column: 86, scope: !4460)
!4465 = !DILocation(line: 304, column: 54, scope: !4460)
!4466 = !DILocation(line: 304, column: 35, scope: !4460)
!4467 = !DILocation(line: 304, column: 60, scope: !4460)
!4468 = !DILocation(line: 304, column: 79, scope: !4460)
!4469 = !DILocation(line: 303, column: 9, scope: !4460)
!4470 = !DILocation(line: 305, column: 5, scope: !4460)
!4471 = !DILocation(line: 310, column: 85, scope: !4448)
!4472 = !DILocation(line: 310, column: 107, scope: !4448)
!4473 = !DILocation(line: 310, column: 23, scope: !4448)
!4474 = !DILocation(line: 0, scope: !4448)
!4475 = !DILocation(line: 311, column: 24, scope: !4448)
!4476 = !DILocation(line: 311, column: 21, scope: !4448)
!4477 = !DILocation(line: 312, column: 24, scope: !4448)
!4478 = !DILocation(line: 312, column: 21, scope: !4448)
!4479 = !DILocation(line: 309, column: 52, scope: !4449)
!4480 = distinct !{!4480, !4458, !4481, !1042}
!4481 = !DILocation(line: 316, column: 9, scope: !4446)
!4482 = !DILocation(line: 319, column: 1, scope: !4430)
!4483 = distinct !DISubprogram(name: "metal_device_crop_from_offset", scope: !2663, file: !6, line: 1013, type: !4484, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4486)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!57, !99, !283, !418, !145}
!4486 = !{!4487, !4488, !4489, !4490, !4491, !4492}
!4487 = !DILocalVariable(name: "user_context", arg: 1, scope: !4483, file: !6, line: 1013, type: !99)
!4488 = !DILocalVariable(name: "src", arg: 2, scope: !4483, file: !6, line: 1014, type: !283)
!4489 = !DILocalVariable(name: "offset", arg: 3, scope: !4483, file: !6, line: 1015, type: !418)
!4490 = !DILocalVariable(name: "dst", arg: 4, scope: !4483, file: !6, line: 1016, type: !145)
!4491 = !DILocalVariable(name: "metal_context", scope: !4483, file: !6, line: 1017, type: !947)
!4492 = !DILocalVariable(name: "new_handle", scope: !4483, file: !6, line: 1023, type: !910)
!4493 = !DILocation(line: 0, scope: !4483)
!4494 = !DILocation(line: 1017, column: 5, scope: !4483)
!4495 = !DILocation(line: 1017, column: 24, scope: !4483)
!4496 = !DILocation(line: 0, scope: !2042, inlinedAt: !4497)
!4497 = distinct !DILocation(line: 1017, column: 24, scope: !4483)
!4498 = !DILocation(line: 405, column: 9, scope: !2049, inlinedAt: !4497)
!4499 = !DILocation(line: 1018, column: 23, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4483, file: !6, line: 1018, column: 9)
!4501 = !DILocation(line: 1018, column: 29, scope: !4500)
!4502 = !DILocation(line: 1018, column: 9, scope: !4483)
!4503 = !DILocation(line: 1022, column: 34, scope: !4483)
!4504 = !DILocation(line: 1022, column: 10, scope: !4483)
!4505 = !DILocation(line: 1022, column: 27, scope: !4483)
!4506 = !DILocation(line: 1023, column: 50, scope: !4483)
!4507 = !DILocation(line: 1024, column: 20, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4483, file: !6, line: 1024, column: 9)
!4509 = !DILocation(line: 1024, column: 9, scope: !4483)
!4510 = !DILocation(line: 0, scope: !1689, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 1025, column: 9, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4508, file: !6, line: 1024, column: 32)
!4513 = !DILocation(line: 44, column: 27, scope: !1771, inlinedAt: !4511)
!4514 = !DILocation(line: 48, column: 13, scope: !1720, inlinedAt: !4511)
!4515 = !DILocation(line: 48, column: 13, scope: !1698, inlinedAt: !4511)
!4516 = !DILocation(line: 0, scope: !1700, inlinedAt: !4517)
!4517 = distinct !DILocation(line: 1025, column: 29, scope: !4512)
!4518 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !4517)
!4519 = !DILocation(line: 0, scope: !1709, inlinedAt: !4520)
!4520 = distinct !DILocation(line: 1025, column: 9, scope: !4512)
!4521 = !DILocation(line: 168, column: 13, scope: !1714, inlinedAt: !4520)
!4522 = !DILocation(line: 169, column: 9, scope: !1714, inlinedAt: !4520)
!4523 = !DILocation(line: 49, column: 23, scope: !1719, inlinedAt: !4511)
!4524 = !DILocation(line: 50, column: 18, scope: !1719, inlinedAt: !4511)
!4525 = !DILocation(line: 0, scope: !1723, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 170, column: 13, scope: !1727, inlinedAt: !4520)
!4527 = !DILocation(line: 163, column: 81, scope: !1723, inlinedAt: !4526)
!4528 = !DILocation(line: 163, column: 87, scope: !1723, inlinedAt: !4526)
!4529 = !DILocation(line: 163, column: 15, scope: !1723, inlinedAt: !4526)
!4530 = !DILocation(line: 172, column: 17, scope: !1732, inlinedAt: !4520)
!4531 = !DILocation(line: 181, column: 13, scope: !1735, inlinedAt: !4520)
!4532 = !DILocation(line: 1026, column: 9, scope: !4512)
!4533 = !DILocation(line: 1029, column: 45, scope: !4483)
!4534 = !DILocation(line: 1029, column: 54, scope: !4483)
!4535 = !DILocation(line: 1029, column: 5, scope: !4483)
!4536 = !DILocation(line: 1030, column: 46, scope: !4483)
!4537 = !DILocation(line: 1030, column: 24, scope: !4483)
!4538 = !DILocation(line: 1030, column: 55, scope: !4483)
!4539 = !DILocation(line: 1030, column: 17, scope: !4483)
!4540 = !DILocation(line: 1030, column: 21, scope: !4483)
!4541 = !DILocation(line: 1031, column: 58, scope: !4483)
!4542 = !DILocation(line: 1031, column: 65, scope: !4483)
!4543 = !DILocation(line: 1031, column: 17, scope: !4483)
!4544 = !DILocation(line: 1031, column: 24, scope: !4483)
!4545 = !DILocation(line: 1032, column: 19, scope: !4483)
!4546 = !DILocation(line: 1032, column: 10, scope: !4483)
!4547 = !DILocation(line: 1032, column: 17, scope: !4483)
!4548 = !DILocation(line: 1033, column: 5, scope: !4483)
!4549 = !DILocation(line: 0, scope: !2170, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 1034, column: 1, scope: !4483)
!4551 = !DILocation(line: 408, column: 9, scope: !2175, inlinedAt: !4550)
!4552 = !DILocation(line: 1034, column: 1, scope: !4483)
!4553 = distinct !DISubprogram(name: "halide_metal_device_crop", scope: !6, file: !6, line: 1038, type: !281, scopeLine: 1040, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4554)
!4554 = !{!4555, !4556, !4557, !4558}
!4555 = !DILocalVariable(name: "user_context", arg: 1, scope: !4553, file: !6, line: 1038, type: !99)
!4556 = !DILocalVariable(name: "src", arg: 2, scope: !4553, file: !6, line: 1039, type: !283)
!4557 = !DILocalVariable(name: "dst", arg: 3, scope: !4553, file: !6, line: 1040, type: !145)
!4558 = !DILocalVariable(name: "offset", scope: !4553, file: !6, line: 1041, type: !4559)
!4559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!4560 = !DILocation(line: 0, scope: !4553)
!4561 = !DILocalVariable(name: "src", arg: 1, scope: !4562, file: !999, line: 172, type: !283)
!4562 = distinct !DISubprogram(name: "calc_device_crop_byte_offset", linkageName: "_ZN6Halide7Runtime8Internal28calc_device_crop_byte_offsetEPK15halide_buffer_tPS2_", scope: !3, file: !999, line: 172, type: !4563, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4565)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!418, !283, !145}
!4565 = !{!4561, !4566, !4567, !4568}
!4566 = !DILocalVariable(name: "dst", arg: 2, scope: !4562, file: !999, line: 172, type: !145)
!4567 = !DILocalVariable(name: "offset", scope: !4562, file: !999, line: 173, type: !418)
!4568 = !DILocalVariable(name: "i", scope: !4569, file: !999, line: 174, type: !57)
!4569 = distinct !DILexicalBlock(scope: !4562, file: !999, line: 174, column: 5)
!4570 = !DILocation(line: 0, scope: !4562, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 1041, column: 28, scope: !4553)
!4572 = !DILocation(line: 0, scope: !4569, inlinedAt: !4571)
!4573 = !DILocation(line: 174, column: 30, scope: !4574, inlinedAt: !4571)
!4574 = distinct !DILexicalBlock(scope: !4569, file: !999, line: 174, column: 5)
!4575 = !DILocation(line: 174, column: 23, scope: !4574, inlinedAt: !4571)
!4576 = !DILocation(line: 174, column: 5, scope: !4569, inlinedAt: !4571)
!4577 = !DILocation(line: 175, column: 32, scope: !4578, inlinedAt: !4571)
!4578 = distinct !DILexicalBlock(scope: !4574, file: !999, line: 174, column: 47)
!4579 = !DILocation(line: 175, column: 50, scope: !4578, inlinedAt: !4571)
!4580 = !DILocation(line: 175, column: 36, scope: !4578, inlinedAt: !4571)
!4581 = !DILocation(line: 175, column: 19, scope: !4578, inlinedAt: !4571)
!4582 = !DILocation(line: 175, column: 78, scope: !4578, inlinedAt: !4571)
!4583 = !DILocation(line: 175, column: 66, scope: !4578, inlinedAt: !4571)
!4584 = !DILocation(line: 175, column: 55, scope: !4578, inlinedAt: !4571)
!4585 = !DILocation(line: 175, column: 16, scope: !4578, inlinedAt: !4571)
!4586 = !DILocation(line: 174, column: 43, scope: !4574, inlinedAt: !4571)
!4587 = distinct !{!4587, !4576, !4588, !1042}
!4588 = !DILocation(line: 176, column: 5, scope: !4569, inlinedAt: !4571)
!4589 = !DILocation(line: 0, scope: !1208, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 177, column: 25, scope: !4562, inlinedAt: !4571)
!4591 = !DILocation(line: 482, column: 17, scope: !1208, inlinedAt: !4590)
!4592 = !DILocation(line: 482, column: 22, scope: !1208, inlinedAt: !4590)
!4593 = !DILocation(line: 482, column: 27, scope: !1208, inlinedAt: !4590)
!4594 = !DILocation(line: 177, column: 12, scope: !4562, inlinedAt: !4571)
!4595 = !DILocation(line: 1042, column: 12, scope: !4553)
!4596 = !DILocation(line: 1042, column: 5, scope: !4553)
!4597 = distinct !DISubprogram(name: "halide_metal_device_slice", scope: !6, file: !6, line: 1045, type: !286, scopeLine: 1048, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4598)
!4598 = !{!4599, !4600, !4601, !4602, !4603, !4604}
!4599 = !DILocalVariable(name: "user_context", arg: 1, scope: !4597, file: !6, line: 1045, type: !99)
!4600 = !DILocalVariable(name: "src", arg: 2, scope: !4597, file: !6, line: 1046, type: !283)
!4601 = !DILocalVariable(name: "slice_dim", arg: 3, scope: !4597, file: !6, line: 1047, type: !57)
!4602 = !DILocalVariable(name: "slice_pos", arg: 4, scope: !4597, file: !6, line: 1047, type: !57)
!4603 = !DILocalVariable(name: "dst", arg: 5, scope: !4597, file: !6, line: 1048, type: !145)
!4604 = !DILocalVariable(name: "offset", scope: !4597, file: !6, line: 1049, type: !4559)
!4605 = !DILocation(line: 0, scope: !4597)
!4606 = !DILocalVariable(name: "src", arg: 1, scope: !4607, file: !999, line: 183, type: !283)
!4607 = distinct !DISubprogram(name: "calc_device_slice_byte_offset", linkageName: "_ZN6Halide7Runtime8Internal29calc_device_slice_byte_offsetEPK15halide_buffer_tii", scope: !3, file: !999, line: 183, type: !4608, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4610)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!418, !283, !57, !57}
!4610 = !{!4606, !4611, !4612, !4613}
!4611 = !DILocalVariable(name: "slice_dim", arg: 2, scope: !4607, file: !999, line: 183, type: !57)
!4612 = !DILocalVariable(name: "slice_pos", arg: 3, scope: !4607, file: !999, line: 183, type: !57)
!4613 = !DILocalVariable(name: "offset", scope: !4607, file: !999, line: 184, type: !418)
!4614 = !DILocation(line: 0, scope: !4607, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 1049, column: 28, scope: !4597)
!4616 = !DILocation(line: 184, column: 40, scope: !4607, inlinedAt: !4615)
!4617 = !DILocation(line: 184, column: 35, scope: !4607, inlinedAt: !4615)
!4618 = !DILocation(line: 184, column: 55, scope: !4607, inlinedAt: !4615)
!4619 = !DILocation(line: 184, column: 33, scope: !4607, inlinedAt: !4615)
!4620 = !DILocation(line: 184, column: 22, scope: !4607, inlinedAt: !4615)
!4621 = !DILocation(line: 184, column: 91, scope: !4607, inlinedAt: !4615)
!4622 = !DILocation(line: 184, column: 71, scope: !4607, inlinedAt: !4615)
!4623 = !DILocation(line: 184, column: 60, scope: !4607, inlinedAt: !4615)
!4624 = !DILocation(line: 0, scope: !1208, inlinedAt: !4625)
!4625 = distinct !DILocation(line: 185, column: 25, scope: !4607, inlinedAt: !4615)
!4626 = !DILocation(line: 482, column: 17, scope: !1208, inlinedAt: !4625)
!4627 = !DILocation(line: 482, column: 22, scope: !1208, inlinedAt: !4625)
!4628 = !DILocation(line: 482, column: 27, scope: !1208, inlinedAt: !4625)
!4629 = !DILocation(line: 185, column: 12, scope: !4607, inlinedAt: !4615)
!4630 = !DILocation(line: 1050, column: 12, scope: !4597)
!4631 = !DILocation(line: 1050, column: 5, scope: !4597)
!4632 = distinct !DISubprogram(name: "halide_metal_device_release_crop", scope: !6, file: !6, line: 1053, type: !264, scopeLine: 1054, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4633)
!4633 = !{!4634, !4635, !4636, !4637, !4638}
!4634 = !DILocalVariable(name: "user_context", arg: 1, scope: !4632, file: !6, line: 1053, type: !99)
!4635 = !DILocalVariable(name: "buf", arg: 2, scope: !4632, file: !6, line: 1054, type: !145)
!4636 = !DILocalVariable(name: "t_before", scope: !4632, file: !6, line: 1065, type: !48)
!4637 = !DILocalVariable(name: "handle", scope: !4632, file: !6, line: 1068, type: !910)
!4638 = !DILocalVariable(name: "t_after", scope: !4632, file: !6, line: 1074, type: !48)
!4639 = !DILocation(line: 0, scope: !4632)
!4640 = !DILocation(line: 0, scope: !1096, inlinedAt: !4641)
!4641 = distinct !DILocation(line: 1058, column: 5, scope: !4632)
!4642 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !4641)
!4643 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !4641)
!4644 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !4641)
!4645 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !4641)
!4646 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !4641)
!4647 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !4641)
!4648 = !DILocation(line: 0, scope: !1110, inlinedAt: !4641)
!4649 = !DILocation(line: 0, scope: !1113, inlinedAt: !4650)
!4650 = distinct !DILocation(line: 1058, column: 25, scope: !4632)
!4651 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4650)
!4652 = !DILocation(line: 1059, column: 28, scope: !4632)
!4653 = !DILocation(line: 0, scope: !1891, inlinedAt: !4654)
!4654 = distinct !DILocation(line: 1059, column: 25, scope: !4632)
!4655 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !4654)
!4656 = !DILocation(line: 0, scope: !1113, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 1059, column: 32, scope: !4632)
!4658 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4657)
!4659 = !DILocation(line: 1059, column: 57, scope: !4632)
!4660 = !DILocation(line: 0, scope: !2215, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 1059, column: 49, scope: !4632)
!4662 = !DILocation(line: 78, column: 15, scope: !2215, inlinedAt: !4661)
!4663 = !DILocation(line: 0, scope: !1113, inlinedAt: !4664)
!4664 = distinct !DILocation(line: 1059, column: 64, scope: !4632)
!4665 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4664)
!4666 = !DILocation(line: 0, scope: !1122, inlinedAt: !4667)
!4667 = distinct !DILocation(line: 1058, column: 5, scope: !4632)
!4668 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !4667)
!4669 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !4667)
!4670 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !4667)
!4671 = !DILocation(line: 0, scope: !1136, inlinedAt: !4672)
!4672 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !4667)
!4673 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !4672)
!4674 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !4672)
!4675 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !4672)
!4676 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !4667)
!4677 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !4667)
!4678 = !DILocation(line: 1060, column: 14, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4632, file: !6, line: 1060, column: 9)
!4680 = !DILocation(line: 1060, column: 21, scope: !4679)
!4681 = !DILocation(line: 1060, column: 9, scope: !4632)
!4682 = !DILocation(line: 1065, column: 25, scope: !4632)
!4683 = !DILocation(line: 1068, column: 51, scope: !4632)
!4684 = !DILocation(line: 1070, column: 31, scope: !4632)
!4685 = !DILocation(line: 1070, column: 5, scope: !4632)
!4686 = !DILocation(line: 1071, column: 10, scope: !4632)
!4687 = !DILocation(line: 1071, column: 5, scope: !4632)
!4688 = !DILocation(line: 1074, column: 24, scope: !4632)
!4689 = !DILocation(line: 0, scope: !1096, inlinedAt: !4690)
!4690 = distinct !DILocation(line: 1075, column: 5, scope: !4632)
!4691 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !4690)
!4692 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !4690)
!4693 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !4690)
!4694 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !4690)
!4695 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !4690)
!4696 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !4690)
!4697 = !DILocation(line: 0, scope: !1110, inlinedAt: !4690)
!4698 = !DILocation(line: 0, scope: !1113, inlinedAt: !4699)
!4699 = distinct !DILocation(line: 1075, column: 25, scope: !4632)
!4700 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4699)
!4701 = !DILocation(line: 1075, column: 53, scope: !4632)
!4702 = !DILocation(line: 1075, column: 44, scope: !4632)
!4703 = !DILocation(line: 1075, column: 65, scope: !4632)
!4704 = !DILocation(line: 0, scope: !2148, inlinedAt: !4705)
!4705 = distinct !DILocation(line: 1075, column: 41, scope: !4632)
!4706 = !DILocation(line: 88, column: 15, scope: !2148, inlinedAt: !4705)
!4707 = !DILocation(line: 0, scope: !1113, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 1075, column: 73, scope: !4632)
!4709 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !4708)
!4710 = !DILocation(line: 0, scope: !1122, inlinedAt: !4711)
!4711 = distinct !DILocation(line: 1075, column: 5, scope: !4632)
!4712 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !4711)
!4713 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !4711)
!4714 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !4711)
!4715 = !DILocation(line: 0, scope: !1136, inlinedAt: !4716)
!4716 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !4711)
!4717 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !4716)
!4718 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !4716)
!4719 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !4716)
!4720 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !4711)
!4721 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !4711)
!4722 = !DILocation(line: 1079, column: 1, scope: !4632)
!4723 = distinct !DISubprogram(name: "halide_metal_wrap_buffer", scope: !6, file: !6, line: 1081, type: !327, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4724)
!4724 = !{!4725, !4726, !4727, !4728}
!4725 = !DILocalVariable(name: "user_context", arg: 1, scope: !4723, file: !6, line: 1081, type: !99)
!4726 = !DILocalVariable(name: "buf", arg: 2, scope: !4723, file: !6, line: 1081, type: !145)
!4727 = !DILocalVariable(name: "buffer", arg: 3, scope: !4723, file: !6, line: 1081, type: !48)
!4728 = !DILocalVariable(name: "handle", scope: !4723, file: !6, line: 1086, type: !910)
!4729 = !DILocation(line: 0, scope: !4723)
!4730 = !DILocation(line: 1082, column: 5, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4732, file: !6, line: 1082, column: 5)
!4732 = distinct !DILexicalBlock(scope: !4723, file: !6, line: 1082, column: 5)
!4733 = !DILocation(line: 1082, column: 5, scope: !4732)
!4734 = !DILocation(line: 1082, column: 5, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4731, file: !6, line: 1082, column: 5)
!4736 = !DILocation(line: 1083, column: 14, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4723, file: !6, line: 1083, column: 9)
!4738 = !DILocation(line: 1083, column: 21, scope: !4737)
!4739 = !DILocation(line: 1083, column: 9, scope: !4723)
!4740 = !DILocation(line: 1086, column: 46, scope: !4723)
!4741 = !DILocation(line: 1087, column: 16, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4723, file: !6, line: 1087, column: 9)
!4743 = !DILocation(line: 1087, column: 9, scope: !4723)
!4744 = !DILocation(line: 0, scope: !1689, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 1088, column: 9, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4742, file: !6, line: 1087, column: 28)
!4747 = !DILocation(line: 44, column: 27, scope: !1771, inlinedAt: !4745)
!4748 = !DILocation(line: 48, column: 13, scope: !1720, inlinedAt: !4745)
!4749 = !DILocation(line: 48, column: 13, scope: !1698, inlinedAt: !4745)
!4750 = !DILocation(line: 0, scope: !1700, inlinedAt: !4751)
!4751 = distinct !DILocation(line: 1088, column: 29, scope: !4746)
!4752 = !DILocation(line: 62, column: 19, scope: !1706, inlinedAt: !4751)
!4753 = !DILocation(line: 0, scope: !1709, inlinedAt: !4754)
!4754 = distinct !DILocation(line: 1088, column: 9, scope: !4746)
!4755 = !DILocation(line: 168, column: 13, scope: !1714, inlinedAt: !4754)
!4756 = !DILocation(line: 169, column: 9, scope: !1714, inlinedAt: !4754)
!4757 = !DILocation(line: 49, column: 23, scope: !1719, inlinedAt: !4745)
!4758 = !DILocation(line: 50, column: 18, scope: !1719, inlinedAt: !4745)
!4759 = !DILocation(line: 0, scope: !1723, inlinedAt: !4760)
!4760 = distinct !DILocation(line: 170, column: 13, scope: !1727, inlinedAt: !4754)
!4761 = !DILocation(line: 163, column: 81, scope: !1723, inlinedAt: !4760)
!4762 = !DILocation(line: 163, column: 87, scope: !1723, inlinedAt: !4760)
!4763 = !DILocation(line: 163, column: 15, scope: !1723, inlinedAt: !4760)
!4764 = !DILocation(line: 172, column: 17, scope: !1732, inlinedAt: !4754)
!4765 = !DILocation(line: 181, column: 13, scope: !1735, inlinedAt: !4754)
!4766 = !DILocation(line: 1089, column: 9, scope: !4746)
!4767 = !DILocation(line: 1091, column: 19, scope: !4723)
!4768 = !DILocation(line: 1091, column: 13, scope: !4723)
!4769 = !DILocation(line: 1091, column: 17, scope: !4723)
!4770 = !DILocation(line: 1092, column: 13, scope: !4723)
!4771 = !DILocation(line: 1092, column: 20, scope: !4723)
!4772 = !DILocation(line: 1094, column: 19, scope: !4723)
!4773 = !DILocation(line: 1094, column: 17, scope: !4723)
!4774 = !DILocation(line: 1095, column: 10, scope: !4723)
!4775 = !DILocation(line: 1095, column: 27, scope: !4723)
!4776 = !DILocation(line: 1096, column: 28, scope: !4723)
!4777 = !DILocation(line: 1096, column: 34, scope: !4723)
!4778 = !DILocation(line: 1096, column: 5, scope: !4723)
!4779 = !DILocation(line: 1097, column: 5, scope: !4723)
!4780 = !DILocation(line: 1098, column: 1, scope: !4723)
!4781 = distinct !DISubprogram(name: "halide_metal_detach_buffer", scope: !6, file: !6, line: 1100, type: !264, scopeLine: 1100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4782)
!4782 = !{!4783, !4784}
!4783 = !DILocalVariable(name: "user_context", arg: 1, scope: !4781, file: !6, line: 1100, type: !99)
!4784 = !DILocalVariable(name: "buf", arg: 2, scope: !4781, file: !6, line: 1100, type: !145)
!4785 = !DILocation(line: 0, scope: !4781)
!4786 = !DILocation(line: 1101, column: 14, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4781, file: !6, line: 1101, column: 9)
!4788 = !DILocation(line: 1101, column: 21, scope: !4787)
!4789 = !DILocation(line: 1101, column: 9, scope: !4781)
!4790 = !DILocation(line: 1104, column: 5, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4792, file: !6, line: 1104, column: 5)
!4792 = distinct !DILexicalBlock(scope: !4781, file: !6, line: 1104, column: 5)
!4793 = !DILocation(line: 1104, column: 5, scope: !4792)
!4794 = !DILocation(line: 1104, column: 5, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4791, file: !6, line: 1104, column: 5)
!4796 = !DILocation(line: 1105, column: 10, scope: !4781)
!4797 = !DILocation(line: 1105, column: 28, scope: !4781)
!4798 = !DILocation(line: 1105, column: 34, scope: !4781)
!4799 = !DILocation(line: 1105, column: 5, scope: !4781)
!4800 = !DILocation(line: 1106, column: 27, scope: !4781)
!4801 = !DILocation(line: 1107, column: 32, scope: !4781)
!4802 = !DILocation(line: 1107, column: 10, scope: !4781)
!4803 = !DILocation(line: 1107, column: 5, scope: !4781)
!4804 = !DILocation(line: 1108, column: 17, scope: !4781)
!4805 = !DILocation(line: 1109, column: 5, scope: !4781)
!4806 = !DILocation(line: 1110, column: 1, scope: !4781)
!4807 = distinct !DISubprogram(name: "halide_metal_get_buffer", scope: !6, file: !6, line: 1112, type: !4808, scopeLine: 1112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4810)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!46, !99, !145}
!4810 = !{!4811, !4812}
!4811 = !DILocalVariable(name: "user_context", arg: 1, scope: !4807, file: !6, line: 1112, type: !99)
!4812 = !DILocalVariable(name: "buf", arg: 2, scope: !4807, file: !6, line: 1112, type: !145)
!4813 = !DILocation(line: 0, scope: !4807)
!4814 = !DILocation(line: 1113, column: 14, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4807, file: !6, line: 1113, column: 9)
!4816 = !DILocation(line: 1113, column: 21, scope: !4815)
!4817 = !DILocation(line: 1113, column: 9, scope: !4807)
!4818 = !DILocation(line: 1116, column: 5, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4820, file: !6, line: 1116, column: 5)
!4820 = distinct !DILexicalBlock(scope: !4807, file: !6, line: 1116, column: 5)
!4821 = !DILocation(line: 1116, column: 5, scope: !4820)
!4822 = !DILocation(line: 1116, column: 5, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4819, file: !6, line: 1116, column: 5)
!4824 = !DILocation(line: 1117, column: 47, scope: !4807)
!4825 = !DILocation(line: 1117, column: 25, scope: !4807)
!4826 = !DILocation(line: 1117, column: 56, scope: !4807)
!4827 = !DILocation(line: 1117, column: 12, scope: !4807)
!4828 = !DILocation(line: 1117, column: 5, scope: !4807)
!4829 = !DILocation(line: 1118, column: 1, scope: !4807)
!4830 = distinct !DISubprogram(name: "halide_metal_get_crop_offset", scope: !6, file: !6, line: 1120, type: !4831, scopeLine: 1120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4833)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!48, !99, !145}
!4833 = !{!4834, !4835}
!4834 = !DILocalVariable(name: "user_context", arg: 1, scope: !4830, file: !6, line: 1120, type: !99)
!4835 = !DILocalVariable(name: "buf", arg: 2, scope: !4830, file: !6, line: 1120, type: !145)
!4836 = !DILocation(line: 0, scope: !4830)
!4837 = !DILocation(line: 1121, column: 14, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4830, file: !6, line: 1121, column: 9)
!4839 = !DILocation(line: 1121, column: 21, scope: !4838)
!4840 = !DILocation(line: 1121, column: 9, scope: !4830)
!4841 = !DILocation(line: 1124, column: 5, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4843, file: !6, line: 1124, column: 5)
!4843 = distinct !DILexicalBlock(scope: !4830, file: !6, line: 1124, column: 5)
!4844 = !DILocation(line: 1124, column: 5, scope: !4843)
!4845 = !DILocation(line: 1124, column: 5, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4842, file: !6, line: 1124, column: 5)
!4847 = !DILocation(line: 1125, column: 46, scope: !4830)
!4848 = !DILocation(line: 1125, column: 24, scope: !4830)
!4849 = !DILocation(line: 1125, column: 55, scope: !4830)
!4850 = !DILocation(line: 1125, column: 5, scope: !4830)
!4851 = !DILocation(line: 1126, column: 1, scope: !4830)
!4852 = distinct !DISubprogram(name: "halide_metal_device_interface", scope: !6, file: !6, line: 1128, type: !4853, scopeLine: 1128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1077)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!150}
!4855 = !DILocation(line: 1129, column: 5, scope: !4852)
!4856 = distinct !DISubprogram(name: "halide_metal_cleanup", scope: !2663, file: !6, line: 1133, type: !307, scopeLine: 1133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1077)
!4857 = !DILocalVariable(name: "this", arg: 1, scope: !4858, type: !2384, flags: DIFlagArtificial | DIFlagObjectPointer)
!4858 = distinct !DISubprogram(name: "release_all<void (void *)>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE11release_allIFvPvEEEvSB_RT_", scope: !36, file: !37, line: 165, type: !4859, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, templateParams: !2812, declaration: !4861, retainedNodes: !4862)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{null, !88, !99, !2810}
!4861 = !DISubprogram(name: "release_all<void (void *)>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE11release_allIFvPvEEEvSB_RT_", scope: !36, file: !37, line: 165, type: !4859, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2812)
!4862 = !{!4857, !4863, !4864, !4865}
!4863 = !DILocalVariable(name: "user_context", arg: 2, scope: !4858, file: !37, line: 165, type: !99)
!4864 = !DILocalVariable(name: "f", arg: 3, scope: !4858, file: !37, line: 165, type: !2810)
!4865 = !DILocalVariable(name: "lock_guard", scope: !4858, file: !37, line: 166, type: !2394)
!4866 = !DILocation(line: 0, scope: !4858, inlinedAt: !4867)
!4867 = distinct !DILocation(line: 1134, column: 23, scope: !4856)
!4868 = !DILocation(line: 0, scope: !2412, inlinedAt: !4869)
!4869 = distinct !DILocation(line: 166, column: 25, scope: !4858, inlinedAt: !4867)
!4870 = !DILocation(line: 16, column: 9, scope: !2419, inlinedAt: !4869)
!4871 = !DILocation(line: 168, column: 9, scope: !4858, inlinedAt: !4867)
!4872 = !DILocation(line: 170, column: 13, scope: !4873, inlinedAt: !4867)
!4873 = distinct !DILexicalBlock(scope: !4858, file: !37, line: 170, column: 13)
!4874 = !{!2430, !1195, i64 24}
!4875 = !DILocation(line: 170, column: 19, scope: !4873, inlinedAt: !4867)
!4876 = !DILocation(line: 170, column: 13, scope: !4858, inlinedAt: !4867)
!4877 = !DILocation(line: 171, column: 18, scope: !4878, inlinedAt: !4867)
!4878 = distinct !DILexicalBlock(scope: !4873, file: !37, line: 170, column: 25)
!4879 = !DILocation(line: 171, column: 13, scope: !4878, inlinedAt: !4867)
!4880 = !DILocation(line: 172, column: 26, scope: !4878, inlinedAt: !4867)
!4881 = !DILocation(line: 173, column: 36, scope: !4878, inlinedAt: !4867)
!4882 = !DILocation(line: 174, column: 9, scope: !4878, inlinedAt: !4867)
!4883 = !DILocation(line: 0, scope: !2584, inlinedAt: !4884)
!4884 = distinct !DILocation(line: 175, column: 5, scope: !4858, inlinedAt: !4867)
!4885 = !DILocation(line: 20, column: 9, scope: !2589, inlinedAt: !4884)
!4886 = !DILocation(line: 1135, column: 5, scope: !4856)
!4887 = !DILocation(line: 1136, column: 1, scope: !4856)
!4888 = !DISubprogram(name: "halide_error", scope: !42, file: !42, line: 111, type: !1806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4889 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !42, file: !42, line: 973, type: !4890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!57, !99, !439, !49}
!4892 = !DISubprogram(name: "halide_string_to_string", scope: !47, file: !47, line: 120, type: !4893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!400, !400, !400, !335}
!4895 = !DISubprogram(name: "halide_pointer_to_string", scope: !47, file: !47, line: 124, type: !4896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!400, !400, !400, !439}
!4898 = !DISubprogram(name: "halide_buffer_to_string", scope: !47, file: !47, line: 125, type: !4899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4899 = !DISubroutineType(types: !4900)
!4900 = !{!400, !400, !400, !283}
!4901 = !DISubprogram(name: "halide_int64_to_string", scope: !47, file: !47, line: 122, type: !4902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!400, !400, !400, !419, !57}
!4904 = !DISubprogram(name: "halide_double_to_string", scope: !47, file: !47, line: 121, type: !4905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!400, !400, !400, !432, !57}
!4907 = !DISubprogram(name: "halide_uint64_to_string", scope: !47, file: !47, line: 123, type: !4908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!400, !400, !400, !49, !57}
!4910 = distinct !DISubprogram(name: "insert", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE6insertERKNS9_17CachedCompilationE", scope: !36, file: !37, line: 47, type: !85, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !84, retainedNodes: !4911)
!4911 = !{!4912, !4913, !4914, !4915, !4917}
!4912 = !DILocalVariable(name: "this", arg: 1, scope: !4910, type: !2384, flags: DIFlagArtificial | DIFlagObjectPointer)
!4913 = !DILocalVariable(name: "entry", arg: 2, scope: !4910, file: !37, line: 47, type: !89)
!4914 = !DILocalVariable(name: "index", scope: !4910, file: !37, line: 59, type: !46)
!4915 = !DILocalVariable(name: "i", scope: !4916, file: !37, line: 60, type: !57)
!4916 = distinct !DILexicalBlock(scope: !4910, file: !37, line: 60, column: 9)
!4917 = !DILocalVariable(name: "effective_index", scope: !4918, file: !37, line: 61, type: !46)
!4918 = distinct !DILexicalBlock(scope: !4919, file: !37, line: 60, column: 65)
!4919 = distinct !DILexicalBlock(scope: !4916, file: !37, line: 60, column: 9)
!4920 = !DILocation(line: 0, scope: !4910)
!4921 = !DILocation(line: 48, column: 13, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4910, file: !37, line: 48, column: 13)
!4923 = !DILocation(line: 48, column: 36, scope: !4922)
!4924 = !DILocation(line: 48, column: 13, scope: !4910)
!4925 = !DILocation(line: 49, column: 18, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4927, file: !37, line: 49, column: 17)
!4927 = distinct !DILexicalBlock(scope: !4922, file: !37, line: 48, column: 42)
!4928 = !DILocation(line: 49, column: 17, scope: !4927)
!4929 = !DILocation(line: 53, column: 33, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4910, file: !37, line: 53, column: 13)
!4931 = !DILocation(line: 53, column: 14, scope: !4930)
!4932 = !DILocation(line: 53, column: 20, scope: !4930)
!4933 = !DILocation(line: 53, column: 13, scope: !4930)
!4934 = !DILocation(line: 53, column: 30, scope: !4930)
!4935 = !DILocation(line: 53, column: 27, scope: !4930)
!4936 = !DILocation(line: 53, column: 57, scope: !4930)
!4937 = !DILocation(line: 53, column: 25, scope: !4930)
!4938 = !DILocation(line: 53, column: 13, scope: !4910)
!4939 = !DILocation(line: 54, column: 54, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4941, file: !37, line: 54, column: 17)
!4941 = distinct !DILexicalBlock(scope: !4930, file: !37, line: 53, column: 72)
!4942 = !DILocation(line: 54, column: 18, scope: !4940)
!4943 = !DILocation(line: 54, column: 17, scope: !4941)
!4944 = !DILocation(line: 58, column: 15, scope: !4910)
!4945 = !DILocation(line: 59, column: 71, scope: !4910)
!4946 = !DILocation(line: 60, column: 32, scope: !4919)
!4947 = !DILocation(line: 59, column: 45, scope: !4910)
!4948 = !DILocation(line: 59, column: 60, scope: !4910)
!4949 = !DILocation(line: 0, scope: !2457, inlinedAt: !4950)
!4950 = distinct !DILocation(line: 59, column: 27, scope: !4910)
!4951 = !DILocation(line: 37, column: 26, scope: !2457, inlinedAt: !4950)
!4952 = !DILocation(line: 37, column: 47, scope: !2457, inlinedAt: !4950)
!4953 = !DILocation(line: 37, column: 45, scope: !2457, inlinedAt: !4950)
!4954 = !DILocation(line: 41, column: 26, scope: !2468, inlinedAt: !4950)
!4955 = !DILocation(line: 41, column: 66, scope: !2468, inlinedAt: !4950)
!4956 = !DILocation(line: 41, column: 59, scope: !2468, inlinedAt: !4950)
!4957 = !DILocation(line: 0, scope: !4916)
!4958 = !DILocation(line: 60, column: 27, scope: !4919)
!4959 = !DILocation(line: 60, column: 9, scope: !4916)
!4960 = distinct !{!4960, !4959, !4961, !1042}
!4961 = !DILocation(line: 66, column: 9, scope: !4916)
!4962 = !DILocation(line: 61, column: 48, scope: !4918)
!4963 = !DILocation(line: 61, column: 53, scope: !4918)
!4964 = !DILocation(line: 0, scope: !4918)
!4965 = !DILocation(line: 62, column: 47, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4918, file: !37, line: 62, column: 17)
!4967 = !DILocation(line: 62, column: 57, scope: !4966)
!4968 = !DILocation(line: 60, column: 61, scope: !4919)
!4969 = !DILocation(line: 62, column: 17, scope: !4918)
!4970 = !DILocation(line: 62, column: 17, scope: !4966)
!4971 = !DILocation(line: 63, column: 47, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4966, file: !37, line: 62, column: 72)
!4973 = !{i64 0, i64 8, !1480, i64 8, i64 8, !1480, i64 16, i64 4, !2423, i64 20, i64 4, !2423}
!4974 = !DILocation(line: 69, column: 9, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4976, file: !37, line: 69, column: 9)
!4976 = distinct !DILexicalBlock(scope: !4977, file: !37, line: 69, column: 9)
!4977 = distinct !DILexicalBlock(scope: !4910, file: !37, line: 69, column: 9)
!4978 = !DILocation(line: 70, column: 9, scope: !4910)
!4979 = !DILocation(line: 71, column: 5, scope: !4910)
!4980 = !DISubprogram(name: "halide_mutex_lock", scope: !42, file: !42, line: 133, type: !4981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{null, !2398}
!4983 = distinct !DISubprogram(name: "resize_table", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE12resize_tableEi", scope: !36, file: !37, line: 108, type: !102, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !101, retainedNodes: !4984)
!4984 = !{!4985, !4986, !4987, !4990, !4991, !4992, !4993, !4997}
!4985 = !DILocalVariable(name: "this", arg: 1, scope: !4983, type: !2384, flags: DIFlagArtificial | DIFlagObjectPointer)
!4986 = !DILocalVariable(name: "size_bits", arg: 2, scope: !4983, file: !37, line: 108, type: !57)
!4987 = !DILocalVariable(name: "new_size", scope: !4988, file: !37, line: 110, type: !57)
!4988 = distinct !DILexicalBlock(scope: !4989, file: !37, line: 109, column: 50)
!4989 = distinct !DILexicalBlock(scope: !4983, file: !37, line: 109, column: 13)
!4990 = !DILocalVariable(name: "old_size", scope: !4988, file: !37, line: 111, type: !57)
!4991 = !DILocalVariable(name: "new_table", scope: !4988, file: !37, line: 112, type: !60)
!4992 = !DILocalVariable(name: "old_table", scope: !4988, file: !37, line: 118, type: !60)
!4993 = !DILocalVariable(name: "i", scope: !4994, file: !37, line: 123, type: !198)
!4994 = distinct !DILexicalBlock(scope: !4995, file: !37, line: 123, column: 17)
!4995 = distinct !DILexicalBlock(scope: !4996, file: !37, line: 122, column: 28)
!4996 = distinct !DILexicalBlock(scope: !4988, file: !37, line: 122, column: 17)
!4997 = !DILocalVariable(name: "result", scope: !4998, file: !37, line: 126, type: !87)
!4998 = distinct !DILexicalBlock(scope: !4999, file: !37, line: 125, column: 63)
!4999 = distinct !DILexicalBlock(scope: !5000, file: !37, line: 124, column: 25)
!5000 = distinct !DILexicalBlock(scope: !5001, file: !37, line: 123, column: 56)
!5001 = distinct !DILexicalBlock(scope: !4994, file: !37, line: 123, column: 17)
!5002 = !DILocation(line: 0, scope: !4983)
!5003 = !DILocation(line: 109, column: 26, scope: !4989)
!5004 = !DILocation(line: 109, column: 23, scope: !4989)
!5005 = !DILocation(line: 109, column: 13, scope: !4983)
!5006 = !DILocation(line: 110, column: 31, scope: !4988)
!5007 = !DILocation(line: 0, scope: !4988)
!5008 = !DILocation(line: 111, column: 31, scope: !4988)
!5009 = !DILocation(line: 112, column: 72, scope: !4988)
!5010 = !DILocation(line: 112, column: 81, scope: !4988)
!5011 = !DILocation(line: 112, column: 65, scope: !4988)
!5012 = !DILocation(line: 113, column: 27, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4988, file: !37, line: 113, column: 17)
!5014 = !DILocation(line: 113, column: 17, scope: !4988)
!5015 = !DILocation(line: 117, column: 13, scope: !4988)
!5016 = !DILocation(line: 118, column: 44, scope: !4988)
!5017 = !DILocation(line: 119, column: 26, scope: !4988)
!5018 = !DILocation(line: 120, column: 36, scope: !4988)
!5019 = !DILocation(line: 122, column: 17, scope: !4996)
!5020 = !DILocation(line: 122, column: 23, scope: !4996)
!5021 = !DILocation(line: 122, column: 17, scope: !4988)
!5022 = !DILocation(line: 0, scope: !4994)
!5023 = !DILocation(line: 123, column: 17, scope: !4994)
!5024 = !DILocation(line: 123, column: 39, scope: !5001)
!5025 = !DILocation(line: 124, column: 38, scope: !4999)
!5026 = !DILocation(line: 124, column: 62, scope: !4999)
!5027 = !DILocation(line: 124, column: 25, scope: !4999)
!5028 = !DILocation(line: 126, column: 39, scope: !4998)
!5029 = !DILocation(line: 0, scope: !4998)
!5030 = !DILocation(line: 127, column: 25, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !4998, file: !37, line: 127, column: 25)
!5032 = !DILocation(line: 127, column: 25, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5034, file: !37, line: 127, column: 25)
!5034 = distinct !DILexicalBlock(scope: !5031, file: !37, line: 127, column: 25)
!5035 = !DILocation(line: 123, column: 52, scope: !5001)
!5036 = distinct !{!5036, !5023, !5037, !1042}
!5037 = !DILocation(line: 129, column: 17, scope: !4994)
!5038 = !DILocation(line: 131, column: 18, scope: !4988)
!5039 = !DILocation(line: 131, column: 13, scope: !4988)
!5040 = !DILocation(line: 134, column: 5, scope: !4983)
!5041 = !DISubprogram(name: "memset", scope: !47, file: !47, line: 96, type: !5042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!99, !99, !57, !119}
!5044 = !DISubprogram(name: "halide_mutex_unlock", scope: !42, file: !42, line: 134, type: !4981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1077)
!5045 = distinct !DISubprogram(name: "release_context<void (void *)>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE15release_contextIFvPvEEEvSB_bS3_RT_", scope: !36, file: !37, line: 137, type: !5046, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, templateParams: !2812, declaration: !5048, retainedNodes: !5049)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{null, !88, !99, !87, !64, !2810}
!5048 = !DISubprogram(name: "release_context<void (void *)>", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEE15release_contextIFvPvEEEvSB_bS3_RT_", scope: !36, file: !37, line: 137, type: !5046, scopeLine: 137, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2812)
!5049 = !{!5050, !5051, !5052, !5053, !5054, !5055}
!5050 = !DILocalVariable(name: "this", arg: 1, scope: !5045, type: !2384, flags: DIFlagArtificial | DIFlagObjectPointer)
!5051 = !DILocalVariable(name: "user_context", arg: 2, scope: !5045, file: !37, line: 137, type: !99)
!5052 = !DILocalVariable(name: "all", arg: 3, scope: !5045, file: !37, line: 137, type: !87)
!5053 = !DILocalVariable(name: "context", arg: 4, scope: !5045, file: !37, line: 137, type: !64)
!5054 = !DILocalVariable(name: "f", arg: 5, scope: !5045, file: !37, line: 137, type: !2810)
!5055 = !DILocalVariable(name: "i", scope: !5056, file: !37, line: 142, type: !57)
!5056 = distinct !DILexicalBlock(scope: !5045, file: !37, line: 142, column: 9)
!5057 = !DILocation(line: 0, scope: !5045)
!5058 = !DILocation(line: 138, column: 13, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5045, file: !37, line: 138, column: 13)
!5060 = !DILocation(line: 138, column: 19, scope: !5059)
!5061 = !DILocation(line: 138, column: 13, scope: !5045)
!5062 = !DILocation(line: 0, scope: !5056)
!5063 = !DILocation(line: 142, column: 35, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5056, file: !37, line: 142, column: 9)
!5065 = !DILocation(line: 142, column: 27, scope: !5064)
!5066 = !DILocation(line: 142, column: 9, scope: !5056)
!5067 = !DILocation(line: 143, column: 17, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5069, file: !37, line: 143, column: 17)
!5069 = distinct !DILexicalBlock(scope: !5064, file: !37, line: 142, column: 65)
!5070 = !DILocation(line: 143, column: 33, scope: !5068)
!5071 = !DILocation(line: 143, column: 43, scope: !5068)
!5072 = !DILocation(line: 143, column: 56, scope: !5068)
!5073 = !DILocation(line: 144, column: 22, scope: !5068)
!5074 = !DILocation(line: 144, column: 42, scope: !5068)
!5075 = !DILocation(line: 144, column: 50, scope: !5068)
!5076 = !DILocation(line: 144, column: 63, scope: !5068)
!5077 = !DILocation(line: 145, column: 33, scope: !5068)
!5078 = !DILocation(line: 145, column: 43, scope: !5068)
!5079 = !DILocation(line: 143, column: 17, scope: !5069)
!5080 = !DILocation(line: 146, column: 17, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5068, file: !37, line: 145, column: 49)
!5082 = !DILocation(line: 0, scope: !1096, inlinedAt: !5083)
!5083 = distinct !DILocation(line: 146, column: 17, scope: !5081)
!5084 = !DILocation(line: 38, column: 11, scope: !1096, inlinedAt: !5083)
!5085 = !DILocation(line: 38, column: 30, scope: !1096, inlinedAt: !5083)
!5086 = !DILocation(line: 44, column: 27, scope: !1105, inlinedAt: !5083)
!5087 = !DILocation(line: 44, column: 17, scope: !1105, inlinedAt: !5083)
!5088 = !DILocation(line: 47, column: 13, scope: !1108, inlinedAt: !5083)
!5089 = !DILocation(line: 48, column: 13, scope: !1110, inlinedAt: !5083)
!5090 = !DILocation(line: 48, column: 13, scope: !1108, inlinedAt: !5083)
!5091 = !DILocation(line: 49, column: 23, scope: !1132, inlinedAt: !5083)
!5092 = !DILocation(line: 49, column: 17, scope: !1132, inlinedAt: !5083)
!5093 = !DILocation(line: 50, column: 18, scope: !1132, inlinedAt: !5083)
!5094 = !DILocation(line: 51, column: 9, scope: !1132, inlinedAt: !5083)
!5095 = !DILocation(line: 53, column: 17, scope: !2970, inlinedAt: !5083)
!5096 = !DILocation(line: 62, column: 48, scope: !1119, inlinedAt: !5097)
!5097 = distinct !DILocation(line: 146, column: 37, scope: !5081)
!5098 = !DILocation(line: 0, scope: !1113, inlinedAt: !5097)
!5099 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !5097)
!5100 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !5097)
!5101 = !DILocation(line: 146, column: 76, scope: !5081)
!5102 = !DILocation(line: 146, column: 92, scope: !5081)
!5103 = !DILocation(line: 0, scope: !1891, inlinedAt: !5104)
!5104 = distinct !DILocation(line: 146, column: 73, scope: !5081)
!5105 = !DILocation(line: 98, column: 45, scope: !1891, inlinedAt: !5104)
!5106 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !5104)
!5107 = !DILocation(line: 98, column: 13, scope: !1891, inlinedAt: !5104)
!5108 = !DILocation(line: 0, scope: !1113, inlinedAt: !5109)
!5109 = distinct !DILocation(line: 147, column: 37, scope: !5081)
!5110 = !DILocation(line: 62, column: 48, scope: !1119, inlinedAt: !5109)
!5111 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !5109)
!5112 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !5109)
!5113 = !DILocation(line: 147, column: 50, scope: !5081)
!5114 = !DILocation(line: 147, column: 66, scope: !5081)
!5115 = !DILocation(line: 0, scope: !2529, inlinedAt: !5116)
!5116 = distinct !DILocation(line: 147, column: 47, scope: !5081)
!5117 = !DILocation(line: 83, column: 44, scope: !2529, inlinedAt: !5116)
!5118 = !DILocation(line: 83, column: 49, scope: !2529, inlinedAt: !5116)
!5119 = !DILocation(line: 83, column: 15, scope: !2529, inlinedAt: !5116)
!5120 = !DILocation(line: 83, column: 13, scope: !2529, inlinedAt: !5116)
!5121 = !DILocation(line: 0, scope: !1113, inlinedAt: !5122)
!5122 = distinct !DILocation(line: 148, column: 37, scope: !5081)
!5123 = !DILocation(line: 62, column: 48, scope: !1119, inlinedAt: !5122)
!5124 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !5122)
!5125 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !5122)
!5126 = !DILocation(line: 148, column: 55, scope: !5081)
!5127 = !DILocation(line: 148, column: 71, scope: !5081)
!5128 = !DILocation(line: 0, scope: !1891, inlinedAt: !5129)
!5129 = distinct !DILocation(line: 148, column: 52, scope: !5081)
!5130 = !DILocation(line: 98, column: 45, scope: !1891, inlinedAt: !5129)
!5131 = !DILocation(line: 98, column: 15, scope: !1891, inlinedAt: !5129)
!5132 = !DILocation(line: 98, column: 13, scope: !1891, inlinedAt: !5129)
!5133 = !DILocation(line: 0, scope: !1113, inlinedAt: !5134)
!5134 = distinct !DILocation(line: 148, column: 79, scope: !5081)
!5135 = !DILocation(line: 62, column: 48, scope: !1119, inlinedAt: !5134)
!5136 = !DILocation(line: 62, column: 19, scope: !1119, inlinedAt: !5134)
!5137 = !DILocation(line: 62, column: 17, scope: !1119, inlinedAt: !5134)
!5138 = !DILocation(line: 0, scope: !1122, inlinedAt: !5139)
!5139 = distinct !DILocation(line: 146, column: 17, scope: !5081)
!5140 = !DILocation(line: 167, column: 14, scope: !1128, inlinedAt: !5139)
!5141 = !DILocation(line: 0, scope: !1128, inlinedAt: !5139)
!5142 = !DILocation(line: 167, column: 13, scope: !1129, inlinedAt: !5139)
!5143 = !DILocation(line: 168, column: 13, scope: !1127, inlinedAt: !5139)
!5144 = !DILocation(line: 169, column: 9, scope: !1127, inlinedAt: !5139)
!5145 = !DILocation(line: 0, scope: !1136, inlinedAt: !5146)
!5146 = distinct !DILocation(line: 170, column: 13, scope: !1140, inlinedAt: !5139)
!5147 = !DILocation(line: 163, column: 81, scope: !1136, inlinedAt: !5146)
!5148 = !DILocation(line: 163, column: 87, scope: !1136, inlinedAt: !5146)
!5149 = !DILocation(line: 163, column: 15, scope: !1136, inlinedAt: !5146)
!5150 = !DILocation(line: 174, column: 30, scope: !1145, inlinedAt: !5139)
!5151 = !DILocation(line: 174, column: 44, scope: !1145, inlinedAt: !5139)
!5152 = !DILocation(line: 174, column: 17, scope: !1145, inlinedAt: !5139)
!5153 = !DILocation(line: 180, column: 13, scope: !1150, inlinedAt: !5139)
!5154 = !DILocation(line: 180, column: 21, scope: !1150, inlinedAt: !5139)
!5155 = !DILocation(line: 181, column: 13, scope: !1149, inlinedAt: !5139)
!5156 = !DILocation(line: 182, column: 9, scope: !1149, inlinedAt: !5139)
!5157 = !DILocation(line: 149, column: 19, scope: !5081)
!5158 = !DILocation(line: 149, column: 35, scope: !5081)
!5159 = !DILocation(line: 149, column: 17, scope: !5081)
!5160 = !DILocation(line: 150, column: 17, scope: !5081)
!5161 = !DILocation(line: 150, column: 33, scope: !5081)
!5162 = !DILocation(line: 150, column: 46, scope: !5081)
!5163 = !DILocation(line: 151, column: 33, scope: !5081)
!5164 = !DILocation(line: 151, column: 43, scope: !5081)
!5165 = !DILocation(line: 152, column: 22, scope: !5081)
!5166 = !DILocation(line: 153, column: 13, scope: !5081)
!5167 = !DILocation(line: 142, column: 61, scope: !5064)
!5168 = !DILocation(line: 142, column: 32, scope: !5064)
!5169 = distinct !{!5169, !5066, !5170, !1042}
!5170 = !DILocation(line: 154, column: 9, scope: !5056)
!5171 = !DILocation(line: 155, column: 5, scope: !5045)
!5172 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_metal.cpp", scope: !6, file: !6, type: !5173, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1077)
!5173 = !DISubroutineType(types: !1077)
!5174 = !DILocation(line: 0, scope: !5175, inlinedAt: !5176)
!5175 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !6, file: !6, type: !307, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1077)
!5176 = distinct !DILocation(line: 0, scope: !5172)
!5177 = !DILocalVariable(name: "this", arg: 1, scope: !5178, type: !2384, flags: DIFlagArtificial | DIFlagObjectPointer)
!5178 = distinct !DISubprogram(name: "GPUCompilationCache", linkageName: "_ZN6Halide8Internal19GPUCompilationCacheIP19halide_metal_devicePNS_7Runtime8Internal5Metal11mtl_libraryEEC2Ev", scope: !36, file: !37, line: 8, type: !5179, scopeLine: 8, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, declaration: !5181, retainedNodes: !5182)
!5179 = !DISubroutineType(types: !5180)
!5180 = !{null, !88}
!5181 = !DISubprogram(name: "GPUCompilationCache", scope: !36, type: !5179, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5182 = !{!5177}
!5183 = !DILocation(line: 0, scope: !5178, inlinedAt: !5184)
!5184 = distinct !DILocation(line: 292, column: 73, scope: !5175, inlinedAt: !5176)
!5185 = !DILocation(line: 26, column: 9, scope: !5178, inlinedAt: !5184)
!5186 = !DILocation(line: 27, column: 24, scope: !5178, inlinedAt: !5184)
!5187 = !DILocation(line: 28, column: 9, scope: !5178, inlinedAt: !5184)
!5188 = !DILocation(line: 33, column: 14, scope: !5178, inlinedAt: !5184)
